local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listApplicationOperations.
function M.pages_list_application_operations(client, input)
    return paginator.pages(client, "listApplicationOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationOperationInfoList",
    })
end

--- Returns an item iterator for listApplicationOperations.
function M.items_list_application_operations(client, input)
    return paginator.items(client, "listApplicationOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationOperationInfoList",
    })
end

--- Returns a page iterator for listApplicationSnapshots.
function M.pages_list_application_snapshots(client, input)
    return paginator.pages(client, "listApplicationSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SnapshotSummaries",
    })
end

--- Returns an item iterator for listApplicationSnapshots.
function M.items_list_application_snapshots(client, input)
    return paginator.items(client, "listApplicationSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SnapshotSummaries",
    })
end

--- Returns a page iterator for listApplicationVersions.
function M.pages_list_application_versions(client, input)
    return paginator.pages(client, "listApplicationVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationVersionSummaries",
    })
end

--- Returns an item iterator for listApplicationVersions.
function M.items_list_application_versions(client, input)
    return paginator.items(client, "listApplicationVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationVersionSummaries",
    })
end

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationSummaries",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ApplicationSummaries",
    })
end

return M
