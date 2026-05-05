local record BatchGetTracesInput
    TraceIds: {string}
    NextToken: string
end

local record BatchGetTracesOutput
    Traces: {Trace}
    UnprocessedTraceIds: {string}
    NextToken: string
end

local record CancelTraceRetrievalInput
    RetrievalToken: string
end

local record CancelTraceRetrievalOutput
end

local record CreateGroupInput
    GroupName: string
    FilterExpression: string
    InsightsConfiguration: InsightsConfiguration
    Tags: {Tag}
end

local record CreateGroupOutput
    Group: Group
end

local record CreateSamplingRuleInput
    SamplingRule: SamplingRule
    Tags: {Tag}
end

local record CreateSamplingRuleOutput
    SamplingRuleRecord: SamplingRuleRecord
end

local record DeleteGroupInput
    GroupName: string
    GroupARN: string
end

local record DeleteGroupOutput
end

local record DeleteResourcePolicyInput
    PolicyName: string
    PolicyRevisionId: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteSamplingRuleInput
    RuleName: string
    RuleARN: string
end

local record DeleteSamplingRuleOutput
    SamplingRuleRecord: SamplingRuleRecord
end

local record GetEncryptionConfigInput
end

local record GetEncryptionConfigOutput
    EncryptionConfig: EncryptionConfig
end

local record GetGroupInput
    GroupName: string
    GroupARN: string
end

local record GetGroupOutput
    Group: Group
end

local record GetGroupsInput
    NextToken: string
end

local record GetGroupsOutput
    Groups: {GroupSummary}
    NextToken: string
end

local record GetIndexingRulesInput
    NextToken: string
end

local record GetIndexingRulesOutput
    IndexingRules: {IndexingRule}
    NextToken: string
end

local record GetInsightInput
    InsightId: string
end

local record GetInsightOutput
    Insight: Insight
end

local record GetInsightEventsInput
    InsightId: string
    MaxResults: number
    NextToken: string
end

local record GetInsightEventsOutput
    InsightEvents: {InsightEvent}
    NextToken: string
end

local record GetInsightImpactGraphInput
    InsightId: string
    StartTime: number
    EndTime: number
    NextToken: string
end

local record GetInsightImpactGraphOutput
    InsightId: string
    StartTime: number
    EndTime: number
    ServiceGraphStartTime: number
    ServiceGraphEndTime: number
    Services: {InsightImpactGraphService}
    NextToken: string
end

local record GetInsightSummariesInput
    States: {string}
    GroupARN: string
    GroupName: string
    StartTime: number
    EndTime: number
    MaxResults: number
    NextToken: string
end

local record GetInsightSummariesOutput
    InsightSummaries: {InsightSummary}
    NextToken: string
end

local record GetRetrievedTracesGraphInput
    RetrievalToken: string
    NextToken: string
end

local record GetRetrievedTracesGraphOutput
    RetrievalStatus: string
    Services: {RetrievedService}
    NextToken: string
end

local record GetSamplingRulesInput
    NextToken: string
end

local record GetSamplingRulesOutput
    SamplingRuleRecords: {SamplingRuleRecord}
    NextToken: string
end

local record GetSamplingStatisticSummariesInput
    NextToken: string
end

local record GetSamplingStatisticSummariesOutput
    SamplingStatisticSummaries: {SamplingStatisticSummary}
    NextToken: string
end

local record GetSamplingTargetsInput
    SamplingStatisticsDocuments: {SamplingStatisticsDocument}
    SamplingBoostStatisticsDocuments: {SamplingBoostStatisticsDocument}
end

local record GetSamplingTargetsOutput
    SamplingTargetDocuments: {SamplingTargetDocument}
    LastRuleModification: number
    UnprocessedStatistics: {UnprocessedStatistics}
    UnprocessedBoostStatistics: {UnprocessedStatistics}
end

local record GetServiceGraphInput
    StartTime: number
    EndTime: number
    GroupName: string
    GroupARN: string
    NextToken: string
end

local record GetServiceGraphOutput
    StartTime: number
    EndTime: number
    Services: {Service}
    ContainsOldGroupVersions: boolean
    NextToken: string
end

local record GetTimeSeriesServiceStatisticsInput
    StartTime: number
    EndTime: number
    GroupName: string
    GroupARN: string
    EntitySelectorExpression: string
    Period: number
    ForecastStatistics: boolean
    NextToken: string
end

local record GetTimeSeriesServiceStatisticsOutput
    TimeSeriesServiceStatistics: {TimeSeriesServiceStatistics}
    ContainsOldGroupVersions: boolean
    NextToken: string
end

local record GetTraceGraphInput
    TraceIds: {string}
    NextToken: string
end

local record GetTraceGraphOutput
    Services: {Service}
    NextToken: string
end

local record GetTraceSegmentDestinationInput
end

local record GetTraceSegmentDestinationOutput
    Destination: string
    Status: string
end

local record GetTraceSummariesInput
    StartTime: number
    EndTime: number
    TimeRangeType: string
    Sampling: boolean
    SamplingStrategy: SamplingStrategy
    FilterExpression: string
    NextToken: string
end

local record GetTraceSummariesOutput
    TraceSummaries: {TraceSummary}
    ApproximateTime: number
    TracesProcessedCount: number
    NextToken: string
end

local record ListResourcePoliciesInput
    NextToken: string
end

local record ListResourcePoliciesOutput
    ResourcePolicies: {ResourcePolicy}
    NextToken: string
end

local record ListRetrievedTracesInput
    RetrievalToken: string
    TraceFormat: string
    NextToken: string
end

local record ListRetrievedTracesOutput
    RetrievalStatus: string
    TraceFormat: string
    Traces: {RetrievedTrace}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
    NextToken: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record PutEncryptionConfigInput
    KeyId: string
    Type: string
end

local record PutEncryptionConfigOutput
    EncryptionConfig: EncryptionConfig
end

local record PutResourcePolicyInput
    PolicyName: string
    PolicyDocument: string
    PolicyRevisionId: string
    BypassPolicyLockoutCheck: boolean
end

local record PutResourcePolicyOutput
    ResourcePolicy: ResourcePolicy
end

local record PutTelemetryRecordsInput
    TelemetryRecords: {TelemetryRecord}
    EC2InstanceId: string
    Hostname: string
    ResourceARN: string
end

local record PutTelemetryRecordsOutput
end

local record PutTraceSegmentsInput
    TraceSegmentDocuments: {string}
end

local record PutTraceSegmentsOutput
    UnprocessedTraceSegments: {UnprocessedTraceSegment}
end

local record StartTraceRetrievalInput
    TraceIds: {string}
    StartTime: number
    EndTime: number
end

local record StartTraceRetrievalOutput
    RetrievalToken: string
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateGroupInput
    GroupName: string
    GroupARN: string
    FilterExpression: string
    InsightsConfiguration: InsightsConfiguration
end

local record UpdateGroupOutput
    Group: Group
end

local record UpdateIndexingRuleInput
    Name: string
    Rule: IndexingRuleValueUpdate
end

local record UpdateIndexingRuleOutput
    IndexingRule: IndexingRule
end

local record UpdateSamplingRuleInput
    SamplingRuleUpdate: SamplingRuleUpdate
end

local record UpdateSamplingRuleOutput
    SamplingRuleRecord: SamplingRuleRecord
end

local record UpdateTraceSegmentDestinationInput
    Destination: string
end

local record UpdateTraceSegmentDestinationOutput
    Destination: string
    Status: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record RuleLimitExceededException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidPolicyRevisionIdException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidPolicyRevisionIdException
    Message: string
end

local record LockoutPreventionException
    Message: string
end

local record MalformedPolicyDocumentException
    Message: string
end

local record PolicyCountLimitExceededException
    Message: string
end

local record PolicySizeLimitExceededException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottledException
    Message: string
end

local type EncryptionType = "NONE" | "KMS"

local type RetrievalStatus = "SCHEDULED" | "RUNNING" | "COMPLETE" | "FAILED" | "CANCELLED" | "TIMEOUT"

local type TraceSegmentDestinationStatus = "PENDING" | "ACTIVE"

local type TraceFormatType = "XRAY" | "OTEL"

local type TimeRangeType = "TraceId" | "Event" | "Service"

local type TraceSegmentDestination = "XRay" | "CloudWatchLogs"

local record M
    BatchGetTracesInput: BatchGetTracesInput
    BatchGetTracesOutput: BatchGetTracesOutput
    CancelTraceRetrievalInput: CancelTraceRetrievalInput
    CancelTraceRetrievalOutput: CancelTraceRetrievalOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    CreateSamplingRuleInput: CreateSamplingRuleInput
    CreateSamplingRuleOutput: CreateSamplingRuleOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteSamplingRuleInput: DeleteSamplingRuleInput
    DeleteSamplingRuleOutput: DeleteSamplingRuleOutput
    GetEncryptionConfigInput: GetEncryptionConfigInput
    GetEncryptionConfigOutput: GetEncryptionConfigOutput
    GetGroupInput: GetGroupInput
    GetGroupOutput: GetGroupOutput
    GetGroupsInput: GetGroupsInput
    GetGroupsOutput: GetGroupsOutput
    GetIndexingRulesInput: GetIndexingRulesInput
    GetIndexingRulesOutput: GetIndexingRulesOutput
    GetInsightInput: GetInsightInput
    GetInsightOutput: GetInsightOutput
    GetInsightEventsInput: GetInsightEventsInput
    GetInsightEventsOutput: GetInsightEventsOutput
    GetInsightImpactGraphInput: GetInsightImpactGraphInput
    GetInsightImpactGraphOutput: GetInsightImpactGraphOutput
    GetInsightSummariesInput: GetInsightSummariesInput
    GetInsightSummariesOutput: GetInsightSummariesOutput
    GetRetrievedTracesGraphInput: GetRetrievedTracesGraphInput
    GetRetrievedTracesGraphOutput: GetRetrievedTracesGraphOutput
    GetSamplingRulesInput: GetSamplingRulesInput
    GetSamplingRulesOutput: GetSamplingRulesOutput
    GetSamplingStatisticSummariesInput: GetSamplingStatisticSummariesInput
    GetSamplingStatisticSummariesOutput: GetSamplingStatisticSummariesOutput
    GetSamplingTargetsInput: GetSamplingTargetsInput
    GetSamplingTargetsOutput: GetSamplingTargetsOutput
    GetServiceGraphInput: GetServiceGraphInput
    GetServiceGraphOutput: GetServiceGraphOutput
    GetTimeSeriesServiceStatisticsInput: GetTimeSeriesServiceStatisticsInput
    GetTimeSeriesServiceStatisticsOutput: GetTimeSeriesServiceStatisticsOutput
    GetTraceGraphInput: GetTraceGraphInput
    GetTraceGraphOutput: GetTraceGraphOutput
    GetTraceSegmentDestinationInput: GetTraceSegmentDestinationInput
    GetTraceSegmentDestinationOutput: GetTraceSegmentDestinationOutput
    GetTraceSummariesInput: GetTraceSummariesInput
    GetTraceSummariesOutput: GetTraceSummariesOutput
    ListResourcePoliciesInput: ListResourcePoliciesInput
    ListResourcePoliciesOutput: ListResourcePoliciesOutput
    ListRetrievedTracesInput: ListRetrievedTracesInput
    ListRetrievedTracesOutput: ListRetrievedTracesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutEncryptionConfigInput: PutEncryptionConfigInput
    PutEncryptionConfigOutput: PutEncryptionConfigOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    PutTelemetryRecordsInput: PutTelemetryRecordsInput
    PutTelemetryRecordsOutput: PutTelemetryRecordsOutput
    PutTraceSegmentsInput: PutTraceSegmentsInput
    PutTraceSegmentsOutput: PutTraceSegmentsOutput
    StartTraceRetrievalInput: StartTraceRetrievalInput
    StartTraceRetrievalOutput: StartTraceRetrievalOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateIndexingRuleInput: UpdateIndexingRuleInput
    UpdateIndexingRuleOutput: UpdateIndexingRuleOutput
    UpdateSamplingRuleInput: UpdateSamplingRuleInput
    UpdateSamplingRuleOutput: UpdateSamplingRuleOutput
    UpdateTraceSegmentDestinationInput: UpdateTraceSegmentDestinationInput
    UpdateTraceSegmentDestinationOutput: UpdateTraceSegmentDestinationOutput
end

return M
