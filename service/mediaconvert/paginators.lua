local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeEndpoints.
function M.pages_describe_endpoints(client, input)
    return paginator.pages(client, "describeEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns an item iterator for describeEndpoints.
function M.items_describe_endpoints(client, input)
    return paginator.items(client, "describeEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns a page iterator for listJobTemplates.
function M.pages_list_job_templates(client, input)
    return paginator.pages(client, "listJobTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobTemplates",
    })
end

--- Returns an item iterator for listJobTemplates.
function M.items_list_job_templates(client, input)
    return paginator.items(client, "listJobTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobTemplates",
    })
end

--- Returns a page iterator for listJobs.
function M.pages_list_jobs(client, input)
    return paginator.pages(client, "listJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Jobs",
    })
end

--- Returns an item iterator for listJobs.
function M.items_list_jobs(client, input)
    return paginator.items(client, "listJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Jobs",
    })
end

--- Returns a page iterator for listPresets.
function M.pages_list_presets(client, input)
    return paginator.pages(client, "listPresets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Presets",
    })
end

--- Returns an item iterator for listPresets.
function M.items_list_presets(client, input)
    return paginator.items(client, "listPresets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Presets",
    })
end

--- Returns a page iterator for listQueues.
function M.pages_list_queues(client, input)
    return paginator.pages(client, "listQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Queues",
    })
end

--- Returns an item iterator for listQueues.
function M.items_list_queues(client, input)
    return paginator.items(client, "listQueues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Queues",
    })
end

--- Returns a page iterator for listVersions.
function M.pages_list_versions(client, input)
    return paginator.pages(client, "listVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Versions",
    })
end

--- Returns an item iterator for listVersions.
function M.items_list_versions(client, input)
    return paginator.items(client, "listVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Versions",
    })
end

--- Returns a page iterator for searchJobs.
function M.pages_search_jobs(client, input)
    return paginator.pages(client, "searchJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Jobs",
    })
end

--- Returns an item iterator for searchJobs.
function M.items_search_jobs(client, input)
    return paginator.items(client, "searchJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Jobs",
    })
end

return M
