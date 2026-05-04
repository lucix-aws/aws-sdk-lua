local types = require("codepipeline.types")

local record Client
    acknowledgeJob: function(Client, types.AcknowledgeJobInput): types.AcknowledgeJobOutput, table
    acknowledgeThirdPartyJob: function(Client, types.AcknowledgeThirdPartyJobInput): types.AcknowledgeThirdPartyJobOutput, table
    createCustomActionType: function(Client, types.CreateCustomActionTypeInput): types.CreateCustomActionTypeOutput, table
    createPipeline: function(Client, types.CreatePipelineInput): types.CreatePipelineOutput, table
    deleteCustomActionType: function(Client, types.DeleteCustomActionTypeInput): types.DeleteCustomActionTypeOutput, table
    deletePipeline: function(Client, types.DeletePipelineInput): types.DeletePipelineOutput, table
    deleteWebhook: function(Client, types.DeleteWebhookInput): types.DeleteWebhookOutput, table
    deregisterWebhookWithThirdParty: function(Client, types.DeregisterWebhookWithThirdPartyInput): types.DeregisterWebhookWithThirdPartyOutput, table
    disableStageTransition: function(Client, types.DisableStageTransitionInput): types.DisableStageTransitionOutput, table
    enableStageTransition: function(Client, types.EnableStageTransitionInput): types.EnableStageTransitionOutput, table
    getActionType: function(Client, types.GetActionTypeInput): types.GetActionTypeOutput, table
    getJobDetails: function(Client, types.GetJobDetailsInput): types.GetJobDetailsOutput, table
    getPipeline: function(Client, types.GetPipelineInput): types.GetPipelineOutput, table
    getPipelineExecution: function(Client, types.GetPipelineExecutionInput): types.GetPipelineExecutionOutput, table
    getPipelineState: function(Client, types.GetPipelineStateInput): types.GetPipelineStateOutput, table
    getThirdPartyJobDetails: function(Client, types.GetThirdPartyJobDetailsInput): types.GetThirdPartyJobDetailsOutput, table
    listActionExecutions: function(Client, types.ListActionExecutionsInput): types.ListActionExecutionsOutput, table
    listActionTypes: function(Client, types.ListActionTypesInput): types.ListActionTypesOutput, table
    listDeployActionExecutionTargets: function(Client, types.ListDeployActionExecutionTargetsInput): types.ListDeployActionExecutionTargetsOutput, table
    listPipelineExecutions: function(Client, types.ListPipelineExecutionsInput): types.ListPipelineExecutionsOutput, table
    listPipelines: function(Client, types.ListPipelinesInput): types.ListPipelinesOutput, table
    listRuleExecutions: function(Client, types.ListRuleExecutionsInput): types.ListRuleExecutionsOutput, table
    listRuleTypes: function(Client, types.ListRuleTypesInput): types.ListRuleTypesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWebhooks: function(Client, types.ListWebhooksInput): types.ListWebhooksOutput, table
    overrideStageCondition: function(Client, types.OverrideStageConditionInput): types.OverrideStageConditionOutput, table
    pollForJobs: function(Client, types.PollForJobsInput): types.PollForJobsOutput, table
    pollForThirdPartyJobs: function(Client, types.PollForThirdPartyJobsInput): types.PollForThirdPartyJobsOutput, table
    putActionRevision: function(Client, types.PutActionRevisionInput): types.PutActionRevisionOutput, table
    putApprovalResult: function(Client, types.PutApprovalResultInput): types.PutApprovalResultOutput, table
    putJobFailureResult: function(Client, types.PutJobFailureResultInput): types.PutJobFailureResultOutput, table
    putJobSuccessResult: function(Client, types.PutJobSuccessResultInput): types.PutJobSuccessResultOutput, table
    putThirdPartyJobFailureResult: function(Client, types.PutThirdPartyJobFailureResultInput): types.PutThirdPartyJobFailureResultOutput, table
    putThirdPartyJobSuccessResult: function(Client, types.PutThirdPartyJobSuccessResultInput): types.PutThirdPartyJobSuccessResultOutput, table
    putWebhook: function(Client, types.PutWebhookInput): types.PutWebhookOutput, table
    registerWebhookWithThirdParty: function(Client, types.RegisterWebhookWithThirdPartyInput): types.RegisterWebhookWithThirdPartyOutput, table
    retryStageExecution: function(Client, types.RetryStageExecutionInput): types.RetryStageExecutionOutput, table
    rollbackStage: function(Client, types.RollbackStageInput): types.RollbackStageOutput, table
    startPipelineExecution: function(Client, types.StartPipelineExecutionInput): types.StartPipelineExecutionOutput, table
    stopPipelineExecution: function(Client, types.StopPipelineExecutionInput): types.StopPipelineExecutionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateActionType: function(Client, types.UpdateActionTypeInput): types.UpdateActionTypeOutput, table
    updatePipeline: function(Client, types.UpdatePipelineInput): types.UpdatePipelineOutput, table
end

local record M
    new: function(table): Client
end

return M
