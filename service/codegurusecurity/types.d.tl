local record BatchGetFindingsInput
    findingIdentifiers: {FindingIdentifier}
end

local record BatchGetFindingsOutput
    findings: {Finding}
    failedFindings: {BatchGetFindingsError}
end

local record CreateScanInput
    clientToken: string
    resourceId: ResourceId
    scanName: string
    scanType: string
    analysisType: string
    tags: {string : string}
end

local record CreateScanOutput
    scanName: string
    runId: string
    resourceId: ResourceId
    scanState: string
    scanNameArn: string
end

local record CreateUploadUrlInput
    scanName: string
end

local record CreateUploadUrlOutput
    s3Url: string
    requestHeaders: {string : string}
    codeArtifactId: string
end

local record GetAccountConfigurationInput
end

local record GetAccountConfigurationOutput
    encryptionConfig: EncryptionConfig
end

local record GetFindingsInput
    scanName: string
    nextToken: string
    maxResults: number
    status: string
end

local record GetFindingsOutput
    findings: {Finding}
    nextToken: string
end

local record GetMetricsSummaryInput
    date: number
end

local record GetMetricsSummaryOutput
    metricsSummary: MetricsSummary
end

local record GetScanInput
    scanName: string
    runId: string
end

local record GetScanOutput
    scanName: string
    runId: string
    scanState: string
    createdAt: number
    analysisType: string
    updatedAt: number
    numberOfRevisions: number
    scanNameArn: string
    errorMessage: string
end

local record ListFindingsMetricsInput
    nextToken: string
    maxResults: number
    startDate: number
    endDate: number
end

local record ListFindingsMetricsOutput
    findingsMetrics: {AccountFindingsMetric}
    nextToken: string
end

local record ListScansInput
    nextToken: string
    maxResults: number
end

local record ListScansOutput
    summaries: {ScanSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
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

local record UpdateAccountConfigurationInput
    encryptionConfig: EncryptionConfig
end

local record UpdateAccountConfigurationOutput
    encryptionConfig: EncryptionConfig
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ConflictException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ResourceNotFoundException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ConflictException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ResourceNotFoundException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ResourceNotFoundException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ConflictException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ResourceNotFoundException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ConflictException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ResourceNotFoundException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ConflictException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ResourceNotFoundException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    error: string
    message: string
end

local record ResourceNotFoundException
    errorCode: string
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    errorCode: string
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    errorCode: string
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type AnalysisType = "Security" | "All"

local type ScanState = "InProgress" | "Successful" | "Failed"

local type Status = "Closed" | "Open" | "All"

local type ScanType = "Standard" | "Express"

local record M
    BatchGetFindingsInput: BatchGetFindingsInput
    BatchGetFindingsOutput: BatchGetFindingsOutput
    CreateScanInput: CreateScanInput
    CreateScanOutput: CreateScanOutput
    CreateUploadUrlInput: CreateUploadUrlInput
    CreateUploadUrlOutput: CreateUploadUrlOutput
    GetAccountConfigurationInput: GetAccountConfigurationInput
    GetAccountConfigurationOutput: GetAccountConfigurationOutput
    GetFindingsInput: GetFindingsInput
    GetFindingsOutput: GetFindingsOutput
    GetMetricsSummaryInput: GetMetricsSummaryInput
    GetMetricsSummaryOutput: GetMetricsSummaryOutput
    GetScanInput: GetScanInput
    GetScanOutput: GetScanOutput
    ListFindingsMetricsInput: ListFindingsMetricsInput
    ListFindingsMetricsOutput: ListFindingsMetricsOutput
    ListScansInput: ListScansInput
    ListScansOutput: ListScansOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountConfigurationInput: UpdateAccountConfigurationInput
    UpdateAccountConfigurationOutput: UpdateAccountConfigurationOutput
end

return M
