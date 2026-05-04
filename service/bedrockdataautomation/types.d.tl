local record CopyBlueprintStageInput
    blueprintArn: string
    sourceStage: string
    targetStage: string
    clientToken: string
end

local record CopyBlueprintStageOutput
end

local record CreateBlueprintInput
    blueprintName: string
    type: string
    blueprintStage: string
    schema: string
    clientToken: string
    encryptionConfiguration: EncryptionConfiguration
    tags: {Tag}
end

local record CreateBlueprintOutput
    blueprint: Blueprint
end

local record CreateBlueprintVersionInput
    blueprintArn: string
    clientToken: string
end

local record CreateBlueprintVersionOutput
    blueprint: Blueprint
end

local record CreateDataAutomationLibraryInput
    libraryName: string
    libraryDescription: string
    clientToken: string
    encryptionConfiguration: EncryptionConfiguration
    tags: {Tag}
end

local record CreateDataAutomationLibraryOutput
    libraryArn: string
    status: string
end

local record CreateDataAutomationProjectInput
    projectName: string
    projectDescription: string
    projectStage: string
    projectType: string
    standardOutputConfiguration: StandardOutputConfiguration
    customOutputConfiguration: CustomOutputConfiguration
    overrideConfiguration: OverrideConfiguration
    dataAutomationLibraryConfiguration: DataAutomationLibraryConfiguration
    clientToken: string
    encryptionConfiguration: EncryptionConfiguration
    tags: {Tag}
end

local record CreateDataAutomationProjectOutput
    projectArn: string
    projectStage: string
    status: string
end

local record DeleteBlueprintInput
    blueprintArn: string
    blueprintVersion: string
end

local record DeleteBlueprintOutput
end

local record DeleteDataAutomationLibraryInput
    libraryArn: string
end

local record DeleteDataAutomationLibraryOutput
    libraryArn: string
    status: string
end

local record DeleteDataAutomationProjectInput
    projectArn: string
end

local record DeleteDataAutomationProjectOutput
    projectArn: string
    status: string
end

local record GetBlueprintInput
    blueprintArn: string
    blueprintVersion: string
    blueprintStage: string
end

local record GetBlueprintOutput
    blueprint: Blueprint
end

local record GetBlueprintOptimizationStatusInput
    invocationArn: string
end

local record GetBlueprintOptimizationStatusOutput
    status: string
    errorType: string
    errorMessage: string
    outputConfiguration: BlueprintOptimizationOutputConfiguration
end

local record GetDataAutomationLibraryInput
    libraryArn: string
end

local record GetDataAutomationLibraryOutput
    library: DataAutomationLibrary
end

local record GetDataAutomationLibraryEntityInput
    libraryArn: string
    entityType: string
    entityId: string
end

local record GetDataAutomationLibraryEntityOutput
    entity: EntityDetails
end

local record GetDataAutomationLibraryIngestionJobInput
    libraryArn: string
    jobArn: string
end

local record GetDataAutomationLibraryIngestionJobOutput
    job: DataAutomationLibraryIngestionJob
end

local record GetDataAutomationProjectInput
    projectArn: string
    projectStage: string
end

local record GetDataAutomationProjectOutput
    project: DataAutomationProject
end

local record InvokeBlueprintOptimizationAsyncInput
    blueprint: BlueprintOptimizationObject
    samples: {BlueprintOptimizationSample}
    outputConfiguration: BlueprintOptimizationOutputConfiguration
    dataAutomationProfileArn: string
    encryptionConfiguration: EncryptionConfiguration
    tags: {Tag}
end

local record InvokeBlueprintOptimizationAsyncOutput
    invocationArn: string
end

local record InvokeDataAutomationLibraryIngestionJobInput
    libraryArn: string
    clientToken: string
    inputConfiguration: InputConfiguration
    entityType: string
    operationType: string
    outputConfiguration: OutputConfiguration
    notificationConfiguration: NotificationConfiguration
    tags: {Tag}
end

local record InvokeDataAutomationLibraryIngestionJobOutput
    jobArn: string
end

local record ListBlueprintsInput
    blueprintArn: string
    resourceOwner: string
    blueprintStageFilter: string
    maxResults: number
    nextToken: string
    projectFilter: DataAutomationProjectFilter
end

local record ListBlueprintsOutput
    blueprints: {BlueprintSummary}
    nextToken: string
end

local record ListDataAutomationLibrariesInput
    maxResults: number
    nextToken: string
    projectFilter: DataAutomationProjectFilter
end

local record ListDataAutomationLibrariesOutput
    libraries: {DataAutomationLibrarySummary}
    nextToken: string
end

local record ListDataAutomationLibraryEntitiesInput
    libraryArn: string
    entityType: string
    maxResults: number
    nextToken: string
end

local record ListDataAutomationLibraryEntitiesOutput
    entities: {DataAutomationLibraryEntitySummary}
    nextToken: string
end

local record ListDataAutomationLibraryIngestionJobsInput
    libraryArn: string
    maxResults: number
    nextToken: string
end

local record ListDataAutomationLibraryIngestionJobsOutput
    jobs: {DataAutomationLibraryIngestionJobSummary}
    nextToken: string
end

local record ListDataAutomationProjectsInput
    maxResults: number
    nextToken: string
    projectStageFilter: string
    blueprintFilter: BlueprintFilter
    resourceOwner: string
    libraryFilter: DataAutomationLibraryFilter
end

local record ListDataAutomationProjectsOutput
    projects: {DataAutomationProjectSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceARN: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record TagResourceInput
    resourceARN: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceARN: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateBlueprintInput
    blueprintArn: string
    schema: string
    blueprintStage: string
    encryptionConfiguration: EncryptionConfiguration
end

local record UpdateBlueprintOutput
    blueprint: Blueprint
end

local record UpdateDataAutomationLibraryInput
    libraryArn: string
    libraryDescription: string
    clientToken: string
end

local record UpdateDataAutomationLibraryOutput
    libraryArn: string
    status: string
end

local record UpdateDataAutomationProjectInput
    projectArn: string
    projectStage: string
    projectDescription: string
    standardOutputConfiguration: StandardOutputConfiguration
    customOutputConfiguration: CustomOutputConfiguration
    overrideConfiguration: OverrideConfiguration
    dataAutomationLibraryConfiguration: DataAutomationLibraryConfiguration
    encryptionConfiguration: EncryptionConfiguration
end

local record UpdateDataAutomationProjectOutput
    projectArn: string
    projectStage: string
    status: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local type BlueprintStageFilter = "DEVELOPMENT" | "LIVE" | "ALL"

local type DataAutomationProjectStage = "DEVELOPMENT" | "LIVE"

local type DataAutomationProjectStageFilter = "DEVELOPMENT" | "LIVE" | "ALL"

local type ResourceOwner = "SERVICE" | "ACCOUNT"

local type BlueprintStage = "DEVELOPMENT" | "LIVE"

local type DataAutomationProjectType = "ASYNC" | "SYNC"

local type EntityType = "VOCABULARY"

local type BlueprintOptimizationJobStatus = "Created" | "InProgress" | "Success" | "ServiceError" | "ClientError"

local type DataAutomationProjectStatus = "COMPLETED" | "IN_PROGRESS" | "FAILED"

local type LibraryIngestionJobOperationType = "UPSERT" | "DELETE"

local type Type = "DOCUMENT" | "IMAGE" | "AUDIO" | "VIDEO"

local type DataAutomationLibraryStatus = "ACTIVE" | "DELETING"

local record M
    CopyBlueprintStageInput: CopyBlueprintStageInput
    CopyBlueprintStageOutput: CopyBlueprintStageOutput
    CreateBlueprintInput: CreateBlueprintInput
    CreateBlueprintOutput: CreateBlueprintOutput
    CreateBlueprintVersionInput: CreateBlueprintVersionInput
    CreateBlueprintVersionOutput: CreateBlueprintVersionOutput
    CreateDataAutomationLibraryInput: CreateDataAutomationLibraryInput
    CreateDataAutomationLibraryOutput: CreateDataAutomationLibraryOutput
    CreateDataAutomationProjectInput: CreateDataAutomationProjectInput
    CreateDataAutomationProjectOutput: CreateDataAutomationProjectOutput
    DeleteBlueprintInput: DeleteBlueprintInput
    DeleteBlueprintOutput: DeleteBlueprintOutput
    DeleteDataAutomationLibraryInput: DeleteDataAutomationLibraryInput
    DeleteDataAutomationLibraryOutput: DeleteDataAutomationLibraryOutput
    DeleteDataAutomationProjectInput: DeleteDataAutomationProjectInput
    DeleteDataAutomationProjectOutput: DeleteDataAutomationProjectOutput
    GetBlueprintInput: GetBlueprintInput
    GetBlueprintOutput: GetBlueprintOutput
    GetBlueprintOptimizationStatusInput: GetBlueprintOptimizationStatusInput
    GetBlueprintOptimizationStatusOutput: GetBlueprintOptimizationStatusOutput
    GetDataAutomationLibraryInput: GetDataAutomationLibraryInput
    GetDataAutomationLibraryOutput: GetDataAutomationLibraryOutput
    GetDataAutomationLibraryEntityInput: GetDataAutomationLibraryEntityInput
    GetDataAutomationLibraryEntityOutput: GetDataAutomationLibraryEntityOutput
    GetDataAutomationLibraryIngestionJobInput: GetDataAutomationLibraryIngestionJobInput
    GetDataAutomationLibraryIngestionJobOutput: GetDataAutomationLibraryIngestionJobOutput
    GetDataAutomationProjectInput: GetDataAutomationProjectInput
    GetDataAutomationProjectOutput: GetDataAutomationProjectOutput
    InvokeBlueprintOptimizationAsyncInput: InvokeBlueprintOptimizationAsyncInput
    InvokeBlueprintOptimizationAsyncOutput: InvokeBlueprintOptimizationAsyncOutput
    InvokeDataAutomationLibraryIngestionJobInput: InvokeDataAutomationLibraryIngestionJobInput
    InvokeDataAutomationLibraryIngestionJobOutput: InvokeDataAutomationLibraryIngestionJobOutput
    ListBlueprintsInput: ListBlueprintsInput
    ListBlueprintsOutput: ListBlueprintsOutput
    ListDataAutomationLibrariesInput: ListDataAutomationLibrariesInput
    ListDataAutomationLibrariesOutput: ListDataAutomationLibrariesOutput
    ListDataAutomationLibraryEntitiesInput: ListDataAutomationLibraryEntitiesInput
    ListDataAutomationLibraryEntitiesOutput: ListDataAutomationLibraryEntitiesOutput
    ListDataAutomationLibraryIngestionJobsInput: ListDataAutomationLibraryIngestionJobsInput
    ListDataAutomationLibraryIngestionJobsOutput: ListDataAutomationLibraryIngestionJobsOutput
    ListDataAutomationProjectsInput: ListDataAutomationProjectsInput
    ListDataAutomationProjectsOutput: ListDataAutomationProjectsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBlueprintInput: UpdateBlueprintInput
    UpdateBlueprintOutput: UpdateBlueprintOutput
    UpdateDataAutomationLibraryInput: UpdateDataAutomationLibraryInput
    UpdateDataAutomationLibraryOutput: UpdateDataAutomationLibraryOutput
    UpdateDataAutomationProjectInput: UpdateDataAutomationProjectInput
    UpdateDataAutomationProjectOutput: UpdateDataAutomationProjectOutput
end

return M
