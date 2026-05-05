local record CreateWorkflowInput
    Name: string
    ClientToken: string
    DefinitionS3Location: DefinitionS3Location
    RoleArn: string
    Description: string
    EncryptionConfiguration: EncryptionConfiguration
    LoggingConfiguration: LoggingConfiguration
    EngineVersion: number
    NetworkConfiguration: NetworkConfiguration
    Tags: {string : string}
    TriggerMode: string
end

local record CreateWorkflowOutput
    WorkflowArn: string
    CreatedAt: number
    RevisionId: string
    WorkflowStatus: string
    WorkflowVersion: string
    IsLatestVersion: boolean
    Warnings: {string}
end

local record DeleteWorkflowInput
    WorkflowArn: string
    WorkflowVersion: string
end

local record DeleteWorkflowOutput
    WorkflowArn: string
    WorkflowVersion: string
end

local record GetTaskInstanceInput
    WorkflowArn: string
    TaskInstanceId: string
    RunId: string
end

local record GetTaskInstanceOutput
    WorkflowArn: string
    RunId: string
    TaskInstanceId: string
    WorkflowVersion: string
    Status: string
    DurationInSeconds: number
    OperatorName: string
    ModifiedAt: number
    EndedAt: number
    StartedAt: number
    AttemptNumber: number
    ErrorMessage: string
    TaskId: string
    LogStream: string
    Xcom: {string : string}
end

local record GetWorkflowInput
    WorkflowArn: string
    WorkflowVersion: string
end

local record GetWorkflowOutput
    WorkflowArn: string
    WorkflowVersion: string
    Name: string
    Description: string
    CreatedAt: number
    ModifiedAt: number
    EncryptionConfiguration: EncryptionConfiguration
    LoggingConfiguration: LoggingConfiguration
    EngineVersion: number
    WorkflowStatus: string
    DefinitionS3Location: DefinitionS3Location
    ScheduleConfiguration: ScheduleConfiguration
    RoleArn: string
    NetworkConfiguration: NetworkConfiguration
    TriggerMode: string
    WorkflowDefinition: string
end

local record GetWorkflowRunInput
    WorkflowArn: string
    RunId: string
end

local record GetWorkflowRunOutput
    WorkflowArn: string
    WorkflowVersion: string
    RunId: string
    RunType: string
    OverrideParameters: {string : any}
    RunDetail: WorkflowRunDetail
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTaskInstancesInput
    WorkflowArn: string
    RunId: string
    MaxResults: number
    NextToken: string
end

local record ListTaskInstancesOutput
    TaskInstances: {TaskInstanceSummary}
    NextToken: string
end

local record ListWorkflowRunsInput
    MaxResults: number
    NextToken: string
    WorkflowArn: string
    WorkflowVersion: string
end

local record ListWorkflowRunsOutput
    WorkflowRuns: {WorkflowRunSummary}
    NextToken: string
end

local record ListWorkflowsInput
    MaxResults: number
    NextToken: string
end

local record ListWorkflowsOutput
    Workflows: {WorkflowSummary}
    NextToken: string
end

local record ListWorkflowVersionsInput
    MaxResults: number
    NextToken: string
    WorkflowArn: string
end

local record ListWorkflowVersionsOutput
    WorkflowVersions: {WorkflowVersionSummary}
    NextToken: string
end

local record StartWorkflowRunInput
    WorkflowArn: string
    ClientToken: string
    OverrideParameters: {string : any}
    WorkflowVersion: string
end

local record StartWorkflowRunOutput
    RunId: string
    Status: string
    StartedAt: number
end

local record StopWorkflowRunInput
    WorkflowArn: string
    RunId: string
end

local record StopWorkflowRunOutput
    WorkflowArn: string
    WorkflowVersion: string
    RunId: string
    Status: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateWorkflowInput
    WorkflowArn: string
    DefinitionS3Location: DefinitionS3Location
    RoleArn: string
    Description: string
    LoggingConfiguration: LoggingConfiguration
    EngineVersion: number
    NetworkConfiguration: NetworkConfiguration
    TriggerMode: string
end

local record UpdateWorkflowOutput
    WorkflowArn: string
    ModifiedAt: number
    WorkflowVersion: string
    Warnings: {string}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local type TaskInstanceStatus = "QUEUED" | "FAILED" | "SCHEDULED" | "RUNNING" | "SUCCESS" | "UP_FOR_RESCHEDULE" | "UP_FOR_RETRY" | "UPSTREAM_FAILED" | "REMOVED" | "RESTARTING" | "DEFERRED" | "NONE" | "CANCELLED" | "TIMEOUT"

local type RunType = "ON_DEMAND" | "SCHEDULED"

local type WorkflowRunStatus = "STARTING" | "QUEUED" | "RUNNING" | "SUCCESS" | "FAILED" | "TIMEOUT" | "STOPPING" | "STOPPED"

local type WorkflowStatus = "READY" | "DELETING"

local type EngineVersion = 1

local record M
    CreateWorkflowInput: CreateWorkflowInput
    CreateWorkflowOutput: CreateWorkflowOutput
    DeleteWorkflowInput: DeleteWorkflowInput
    DeleteWorkflowOutput: DeleteWorkflowOutput
    GetTaskInstanceInput: GetTaskInstanceInput
    GetTaskInstanceOutput: GetTaskInstanceOutput
    GetWorkflowInput: GetWorkflowInput
    GetWorkflowOutput: GetWorkflowOutput
    GetWorkflowRunInput: GetWorkflowRunInput
    GetWorkflowRunOutput: GetWorkflowRunOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTaskInstancesInput: ListTaskInstancesInput
    ListTaskInstancesOutput: ListTaskInstancesOutput
    ListWorkflowRunsInput: ListWorkflowRunsInput
    ListWorkflowRunsOutput: ListWorkflowRunsOutput
    ListWorkflowsInput: ListWorkflowsInput
    ListWorkflowsOutput: ListWorkflowsOutput
    ListWorkflowVersionsInput: ListWorkflowVersionsInput
    ListWorkflowVersionsOutput: ListWorkflowVersionsOutput
    StartWorkflowRunInput: StartWorkflowRunInput
    StartWorkflowRunOutput: StartWorkflowRunOutput
    StopWorkflowRunInput: StopWorkflowRunInput
    StopWorkflowRunOutput: StopWorkflowRunOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateWorkflowInput: UpdateWorkflowInput
    UpdateWorkflowOutput: UpdateWorkflowOutput
end

return M
