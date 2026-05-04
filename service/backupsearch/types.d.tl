local record GetSearchJobInput
    SearchJobIdentifier: string
end

local record GetSearchJobOutput
    Name: string
    SearchScopeSummary: SearchScopeSummary
    CurrentSearchProgress: CurrentSearchProgress
    StatusMessage: string
    EncryptionKeyArn: string
    CompletionTime: number
    Status: string
    SearchScope: SearchScope
    ItemFilters: ItemFilters
    CreationTime: number
    SearchJobIdentifier: string
    SearchJobArn: string
end

local record GetSearchResultExportJobInput
    ExportJobIdentifier: string
end

local record GetSearchResultExportJobOutput
    ExportJobIdentifier: string
    ExportJobArn: string
    Status: string
    CreationTime: number
    CompletionTime: number
    StatusMessage: string
    ExportSpecification: ExportSpecification
    SearchJobArn: string
end

local record ListSearchJobBackupsInput
    SearchJobIdentifier: string
    NextToken: string
    MaxResults: number
end

local record ListSearchJobBackupsOutput
    Results: {SearchJobBackupsResult}
    NextToken: string
end

local record ListSearchJobResultsInput
    SearchJobIdentifier: string
    NextToken: string
    MaxResults: number
end

local record ListSearchJobResultsOutput
    Results: {ResultItem}
    NextToken: string
end

local record ListSearchJobsInput
    ByStatus: string
    NextToken: string
    MaxResults: number
end

local record ListSearchJobsOutput
    SearchJobs: {SearchJobSummary}
    NextToken: string
end

local record ListSearchResultExportJobsInput
    Status: string
    SearchJobIdentifier: string
    NextToken: string
    MaxResults: number
end

local record ListSearchResultExportJobsOutput
    ExportJobs: {ExportJobSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartSearchJobInput
    Tags: {string : string}
    Name: string
    EncryptionKeyArn: string
    ClientToken: string
    SearchScope: SearchScope
    ItemFilters: ItemFilters
end

local record StartSearchJobOutput
    SearchJobArn: string
    CreationTime: number
    SearchJobIdentifier: string
end

local record StartSearchResultExportJobInput
    SearchJobIdentifier: string
    ExportSpecification: ExportSpecification
    ClientToken: string
    Tags: {string : string}
    RoleArn: string
end

local record StartSearchResultExportJobOutput
    ExportJobArn: string
    ExportJobIdentifier: string
end

local record StopSearchJobInput
    SearchJobIdentifier: string
end

local record StopSearchJobOutput
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

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local type SearchJobState = "RUNNING" | "COMPLETED" | "STOPPING" | "STOPPED" | "FAILED"

local type ExportJobStatus = "RUNNING" | "FAILED" | "COMPLETED"

local record M
    GetSearchJobInput: GetSearchJobInput
    GetSearchJobOutput: GetSearchJobOutput
    GetSearchResultExportJobInput: GetSearchResultExportJobInput
    GetSearchResultExportJobOutput: GetSearchResultExportJobOutput
    ListSearchJobBackupsInput: ListSearchJobBackupsInput
    ListSearchJobBackupsOutput: ListSearchJobBackupsOutput
    ListSearchJobResultsInput: ListSearchJobResultsInput
    ListSearchJobResultsOutput: ListSearchJobResultsOutput
    ListSearchJobsInput: ListSearchJobsInput
    ListSearchJobsOutput: ListSearchJobsOutput
    ListSearchResultExportJobsInput: ListSearchResultExportJobsInput
    ListSearchResultExportJobsOutput: ListSearchResultExportJobsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartSearchJobInput: StartSearchJobInput
    StartSearchJobOutput: StartSearchJobOutput
    StartSearchResultExportJobInput: StartSearchResultExportJobInput
    StartSearchResultExportJobOutput: StartSearchResultExportJobOutput
    StopSearchJobInput: StopSearchJobInput
    StopSearchJobOutput: StopSearchJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
