local types = require("codebuild.types")

local record Client
    batchDeleteBuilds: function(Client, types.BatchDeleteBuildsInput): types.BatchDeleteBuildsOutput, table
    batchGetBuildBatches: function(Client, types.BatchGetBuildBatchesInput): types.BatchGetBuildBatchesOutput, table
    batchGetBuilds: function(Client, types.BatchGetBuildsInput): types.BatchGetBuildsOutput, table
    batchGetCommandExecutions: function(Client, types.BatchGetCommandExecutionsInput): types.BatchGetCommandExecutionsOutput, table
    batchGetFleets: function(Client, types.BatchGetFleetsInput): types.BatchGetFleetsOutput, table
    batchGetProjects: function(Client, types.BatchGetProjectsInput): types.BatchGetProjectsOutput, table
    batchGetReportGroups: function(Client, types.BatchGetReportGroupsInput): types.BatchGetReportGroupsOutput, table
    batchGetReports: function(Client, types.BatchGetReportsInput): types.BatchGetReportsOutput, table
    batchGetSandboxes: function(Client, types.BatchGetSandboxesInput): types.BatchGetSandboxesOutput, table
    createFleet: function(Client, types.CreateFleetInput): types.CreateFleetOutput, table
    createProject: function(Client, types.CreateProjectInput): types.CreateProjectOutput, table
    createReportGroup: function(Client, types.CreateReportGroupInput): types.CreateReportGroupOutput, table
    createWebhook: function(Client, types.CreateWebhookInput): types.CreateWebhookOutput, table
    deleteBuildBatch: function(Client, types.DeleteBuildBatchInput): types.DeleteBuildBatchOutput, table
    deleteFleet: function(Client, types.DeleteFleetInput): types.DeleteFleetOutput, table
    deleteProject: function(Client, types.DeleteProjectInput): types.DeleteProjectOutput, table
    deleteReport: function(Client, types.DeleteReportInput): types.DeleteReportOutput, table
    deleteReportGroup: function(Client, types.DeleteReportGroupInput): types.DeleteReportGroupOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deleteSourceCredentials: function(Client, types.DeleteSourceCredentialsInput): types.DeleteSourceCredentialsOutput, table
    deleteWebhook: function(Client, types.DeleteWebhookInput): types.DeleteWebhookOutput, table
    describeCodeCoverages: function(Client, types.DescribeCodeCoveragesInput): types.DescribeCodeCoveragesOutput, table
    describeTestCases: function(Client, types.DescribeTestCasesInput): types.DescribeTestCasesOutput, table
    getReportGroupTrend: function(Client, types.GetReportGroupTrendInput): types.GetReportGroupTrendOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    importSourceCredentials: function(Client, types.ImportSourceCredentialsInput): types.ImportSourceCredentialsOutput, table
    invalidateProjectCache: function(Client, types.InvalidateProjectCacheInput): types.InvalidateProjectCacheOutput, table
    listBuildBatches: function(Client, types.ListBuildBatchesInput): types.ListBuildBatchesOutput, table
    listBuildBatchesForProject: function(Client, types.ListBuildBatchesForProjectInput): types.ListBuildBatchesForProjectOutput, table
    listBuilds: function(Client, types.ListBuildsInput): types.ListBuildsOutput, table
    listBuildsForProject: function(Client, types.ListBuildsForProjectInput): types.ListBuildsForProjectOutput, table
    listCommandExecutionsForSandbox: function(Client, types.ListCommandExecutionsForSandboxInput): types.ListCommandExecutionsForSandboxOutput, table
    listCuratedEnvironmentImages: function(Client, types.ListCuratedEnvironmentImagesInput): types.ListCuratedEnvironmentImagesOutput, table
    listFleets: function(Client, types.ListFleetsInput): types.ListFleetsOutput, table
    listProjects: function(Client, types.ListProjectsInput): types.ListProjectsOutput, table
    listReportGroups: function(Client, types.ListReportGroupsInput): types.ListReportGroupsOutput, table
    listReports: function(Client, types.ListReportsInput): types.ListReportsOutput, table
    listReportsForReportGroup: function(Client, types.ListReportsForReportGroupInput): types.ListReportsForReportGroupOutput, table
    listSandboxes: function(Client, types.ListSandboxesInput): types.ListSandboxesOutput, table
    listSandboxesForProject: function(Client, types.ListSandboxesForProjectInput): types.ListSandboxesForProjectOutput, table
    listSharedProjects: function(Client, types.ListSharedProjectsInput): types.ListSharedProjectsOutput, table
    listSharedReportGroups: function(Client, types.ListSharedReportGroupsInput): types.ListSharedReportGroupsOutput, table
    listSourceCredentials: function(Client, types.ListSourceCredentialsInput): types.ListSourceCredentialsOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    retryBuild: function(Client, types.RetryBuildInput): types.RetryBuildOutput, table
    retryBuildBatch: function(Client, types.RetryBuildBatchInput): types.RetryBuildBatchOutput, table
    startBuild: function(Client, types.StartBuildInput): types.StartBuildOutput, table
    startBuildBatch: function(Client, types.StartBuildBatchInput): types.StartBuildBatchOutput, table
    startCommandExecution: function(Client, types.StartCommandExecutionInput): types.StartCommandExecutionOutput, table
    startSandbox: function(Client, types.StartSandboxInput): types.StartSandboxOutput, table
    startSandboxConnection: function(Client, types.StartSandboxConnectionInput): types.StartSandboxConnectionOutput, table
    stopBuild: function(Client, types.StopBuildInput): types.StopBuildOutput, table
    stopBuildBatch: function(Client, types.StopBuildBatchInput): types.StopBuildBatchOutput, table
    stopSandbox: function(Client, types.StopSandboxInput): types.StopSandboxOutput, table
    updateFleet: function(Client, types.UpdateFleetInput): types.UpdateFleetOutput, table
    updateProject: function(Client, types.UpdateProjectInput): types.UpdateProjectOutput, table
    updateProjectVisibility: function(Client, types.UpdateProjectVisibilityInput): types.UpdateProjectVisibilityOutput, table
    updateReportGroup: function(Client, types.UpdateReportGroupInput): types.UpdateReportGroupOutput, table
    updateWebhook: function(Client, types.UpdateWebhookInput): types.UpdateWebhookOutput, table
end

local record M
    new: function(table): Client
end

return M
