local types = require("emrserverless.types")

local record Client
    cancelJobRun: function(Client, types.CancelJobRunInput): types.CancelJobRunOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    getApplication: function(Client, types.GetApplicationInput): types.GetApplicationOutput, table
    getDashboardForJobRun: function(Client, types.GetDashboardForJobRunInput): types.GetDashboardForJobRunOutput, table
    getJobRun: function(Client, types.GetJobRunInput): types.GetJobRunOutput, table
    getResourceDashboard: function(Client, types.GetResourceDashboardInput): types.GetResourceDashboardOutput, table
    getSession: function(Client, types.GetSessionInput): types.GetSessionOutput, table
    getSessionEndpoint: function(Client, types.GetSessionEndpointInput): types.GetSessionEndpointOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listJobRunAttempts: function(Client, types.ListJobRunAttemptsInput): types.ListJobRunAttemptsOutput, table
    listJobRuns: function(Client, types.ListJobRunsInput): types.ListJobRunsOutput, table
    listSessions: function(Client, types.ListSessionsInput): types.ListSessionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startApplication: function(Client, types.StartApplicationInput): types.StartApplicationOutput, table
    startJobRun: function(Client, types.StartJobRunInput): types.StartJobRunOutput, table
    startSession: function(Client, types.StartSessionInput): types.StartSessionOutput, table
    stopApplication: function(Client, types.StopApplicationInput): types.StopApplicationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    terminateSession: function(Client, types.TerminateSessionInput): types.TerminateSessionOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
end

local record M
    new: function(table): Client
end

return M
