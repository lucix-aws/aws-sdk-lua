local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listPlugins.
function M.pages_list_plugins(client, input)
    return paginator.pages(client, "listPlugins", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "plugins",
    })
end

--- Returns an item iterator for listPlugins.
function M.items_list_plugins(client, input)
    return paginator.items(client, "listPlugins", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "plugins",
    })
end

--- Returns a page iterator for listTemplateStepGroups.
function M.pages_list_template_step_groups(client, input)
    return paginator.pages(client, "listTemplateStepGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateStepGroupSummary",
    })
end

--- Returns an item iterator for listTemplateStepGroups.
function M.items_list_template_step_groups(client, input)
    return paginator.items(client, "listTemplateStepGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateStepGroupSummary",
    })
end

--- Returns a page iterator for listTemplateSteps.
function M.pages_list_template_steps(client, input)
    return paginator.pages(client, "listTemplateSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateStepSummaryList",
    })
end

--- Returns an item iterator for listTemplateSteps.
function M.items_list_template_steps(client, input)
    return paginator.items(client, "listTemplateSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateStepSummaryList",
    })
end

--- Returns a page iterator for listTemplates.
function M.pages_list_templates(client, input)
    return paginator.pages(client, "listTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateSummary",
    })
end

--- Returns an item iterator for listTemplates.
function M.items_list_templates(client, input)
    return paginator.items(client, "listTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templateSummary",
    })
end

--- Returns a page iterator for listWorkflowStepGroups.
function M.pages_list_workflow_step_groups(client, input)
    return paginator.pages(client, "listWorkflowStepGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowStepGroupsSummary",
    })
end

--- Returns an item iterator for listWorkflowStepGroups.
function M.items_list_workflow_step_groups(client, input)
    return paginator.items(client, "listWorkflowStepGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowStepGroupsSummary",
    })
end

--- Returns a page iterator for listWorkflowSteps.
function M.pages_list_workflow_steps(client, input)
    return paginator.pages(client, "listWorkflowSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowStepsSummary",
    })
end

--- Returns an item iterator for listWorkflowSteps.
function M.items_list_workflow_steps(client, input)
    return paginator.items(client, "listWorkflowSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowStepsSummary",
    })
end

--- Returns a page iterator for listWorkflows.
function M.pages_list_workflows(client, input)
    return paginator.pages(client, "listWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "migrationWorkflowSummary",
    })
end

--- Returns an item iterator for listWorkflows.
function M.items_list_workflows(client, input)
    return paginator.items(client, "listWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "migrationWorkflowSummary",
    })
end

return M
