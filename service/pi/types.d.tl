local record CreatePerformanceAnalysisReportInput
    ServiceType: string
    Identifier: string
    StartTime: number
    EndTime: number
    Tags: {Tag}
end

local record CreatePerformanceAnalysisReportOutput
    AnalysisReportId: string
end

local record DeletePerformanceAnalysisReportInput
    ServiceType: string
    Identifier: string
    AnalysisReportId: string
end

local record DeletePerformanceAnalysisReportOutput
end

local record DescribeDimensionKeysInput
    ServiceType: string
    Identifier: string
    StartTime: number
    EndTime: number
    Metric: string
    PeriodInSeconds: number
    GroupBy: DimensionGroup
    AdditionalMetrics: {string}
    PartitionBy: DimensionGroup
    Filter: {string : string}
    MaxResults: number
    NextToken: string
end

local record DescribeDimensionKeysOutput
    AlignedStartTime: number
    AlignedEndTime: number
    PartitionKeys: {ResponsePartitionKey}
    Keys: {DimensionKeyDescription}
    NextToken: string
end

local record GetDimensionKeyDetailsInput
    ServiceType: string
    Identifier: string
    Group: string
    GroupIdentifier: string
    RequestedDimensions: {string}
end

local record GetDimensionKeyDetailsOutput
    Dimensions: {DimensionKeyDetail}
end

local record GetPerformanceAnalysisReportInput
    ServiceType: string
    Identifier: string
    AnalysisReportId: string
    TextFormat: string
    AcceptLanguage: string
end

local record GetPerformanceAnalysisReportOutput
    AnalysisReport: AnalysisReport
end

local record GetResourceMetadataInput
    ServiceType: string
    Identifier: string
end

local record GetResourceMetadataOutput
    Identifier: string
    Features: {string : FeatureMetadata}
end

local record GetResourceMetricsInput
    ServiceType: string
    Identifier: string
    MetricQueries: {MetricQuery}
    StartTime: number
    EndTime: number
    PeriodInSeconds: number
    MaxResults: number
    NextToken: string
    PeriodAlignment: string
end

local record GetResourceMetricsOutput
    AlignedStartTime: number
    AlignedEndTime: number
    Identifier: string
    MetricList: {MetricKeyDataPoints}
    NextToken: string
end

local record ListAvailableResourceDimensionsInput
    ServiceType: string
    Identifier: string
    Metrics: {string}
    MaxResults: number
    NextToken: string
    AuthorizedActions: {string}
end

local record ListAvailableResourceDimensionsOutput
    MetricDimensions: {MetricDimensionGroups}
    NextToken: string
end

local record ListAvailableResourceMetricsInput
    ServiceType: string
    Identifier: string
    MetricTypes: {string}
    NextToken: string
    MaxResults: number
end

local record ListAvailableResourceMetricsOutput
    Metrics: {ResponseResourceMetric}
    NextToken: string
end

local record ListPerformanceAnalysisReportsInput
    ServiceType: string
    Identifier: string
    NextToken: string
    MaxResults: number
    ListTags: boolean
end

local record ListPerformanceAnalysisReportsOutput
    AnalysisReports: {AnalysisReportSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ServiceType: string
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record TagResourceInput
    ServiceType: string
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ServiceType: string
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local type AcceptLanguage = "EN_US"

local type PeriodAlignment = "END_TIME" | "START_TIME"

local type TextFormat = "PLAIN_TEXT" | "MARKDOWN"

local type ServiceType = "RDS" | "DOCDB"

local record M
    CreatePerformanceAnalysisReportInput: CreatePerformanceAnalysisReportInput
    CreatePerformanceAnalysisReportOutput: CreatePerformanceAnalysisReportOutput
    DeletePerformanceAnalysisReportInput: DeletePerformanceAnalysisReportInput
    DeletePerformanceAnalysisReportOutput: DeletePerformanceAnalysisReportOutput
    DescribeDimensionKeysInput: DescribeDimensionKeysInput
    DescribeDimensionKeysOutput: DescribeDimensionKeysOutput
    GetDimensionKeyDetailsInput: GetDimensionKeyDetailsInput
    GetDimensionKeyDetailsOutput: GetDimensionKeyDetailsOutput
    GetPerformanceAnalysisReportInput: GetPerformanceAnalysisReportInput
    GetPerformanceAnalysisReportOutput: GetPerformanceAnalysisReportOutput
    GetResourceMetadataInput: GetResourceMetadataInput
    GetResourceMetadataOutput: GetResourceMetadataOutput
    GetResourceMetricsInput: GetResourceMetricsInput
    GetResourceMetricsOutput: GetResourceMetricsOutput
    ListAvailableResourceDimensionsInput: ListAvailableResourceDimensionsInput
    ListAvailableResourceDimensionsOutput: ListAvailableResourceDimensionsOutput
    ListAvailableResourceMetricsInput: ListAvailableResourceMetricsInput
    ListAvailableResourceMetricsOutput: ListAvailableResourceMetricsOutput
    ListPerformanceAnalysisReportsInput: ListPerformanceAnalysisReportsInput
    ListPerformanceAnalysisReportsOutput: ListPerformanceAnalysisReportsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
