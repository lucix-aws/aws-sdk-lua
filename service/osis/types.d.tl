local record CreatePipelineInput
    PipelineName: string
    MinUnits: number
    MaxUnits: number
    PipelineConfigurationBody: string
    LogPublishingOptions: LogPublishingOptions
    VpcOptions: VpcOptions
    BufferOptions: BufferOptions
    EncryptionAtRestOptions: EncryptionAtRestOptions
    Tags: {Tag}
    PipelineRoleArn: string
end

local record CreatePipelineOutput
    Pipeline: Pipeline
end

local record CreatePipelineEndpointInput
    PipelineArn: string
    VpcOptions: PipelineEndpointVpcOptions
end

local record CreatePipelineEndpointOutput
    PipelineArn: string
    EndpointId: string
    Status: string
    VpcId: string
end

local record DeletePipelineInput
    PipelineName: string
end

local record DeletePipelineOutput
end

local record DeletePipelineEndpointInput
    EndpointId: string
end

local record DeletePipelineEndpointOutput
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record GetPipelineInput
    PipelineName: string
end

local record GetPipelineOutput
    Pipeline: Pipeline
end

local record GetPipelineBlueprintInput
    BlueprintName: string
    Format: string
end

local record GetPipelineBlueprintOutput
    Blueprint: PipelineBlueprint
    Format: string
end

local record GetPipelineChangeProgressInput
    PipelineName: string
end

local record GetPipelineChangeProgressOutput
    ChangeProgressStatuses: {ChangeProgressStatus}
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    ResourceArn: string
    Policy: string
end

local record ListPipelineBlueprintsInput
end

local record ListPipelineBlueprintsOutput
    Blueprints: {PipelineBlueprintSummary}
end

local record ListPipelineEndpointConnectionsInput
    MaxResults: number
    NextToken: string
end

local record ListPipelineEndpointConnectionsOutput
    NextToken: string
    PipelineEndpointConnections: {PipelineEndpointConnection}
end

local record ListPipelineEndpointsInput
    MaxResults: number
    NextToken: string
end

local record ListPipelineEndpointsOutput
    NextToken: string
    PipelineEndpoints: {PipelineEndpoint}
end

local record ListPipelinesInput
    MaxResults: number
    NextToken: string
end

local record ListPipelinesOutput
    NextToken: string
    Pipelines: {PipelineSummary}
end

local record ListTagsForResourceInput
    Arn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
end

local record PutResourcePolicyOutput
    ResourceArn: string
    Policy: string
end

local record RevokePipelineEndpointConnectionsInput
    PipelineArn: string
    EndpointIds: {string}
end

local record RevokePipelineEndpointConnectionsOutput
    PipelineArn: string
end

local record StartPipelineInput
    PipelineName: string
end

local record StartPipelineOutput
    Pipeline: Pipeline
end

local record StopPipelineInput
    PipelineName: string
end

local record StopPipelineOutput
    Pipeline: Pipeline
end

local record TagResourceInput
    Arn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    Arn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdatePipelineInput
    PipelineName: string
    MinUnits: number
    MaxUnits: number
    PipelineConfigurationBody: string
    LogPublishingOptions: LogPublishingOptions
    BufferOptions: BufferOptions
    EncryptionAtRestOptions: EncryptionAtRestOptions
    PipelineRoleArn: string
end

local record UpdatePipelineOutput
    Pipeline: Pipeline
end

local record ValidatePipelineInput
    PipelineConfigurationBody: string
end

local record ValidatePipelineOutput
    isValid: boolean
    Errors: {ValidationMessage}
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ValidationException
    message: string
end

local type PipelineEndpointStatus = "CREATING" | "ACTIVE" | "CREATE_FAILED" | "DELETING" | "REVOKING" | "REVOKED"

local record M
    CreatePipelineInput: CreatePipelineInput
    CreatePipelineOutput: CreatePipelineOutput
    CreatePipelineEndpointInput: CreatePipelineEndpointInput
    CreatePipelineEndpointOutput: CreatePipelineEndpointOutput
    DeletePipelineInput: DeletePipelineInput
    DeletePipelineOutput: DeletePipelineOutput
    DeletePipelineEndpointInput: DeletePipelineEndpointInput
    DeletePipelineEndpointOutput: DeletePipelineEndpointOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    GetPipelineInput: GetPipelineInput
    GetPipelineOutput: GetPipelineOutput
    GetPipelineBlueprintInput: GetPipelineBlueprintInput
    GetPipelineBlueprintOutput: GetPipelineBlueprintOutput
    GetPipelineChangeProgressInput: GetPipelineChangeProgressInput
    GetPipelineChangeProgressOutput: GetPipelineChangeProgressOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ListPipelineBlueprintsInput: ListPipelineBlueprintsInput
    ListPipelineBlueprintsOutput: ListPipelineBlueprintsOutput
    ListPipelineEndpointConnectionsInput: ListPipelineEndpointConnectionsInput
    ListPipelineEndpointConnectionsOutput: ListPipelineEndpointConnectionsOutput
    ListPipelineEndpointsInput: ListPipelineEndpointsInput
    ListPipelineEndpointsOutput: ListPipelineEndpointsOutput
    ListPipelinesInput: ListPipelinesInput
    ListPipelinesOutput: ListPipelinesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RevokePipelineEndpointConnectionsInput: RevokePipelineEndpointConnectionsInput
    RevokePipelineEndpointConnectionsOutput: RevokePipelineEndpointConnectionsOutput
    StartPipelineInput: StartPipelineInput
    StartPipelineOutput: StartPipelineOutput
    StopPipelineInput: StopPipelineInput
    StopPipelineOutput: StopPipelineOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdatePipelineInput: UpdatePipelineInput
    UpdatePipelineOutput: UpdatePipelineOutput
    ValidatePipelineInput: ValidatePipelineInput
    ValidatePipelineOutput: ValidatePipelineOutput
end

return M
