local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAccounts.
function M.pages_list_accounts(client, input)
    return paginator.pages(client, "listAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accounts",
    })
end

--- Returns an item iterator for listAccounts.
function M.items_list_accounts(client, input)
    return paginator.items(client, "listAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accounts",
    })
end

--- Returns a page iterator for listAutomationEventSteps.
function M.pages_list_automation_event_steps(client, input)
    return paginator.pages(client, "listAutomationEventSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationEventSteps",
    })
end

--- Returns an item iterator for listAutomationEventSteps.
function M.items_list_automation_event_steps(client, input)
    return paginator.items(client, "listAutomationEventSteps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationEventSteps",
    })
end

--- Returns a page iterator for listAutomationEventSummaries.
function M.pages_list_automation_event_summaries(client, input)
    return paginator.pages(client, "listAutomationEventSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationEventSummaries",
    })
end

--- Returns an item iterator for listAutomationEventSummaries.
function M.items_list_automation_event_summaries(client, input)
    return paginator.items(client, "listAutomationEventSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationEventSummaries",
    })
end

--- Returns a page iterator for listAutomationEvents.
function M.pages_list_automation_events(client, input)
    return paginator.pages(client, "listAutomationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationEvents",
    })
end

--- Returns an item iterator for listAutomationEvents.
function M.items_list_automation_events(client, input)
    return paginator.items(client, "listAutomationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationEvents",
    })
end

--- Returns a page iterator for listAutomationRulePreview.
function M.pages_list_automation_rule_preview(client, input)
    return paginator.pages(client, "listAutomationRulePreview", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "previewResults",
    })
end

--- Returns an item iterator for listAutomationRulePreview.
function M.items_list_automation_rule_preview(client, input)
    return paginator.items(client, "listAutomationRulePreview", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "previewResults",
    })
end

--- Returns a page iterator for listAutomationRulePreviewSummaries.
function M.pages_list_automation_rule_preview_summaries(client, input)
    return paginator.pages(client, "listAutomationRulePreviewSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "previewResultSummaries",
    })
end

--- Returns an item iterator for listAutomationRulePreviewSummaries.
function M.items_list_automation_rule_preview_summaries(client, input)
    return paginator.items(client, "listAutomationRulePreviewSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "previewResultSummaries",
    })
end

--- Returns a page iterator for listAutomationRules.
function M.pages_list_automation_rules(client, input)
    return paginator.pages(client, "listAutomationRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationRules",
    })
end

--- Returns an item iterator for listAutomationRules.
function M.items_list_automation_rules(client, input)
    return paginator.items(client, "listAutomationRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "automationRules",
    })
end

--- Returns a page iterator for listRecommendedActionSummaries.
function M.pages_list_recommended_action_summaries(client, input)
    return paginator.pages(client, "listRecommendedActionSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendedActionSummaries",
    })
end

--- Returns an item iterator for listRecommendedActionSummaries.
function M.items_list_recommended_action_summaries(client, input)
    return paginator.items(client, "listRecommendedActionSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendedActionSummaries",
    })
end

--- Returns a page iterator for listRecommendedActions.
function M.pages_list_recommended_actions(client, input)
    return paginator.pages(client, "listRecommendedActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendedActions",
    })
end

--- Returns an item iterator for listRecommendedActions.
function M.items_list_recommended_actions(client, input)
    return paginator.items(client, "listRecommendedActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendedActions",
    })
end

return M
