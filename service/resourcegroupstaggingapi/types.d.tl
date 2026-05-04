local record DescribeReportCreationInput
end

local record DescribeReportCreationOutput
    Status: string
    S3Location: string
    StartDate: string
    ErrorMessage: string
end

local record GetComplianceSummaryInput
    TargetIdFilters: {string}
    RegionFilters: {string}
    ResourceTypeFilters: {string}
    TagKeyFilters: {string}
    GroupBy: {string}
    MaxResults: number
    PaginationToken: string
end

local record GetComplianceSummaryOutput
    SummaryList: {Summary}
    PaginationToken: string
end

local record GetResourcesInput
    PaginationToken: string
    TagFilters: {TagFilter}
    ResourcesPerPage: number
    TagsPerPage: number
    ResourceTypeFilters: {string}
    IncludeComplianceDetails: boolean
    ExcludeCompliantResources: boolean
    ResourceARNList: {string}
end

local record GetResourcesOutput
    PaginationToken: string
    ResourceTagMappingList: {ResourceTagMapping}
end

local record GetTagKeysInput
    PaginationToken: string
end

local record GetTagKeysOutput
    PaginationToken: string
    TagKeys: {string}
end

local record GetTagValuesInput
    PaginationToken: string
    Key: string
end

local record GetTagValuesOutput
    PaginationToken: string
    TagValues: {string}
end

local record ListRequiredTagsInput
    NextToken: string
    MaxResults: number
end

local record ListRequiredTagsOutput
    RequiredTags: {RequiredTag}
    NextToken: string
end

local record StartReportCreationInput
    S3Bucket: string
end

local record StartReportCreationOutput
end

local record TagResourcesInput
    ResourceARNList: {string}
    Tags: {string : string}
end

local record TagResourcesOutput
    FailedResourcesMap: {string : FailureInfo}
end

local record UntagResourcesInput
    ResourceARNList: {string}
    TagKeys: {string}
end

local record UntagResourcesOutput
    FailedResourcesMap: {string : FailureInfo}
end

local record ConstraintViolationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ThrottledException
    Message: string
end

local record ConstraintViolationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record PaginationTokenExpiredException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record PaginationTokenExpiredException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record PaginationTokenExpiredException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record PaginationTokenExpiredException
    Message: string
end

local record ThrottledException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConstraintViolationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ThrottledException
    Message: string
end

local record M
    DescribeReportCreationInput: DescribeReportCreationInput
    DescribeReportCreationOutput: DescribeReportCreationOutput
    GetComplianceSummaryInput: GetComplianceSummaryInput
    GetComplianceSummaryOutput: GetComplianceSummaryOutput
    GetResourcesInput: GetResourcesInput
    GetResourcesOutput: GetResourcesOutput
    GetTagKeysInput: GetTagKeysInput
    GetTagKeysOutput: GetTagKeysOutput
    GetTagValuesInput: GetTagValuesInput
    GetTagValuesOutput: GetTagValuesOutput
    ListRequiredTagsInput: ListRequiredTagsInput
    ListRequiredTagsOutput: ListRequiredTagsOutput
    StartReportCreationInput: StartReportCreationInput
    StartReportCreationOutput: StartReportCreationOutput
    TagResourcesInput: TagResourcesInput
    TagResourcesOutput: TagResourcesOutput
    UntagResourcesInput: UntagResourcesInput
    UntagResourcesOutput: UntagResourcesOutput
end

return M
