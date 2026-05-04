local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAccountSettings.
function M.pages_list_account_settings(client, input)
    return paginator.pages(client, "listAccountSettings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "settings",
    })
end

--- Returns an item iterator for listAccountSettings.
function M.items_list_account_settings(client, input)
    return paginator.items(client, "listAccountSettings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "settings",
    })
end

--- Returns a page iterator for listAttributes.
function M.pages_list_attributes(client, input)
    return paginator.pages(client, "listAttributes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributes",
    })
end

--- Returns an item iterator for listAttributes.
function M.items_list_attributes(client, input)
    return paginator.items(client, "listAttributes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attributes",
    })
end

--- Returns a page iterator for listClusters.
function M.pages_list_clusters(client, input)
    return paginator.pages(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusterArns",
    })
end

--- Returns an item iterator for listClusters.
function M.items_list_clusters(client, input)
    return paginator.items(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusterArns",
    })
end

--- Returns a page iterator for listContainerInstances.
function M.pages_list_container_instances(client, input)
    return paginator.pages(client, "listContainerInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "containerInstanceArns",
    })
end

--- Returns an item iterator for listContainerInstances.
function M.items_list_container_instances(client, input)
    return paginator.items(client, "listContainerInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "containerInstanceArns",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceArns",
    })
end

--- Returns an item iterator for listServices.
function M.items_list_services(client, input)
    return paginator.items(client, "listServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceArns",
    })
end

--- Returns a page iterator for listServicesByNamespace.
function M.pages_list_services_by_namespace(client, input)
    return paginator.pages(client, "listServicesByNamespace", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceArns",
    })
end

--- Returns an item iterator for listServicesByNamespace.
function M.items_list_services_by_namespace(client, input)
    return paginator.items(client, "listServicesByNamespace", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceArns",
    })
end

--- Returns a page iterator for listTaskDefinitionFamilies.
function M.pages_list_task_definition_families(client, input)
    return paginator.pages(client, "listTaskDefinitionFamilies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "families",
    })
end

--- Returns an item iterator for listTaskDefinitionFamilies.
function M.items_list_task_definition_families(client, input)
    return paginator.items(client, "listTaskDefinitionFamilies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "families",
    })
end

--- Returns a page iterator for listTaskDefinitions.
function M.pages_list_task_definitions(client, input)
    return paginator.pages(client, "listTaskDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskDefinitionArns",
    })
end

--- Returns an item iterator for listTaskDefinitions.
function M.items_list_task_definitions(client, input)
    return paginator.items(client, "listTaskDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskDefinitionArns",
    })
end

--- Returns a page iterator for listTasks.
function M.pages_list_tasks(client, input)
    return paginator.pages(client, "listTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskArns",
    })
end

--- Returns an item iterator for listTasks.
function M.items_list_tasks(client, input)
    return paginator.items(client, "listTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskArns",
    })
end

return M
