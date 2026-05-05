local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getDurableExecutionHistory.
function M.pages_get_durable_execution_history(client, input)
    return paginator.pages(client, "getDurableExecutionHistory", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Events",
    })
end

--- Returns an item iterator for getDurableExecutionHistory.
function M.items_get_durable_execution_history(client, input)
    return paginator.items(client, "getDurableExecutionHistory", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Events",
    })
end

--- Returns a page iterator for getDurableExecutionState.
function M.pages_get_durable_execution_state(client, input)
    return paginator.pages(client, "getDurableExecutionState", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Operations",
    })
end

--- Returns an item iterator for getDurableExecutionState.
function M.items_get_durable_execution_state(client, input)
    return paginator.items(client, "getDurableExecutionState", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Operations",
    })
end

--- Returns a page iterator for listAliases.
function M.pages_list_aliases(client, input)
    return paginator.pages(client, "listAliases", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Aliases",
    })
end

--- Returns an item iterator for listAliases.
function M.items_list_aliases(client, input)
    return paginator.items(client, "listAliases", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Aliases",
    })
end

--- Returns a page iterator for listCapacityProviders.
function M.pages_list_capacity_providers(client, input)
    return paginator.pages(client, "listCapacityProviders", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "CapacityProviders",
    })
end

--- Returns an item iterator for listCapacityProviders.
function M.items_list_capacity_providers(client, input)
    return paginator.items(client, "listCapacityProviders", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "CapacityProviders",
    })
end

--- Returns a page iterator for listCodeSigningConfigs.
function M.pages_list_code_signing_configs(client, input)
    return paginator.pages(client, "listCodeSigningConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "CodeSigningConfigs",
    })
end

--- Returns an item iterator for listCodeSigningConfigs.
function M.items_list_code_signing_configs(client, input)
    return paginator.items(client, "listCodeSigningConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "CodeSigningConfigs",
    })
end

--- Returns a page iterator for listDurableExecutionsByFunction.
function M.pages_list_durable_executions_by_function(client, input)
    return paginator.pages(client, "listDurableExecutionsByFunction", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "DurableExecutions",
    })
end

--- Returns an item iterator for listDurableExecutionsByFunction.
function M.items_list_durable_executions_by_function(client, input)
    return paginator.items(client, "listDurableExecutionsByFunction", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "DurableExecutions",
    })
end

--- Returns a page iterator for listEventSourceMappings.
function M.pages_list_event_source_mappings(client, input)
    return paginator.pages(client, "listEventSourceMappings", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "EventSourceMappings",
    })
end

--- Returns an item iterator for listEventSourceMappings.
function M.items_list_event_source_mappings(client, input)
    return paginator.items(client, "listEventSourceMappings", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "EventSourceMappings",
    })
end

--- Returns a page iterator for listFunctionEventInvokeConfigs.
function M.pages_list_function_event_invoke_configs(client, input)
    return paginator.pages(client, "listFunctionEventInvokeConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionEventInvokeConfigs",
    })
end

--- Returns an item iterator for listFunctionEventInvokeConfigs.
function M.items_list_function_event_invoke_configs(client, input)
    return paginator.items(client, "listFunctionEventInvokeConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionEventInvokeConfigs",
    })
end

--- Returns a page iterator for listFunctionUrlConfigs.
function M.pages_list_function_url_configs(client, input)
    return paginator.pages(client, "listFunctionUrlConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionUrlConfigs",
    })
end

--- Returns an item iterator for listFunctionUrlConfigs.
function M.items_list_function_url_configs(client, input)
    return paginator.items(client, "listFunctionUrlConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionUrlConfigs",
    })
end

--- Returns a page iterator for listFunctionVersionsByCapacityProvider.
function M.pages_list_function_versions_by_capacity_provider(client, input)
    return paginator.pages(client, "listFunctionVersionsByCapacityProvider", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionVersions",
    })
end

--- Returns an item iterator for listFunctionVersionsByCapacityProvider.
function M.items_list_function_versions_by_capacity_provider(client, input)
    return paginator.items(client, "listFunctionVersionsByCapacityProvider", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionVersions",
    })
end

--- Returns a page iterator for listFunctions.
function M.pages_list_functions(client, input)
    return paginator.pages(client, "listFunctions", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Functions",
    })
end

--- Returns an item iterator for listFunctions.
function M.items_list_functions(client, input)
    return paginator.items(client, "listFunctions", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Functions",
    })
end

--- Returns a page iterator for listFunctionsByCodeSigningConfig.
function M.pages_list_functions_by_code_signing_config(client, input)
    return paginator.pages(client, "listFunctionsByCodeSigningConfig", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionArns",
    })
end

--- Returns an item iterator for listFunctionsByCodeSigningConfig.
function M.items_list_functions_by_code_signing_config(client, input)
    return paginator.items(client, "listFunctionsByCodeSigningConfig", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "FunctionArns",
    })
end

--- Returns a page iterator for listLayerVersions.
function M.pages_list_layer_versions(client, input)
    return paginator.pages(client, "listLayerVersions", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "LayerVersions",
    })
end

--- Returns an item iterator for listLayerVersions.
function M.items_list_layer_versions(client, input)
    return paginator.items(client, "listLayerVersions", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "LayerVersions",
    })
end

--- Returns a page iterator for listLayers.
function M.pages_list_layers(client, input)
    return paginator.pages(client, "listLayers", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Layers",
    })
end

--- Returns an item iterator for listLayers.
function M.items_list_layers(client, input)
    return paginator.items(client, "listLayers", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Layers",
    })
end

--- Returns a page iterator for listProvisionedConcurrencyConfigs.
function M.pages_list_provisioned_concurrency_configs(client, input)
    return paginator.pages(client, "listProvisionedConcurrencyConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "ProvisionedConcurrencyConfigs",
    })
end

--- Returns an item iterator for listProvisionedConcurrencyConfigs.
function M.items_list_provisioned_concurrency_configs(client, input)
    return paginator.items(client, "listProvisionedConcurrencyConfigs", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "ProvisionedConcurrencyConfigs",
    })
end

--- Returns a page iterator for listVersionsByFunction.
function M.pages_list_versions_by_function(client, input)
    return paginator.pages(client, "listVersionsByFunction", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Versions",
    })
end

--- Returns an item iterator for listVersionsByFunction.
function M.items_list_versions_by_function(client, input)
    return paginator.items(client, "listVersionsByFunction", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "Versions",
    })
end

return M
