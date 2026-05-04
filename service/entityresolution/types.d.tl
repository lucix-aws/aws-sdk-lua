local record AddPolicyStatementInput
    arn: string
    statementId: string
    effect: string
    action: {string}
    principal: {string}
    condition: string
end

local record AddPolicyStatementOutput
    arn: string
    token: string
    policy: string
end

local record BatchDeleteUniqueIdInput
    workflowName: string
    inputSource: string
    uniqueIds: {string}
end

local record BatchDeleteUniqueIdOutput
    status: string
    errors: {DeleteUniqueIdError}
    deleted: {DeletedUniqueId}
    disconnectedUniqueIds: {string}
end

local record CreateIdMappingWorkflowInput
    workflowName: string
    description: string
    inputSourceConfig: {IdMappingWorkflowInputSource}
    outputSourceConfig: {IdMappingWorkflowOutputSource}
    idMappingTechniques: IdMappingTechniques
    incrementalRunConfig: IdMappingIncrementalRunConfig
    roleArn: string
    tags: {string : string}
end

local record CreateIdMappingWorkflowOutput
    workflowName: string
    workflowArn: string
    description: string
    inputSourceConfig: {IdMappingWorkflowInputSource}
    outputSourceConfig: {IdMappingWorkflowOutputSource}
    idMappingTechniques: IdMappingTechniques
    incrementalRunConfig: IdMappingIncrementalRunConfig
    roleArn: string
end

local record CreateIdNamespaceInput
    idNamespaceName: string
    description: string
    inputSourceConfig: {IdNamespaceInputSource}
    idMappingWorkflowProperties: {IdNamespaceIdMappingWorkflowProperties}
    type: string
    roleArn: string
    tags: {string : string}
end

local record CreateIdNamespaceOutput
    idNamespaceName: string
    idNamespaceArn: string
    description: string
    inputSourceConfig: {IdNamespaceInputSource}
    idMappingWorkflowProperties: {IdNamespaceIdMappingWorkflowProperties}
    type: string
    roleArn: string
    createdAt: number
    updatedAt: number
    tags: {string : string}
end

local record CreateMatchingWorkflowInput
    workflowName: string
    description: string
    inputSourceConfig: {InputSource}
    outputSourceConfig: {OutputSource}
    resolutionTechniques: ResolutionTechniques
    incrementalRunConfig: IncrementalRunConfig
    roleArn: string
    tags: {string : string}
end

local record CreateMatchingWorkflowOutput
    workflowName: string
    workflowArn: string
    description: string
    inputSourceConfig: {InputSource}
    outputSourceConfig: {OutputSource}
    resolutionTechniques: ResolutionTechniques
    incrementalRunConfig: IncrementalRunConfig
    roleArn: string
end

local record CreateSchemaMappingInput
    schemaName: string
    description: string
    mappedInputFields: {SchemaInputAttribute}
    tags: {string : string}
end

local record CreateSchemaMappingOutput
    schemaName: string
    schemaArn: string
    description: string
    mappedInputFields: {SchemaInputAttribute}
end

local record DeleteIdMappingWorkflowInput
    workflowName: string
end

local record DeleteIdMappingWorkflowOutput
    message: string
end

local record DeleteIdNamespaceInput
    idNamespaceName: string
end

local record DeleteIdNamespaceOutput
    message: string
end

local record DeleteMatchingWorkflowInput
    workflowName: string
end

local record DeleteMatchingWorkflowOutput
    message: string
end

local record DeletePolicyStatementInput
    arn: string
    statementId: string
end

local record DeletePolicyStatementOutput
    arn: string
    token: string
    policy: string
end

local record DeleteSchemaMappingInput
    schemaName: string
end

local record DeleteSchemaMappingOutput
    message: string
end

local record GenerateMatchIdInput
    workflowName: string
    records: {Record}
    processingType: string
end

local record GenerateMatchIdOutput
    matchGroups: {MatchGroup}
    failedRecords: {FailedRecord}
end

local record GetIdMappingJobInput
    workflowName: string
    jobId: string
end

local record GetIdMappingJobOutput
    jobId: string
    status: string
    startTime: number
    endTime: number
    metrics: IdMappingJobMetrics
    errorDetails: ErrorDetails
    outputSourceConfig: {IdMappingJobOutputSource}
    jobType: string
end

local record GetIdMappingWorkflowInput
    workflowName: string
end

local record GetIdMappingWorkflowOutput
    workflowName: string
    workflowArn: string
    description: string
    inputSourceConfig: {IdMappingWorkflowInputSource}
    outputSourceConfig: {IdMappingWorkflowOutputSource}
    idMappingTechniques: IdMappingTechniques
    createdAt: number
    updatedAt: number
    incrementalRunConfig: IdMappingIncrementalRunConfig
    roleArn: string
    tags: {string : string}
end

local record GetIdNamespaceInput
    idNamespaceName: string
end

local record GetIdNamespaceOutput
    idNamespaceName: string
    idNamespaceArn: string
    description: string
    inputSourceConfig: {IdNamespaceInputSource}
    idMappingWorkflowProperties: {IdNamespaceIdMappingWorkflowProperties}
    type: string
    roleArn: string
    createdAt: number
    updatedAt: number
    tags: {string : string}
end

local record GetMatchIdInput
    workflowName: string
    record: {string : string}
    applyNormalization: boolean
end

local record GetMatchIdOutput
    matchId: string
    matchRule: string
end

local record GetMatchingJobInput
    workflowName: string
    jobId: string
end

local record GetMatchingJobOutput
    jobId: string
    status: string
    startTime: number
    endTime: number
    metrics: JobMetrics
    errorDetails: ErrorDetails
    outputSourceConfig: {JobOutputSource}
end

local record GetMatchingWorkflowInput
    workflowName: string
end

local record GetMatchingWorkflowOutput
    workflowName: string
    workflowArn: string
    description: string
    inputSourceConfig: {InputSource}
    outputSourceConfig: {OutputSource}
    resolutionTechniques: ResolutionTechniques
    createdAt: number
    updatedAt: number
    incrementalRunConfig: IncrementalRunConfig
    roleArn: string
    tags: {string : string}
end

local record GetPolicyInput
    arn: string
end

local record GetPolicyOutput
    arn: string
    token: string
    policy: string
end

local record GetProviderServiceInput
    providerName: string
    providerServiceName: string
end

local record GetProviderServiceOutput
    providerName: string
    providerServiceName: string
    providerServiceDisplayName: string
    providerServiceType: string
    providerServiceArn: string
    providerConfigurationDefinition: any
    providerIdNameSpaceConfiguration: ProviderIdNameSpaceConfiguration
    providerJobConfiguration: any
    providerEndpointConfiguration: ProviderEndpointConfiguration
    anonymizedOutput: boolean
    providerEntityOutputDefinition: any
    providerIntermediateDataAccessConfiguration: ProviderIntermediateDataAccessConfiguration
    providerComponentSchema: ProviderComponentSchema
end

local record GetSchemaMappingInput
    schemaName: string
end

local record GetSchemaMappingOutput
    schemaName: string
    schemaArn: string
    description: string
    mappedInputFields: {SchemaInputAttribute}
    createdAt: number
    updatedAt: number
    tags: {string : string}
    hasWorkflows: boolean
end

local record ListIdMappingJobsInput
    workflowName: string
    nextToken: string
    maxResults: number
end

local record ListIdMappingJobsOutput
    jobs: {JobSummary}
    nextToken: string
end

local record ListIdMappingWorkflowsInput
    nextToken: string
    maxResults: number
end

local record ListIdMappingWorkflowsOutput
    workflowSummaries: {IdMappingWorkflowSummary}
    nextToken: string
end

local record ListIdNamespacesInput
    nextToken: string
    maxResults: number
end

local record ListIdNamespacesOutput
    idNamespaceSummaries: {IdNamespaceSummary}
    nextToken: string
end

local record ListMatchingJobsInput
    workflowName: string
    nextToken: string
    maxResults: number
end

local record ListMatchingJobsOutput
    jobs: {JobSummary}
    nextToken: string
end

local record ListMatchingWorkflowsInput
    nextToken: string
    maxResults: number
end

local record ListMatchingWorkflowsOutput
    workflowSummaries: {MatchingWorkflowSummary}
    nextToken: string
end

local record ListProviderServicesInput
    nextToken: string
    maxResults: number
    providerName: string
end

local record ListProviderServicesOutput
    providerServiceSummaries: {ProviderServiceSummary}
    nextToken: string
end

local record ListSchemaMappingsInput
    nextToken: string
    maxResults: number
end

local record ListSchemaMappingsOutput
    schemaList: {SchemaMappingSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutPolicyInput
    arn: string
    token: string
    policy: string
end

local record PutPolicyOutput
    arn: string
    token: string
    policy: string
end

local record StartIdMappingJobInput
    workflowName: string
    outputSourceConfig: {IdMappingJobOutputSource}
    jobType: string
end

local record StartIdMappingJobOutput
    jobId: string
    outputSourceConfig: {IdMappingJobOutputSource}
    jobType: string
end

local record StartMatchingJobInput
    workflowName: string
end

local record StartMatchingJobOutput
    jobId: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateIdMappingWorkflowInput
    workflowName: string
    description: string
    inputSourceConfig: {IdMappingWorkflowInputSource}
    outputSourceConfig: {IdMappingWorkflowOutputSource}
    idMappingTechniques: IdMappingTechniques
    incrementalRunConfig: IdMappingIncrementalRunConfig
    roleArn: string
end

local record UpdateIdMappingWorkflowOutput
    workflowName: string
    workflowArn: string
    description: string
    inputSourceConfig: {IdMappingWorkflowInputSource}
    outputSourceConfig: {IdMappingWorkflowOutputSource}
    idMappingTechniques: IdMappingTechniques
    incrementalRunConfig: IdMappingIncrementalRunConfig
    roleArn: string
end

local record UpdateIdNamespaceInput
    idNamespaceName: string
    description: string
    inputSourceConfig: {IdNamespaceInputSource}
    idMappingWorkflowProperties: {IdNamespaceIdMappingWorkflowProperties}
    roleArn: string
end

local record UpdateIdNamespaceOutput
    idNamespaceName: string
    idNamespaceArn: string
    description: string
    inputSourceConfig: {IdNamespaceInputSource}
    idMappingWorkflowProperties: {IdNamespaceIdMappingWorkflowProperties}
    type: string
    roleArn: string
    createdAt: number
    updatedAt: number
end

local record UpdateMatchingWorkflowInput
    workflowName: string
    description: string
    inputSourceConfig: {InputSource}
    outputSourceConfig: {OutputSource}
    resolutionTechniques: ResolutionTechniques
    incrementalRunConfig: IncrementalRunConfig
    roleArn: string
end

local record UpdateMatchingWorkflowOutput
    workflowName: string
    description: string
    inputSourceConfig: {InputSource}
    outputSourceConfig: {OutputSource}
    resolutionTechniques: ResolutionTechniques
    incrementalRunConfig: IncrementalRunConfig
    roleArn: string
end

local record UpdateSchemaMappingInput
    schemaName: string
    description: string
    mappedInputFields: {SchemaInputAttribute}
end

local record UpdateSchemaMappingOutput
    schemaName: string
    schemaArn: string
    description: string
    mappedInputFields: {SchemaInputAttribute}
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
end

local record InternalServerException
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

local record ExceedsLimitException
    message: string
    quotaName: string
    quotaValue: number
end

local record InternalServerException
    message: string
end

local record ThrottlingException
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

local record ExceedsLimitException
    message: string
    quotaName: string
    quotaValue: number
end

local record InternalServerException
    message: string
end

local record ThrottlingException
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

local record ExceedsLimitException
    message: string
    quotaName: string
    quotaValue: number
end

local record InternalServerException
    message: string
end

local record ThrottlingException
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

local record ExceedsLimitException
    message: string
    quotaName: string
    quotaValue: number
end

local record InternalServerException
    message: string
end

local record ThrottlingException
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

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
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

local record ThrottlingException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
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
end

local record InternalServerException
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
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ExceedsLimitException
    message: string
    quotaName: string
    quotaValue: number
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
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ExceedsLimitException
    message: string
    quotaName: string
    quotaValue: number
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
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
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
end

local type JobStatus = "RUNNING" | "SUCCEEDED" | "FAILED" | "QUEUED"

local type ProcessingType = "CONSISTENT" | "EVENTUAL" | "EVENTUAL_NO_LOOKUP"

local type IdNamespaceType = "SOURCE" | "TARGET"

local type DeleteUniqueIdStatus = "COMPLETED" | "ACCEPTED"

local type ServiceType = "ASSIGNMENT" | "ID_MAPPING"

local type JobType = "BATCH" | "INCREMENTAL" | "DELETE_ONLY"

local type StatementEffect = "Allow" | "Deny"

local record M
    AddPolicyStatementInput: AddPolicyStatementInput
    AddPolicyStatementOutput: AddPolicyStatementOutput
    BatchDeleteUniqueIdInput: BatchDeleteUniqueIdInput
    BatchDeleteUniqueIdOutput: BatchDeleteUniqueIdOutput
    CreateIdMappingWorkflowInput: CreateIdMappingWorkflowInput
    CreateIdMappingWorkflowOutput: CreateIdMappingWorkflowOutput
    CreateIdNamespaceInput: CreateIdNamespaceInput
    CreateIdNamespaceOutput: CreateIdNamespaceOutput
    CreateMatchingWorkflowInput: CreateMatchingWorkflowInput
    CreateMatchingWorkflowOutput: CreateMatchingWorkflowOutput
    CreateSchemaMappingInput: CreateSchemaMappingInput
    CreateSchemaMappingOutput: CreateSchemaMappingOutput
    DeleteIdMappingWorkflowInput: DeleteIdMappingWorkflowInput
    DeleteIdMappingWorkflowOutput: DeleteIdMappingWorkflowOutput
    DeleteIdNamespaceInput: DeleteIdNamespaceInput
    DeleteIdNamespaceOutput: DeleteIdNamespaceOutput
    DeleteMatchingWorkflowInput: DeleteMatchingWorkflowInput
    DeleteMatchingWorkflowOutput: DeleteMatchingWorkflowOutput
    DeletePolicyStatementInput: DeletePolicyStatementInput
    DeletePolicyStatementOutput: DeletePolicyStatementOutput
    DeleteSchemaMappingInput: DeleteSchemaMappingInput
    DeleteSchemaMappingOutput: DeleteSchemaMappingOutput
    GenerateMatchIdInput: GenerateMatchIdInput
    GenerateMatchIdOutput: GenerateMatchIdOutput
    GetIdMappingJobInput: GetIdMappingJobInput
    GetIdMappingJobOutput: GetIdMappingJobOutput
    GetIdMappingWorkflowInput: GetIdMappingWorkflowInput
    GetIdMappingWorkflowOutput: GetIdMappingWorkflowOutput
    GetIdNamespaceInput: GetIdNamespaceInput
    GetIdNamespaceOutput: GetIdNamespaceOutput
    GetMatchIdInput: GetMatchIdInput
    GetMatchIdOutput: GetMatchIdOutput
    GetMatchingJobInput: GetMatchingJobInput
    GetMatchingJobOutput: GetMatchingJobOutput
    GetMatchingWorkflowInput: GetMatchingWorkflowInput
    GetMatchingWorkflowOutput: GetMatchingWorkflowOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetProviderServiceInput: GetProviderServiceInput
    GetProviderServiceOutput: GetProviderServiceOutput
    GetSchemaMappingInput: GetSchemaMappingInput
    GetSchemaMappingOutput: GetSchemaMappingOutput
    ListIdMappingJobsInput: ListIdMappingJobsInput
    ListIdMappingJobsOutput: ListIdMappingJobsOutput
    ListIdMappingWorkflowsInput: ListIdMappingWorkflowsInput
    ListIdMappingWorkflowsOutput: ListIdMappingWorkflowsOutput
    ListIdNamespacesInput: ListIdNamespacesInput
    ListIdNamespacesOutput: ListIdNamespacesOutput
    ListMatchingJobsInput: ListMatchingJobsInput
    ListMatchingJobsOutput: ListMatchingJobsOutput
    ListMatchingWorkflowsInput: ListMatchingWorkflowsInput
    ListMatchingWorkflowsOutput: ListMatchingWorkflowsOutput
    ListProviderServicesInput: ListProviderServicesInput
    ListProviderServicesOutput: ListProviderServicesOutput
    ListSchemaMappingsInput: ListSchemaMappingsInput
    ListSchemaMappingsOutput: ListSchemaMappingsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutPolicyInput: PutPolicyInput
    PutPolicyOutput: PutPolicyOutput
    StartIdMappingJobInput: StartIdMappingJobInput
    StartIdMappingJobOutput: StartIdMappingJobOutput
    StartMatchingJobInput: StartMatchingJobInput
    StartMatchingJobOutput: StartMatchingJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateIdMappingWorkflowInput: UpdateIdMappingWorkflowInput
    UpdateIdMappingWorkflowOutput: UpdateIdMappingWorkflowOutput
    UpdateIdNamespaceInput: UpdateIdNamespaceInput
    UpdateIdNamespaceOutput: UpdateIdNamespaceOutput
    UpdateMatchingWorkflowInput: UpdateMatchingWorkflowInput
    UpdateMatchingWorkflowOutput: UpdateMatchingWorkflowOutput
    UpdateSchemaMappingInput: UpdateSchemaMappingInput
    UpdateSchemaMappingOutput: UpdateSchemaMappingOutput
end

return M
