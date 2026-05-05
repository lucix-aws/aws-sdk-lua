local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listActionExecutions.
function M.pages_list_action_executions(client, input)
    return paginator.pages(client, "listActionExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionExecutionDetails",
    })
end

--- Returns an item iterator for listActionExecutions.
function M.items_list_action_executions(client, input)
    return paginator.items(client, "listActionExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionExecutionDetails",
    })
end

--- Returns a page iterator for listActionTypes.
function M.pages_list_action_types(client, input)
    return paginator.pages(client, "listActionTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionTypes",
    })
end

--- Returns an item iterator for listActionTypes.
function M.items_list_action_types(client, input)
    return paginator.items(client, "listActionTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionTypes",
    })
end

--- Returns a page iterator for listDeployActionExecutionTargets.
function M.pages_list_deploy_action_execution_targets(client, input)
    return paginator.pages(client, "listDeployActionExecutionTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targets",
    })
end

--- Returns an item iterator for listDeployActionExecutionTargets.
function M.items_list_deploy_action_execution_targets(client, input)
    return paginator.items(client, "listDeployActionExecutionTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "targets",
    })
end

--- Returns a page iterator for listPipelineExecutions.
function M.pages_list_pipeline_executions(client, input)
    return paginator.pages(client, "listPipelineExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "pipelineExecutionSummaries",
    })
end

--- Returns an item iterator for listPipelineExecutions.
function M.items_list_pipeline_executions(client, input)
    return paginator.items(client, "listPipelineExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "pipelineExecutionSummaries",
    })
end

--- Returns a page iterator for listPipelines.
function M.pages_list_pipelines(client, input)
    return paginator.pages(client, "listPipelines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "pipelines",
    })
end

--- Returns an item iterator for listPipelines.
function M.items_list_pipelines(client, input)
    return paginator.items(client, "listPipelines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "pipelines",
    })
end

--- Returns a page iterator for listRuleExecutions.
function M.pages_list_rule_executions(client, input)
    return paginator.pages(client, "listRuleExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ruleExecutionDetails",
    })
end

--- Returns an item iterator for listRuleExecutions.
function M.items_list_rule_executions(client, input)
    return paginator.items(client, "listRuleExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ruleExecutionDetails",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

--- Returns a page iterator for listWebhooks.
function M.pages_list_webhooks(client, input)
    return paginator.pages(client, "listWebhooks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "webhooks",
    })
end

--- Returns an item iterator for listWebhooks.
function M.items_list_webhooks(client, input)
    return paginator.items(client, "listWebhooks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "webhooks",
    })
end

return M
