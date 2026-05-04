local types = require("computeoptimizer.types")

local record Client
    deleteRecommendationPreferences: function(Client, types.DeleteRecommendationPreferencesInput): types.DeleteRecommendationPreferencesOutput, table
    describeRecommendationExportJobs: function(Client, types.DescribeRecommendationExportJobsInput): types.DescribeRecommendationExportJobsOutput, table
    exportAutoScalingGroupRecommendations: function(Client, types.ExportAutoScalingGroupRecommendationsInput): types.ExportAutoScalingGroupRecommendationsOutput, table
    exportEBSVolumeRecommendations: function(Client, types.ExportEBSVolumeRecommendationsInput): types.ExportEBSVolumeRecommendationsOutput, table
    exportEC2InstanceRecommendations: function(Client, types.ExportEC2InstanceRecommendationsInput): types.ExportEC2InstanceRecommendationsOutput, table
    exportECSServiceRecommendations: function(Client, types.ExportECSServiceRecommendationsInput): types.ExportECSServiceRecommendationsOutput, table
    exportIdleRecommendations: function(Client, types.ExportIdleRecommendationsInput): types.ExportIdleRecommendationsOutput, table
    exportLambdaFunctionRecommendations: function(Client, types.ExportLambdaFunctionRecommendationsInput): types.ExportLambdaFunctionRecommendationsOutput, table
    exportLicenseRecommendations: function(Client, types.ExportLicenseRecommendationsInput): types.ExportLicenseRecommendationsOutput, table
    exportRDSDatabaseRecommendations: function(Client, types.ExportRDSDatabaseRecommendationsInput): types.ExportRDSDatabaseRecommendationsOutput, table
    getAutoScalingGroupRecommendations: function(Client, types.GetAutoScalingGroupRecommendationsInput): types.GetAutoScalingGroupRecommendationsOutput, table
    getEBSVolumeRecommendations: function(Client, types.GetEBSVolumeRecommendationsInput): types.GetEBSVolumeRecommendationsOutput, table
    getEC2InstanceRecommendations: function(Client, types.GetEC2InstanceRecommendationsInput): types.GetEC2InstanceRecommendationsOutput, table
    getEC2RecommendationProjectedMetrics: function(Client, types.GetEC2RecommendationProjectedMetricsInput): types.GetEC2RecommendationProjectedMetricsOutput, table
    getECSServiceRecommendationProjectedMetrics: function(Client, types.GetECSServiceRecommendationProjectedMetricsInput): types.GetECSServiceRecommendationProjectedMetricsOutput, table
    getECSServiceRecommendations: function(Client, types.GetECSServiceRecommendationsInput): types.GetECSServiceRecommendationsOutput, table
    getEffectiveRecommendationPreferences: function(Client, types.GetEffectiveRecommendationPreferencesInput): types.GetEffectiveRecommendationPreferencesOutput, table
    getEnrollmentStatus: function(Client, types.GetEnrollmentStatusInput): types.GetEnrollmentStatusOutput, table
    getEnrollmentStatusesForOrganization: function(Client, types.GetEnrollmentStatusesForOrganizationInput): types.GetEnrollmentStatusesForOrganizationOutput, table
    getIdleRecommendations: function(Client, types.GetIdleRecommendationsInput): types.GetIdleRecommendationsOutput, table
    getLambdaFunctionRecommendations: function(Client, types.GetLambdaFunctionRecommendationsInput): types.GetLambdaFunctionRecommendationsOutput, table
    getLicenseRecommendations: function(Client, types.GetLicenseRecommendationsInput): types.GetLicenseRecommendationsOutput, table
    getRDSDatabaseRecommendationProjectedMetrics: function(Client, types.GetRDSDatabaseRecommendationProjectedMetricsInput): types.GetRDSDatabaseRecommendationProjectedMetricsOutput, table
    getRDSDatabaseRecommendations: function(Client, types.GetRDSDatabaseRecommendationsInput): types.GetRDSDatabaseRecommendationsOutput, table
    getRecommendationPreferences: function(Client, types.GetRecommendationPreferencesInput): types.GetRecommendationPreferencesOutput, table
    getRecommendationSummaries: function(Client, types.GetRecommendationSummariesInput): types.GetRecommendationSummariesOutput, table
    putRecommendationPreferences: function(Client, types.PutRecommendationPreferencesInput): types.PutRecommendationPreferencesOutput, table
    updateEnrollmentStatus: function(Client, types.UpdateEnrollmentStatusInput): types.UpdateEnrollmentStatusOutput, table
end

local record M
    new: function(table): Client
end

return M
