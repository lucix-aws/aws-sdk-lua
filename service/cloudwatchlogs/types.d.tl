local record AssociateKmsKeyInput
    logGroupName: string
    kmsKeyId: string
    resourceIdentifier: string
end

local record AssociateKmsKeyOutput
end

local record AssociateSourceToS3TableIntegrationInput
    integrationArn: string
    dataSource: DataSource
end

local record AssociateSourceToS3TableIntegrationOutput
    identifier: string
end

local record CancelExportTaskInput
    taskId: string
end

local record CancelExportTaskOutput
end

local record CancelImportTaskInput
    importId: string
end

local record CancelImportTaskOutput
    importId: string
    importStatistics: ImportStatistics
    importStatus: string
    creationTime: number
    lastUpdatedTime: number
end

local record CreateDeliveryInput
    deliverySourceName: string
    deliveryDestinationArn: string
    recordFields: {string}
    fieldDelimiter: string
    s3DeliveryConfiguration: S3DeliveryConfiguration
    tags: {string : string}
end

local record CreateDeliveryOutput
    delivery: Delivery
end

local record CreateExportTaskInput
    taskName: string
    logGroupName: string
    logStreamNamePrefix: string
    from: number
    to: number
    destination: string
    destinationPrefix: string
end

local record CreateExportTaskOutput
    taskId: string
end

local record CreateImportTaskInput
    importSourceArn: string
    importRoleArn: string
    importFilter: ImportFilter
end

local record CreateImportTaskOutput
    importId: string
    importDestinationArn: string
    creationTime: number
end

local record CreateLogAnomalyDetectorInput
    logGroupArnList: {string}
    detectorName: string
    evaluationFrequency: string
    filterPattern: string
    kmsKeyId: string
    anomalyVisibilityTime: number
    tags: {string : string}
end

local record CreateLogAnomalyDetectorOutput
    anomalyDetectorArn: string
end

local record CreateLogGroupInput
    logGroupName: string
    kmsKeyId: string
    tags: {string : string}
    logGroupClass: string
    deletionProtectionEnabled: boolean
end

local record CreateLogGroupOutput
end

local record CreateLogStreamInput
    logGroupName: string
    logStreamName: string
end

local record CreateLogStreamOutput
end

local record CreateLookupTableInput
    lookupTableName: string
    description: string
    tableBody: string
    kmsKeyId: string
    tags: {string : string}
end

local record CreateLookupTableOutput
    lookupTableArn: string
    createdAt: number
end

local record CreateScheduledQueryInput
    name: string
    description: string
    queryLanguage: string
    queryString: string
    logGroupIdentifiers: {string}
    scheduleExpression: string
    timezone: string
    startTimeOffset: number
    destinationConfiguration: DestinationConfiguration
    scheduleStartTime: number
    scheduleEndTime: number
    executionRoleArn: string
    state: string
    tags: {string : string}
end

local record CreateScheduledQueryOutput
    scheduledQueryArn: string
    state: string
end

local record DeleteAccountPolicyInput
    policyName: string
    policyType: string
end

local record DeleteAccountPolicyOutput
end

local record DeleteDataProtectionPolicyInput
    logGroupIdentifier: string
end

local record DeleteDataProtectionPolicyOutput
end

local record DeleteDeliveryInput
    id: string
end

local record DeleteDeliveryOutput
end

local record DeleteDeliveryDestinationInput
    name: string
end

local record DeleteDeliveryDestinationOutput
end

local record DeleteDeliveryDestinationPolicyInput
    deliveryDestinationName: string
end

local record DeleteDeliveryDestinationPolicyOutput
end

local record DeleteDeliverySourceInput
    name: string
end

local record DeleteDeliverySourceOutput
end

local record DeleteDestinationInput
    destinationName: string
end

local record DeleteDestinationOutput
end

local record DeleteIndexPolicyInput
    logGroupIdentifier: string
end

local record DeleteIndexPolicyOutput
end

local record DeleteIntegrationInput
    integrationName: string
    force: boolean
end

local record DeleteIntegrationOutput
end

local record DeleteLogAnomalyDetectorInput
    anomalyDetectorArn: string
end

local record DeleteLogAnomalyDetectorOutput
end

local record DeleteLogGroupInput
    logGroupName: string
end

local record DeleteLogGroupOutput
end

local record DeleteLogStreamInput
    logGroupName: string
    logStreamName: string
end

local record DeleteLogStreamOutput
end

local record DeleteLookupTableInput
    lookupTableArn: string
end

local record DeleteLookupTableOutput
end

local record DeleteMetricFilterInput
    logGroupName: string
    filterName: string
end

local record DeleteMetricFilterOutput
end

local record DeleteQueryDefinitionInput
    queryDefinitionId: string
end

local record DeleteQueryDefinitionOutput
    success: boolean
end

local record DeleteResourcePolicyInput
    policyName: string
    resourceArn: string
    expectedRevisionId: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteRetentionPolicyInput
    logGroupName: string
end

local record DeleteRetentionPolicyOutput
end

local record DeleteScheduledQueryInput
    identifier: string
end

local record DeleteScheduledQueryOutput
end

local record DeleteSubscriptionFilterInput
    logGroupName: string
    filterName: string
end

local record DeleteSubscriptionFilterOutput
end

local record DeleteTransformerInput
    logGroupIdentifier: string
end

local record DeleteTransformerOutput
end

local record DescribeAccountPoliciesInput
    policyType: string
    policyName: string
    accountIdentifiers: {string}
    nextToken: string
end

local record DescribeAccountPoliciesOutput
    accountPolicies: {AccountPolicy}
    nextToken: string
end

local record DescribeConfigurationTemplatesInput
    service: string
    logTypes: {string}
    resourceTypes: {string}
    deliveryDestinationTypes: {string}
    nextToken: string
    limit: number
end

local record DescribeConfigurationTemplatesOutput
    configurationTemplates: {ConfigurationTemplate}
    nextToken: string
end

local record DescribeDeliveriesInput
    nextToken: string
    limit: number
end

local record DescribeDeliveriesOutput
    deliveries: {Delivery}
    nextToken: string
end

local record DescribeDeliveryDestinationsInput
    nextToken: string
    limit: number
end

local record DescribeDeliveryDestinationsOutput
    deliveryDestinations: {DeliveryDestination}
    nextToken: string
end

local record DescribeDeliverySourcesInput
    nextToken: string
    limit: number
end

local record DescribeDeliverySourcesOutput
    deliverySources: {DeliverySource}
    nextToken: string
end

local record DescribeDestinationsInput
    DestinationNamePrefix: string
    nextToken: string
    limit: number
end

local record DescribeDestinationsOutput
    destinations: {Destination}
    nextToken: string
end

local record DescribeExportTasksInput
    taskId: string
    statusCode: string
    nextToken: string
    limit: number
end

local record DescribeExportTasksOutput
    exportTasks: {ExportTask}
    nextToken: string
end

local record DescribeFieldIndexesInput
    logGroupIdentifiers: {string}
    nextToken: string
end

local record DescribeFieldIndexesOutput
    fieldIndexes: {FieldIndex}
    nextToken: string
end

local record DescribeImportTaskBatchesInput
    importId: string
    batchImportStatus: {string}
    limit: number
    nextToken: string
end

local record DescribeImportTaskBatchesOutput
    importSourceArn: string
    importId: string
    importBatches: {ImportBatch}
    nextToken: string
end

local record DescribeImportTasksInput
    importId: string
    importStatus: string
    importSourceArn: string
    limit: number
    nextToken: string
end

local record DescribeImportTasksOutput
    imports: {Import}
    nextToken: string
end

local record DescribeIndexPoliciesInput
    logGroupIdentifiers: {string}
    nextToken: string
end

local record DescribeIndexPoliciesOutput
    indexPolicies: {IndexPolicy}
    nextToken: string
end

local record DescribeLogGroupsInput
    accountIdentifiers: {string}
    logGroupNamePrefix: string
    logGroupNamePattern: string
    nextToken: string
    limit: number
    includeLinkedAccounts: boolean
    logGroupClass: string
    logGroupIdentifiers: {string}
end

local record DescribeLogGroupsOutput
    logGroups: {LogGroup}
    nextToken: string
end

local record DescribeLogStreamsInput
    logGroupName: string
    logGroupIdentifier: string
    logStreamNamePrefix: string
    orderBy: string
    descending: boolean
    nextToken: string
    limit: number
end

local record DescribeLogStreamsOutput
    logStreams: {LogStream}
    nextToken: string
end

local record DescribeLookupTablesInput
    lookupTableNamePrefix: string
    maxResults: number
    nextToken: string
end

local record DescribeLookupTablesOutput
    lookupTables: {LookupTable}
    nextToken: string
end

local record DescribeMetricFiltersInput
    logGroupName: string
    filterNamePrefix: string
    nextToken: string
    limit: number
    metricName: string
    metricNamespace: string
end

local record DescribeMetricFiltersOutput
    metricFilters: {MetricFilter}
    nextToken: string
end

local record DescribeQueriesInput
    logGroupName: string
    status: string
    maxResults: number
    nextToken: string
    queryLanguage: string
end

local record DescribeQueriesOutput
    queries: {QueryInfo}
    nextToken: string
end

local record DescribeQueryDefinitionsInput
    queryLanguage: string
    queryDefinitionNamePrefix: string
    maxResults: number
    nextToken: string
end

local record DescribeQueryDefinitionsOutput
    queryDefinitions: {QueryDefinition}
    nextToken: string
end

local record DescribeResourcePoliciesInput
    nextToken: string
    limit: number
    resourceArn: string
    policyScope: string
end

local record DescribeResourcePoliciesOutput
    resourcePolicies: {ResourcePolicy}
    nextToken: string
end

local record DescribeSubscriptionFiltersInput
    logGroupName: string
    filterNamePrefix: string
    nextToken: string
    limit: number
end

local record DescribeSubscriptionFiltersOutput
    subscriptionFilters: {SubscriptionFilter}
    nextToken: string
end

local record DisassociateKmsKeyInput
    logGroupName: string
    resourceIdentifier: string
end

local record DisassociateKmsKeyOutput
end

local record DisassociateSourceFromS3TableIntegrationInput
    identifier: string
end

local record DisassociateSourceFromS3TableIntegrationOutput
    identifier: string
end

local record FilterLogEventsInput
    logGroupName: string
    logGroupIdentifier: string
    logStreamNames: {string}
    logStreamNamePrefix: string
    startTime: number
    endTime: number
    filterPattern: string
    nextToken: string
    limit: number
    interleaved: boolean
    unmask: boolean
end

local record FilterLogEventsOutput
    events: {FilteredLogEvent}
    searchedLogStreams: {SearchedLogStream}
    nextToken: string
end

local record GetDataProtectionPolicyInput
    logGroupIdentifier: string
end

local record GetDataProtectionPolicyOutput
    logGroupIdentifier: string
    policyDocument: string
    lastUpdatedTime: number
end

local record GetDeliveryInput
    id: string
end

local record GetDeliveryOutput
    delivery: Delivery
end

local record GetDeliveryDestinationInput
    name: string
end

local record GetDeliveryDestinationOutput
    deliveryDestination: DeliveryDestination
end

local record GetDeliveryDestinationPolicyInput
    deliveryDestinationName: string
end

local record GetDeliveryDestinationPolicyOutput
    policy: Policy
end

local record GetDeliverySourceInput
    name: string
end

local record GetDeliverySourceOutput
    deliverySource: DeliverySource
end

local record GetIntegrationInput
    integrationName: string
end

local record GetIntegrationOutput
    integrationName: string
    integrationType: string
    integrationStatus: string
    integrationDetails: IntegrationDetails
end

local record GetLogAnomalyDetectorInput
    anomalyDetectorArn: string
end

local record GetLogAnomalyDetectorOutput
    detectorName: string
    logGroupArnList: {string}
    evaluationFrequency: string
    filterPattern: string
    anomalyDetectorStatus: string
    kmsKeyId: string
    creationTimeStamp: number
    lastModifiedTimeStamp: number
    anomalyVisibilityTime: number
end

local record GetLogEventsInput
    logGroupName: string
    logGroupIdentifier: string
    logStreamName: string
    startTime: number
    endTime: number
    nextToken: string
    limit: number
    startFromHead: boolean
    unmask: boolean
end

local record GetLogEventsOutput
    events: {OutputLogEvent}
    nextForwardToken: string
    nextBackwardToken: string
end

local record GetLogFieldsInput
    dataSourceName: string
    dataSourceType: string
end

local record GetLogFieldsOutput
    logFields: {LogFieldsListItem}
end

local record GetLogGroupFieldsInput
    logGroupName: string
    time: number
    logGroupIdentifier: string
end

local record GetLogGroupFieldsOutput
    logGroupFields: {LogGroupField}
end

local record GetLogObjectInput
    unmask: boolean
    logObjectPointer: string
end

local record GetLogObjectOutput
    fieldStream: GetLogObjectResponseStream
end

local record GetLogRecordInput
    logRecordPointer: string
    unmask: boolean
end

local record GetLogRecordOutput
    logRecord: {string : string}
end

local record GetLookupTableInput
    lookupTableArn: string
end

local record GetLookupTableOutput
    lookupTableArn: string
    lookupTableName: string
    description: string
    tableBody: string
    sizeBytes: number
    lastUpdatedTime: number
    kmsKeyId: string
end

local record GetQueryResultsInput
    queryId: string
    nextToken: string
    maxItems: number
end

local record GetQueryResultsOutput
    queryLanguage: string
    results: {{ResultField}}
    statistics: QueryStatistics
    status: string
    encryptionKey: string
    nextToken: string
end

local record GetScheduledQueryInput
    identifier: string
end

local record GetScheduledQueryOutput
    scheduledQueryArn: string
    name: string
    description: string
    queryLanguage: string
    queryString: string
    logGroupIdentifiers: {string}
    scheduleExpression: string
    timezone: string
    startTimeOffset: number
    destinationConfiguration: DestinationConfiguration
    state: string
    lastTriggeredTime: number
    lastExecutionStatus: string
    scheduleStartTime: number
    scheduleEndTime: number
    executionRoleArn: string
    creationTime: number
    lastUpdatedTime: number
end

local record GetScheduledQueryHistoryInput
    identifier: string
    startTime: number
    endTime: number
    executionStatuses: {string}
    maxResults: number
    nextToken: string
end

local record GetScheduledQueryHistoryOutput
    name: string
    scheduledQueryArn: string
    triggerHistory: {TriggerHistoryRecord}
    nextToken: string
end

local record GetTransformerInput
    logGroupIdentifier: string
end

local record GetTransformerOutput
    logGroupIdentifier: string
    creationTime: number
    lastModifiedTime: number
    transformerConfig: {Processor}
end

local record ListAggregateLogGroupSummariesInput
    accountIdentifiers: {string}
    includeLinkedAccounts: boolean
    logGroupClass: string
    logGroupNamePattern: string
    dataSources: {DataSourceFilter}
    groupBy: string
    nextToken: string
    limit: number
end

local record ListAggregateLogGroupSummariesOutput
    aggregateLogGroupSummaries: {AggregateLogGroupSummary}
    nextToken: string
end

local record ListAnomaliesInput
    anomalyDetectorArn: string
    suppressionState: string
    limit: number
    nextToken: string
end

local record ListAnomaliesOutput
    anomalies: {Anomaly}
    nextToken: string
end

local record ListIntegrationsInput
    integrationNamePrefix: string
    integrationType: string
    integrationStatus: string
end

local record ListIntegrationsOutput
    integrationSummaries: {IntegrationSummary}
end

local record ListLogAnomalyDetectorsInput
    filterLogGroupArn: string
    limit: number
    nextToken: string
end

local record ListLogAnomalyDetectorsOutput
    anomalyDetectors: {AnomalyDetector}
    nextToken: string
end

local record ListLogGroupsInput
    logGroupNamePattern: string
    logGroupClass: string
    includeLinkedAccounts: boolean
    accountIdentifiers: {string}
    nextToken: string
    limit: number
    dataSources: {DataSourceFilter}
    fieldIndexNames: {string}
    logGroupTags: {TagFilter}
end

local record ListLogGroupsOutput
    logGroups: {LogGroupSummary}
    nextToken: string
end

local record ListLogGroupsForQueryInput
    queryId: string
    nextToken: string
    maxResults: number
end

local record ListLogGroupsForQueryOutput
    logGroupIdentifiers: {string}
    nextToken: string
end

local record ListScheduledQueriesInput
    maxResults: number
    nextToken: string
    state: string
end

local record ListScheduledQueriesOutput
    nextToken: string
    scheduledQueries: {ScheduledQuerySummary}
end

local record ListSourcesForS3TableIntegrationInput
    integrationArn: string
    maxResults: number
    nextToken: string
end

local record ListSourcesForS3TableIntegrationOutput
    sources: {S3TableIntegrationSource}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTagsLogGroupInput
    logGroupName: string
end

local record ListTagsLogGroupOutput
    tags: {string : string}
end

local record PutAccountPolicyInput
    policyName: string
    policyDocument: string
    policyType: string
    scope: string
    selectionCriteria: string
end

local record PutAccountPolicyOutput
    accountPolicy: AccountPolicy
end

local record PutBearerTokenAuthenticationInput
    logGroupIdentifier: string
    bearerTokenAuthenticationEnabled: boolean
end

local record PutBearerTokenAuthenticationOutput
end

local record PutDataProtectionPolicyInput
    logGroupIdentifier: string
    policyDocument: string
end

local record PutDataProtectionPolicyOutput
    logGroupIdentifier: string
    policyDocument: string
    lastUpdatedTime: number
end

local record PutDeliveryDestinationInput
    name: string
    outputFormat: string
    deliveryDestinationConfiguration: DeliveryDestinationConfiguration
    deliveryDestinationType: string
    tags: {string : string}
end

local record PutDeliveryDestinationOutput
    deliveryDestination: DeliveryDestination
end

local record PutDeliveryDestinationPolicyInput
    deliveryDestinationName: string
    deliveryDestinationPolicy: string
end

local record PutDeliveryDestinationPolicyOutput
    policy: Policy
end

local record PutDeliverySourceInput
    name: string
    resourceArn: string
    logType: string
    tags: {string : string}
    deliverySourceConfiguration: {string : string}
end

local record PutDeliverySourceOutput
    deliverySource: DeliverySource
end

local record PutDestinationInput
    destinationName: string
    targetArn: string
    roleArn: string
    tags: {string : string}
end

local record PutDestinationOutput
    destination: Destination
end

local record PutDestinationPolicyInput
    destinationName: string
    accessPolicy: string
    forceUpdate: boolean
end

local record PutDestinationPolicyOutput
end

local record PutIndexPolicyInput
    logGroupIdentifier: string
    policyDocument: string
end

local record PutIndexPolicyOutput
    indexPolicy: IndexPolicy
end

local record PutIntegrationInput
    integrationName: string
    resourceConfig: ResourceConfig
    integrationType: string
end

local record PutIntegrationOutput
    integrationName: string
    integrationStatus: string
end

local record PutLogEventsInput
    logGroupName: string
    logStreamName: string
    logEvents: {InputLogEvent}
    sequenceToken: string
    entity: Entity
end

local record PutLogEventsOutput
    nextSequenceToken: string
    rejectedLogEventsInfo: RejectedLogEventsInfo
    rejectedEntityInfo: RejectedEntityInfo
end

local record PutLogGroupDeletionProtectionInput
    logGroupIdentifier: string
    deletionProtectionEnabled: boolean
end

local record PutLogGroupDeletionProtectionOutput
end

local record PutMetricFilterInput
    logGroupName: string
    filterName: string
    filterPattern: string
    metricTransformations: {MetricTransformation}
    applyOnTransformedLogs: boolean
    fieldSelectionCriteria: string
    emitSystemFieldDimensions: {string}
end

local record PutMetricFilterOutput
end

local record PutQueryDefinitionInput
    queryLanguage: string
    name: string
    queryDefinitionId: string
    logGroupNames: {string}
    queryString: string
    clientToken: string
    parameters: {QueryParameter}
end

local record PutQueryDefinitionOutput
    queryDefinitionId: string
end

local record PutResourcePolicyInput
    policyName: string
    policyDocument: string
    resourceArn: string
    expectedRevisionId: string
end

local record PutResourcePolicyOutput
    resourcePolicy: ResourcePolicy
    revisionId: string
end

local record PutRetentionPolicyInput
    logGroupName: string
    retentionInDays: number
end

local record PutRetentionPolicyOutput
end

local record PutSubscriptionFilterInput
    logGroupName: string
    filterName: string
    filterPattern: string
    destinationArn: string
    roleArn: string
    distribution: string
    applyOnTransformedLogs: boolean
    fieldSelectionCriteria: string
    emitSystemFields: {string}
end

local record PutSubscriptionFilterOutput
end

local record PutTransformerInput
    logGroupIdentifier: string
    transformerConfig: {Processor}
end

local record PutTransformerOutput
end

local record StartLiveTailInput
    logGroupIdentifiers: {string}
    logStreamNames: {string}
    logStreamNamePrefixes: {string}
    logEventFilterPattern: string
end

local record StartLiveTailOutput
    responseStream: StartLiveTailResponseStream
end

local record StartQueryInput
    queryLanguage: string
    logGroupName: string
    logGroupNames: {string}
    logGroupIdentifiers: {string}
    startTime: number
    endTime: number
    queryString: string
    limit: number
end

local record StartQueryOutput
    queryId: string
end

local record StopQueryInput
    queryId: string
end

local record StopQueryOutput
    success: boolean
end

local record TagLogGroupInput
    logGroupName: string
    tags: {string : string}
end

local record TagLogGroupOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record TestMetricFilterInput
    filterPattern: string
    logEventMessages: {string}
end

local record TestMetricFilterOutput
    matches: {MetricFilterMatchRecord}
end

local record TestTransformerInput
    transformerConfig: {Processor}
    logEventMessages: {string}
end

local record TestTransformerOutput
    transformedLogs: {TransformedLogRecord}
end

local record UntagLogGroupInput
    logGroupName: string
    tags: {string}
end

local record UntagLogGroupOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAnomalyInput
    anomalyId: string
    patternId: string
    anomalyDetectorArn: string
    suppressionType: string
    suppressionPeriod: SuppressionPeriod
    baseline: boolean
end

local record UpdateAnomalyOutput
end

local record UpdateDeliveryConfigurationInput
    id: string
    recordFields: {string}
    fieldDelimiter: string
    s3DeliveryConfiguration: S3DeliveryConfiguration
end

local record UpdateDeliveryConfigurationOutput
end

local record UpdateLogAnomalyDetectorInput
    anomalyDetectorArn: string
    evaluationFrequency: string
    filterPattern: string
    anomalyVisibilityTime: number
    enabled: boolean
end

local record UpdateLogAnomalyDetectorOutput
end

local record UpdateLookupTableInput
    lookupTableArn: string
    description: string
    tableBody: string
    kmsKeyId: string
end

local record UpdateLookupTableOutput
    lookupTableArn: string
    lastUpdatedTime: number
end

local record UpdateScheduledQueryInput
    identifier: string
    description: string
    queryLanguage: string
    queryString: string
    logGroupIdentifiers: {string}
    scheduleExpression: string
    timezone: string
    startTimeOffset: number
    destinationConfiguration: DestinationConfiguration
    scheduleStartTime: number
    scheduleEndTime: number
    executionRoleArn: string
    state: string
end

local record UpdateScheduledQueryOutput
    scheduledQueryArn: string
    name: string
    description: string
    queryLanguage: string
    queryString: string
    logGroupIdentifiers: {string}
    scheduleExpression: string
    timezone: string
    startTimeOffset: number
    destinationConfiguration: DestinationConfiguration
    state: string
    lastTriggeredTime: number
    lastExecutionStatus: string
    scheduleStartTime: number
    scheduleEndTime: number
    executionRoleArn: string
    creationTime: number
    lastUpdatedTime: number
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
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

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ServiceUnavailableException
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ValidationException
    message: string
end

local record DataAlreadyAcceptedException
    expectedSequenceToken: string
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidSequenceTokenException
    expectedSequenceToken: string
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnrecognizedClientException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record MalformedQueryException
    queryCompileError: QueryCompileError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationAbortedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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

local type LogGroupClass = "STANDARD" | "INFREQUENT_ACCESS" | "DELIVERY"

local type IntegrationType = "OPENSEARCH"

local type ImportStatus = "IN_PROGRESS" | "CANCELLED" | "COMPLETED" | "FAILED"

local type DeliveryDestinationType = "S3" | "CWL" | "FH" | "XRAY"

local type ScheduledQueryState = "ENABLED" | "DISABLED"

local type QueryLanguage = "CWLI" | "SQL" | "PPL"

local type OutputFormat = "json" | "plain" | "w3c" | "raw" | "parquet"

local type OrderBy = "LogStreamName" | "LastEventTime"

local type SuppressionType = "LIMITED" | "INFINITE"

local type PolicyType = "DATA_PROTECTION_POLICY" | "SUBSCRIPTION_FILTER_POLICY" | "FIELD_INDEX_POLICY" | "TRANSFORMER_POLICY" | "METRIC_EXTRACTION_POLICY"

local type SuppressionState = "SUPPRESSED" | "UNSUPPRESSED"

local type PolicyScope = "ACCOUNT" | "RESOURCE"

local type ExecutionStatus = "Running" | "InvalidQuery" | "Complete" | "Failed" | "Timeout"

local type QueryStatus = "Scheduled" | "Running" | "Complete" | "Failed" | "Cancelled" | "Timeout" | "Unknown"

local type ListAggregateLogGroupSummariesGroupBy = "DATA_SOURCE_NAME_TYPE_AND_FORMAT" | "DATA_SOURCE_NAME_AND_TYPE"

local type AnomalyDetectorStatus = "INITIALIZING" | "TRAINING" | "ANALYZING" | "FAILED" | "DELETED" | "PAUSED"

local type IntegrationStatus = "PROVISIONING" | "ACTIVE" | "FAILED"

local type Scope = "ALL"

local type EvaluationFrequency = "ONE_MIN" | "FIVE_MIN" | "TEN_MIN" | "FIFTEEN_MIN" | "THIRTY_MIN" | "ONE_HOUR"

local type Distribution = "Random" | "ByLogStream"

local type ExportTaskStatusCode = "CANCELLED" | "COMPLETED" | "FAILED" | "PENDING" | "PENDING_CANCEL" | "RUNNING"

local record M
    AssociateKmsKeyInput: AssociateKmsKeyInput
    AssociateKmsKeyOutput: AssociateKmsKeyOutput
    AssociateSourceToS3TableIntegrationInput: AssociateSourceToS3TableIntegrationInput
    AssociateSourceToS3TableIntegrationOutput: AssociateSourceToS3TableIntegrationOutput
    CancelExportTaskInput: CancelExportTaskInput
    CancelExportTaskOutput: CancelExportTaskOutput
    CancelImportTaskInput: CancelImportTaskInput
    CancelImportTaskOutput: CancelImportTaskOutput
    CreateDeliveryInput: CreateDeliveryInput
    CreateDeliveryOutput: CreateDeliveryOutput
    CreateExportTaskInput: CreateExportTaskInput
    CreateExportTaskOutput: CreateExportTaskOutput
    CreateImportTaskInput: CreateImportTaskInput
    CreateImportTaskOutput: CreateImportTaskOutput
    CreateLogAnomalyDetectorInput: CreateLogAnomalyDetectorInput
    CreateLogAnomalyDetectorOutput: CreateLogAnomalyDetectorOutput
    CreateLogGroupInput: CreateLogGroupInput
    CreateLogGroupOutput: CreateLogGroupOutput
    CreateLogStreamInput: CreateLogStreamInput
    CreateLogStreamOutput: CreateLogStreamOutput
    CreateLookupTableInput: CreateLookupTableInput
    CreateLookupTableOutput: CreateLookupTableOutput
    CreateScheduledQueryInput: CreateScheduledQueryInput
    CreateScheduledQueryOutput: CreateScheduledQueryOutput
    DeleteAccountPolicyInput: DeleteAccountPolicyInput
    DeleteAccountPolicyOutput: DeleteAccountPolicyOutput
    DeleteDataProtectionPolicyInput: DeleteDataProtectionPolicyInput
    DeleteDataProtectionPolicyOutput: DeleteDataProtectionPolicyOutput
    DeleteDeliveryInput: DeleteDeliveryInput
    DeleteDeliveryOutput: DeleteDeliveryOutput
    DeleteDeliveryDestinationInput: DeleteDeliveryDestinationInput
    DeleteDeliveryDestinationOutput: DeleteDeliveryDestinationOutput
    DeleteDeliveryDestinationPolicyInput: DeleteDeliveryDestinationPolicyInput
    DeleteDeliveryDestinationPolicyOutput: DeleteDeliveryDestinationPolicyOutput
    DeleteDeliverySourceInput: DeleteDeliverySourceInput
    DeleteDeliverySourceOutput: DeleteDeliverySourceOutput
    DeleteDestinationInput: DeleteDestinationInput
    DeleteDestinationOutput: DeleteDestinationOutput
    DeleteIndexPolicyInput: DeleteIndexPolicyInput
    DeleteIndexPolicyOutput: DeleteIndexPolicyOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeleteLogAnomalyDetectorInput: DeleteLogAnomalyDetectorInput
    DeleteLogAnomalyDetectorOutput: DeleteLogAnomalyDetectorOutput
    DeleteLogGroupInput: DeleteLogGroupInput
    DeleteLogGroupOutput: DeleteLogGroupOutput
    DeleteLogStreamInput: DeleteLogStreamInput
    DeleteLogStreamOutput: DeleteLogStreamOutput
    DeleteLookupTableInput: DeleteLookupTableInput
    DeleteLookupTableOutput: DeleteLookupTableOutput
    DeleteMetricFilterInput: DeleteMetricFilterInput
    DeleteMetricFilterOutput: DeleteMetricFilterOutput
    DeleteQueryDefinitionInput: DeleteQueryDefinitionInput
    DeleteQueryDefinitionOutput: DeleteQueryDefinitionOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteRetentionPolicyInput: DeleteRetentionPolicyInput
    DeleteRetentionPolicyOutput: DeleteRetentionPolicyOutput
    DeleteScheduledQueryInput: DeleteScheduledQueryInput
    DeleteScheduledQueryOutput: DeleteScheduledQueryOutput
    DeleteSubscriptionFilterInput: DeleteSubscriptionFilterInput
    DeleteSubscriptionFilterOutput: DeleteSubscriptionFilterOutput
    DeleteTransformerInput: DeleteTransformerInput
    DeleteTransformerOutput: DeleteTransformerOutput
    DescribeAccountPoliciesInput: DescribeAccountPoliciesInput
    DescribeAccountPoliciesOutput: DescribeAccountPoliciesOutput
    DescribeConfigurationTemplatesInput: DescribeConfigurationTemplatesInput
    DescribeConfigurationTemplatesOutput: DescribeConfigurationTemplatesOutput
    DescribeDeliveriesInput: DescribeDeliveriesInput
    DescribeDeliveriesOutput: DescribeDeliveriesOutput
    DescribeDeliveryDestinationsInput: DescribeDeliveryDestinationsInput
    DescribeDeliveryDestinationsOutput: DescribeDeliveryDestinationsOutput
    DescribeDeliverySourcesInput: DescribeDeliverySourcesInput
    DescribeDeliverySourcesOutput: DescribeDeliverySourcesOutput
    DescribeDestinationsInput: DescribeDestinationsInput
    DescribeDestinationsOutput: DescribeDestinationsOutput
    DescribeExportTasksInput: DescribeExportTasksInput
    DescribeExportTasksOutput: DescribeExportTasksOutput
    DescribeFieldIndexesInput: DescribeFieldIndexesInput
    DescribeFieldIndexesOutput: DescribeFieldIndexesOutput
    DescribeImportTaskBatchesInput: DescribeImportTaskBatchesInput
    DescribeImportTaskBatchesOutput: DescribeImportTaskBatchesOutput
    DescribeImportTasksInput: DescribeImportTasksInput
    DescribeImportTasksOutput: DescribeImportTasksOutput
    DescribeIndexPoliciesInput: DescribeIndexPoliciesInput
    DescribeIndexPoliciesOutput: DescribeIndexPoliciesOutput
    DescribeLogGroupsInput: DescribeLogGroupsInput
    DescribeLogGroupsOutput: DescribeLogGroupsOutput
    DescribeLogStreamsInput: DescribeLogStreamsInput
    DescribeLogStreamsOutput: DescribeLogStreamsOutput
    DescribeLookupTablesInput: DescribeLookupTablesInput
    DescribeLookupTablesOutput: DescribeLookupTablesOutput
    DescribeMetricFiltersInput: DescribeMetricFiltersInput
    DescribeMetricFiltersOutput: DescribeMetricFiltersOutput
    DescribeQueriesInput: DescribeQueriesInput
    DescribeQueriesOutput: DescribeQueriesOutput
    DescribeQueryDefinitionsInput: DescribeQueryDefinitionsInput
    DescribeQueryDefinitionsOutput: DescribeQueryDefinitionsOutput
    DescribeResourcePoliciesInput: DescribeResourcePoliciesInput
    DescribeResourcePoliciesOutput: DescribeResourcePoliciesOutput
    DescribeSubscriptionFiltersInput: DescribeSubscriptionFiltersInput
    DescribeSubscriptionFiltersOutput: DescribeSubscriptionFiltersOutput
    DisassociateKmsKeyInput: DisassociateKmsKeyInput
    DisassociateKmsKeyOutput: DisassociateKmsKeyOutput
    DisassociateSourceFromS3TableIntegrationInput: DisassociateSourceFromS3TableIntegrationInput
    DisassociateSourceFromS3TableIntegrationOutput: DisassociateSourceFromS3TableIntegrationOutput
    FilterLogEventsInput: FilterLogEventsInput
    FilterLogEventsOutput: FilterLogEventsOutput
    GetDataProtectionPolicyInput: GetDataProtectionPolicyInput
    GetDataProtectionPolicyOutput: GetDataProtectionPolicyOutput
    GetDeliveryInput: GetDeliveryInput
    GetDeliveryOutput: GetDeliveryOutput
    GetDeliveryDestinationInput: GetDeliveryDestinationInput
    GetDeliveryDestinationOutput: GetDeliveryDestinationOutput
    GetDeliveryDestinationPolicyInput: GetDeliveryDestinationPolicyInput
    GetDeliveryDestinationPolicyOutput: GetDeliveryDestinationPolicyOutput
    GetDeliverySourceInput: GetDeliverySourceInput
    GetDeliverySourceOutput: GetDeliverySourceOutput
    GetIntegrationInput: GetIntegrationInput
    GetIntegrationOutput: GetIntegrationOutput
    GetLogAnomalyDetectorInput: GetLogAnomalyDetectorInput
    GetLogAnomalyDetectorOutput: GetLogAnomalyDetectorOutput
    GetLogEventsInput: GetLogEventsInput
    GetLogEventsOutput: GetLogEventsOutput
    GetLogFieldsInput: GetLogFieldsInput
    GetLogFieldsOutput: GetLogFieldsOutput
    GetLogGroupFieldsInput: GetLogGroupFieldsInput
    GetLogGroupFieldsOutput: GetLogGroupFieldsOutput
    GetLogObjectInput: GetLogObjectInput
    GetLogObjectOutput: GetLogObjectOutput
    GetLogRecordInput: GetLogRecordInput
    GetLogRecordOutput: GetLogRecordOutput
    GetLookupTableInput: GetLookupTableInput
    GetLookupTableOutput: GetLookupTableOutput
    GetQueryResultsInput: GetQueryResultsInput
    GetQueryResultsOutput: GetQueryResultsOutput
    GetScheduledQueryInput: GetScheduledQueryInput
    GetScheduledQueryOutput: GetScheduledQueryOutput
    GetScheduledQueryHistoryInput: GetScheduledQueryHistoryInput
    GetScheduledQueryHistoryOutput: GetScheduledQueryHistoryOutput
    GetTransformerInput: GetTransformerInput
    GetTransformerOutput: GetTransformerOutput
    ListAggregateLogGroupSummariesInput: ListAggregateLogGroupSummariesInput
    ListAggregateLogGroupSummariesOutput: ListAggregateLogGroupSummariesOutput
    ListAnomaliesInput: ListAnomaliesInput
    ListAnomaliesOutput: ListAnomaliesOutput
    ListIntegrationsInput: ListIntegrationsInput
    ListIntegrationsOutput: ListIntegrationsOutput
    ListLogAnomalyDetectorsInput: ListLogAnomalyDetectorsInput
    ListLogAnomalyDetectorsOutput: ListLogAnomalyDetectorsOutput
    ListLogGroupsInput: ListLogGroupsInput
    ListLogGroupsOutput: ListLogGroupsOutput
    ListLogGroupsForQueryInput: ListLogGroupsForQueryInput
    ListLogGroupsForQueryOutput: ListLogGroupsForQueryOutput
    ListScheduledQueriesInput: ListScheduledQueriesInput
    ListScheduledQueriesOutput: ListScheduledQueriesOutput
    ListSourcesForS3TableIntegrationInput: ListSourcesForS3TableIntegrationInput
    ListSourcesForS3TableIntegrationOutput: ListSourcesForS3TableIntegrationOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTagsLogGroupInput: ListTagsLogGroupInput
    ListTagsLogGroupOutput: ListTagsLogGroupOutput
    PutAccountPolicyInput: PutAccountPolicyInput
    PutAccountPolicyOutput: PutAccountPolicyOutput
    PutBearerTokenAuthenticationInput: PutBearerTokenAuthenticationInput
    PutBearerTokenAuthenticationOutput: PutBearerTokenAuthenticationOutput
    PutDataProtectionPolicyInput: PutDataProtectionPolicyInput
    PutDataProtectionPolicyOutput: PutDataProtectionPolicyOutput
    PutDeliveryDestinationInput: PutDeliveryDestinationInput
    PutDeliveryDestinationOutput: PutDeliveryDestinationOutput
    PutDeliveryDestinationPolicyInput: PutDeliveryDestinationPolicyInput
    PutDeliveryDestinationPolicyOutput: PutDeliveryDestinationPolicyOutput
    PutDeliverySourceInput: PutDeliverySourceInput
    PutDeliverySourceOutput: PutDeliverySourceOutput
    PutDestinationInput: PutDestinationInput
    PutDestinationOutput: PutDestinationOutput
    PutDestinationPolicyInput: PutDestinationPolicyInput
    PutDestinationPolicyOutput: PutDestinationPolicyOutput
    PutIndexPolicyInput: PutIndexPolicyInput
    PutIndexPolicyOutput: PutIndexPolicyOutput
    PutIntegrationInput: PutIntegrationInput
    PutIntegrationOutput: PutIntegrationOutput
    PutLogEventsInput: PutLogEventsInput
    PutLogEventsOutput: PutLogEventsOutput
    PutLogGroupDeletionProtectionInput: PutLogGroupDeletionProtectionInput
    PutLogGroupDeletionProtectionOutput: PutLogGroupDeletionProtectionOutput
    PutMetricFilterInput: PutMetricFilterInput
    PutMetricFilterOutput: PutMetricFilterOutput
    PutQueryDefinitionInput: PutQueryDefinitionInput
    PutQueryDefinitionOutput: PutQueryDefinitionOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    PutRetentionPolicyInput: PutRetentionPolicyInput
    PutRetentionPolicyOutput: PutRetentionPolicyOutput
    PutSubscriptionFilterInput: PutSubscriptionFilterInput
    PutSubscriptionFilterOutput: PutSubscriptionFilterOutput
    PutTransformerInput: PutTransformerInput
    PutTransformerOutput: PutTransformerOutput
    StartLiveTailInput: StartLiveTailInput
    StartLiveTailOutput: StartLiveTailOutput
    StartQueryInput: StartQueryInput
    StartQueryOutput: StartQueryOutput
    StopQueryInput: StopQueryInput
    StopQueryOutput: StopQueryOutput
    TagLogGroupInput: TagLogGroupInput
    TagLogGroupOutput: TagLogGroupOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestMetricFilterInput: TestMetricFilterInput
    TestMetricFilterOutput: TestMetricFilterOutput
    TestTransformerInput: TestTransformerInput
    TestTransformerOutput: TestTransformerOutput
    UntagLogGroupInput: UntagLogGroupInput
    UntagLogGroupOutput: UntagLogGroupOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAnomalyInput: UpdateAnomalyInput
    UpdateAnomalyOutput: UpdateAnomalyOutput
    UpdateDeliveryConfigurationInput: UpdateDeliveryConfigurationInput
    UpdateDeliveryConfigurationOutput: UpdateDeliveryConfigurationOutput
    UpdateLogAnomalyDetectorInput: UpdateLogAnomalyDetectorInput
    UpdateLogAnomalyDetectorOutput: UpdateLogAnomalyDetectorOutput
    UpdateLookupTableInput: UpdateLookupTableInput
    UpdateLookupTableOutput: UpdateLookupTableOutput
    UpdateScheduledQueryInput: UpdateScheduledQueryInput
    UpdateScheduledQueryOutput: UpdateScheduledQueryOutput
end

return M
