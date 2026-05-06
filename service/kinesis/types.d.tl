local record AddTagsToStreamInput
    StreamName: string
    Tags: {string : string}
    StreamARN: string
    StreamId: string
end

local record AddTagsToStreamOutput
end

local record CreateStreamInput
    StreamName: string
    ShardCount: number
    StreamModeDetails: StreamModeDetails
    Tags: {string : string}
    WarmThroughputMiBps: number
    MaxRecordSizeInKiB: number
end

local record CreateStreamOutput
end

local record DecreaseStreamRetentionPeriodInput
    StreamName: string
    RetentionPeriodHours: number
    StreamARN: string
    StreamId: string
end

local record DecreaseStreamRetentionPeriodOutput
end

local record DeleteResourcePolicyInput
    ResourceARN: string
    StreamId: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteStreamInput
    StreamName: string
    EnforceConsumerDeletion: boolean
    StreamARN: string
    StreamId: string
end

local record DeleteStreamOutput
end

local record DeregisterStreamConsumerInput
    StreamARN: string
    ConsumerName: string
    ConsumerARN: string
    StreamId: string
end

local record DeregisterStreamConsumerOutput
end

local record DescribeAccountSettingsInput
end

local record DescribeAccountSettingsOutput
    MinimumThroughputBillingCommitment: MinimumThroughputBillingCommitmentOutput
end

local record DescribeLimitsInput
end

local record DescribeLimitsOutput
    ShardLimit: number
    OpenShardCount: number
    OnDemandStreamCount: number
    OnDemandStreamCountLimit: number
end

local record DescribeStreamInput
    StreamName: string
    Limit: number
    ExclusiveStartShardId: string
    StreamARN: string
    StreamId: string
end

local record DescribeStreamOutput
    StreamDescription: StreamDescription
end

local record DescribeStreamConsumerInput
    StreamARN: string
    ConsumerName: string
    ConsumerARN: string
    StreamId: string
end

local record DescribeStreamConsumerOutput
    ConsumerDescription: ConsumerDescription
end

local record DescribeStreamSummaryInput
    StreamName: string
    StreamARN: string
    StreamId: string
end

local record DescribeStreamSummaryOutput
    StreamDescriptionSummary: StreamDescriptionSummary
end

local record DisableEnhancedMonitoringInput
    StreamName: string
    ShardLevelMetrics: {string}
    StreamARN: string
    StreamId: string
end

local record DisableEnhancedMonitoringOutput
    StreamName: string
    CurrentShardLevelMetrics: {string}
    DesiredShardLevelMetrics: {string}
    StreamARN: string
end

local record EnableEnhancedMonitoringInput
    StreamName: string
    ShardLevelMetrics: {string}
    StreamARN: string
    StreamId: string
end

local record EnableEnhancedMonitoringOutput
    StreamName: string
    CurrentShardLevelMetrics: {string}
    DesiredShardLevelMetrics: {string}
    StreamARN: string
end

local record GetRecordsInput
    ShardIterator: string
    Limit: number
    StreamARN: string
    StreamId: string
end

local record GetRecordsOutput
    Records: {Record}
    NextShardIterator: string
    MillisBehindLatest: number
    ChildShards: {ChildShard}
end

local record GetResourcePolicyInput
    ResourceARN: string
    StreamId: string
end

local record GetResourcePolicyOutput
    Policy: string
end

local record GetShardIteratorInput
    StreamName: string
    ShardId: string
    ShardIteratorType: string
    StartingSequenceNumber: string
    Timestamp: number
    StreamARN: string
    StreamId: string
end

local record GetShardIteratorOutput
    ShardIterator: string
end

local record IncreaseStreamRetentionPeriodInput
    StreamName: string
    RetentionPeriodHours: number
    StreamARN: string
    StreamId: string
end

local record IncreaseStreamRetentionPeriodOutput
end

local record ListShardsInput
    StreamName: string
    NextToken: string
    ExclusiveStartShardId: string
    MaxResults: number
    StreamCreationTimestamp: number
    ShardFilter: ShardFilter
    StreamARN: string
    StreamId: string
end

local record ListShardsOutput
    Shards: {Shard}
    NextToken: string
end

local record ListStreamConsumersInput
    StreamARN: string
    NextToken: string
    MaxResults: number
    StreamCreationTimestamp: number
    StreamId: string
end

local record ListStreamConsumersOutput
    Consumers: {Consumer}
    NextToken: string
end

local record ListStreamsInput
    Limit: number
    ExclusiveStartStreamName: string
    NextToken: string
end

local record ListStreamsOutput
    StreamNames: {string}
    HasMoreStreams: boolean
    NextToken: string
    StreamSummaries: {StreamSummary}
end

local record ListTagsForResourceInput
    ResourceARN: string
    StreamId: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListTagsForStreamInput
    StreamName: string
    ExclusiveStartTagKey: string
    Limit: number
    StreamARN: string
    StreamId: string
end

local record ListTagsForStreamOutput
    Tags: {Tag}
    HasMoreTags: boolean
end

local record MergeShardsInput
    StreamName: string
    ShardToMerge: string
    AdjacentShardToMerge: string
    StreamARN: string
    StreamId: string
end

local record MergeShardsOutput
end

local record PutRecordInput
    StreamName: string
    Data: string
    PartitionKey: string
    ExplicitHashKey: string
    SequenceNumberForOrdering: string
    StreamARN: string
    StreamId: string
end

local record PutRecordOutput
    ShardId: string
    SequenceNumber: string
    EncryptionType: string
end

local record PutRecordsInput
    Records: {PutRecordsRequestEntry}
    StreamName: string
    StreamARN: string
    StreamId: string
end

local record PutRecordsOutput
    FailedRecordCount: number
    Records: {PutRecordsResultEntry}
    EncryptionType: string
end

local record PutResourcePolicyInput
    ResourceARN: string
    StreamId: string
    Policy: string
end

local record PutResourcePolicyOutput
end

local record RegisterStreamConsumerInput
    StreamARN: string
    ConsumerName: string
    StreamId: string
    Tags: {string : string}
end

local record RegisterStreamConsumerOutput
    Consumer: Consumer
end

local record RemoveTagsFromStreamInput
    StreamName: string
    TagKeys: {string}
    StreamARN: string
    StreamId: string
end

local record RemoveTagsFromStreamOutput
end

local record SplitShardInput
    StreamName: string
    ShardToSplit: string
    NewStartingHashKey: string
    StreamARN: string
    StreamId: string
end

local record SplitShardOutput
end

local record StartStreamEncryptionInput
    StreamName: string
    EncryptionType: string
    KeyId: string
    StreamARN: string
    StreamId: string
end

local record StartStreamEncryptionOutput
end

local record StopStreamEncryptionInput
    StreamName: string
    EncryptionType: string
    KeyId: string
    StreamARN: string
    StreamId: string
end

local record StopStreamEncryptionOutput
end

local record SubscribeToShardInput
    ConsumerARN: string
    StreamId: string
    ShardId: string
    StartingPosition: StartingPosition
end

local record SubscribeToShardOutput
    EventStream: SubscribeToShardEventStream
end

local record TagResourceInput
    Tags: {string : string}
    ResourceARN: string
    StreamId: string
end

local record TagResourceOutput
end

local record UntagResourceInput
    TagKeys: {string}
    ResourceARN: string
    StreamId: string
end

local record UntagResourceOutput
end

local record UpdateAccountSettingsInput
    MinimumThroughputBillingCommitment: MinimumThroughputBillingCommitmentInput
end

local record UpdateAccountSettingsOutput
    MinimumThroughputBillingCommitment: MinimumThroughputBillingCommitmentOutput
end

local record UpdateMaxRecordSizeInput
    StreamARN: string
    StreamId: string
    MaxRecordSizeInKiB: number
end

local record UpdateMaxRecordSizeOutput
end

local record UpdateShardCountInput
    StreamName: string
    TargetShardCount: number
    ScalingType: string
    StreamARN: string
    StreamId: string
end

local record UpdateShardCountOutput
    StreamName: string
    CurrentShardCount: number
    TargetShardCount: number
    StreamARN: string
end

local record UpdateStreamModeInput
    StreamARN: string
    StreamId: string
    StreamModeDetails: StreamModeDetails
    WarmThroughputMiBps: number
end

local record UpdateStreamModeOutput
end

local record UpdateStreamWarmThroughputInput
    StreamARN: string
    StreamName: string
    StreamId: string
    WarmThroughputMiBps: number
end

local record UpdateStreamWarmThroughputOutput
    StreamARN: string
    StreamName: string
    WarmThroughput: WarmThroughputObject
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record LimitExceededException
    message: string
end

local record LimitExceededException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ExpiredIteratorException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record KMSAccessDeniedException
    message: string
end

local record KMSDisabledException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record KMSNotFoundException
    message: string
end

local record KMSOptInRequired
    message: string
end

local record KMSThrottlingException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ExpiredNextTokenException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ExpiredNextTokenException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ExpiredNextTokenException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
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

local record InternalFailureException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record KMSAccessDeniedException
    message: string
end

local record KMSDisabledException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record KMSNotFoundException
    message: string
end

local record KMSOptInRequired
    message: string
end

local record KMSThrottlingException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record KMSAccessDeniedException
    message: string
end

local record KMSDisabledException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record KMSNotFoundException
    message: string
end

local record KMSOptInRequired
    message: string
end

local record KMSThrottlingException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
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

local record InvalidArgumentException
    message: string
end

local record KMSAccessDeniedException
    message: string
end

local record KMSDisabledException
    message: string
end

local record KMSInvalidStateException
    message: string
end

local record KMSNotFoundException
    message: string
end

local record KMSOptInRequired
    message: string
end

local record KMSThrottlingException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
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

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
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

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
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

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local type ScalingType = "UNIFORM_SCALING"

local type EncryptionType = "NONE" | "KMS"

local type ShardIteratorType = "AT_SEQUENCE_NUMBER" | "AFTER_SEQUENCE_NUMBER" | "TRIM_HORIZON" | "LATEST" | "AT_TIMESTAMP"

local record M
    AddTagsToStreamInput: AddTagsToStreamInput
    AddTagsToStreamOutput: AddTagsToStreamOutput
    CreateStreamInput: CreateStreamInput
    CreateStreamOutput: CreateStreamOutput
    DecreaseStreamRetentionPeriodInput: DecreaseStreamRetentionPeriodInput
    DecreaseStreamRetentionPeriodOutput: DecreaseStreamRetentionPeriodOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteStreamInput: DeleteStreamInput
    DeleteStreamOutput: DeleteStreamOutput
    DeregisterStreamConsumerInput: DeregisterStreamConsumerInput
    DeregisterStreamConsumerOutput: DeregisterStreamConsumerOutput
    DescribeAccountSettingsInput: DescribeAccountSettingsInput
    DescribeAccountSettingsOutput: DescribeAccountSettingsOutput
    DescribeLimitsInput: DescribeLimitsInput
    DescribeLimitsOutput: DescribeLimitsOutput
    DescribeStreamInput: DescribeStreamInput
    DescribeStreamOutput: DescribeStreamOutput
    DescribeStreamConsumerInput: DescribeStreamConsumerInput
    DescribeStreamConsumerOutput: DescribeStreamConsumerOutput
    DescribeStreamSummaryInput: DescribeStreamSummaryInput
    DescribeStreamSummaryOutput: DescribeStreamSummaryOutput
    DisableEnhancedMonitoringInput: DisableEnhancedMonitoringInput
    DisableEnhancedMonitoringOutput: DisableEnhancedMonitoringOutput
    EnableEnhancedMonitoringInput: EnableEnhancedMonitoringInput
    EnableEnhancedMonitoringOutput: EnableEnhancedMonitoringOutput
    GetRecordsInput: GetRecordsInput
    GetRecordsOutput: GetRecordsOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetShardIteratorInput: GetShardIteratorInput
    GetShardIteratorOutput: GetShardIteratorOutput
    IncreaseStreamRetentionPeriodInput: IncreaseStreamRetentionPeriodInput
    IncreaseStreamRetentionPeriodOutput: IncreaseStreamRetentionPeriodOutput
    ListShardsInput: ListShardsInput
    ListShardsOutput: ListShardsOutput
    ListStreamConsumersInput: ListStreamConsumersInput
    ListStreamConsumersOutput: ListStreamConsumersOutput
    ListStreamsInput: ListStreamsInput
    ListStreamsOutput: ListStreamsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTagsForStreamInput: ListTagsForStreamInput
    ListTagsForStreamOutput: ListTagsForStreamOutput
    MergeShardsInput: MergeShardsInput
    MergeShardsOutput: MergeShardsOutput
    PutRecordInput: PutRecordInput
    PutRecordOutput: PutRecordOutput
    PutRecordsInput: PutRecordsInput
    PutRecordsOutput: PutRecordsOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RegisterStreamConsumerInput: RegisterStreamConsumerInput
    RegisterStreamConsumerOutput: RegisterStreamConsumerOutput
    RemoveTagsFromStreamInput: RemoveTagsFromStreamInput
    RemoveTagsFromStreamOutput: RemoveTagsFromStreamOutput
    SplitShardInput: SplitShardInput
    SplitShardOutput: SplitShardOutput
    StartStreamEncryptionInput: StartStreamEncryptionInput
    StartStreamEncryptionOutput: StartStreamEncryptionOutput
    StopStreamEncryptionInput: StopStreamEncryptionInput
    StopStreamEncryptionOutput: StopStreamEncryptionOutput
    SubscribeToShardInput: SubscribeToShardInput
    SubscribeToShardOutput: SubscribeToShardOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountSettingsInput: UpdateAccountSettingsInput
    UpdateAccountSettingsOutput: UpdateAccountSettingsOutput
    UpdateMaxRecordSizeInput: UpdateMaxRecordSizeInput
    UpdateMaxRecordSizeOutput: UpdateMaxRecordSizeOutput
    UpdateShardCountInput: UpdateShardCountInput
    UpdateShardCountOutput: UpdateShardCountOutput
    UpdateStreamModeInput: UpdateStreamModeInput
    UpdateStreamModeOutput: UpdateStreamModeOutput
    UpdateStreamWarmThroughputInput: UpdateStreamWarmThroughputInput
    UpdateStreamWarmThroughputOutput: UpdateStreamWarmThroughputOutput
end

return M
