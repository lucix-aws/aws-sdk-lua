local types = require("datapipeline.types")

local record Client
    activatePipeline: function(Client, types.ActivatePipelineInput): types.ActivatePipelineOutput, table
    addTags: function(Client, types.AddTagsInput): types.AddTagsOutput, table
    createPipeline: function(Client, types.CreatePipelineInput): types.CreatePipelineOutput, table
    deactivatePipeline: function(Client, types.DeactivatePipelineInput): types.DeactivatePipelineOutput, table
    deletePipeline: function(Client, types.DeletePipelineInput): types.DeletePipelineOutput, table
    describeObjects: function(Client, types.DescribeObjectsInput): types.DescribeObjectsOutput, table
    describePipelines: function(Client, types.DescribePipelinesInput): types.DescribePipelinesOutput, table
    evaluateExpression: function(Client, types.EvaluateExpressionInput): types.EvaluateExpressionOutput, table
    getPipelineDefinition: function(Client, types.GetPipelineDefinitionInput): types.GetPipelineDefinitionOutput, table
    listPipelines: function(Client, types.ListPipelinesInput): types.ListPipelinesOutput, table
    pollForTask: function(Client, types.PollForTaskInput): types.PollForTaskOutput, table
    putPipelineDefinition: function(Client, types.PutPipelineDefinitionInput): types.PutPipelineDefinitionOutput, table
    queryObjects: function(Client, types.QueryObjectsInput): types.QueryObjectsOutput, table
    removeTags: function(Client, types.RemoveTagsInput): types.RemoveTagsOutput, table
    reportTaskProgress: function(Client, types.ReportTaskProgressInput): types.ReportTaskProgressOutput, table
    reportTaskRunnerHeartbeat: function(Client, types.ReportTaskRunnerHeartbeatInput): types.ReportTaskRunnerHeartbeatOutput, table
    setStatus: function(Client, types.SetStatusInput): types.SetStatusOutput, table
    setTaskStatus: function(Client, types.SetTaskStatusInput): types.SetTaskStatusOutput, table
    validatePipelineDefinition: function(Client, types.ValidatePipelineDefinitionInput): types.ValidatePipelineDefinitionOutput, table
end

local record M
    new: function(table): Client
end

return M
