local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listEntityEvents.
function M.pages_list_entity_events(client, input)
    return paginator.pages(client, "listEntityEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ChangeEvents",
    })
end

--- Returns an item iterator for listEntityEvents.
function M.items_list_entity_events(client, input)
    return paginator.items(client, "listEntityEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ChangeEvents",
    })
end

--- Returns a page iterator for listServiceDependencies.
function M.pages_list_service_dependencies(client, input)
    return paginator.pages(client, "listServiceDependencies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceDependencies",
    })
end

--- Returns an item iterator for listServiceDependencies.
function M.items_list_service_dependencies(client, input)
    return paginator.items(client, "listServiceDependencies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceDependencies",
    })
end

--- Returns a page iterator for listServiceDependents.
function M.pages_list_service_dependents(client, input)
    return paginator.pages(client, "listServiceDependents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceDependents",
    })
end

--- Returns an item iterator for listServiceDependents.
function M.items_list_service_dependents(client, input)
    return paginator.items(client, "listServiceDependents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceDependents",
    })
end

--- Returns a page iterator for listServiceLevelObjectiveExclusionWindows.
function M.pages_list_service_level_objective_exclusion_windows(client, input)
    return paginator.pages(client, "listServiceLevelObjectiveExclusionWindows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExclusionWindows",
    })
end

--- Returns an item iterator for listServiceLevelObjectiveExclusionWindows.
function M.items_list_service_level_objective_exclusion_windows(client, input)
    return paginator.items(client, "listServiceLevelObjectiveExclusionWindows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExclusionWindows",
    })
end

--- Returns a page iterator for listServiceLevelObjectives.
function M.pages_list_service_level_objectives(client, input)
    return paginator.pages(client, "listServiceLevelObjectives", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SloSummaries",
    })
end

--- Returns an item iterator for listServiceLevelObjectives.
function M.items_list_service_level_objectives(client, input)
    return paginator.items(client, "listServiceLevelObjectives", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SloSummaries",
    })
end

--- Returns a page iterator for listServiceOperations.
function M.pages_list_service_operations(client, input)
    return paginator.pages(client, "listServiceOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceOperations",
    })
end

--- Returns an item iterator for listServiceOperations.
function M.items_list_service_operations(client, input)
    return paginator.items(client, "listServiceOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceOperations",
    })
end

--- Returns a page iterator for listServiceStates.
function M.pages_list_service_states(client, input)
    return paginator.pages(client, "listServiceStates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceStates",
    })
end

--- Returns an item iterator for listServiceStates.
function M.items_list_service_states(client, input)
    return paginator.items(client, "listServiceStates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceStates",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceSummaries",
    })
end

--- Returns an item iterator for listServices.
function M.items_list_services(client, input)
    return paginator.items(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServiceSummaries",
    })
end

return M
