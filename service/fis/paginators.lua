local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listActions.
function M.pages_list_actions(client, input)
    return paginator.pages(client, "listActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actions",
    })
end

--- Returns an item iterator for listActions.
function M.items_list_actions(client, input)
    return paginator.items(client, "listActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actions",
    })
end

--- Returns a page iterator for listExperimentResolvedTargets.
function M.pages_list_experiment_resolved_targets(client, input)
    return paginator.pages(client, "listExperimentResolvedTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resolvedTargets",
    })
end

--- Returns an item iterator for listExperimentResolvedTargets.
function M.items_list_experiment_resolved_targets(client, input)
    return paginator.items(client, "listExperimentResolvedTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resolvedTargets",
    })
end

--- Returns a page iterator for listExperimentTemplates.
function M.pages_list_experiment_templates(client, input)
    return paginator.pages(client, "listExperimentTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "experimentTemplates",
    })
end

--- Returns an item iterator for listExperimentTemplates.
function M.items_list_experiment_templates(client, input)
    return paginator.items(client, "listExperimentTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "experimentTemplates",
    })
end

--- Returns a page iterator for listExperiments.
function M.pages_list_experiments(client, input)
    return paginator.pages(client, "listExperiments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "experiments",
    })
end

--- Returns an item iterator for listExperiments.
function M.items_list_experiments(client, input)
    return paginator.items(client, "listExperiments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "experiments",
    })
end

--- Returns a page iterator for listTargetAccountConfigurations.
function M.pages_list_target_account_configurations(client, input)
    return paginator.pages(client, "listTargetAccountConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targetAccountConfigurations",
    })
end

--- Returns an item iterator for listTargetAccountConfigurations.
function M.items_list_target_account_configurations(client, input)
    return paginator.items(client, "listTargetAccountConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targetAccountConfigurations",
    })
end

--- Returns a page iterator for listTargetResourceTypes.
function M.pages_list_target_resource_types(client, input)
    return paginator.pages(client, "listTargetResourceTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targetResourceTypes",
    })
end

--- Returns an item iterator for listTargetResourceTypes.
function M.items_list_target_resource_types(client, input)
    return paginator.items(client, "listTargetResourceTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targetResourceTypes",
    })
end

return M
