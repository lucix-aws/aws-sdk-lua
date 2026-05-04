local types = require("codecatalyst.types")

local record Client
    createAccessToken: function(Client, types.CreateAccessTokenInput): types.CreateAccessTokenOutput, table
    createDevEnvironment: function(Client, types.CreateDevEnvironmentInput): types.CreateDevEnvironmentOutput, table
    createProject: function(Client, types.CreateProjectInput): types.CreateProjectOutput, table
    createSourceRepository: function(Client, types.CreateSourceRepositoryInput): types.CreateSourceRepositoryOutput, table
    createSourceRepositoryBranch: function(Client, types.CreateSourceRepositoryBranchInput): types.CreateSourceRepositoryBranchOutput, table
    deleteAccessToken: function(Client, types.DeleteAccessTokenInput): types.DeleteAccessTokenOutput, table
    deleteDevEnvironment: function(Client, types.DeleteDevEnvironmentInput): types.DeleteDevEnvironmentOutput, table
    deleteProject: function(Client, types.DeleteProjectInput): types.DeleteProjectOutput, table
    deleteSourceRepository: function(Client, types.DeleteSourceRepositoryInput): types.DeleteSourceRepositoryOutput, table
    deleteSpace: function(Client, types.DeleteSpaceInput): types.DeleteSpaceOutput, table
    getDevEnvironment: function(Client, types.GetDevEnvironmentInput): types.GetDevEnvironmentOutput, table
    getProject: function(Client, types.GetProjectInput): types.GetProjectOutput, table
    getSourceRepository: function(Client, types.GetSourceRepositoryInput): types.GetSourceRepositoryOutput, table
    getSourceRepositoryCloneUrls: function(Client, types.GetSourceRepositoryCloneUrlsInput): types.GetSourceRepositoryCloneUrlsOutput, table
    getSpace: function(Client, types.GetSpaceInput): types.GetSpaceOutput, table
    getSubscription: function(Client, types.GetSubscriptionInput): types.GetSubscriptionOutput, table
    getUserDetails: function(Client, types.GetUserDetailsInput): types.GetUserDetailsOutput, table
    getWorkflow: function(Client, types.GetWorkflowInput): types.GetWorkflowOutput, table
    getWorkflowRun: function(Client, types.GetWorkflowRunInput): types.GetWorkflowRunOutput, table
    listAccessTokens: function(Client, types.ListAccessTokensInput): types.ListAccessTokensOutput, table
    listDevEnvironments: function(Client, types.ListDevEnvironmentsInput): types.ListDevEnvironmentsOutput, table
    listDevEnvironmentSessions: function(Client, types.ListDevEnvironmentSessionsInput): types.ListDevEnvironmentSessionsOutput, table
    listEventLogs: function(Client, types.ListEventLogsInput): types.ListEventLogsOutput, table
    listProjects: function(Client, types.ListProjectsInput): types.ListProjectsOutput, table
    listSourceRepositories: function(Client, types.ListSourceRepositoriesInput): types.ListSourceRepositoriesOutput, table
    listSourceRepositoryBranches: function(Client, types.ListSourceRepositoryBranchesInput): types.ListSourceRepositoryBranchesOutput, table
    listSpaces: function(Client, types.ListSpacesInput): types.ListSpacesOutput, table
    listWorkflowRuns: function(Client, types.ListWorkflowRunsInput): types.ListWorkflowRunsOutput, table
    listWorkflows: function(Client, types.ListWorkflowsInput): types.ListWorkflowsOutput, table
    startDevEnvironment: function(Client, types.StartDevEnvironmentInput): types.StartDevEnvironmentOutput, table
    startDevEnvironmentSession: function(Client, types.StartDevEnvironmentSessionInput): types.StartDevEnvironmentSessionOutput, table
    startWorkflowRun: function(Client, types.StartWorkflowRunInput): types.StartWorkflowRunOutput, table
    stopDevEnvironment: function(Client, types.StopDevEnvironmentInput): types.StopDevEnvironmentOutput, table
    stopDevEnvironmentSession: function(Client, types.StopDevEnvironmentSessionInput): types.StopDevEnvironmentSessionOutput, table
    updateDevEnvironment: function(Client, types.UpdateDevEnvironmentInput): types.UpdateDevEnvironmentOutput, table
    updateProject: function(Client, types.UpdateProjectInput): types.UpdateProjectOutput, table
    updateSpace: function(Client, types.UpdateSpaceInput): types.UpdateSpaceOutput, table
    verifySession: function(Client, types.VerifySessionInput): types.VerifySessionOutput, table
end

local record M
    new: function(table): Client
end

return M
