local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listJobs.
function M.pages_list_jobs(client, input)
    return paginator.pages(client, "listJobs", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "JobList",
    })
end

--- Returns an item iterator for listJobs.
function M.items_list_jobs(client, input)
    return paginator.items(client, "listJobs", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "JobList",
    })
end

--- Returns a page iterator for listMultipartUploads.
function M.pages_list_multipart_uploads(client, input)
    return paginator.pages(client, "listMultipartUploads", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "UploadsList",
    })
end

--- Returns an item iterator for listMultipartUploads.
function M.items_list_multipart_uploads(client, input)
    return paginator.items(client, "listMultipartUploads", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "UploadsList",
    })
end

--- Returns a page iterator for listParts.
function M.pages_list_parts(client, input)
    return paginator.pages(client, "listParts", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "Parts",
    })
end

--- Returns an item iterator for listParts.
function M.items_list_parts(client, input)
    return paginator.items(client, "listParts", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "Parts",
    })
end

--- Returns a page iterator for listVaults.
function M.pages_list_vaults(client, input)
    return paginator.pages(client, "listVaults", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "VaultList",
    })
end

--- Returns an item iterator for listVaults.
function M.items_list_vaults(client, input)
    return paginator.items(client, "listVaults", input, {
        input_token = "marker",
        output_token = "Marker",
        items = "VaultList",
    })
end

return M
