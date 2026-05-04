local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getServerDetails.
function M.pages_get_server_details(client, input)
    return paginator.pages(client, "getServerDetails", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "associatedApplications",
    })
end

--- Returns an item iterator for getServerDetails.
function M.items_get_server_details(client, input)
    return paginator.items(client, "getServerDetails", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "associatedApplications",
    })
end

--- Returns a page iterator for listAnalyzableServers.
function M.pages_list_analyzable_servers(client, input)
    return paginator.pages(client, "listAnalyzableServers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "analyzableServers",
    })
end

--- Returns an item iterator for listAnalyzableServers.
function M.items_list_analyzable_servers(client, input)
    return paginator.items(client, "listAnalyzableServers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "analyzableServers",
    })
end

--- Returns a page iterator for listApplicationComponents.
function M.pages_list_application_components(client, input)
    return paginator.pages(client, "listApplicationComponents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applicationComponentInfos",
    })
end

--- Returns an item iterator for listApplicationComponents.
function M.items_list_application_components(client, input)
    return paginator.items(client, "listApplicationComponents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applicationComponentInfos",
    })
end

--- Returns a page iterator for listCollectors.
function M.pages_list_collectors(client, input)
    return paginator.pages(client, "listCollectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "Collectors",
    })
end

--- Returns an item iterator for listCollectors.
function M.items_list_collectors(client, input)
    return paginator.items(client, "listCollectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "Collectors",
    })
end

--- Returns a page iterator for listImportFileTask.
function M.pages_list_import_file_task(client, input)
    return paginator.pages(client, "listImportFileTask", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskInfos",
    })
end

--- Returns an item iterator for listImportFileTask.
function M.items_list_import_file_task(client, input)
    return paginator.items(client, "listImportFileTask", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskInfos",
    })
end

--- Returns a page iterator for listServers.
function M.pages_list_servers(client, input)
    return paginator.pages(client, "listServers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serverInfos",
    })
end

--- Returns an item iterator for listServers.
function M.items_list_servers(client, input)
    return paginator.items(client, "listServers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serverInfos",
    })
end

return M
