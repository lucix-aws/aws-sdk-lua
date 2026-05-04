local types = require("sfn.types")

local record Client
    createActivity: function(Client, types.CreateActivityInput): types.CreateActivityOutput, table
    createStateMachine: function(Client, types.CreateStateMachineInput): types.CreateStateMachineOutput, table
    createStateMachineAlias: function(Client, types.CreateStateMachineAliasInput): types.CreateStateMachineAliasOutput, table
    deleteActivity: function(Client, types.DeleteActivityInput): types.DeleteActivityOutput, table
    deleteStateMachine: function(Client, types.DeleteStateMachineInput): types.DeleteStateMachineOutput, table
    deleteStateMachineAlias: function(Client, types.DeleteStateMachineAliasInput): types.DeleteStateMachineAliasOutput, table
    deleteStateMachineVersion: function(Client, types.DeleteStateMachineVersionInput): types.DeleteStateMachineVersionOutput, table
    describeActivity: function(Client, types.DescribeActivityInput): types.DescribeActivityOutput, table
    describeExecution: function(Client, types.DescribeExecutionInput): types.DescribeExecutionOutput, table
    describeMapRun: function(Client, types.DescribeMapRunInput): types.DescribeMapRunOutput, table
    describeStateMachine: function(Client, types.DescribeStateMachineInput): types.DescribeStateMachineOutput, table
    describeStateMachineAlias: function(Client, types.DescribeStateMachineAliasInput): types.DescribeStateMachineAliasOutput, table
    describeStateMachineForExecution: function(Client, types.DescribeStateMachineForExecutionInput): types.DescribeStateMachineForExecutionOutput, table
    getActivityTask: function(Client, types.GetActivityTaskInput): types.GetActivityTaskOutput, table
    getExecutionHistory: function(Client, types.GetExecutionHistoryInput): types.GetExecutionHistoryOutput, table
    listActivities: function(Client, types.ListActivitiesInput): types.ListActivitiesOutput, table
    listExecutions: function(Client, types.ListExecutionsInput): types.ListExecutionsOutput, table
    listMapRuns: function(Client, types.ListMapRunsInput): types.ListMapRunsOutput, table
    listStateMachineAliases: function(Client, types.ListStateMachineAliasesInput): types.ListStateMachineAliasesOutput, table
    listStateMachines: function(Client, types.ListStateMachinesInput): types.ListStateMachinesOutput, table
    listStateMachineVersions: function(Client, types.ListStateMachineVersionsInput): types.ListStateMachineVersionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    publishStateMachineVersion: function(Client, types.PublishStateMachineVersionInput): types.PublishStateMachineVersionOutput, table
    redriveExecution: function(Client, types.RedriveExecutionInput): types.RedriveExecutionOutput, table
    sendTaskFailure: function(Client, types.SendTaskFailureInput): types.SendTaskFailureOutput, table
    sendTaskHeartbeat: function(Client, types.SendTaskHeartbeatInput): types.SendTaskHeartbeatOutput, table
    sendTaskSuccess: function(Client, types.SendTaskSuccessInput): types.SendTaskSuccessOutput, table
    startExecution: function(Client, types.StartExecutionInput): types.StartExecutionOutput, table
    startSyncExecution: function(Client, types.StartSyncExecutionInput): types.StartSyncExecutionOutput, table
    stopExecution: function(Client, types.StopExecutionInput): types.StopExecutionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    testState: function(Client, types.TestStateInput): types.TestStateOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateMapRun: function(Client, types.UpdateMapRunInput): types.UpdateMapRunOutput, table
    updateStateMachine: function(Client, types.UpdateStateMachineInput): types.UpdateStateMachineOutput, table
    updateStateMachineAlias: function(Client, types.UpdateStateMachineAliasInput): types.UpdateStateMachineAliasOutput, table
    validateStateMachineDefinition: function(Client, types.ValidateStateMachineDefinitionInput): types.ValidateStateMachineDefinitionOutput, table
end

local record M
    new: function(table): Client
end

return M
