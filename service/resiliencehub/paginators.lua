local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAlarmRecommendations.
function M.pages_list_alarm_recommendations(client, input)
    return paginator.pages(client, "listAlarmRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppAssessmentComplianceDrifts.
function M.pages_list_app_assessment_compliance_drifts(client, input)
    return paginator.pages(client, "listAppAssessmentComplianceDrifts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppAssessmentResourceDrifts.
function M.pages_list_app_assessment_resource_drifts(client, input)
    return paginator.pages(client, "listAppAssessmentResourceDrifts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourceDrifts",
    })
end

--- Returns an item iterator for listAppAssessmentResourceDrifts.
function M.items_list_app_assessment_resource_drifts(client, input)
    return paginator.items(client, "listAppAssessmentResourceDrifts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourceDrifts",
    })
end

--- Returns a page iterator for listAppAssessments.
function M.pages_list_app_assessments(client, input)
    return paginator.pages(client, "listAppAssessments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppComponentCompliances.
function M.pages_list_app_component_compliances(client, input)
    return paginator.pages(client, "listAppComponentCompliances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppComponentRecommendations.
function M.pages_list_app_component_recommendations(client, input)
    return paginator.pages(client, "listAppComponentRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppInputSources.
function M.pages_list_app_input_sources(client, input)
    return paginator.pages(client, "listAppInputSources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppVersionAppComponents.
function M.pages_list_app_version_app_components(client, input)
    return paginator.pages(client, "listAppVersionAppComponents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppVersionResourceMappings.
function M.pages_list_app_version_resource_mappings(client, input)
    return paginator.pages(client, "listAppVersionResourceMappings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppVersionResources.
function M.pages_list_app_version_resources(client, input)
    return paginator.pages(client, "listAppVersionResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAppVersions.
function M.pages_list_app_versions(client, input)
    return paginator.pages(client, "listAppVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listApps.
function M.pages_list_apps(client, input)
    return paginator.pages(client, "listApps", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listMetrics.
function M.pages_list_metrics(client, input)
    return paginator.pages(client, "listMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "rows",
    })
end

--- Returns an item iterator for listMetrics.
function M.items_list_metrics(client, input)
    return paginator.items(client, "listMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "rows",
    })
end

--- Returns a page iterator for listRecommendationTemplates.
function M.pages_list_recommendation_templates(client, input)
    return paginator.pages(client, "listRecommendationTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listResiliencyPolicies.
function M.pages_list_resiliency_policies(client, input)
    return paginator.pages(client, "listResiliencyPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listResourceGroupingRecommendations.
function M.pages_list_resource_grouping_recommendations(client, input)
    return paginator.pages(client, "listResourceGroupingRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "groupingRecommendations",
    })
end

--- Returns an item iterator for listResourceGroupingRecommendations.
function M.items_list_resource_grouping_recommendations(client, input)
    return paginator.items(client, "listResourceGroupingRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "groupingRecommendations",
    })
end

--- Returns a page iterator for listSopRecommendations.
function M.pages_list_sop_recommendations(client, input)
    return paginator.pages(client, "listSopRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSuggestedResiliencyPolicies.
function M.pages_list_suggested_resiliency_policies(client, input)
    return paginator.pages(client, "listSuggestedResiliencyPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestRecommendations.
function M.pages_list_test_recommendations(client, input)
    return paginator.pages(client, "listTestRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listUnsupportedAppVersionResources.
function M.pages_list_unsupported_app_version_resources(client, input)
    return paginator.pages(client, "listUnsupportedAppVersionResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
