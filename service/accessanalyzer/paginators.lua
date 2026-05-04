local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getFindingRecommendation.
function M.pages_get_finding_recommendation(client, input)
    return paginator.pages(client, "getFindingRecommendation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendedSteps",
    })
end

--- Returns an item iterator for getFindingRecommendation.
function M.items_get_finding_recommendation(client, input)
    return paginator.items(client, "getFindingRecommendation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendedSteps",
    })
end

--- Returns a page iterator for getFindingV2.
function M.pages_get_finding_v2(client, input)
    return paginator.pages(client, "getFindingV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findingDetails",
    })
end

--- Returns an item iterator for getFindingV2.
function M.items_get_finding_v2(client, input)
    return paginator.items(client, "getFindingV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findingDetails",
    })
end

--- Returns a page iterator for listAccessPreviewFindings.
function M.pages_list_access_preview_findings(client, input)
    return paginator.pages(client, "listAccessPreviewFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns an item iterator for listAccessPreviewFindings.
function M.items_list_access_preview_findings(client, input)
    return paginator.items(client, "listAccessPreviewFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns a page iterator for listAccessPreviews.
function M.pages_list_access_previews(client, input)
    return paginator.pages(client, "listAccessPreviews", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accessPreviews",
    })
end

--- Returns an item iterator for listAccessPreviews.
function M.items_list_access_previews(client, input)
    return paginator.items(client, "listAccessPreviews", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accessPreviews",
    })
end

--- Returns a page iterator for listAnalyzedResources.
function M.pages_list_analyzed_resources(client, input)
    return paginator.pages(client, "listAnalyzedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "analyzedResources",
    })
end

--- Returns an item iterator for listAnalyzedResources.
function M.items_list_analyzed_resources(client, input)
    return paginator.items(client, "listAnalyzedResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "analyzedResources",
    })
end

--- Returns a page iterator for listAnalyzers.
function M.pages_list_analyzers(client, input)
    return paginator.pages(client, "listAnalyzers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "analyzers",
    })
end

--- Returns an item iterator for listAnalyzers.
function M.items_list_analyzers(client, input)
    return paginator.items(client, "listAnalyzers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "analyzers",
    })
end

--- Returns a page iterator for listArchiveRules.
function M.pages_list_archive_rules(client, input)
    return paginator.pages(client, "listArchiveRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "archiveRules",
    })
end

--- Returns an item iterator for listArchiveRules.
function M.items_list_archive_rules(client, input)
    return paginator.items(client, "listArchiveRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "archiveRules",
    })
end

--- Returns a page iterator for listFindings.
function M.pages_list_findings(client, input)
    return paginator.pages(client, "listFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns an item iterator for listFindings.
function M.items_list_findings(client, input)
    return paginator.items(client, "listFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns a page iterator for listFindingsV2.
function M.pages_list_findings_v2(client, input)
    return paginator.pages(client, "listFindingsV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns an item iterator for listFindingsV2.
function M.items_list_findings_v2(client, input)
    return paginator.items(client, "listFindingsV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns a page iterator for listPolicyGenerations.
function M.pages_list_policy_generations(client, input)
    return paginator.pages(client, "listPolicyGenerations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyGenerations",
    })
end

--- Returns an item iterator for listPolicyGenerations.
function M.items_list_policy_generations(client, input)
    return paginator.items(client, "listPolicyGenerations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "policyGenerations",
    })
end

--- Returns a page iterator for validatePolicy.
function M.pages_validate_policy(client, input)
    return paginator.pages(client, "validatePolicy", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns an item iterator for validatePolicy.
function M.items_validate_policy(client, input)
    return paginator.items(client, "validatePolicy", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

return M
