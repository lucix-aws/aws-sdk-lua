local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("resiliencehub.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("resiliencehub.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsResilienceHub"
    cfg.signing_name = "awsresiliencehub"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acceptResourceGroupingRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "AcceptResourceGroupingRecommendations",
        input_schema = types.AcceptResourceGroupingRecommendationsInput,
        output_schema = types.AcceptResourceGroupingRecommendationsOutput,
        http_method = "POST",
        http_path = "/accept-resource-grouping-recommendations",
    }, options)
end

function Client:addDraftAppVersionResourceMappings(input, options)
    return self:invokeOperation(input, {
        name = "AddDraftAppVersionResourceMappings",
        input_schema = types.AddDraftAppVersionResourceMappingsInput,
        output_schema = types.AddDraftAppVersionResourceMappingsOutput,
        http_method = "POST",
        http_path = "/add-draft-app-version-resource-mappings",
    }, options)
end

function Client:batchUpdateRecommendationStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateRecommendationStatus",
        input_schema = types.BatchUpdateRecommendationStatusInput,
        output_schema = types.BatchUpdateRecommendationStatusOutput,
        http_method = "POST",
        http_path = "/batch-update-recommendation-status",
    }, options)
end

function Client:createApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateApp",
        input_schema = types.CreateAppInput,
        output_schema = types.CreateAppOutput,
        http_method = "POST",
        http_path = "/create-app",
    }, options)
end

function Client:createAppVersionAppComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppVersionAppComponent",
        input_schema = types.CreateAppVersionAppComponentInput,
        output_schema = types.CreateAppVersionAppComponentOutput,
        http_method = "POST",
        http_path = "/create-app-version-app-component",
    }, options)
end

function Client:createAppVersionResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppVersionResource",
        input_schema = types.CreateAppVersionResourceInput,
        output_schema = types.CreateAppVersionResourceOutput,
        http_method = "POST",
        http_path = "/create-app-version-resource",
    }, options)
end

function Client:createRecommendationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommendationTemplate",
        input_schema = types.CreateRecommendationTemplateInput,
        output_schema = types.CreateRecommendationTemplateOutput,
        http_method = "POST",
        http_path = "/create-recommendation-template",
    }, options)
end

function Client:createResiliencyPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateResiliencyPolicy",
        input_schema = types.CreateResiliencyPolicyInput,
        output_schema = types.CreateResiliencyPolicyOutput,
        http_method = "POST",
        http_path = "/create-resiliency-policy",
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = types.DeleteAppInput,
        output_schema = types.DeleteAppOutput,
        http_method = "POST",
        http_path = "/delete-app",
    }, options)
end

function Client:deleteAppAssessment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppAssessment",
        input_schema = types.DeleteAppAssessmentInput,
        output_schema = types.DeleteAppAssessmentOutput,
        http_method = "POST",
        http_path = "/delete-app-assessment",
    }, options)
end

function Client:deleteAppInputSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInputSource",
        input_schema = types.DeleteAppInputSourceInput,
        output_schema = types.DeleteAppInputSourceOutput,
        http_method = "POST",
        http_path = "/delete-app-input-source",
    }, options)
end

function Client:deleteAppVersionAppComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppVersionAppComponent",
        input_schema = types.DeleteAppVersionAppComponentInput,
        output_schema = types.DeleteAppVersionAppComponentOutput,
        http_method = "POST",
        http_path = "/delete-app-version-app-component",
    }, options)
end

function Client:deleteAppVersionResource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppVersionResource",
        input_schema = types.DeleteAppVersionResourceInput,
        output_schema = types.DeleteAppVersionResourceOutput,
        http_method = "POST",
        http_path = "/delete-app-version-resource",
    }, options)
end

function Client:deleteRecommendationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommendationTemplate",
        input_schema = types.DeleteRecommendationTemplateInput,
        output_schema = types.DeleteRecommendationTemplateOutput,
        http_method = "POST",
        http_path = "/delete-recommendation-template",
    }, options)
end

function Client:deleteResiliencyPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResiliencyPolicy",
        input_schema = types.DeleteResiliencyPolicyInput,
        output_schema = types.DeleteResiliencyPolicyOutput,
        http_method = "POST",
        http_path = "/delete-resiliency-policy",
    }, options)
end

function Client:describeApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApp",
        input_schema = types.DescribeAppInput,
        output_schema = types.DescribeAppOutput,
        http_method = "POST",
        http_path = "/describe-app",
    }, options)
end

function Client:describeAppAssessment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppAssessment",
        input_schema = types.DescribeAppAssessmentInput,
        output_schema = types.DescribeAppAssessmentOutput,
        http_method = "POST",
        http_path = "/describe-app-assessment",
    }, options)
end

function Client:describeAppVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppVersion",
        input_schema = types.DescribeAppVersionInput,
        output_schema = types.DescribeAppVersionOutput,
        http_method = "POST",
        http_path = "/describe-app-version",
    }, options)
end

function Client:describeAppVersionAppComponent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppVersionAppComponent",
        input_schema = types.DescribeAppVersionAppComponentInput,
        output_schema = types.DescribeAppVersionAppComponentOutput,
        http_method = "POST",
        http_path = "/describe-app-version-app-component",
    }, options)
end

function Client:describeAppVersionResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppVersionResource",
        input_schema = types.DescribeAppVersionResourceInput,
        output_schema = types.DescribeAppVersionResourceOutput,
        http_method = "POST",
        http_path = "/describe-app-version-resource",
    }, options)
end

function Client:describeAppVersionResourcesResolutionStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppVersionResourcesResolutionStatus",
        input_schema = types.DescribeAppVersionResourcesResolutionStatusInput,
        output_schema = types.DescribeAppVersionResourcesResolutionStatusOutput,
        http_method = "POST",
        http_path = "/describe-app-version-resources-resolution-status",
    }, options)
end

function Client:describeAppVersionTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppVersionTemplate",
        input_schema = types.DescribeAppVersionTemplateInput,
        output_schema = types.DescribeAppVersionTemplateOutput,
        http_method = "POST",
        http_path = "/describe-app-version-template",
    }, options)
end

function Client:describeDraftAppVersionResourcesImportStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDraftAppVersionResourcesImportStatus",
        input_schema = types.DescribeDraftAppVersionResourcesImportStatusInput,
        output_schema = types.DescribeDraftAppVersionResourcesImportStatusOutput,
        http_method = "POST",
        http_path = "/describe-draft-app-version-resources-import-status",
    }, options)
end

function Client:describeMetricsExport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetricsExport",
        input_schema = types.DescribeMetricsExportInput,
        output_schema = types.DescribeMetricsExportOutput,
        http_method = "POST",
        http_path = "/describe-metrics-export",
    }, options)
end

function Client:describeResiliencyPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResiliencyPolicy",
        input_schema = types.DescribeResiliencyPolicyInput,
        output_schema = types.DescribeResiliencyPolicyOutput,
        http_method = "POST",
        http_path = "/describe-resiliency-policy",
    }, options)
end

function Client:describeResourceGroupingRecommendationTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourceGroupingRecommendationTask",
        input_schema = types.DescribeResourceGroupingRecommendationTaskInput,
        output_schema = types.DescribeResourceGroupingRecommendationTaskOutput,
        http_method = "POST",
        http_path = "/describe-resource-grouping-recommendation-task",
    }, options)
end

function Client:importResourcesToDraftAppVersion(input, options)
    return self:invokeOperation(input, {
        name = "ImportResourcesToDraftAppVersion",
        input_schema = types.ImportResourcesToDraftAppVersionInput,
        output_schema = types.ImportResourcesToDraftAppVersionOutput,
        http_method = "POST",
        http_path = "/import-resources-to-draft-app-version",
    }, options)
end

function Client:listAlarmRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarmRecommendations",
        input_schema = types.ListAlarmRecommendationsInput,
        output_schema = types.ListAlarmRecommendationsOutput,
        http_method = "POST",
        http_path = "/list-alarm-recommendations",
    }, options)
end

function Client:listAppAssessmentComplianceDrifts(input, options)
    return self:invokeOperation(input, {
        name = "ListAppAssessmentComplianceDrifts",
        input_schema = types.ListAppAssessmentComplianceDriftsInput,
        output_schema = types.ListAppAssessmentComplianceDriftsOutput,
        http_method = "POST",
        http_path = "/list-app-assessment-compliance-drifts",
    }, options)
end

function Client:listAppAssessmentResourceDrifts(input, options)
    return self:invokeOperation(input, {
        name = "ListAppAssessmentResourceDrifts",
        input_schema = types.ListAppAssessmentResourceDriftsInput,
        output_schema = types.ListAppAssessmentResourceDriftsOutput,
        http_method = "POST",
        http_path = "/list-app-assessment-resource-drifts",
    }, options)
end

function Client:listAppAssessments(input, options)
    return self:invokeOperation(input, {
        name = "ListAppAssessments",
        input_schema = types.ListAppAssessmentsInput,
        output_schema = types.ListAppAssessmentsOutput,
        http_method = "GET",
        http_path = "/list-app-assessments",
    }, options)
end

function Client:listAppComponentCompliances(input, options)
    return self:invokeOperation(input, {
        name = "ListAppComponentCompliances",
        input_schema = types.ListAppComponentCompliancesInput,
        output_schema = types.ListAppComponentCompliancesOutput,
        http_method = "POST",
        http_path = "/list-app-component-compliances",
    }, options)
end

function Client:listAppComponentRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListAppComponentRecommendations",
        input_schema = types.ListAppComponentRecommendationsInput,
        output_schema = types.ListAppComponentRecommendationsOutput,
        http_method = "POST",
        http_path = "/list-app-component-recommendations",
    }, options)
end

function Client:listAppInputSources(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInputSources",
        input_schema = types.ListAppInputSourcesInput,
        output_schema = types.ListAppInputSourcesOutput,
        http_method = "POST",
        http_path = "/list-app-input-sources",
    }, options)
end

function Client:listApps(input, options)
    return self:invokeOperation(input, {
        name = "ListApps",
        input_schema = types.ListAppsInput,
        output_schema = types.ListAppsOutput,
        http_method = "GET",
        http_path = "/list-apps",
    }, options)
end

function Client:listAppVersionAppComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListAppVersionAppComponents",
        input_schema = types.ListAppVersionAppComponentsInput,
        output_schema = types.ListAppVersionAppComponentsOutput,
        http_method = "POST",
        http_path = "/list-app-version-app-components",
    }, options)
end

function Client:listAppVersionResourceMappings(input, options)
    return self:invokeOperation(input, {
        name = "ListAppVersionResourceMappings",
        input_schema = types.ListAppVersionResourceMappingsInput,
        output_schema = types.ListAppVersionResourceMappingsOutput,
        http_method = "POST",
        http_path = "/list-app-version-resource-mappings",
    }, options)
end

function Client:listAppVersionResources(input, options)
    return self:invokeOperation(input, {
        name = "ListAppVersionResources",
        input_schema = types.ListAppVersionResourcesInput,
        output_schema = types.ListAppVersionResourcesOutput,
        http_method = "POST",
        http_path = "/list-app-version-resources",
    }, options)
end

function Client:listAppVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAppVersions",
        input_schema = types.ListAppVersionsInput,
        output_schema = types.ListAppVersionsOutput,
        http_method = "POST",
        http_path = "/list-app-versions",
    }, options)
end

function Client:listMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListMetrics",
        input_schema = types.ListMetricsInput,
        output_schema = types.ListMetricsOutput,
        http_method = "POST",
        http_path = "/list-metrics",
    }, options)
end

function Client:listRecommendationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendationTemplates",
        input_schema = types.ListRecommendationTemplatesInput,
        output_schema = types.ListRecommendationTemplatesOutput,
        http_method = "GET",
        http_path = "/list-recommendation-templates",
    }, options)
end

function Client:listResiliencyPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListResiliencyPolicies",
        input_schema = types.ListResiliencyPoliciesInput,
        output_schema = types.ListResiliencyPoliciesOutput,
        http_method = "GET",
        http_path = "/list-resiliency-policies",
    }, options)
end

function Client:listResourceGroupingRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceGroupingRecommendations",
        input_schema = types.ListResourceGroupingRecommendationsInput,
        output_schema = types.ListResourceGroupingRecommendationsOutput,
        http_method = "GET",
        http_path = "/list-resource-grouping-recommendations",
    }, options)
end

function Client:listSopRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListSopRecommendations",
        input_schema = types.ListSopRecommendationsInput,
        output_schema = types.ListSopRecommendationsOutput,
        http_method = "POST",
        http_path = "/list-sop-recommendations",
    }, options)
end

function Client:listSuggestedResiliencyPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListSuggestedResiliencyPolicies",
        input_schema = types.ListSuggestedResiliencyPoliciesInput,
        output_schema = types.ListSuggestedResiliencyPoliciesOutput,
        http_method = "GET",
        http_path = "/list-suggested-resiliency-policies",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listTestRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListTestRecommendations",
        input_schema = types.ListTestRecommendationsInput,
        output_schema = types.ListTestRecommendationsOutput,
        http_method = "POST",
        http_path = "/list-test-recommendations",
    }, options)
end

function Client:listUnsupportedAppVersionResources(input, options)
    return self:invokeOperation(input, {
        name = "ListUnsupportedAppVersionResources",
        input_schema = types.ListUnsupportedAppVersionResourcesInput,
        output_schema = types.ListUnsupportedAppVersionResourcesOutput,
        http_method = "POST",
        http_path = "/list-unsupported-app-version-resources",
    }, options)
end

function Client:publishAppVersion(input, options)
    return self:invokeOperation(input, {
        name = "PublishAppVersion",
        input_schema = types.PublishAppVersionInput,
        output_schema = types.PublishAppVersionOutput,
        http_method = "POST",
        http_path = "/publish-app-version",
    }, options)
end

function Client:putDraftAppVersionTemplate(input, options)
    return self:invokeOperation(input, {
        name = "PutDraftAppVersionTemplate",
        input_schema = types.PutDraftAppVersionTemplateInput,
        output_schema = types.PutDraftAppVersionTemplateOutput,
        http_method = "POST",
        http_path = "/put-draft-app-version-template",
    }, options)
end

function Client:rejectResourceGroupingRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "RejectResourceGroupingRecommendations",
        input_schema = types.RejectResourceGroupingRecommendationsInput,
        output_schema = types.RejectResourceGroupingRecommendationsOutput,
        http_method = "POST",
        http_path = "/reject-resource-grouping-recommendations",
    }, options)
end

function Client:removeDraftAppVersionResourceMappings(input, options)
    return self:invokeOperation(input, {
        name = "RemoveDraftAppVersionResourceMappings",
        input_schema = types.RemoveDraftAppVersionResourceMappingsInput,
        output_schema = types.RemoveDraftAppVersionResourceMappingsOutput,
        http_method = "POST",
        http_path = "/remove-draft-app-version-resource-mappings",
    }, options)
end

function Client:resolveAppVersionResources(input, options)
    return self:invokeOperation(input, {
        name = "ResolveAppVersionResources",
        input_schema = types.ResolveAppVersionResourcesInput,
        output_schema = types.ResolveAppVersionResourcesOutput,
        http_method = "POST",
        http_path = "/resolve-app-version-resources",
    }, options)
end

function Client:startAppAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StartAppAssessment",
        input_schema = types.StartAppAssessmentInput,
        output_schema = types.StartAppAssessmentOutput,
        http_method = "POST",
        http_path = "/start-app-assessment",
    }, options)
end

function Client:startMetricsExport(input, options)
    return self:invokeOperation(input, {
        name = "StartMetricsExport",
        input_schema = types.StartMetricsExportInput,
        output_schema = types.StartMetricsExportOutput,
        http_method = "POST",
        http_path = "/start-metrics-export",
    }, options)
end

function Client:startResourceGroupingRecommendationTask(input, options)
    return self:invokeOperation(input, {
        name = "StartResourceGroupingRecommendationTask",
        input_schema = types.StartResourceGroupingRecommendationTaskInput,
        output_schema = types.StartResourceGroupingRecommendationTaskOutput,
        http_method = "POST",
        http_path = "/start-resource-grouping-recommendation-task",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApp",
        input_schema = types.UpdateAppInput,
        output_schema = types.UpdateAppOutput,
        http_method = "POST",
        http_path = "/update-app",
    }, options)
end

function Client:updateAppVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppVersion",
        input_schema = types.UpdateAppVersionInput,
        output_schema = types.UpdateAppVersionOutput,
        http_method = "POST",
        http_path = "/update-app-version",
    }, options)
end

function Client:updateAppVersionAppComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppVersionAppComponent",
        input_schema = types.UpdateAppVersionAppComponentInput,
        output_schema = types.UpdateAppVersionAppComponentOutput,
        http_method = "POST",
        http_path = "/update-app-version-app-component",
    }, options)
end

function Client:updateAppVersionResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppVersionResource",
        input_schema = types.UpdateAppVersionResourceInput,
        output_schema = types.UpdateAppVersionResourceOutput,
        http_method = "POST",
        http_path = "/update-app-version-resource",
    }, options)
end

function Client:updateResiliencyPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResiliencyPolicy",
        input_schema = types.UpdateResiliencyPolicyInput,
        output_schema = types.UpdateResiliencyPolicyOutput,
        http_method = "POST",
        http_path = "/update-resiliency-policy",
    }, options)
end

return M
