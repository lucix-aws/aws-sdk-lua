local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeCanaries.
function M.pages_describe_canaries(client, input)
    return paginator.pages(client, "describeCanaries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeCanariesLastRun.
function M.pages_describe_canaries_last_run(client, input)
    return paginator.pages(client, "describeCanariesLastRun", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeRuntimeVersions.
function M.pages_describe_runtime_versions(client, input)
    return paginator.pages(client, "describeRuntimeVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getCanaryRuns.
function M.pages_get_canary_runs(client, input)
    return paginator.pages(client, "getCanaryRuns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAssociatedGroups.
function M.pages_list_associated_groups(client, input)
    return paginator.pages(client, "listAssociatedGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listGroupResources.
function M.pages_list_group_resources(client, input)
    return paginator.pages(client, "listGroupResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listGroups.
function M.pages_list_groups(client, input)
    return paginator.pages(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
