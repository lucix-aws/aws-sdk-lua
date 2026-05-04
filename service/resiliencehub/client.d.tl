local types = require("resiliencehub.types")

local record Client
    acceptResourceGroupingRecommendations: function(Client, types.AcceptResourceGroupingRecommendationsInput): types.AcceptResourceGroupingRecommendationsOutput, table
    addDraftAppVersionResourceMappings: function(Client, types.AddDraftAppVersionResourceMappingsInput): types.AddDraftAppVersionResourceMappingsOutput, table
    batchUpdateRecommendationStatus: function(Client, types.BatchUpdateRecommendationStatusInput): types.BatchUpdateRecommendationStatusOutput, table
    createApp: function(Client, types.CreateAppInput): types.CreateAppOutput, table
    createAppVersionAppComponent: function(Client, types.CreateAppVersionAppComponentInput): types.CreateAppVersionAppComponentOutput, table
    createAppVersionResource: function(Client, types.CreateAppVersionResourceInput): types.CreateAppVersionResourceOutput, table
    createRecommendationTemplate: function(Client, types.CreateRecommendationTemplateInput): types.CreateRecommendationTemplateOutput, table
    createResiliencyPolicy: function(Client, types.CreateResiliencyPolicyInput): types.CreateResiliencyPolicyOutput, table
    deleteApp: function(Client, types.DeleteAppInput): types.DeleteAppOutput, table
    deleteAppAssessment: function(Client, types.DeleteAppAssessmentInput): types.DeleteAppAssessmentOutput, table
    deleteAppInputSource: function(Client, types.DeleteAppInputSourceInput): types.DeleteAppInputSourceOutput, table
    deleteAppVersionAppComponent: function(Client, types.DeleteAppVersionAppComponentInput): types.DeleteAppVersionAppComponentOutput, table
    deleteAppVersionResource: function(Client, types.DeleteAppVersionResourceInput): types.DeleteAppVersionResourceOutput, table
    deleteRecommendationTemplate: function(Client, types.DeleteRecommendationTemplateInput): types.DeleteRecommendationTemplateOutput, table
    deleteResiliencyPolicy: function(Client, types.DeleteResiliencyPolicyInput): types.DeleteResiliencyPolicyOutput, table
    describeApp: function(Client, types.DescribeAppInput): types.DescribeAppOutput, table
    describeAppAssessment: function(Client, types.DescribeAppAssessmentInput): types.DescribeAppAssessmentOutput, table
    describeAppVersion: function(Client, types.DescribeAppVersionInput): types.DescribeAppVersionOutput, table
    describeAppVersionAppComponent: function(Client, types.DescribeAppVersionAppComponentInput): types.DescribeAppVersionAppComponentOutput, table
    describeAppVersionResource: function(Client, types.DescribeAppVersionResourceInput): types.DescribeAppVersionResourceOutput, table
    describeAppVersionResourcesResolutionStatus: function(Client, types.DescribeAppVersionResourcesResolutionStatusInput): types.DescribeAppVersionResourcesResolutionStatusOutput, table
    describeAppVersionTemplate: function(Client, types.DescribeAppVersionTemplateInput): types.DescribeAppVersionTemplateOutput, table
    describeDraftAppVersionResourcesImportStatus: function(Client, types.DescribeDraftAppVersionResourcesImportStatusInput): types.DescribeDraftAppVersionResourcesImportStatusOutput, table
    describeMetricsExport: function(Client, types.DescribeMetricsExportInput): types.DescribeMetricsExportOutput, table
    describeResiliencyPolicy: function(Client, types.DescribeResiliencyPolicyInput): types.DescribeResiliencyPolicyOutput, table
    describeResourceGroupingRecommendationTask: function(Client, types.DescribeResourceGroupingRecommendationTaskInput): types.DescribeResourceGroupingRecommendationTaskOutput, table
    importResourcesToDraftAppVersion: function(Client, types.ImportResourcesToDraftAppVersionInput): types.ImportResourcesToDraftAppVersionOutput, table
    listAlarmRecommendations: function(Client, types.ListAlarmRecommendationsInput): types.ListAlarmRecommendationsOutput, table
    listAppAssessmentComplianceDrifts: function(Client, types.ListAppAssessmentComplianceDriftsInput): types.ListAppAssessmentComplianceDriftsOutput, table
    listAppAssessmentResourceDrifts: function(Client, types.ListAppAssessmentResourceDriftsInput): types.ListAppAssessmentResourceDriftsOutput, table
    listAppAssessments: function(Client, types.ListAppAssessmentsInput): types.ListAppAssessmentsOutput, table
    listAppComponentCompliances: function(Client, types.ListAppComponentCompliancesInput): types.ListAppComponentCompliancesOutput, table
    listAppComponentRecommendations: function(Client, types.ListAppComponentRecommendationsInput): types.ListAppComponentRecommendationsOutput, table
    listAppInputSources: function(Client, types.ListAppInputSourcesInput): types.ListAppInputSourcesOutput, table
    listApps: function(Client, types.ListAppsInput): types.ListAppsOutput, table
    listAppVersionAppComponents: function(Client, types.ListAppVersionAppComponentsInput): types.ListAppVersionAppComponentsOutput, table
    listAppVersionResourceMappings: function(Client, types.ListAppVersionResourceMappingsInput): types.ListAppVersionResourceMappingsOutput, table
    listAppVersionResources: function(Client, types.ListAppVersionResourcesInput): types.ListAppVersionResourcesOutput, table
    listAppVersions: function(Client, types.ListAppVersionsInput): types.ListAppVersionsOutput, table
    listMetrics: function(Client, types.ListMetricsInput): types.ListMetricsOutput, table
    listRecommendationTemplates: function(Client, types.ListRecommendationTemplatesInput): types.ListRecommendationTemplatesOutput, table
    listResiliencyPolicies: function(Client, types.ListResiliencyPoliciesInput): types.ListResiliencyPoliciesOutput, table
    listResourceGroupingRecommendations: function(Client, types.ListResourceGroupingRecommendationsInput): types.ListResourceGroupingRecommendationsOutput, table
    listSopRecommendations: function(Client, types.ListSopRecommendationsInput): types.ListSopRecommendationsOutput, table
    listSuggestedResiliencyPolicies: function(Client, types.ListSuggestedResiliencyPoliciesInput): types.ListSuggestedResiliencyPoliciesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTestRecommendations: function(Client, types.ListTestRecommendationsInput): types.ListTestRecommendationsOutput, table
    listUnsupportedAppVersionResources: function(Client, types.ListUnsupportedAppVersionResourcesInput): types.ListUnsupportedAppVersionResourcesOutput, table
    publishAppVersion: function(Client, types.PublishAppVersionInput): types.PublishAppVersionOutput, table
    putDraftAppVersionTemplate: function(Client, types.PutDraftAppVersionTemplateInput): types.PutDraftAppVersionTemplateOutput, table
    rejectResourceGroupingRecommendations: function(Client, types.RejectResourceGroupingRecommendationsInput): types.RejectResourceGroupingRecommendationsOutput, table
    removeDraftAppVersionResourceMappings: function(Client, types.RemoveDraftAppVersionResourceMappingsInput): types.RemoveDraftAppVersionResourceMappingsOutput, table
    resolveAppVersionResources: function(Client, types.ResolveAppVersionResourcesInput): types.ResolveAppVersionResourcesOutput, table
    startAppAssessment: function(Client, types.StartAppAssessmentInput): types.StartAppAssessmentOutput, table
    startMetricsExport: function(Client, types.StartMetricsExportInput): types.StartMetricsExportOutput, table
    startResourceGroupingRecommendationTask: function(Client, types.StartResourceGroupingRecommendationTaskInput): types.StartResourceGroupingRecommendationTaskOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApp: function(Client, types.UpdateAppInput): types.UpdateAppOutput, table
    updateAppVersion: function(Client, types.UpdateAppVersionInput): types.UpdateAppVersionOutput, table
    updateAppVersionAppComponent: function(Client, types.UpdateAppVersionAppComponentInput): types.UpdateAppVersionAppComponentOutput, table
    updateAppVersionResource: function(Client, types.UpdateAppVersionResourceInput): types.UpdateAppVersionResourceOutput, table
    updateResiliencyPolicy: function(Client, types.UpdateResiliencyPolicyInput): types.UpdateResiliencyPolicyOutput, table
end

local record M
    new: function(table): Client
end

return M
