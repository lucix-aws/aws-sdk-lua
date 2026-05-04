local record ActivatePipelineInput
    pipelineId: string
    parameterValues: {ParameterValue}
    startTimestamp: number
end

local record ActivatePipelineOutput
end

local record AddTagsInput
    pipelineId: string
    tags: {Tag}
end

local record AddTagsOutput
end

local record CreatePipelineInput
    name: string
    uniqueId: string
    description: string
    tags: {Tag}
end

local record CreatePipelineOutput
    pipelineId: string
end

local record DeactivatePipelineInput
    pipelineId: string
    cancelActive: boolean
end

local record DeactivatePipelineOutput
end

local record DeletePipelineInput
    pipelineId: string
end

local record DeletePipelineOutput
end

local record DescribeObjectsInput
    pipelineId: string
    objectIds: {string}
    evaluateExpressions: boolean
    marker: string
end

local record DescribeObjectsOutput
    pipelineObjects: {PipelineObject}
    marker: string
    hasMoreResults: boolean
end

local record DescribePipelinesInput
    pipelineIds: {string}
end

local record DescribePipelinesOutput
    pipelineDescriptionList: {PipelineDescription}
end

local record EvaluateExpressionInput
    pipelineId: string
    objectId: string
    expression: string
end

local record EvaluateExpressionOutput
    evaluatedExpression: string
end

local record GetPipelineDefinitionInput
    pipelineId: string
    version: string
end

local record GetPipelineDefinitionOutput
    pipelineObjects: {PipelineObject}
    parameterObjects: {ParameterObject}
    parameterValues: {ParameterValue}
end

local record ListPipelinesInput
    marker: string
end

local record ListPipelinesOutput
    pipelineIdList: {PipelineIdName}
    marker: string
    hasMoreResults: boolean
end

local record PollForTaskInput
    workerGroup: string
    hostname: string
    instanceIdentity: InstanceIdentity
end

local record PollForTaskOutput
    taskObject: TaskObject
end

local record PutPipelineDefinitionInput
    pipelineId: string
    pipelineObjects: {PipelineObject}
    parameterObjects: {ParameterObject}
    parameterValues: {ParameterValue}
end

local record PutPipelineDefinitionOutput
    validationErrors: {ValidationError}
    validationWarnings: {ValidationWarning}
    errored: boolean
end

local record QueryObjectsInput
    pipelineId: string
    query: Query
    sphere: string
    marker: string
    limit: number
end

local record QueryObjectsOutput
    ids: {string}
    marker: string
    hasMoreResults: boolean
end

local record RemoveTagsInput
    pipelineId: string
    tagKeys: {string}
end

local record RemoveTagsOutput
end

local record ReportTaskProgressInput
    taskId: string
    fields: {Field}
end

local record ReportTaskProgressOutput
    canceled: boolean
end

local record ReportTaskRunnerHeartbeatInput
    taskrunnerId: string
    workerGroup: string
    hostname: string
end

local record ReportTaskRunnerHeartbeatOutput
    terminate: boolean
end

local record SetStatusInput
    pipelineId: string
    objectIds: {string}
    status: string
end

local record SetStatusOutput
end

local record SetTaskStatusInput
    taskId: string
    taskStatus: string
    errorId: string
    errorMessage: string
    errorStackTrace: string
end

local record SetTaskStatusOutput
end

local record ValidatePipelineDefinitionInput
    pipelineId: string
    pipelineObjects: {PipelineObject}
    parameterObjects: {ParameterObject}
    parameterValues: {ParameterValue}
end

local record ValidatePipelineDefinitionOutput
    validationErrors: {ValidationError}
    validationWarnings: {ValidationWarning}
    errored: boolean
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record TaskNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record TaskNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record TaskNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record TaskNotFoundException
    message: string
end

local record InternalServiceError
    message: string
end

local record InvalidRequestException
    message: string
end

local record PipelineDeletedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local type TaskStatus = "FINISHED" | "FAILED" | "FALSE"

local record M
    ActivatePipelineInput: ActivatePipelineInput
    ActivatePipelineOutput: ActivatePipelineOutput
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    CreatePipelineInput: CreatePipelineInput
    CreatePipelineOutput: CreatePipelineOutput
    DeactivatePipelineInput: DeactivatePipelineInput
    DeactivatePipelineOutput: DeactivatePipelineOutput
    DeletePipelineInput: DeletePipelineInput
    DeletePipelineOutput: DeletePipelineOutput
    DescribeObjectsInput: DescribeObjectsInput
    DescribeObjectsOutput: DescribeObjectsOutput
    DescribePipelinesInput: DescribePipelinesInput
    DescribePipelinesOutput: DescribePipelinesOutput
    EvaluateExpressionInput: EvaluateExpressionInput
    EvaluateExpressionOutput: EvaluateExpressionOutput
    GetPipelineDefinitionInput: GetPipelineDefinitionInput
    GetPipelineDefinitionOutput: GetPipelineDefinitionOutput
    ListPipelinesInput: ListPipelinesInput
    ListPipelinesOutput: ListPipelinesOutput
    PollForTaskInput: PollForTaskInput
    PollForTaskOutput: PollForTaskOutput
    PutPipelineDefinitionInput: PutPipelineDefinitionInput
    PutPipelineDefinitionOutput: PutPipelineDefinitionOutput
    QueryObjectsInput: QueryObjectsInput
    QueryObjectsOutput: QueryObjectsOutput
    RemoveTagsInput: RemoveTagsInput
    RemoveTagsOutput: RemoveTagsOutput
    ReportTaskProgressInput: ReportTaskProgressInput
    ReportTaskProgressOutput: ReportTaskProgressOutput
    ReportTaskRunnerHeartbeatInput: ReportTaskRunnerHeartbeatInput
    ReportTaskRunnerHeartbeatOutput: ReportTaskRunnerHeartbeatOutput
    SetStatusInput: SetStatusInput
    SetStatusOutput: SetStatusOutput
    SetTaskStatusInput: SetTaskStatusInput
    SetTaskStatusOutput: SetTaskStatusOutput
    ValidatePipelineDefinitionInput: ValidatePipelineDefinitionInput
    ValidatePipelineDefinitionOutput: ValidatePipelineDefinitionOutput
end

return M
