local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getExclusionsPreview.
function M.pages_get_exclusions_preview(client, input)
    return paginator.pages(client, "getExclusionsPreview", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentRunAgents.
function M.pages_list_assessment_run_agents(client, input)
    return paginator.pages(client, "listAssessmentRunAgents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentRuns.
function M.pages_list_assessment_runs(client, input)
    return paginator.pages(client, "listAssessmentRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentTargets.
function M.pages_list_assessment_targets(client, input)
    return paginator.pages(client, "listAssessmentTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentTemplates.
function M.pages_list_assessment_templates(client, input)
    return paginator.pages(client, "listAssessmentTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listEventSubscriptions.
function M.pages_list_event_subscriptions(client, input)
    return paginator.pages(client, "listEventSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listExclusions.
function M.pages_list_exclusions(client, input)
    return paginator.pages(client, "listExclusions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listFindings.
function M.pages_list_findings(client, input)
    return paginator.pages(client, "listFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listRulesPackages.
function M.pages_list_rules_packages(client, input)
    return paginator.pages(client, "listRulesPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for previewAgents.
function M.pages_preview_agents(client, input)
    return paginator.pages(client, "previewAgents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
