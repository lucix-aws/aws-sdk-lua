local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeEnvironmentManagedActionHistory.
function M.pages_describe_environment_managed_action_history(client, input)
    return paginator.pages(client, "describeEnvironmentManagedActionHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ManagedActionHistoryItems",
    })
end

--- Returns an item iterator for describeEnvironmentManagedActionHistory.
function M.items_describe_environment_managed_action_history(client, input)
    return paginator.items(client, "describeEnvironmentManagedActionHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ManagedActionHistoryItems",
    })
end

--- Returns a page iterator for describeEvents.
function M.pages_describe_events(client, input)
    return paginator.pages(client, "describeEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns an item iterator for describeEvents.
function M.items_describe_events(client, input)
    return paginator.items(client, "describeEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns a page iterator for listPlatformBranches.
function M.pages_list_platform_branches(client, input)
    return paginator.pages(client, "listPlatformBranches", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPlatformVersions.
function M.pages_list_platform_versions(client, input)
    return paginator.pages(client, "listPlatformVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PlatformSummaryList",
    })
end

--- Returns an item iterator for listPlatformVersions.
function M.items_list_platform_versions(client, input)
    return paginator.items(client, "listPlatformVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PlatformSummaryList",
    })
end

return M
