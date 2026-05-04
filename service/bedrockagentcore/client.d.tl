local types = require("bedrockagentcore.types")

local record Client
    batchCreateMemoryRecords: function(Client, types.BatchCreateMemoryRecordsInput): types.BatchCreateMemoryRecordsOutput, table
    batchDeleteMemoryRecords: function(Client, types.BatchDeleteMemoryRecordsInput): types.BatchDeleteMemoryRecordsOutput, table
    batchUpdateMemoryRecords: function(Client, types.BatchUpdateMemoryRecordsInput): types.BatchUpdateMemoryRecordsOutput, table
    completeResourceTokenAuth: function(Client, types.CompleteResourceTokenAuthInput): types.CompleteResourceTokenAuthOutput, table
    createABTest: function(Client, types.CreateABTestInput): types.CreateABTestOutput, table
    createEvent: function(Client, types.CreateEventInput): types.CreateEventOutput, table
    deleteABTest: function(Client, types.DeleteABTestInput): types.DeleteABTestOutput, table
    deleteBatchEvaluation: function(Client, types.DeleteBatchEvaluationInput): types.DeleteBatchEvaluationOutput, table
    deleteEvent: function(Client, types.DeleteEventInput): types.DeleteEventOutput, table
    deleteMemoryRecord: function(Client, types.DeleteMemoryRecordInput): types.DeleteMemoryRecordOutput, table
    deleteRecommendation: function(Client, types.DeleteRecommendationInput): types.DeleteRecommendationOutput, table
    evaluate: function(Client, types.EvaluateInput): types.EvaluateOutput, table
    getABTest: function(Client, types.GetABTestInput): types.GetABTestOutput, table
    getAgentCard: function(Client, types.GetAgentCardInput): types.GetAgentCardOutput, table
    getBatchEvaluation: function(Client, types.GetBatchEvaluationInput): types.GetBatchEvaluationOutput, table
    getBrowserSession: function(Client, types.GetBrowserSessionInput): types.GetBrowserSessionOutput, table
    getCodeInterpreterSession: function(Client, types.GetCodeInterpreterSessionInput): types.GetCodeInterpreterSessionOutput, table
    getEvent: function(Client, types.GetEventInput): types.GetEventOutput, table
    getMemoryRecord: function(Client, types.GetMemoryRecordInput): types.GetMemoryRecordOutput, table
    getRecommendation: function(Client, types.GetRecommendationInput): types.GetRecommendationOutput, table
    getResourceApiKey: function(Client, types.GetResourceApiKeyInput): types.GetResourceApiKeyOutput, table
    getResourceOauth2Token: function(Client, types.GetResourceOauth2TokenInput): types.GetResourceOauth2TokenOutput, table
    getWorkloadAccessToken: function(Client, types.GetWorkloadAccessTokenInput): types.GetWorkloadAccessTokenOutput, table
    getWorkloadAccessTokenForJWT: function(Client, types.GetWorkloadAccessTokenForJWTInput): types.GetWorkloadAccessTokenForJWTOutput, table
    getWorkloadAccessTokenForUserId: function(Client, types.GetWorkloadAccessTokenForUserIdInput): types.GetWorkloadAccessTokenForUserIdOutput, table
    invokeAgentRuntime: function(Client, types.InvokeAgentRuntimeInput): types.InvokeAgentRuntimeOutput, table
    invokeAgentRuntimeCommand: function(Client, types.InvokeAgentRuntimeCommandInput): types.InvokeAgentRuntimeCommandOutput, table
    invokeBrowser: function(Client, types.InvokeBrowserInput): types.InvokeBrowserOutput, table
    invokeCodeInterpreter: function(Client, types.InvokeCodeInterpreterInput): types.InvokeCodeInterpreterOutput, table
    invokeHarness: function(Client, types.InvokeHarnessInput): types.InvokeHarnessOutput, table
    listABTests: function(Client, types.ListABTestsInput): types.ListABTestsOutput, table
    listActors: function(Client, types.ListActorsInput): types.ListActorsOutput, table
    listBatchEvaluations: function(Client, types.ListBatchEvaluationsInput): types.ListBatchEvaluationsOutput, table
    listBrowserSessions: function(Client, types.ListBrowserSessionsInput): types.ListBrowserSessionsOutput, table
    listCodeInterpreterSessions: function(Client, types.ListCodeInterpreterSessionsInput): types.ListCodeInterpreterSessionsOutput, table
    listEvents: function(Client, types.ListEventsInput): types.ListEventsOutput, table
    listMemoryExtractionJobs: function(Client, types.ListMemoryExtractionJobsInput): types.ListMemoryExtractionJobsOutput, table
    listMemoryRecords: function(Client, types.ListMemoryRecordsInput): types.ListMemoryRecordsOutput, table
    listRecommendations: function(Client, types.ListRecommendationsInput): types.ListRecommendationsOutput, table
    listSessions: function(Client, types.ListSessionsInput): types.ListSessionsOutput, table
    retrieveMemoryRecords: function(Client, types.RetrieveMemoryRecordsInput): types.RetrieveMemoryRecordsOutput, table
    saveBrowserSessionProfile: function(Client, types.SaveBrowserSessionProfileInput): types.SaveBrowserSessionProfileOutput, table
    searchRegistryRecords: function(Client, types.SearchRegistryRecordsInput): types.SearchRegistryRecordsOutput, table
    startBatchEvaluation: function(Client, types.StartBatchEvaluationInput): types.StartBatchEvaluationOutput, table
    startBrowserSession: function(Client, types.StartBrowserSessionInput): types.StartBrowserSessionOutput, table
    startCodeInterpreterSession: function(Client, types.StartCodeInterpreterSessionInput): types.StartCodeInterpreterSessionOutput, table
    startMemoryExtractionJob: function(Client, types.StartMemoryExtractionJobInput): types.StartMemoryExtractionJobOutput, table
    startRecommendation: function(Client, types.StartRecommendationInput): types.StartRecommendationOutput, table
    stopBatchEvaluation: function(Client, types.StopBatchEvaluationInput): types.StopBatchEvaluationOutput, table
    stopBrowserSession: function(Client, types.StopBrowserSessionInput): types.StopBrowserSessionOutput, table
    stopCodeInterpreterSession: function(Client, types.StopCodeInterpreterSessionInput): types.StopCodeInterpreterSessionOutput, table
    stopRuntimeSession: function(Client, types.StopRuntimeSessionInput): types.StopRuntimeSessionOutput, table
    updateABTest: function(Client, types.UpdateABTestInput): types.UpdateABTestOutput, table
    updateBrowserStream: function(Client, types.UpdateBrowserStreamInput): types.UpdateBrowserStreamOutput, table
end

local record M
    new: function(table): Client
end

return M
