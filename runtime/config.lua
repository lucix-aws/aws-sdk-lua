-- Shared config/credentials file parser.
-- Implements the configuration-file SEP for ~/.aws/config and ~/.aws/credentials.

local M = {}

local DEFAULT_CONFIG_PATH = "/.aws/config"
local DEFAULT_CREDENTIALS_PATH = "/.aws/credentials"

-- Resolve ~ at start of path.
local function resolve_home(path)
    if path:sub(1, 2) == "~/" or path == "~" then
        local home = os.getenv("HOME") or os.getenv("USERPROFILE") or ""
        return home .. path:sub(2)
    end
    return path
end

--- Return the default config file path.
function M.default_config_path()
    local home = os.getenv("HOME") or os.getenv("USERPROFILE") or ""
    return home .. DEFAULT_CONFIG_PATH
end

--- Return the default credentials file path.
function M.default_credentials_path()
    local home = os.getenv("HOME") or os.getenv("USERPROFILE") or ""
    return home .. DEFAULT_CREDENTIALS_PATH
end

-- Valid identifier pattern per SEP: [A-Za-z0-9_\-/.%@:\+]+
local function is_valid_identifier(s)
    return s and s ~= "" and not s:find("[^A-Za-z0-9_%-%/.%%@:%+]")
end

-- Strip leading/trailing whitespace.
local function trim(s)
    return s:match("^%s*(.-)%s*$")
end

-- Determine line type and parse it.
-- Returns: type, data
--   "blank"
--   "comment"
--   "section", { raw_name = string }
--   "property", { key = string, value = string }
--   "continuation", { value = string }
local function classify_line(line)
    -- Blank
    if line:match("^%s*$") then return "blank" end

    -- Comment
    if line:match("^%s*[#;]") then return "comment" end

    -- Section definition: [ ... ]
    local section_content = line:match("^%s*%[(.-)%]")
    if section_content then
        return "section", { raw_name = trim(section_content) }
    end

    -- Continuation: starts with whitespace AND has no '='
    if line:match("^[ \t]") and not line:find("=") then
        return "continuation", { value = trim(line) }
    end

    -- Property definition (or sub-property): key = value
    -- This handles both regular properties and lines with leading whitespace that have '='
    local key, value = line:match("^%s*([^=]+)=(.*)")
    if key then
        key = trim(key)
        value = trim(value)
        -- Strip inline comment (only if preceded by whitespace)
        local base = value:match("^(.-)%s+[#;]")
        if base then value = trim(base) end
        -- If line had leading whitespace, mark it as a potential continuation
        if line:match("^[ \t]") then
            return "continuation_prop", { key = key, value = value }
        end
        return "property", { key = key, value = value }
    end

    return "unknown"
end

-- Parse a single file into raw sections.
-- is_config: true for config file (requires "profile" prefix), false for credentials.
-- Returns: { [profile_name] = { key = value, ... } }, err
local function parse_file(content, is_config)
    if not content or content == "" then return {} end

    local sections = {}  -- ordered: { { name=, props={}, is_profile_default=bool } }
    local current = nil  -- current section entry (nil if section was skipped)
    local seen_any_section = false  -- true once any section header is encountered
    local last_prop_key = nil
    local last_prop_empty = false  -- true if last property had empty value (sub-property mode)
    local line_num = 0

    for line in (content .. "\n"):gmatch("([^\r\n]*)\r?\n") do
        line_num = line_num + 1
        local ltype, data = classify_line(line)

        if ltype == "blank" or ltype == "comment" then
            -- ignore
        elseif ltype == "section" then
            seen_any_section = true
            local raw = data.raw_name
            local profile_name
            local is_profile_default = false

            if is_config then
                -- Config file: must have "profile " prefix, except "default"
                local after_profile = raw:match("^profile%s+(.+)$")
                if after_profile then
                    profile_name = trim(after_profile)
                    if profile_name == "default" then
                        is_profile_default = true
                    end
                elseif raw == "default" then
                    profile_name = "default"
                else
                    -- Check for sso-session or services prefix (skip silently)
                    if raw:match("^sso%-session%s") or raw:match("^services%s") then
                        current = nil
                        last_prop_key = nil
                    else
                        -- Invalid: non-default without profile prefix — skip silently
                        current = nil
                        last_prop_key = nil
                    end
                    if not profile_name then goto continue end
                end
            else
                -- Credentials file: no "profile" prefix allowed
                if raw:match("^profile%s") then
                    current = nil
                    last_prop_key = nil
                    goto continue
                end
                profile_name = raw
            end

            -- Validate profile name
            if not is_valid_identifier(profile_name) then
                current = nil
                last_prop_key = nil
                goto continue
            end

            current = { name = profile_name, props = {}, sub_props = {}, is_profile_default = is_profile_default }
            table.insert(sections, current)
            last_prop_key = nil
            last_prop_empty = false

        elseif ltype == "property" then
            if not seen_any_section then
                return nil, "line " .. line_num .. ": property before section"
            end
            if not current then goto continue end  -- silently skip properties under invalid sections
            local key = data.key:lower()
            if not is_valid_identifier(key) then goto continue end
            current.props[key] = data.value
            last_prop_key = key
            last_prop_empty = (data.value == "")

        elseif ltype == "continuation_prop" then
            -- Line with leading whitespace and '=': sub-property if previous was empty, else regular property
            if not seen_any_section then
                return nil, "line " .. line_num .. ": property before section"
            end
            if not current then goto continue end
            if last_prop_key and last_prop_empty then
                -- Sub-property
                local sub_key = data.key:lower()
                local sub_val = data.value
                if not is_valid_identifier(sub_key) then goto continue end
                if not current.sub_props[last_prop_key] then
                    current.sub_props[last_prop_key] = {}
                end
                current.sub_props[last_prop_key][sub_key] = sub_val
            else
                -- Treat as regular property (leading whitespace is just formatting)
                local key = data.key:lower()
                if not is_valid_identifier(key) then goto continue end
                current.props[key] = data.value
                last_prop_key = key
                last_prop_empty = (data.value == "")
            end

        elseif ltype == "continuation" then
            if not seen_any_section then
                return nil, "line " .. line_num .. ": continuation before section"
            end
            if not current then goto continue end  -- silently skip under invalid sections
            if not last_prop_key then
                return nil, "line " .. line_num .. ": continuation before property"
            end

            if last_prop_empty then
                -- Sub-property mode: parse as key = value
                local sub_key, sub_val = data.value:match("^([^=]+)=(.*)")
                if not sub_key then
                    return nil, "line " .. line_num .. ": sub-property without ="
                end
                sub_key = trim(sub_key):lower()
                sub_val = trim(sub_val)
                if not is_valid_identifier(sub_key) then goto continue end
                if not current.sub_props[last_prop_key] then
                    current.sub_props[last_prop_key] = {}
                end
                current.sub_props[last_prop_key][sub_key] = sub_val
            else
                -- Regular continuation: append with newline
                current.props[last_prop_key] = current.props[last_prop_key] .. "\n" .. data.value
            end

        elseif ltype == "unknown" then
            return nil, "line " .. line_num .. ": unrecognized line"
        end

        ::continue::
    end

    -- Merge duplicate sections and handle [default] vs [profile default]
    local merged = {}  -- profile_name -> { props, sub_props }
    local has_profile_default = false

    -- First pass: check if [profile default] exists
    for _, sec in ipairs(sections) do
        if sec.is_profile_default then
            has_profile_default = true
            break
        end
    end

    for _, sec in ipairs(sections) do
        -- In config file, if [profile default] exists, skip plain [default]
        if is_config and sec.name == "default" and not sec.is_profile_default and has_profile_default then
            goto merge_continue
        end

        if not merged[sec.name] then
            merged[sec.name] = { props = {}, sub_props = {} }
        end
        local m = merged[sec.name]
        for k, v in pairs(sec.props) do
            m.props[k] = v
        end
        for k, subs in pairs(sec.sub_props) do
            if not m.sub_props[k] then m.sub_props[k] = {} end
            for sk, sv in pairs(subs) do
                m.sub_props[k][sk] = sv
            end
        end

        ::merge_continue::
    end

    return merged
end

--- Load and parse both config and credentials files, merge into profiles.
--- @param config_path string|nil  Override for config file path
--- @param credentials_path string|nil  Override for credentials file path
--- @return table, string|nil  profiles table { [name] = { props, sub_props } }, error
function M.load(config_path, credentials_path)
    config_path = config_path or M.default_config_path()
    credentials_path = credentials_path or M.default_credentials_path()

    config_path = resolve_home(config_path)
    credentials_path = resolve_home(credentials_path)

    -- Read files (missing file = empty)
    local function read_file(path)
        local f = io.open(path, "r")
        if not f then return "" end
        local content = f:read("*a")
        f:close()
        return content
    end

    local config_content = read_file(config_path)
    local creds_content = read_file(credentials_path)

    local config_profiles, err = parse_file(config_content, true)
    if not config_profiles then return nil, "config file: " .. err end

    local creds_profiles, err2 = parse_file(creds_content, false)
    if not creds_profiles then return nil, "credentials file: " .. err2 end

    -- Merge: credentials file properties override config file properties
    local profiles = {}
    -- Start with config profiles
    for name, data in pairs(config_profiles) do
        profiles[name] = { props = {}, sub_props = {} }
        for k, v in pairs(data.props) do profiles[name].props[k] = v end
        for k, subs in pairs(data.sub_props) do
            profiles[name].sub_props[k] = {}
            for sk, sv in pairs(subs) do profiles[name].sub_props[k][sk] = sv end
        end
    end

    -- Overlay credentials profiles
    for name, data in pairs(creds_profiles) do
        if not profiles[name] then
            profiles[name] = { props = {}, sub_props = {} }
        end
        for k, v in pairs(data.props) do profiles[name].props[k] = v end
        for k, subs in pairs(data.sub_props) do
            if not profiles[name].sub_props[k] then profiles[name].sub_props[k] = {} end
            for sk, sv in pairs(subs) do profiles[name].sub_props[k][sk] = sv end
        end
    end

    return profiles
end

--- Get a specific profile's properties.
--- @param profiles table  The profiles table from load()
--- @param name string|nil  Profile name (default: "default")
--- @return table|nil  The profile's props table, or nil if not found
function M.get_profile(profiles, name)
    name = name or "default"
    local p = profiles[name]
    if p then return p.props end
    return nil
end

-- Expose parse_file for testing
M._parse_file = parse_file

return M
