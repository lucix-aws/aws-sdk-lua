local record BatchExecuteStatementInput
    Statements: {BatchStatementRequest}
    ReturnConsumedCapacity: string
end

local record BatchExecuteStatementOutput
    Responses: {BatchStatementResponse}
    ConsumedCapacity: {ConsumedCapacity}
end

local record BatchGetItemInput
    RequestItems: {string : KeysAndAttributes}
    ReturnConsumedCapacity: string
end

local record BatchGetItemOutput
    Responses: {string : {{string : AttributeValue}}}
    UnprocessedKeys: {string : KeysAndAttributes}
    ConsumedCapacity: {ConsumedCapacity}
end

local record BatchWriteItemInput
    RequestItems: {string : {WriteRequest}}
    ReturnConsumedCapacity: string
    ReturnItemCollectionMetrics: string
end

local record BatchWriteItemOutput
    UnprocessedItems: {string : {WriteRequest}}
    ItemCollectionMetrics: {string : {ItemCollectionMetrics}}
    ConsumedCapacity: {ConsumedCapacity}
end

local record CreateBackupInput
    TableName: string
    BackupName: string
end

local record CreateBackupOutput
    BackupDetails: BackupDetails
end

local record CreateGlobalTableInput
    GlobalTableName: string
    ReplicationGroup: {Replica}
end

local record CreateGlobalTableOutput
    GlobalTableDescription: GlobalTableDescription
end

local record CreateTableInput
    AttributeDefinitions: {AttributeDefinition}
    TableName: string
    KeySchema: {KeySchemaElement}
    LocalSecondaryIndexes: {LocalSecondaryIndex}
    GlobalSecondaryIndexes: {GlobalSecondaryIndex}
    BillingMode: string
    ProvisionedThroughput: ProvisionedThroughput
    StreamSpecification: StreamSpecification
    SSESpecification: SSESpecification
    Tags: {Tag}
    TableClass: string
    DeletionProtectionEnabled: boolean
    WarmThroughput: WarmThroughput
    ResourcePolicy: string
    OnDemandThroughput: OnDemandThroughput
    GlobalTableSourceArn: string
    GlobalTableSettingsReplicationMode: string
end

local record CreateTableOutput
    TableDescription: TableDescription
end

local record DeleteBackupInput
    BackupArn: string
end

local record DeleteBackupOutput
    BackupDescription: BackupDescription
end

local record DeleteItemInput
    TableName: string
    Key: {string : AttributeValue}
    Expected: {string : ExpectedAttributeValue}
    ConditionalOperator: string
    ReturnValues: string
    ReturnConsumedCapacity: string
    ReturnItemCollectionMetrics: string
    ConditionExpression: string
    ExpressionAttributeNames: {string : string}
    ExpressionAttributeValues: {string : AttributeValue}
    ReturnValuesOnConditionCheckFailure: string
end

local record DeleteItemOutput
    Attributes: {string : AttributeValue}
    ConsumedCapacity: ConsumedCapacity
    ItemCollectionMetrics: ItemCollectionMetrics
end

local record DeleteResourcePolicyInput
    ResourceArn: string
    ExpectedRevisionId: string
end

local record DeleteResourcePolicyOutput
    RevisionId: string
end

local record DeleteTableInput
    TableName: string
end

local record DeleteTableOutput
    TableDescription: TableDescription
end

local record DescribeBackupInput
    BackupArn: string
end

local record DescribeBackupOutput
    BackupDescription: BackupDescription
end

local record DescribeContinuousBackupsInput
    TableName: string
end

local record DescribeContinuousBackupsOutput
    ContinuousBackupsDescription: ContinuousBackupsDescription
end

local record DescribeContributorInsightsInput
    TableName: string
    IndexName: string
end

local record DescribeContributorInsightsOutput
    TableName: string
    IndexName: string
    ContributorInsightsRuleList: {string}
    ContributorInsightsStatus: string
    LastUpdateDateTime: number
    FailureException: FailureException
    ContributorInsightsMode: string
end

local record DescribeEndpointsInput
end

local record DescribeEndpointsOutput
    Endpoints: {Endpoint}
end

local record DescribeExportInput
    ExportArn: string
end

local record DescribeExportOutput
    ExportDescription: ExportDescription
end

local record DescribeGlobalTableInput
    GlobalTableName: string
end

local record DescribeGlobalTableOutput
    GlobalTableDescription: GlobalTableDescription
end

local record DescribeGlobalTableSettingsInput
    GlobalTableName: string
end

local record DescribeGlobalTableSettingsOutput
    GlobalTableName: string
    ReplicaSettings: {ReplicaSettingsDescription}
end

local record DescribeImportInput
    ImportArn: string
end

local record DescribeImportOutput
    ImportTableDescription: ImportTableDescription
end

local record DescribeKinesisStreamingDestinationInput
    TableName: string
end

local record DescribeKinesisStreamingDestinationOutput
    TableName: string
    KinesisDataStreamDestinations: {KinesisDataStreamDestination}
end

local record DescribeLimitsInput
end

local record DescribeLimitsOutput
    AccountMaxReadCapacityUnits: number
    AccountMaxWriteCapacityUnits: number
    TableMaxReadCapacityUnits: number
    TableMaxWriteCapacityUnits: number
end

local record DescribeTableInput
    TableName: string
end

local record DescribeTableOutput
    Table: TableDescription
end

local record DescribeTableReplicaAutoScalingInput
    TableName: string
end

local record DescribeTableReplicaAutoScalingOutput
    TableAutoScalingDescription: TableAutoScalingDescription
end

local record DescribeTimeToLiveInput
    TableName: string
end

local record DescribeTimeToLiveOutput
    TimeToLiveDescription: TimeToLiveDescription
end

local record DisableKinesisStreamingDestinationInput
    TableName: string
    StreamArn: string
    EnableKinesisStreamingConfiguration: EnableKinesisStreamingConfiguration
end

local record DisableKinesisStreamingDestinationOutput
    TableName: string
    StreamArn: string
    DestinationStatus: string
    EnableKinesisStreamingConfiguration: EnableKinesisStreamingConfiguration
end

local record EnableKinesisStreamingDestinationInput
    TableName: string
    StreamArn: string
    EnableKinesisStreamingConfiguration: EnableKinesisStreamingConfiguration
end

local record EnableKinesisStreamingDestinationOutput
    TableName: string
    StreamArn: string
    DestinationStatus: string
    EnableKinesisStreamingConfiguration: EnableKinesisStreamingConfiguration
end

local record ExecuteStatementInput
    Statement: string
    Parameters: {AttributeValue}
    ConsistentRead: boolean
    NextToken: string
    ReturnConsumedCapacity: string
    Limit: number
    ReturnValuesOnConditionCheckFailure: string
end

local record ExecuteStatementOutput
    Items: {{string : AttributeValue}}
    NextToken: string
    ConsumedCapacity: ConsumedCapacity
    LastEvaluatedKey: {string : AttributeValue}
end

local record ExecuteTransactionInput
    TransactStatements: {ParameterizedStatement}
    ClientRequestToken: string
    ReturnConsumedCapacity: string
end

local record ExecuteTransactionOutput
    Responses: {ItemResponse}
    ConsumedCapacity: {ConsumedCapacity}
end

local record ExportTableToPointInTimeInput
    TableArn: string
    ExportTime: number
    ClientToken: string
    S3Bucket: string
    S3BucketOwner: string
    S3Prefix: string
    S3SseAlgorithm: string
    S3SseKmsKeyId: string
    ExportFormat: string
    ExportType: string
    IncrementalExportSpecification: IncrementalExportSpecification
end

local record ExportTableToPointInTimeOutput
    ExportDescription: ExportDescription
end

local record GetItemInput
    TableName: string
    Key: {string : AttributeValue}
    AttributesToGet: {string}
    ConsistentRead: boolean
    ReturnConsumedCapacity: string
    ProjectionExpression: string
    ExpressionAttributeNames: {string : string}
end

local record GetItemOutput
    Item: {string : AttributeValue}
    ConsumedCapacity: ConsumedCapacity
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    Policy: string
    RevisionId: string
end

local record ImportTableInput
    ClientToken: string
    S3BucketSource: S3BucketSource
    InputFormat: string
    InputFormatOptions: InputFormatOptions
    InputCompressionType: string
    TableCreationParameters: TableCreationParameters
end

local record ImportTableOutput
    ImportTableDescription: ImportTableDescription
end

local record ListBackupsInput
    TableName: string
    Limit: number
    TimeRangeLowerBound: number
    TimeRangeUpperBound: number
    ExclusiveStartBackupArn: string
    BackupType: string
end

local record ListBackupsOutput
    BackupSummaries: {BackupSummary}
    LastEvaluatedBackupArn: string
end

local record ListContributorInsightsInput
    TableName: string
    NextToken: string
    MaxResults: number
end

local record ListContributorInsightsOutput
    ContributorInsightsSummaries: {ContributorInsightsSummary}
    NextToken: string
end

local record ListExportsInput
    TableArn: string
    MaxResults: number
    NextToken: string
end

local record ListExportsOutput
    ExportSummaries: {ExportSummary}
    NextToken: string
end

local record ListGlobalTablesInput
    ExclusiveStartGlobalTableName: string
    Limit: number
    RegionName: string
end

local record ListGlobalTablesOutput
    GlobalTables: {GlobalTable}
    LastEvaluatedGlobalTableName: string
end

local record ListImportsInput
    TableArn: string
    PageSize: number
    NextToken: string
end

local record ListImportsOutput
    ImportSummaryList: {ImportSummary}
    NextToken: string
end

local record ListTablesInput
    ExclusiveStartTableName: string
    Limit: number
end

local record ListTablesOutput
    TableNames: {string}
    LastEvaluatedTableName: string
end

local record ListTagsOfResourceInput
    ResourceArn: string
    NextToken: string
end

local record ListTagsOfResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record PutItemInput
    TableName: string
    Item: {string : AttributeValue}
    Expected: {string : ExpectedAttributeValue}
    ReturnValues: string
    ReturnConsumedCapacity: string
    ReturnItemCollectionMetrics: string
    ConditionalOperator: string
    ConditionExpression: string
    ExpressionAttributeNames: {string : string}
    ExpressionAttributeValues: {string : AttributeValue}
    ReturnValuesOnConditionCheckFailure: string
end

local record PutItemOutput
    Attributes: {string : AttributeValue}
    ConsumedCapacity: ConsumedCapacity
    ItemCollectionMetrics: ItemCollectionMetrics
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
    ExpectedRevisionId: string
    ConfirmRemoveSelfResourceAccess: boolean
end

local record PutResourcePolicyOutput
    RevisionId: string
end

local record QueryInput
    TableName: string
    IndexName: string
    Select: string
    AttributesToGet: {string}
    Limit: number
    ConsistentRead: boolean
    KeyConditions: {string : Condition}
    QueryFilter: {string : Condition}
    ConditionalOperator: string
    ScanIndexForward: boolean
    ExclusiveStartKey: {string : AttributeValue}
    ReturnConsumedCapacity: string
    ProjectionExpression: string
    FilterExpression: string
    KeyConditionExpression: string
    ExpressionAttributeNames: {string : string}
    ExpressionAttributeValues: {string : AttributeValue}
end

local record QueryOutput
    Items: {{string : AttributeValue}}
    Count: number
    ScannedCount: number
    LastEvaluatedKey: {string : AttributeValue}
    ConsumedCapacity: ConsumedCapacity
end

local record RestoreTableFromBackupInput
    TargetTableName: string
    BackupArn: string
    BillingModeOverride: string
    GlobalSecondaryIndexOverride: {GlobalSecondaryIndex}
    LocalSecondaryIndexOverride: {LocalSecondaryIndex}
    ProvisionedThroughputOverride: ProvisionedThroughput
    OnDemandThroughputOverride: OnDemandThroughput
    SSESpecificationOverride: SSESpecification
end

local record RestoreTableFromBackupOutput
    TableDescription: TableDescription
end

local record RestoreTableToPointInTimeInput
    SourceTableArn: string
    SourceTableName: string
    TargetTableName: string
    UseLatestRestorableTime: boolean
    RestoreDateTime: number
    BillingModeOverride: string
    GlobalSecondaryIndexOverride: {GlobalSecondaryIndex}
    LocalSecondaryIndexOverride: {LocalSecondaryIndex}
    ProvisionedThroughputOverride: ProvisionedThroughput
    OnDemandThroughputOverride: OnDemandThroughput
    SSESpecificationOverride: SSESpecification
end

local record RestoreTableToPointInTimeOutput
    TableDescription: TableDescription
end

local record ScanInput
    TableName: string
    IndexName: string
    AttributesToGet: {string}
    Limit: number
    Select: string
    ScanFilter: {string : Condition}
    ConditionalOperator: string
    ExclusiveStartKey: {string : AttributeValue}
    ReturnConsumedCapacity: string
    TotalSegments: number
    Segment: number
    ProjectionExpression: string
    FilterExpression: string
    ExpressionAttributeNames: {string : string}
    ExpressionAttributeValues: {string : AttributeValue}
    ConsistentRead: boolean
end

local record ScanOutput
    Items: {{string : AttributeValue}}
    Count: number
    ScannedCount: number
    LastEvaluatedKey: {string : AttributeValue}
    ConsumedCapacity: ConsumedCapacity
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TransactGetItemsInput
    TransactItems: {TransactGetItem}
    ReturnConsumedCapacity: string
end

local record TransactGetItemsOutput
    ConsumedCapacity: {ConsumedCapacity}
    Responses: {ItemResponse}
end

local record TransactWriteItemsInput
    TransactItems: {TransactWriteItem}
    ReturnConsumedCapacity: string
    ReturnItemCollectionMetrics: string
    ClientRequestToken: string
end

local record TransactWriteItemsOutput
    ConsumedCapacity: {ConsumedCapacity}
    ItemCollectionMetrics: {string : {ItemCollectionMetrics}}
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateContinuousBackupsInput
    TableName: string
    PointInTimeRecoverySpecification: PointInTimeRecoverySpecification
end

local record UpdateContinuousBackupsOutput
    ContinuousBackupsDescription: ContinuousBackupsDescription
end

local record UpdateContributorInsightsInput
    TableName: string
    IndexName: string
    ContributorInsightsAction: string
    ContributorInsightsMode: string
end

local record UpdateContributorInsightsOutput
    TableName: string
    IndexName: string
    ContributorInsightsStatus: string
    ContributorInsightsMode: string
end

local record UpdateGlobalTableInput
    GlobalTableName: string
    ReplicaUpdates: {ReplicaUpdate}
end

local record UpdateGlobalTableOutput
    GlobalTableDescription: GlobalTableDescription
end

local record UpdateGlobalTableSettingsInput
    GlobalTableName: string
    GlobalTableBillingMode: string
    GlobalTableProvisionedWriteCapacityUnits: number
    GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate: AutoScalingSettingsUpdate
    GlobalTableGlobalSecondaryIndexSettingsUpdate: {GlobalTableGlobalSecondaryIndexSettingsUpdate}
    ReplicaSettingsUpdate: {ReplicaSettingsUpdate}
end

local record UpdateGlobalTableSettingsOutput
    GlobalTableName: string
    ReplicaSettings: {ReplicaSettingsDescription}
end

local record UpdateItemInput
    TableName: string
    Key: {string : AttributeValue}
    AttributeUpdates: {string : AttributeValueUpdate}
    Expected: {string : ExpectedAttributeValue}
    ConditionalOperator: string
    ReturnValues: string
    ReturnConsumedCapacity: string
    ReturnItemCollectionMetrics: string
    UpdateExpression: string
    ConditionExpression: string
    ExpressionAttributeNames: {string : string}
    ExpressionAttributeValues: {string : AttributeValue}
    ReturnValuesOnConditionCheckFailure: string
end

local record UpdateItemOutput
    Attributes: {string : AttributeValue}
    ConsumedCapacity: ConsumedCapacity
    ItemCollectionMetrics: ItemCollectionMetrics
end

local record UpdateKinesisStreamingDestinationInput
    TableName: string
    StreamArn: string
    UpdateKinesisStreamingConfiguration: UpdateKinesisStreamingConfiguration
end

local record UpdateKinesisStreamingDestinationOutput
    TableName: string
    StreamArn: string
    DestinationStatus: string
    UpdateKinesisStreamingConfiguration: UpdateKinesisStreamingConfiguration
end

local record UpdateTableInput
    AttributeDefinitions: {AttributeDefinition}
    TableName: string
    BillingMode: string
    ProvisionedThroughput: ProvisionedThroughput
    GlobalSecondaryIndexUpdates: {GlobalSecondaryIndexUpdate}
    StreamSpecification: StreamSpecification
    SSESpecification: SSESpecification
    ReplicaUpdates: {ReplicationGroupUpdate}
    TableClass: string
    DeletionProtectionEnabled: boolean
    MultiRegionConsistency: string
    GlobalTableWitnessUpdates: {GlobalTableWitnessGroupUpdate}
    OnDemandThroughput: OnDemandThroughput
    WarmThroughput: WarmThroughput
    GlobalTableSettingsReplicationMode: string
end

local record UpdateTableOutput
    TableDescription: TableDescription
end

local record UpdateTableReplicaAutoScalingInput
    GlobalSecondaryIndexUpdates: {GlobalSecondaryIndexAutoScalingUpdate}
    TableName: string
    ProvisionedWriteCapacityAutoScalingUpdate: AutoScalingSettingsUpdate
    ReplicaUpdates: {ReplicaAutoScalingUpdate}
end

local record UpdateTableReplicaAutoScalingOutput
    TableAutoScalingDescription: TableAutoScalingDescription
end

local record UpdateTimeToLiveInput
    TableName: string
    TimeToLiveSpecification: TimeToLiveSpecification
end

local record UpdateTimeToLiveOutput
    TimeToLiveSpecification: TimeToLiveSpecification
end

local record InternalServerError
    message: string
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ItemCollectionSizeLimitExceededException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ReplicatedWriteConflictException
    message: string
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record BackupInUseException
    message: string
end

local record ContinuousBackupsUnavailableException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record TableInUseException
    message: string
end

local record TableNotFoundException
    message: string
end

local record GlobalTableAlreadyExistsException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record TableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record BackupInUseException
    message: string
end

local record BackupNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record ConditionalCheckFailedException
    message: string
    Item: {string : AttributeValue}
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ItemCollectionSizeLimitExceededException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ReplicatedWriteConflictException
    message: string
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TransactionConflictException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record PolicyNotFoundException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local record BackupNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record TableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ExportNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record LimitExceededException
    message: string
end

local record GlobalTableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record GlobalTableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ImportNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local record ConditionalCheckFailedException
    message: string
    Item: {string : AttributeValue}
end

local record DuplicateItemException
    message: string
end

local record InternalServerError
    message: string
end

local record ItemCollectionSizeLimitExceededException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TransactionConflictException
    message: string
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServerError
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TransactionCanceledException
    Message: string
    CancellationReasons: {CancellationReason}
end

local record TransactionInProgressException
    Message: string
end

local record ExportConflictException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidExportTimeException
    message: string
end

local record LimitExceededException
    message: string
end

local record PointInTimeRecoveryUnavailableException
    message: string
end

local record TableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record PolicyNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ImportConflictException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record InternalServerError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record LimitExceededException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConditionalCheckFailedException
    message: string
    Item: {string : AttributeValue}
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ItemCollectionSizeLimitExceededException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ReplicatedWriteConflictException
    message: string
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TransactionConflictException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record PolicyNotFoundException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record BackupInUseException
    message: string
end

local record BackupNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record TableAlreadyExistsException
    message: string
end

local record TableInUseException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record InvalidRestoreTimeException
    message: string
end

local record LimitExceededException
    message: string
end

local record PointInTimeRecoveryUnavailableException
    message: string
end

local record TableAlreadyExistsException
    message: string
end

local record TableInUseException
    message: string
end

local record TableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TransactionCanceledException
    Message: string
    CancellationReasons: {CancellationReason}
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TransactionCanceledException
    Message: string
    CancellationReasons: {CancellationReason}
end

local record TransactionInProgressException
    Message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local record ContinuousBackupsUnavailableException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record TableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record GlobalTableNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ReplicaAlreadyExistsException
    message: string
end

local record ReplicaNotFoundException
    message: string
end

local record TableNotFoundException
    message: string
end

local record GlobalTableNotFoundException
    message: string
end

local record IndexNotFoundException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record LimitExceededException
    message: string
end

local record ReplicaNotFoundException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ConditionalCheckFailedException
    message: string
    Item: {string : AttributeValue}
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
end

local record ItemCollectionSizeLimitExceededException
    message: string
end

local record ProvisionedThroughputExceededException
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ReplicatedWriteConflictException
    message: string
end

local record RequestLimitExceeded
    message: string
    ThrottlingReasons: {ThrottlingReason}
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record TransactionConflictException
    message: string
end

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local record InternalServerError
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

local record InternalServerError
    message: string
end

local record InvalidEndpointException
    Message: string
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

local type ConditionalOperator = "AND" | "OR"

local type InputCompressionType = "GZIP" | "ZSTD" | "NONE"

local type ExportFormat = "DYNAMODB_JSON" | "ION"

local type BillingMode = "PROVISIONED" | "PAY_PER_REQUEST"

local type Select = "ALL_ATTRIBUTES" | "ALL_PROJECTED_ATTRIBUTES" | "SPECIFIC_ATTRIBUTES" | "COUNT"

local type ReturnConsumedCapacity = "INDEXES" | "TOTAL" | "NONE"

local type ExportType = "FULL_EXPORT" | "INCREMENTAL_EXPORT"

local type InputFormat = "DYNAMODB_JSON" | "ION" | "CSV"

local type ContributorInsightsAction = "ENABLE" | "DISABLE"

local type ReturnValuesOnConditionCheckFailure = "ALL_OLD" | "NONE"

local type GlobalTableSettingsReplicationMode = "ENABLED" | "DISABLED" | "ENABLED_WITH_OVERRIDES"

local type ContributorInsightsStatus = "ENABLING" | "ENABLED" | "DISABLING" | "DISABLED" | "FAILED"

local type S3SseAlgorithm = "AES256" | "KMS"

local type MultiRegionConsistency = "EVENTUAL" | "STRONG"

local type ReturnValue = "NONE" | "ALL_OLD" | "UPDATED_OLD" | "ALL_NEW" | "UPDATED_NEW"

local type TableClass = "STANDARD" | "STANDARD_INFREQUENT_ACCESS"

local type DestinationStatus = "ENABLING" | "ACTIVE" | "DISABLING" | "DISABLED" | "ENABLE_FAILED" | "UPDATING"

local type BackupTypeFilter = "USER" | "SYSTEM" | "AWS_BACKUP" | "ALL"

local type ContributorInsightsMode = "ACCESSED_AND_THROTTLED_KEYS" | "THROTTLED_KEYS"

local type ReturnItemCollectionMetrics = "SIZE" | "NONE"

local record M
    BatchExecuteStatementInput: BatchExecuteStatementInput
    BatchExecuteStatementOutput: BatchExecuteStatementOutput
    BatchGetItemInput: BatchGetItemInput
    BatchGetItemOutput: BatchGetItemOutput
    BatchWriteItemInput: BatchWriteItemInput
    BatchWriteItemOutput: BatchWriteItemOutput
    CreateBackupInput: CreateBackupInput
    CreateBackupOutput: CreateBackupOutput
    CreateGlobalTableInput: CreateGlobalTableInput
    CreateGlobalTableOutput: CreateGlobalTableOutput
    CreateTableInput: CreateTableInput
    CreateTableOutput: CreateTableOutput
    DeleteBackupInput: DeleteBackupInput
    DeleteBackupOutput: DeleteBackupOutput
    DeleteItemInput: DeleteItemInput
    DeleteItemOutput: DeleteItemOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteTableInput: DeleteTableInput
    DeleteTableOutput: DeleteTableOutput
    DescribeBackupInput: DescribeBackupInput
    DescribeBackupOutput: DescribeBackupOutput
    DescribeContinuousBackupsInput: DescribeContinuousBackupsInput
    DescribeContinuousBackupsOutput: DescribeContinuousBackupsOutput
    DescribeContributorInsightsInput: DescribeContributorInsightsInput
    DescribeContributorInsightsOutput: DescribeContributorInsightsOutput
    DescribeEndpointsInput: DescribeEndpointsInput
    DescribeEndpointsOutput: DescribeEndpointsOutput
    DescribeExportInput: DescribeExportInput
    DescribeExportOutput: DescribeExportOutput
    DescribeGlobalTableInput: DescribeGlobalTableInput
    DescribeGlobalTableOutput: DescribeGlobalTableOutput
    DescribeGlobalTableSettingsInput: DescribeGlobalTableSettingsInput
    DescribeGlobalTableSettingsOutput: DescribeGlobalTableSettingsOutput
    DescribeImportInput: DescribeImportInput
    DescribeImportOutput: DescribeImportOutput
    DescribeKinesisStreamingDestinationInput: DescribeKinesisStreamingDestinationInput
    DescribeKinesisStreamingDestinationOutput: DescribeKinesisStreamingDestinationOutput
    DescribeLimitsInput: DescribeLimitsInput
    DescribeLimitsOutput: DescribeLimitsOutput
    DescribeTableInput: DescribeTableInput
    DescribeTableOutput: DescribeTableOutput
    DescribeTableReplicaAutoScalingInput: DescribeTableReplicaAutoScalingInput
    DescribeTableReplicaAutoScalingOutput: DescribeTableReplicaAutoScalingOutput
    DescribeTimeToLiveInput: DescribeTimeToLiveInput
    DescribeTimeToLiveOutput: DescribeTimeToLiveOutput
    DisableKinesisStreamingDestinationInput: DisableKinesisStreamingDestinationInput
    DisableKinesisStreamingDestinationOutput: DisableKinesisStreamingDestinationOutput
    EnableKinesisStreamingDestinationInput: EnableKinesisStreamingDestinationInput
    EnableKinesisStreamingDestinationOutput: EnableKinesisStreamingDestinationOutput
    ExecuteStatementInput: ExecuteStatementInput
    ExecuteStatementOutput: ExecuteStatementOutput
    ExecuteTransactionInput: ExecuteTransactionInput
    ExecuteTransactionOutput: ExecuteTransactionOutput
    ExportTableToPointInTimeInput: ExportTableToPointInTimeInput
    ExportTableToPointInTimeOutput: ExportTableToPointInTimeOutput
    GetItemInput: GetItemInput
    GetItemOutput: GetItemOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ImportTableInput: ImportTableInput
    ImportTableOutput: ImportTableOutput
    ListBackupsInput: ListBackupsInput
    ListBackupsOutput: ListBackupsOutput
    ListContributorInsightsInput: ListContributorInsightsInput
    ListContributorInsightsOutput: ListContributorInsightsOutput
    ListExportsInput: ListExportsInput
    ListExportsOutput: ListExportsOutput
    ListGlobalTablesInput: ListGlobalTablesInput
    ListGlobalTablesOutput: ListGlobalTablesOutput
    ListImportsInput: ListImportsInput
    ListImportsOutput: ListImportsOutput
    ListTablesInput: ListTablesInput
    ListTablesOutput: ListTablesOutput
    ListTagsOfResourceInput: ListTagsOfResourceInput
    ListTagsOfResourceOutput: ListTagsOfResourceOutput
    PutItemInput: PutItemInput
    PutItemOutput: PutItemOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    QueryInput: QueryInput
    QueryOutput: QueryOutput
    RestoreTableFromBackupInput: RestoreTableFromBackupInput
    RestoreTableFromBackupOutput: RestoreTableFromBackupOutput
    RestoreTableToPointInTimeInput: RestoreTableToPointInTimeInput
    RestoreTableToPointInTimeOutput: RestoreTableToPointInTimeOutput
    ScanInput: ScanInput
    ScanOutput: ScanOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TransactGetItemsInput: TransactGetItemsInput
    TransactGetItemsOutput: TransactGetItemsOutput
    TransactWriteItemsInput: TransactWriteItemsInput
    TransactWriteItemsOutput: TransactWriteItemsOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateContinuousBackupsInput: UpdateContinuousBackupsInput
    UpdateContinuousBackupsOutput: UpdateContinuousBackupsOutput
    UpdateContributorInsightsInput: UpdateContributorInsightsInput
    UpdateContributorInsightsOutput: UpdateContributorInsightsOutput
    UpdateGlobalTableInput: UpdateGlobalTableInput
    UpdateGlobalTableOutput: UpdateGlobalTableOutput
    UpdateGlobalTableSettingsInput: UpdateGlobalTableSettingsInput
    UpdateGlobalTableSettingsOutput: UpdateGlobalTableSettingsOutput
    UpdateItemInput: UpdateItemInput
    UpdateItemOutput: UpdateItemOutput
    UpdateKinesisStreamingDestinationInput: UpdateKinesisStreamingDestinationInput
    UpdateKinesisStreamingDestinationOutput: UpdateKinesisStreamingDestinationOutput
    UpdateTableInput: UpdateTableInput
    UpdateTableOutput: UpdateTableOutput
    UpdateTableReplicaAutoScalingInput: UpdateTableReplicaAutoScalingInput
    UpdateTableReplicaAutoScalingOutput: UpdateTableReplicaAutoScalingOutput
    UpdateTimeToLiveInput: UpdateTimeToLiveInput
    UpdateTimeToLiveOutput: UpdateTimeToLiveOutput
end

return M
