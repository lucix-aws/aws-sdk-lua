local paginator = require("paginator")

local M = {}

--- Returns a page iterator for executeQuery.
function M.pages_execute_query(client, input)
    return paginator.pages(client, "executeQuery", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getPropertyValue.
function M.pages_get_property_value(client, input)
    return paginator.pages(client, "getPropertyValue", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getPropertyValueHistory.
function M.pages_get_property_value_history(client, input)
    return paginator.pages(client, "getPropertyValueHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listComponentTypes.
function M.pages_list_component_types(client, input)
    return paginator.pages(client, "listComponentTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listComponents.
function M.pages_list_components(client, input)
    return paginator.pages(client, "listComponents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listEntities.
function M.pages_list_entities(client, input)
    return paginator.pages(client, "listEntities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listMetadataTransferJobs.
function M.pages_list_metadata_transfer_jobs(client, input)
    return paginator.pages(client, "listMetadataTransferJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listProperties.
function M.pages_list_properties(client, input)
    return paginator.pages(client, "listProperties", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listScenes.
function M.pages_list_scenes(client, input)
    return paginator.pages(client, "listScenes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSyncJobs.
function M.pages_list_sync_jobs(client, input)
    return paginator.pages(client, "listSyncJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSyncResources.
function M.pages_list_sync_resources(client, input)
    return paginator.pages(client, "listSyncResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listWorkspaces.
function M.pages_list_workspaces(client, input)
    return paginator.pages(client, "listWorkspaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
