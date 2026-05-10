-- S3 Transfer Manager
--
-- High-level library for transferring objects to/from S3 with automatic
-- multipart upload and part-GET download per the S3 Transfer Manager SEP.

local async = require("smithy.async")
local http = require("smithy.http")
local lfs = pcall(require, "lfs") and require("lfs") or nil

local M = {}

local DEFAULT_PART_SIZE = 8 * 1024 * 1024 -- 8MB
local DEFAULT_MPU_THRESHOLD = 16 * 1024 * 1024 -- 16MB
local DEFAULT_MAX_CONCURRENCY = 100

-- Read response body: handles both string and reader function
local function read_body(body)
    if not body then return "" end
    if type(body) == "string" then return body end
    return http.read_all(body) or ""
end

-- Config defaults
local function resolve_config(opts)
    opts = opts or {}
    return {
        client = opts.client,
        targetPartSizeBytes = opts.targetPartSizeBytes or DEFAULT_PART_SIZE,
        multipartUploadThresholdBytes = opts.multipartUploadThresholdBytes or DEFAULT_MPU_THRESHOLD,
        multipartDownloadType = opts.multipartDownloadType or "PART",
        maxConcurrency = opts.maxConcurrency or DEFAULT_MAX_CONCURRENCY,
    }
end

function M.new(opts)
    assert(opts and opts.client, "client is required")
    local tm = { config = resolve_config(opts) }
    setmetatable(tm, { __index = M })
    return tm
end

---------------------------------------------------------------------------
-- Upload
---------------------------------------------------------------------------

local function compute_part_size(content_length, target)
    local min_for_parts = math.ceil(content_length / 10000)
    return math.max(target, min_for_parts)
end

local function do_multipart_upload(self, request, body, content_length)
    local client = self.config.client
    local part_size = compute_part_size(content_length, self.config.targetPartSizeBytes)
    local num_parts = math.ceil(content_length / part_size)

    -- Step 1: CreateMultipartUpload
    local cmu_input = {
        Bucket = request.Bucket,
        Key = request.Key,
        ContentType = request.ContentType,
        Metadata = request.Metadata,
    }
    local cmu_resp, cmu_err = client:createMultipartUpload(cmu_input):await()
    if cmu_err then return nil, cmu_err end

    local upload_id = cmu_resp.UploadId
    local parts = {}
    local failed = false
    local fail_err = nil

    -- Step 2-6: Upload parts
    for i = 1, num_parts do
        if failed then break end
        local offset = (i - 1) * part_size
        local this_size = math.min(part_size, content_length - offset)
        local part_body = body:sub(offset + 1, offset + this_size)

        local up_input = {
            Bucket = request.Bucket,
            Key = request.Key,
            UploadId = upload_id,
            PartNumber = i,
            Body = part_body,
            ContentLength = this_size,
        }
        local up_resp, up_err = client:uploadPart(up_input):await()
        if up_err then
            failed = true
            fail_err = up_err
            break
        end
        parts[i] = { ETag = up_resp.ETag, PartNumber = i }
    end

    -- Error handling: abort on failure
    if failed then
        client:abortMultipartUpload({
            Bucket = request.Bucket,
            Key = request.Key,
            UploadId = upload_id,
        }):await()
        return nil, fail_err
    end

    -- Step 7: CompleteMultipartUpload
    local cmp_input = {
        Bucket = request.Bucket,
        Key = request.Key,
        UploadId = upload_id,
        MultipartUpload = { Parts = parts },
    }
    local cmp_resp, cmp_err = client:completeMultipartUpload(cmp_input):await()
    if cmp_err then
        client:abortMultipartUpload({
            Bucket = request.Bucket,
            Key = request.Key,
            UploadId = upload_id,
        }):await()
        return nil, cmp_err
    end

    return { ETag = cmp_resp.ETag, Location = cmp_resp.Location }
end

--- Upload a single object (file path or string body).
-- request fields: Bucket, Key, Body (string), FilePath (string), ContentType, Metadata
function M:upload(request)
    local client = self.config.client
    local body = request.Body
    local content_length

    if request.FilePath then
        local f, ferr = io.open(request.FilePath, "rb")
        if not f then return nil, { code = "FileOpenError", message = ferr } end
        body = f:read("*a")
        f:close()
    end

    if not body then return nil, { code = "InvalidArgument", message = "Body or FilePath required" } end
    content_length = #body

    -- Determine single vs multipart
    if content_length < self.config.multipartUploadThresholdBytes then
        local put_input = {
            Bucket = request.Bucket,
            Key = request.Key,
            Body = body,
            ContentType = request.ContentType,
            Metadata = request.Metadata,
        }
        local resp, err = client:putObject(put_input):await()
        if err then return nil, err end
        return { ETag = resp.ETag }
    else
        return do_multipart_upload(self, request, body, content_length)
    end
end

---------------------------------------------------------------------------
-- Download (part GET by default)
---------------------------------------------------------------------------

local function parse_content_range_total(range_str)
    if not range_str then return nil end
    local total = range_str:match("/(%d+)$")
    return total and tonumber(total)
end

--- Download a single object to memory or file.
-- request fields: Bucket, Key, FilePath (optional destination)
-- Returns: { Body = string, ContentLength = number, ETag = string }
function M:download(request)
    local client = self.config.client

    if self.config.multipartDownloadType == "PART" then
        return self:_download_part_get(request)
    else
        return self:_download_ranged_get(request)
    end
end

function M:_download_part_get(request)
    local client = self.config.client

    -- Step 1: Get part 1
    local get_input = {
        Bucket = request.Bucket,
        Key = request.Key,
        PartNumber = 1,
    }
    local resp, err = client:getObject(get_input):await()
    if err then return nil, err end

    local total_length = parse_content_range_total(resp.ContentRange)
    local parts_count = resp.PartsCount or 1
    local etag = resp.ETag
    local chunks = { read_body(resp.Body) }

    if parts_count > 1 then
        -- Steps 4-6: Get remaining parts
        for i = 2, parts_count do
            local part_input = {
                Bucket = request.Bucket,
                Key = request.Key,
                PartNumber = i,
                IfMatch = etag,
            }
            local part_resp, part_err = client:getObject(part_input):await()
            if part_err then return nil, part_err end
            chunks[i] = read_body(part_resp.Body)
        end
    end

    local body = table.concat(chunks)

    -- Write to file if requested
    if request.FilePath then
        local tmp = request.FilePath .. ".s3tmp"
        local f, ferr = io.open(tmp, "wb")
        if not f then return nil, { code = "FileWriteError", message = ferr } end
        f:write(body)
        f:close()
        os.rename(tmp, request.FilePath)
    end

    return {
        Body = body,
        ContentLength = total_length or #body,
        ETag = etag,
    }
end

function M:_download_ranged_get(request)
    local client = self.config.client
    local part_size = self.config.targetPartSizeBytes

    -- Step 1: first range
    local get_input = {
        Bucket = request.Bucket,
        Key = request.Key,
        Range = string.format("bytes=0-%d", part_size - 1),
    }
    local resp, err = client:getObject(get_input):await()
    if err then return nil, err end

    local total_length = parse_content_range_total(resp.ContentRange)
    local etag = resp.ETag
    local first_body = read_body(resp.Body)
    local chunks = { first_body }
    local received = resp.ContentLength or #first_body

    if total_length and received < total_length then
        -- More ranges needed
        local offset = part_size
        while offset < total_length do
            local range_end = math.min(offset + part_size - 1, total_length - 1)
            local range_input = {
                Bucket = request.Bucket,
                Key = request.Key,
                Range = string.format("bytes=%d-%d", offset, range_end),
                IfMatch = etag,
            }
            local range_resp, range_err = client:getObject(range_input):await()
            if range_err then return nil, range_err end
            chunks[#chunks + 1] = read_body(range_resp.Body)
            offset = range_end + 1
        end
    end

    local body = table.concat(chunks)

    if request.FilePath then
        local tmp = request.FilePath .. ".s3tmp"
        local f, ferr = io.open(tmp, "wb")
        if not f then return nil, { code = "FileWriteError", message = ferr } end
        f:write(body)
        f:close()
        os.rename(tmp, request.FilePath)
    end

    return {
        Body = body,
        ContentLength = total_length or #body,
        ETag = etag,
    }
end

---------------------------------------------------------------------------
-- Upload Directory
---------------------------------------------------------------------------

local function scandir(path, recursive, follow_links)
    local entries = {}
    local attr_func = follow_links and lfs.attributes or lfs.symlinkattributes
    if not lfs then return entries end

    for name in lfs.dir(path) do
        if name ~= "." and name ~= ".." then
            local full = path .. "/" .. name
            local attr = attr_func(full)
            if attr then
                if attr.mode == "file" then
                    entries[#entries + 1] = full
                elseif attr.mode == "directory" and recursive then
                    local sub = scandir(full, true, follow_links)
                    for _, s in ipairs(sub) do
                        entries[#entries + 1] = s
                    end
                end
            end
        end
    end
    return entries
end

--- Upload all files in a local directory to S3.
-- request fields: Bucket, source, s3Prefix, recursive, followSymbolicLinks, filter, failurePolicy, maxConcurrency
function M:uploadDirectory(request)
    assert(request.Bucket, "Bucket is required")
    assert(request.source, "source is required")

    -- Validate source exists
    local attr = lfs and lfs.attributes(request.source)
    if not attr or attr.mode ~= "directory" then
        return nil, { code = "DirectoryNotFound", message = "Source directory does not exist" }
    end

    local recursive = request.recursive ~= false
    local follow = request.followSymbolicLinks or false
    local files = scandir(request.source, recursive, follow)
    local prefix = request.s3Prefix or ""
    if prefix ~= "" and prefix:sub(-1) ~= "/" then prefix = prefix .. "/" end

    local uploaded = 0
    local failed = 0
    local continue_on_failure = request.failurePolicy == "CONTINUE_ON_FAILURE"

    for _, filepath in ipairs(files) do
        -- Derive relative path
        local rel = filepath:sub(#request.source + 2) -- strip source/ prefix
        rel = rel:gsub("\\", "/") -- normalize separators
        local key = prefix .. rel

        -- Apply filter
        if not request.filter or request.filter(filepath) then
            local _, err = self:upload({ Bucket = request.Bucket, Key = key, FilePath = filepath })
            if err then
                failed = failed + 1
                if not continue_on_failure then
                    return nil, err
                end
            else
                uploaded = uploaded + 1
            end
        end
    end

    return { objectsUploaded = uploaded, objectsFailed = failed }
end

---------------------------------------------------------------------------
-- Download Directory
---------------------------------------------------------------------------

local function is_path_traversal(key)
    -- Reject keys with .. components that escape the destination
    local normalized = ("/" .. key):gsub("\\", "/")
    -- Check for /../ or leading ../
    if normalized:find("/%.\\.%./") or normalized:find("^%.%./") then return true end
    -- Resolve and check
    local parts = {}
    for seg in normalized:gmatch("[^/]+") do
        if seg == ".." then
            if #parts == 0 then return true end
            parts[#parts] = nil
        elseif seg ~= "." then
            parts[#parts + 1] = seg
        end
    end
    return false
end

local function ensure_dir(path)
    if not lfs then
        os.execute("mkdir -p " .. path:gsub("'", "'\\''"))
        return
    end
    local parts = {}
    for seg in path:gmatch("[^/]+") do parts[#parts + 1] = seg end
    local cur = path:sub(1, 1) == "/" and "/" or ""
    for _, seg in ipairs(parts) do
        cur = cur .. seg .. "/"
        lfs.mkdir(cur)
    end
end

--- Download all objects with a prefix to a local directory.
-- request fields: Bucket, destination, s3Prefix, filter, failurePolicy, maxConcurrency
function M:downloadDirectory(request)
    assert(request.Bucket, "Bucket is required")
    assert(request.destination, "destination is required")

    -- Validate/create destination
    ensure_dir(request.destination)

    local client = self.config.client
    local prefix = request.s3Prefix
    local downloaded = 0
    local failed_count = 0
    local continue_on_failure = request.failurePolicy == "CONTINUE_ON_FAILURE"

    -- Paginate ListObjectsV2
    local continuation_token = nil
    repeat
        local list_input = {
            Bucket = request.Bucket,
            Prefix = prefix,
            ContinuationToken = continuation_token,
        }
        local list_resp, list_err = client:listObjectsV2(list_input):await()
        if list_err then return nil, list_err end

        local contents = list_resp.Contents or {}
        for _, obj in ipairs(contents) do
            local key = obj.Key
            -- Apply filter
            if not request.filter or request.filter(obj) then
                -- Path traversal check
                if is_path_traversal(key) then
                    failed_count = failed_count + 1
                    if not continue_on_failure then
                        return nil, { code = "PathTraversal", message = key .. " rejected due to path traversal" }
                    end
                else
                    local local_path = request.destination .. "/" .. key
                    -- Ensure parent directory exists
                    local parent = local_path:match("(.+)/[^/]+$")
                    if parent then ensure_dir(parent) end

                    local _, dl_err = self:download({ Bucket = request.Bucket, Key = key, FilePath = local_path })
                    if dl_err then
                        failed_count = failed_count + 1
                        if not continue_on_failure then
                            return nil, dl_err
                        end
                    else
                        downloaded = downloaded + 1
                    end
                end
            end
        end

        continuation_token = list_resp.NextContinuationToken
    until not continuation_token

    return { objectsDownloaded = downloaded, objectsFailed = failed_count }
end

return M
