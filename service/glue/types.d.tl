local record BatchCreatePartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionInputList: {PartitionInput}
end

local record BatchCreatePartitionOutput
    Errors: {PartitionError}
end

local record BatchDeleteConnectionInput
    CatalogId: string
    ConnectionNameList: {string}
end

local record BatchDeleteConnectionOutput
    Succeeded: {string}
    Errors: {string : ErrorDetail}
end

local record BatchDeletePartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionsToDelete: {PartitionValueList}
end

local record BatchDeletePartitionOutput
    Errors: {PartitionError}
end

local record BatchDeleteTableInput
    CatalogId: string
    DatabaseName: string
    TablesToDelete: {string}
    TransactionId: string
end

local record BatchDeleteTableOutput
    Errors: {TableError}
end

local record BatchDeleteTableVersionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    VersionIds: {string}
end

local record BatchDeleteTableVersionOutput
    Errors: {TableVersionError}
end

local record BatchGetBlueprintsInput
    Names: {string}
    IncludeBlueprint: boolean
    IncludeParameterSpec: boolean
end

local record BatchGetBlueprintsOutput
    Blueprints: {Blueprint}
    MissingBlueprints: {string}
end

local record BatchGetCrawlersInput
    CrawlerNames: {string}
end

local record BatchGetCrawlersOutput
    Crawlers: {Crawler}
    CrawlersNotFound: {string}
end

local record BatchGetCustomEntityTypesInput
    Names: {string}
end

local record BatchGetCustomEntityTypesOutput
    CustomEntityTypes: {CustomEntityType}
    CustomEntityTypesNotFound: {string}
end

local record BatchGetDataQualityResultInput
    ResultIds: {string}
end

local record BatchGetDataQualityResultOutput
    Results: {DataQualityResult}
    ResultsNotFound: {string}
end

local record BatchGetDevEndpointsInput
    DevEndpointNames: {string}
end

local record BatchGetDevEndpointsOutput
    DevEndpoints: {DevEndpoint}
    DevEndpointsNotFound: {string}
end

local record BatchGetJobsInput
    JobNames: {string}
end

local record BatchGetJobsOutput
    Jobs: {Job}
    JobsNotFound: {string}
end

local record BatchGetPartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionsToGet: {PartitionValueList}
    AuditContext: AuditContext
    QuerySessionContext: QuerySessionContext
end

local record BatchGetPartitionOutput
    Partitions: {Partition}
    UnprocessedKeys: {PartitionValueList}
end

local record BatchGetTableOptimizerInput
    Entries: {BatchGetTableOptimizerEntry}
end

local record BatchGetTableOptimizerOutput
    TableOptimizers: {BatchTableOptimizer}
    Failures: {BatchGetTableOptimizerError}
end

local record BatchGetTriggersInput
    TriggerNames: {string}
end

local record BatchGetTriggersOutput
    Triggers: {Trigger}
    TriggersNotFound: {string}
end

local record BatchGetWorkflowsInput
    Names: {string}
    IncludeGraph: boolean
end

local record BatchGetWorkflowsOutput
    Workflows: {Workflow}
    MissingWorkflows: {string}
end

local record BatchPutDataQualityStatisticAnnotationInput
    InclusionAnnotations: {DatapointInclusionAnnotation}
    ClientToken: string
end

local record BatchPutDataQualityStatisticAnnotationOutput
    FailedInclusionAnnotations: {AnnotationError}
end

local record BatchStopJobRunInput
    JobName: string
    JobRunIds: {string}
end

local record BatchStopJobRunOutput
    SuccessfulSubmissions: {BatchStopJobRunSuccessfulSubmission}
    Errors: {BatchStopJobRunError}
end

local record BatchUpdatePartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    Entries: {BatchUpdatePartitionRequestEntry}
end

local record BatchUpdatePartitionOutput
    Errors: {BatchUpdatePartitionFailureEntry}
end

local record CancelDataQualityRuleRecommendationRunInput
    RunId: string
end

local record CancelDataQualityRuleRecommendationRunOutput
end

local record CancelDataQualityRulesetEvaluationRunInput
    RunId: string
end

local record CancelDataQualityRulesetEvaluationRunOutput
end

local record CancelMLTaskRunInput
    TransformId: string
    TaskRunId: string
end

local record CancelMLTaskRunOutput
    TransformId: string
    TaskRunId: string
    Status: string
end

local record CancelStatementInput
    SessionId: string
    Id: number
    RequestOrigin: string
end

local record CancelStatementOutput
end

local record CheckSchemaVersionValidityInput
    DataFormat: string
    SchemaDefinition: string
end

local record CheckSchemaVersionValidityOutput
    Valid: boolean
    Error: string
end

local record CreateBlueprintInput
    Name: string
    Description: string
    BlueprintLocation: string
    Tags: {string : string}
end

local record CreateBlueprintOutput
    Name: string
end

local record CreateCatalogInput
    Name: string
    CatalogInput: CatalogInput
    Tags: {string : string}
end

local record CreateCatalogOutput
end

local record CreateClassifierInput
    GrokClassifier: CreateGrokClassifierRequest
    XMLClassifier: CreateXMLClassifierRequest
    JsonClassifier: CreateJsonClassifierRequest
    CsvClassifier: CreateCsvClassifierRequest
end

local record CreateClassifierOutput
end

local record CreateColumnStatisticsTaskSettingsInput
    DatabaseName: string
    TableName: string
    Role: string
    Schedule: string
    ColumnNameList: {string}
    SampleSize: number
    CatalogID: string
    SecurityConfiguration: string
    Tags: {string : string}
end

local record CreateColumnStatisticsTaskSettingsOutput
end

local record CreateConnectionInput
    CatalogId: string
    ConnectionInput: ConnectionInput
    Tags: {string : string}
end

local record CreateConnectionOutput
    CreateConnectionStatus: string
end

local record CreateCrawlerInput
    Name: string
    Role: string
    DatabaseName: string
    Description: string
    Targets: CrawlerTargets
    Schedule: string
    Classifiers: {string}
    TablePrefix: string
    SchemaChangePolicy: SchemaChangePolicy
    RecrawlPolicy: RecrawlPolicy
    LineageConfiguration: LineageConfiguration
    LakeFormationConfiguration: LakeFormationConfiguration
    Configuration: string
    CrawlerSecurityConfiguration: string
    Tags: {string : string}
end

local record CreateCrawlerOutput
end

local record CreateCustomEntityTypeInput
    Name: string
    RegexString: string
    ContextWords: {string}
    Tags: {string : string}
end

local record CreateCustomEntityTypeOutput
    Name: string
end

local record CreateDatabaseInput
    CatalogId: string
    DatabaseInput: DatabaseInput
    Tags: {string : string}
end

local record CreateDatabaseOutput
end

local record CreateDataQualityRulesetInput
    Name: string
    Description: string
    Ruleset: string
    Tags: {string : string}
    TargetTable: DataQualityTargetTable
    DataQualitySecurityConfiguration: string
    ClientToken: string
end

local record CreateDataQualityRulesetOutput
    Name: string
end

local record CreateDevEndpointInput
    EndpointName: string
    RoleArn: string
    SecurityGroupIds: {string}
    SubnetId: string
    PublicKey: string
    PublicKeys: {string}
    NumberOfNodes: number
    WorkerType: string
    GlueVersion: string
    NumberOfWorkers: number
    ExtraPythonLibsS3Path: string
    ExtraJarsS3Path: string
    SecurityConfiguration: string
    Tags: {string : string}
    Arguments: {string : string}
end

local record CreateDevEndpointOutput
    EndpointName: string
    Status: string
    SecurityGroupIds: {string}
    SubnetId: string
    RoleArn: string
    YarnEndpointAddress: string
    ZeppelinRemoteSparkInterpreterPort: number
    NumberOfNodes: number
    WorkerType: string
    GlueVersion: string
    NumberOfWorkers: number
    AvailabilityZone: string
    VpcId: string
    ExtraPythonLibsS3Path: string
    ExtraJarsS3Path: string
    FailureReason: string
    SecurityConfiguration: string
    CreatedTimestamp: number
    Arguments: {string : string}
end

local record CreateGlueIdentityCenterConfigurationInput
    InstanceArn: string
    Scopes: {string}
    UserBackgroundSessionsEnabled: boolean
end

local record CreateGlueIdentityCenterConfigurationOutput
    ApplicationArn: string
end

local record CreateIntegrationInput
    IntegrationName: string
    SourceArn: string
    TargetArn: string
    Description: string
    DataFilter: string
    KmsKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
    IntegrationConfig: IntegrationConfig
end

local record CreateIntegrationOutput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    Description: string
    IntegrationArn: string
    KmsKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
    Status: string
    CreateTime: number
    Errors: {IntegrationError}
    DataFilter: string
    IntegrationConfig: IntegrationConfig
end

local record CreateIntegrationResourcePropertyInput
    ResourceArn: string
    SourceProcessingProperties: SourceProcessingProperties
    TargetProcessingProperties: TargetProcessingProperties
    Tags: {Tag}
end

local record CreateIntegrationResourcePropertyOutput
    ResourceArn: string
    ResourcePropertyArn: string
    SourceProcessingProperties: SourceProcessingProperties
    TargetProcessingProperties: TargetProcessingProperties
end

local record CreateIntegrationTablePropertiesInput
    ResourceArn: string
    TableName: string
    SourceTableConfig: SourceTableConfig
    TargetTableConfig: TargetTableConfig
end

local record CreateIntegrationTablePropertiesOutput
end

local record CreateJobInput
    Name: string
    JobMode: string
    JobRunQueuingEnabled: boolean
    Description: string
    LogUri: string
    Role: string
    ExecutionProperty: ExecutionProperty
    Command: JobCommand
    DefaultArguments: {string : string}
    NonOverridableArguments: {string : string}
    Connections: ConnectionsList
    MaxRetries: number
    AllocatedCapacity: number
    Timeout: number
    MaxCapacity: number
    SecurityConfiguration: string
    Tags: {string : string}
    NotificationProperty: NotificationProperty
    GlueVersion: string
    NumberOfWorkers: number
    WorkerType: string
    CodeGenConfigurationNodes: {string : CodeGenConfigurationNode}
    ExecutionClass: string
    SourceControlDetails: SourceControlDetails
    MaintenanceWindow: string
end

local record CreateJobOutput
    Name: string
end

local record CreateMLTransformInput
    Name: string
    Description: string
    InputRecordTables: {GlueTable}
    Parameters: TransformParameters
    Role: string
    GlueVersion: string
    MaxCapacity: number
    WorkerType: string
    NumberOfWorkers: number
    Timeout: number
    MaxRetries: number
    Tags: {string : string}
    TransformEncryption: TransformEncryption
end

local record CreateMLTransformOutput
    TransformId: string
end

local record CreatePartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionInput: PartitionInput
end

local record CreatePartitionOutput
end

local record CreatePartitionIndexInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionIndex: PartitionIndex
end

local record CreatePartitionIndexOutput
end

local record CreateRegistryInput
    RegistryName: string
    Description: string
    Tags: {string : string}
end

local record CreateRegistryOutput
    RegistryArn: string
    RegistryName: string
    Description: string
    Tags: {string : string}
end

local record CreateSchemaInput
    RegistryId: RegistryId
    SchemaName: string
    DataFormat: string
    Compatibility: string
    Description: string
    Tags: {string : string}
    SchemaDefinition: string
end

local record CreateSchemaOutput
    RegistryName: string
    RegistryArn: string
    SchemaName: string
    SchemaArn: string
    Description: string
    DataFormat: string
    Compatibility: string
    SchemaCheckpoint: number
    LatestSchemaVersion: number
    NextSchemaVersion: number
    SchemaStatus: string
    Tags: {string : string}
    SchemaVersionId: string
    SchemaVersionStatus: string
end

local record CreateScriptInput
    DagNodes: {CodeGenNode}
    DagEdges: {CodeGenEdge}
    Language: string
end

local record CreateScriptOutput
    PythonScript: string
    ScalaCode: string
end

local record CreateSecurityConfigurationInput
    Name: string
    EncryptionConfiguration: EncryptionConfiguration
end

local record CreateSecurityConfigurationOutput
    Name: string
    CreatedTimestamp: number
end

local record CreateSessionInput
    Id: string
    Description: string
    Role: string
    Command: SessionCommand
    Timeout: number
    IdleTimeout: number
    DefaultArguments: {string : string}
    Connections: ConnectionsList
    MaxCapacity: number
    NumberOfWorkers: number
    WorkerType: string
    SecurityConfiguration: string
    GlueVersion: string
    Tags: {string : string}
    RequestOrigin: string
end

local record CreateSessionOutput
    Session: Session
end

local record CreateTableInput
    CatalogId: string
    DatabaseName: string
    Name: string
    TableInput: TableInput
    PartitionIndexes: {PartitionIndex}
    TransactionId: string
    OpenTableFormatInput: OpenTableFormatInput
end

local record CreateTableOutput
end

local record CreateTableOptimizerInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    Type: string
    TableOptimizerConfiguration: TableOptimizerConfiguration
end

local record CreateTableOptimizerOutput
end

local record CreateTriggerInput
    Name: string
    WorkflowName: string
    Type: string
    Schedule: string
    Predicate: Predicate
    Actions: {Action}
    Description: string
    StartOnCreation: boolean
    Tags: {string : string}
    EventBatchingCondition: EventBatchingCondition
end

local record CreateTriggerOutput
    Name: string
end

local record CreateUsageProfileInput
    Name: string
    Description: string
    Configuration: ProfileConfiguration
    Tags: {string : string}
end

local record CreateUsageProfileOutput
    Name: string
end

local record CreateUserDefinedFunctionInput
    CatalogId: string
    DatabaseName: string
    FunctionInput: UserDefinedFunctionInput
end

local record CreateUserDefinedFunctionOutput
end

local record CreateWorkflowInput
    Name: string
    Description: string
    DefaultRunProperties: {string : string}
    Tags: {string : string}
    MaxConcurrentRuns: number
end

local record CreateWorkflowOutput
    Name: string
end

local record DeleteBlueprintInput
    Name: string
end

local record DeleteBlueprintOutput
    Name: string
end

local record DeleteCatalogInput
    CatalogId: string
end

local record DeleteCatalogOutput
end

local record DeleteClassifierInput
    Name: string
end

local record DeleteClassifierOutput
end

local record DeleteColumnStatisticsForPartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionValues: {string}
    ColumnName: string
end

local record DeleteColumnStatisticsForPartitionOutput
end

local record DeleteColumnStatisticsForTableInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    ColumnName: string
end

local record DeleteColumnStatisticsForTableOutput
end

local record DeleteColumnStatisticsTaskSettingsInput
    DatabaseName: string
    TableName: string
end

local record DeleteColumnStatisticsTaskSettingsOutput
end

local record DeleteConnectionInput
    CatalogId: string
    ConnectionName: string
end

local record DeleteConnectionOutput
end

local record DeleteConnectionTypeInput
    ConnectionType: string
end

local record DeleteConnectionTypeOutput
end

local record DeleteCrawlerInput
    Name: string
end

local record DeleteCrawlerOutput
end

local record DeleteCustomEntityTypeInput
    Name: string
end

local record DeleteCustomEntityTypeOutput
    Name: string
end

local record DeleteDatabaseInput
    CatalogId: string
    Name: string
end

local record DeleteDatabaseOutput
end

local record DeleteDataQualityRulesetInput
    Name: string
end

local record DeleteDataQualityRulesetOutput
end

local record DeleteDevEndpointInput
    EndpointName: string
end

local record DeleteDevEndpointOutput
end

local record DeleteGlueIdentityCenterConfigurationInput
end

local record DeleteGlueIdentityCenterConfigurationOutput
end

local record DeleteIntegrationInput
    IntegrationIdentifier: string
end

local record DeleteIntegrationOutput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    Description: string
    IntegrationArn: string
    KmsKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
    Status: string
    CreateTime: number
    Errors: {IntegrationError}
    DataFilter: string
end

local record DeleteIntegrationResourcePropertyInput
    ResourceArn: string
end

local record DeleteIntegrationResourcePropertyOutput
end

local record DeleteIntegrationTablePropertiesInput
    ResourceArn: string
    TableName: string
end

local record DeleteIntegrationTablePropertiesOutput
end

local record DeleteJobInput
    JobName: string
end

local record DeleteJobOutput
    JobName: string
end

local record DeleteMLTransformInput
    TransformId: string
end

local record DeleteMLTransformOutput
    TransformId: string
end

local record DeletePartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionValues: {string}
end

local record DeletePartitionOutput
end

local record DeletePartitionIndexInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    IndexName: string
end

local record DeletePartitionIndexOutput
end

local record DeleteRegistryInput
    RegistryId: RegistryId
end

local record DeleteRegistryOutput
    RegistryName: string
    RegistryArn: string
    Status: string
end

local record DeleteResourcePolicyInput
    PolicyHashCondition: string
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteSchemaInput
    SchemaId: SchemaId
end

local record DeleteSchemaOutput
    SchemaArn: string
    SchemaName: string
    Status: string
end

local record DeleteSchemaVersionsInput
    SchemaId: SchemaId
    Versions: string
end

local record DeleteSchemaVersionsOutput
    SchemaVersionErrors: {SchemaVersionErrorItem}
end

local record DeleteSecurityConfigurationInput
    Name: string
end

local record DeleteSecurityConfigurationOutput
end

local record DeleteSessionInput
    Id: string
    RequestOrigin: string
end

local record DeleteSessionOutput
    Id: string
end

local record DeleteTableInput
    CatalogId: string
    DatabaseName: string
    Name: string
    TransactionId: string
end

local record DeleteTableOutput
end

local record DeleteTableOptimizerInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    Type: string
end

local record DeleteTableOptimizerOutput
end

local record DeleteTableVersionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    VersionId: string
end

local record DeleteTableVersionOutput
end

local record DeleteTriggerInput
    Name: string
end

local record DeleteTriggerOutput
    Name: string
end

local record DeleteUsageProfileInput
    Name: string
end

local record DeleteUsageProfileOutput
end

local record DeleteUserDefinedFunctionInput
    CatalogId: string
    DatabaseName: string
    FunctionName: string
end

local record DeleteUserDefinedFunctionOutput
end

local record DeleteWorkflowInput
    Name: string
end

local record DeleteWorkflowOutput
    Name: string
end

local record DescribeConnectionTypeInput
    ConnectionType: string
end

local record DescribeConnectionTypeOutput
    ConnectionType: string
    Description: string
    Capabilities: Capabilities
    ConnectionProperties: {string : Property}
    ConnectionOptions: {string : Property}
    AuthenticationConfiguration: AuthConfiguration
    ComputeEnvironmentConfigurations: {string : ComputeEnvironmentConfiguration}
    PhysicalConnectionRequirements: {string : Property}
    AthenaConnectionProperties: {string : Property}
    PythonConnectionProperties: {string : Property}
    SparkConnectionProperties: {string : Property}
    RestConfiguration: RestConfiguration
end

local record DescribeEntityInput
    ConnectionName: string
    CatalogId: string
    EntityName: string
    NextToken: string
    DataStoreApiVersion: string
end

local record DescribeEntityOutput
    Fields: {Field}
    NextToken: string
end

local record DescribeInboundIntegrationsInput
    IntegrationArn: string
    Marker: string
    MaxRecords: number
    TargetArn: string
end

local record DescribeInboundIntegrationsOutput
    InboundIntegrations: {InboundIntegration}
    Marker: string
end

local record DescribeIntegrationsInput
    IntegrationIdentifier: string
    Marker: string
    MaxRecords: number
    Filters: {IntegrationFilter}
end

local record DescribeIntegrationsOutput
    Integrations: {Integration}
    Marker: string
end

local record GetBlueprintInput
    Name: string
    IncludeBlueprint: boolean
    IncludeParameterSpec: boolean
end

local record GetBlueprintOutput
    Blueprint: Blueprint
end

local record GetBlueprintRunInput
    BlueprintName: string
    RunId: string
end

local record GetBlueprintRunOutput
    BlueprintRun: BlueprintRun
end

local record GetBlueprintRunsInput
    BlueprintName: string
    NextToken: string
    MaxResults: number
end

local record GetBlueprintRunsOutput
    BlueprintRuns: {BlueprintRun}
    NextToken: string
end

local record GetCatalogInput
    CatalogId: string
end

local record GetCatalogOutput
    Catalog: Catalog
end

local record GetCatalogImportStatusInput
    CatalogId: string
end

local record GetCatalogImportStatusOutput
    ImportStatus: CatalogImportStatus
end

local record GetCatalogsInput
    ParentCatalogId: string
    NextToken: string
    MaxResults: number
    Recursive: boolean
    IncludeRoot: boolean
end

local record GetCatalogsOutput
    CatalogList: {Catalog}
    NextToken: string
end

local record GetClassifierInput
    Name: string
end

local record GetClassifierOutput
    Classifier: Classifier
end

local record GetClassifiersInput
    MaxResults: number
    NextToken: string
end

local record GetClassifiersOutput
    Classifiers: {Classifier}
    NextToken: string
end

local record GetColumnStatisticsForPartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionValues: {string}
    ColumnNames: {string}
end

local record GetColumnStatisticsForPartitionOutput
    ColumnStatisticsList: {ColumnStatistics}
    Errors: {ColumnError}
end

local record GetColumnStatisticsForTableInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    ColumnNames: {string}
end

local record GetColumnStatisticsForTableOutput
    ColumnStatisticsList: {ColumnStatistics}
    Errors: {ColumnError}
end

local record GetColumnStatisticsTaskRunInput
    ColumnStatisticsTaskRunId: string
end

local record GetColumnStatisticsTaskRunOutput
    ColumnStatisticsTaskRun: ColumnStatisticsTaskRun
end

local record GetColumnStatisticsTaskRunsInput
    DatabaseName: string
    TableName: string
    MaxResults: number
    NextToken: string
end

local record GetColumnStatisticsTaskRunsOutput
    ColumnStatisticsTaskRuns: {ColumnStatisticsTaskRun}
    NextToken: string
end

local record GetColumnStatisticsTaskSettingsInput
    DatabaseName: string
    TableName: string
end

local record GetColumnStatisticsTaskSettingsOutput
    ColumnStatisticsTaskSettings: ColumnStatisticsTaskSettings
end

local record GetConnectionInput
    CatalogId: string
    Name: string
    HidePassword: boolean
    ApplyOverrideForComputeEnvironment: string
end

local record GetConnectionOutput
    Connection: Connection
end

local record GetConnectionsInput
    CatalogId: string
    Filter: GetConnectionsFilter
    HidePassword: boolean
    NextToken: string
    MaxResults: number
end

local record GetConnectionsOutput
    ConnectionList: {Connection}
    NextToken: string
end

local record GetCrawlerInput
    Name: string
end

local record GetCrawlerOutput
    Crawler: Crawler
end

local record GetCrawlerMetricsInput
    CrawlerNameList: {string}
    MaxResults: number
    NextToken: string
end

local record GetCrawlerMetricsOutput
    CrawlerMetricsList: {CrawlerMetrics}
    NextToken: string
end

local record GetCrawlersInput
    MaxResults: number
    NextToken: string
end

local record GetCrawlersOutput
    Crawlers: {Crawler}
    NextToken: string
end

local record GetCustomEntityTypeInput
    Name: string
end

local record GetCustomEntityTypeOutput
    Name: string
    RegexString: string
    ContextWords: {string}
end

local record GetDatabaseInput
    CatalogId: string
    Name: string
end

local record GetDatabaseOutput
    Database: Database
end

local record GetDatabasesInput
    CatalogId: string
    NextToken: string
    MaxResults: number
    ResourceShareType: string
    AttributesToGet: {string}
end

local record GetDatabasesOutput
    DatabaseList: {Database}
    NextToken: string
end

local record GetDataCatalogEncryptionSettingsInput
    CatalogId: string
end

local record GetDataCatalogEncryptionSettingsOutput
    DataCatalogEncryptionSettings: DataCatalogEncryptionSettings
end

local record GetDataflowGraphInput
    PythonScript: string
end

local record GetDataflowGraphOutput
    DagNodes: {CodeGenNode}
    DagEdges: {CodeGenEdge}
end

local record GetDataQualityModelInput
    StatisticId: string
    ProfileId: string
end

local record GetDataQualityModelOutput
    Status: string
    StartedOn: number
    CompletedOn: number
    FailureReason: string
end

local record GetDataQualityModelResultInput
    StatisticId: string
    ProfileId: string
end

local record GetDataQualityModelResultOutput
    CompletedOn: number
    Model: {StatisticModelResult}
end

local record GetDataQualityResultInput
    ResultId: string
end

local record GetDataQualityResultOutput
    ResultId: string
    ProfileId: string
    Score: number
    DataSource: DataSource
    RulesetName: string
    EvaluationContext: string
    StartedOn: number
    CompletedOn: number
    JobName: string
    JobRunId: string
    RulesetEvaluationRunId: string
    RuleResults: {DataQualityRuleResult}
    AnalyzerResults: {DataQualityAnalyzerResult}
    Observations: {DataQualityObservation}
    AggregatedMetrics: DataQualityAggregatedMetrics
end

local record GetDataQualityRuleRecommendationRunInput
    RunId: string
end

local record GetDataQualityRuleRecommendationRunOutput
    RunId: string
    DataSource: DataSource
    Role: string
    NumberOfWorkers: number
    Timeout: number
    Status: string
    ErrorString: string
    StartedOn: number
    LastModifiedOn: number
    CompletedOn: number
    ExecutionTime: number
    RecommendedRuleset: string
    CreatedRulesetName: string
    DataQualitySecurityConfiguration: string
end

local record GetDataQualityRulesetInput
    Name: string
end

local record GetDataQualityRulesetOutput
    Name: string
    Description: string
    Ruleset: string
    TargetTable: DataQualityTargetTable
    CreatedOn: number
    LastModifiedOn: number
    RecommendationRunId: string
    DataQualitySecurityConfiguration: string
end

local record GetDataQualityRulesetEvaluationRunInput
    RunId: string
end

local record GetDataQualityRulesetEvaluationRunOutput
    RunId: string
    DataSource: DataSource
    Role: string
    NumberOfWorkers: number
    Timeout: number
    AdditionalRunOptions: DataQualityEvaluationRunAdditionalRunOptions
    Status: string
    ErrorString: string
    StartedOn: number
    LastModifiedOn: number
    CompletedOn: number
    ExecutionTime: number
    RulesetNames: {string}
    ResultIds: {string}
    AdditionalDataSources: {string : DataSource}
end

local record GetDevEndpointInput
    EndpointName: string
end

local record GetDevEndpointOutput
    DevEndpoint: DevEndpoint
end

local record GetDevEndpointsInput
    MaxResults: number
    NextToken: string
end

local record GetDevEndpointsOutput
    DevEndpoints: {DevEndpoint}
    NextToken: string
end

local record GetEntityRecordsInput
    ConnectionName: string
    CatalogId: string
    EntityName: string
    NextToken: string
    DataStoreApiVersion: string
    ConnectionOptions: {string : string}
    FilterPredicate: string
    Limit: number
    OrderBy: string
    SelectedFields: {string}
end

local record GetEntityRecordsOutput
    Records: {any}
    NextToken: string
end

local record GetGlueIdentityCenterConfigurationInput
end

local record GetGlueIdentityCenterConfigurationOutput
    ApplicationArn: string
    InstanceArn: string
    Scopes: {string}
    UserBackgroundSessionsEnabled: boolean
end

local record GetIntegrationResourcePropertyInput
    ResourceArn: string
end

local record GetIntegrationResourcePropertyOutput
    ResourceArn: string
    ResourcePropertyArn: string
    SourceProcessingProperties: SourceProcessingProperties
    TargetProcessingProperties: TargetProcessingProperties
end

local record GetIntegrationTablePropertiesInput
    ResourceArn: string
    TableName: string
end

local record GetIntegrationTablePropertiesOutput
    ResourceArn: string
    TableName: string
    SourceTableConfig: SourceTableConfig
    TargetTableConfig: TargetTableConfig
end

local record GetJobInput
    JobName: string
end

local record GetJobOutput
    Job: Job
end

local record GetJobBookmarkInput
    JobName: string
    RunId: string
end

local record GetJobBookmarkOutput
    JobBookmarkEntry: JobBookmarkEntry
end

local record GetJobRunInput
    JobName: string
    RunId: string
    PredecessorsIncluded: boolean
end

local record GetJobRunOutput
    JobRun: JobRun
end

local record GetJobRunsInput
    JobName: string
    NextToken: string
    MaxResults: number
end

local record GetJobRunsOutput
    JobRuns: {JobRun}
    NextToken: string
end

local record GetJobsInput
    NextToken: string
    MaxResults: number
end

local record GetJobsOutput
    Jobs: {Job}
    NextToken: string
end

local record GetMappingInput
    Source: CatalogEntry
    Sinks: {CatalogEntry}
    Location: Location
end

local record GetMappingOutput
    Mapping: {MappingEntry}
end

local record GetMaterializedViewRefreshTaskRunInput
    CatalogId: string
    MaterializedViewRefreshTaskRunId: string
end

local record GetMaterializedViewRefreshTaskRunOutput
    MaterializedViewRefreshTaskRun: MaterializedViewRefreshTaskRun
end

local record GetMLTaskRunInput
    TransformId: string
    TaskRunId: string
end

local record GetMLTaskRunOutput
    TransformId: string
    TaskRunId: string
    Status: string
    LogGroupName: string
    Properties: TaskRunProperties
    ErrorString: string
    StartedOn: number
    LastModifiedOn: number
    CompletedOn: number
    ExecutionTime: number
end

local record GetMLTaskRunsInput
    TransformId: string
    NextToken: string
    MaxResults: number
    Filter: TaskRunFilterCriteria
    Sort: TaskRunSortCriteria
end

local record GetMLTaskRunsOutput
    TaskRuns: {TaskRun}
    NextToken: string
end

local record GetMLTransformInput
    TransformId: string
end

local record GetMLTransformOutput
    TransformId: string
    Name: string
    Description: string
    Status: string
    CreatedOn: number
    LastModifiedOn: number
    InputRecordTables: {GlueTable}
    Parameters: TransformParameters
    EvaluationMetrics: EvaluationMetrics
    LabelCount: number
    Schema: {SchemaColumn}
    Role: string
    GlueVersion: string
    MaxCapacity: number
    WorkerType: string
    NumberOfWorkers: number
    Timeout: number
    MaxRetries: number
    TransformEncryption: TransformEncryption
end

local record GetMLTransformsInput
    NextToken: string
    MaxResults: number
    Filter: TransformFilterCriteria
    Sort: TransformSortCriteria
end

local record GetMLTransformsOutput
    Transforms: {MLTransform}
    NextToken: string
end

local record GetPartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionValues: {string}
    AuditContext: AuditContext
end

local record GetPartitionOutput
    Partition: Partition
end

local record GetPartitionIndexesInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    NextToken: string
end

local record GetPartitionIndexesOutput
    PartitionIndexDescriptorList: {PartitionIndexDescriptor}
    NextToken: string
end

local record GetPartitionsInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    Expression: string
    NextToken: string
    Segment: Segment
    MaxResults: number
    ExcludeColumnSchema: boolean
    TransactionId: string
    QueryAsOfTime: number
    AuditContext: AuditContext
end

local record GetPartitionsOutput
    Partitions: {Partition}
    NextToken: string
end

local record GetPlanInput
    Mapping: {MappingEntry}
    Source: CatalogEntry
    Sinks: {CatalogEntry}
    Location: Location
    Language: string
    AdditionalPlanOptionsMap: {string : string}
end

local record GetPlanOutput
    PythonScript: string
    ScalaCode: string
end

local record GetRegistryInput
    RegistryId: RegistryId
end

local record GetRegistryOutput
    RegistryName: string
    RegistryArn: string
    Description: string
    Status: string
    CreatedTime: string
    UpdatedTime: string
end

local record GetResourcePoliciesInput
    NextToken: string
    MaxResults: number
end

local record GetResourcePoliciesOutput
    GetResourcePoliciesResponseList: {GluePolicy}
    NextToken: string
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    PolicyInJson: string
    PolicyHash: string
    CreateTime: number
    UpdateTime: number
end

local record GetSchemaInput
    SchemaId: SchemaId
end

local record GetSchemaOutput
    RegistryName: string
    RegistryArn: string
    SchemaName: string
    SchemaArn: string
    Description: string
    DataFormat: string
    Compatibility: string
    SchemaCheckpoint: number
    LatestSchemaVersion: number
    NextSchemaVersion: number
    SchemaStatus: string
    CreatedTime: string
    UpdatedTime: string
end

local record GetSchemaByDefinitionInput
    SchemaId: SchemaId
    SchemaDefinition: string
end

local record GetSchemaByDefinitionOutput
    SchemaVersionId: string
    SchemaArn: string
    DataFormat: string
    Status: string
    CreatedTime: string
end

local record GetSchemaVersionInput
    SchemaId: SchemaId
    SchemaVersionId: string
    SchemaVersionNumber: SchemaVersionNumber
end

local record GetSchemaVersionOutput
    SchemaVersionId: string
    SchemaDefinition: string
    DataFormat: string
    SchemaArn: string
    VersionNumber: number
    Status: string
    CreatedTime: string
end

local record GetSchemaVersionsDiffInput
    SchemaId: SchemaId
    FirstSchemaVersionNumber: SchemaVersionNumber
    SecondSchemaVersionNumber: SchemaVersionNumber
    SchemaDiffType: string
end

local record GetSchemaVersionsDiffOutput
    Diff: string
end

local record GetSecurityConfigurationInput
    Name: string
end

local record GetSecurityConfigurationOutput
    SecurityConfiguration: SecurityConfiguration
end

local record GetSecurityConfigurationsInput
    MaxResults: number
    NextToken: string
end

local record GetSecurityConfigurationsOutput
    SecurityConfigurations: {SecurityConfiguration}
    NextToken: string
end

local record GetSessionInput
    Id: string
    RequestOrigin: string
end

local record GetSessionOutput
    Session: Session
end

local record GetStatementInput
    SessionId: string
    Id: number
    RequestOrigin: string
end

local record GetStatementOutput
    Statement: Statement
end

local record GetTableInput
    CatalogId: string
    DatabaseName: string
    Name: string
    TransactionId: string
    QueryAsOfTime: number
    AuditContext: AuditContext
    IncludeStatusDetails: boolean
end

local record GetTableOutput
    Table: Table
end

local record GetTableOptimizerInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    Type: string
end

local record GetTableOptimizerOutput
    CatalogId: string
    DatabaseName: string
    TableName: string
    TableOptimizer: TableOptimizer
end

local record GetTablesInput
    CatalogId: string
    DatabaseName: string
    Expression: string
    NextToken: string
    MaxResults: number
    TransactionId: string
    QueryAsOfTime: number
    AuditContext: AuditContext
    IncludeStatusDetails: boolean
    AttributesToGet: {string}
end

local record GetTablesOutput
    TableList: {Table}
    NextToken: string
end

local record GetTableVersionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    VersionId: string
    AuditContext: AuditContext
end

local record GetTableVersionOutput
    TableVersion: TableVersion
end

local record GetTableVersionsInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    NextToken: string
    MaxResults: number
    AuditContext: AuditContext
end

local record GetTableVersionsOutput
    TableVersions: {TableVersion}
    NextToken: string
end

local record GetTagsInput
    ResourceArn: string
end

local record GetTagsOutput
    Tags: {string : string}
end

local record GetTriggerInput
    Name: string
end

local record GetTriggerOutput
    Trigger: Trigger
end

local record GetTriggersInput
    NextToken: string
    DependentJobName: string
    MaxResults: number
end

local record GetTriggersOutput
    Triggers: {Trigger}
    NextToken: string
end

local record GetUnfilteredPartitionMetadataInput
    Region: string
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionValues: {string}
    AuditContext: AuditContext
    SupportedPermissionTypes: {string}
    QuerySessionContext: QuerySessionContext
end

local record GetUnfilteredPartitionMetadataOutput
    Partition: Partition
    AuthorizedColumns: {string}
    IsRegisteredWithLakeFormation: boolean
end

local record GetUnfilteredPartitionsMetadataInput
    Region: string
    CatalogId: string
    DatabaseName: string
    TableName: string
    Expression: string
    AuditContext: AuditContext
    SupportedPermissionTypes: {string}
    NextToken: string
    Segment: Segment
    MaxResults: number
    QuerySessionContext: QuerySessionContext
end

local record GetUnfilteredPartitionsMetadataOutput
    UnfilteredPartitions: {UnfilteredPartition}
    NextToken: string
end

local record GetUnfilteredTableMetadataInput
    Region: string
    CatalogId: string
    DatabaseName: string
    Name: string
    AuditContext: AuditContext
    SupportedPermissionTypes: {string}
    ParentResourceArn: string
    RootResourceArn: string
    SupportedDialect: SupportedDialect
    Permissions: {string}
    QuerySessionContext: QuerySessionContext
end

local record GetUnfilteredTableMetadataOutput
    Table: Table
    AuthorizedColumns: {string}
    IsRegisteredWithLakeFormation: boolean
    CellFilters: {ColumnRowFilter}
    QueryAuthorizationId: string
    IsMultiDialectView: boolean
    IsMaterializedView: boolean
    ResourceArn: string
    IsProtected: boolean
    Permissions: {string}
    RowFilter: string
end

local record GetUsageProfileInput
    Name: string
end

local record GetUsageProfileOutput
    Name: string
    Description: string
    Configuration: ProfileConfiguration
    CreatedOn: number
    LastModifiedOn: number
end

local record GetUserDefinedFunctionInput
    CatalogId: string
    DatabaseName: string
    FunctionName: string
end

local record GetUserDefinedFunctionOutput
    UserDefinedFunction: UserDefinedFunction
end

local record GetUserDefinedFunctionsInput
    CatalogId: string
    DatabaseName: string
    Pattern: string
    FunctionType: string
    NextToken: string
    MaxResults: number
end

local record GetUserDefinedFunctionsOutput
    UserDefinedFunctions: {UserDefinedFunction}
    NextToken: string
end

local record GetWorkflowInput
    Name: string
    IncludeGraph: boolean
end

local record GetWorkflowOutput
    Workflow: Workflow
end

local record GetWorkflowRunInput
    Name: string
    RunId: string
    IncludeGraph: boolean
end

local record GetWorkflowRunOutput
    Run: WorkflowRun
end

local record GetWorkflowRunPropertiesInput
    Name: string
    RunId: string
end

local record GetWorkflowRunPropertiesOutput
    RunProperties: {string : string}
end

local record GetWorkflowRunsInput
    Name: string
    IncludeGraph: boolean
    NextToken: string
    MaxResults: number
end

local record GetWorkflowRunsOutput
    Runs: {WorkflowRun}
    NextToken: string
end

local record ImportCatalogToGlueInput
    CatalogId: string
end

local record ImportCatalogToGlueOutput
end

local record ListBlueprintsInput
    NextToken: string
    MaxResults: number
    Tags: {string : string}
end

local record ListBlueprintsOutput
    Blueprints: {string}
    NextToken: string
end

local record ListColumnStatisticsTaskRunsInput
    MaxResults: number
    NextToken: string
end

local record ListColumnStatisticsTaskRunsOutput
    ColumnStatisticsTaskRunIds: {string}
    NextToken: string
end

local record ListConnectionTypesInput
    MaxResults: number
    NextToken: string
end

local record ListConnectionTypesOutput
    ConnectionTypes: {ConnectionTypeBrief}
    NextToken: string
end

local record ListCrawlersInput
    MaxResults: number
    NextToken: string
    Tags: {string : string}
end

local record ListCrawlersOutput
    CrawlerNames: {string}
    NextToken: string
end

local record ListCrawlsInput
    CrawlerName: string
    MaxResults: number
    Filters: {CrawlsFilter}
    NextToken: string
end

local record ListCrawlsOutput
    Crawls: {CrawlerHistory}
    NextToken: string
end

local record ListCustomEntityTypesInput
    NextToken: string
    MaxResults: number
    Tags: {string : string}
end

local record ListCustomEntityTypesOutput
    CustomEntityTypes: {CustomEntityType}
    NextToken: string
end

local record ListDataQualityResultsInput
    Filter: DataQualityResultFilterCriteria
    NextToken: string
    MaxResults: number
end

local record ListDataQualityResultsOutput
    Results: {DataQualityResultDescription}
    NextToken: string
end

local record ListDataQualityRuleRecommendationRunsInput
    Filter: DataQualityRuleRecommendationRunFilter
    NextToken: string
    MaxResults: number
end

local record ListDataQualityRuleRecommendationRunsOutput
    Runs: {DataQualityRuleRecommendationRunDescription}
    NextToken: string
end

local record ListDataQualityRulesetEvaluationRunsInput
    Filter: DataQualityRulesetEvaluationRunFilter
    NextToken: string
    MaxResults: number
end

local record ListDataQualityRulesetEvaluationRunsOutput
    Runs: {DataQualityRulesetEvaluationRunDescription}
    NextToken: string
end

local record ListDataQualityRulesetsInput
    NextToken: string
    MaxResults: number
    Filter: DataQualityRulesetFilterCriteria
    Tags: {string : string}
end

local record ListDataQualityRulesetsOutput
    Rulesets: {DataQualityRulesetListDetails}
    NextToken: string
end

local record ListDataQualityStatisticAnnotationsInput
    StatisticId: string
    ProfileId: string
    TimestampFilter: TimestampFilter
    MaxResults: number
    NextToken: string
end

local record ListDataQualityStatisticAnnotationsOutput
    Annotations: {StatisticAnnotation}
    NextToken: string
end

local record ListDataQualityStatisticsInput
    StatisticId: string
    ProfileId: string
    TimestampFilter: TimestampFilter
    MaxResults: number
    NextToken: string
end

local record ListDataQualityStatisticsOutput
    Statistics: {StatisticSummary}
    NextToken: string
end

local record ListDevEndpointsInput
    NextToken: string
    MaxResults: number
    Tags: {string : string}
end

local record ListDevEndpointsOutput
    DevEndpointNames: {string}
    NextToken: string
end

local record ListEntitiesInput
    ConnectionName: string
    CatalogId: string
    ParentEntityName: string
    NextToken: string
    DataStoreApiVersion: string
end

local record ListEntitiesOutput
    Entities: {Entity}
    NextToken: string
end

local record ListIntegrationResourcePropertiesInput
    Marker: string
    Filters: {IntegrationResourcePropertyFilter}
    MaxRecords: number
end

local record ListIntegrationResourcePropertiesOutput
    IntegrationResourcePropertyList: {IntegrationResourceProperty}
    Marker: string
end

local record ListJobsInput
    NextToken: string
    MaxResults: number
    Tags: {string : string}
end

local record ListJobsOutput
    JobNames: {string}
    NextToken: string
end

local record ListMaterializedViewRefreshTaskRunsInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    MaxResults: number
    NextToken: string
end

local record ListMaterializedViewRefreshTaskRunsOutput
    MaterializedViewRefreshTaskRuns: {MaterializedViewRefreshTaskRun}
    NextToken: string
end

local record ListMLTransformsInput
    NextToken: string
    MaxResults: number
    Filter: TransformFilterCriteria
    Sort: TransformSortCriteria
    Tags: {string : string}
end

local record ListMLTransformsOutput
    TransformIds: {string}
    NextToken: string
end

local record ListRegistriesInput
    MaxResults: number
    NextToken: string
end

local record ListRegistriesOutput
    Registries: {RegistryListItem}
    NextToken: string
end

local record ListSchemasInput
    RegistryId: RegistryId
    MaxResults: number
    NextToken: string
end

local record ListSchemasOutput
    Schemas: {SchemaListItem}
    NextToken: string
end

local record ListSchemaVersionsInput
    SchemaId: SchemaId
    MaxResults: number
    NextToken: string
end

local record ListSchemaVersionsOutput
    Schemas: {SchemaVersionListItem}
    NextToken: string
end

local record ListSessionsInput
    NextToken: string
    MaxResults: number
    Tags: {string : string}
    RequestOrigin: string
end

local record ListSessionsOutput
    Ids: {string}
    Sessions: {Session}
    NextToken: string
end

local record ListStatementsInput
    SessionId: string
    RequestOrigin: string
    NextToken: string
end

local record ListStatementsOutput
    Statements: {Statement}
    NextToken: string
end

local record ListTableOptimizerRunsInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    Type: string
    MaxResults: number
    NextToken: string
end

local record ListTableOptimizerRunsOutput
    CatalogId: string
    DatabaseName: string
    TableName: string
    NextToken: string
    TableOptimizerRuns: {TableOptimizerRun}
end

local record ListTriggersInput
    NextToken: string
    DependentJobName: string
    MaxResults: number
    Tags: {string : string}
end

local record ListTriggersOutput
    TriggerNames: {string}
    NextToken: string
end

local record ListUsageProfilesInput
    NextToken: string
    MaxResults: number
end

local record ListUsageProfilesOutput
    Profiles: {UsageProfileDefinition}
    NextToken: string
end

local record ListWorkflowsInput
    NextToken: string
    MaxResults: number
end

local record ListWorkflowsOutput
    Workflows: {string}
    NextToken: string
end

local record ModifyIntegrationInput
    IntegrationIdentifier: string
    Description: string
    DataFilter: string
    IntegrationConfig: IntegrationConfig
    IntegrationName: string
end

local record ModifyIntegrationOutput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    Description: string
    IntegrationArn: string
    KmsKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
    Status: string
    CreateTime: number
    Errors: {IntegrationError}
    DataFilter: string
    IntegrationConfig: IntegrationConfig
end

local record PutDataCatalogEncryptionSettingsInput
    CatalogId: string
    DataCatalogEncryptionSettings: DataCatalogEncryptionSettings
end

local record PutDataCatalogEncryptionSettingsOutput
end

local record PutDataQualityProfileAnnotationInput
    ProfileId: string
    InclusionAnnotation: string
end

local record PutDataQualityProfileAnnotationOutput
end

local record PutResourcePolicyInput
    PolicyInJson: string
    ResourceArn: string
    PolicyHashCondition: string
    PolicyExistsCondition: string
    EnableHybrid: string
end

local record PutResourcePolicyOutput
    PolicyHash: string
end

local record PutSchemaVersionMetadataInput
    SchemaId: SchemaId
    SchemaVersionNumber: SchemaVersionNumber
    SchemaVersionId: string
    MetadataKeyValue: MetadataKeyValuePair
end

local record PutSchemaVersionMetadataOutput
    SchemaArn: string
    SchemaName: string
    RegistryName: string
    LatestVersion: boolean
    VersionNumber: number
    SchemaVersionId: string
    MetadataKey: string
    MetadataValue: string
end

local record PutWorkflowRunPropertiesInput
    Name: string
    RunId: string
    RunProperties: {string : string}
end

local record PutWorkflowRunPropertiesOutput
end

local record QuerySchemaVersionMetadataInput
    SchemaId: SchemaId
    SchemaVersionNumber: SchemaVersionNumber
    SchemaVersionId: string
    MetadataList: {MetadataKeyValuePair}
    MaxResults: number
    NextToken: string
end

local record QuerySchemaVersionMetadataOutput
    MetadataInfoMap: {string : MetadataInfo}
    SchemaVersionId: string
    NextToken: string
end

local record RegisterConnectionTypeInput
    ConnectionType: string
    IntegrationType: string
    Description: string
    ConnectionProperties: ConnectionPropertiesConfiguration
    ConnectorAuthenticationConfiguration: ConnectorAuthenticationConfiguration
    RestConfiguration: RestConfiguration
    Tags: {string : string}
end

local record RegisterConnectionTypeOutput
    ConnectionTypeArn: string
end

local record RegisterSchemaVersionInput
    SchemaId: SchemaId
    SchemaDefinition: string
end

local record RegisterSchemaVersionOutput
    SchemaVersionId: string
    VersionNumber: number
    Status: string
end

local record RemoveSchemaVersionMetadataInput
    SchemaId: SchemaId
    SchemaVersionNumber: SchemaVersionNumber
    SchemaVersionId: string
    MetadataKeyValue: MetadataKeyValuePair
end

local record RemoveSchemaVersionMetadataOutput
    SchemaArn: string
    SchemaName: string
    RegistryName: string
    LatestVersion: boolean
    VersionNumber: number
    SchemaVersionId: string
    MetadataKey: string
    MetadataValue: string
end

local record ResetJobBookmarkInput
    JobName: string
    RunId: string
end

local record ResetJobBookmarkOutput
    JobBookmarkEntry: JobBookmarkEntry
end

local record ResumeWorkflowRunInput
    Name: string
    RunId: string
    NodeIds: {string}
end

local record ResumeWorkflowRunOutput
    RunId: string
    NodeIds: {string}
end

local record RunStatementInput
    SessionId: string
    Code: string
    RequestOrigin: string
end

local record RunStatementOutput
    Id: number
end

local record SearchTablesInput
    CatalogId: string
    NextToken: string
    Filters: {PropertyPredicate}
    SearchText: string
    SortCriteria: {SortCriterion}
    MaxResults: number
    ResourceShareType: string
    IncludeStatusDetails: boolean
end

local record SearchTablesOutput
    NextToken: string
    TableList: {Table}
end

local record StartBlueprintRunInput
    BlueprintName: string
    Parameters: string
    RoleArn: string
end

local record StartBlueprintRunOutput
    RunId: string
end

local record StartColumnStatisticsTaskRunInput
    DatabaseName: string
    TableName: string
    ColumnNameList: {string}
    Role: string
    SampleSize: number
    CatalogID: string
    SecurityConfiguration: string
end

local record StartColumnStatisticsTaskRunOutput
    ColumnStatisticsTaskRunId: string
end

local record StartColumnStatisticsTaskRunScheduleInput
    DatabaseName: string
    TableName: string
end

local record StartColumnStatisticsTaskRunScheduleOutput
end

local record StartCrawlerInput
    Name: string
end

local record StartCrawlerOutput
end

local record StartCrawlerScheduleInput
    CrawlerName: string
end

local record StartCrawlerScheduleOutput
end

local record StartDataQualityRuleRecommendationRunInput
    DataSource: DataSource
    Role: string
    NumberOfWorkers: number
    Timeout: number
    CreatedRulesetName: string
    DataQualitySecurityConfiguration: string
    ClientToken: string
end

local record StartDataQualityRuleRecommendationRunOutput
    RunId: string
end

local record StartDataQualityRulesetEvaluationRunInput
    DataSource: DataSource
    Role: string
    NumberOfWorkers: number
    Timeout: number
    ClientToken: string
    AdditionalRunOptions: DataQualityEvaluationRunAdditionalRunOptions
    RulesetNames: {string}
    AdditionalDataSources: {string : DataSource}
end

local record StartDataQualityRulesetEvaluationRunOutput
    RunId: string
end

local record StartExportLabelsTaskRunInput
    TransformId: string
    OutputS3Path: string
end

local record StartExportLabelsTaskRunOutput
    TaskRunId: string
end

local record StartImportLabelsTaskRunInput
    TransformId: string
    InputS3Path: string
    ReplaceAllLabels: boolean
end

local record StartImportLabelsTaskRunOutput
    TaskRunId: string
end

local record StartJobRunInput
    JobName: string
    JobRunQueuingEnabled: boolean
    JobRunId: string
    Arguments: {string : string}
    AllocatedCapacity: number
    Timeout: number
    MaxCapacity: number
    SecurityConfiguration: string
    NotificationProperty: NotificationProperty
    WorkerType: string
    NumberOfWorkers: number
    ExecutionClass: string
    ExecutionRoleSessionPolicy: string
end

local record StartJobRunOutput
    JobRunId: string
end

local record StartMaterializedViewRefreshTaskRunInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    FullRefresh: boolean
end

local record StartMaterializedViewRefreshTaskRunOutput
    MaterializedViewRefreshTaskRunId: string
end

local record StartMLEvaluationTaskRunInput
    TransformId: string
end

local record StartMLEvaluationTaskRunOutput
    TaskRunId: string
end

local record StartMLLabelingSetGenerationTaskRunInput
    TransformId: string
    OutputS3Path: string
end

local record StartMLLabelingSetGenerationTaskRunOutput
    TaskRunId: string
end

local record StartTriggerInput
    Name: string
end

local record StartTriggerOutput
    Name: string
end

local record StartWorkflowRunInput
    Name: string
    RunProperties: {string : string}
end

local record StartWorkflowRunOutput
    RunId: string
end

local record StopColumnStatisticsTaskRunInput
    DatabaseName: string
    TableName: string
end

local record StopColumnStatisticsTaskRunOutput
end

local record StopColumnStatisticsTaskRunScheduleInput
    DatabaseName: string
    TableName: string
end

local record StopColumnStatisticsTaskRunScheduleOutput
end

local record StopCrawlerInput
    Name: string
end

local record StopCrawlerOutput
end

local record StopCrawlerScheduleInput
    CrawlerName: string
end

local record StopCrawlerScheduleOutput
end

local record StopMaterializedViewRefreshTaskRunInput
    CatalogId: string
    DatabaseName: string
    TableName: string
end

local record StopMaterializedViewRefreshTaskRunOutput
end

local record StopSessionInput
    Id: string
    RequestOrigin: string
end

local record StopSessionOutput
    Id: string
end

local record StopTriggerInput
    Name: string
end

local record StopTriggerOutput
    Name: string
end

local record StopWorkflowRunInput
    Name: string
    RunId: string
end

local record StopWorkflowRunOutput
end

local record TagResourceInput
    ResourceArn: string
    TagsToAdd: {string : string}
end

local record TagResourceOutput
end

local record TestConnectionOperationInput
    ConnectionName: string
    CatalogId: string
    TestConnectionInput: TestConnectionInput
end

local record TestConnectionOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagsToRemove: {string}
end

local record UntagResourceOutput
end

local record UpdateBlueprintInput
    Name: string
    Description: string
    BlueprintLocation: string
end

local record UpdateBlueprintOutput
    Name: string
end

local record UpdateCatalogInput
    CatalogId: string
    CatalogInput: CatalogInput
end

local record UpdateCatalogOutput
end

local record UpdateClassifierInput
    GrokClassifier: UpdateGrokClassifierRequest
    XMLClassifier: UpdateXMLClassifierRequest
    JsonClassifier: UpdateJsonClassifierRequest
    CsvClassifier: UpdateCsvClassifierRequest
end

local record UpdateClassifierOutput
end

local record UpdateColumnStatisticsForPartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionValues: {string}
    ColumnStatisticsList: {ColumnStatistics}
end

local record UpdateColumnStatisticsForPartitionOutput
    Errors: {ColumnStatisticsError}
end

local record UpdateColumnStatisticsForTableInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    ColumnStatisticsList: {ColumnStatistics}
end

local record UpdateColumnStatisticsForTableOutput
    Errors: {ColumnStatisticsError}
end

local record UpdateColumnStatisticsTaskSettingsInput
    DatabaseName: string
    TableName: string
    Role: string
    Schedule: string
    ColumnNameList: {string}
    SampleSize: number
    CatalogID: string
    SecurityConfiguration: string
end

local record UpdateColumnStatisticsTaskSettingsOutput
end

local record UpdateConnectionInput
    CatalogId: string
    Name: string
    ConnectionInput: ConnectionInput
end

local record UpdateConnectionOutput
end

local record UpdateCrawlerInput
    Name: string
    Role: string
    DatabaseName: string
    Description: string
    Targets: CrawlerTargets
    Schedule: string
    Classifiers: {string}
    TablePrefix: string
    SchemaChangePolicy: SchemaChangePolicy
    RecrawlPolicy: RecrawlPolicy
    LineageConfiguration: LineageConfiguration
    LakeFormationConfiguration: LakeFormationConfiguration
    Configuration: string
    CrawlerSecurityConfiguration: string
end

local record UpdateCrawlerOutput
end

local record UpdateCrawlerScheduleInput
    CrawlerName: string
    Schedule: string
end

local record UpdateCrawlerScheduleOutput
end

local record UpdateDatabaseInput
    CatalogId: string
    Name: string
    DatabaseInput: DatabaseInput
end

local record UpdateDatabaseOutput
end

local record UpdateDataQualityRulesetInput
    Name: string
    Description: string
    Ruleset: string
end

local record UpdateDataQualityRulesetOutput
    Name: string
    Description: string
    Ruleset: string
end

local record UpdateDevEndpointInput
    EndpointName: string
    PublicKey: string
    AddPublicKeys: {string}
    DeletePublicKeys: {string}
    CustomLibraries: DevEndpointCustomLibraries
    UpdateEtlLibraries: boolean
    DeleteArguments: {string}
    AddArguments: {string : string}
end

local record UpdateDevEndpointOutput
end

local record UpdateGlueIdentityCenterConfigurationInput
    Scopes: {string}
    UserBackgroundSessionsEnabled: boolean
end

local record UpdateGlueIdentityCenterConfigurationOutput
end

local record UpdateIntegrationResourcePropertyInput
    ResourceArn: string
    SourceProcessingProperties: SourceProcessingProperties
    TargetProcessingProperties: TargetProcessingProperties
end

local record UpdateIntegrationResourcePropertyOutput
    ResourceArn: string
    ResourcePropertyArn: string
    SourceProcessingProperties: SourceProcessingProperties
    TargetProcessingProperties: TargetProcessingProperties
end

local record UpdateIntegrationTablePropertiesInput
    ResourceArn: string
    TableName: string
    SourceTableConfig: SourceTableConfig
    TargetTableConfig: TargetTableConfig
end

local record UpdateIntegrationTablePropertiesOutput
end

local record UpdateJobInput
    JobName: string
    JobUpdate: JobUpdate
end

local record UpdateJobOutput
    JobName: string
end

local record UpdateJobFromSourceControlInput
    JobName: string
    Provider: string
    RepositoryName: string
    RepositoryOwner: string
    BranchName: string
    Folder: string
    CommitId: string
    AuthStrategy: string
    AuthToken: string
end

local record UpdateJobFromSourceControlOutput
    JobName: string
end

local record UpdateMLTransformInput
    TransformId: string
    Name: string
    Description: string
    Parameters: TransformParameters
    Role: string
    GlueVersion: string
    MaxCapacity: number
    WorkerType: string
    NumberOfWorkers: number
    Timeout: number
    MaxRetries: number
end

local record UpdateMLTransformOutput
    TransformId: string
end

local record UpdatePartitionInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    PartitionValueList: {string}
    PartitionInput: PartitionInput
end

local record UpdatePartitionOutput
end

local record UpdateRegistryInput
    RegistryId: RegistryId
    Description: string
end

local record UpdateRegistryOutput
    RegistryName: string
    RegistryArn: string
end

local record UpdateSchemaInput
    SchemaId: SchemaId
    SchemaVersionNumber: SchemaVersionNumber
    Compatibility: string
    Description: string
end

local record UpdateSchemaOutput
    SchemaArn: string
    SchemaName: string
    RegistryName: string
end

local record UpdateSourceControlFromJobInput
    JobName: string
    Provider: string
    RepositoryName: string
    RepositoryOwner: string
    BranchName: string
    Folder: string
    CommitId: string
    AuthStrategy: string
    AuthToken: string
end

local record UpdateSourceControlFromJobOutput
    JobName: string
end

local record UpdateTableInput
    CatalogId: string
    DatabaseName: string
    Name: string
    TableInput: TableInput
    SkipArchive: boolean
    TransactionId: string
    VersionId: string
    ViewUpdateAction: string
    Force: boolean
    UpdateOpenTableFormatInput: UpdateOpenTableFormatInput
end

local record UpdateTableOutput
end

local record UpdateTableOptimizerInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    Type: string
    TableOptimizerConfiguration: TableOptimizerConfiguration
end

local record UpdateTableOptimizerOutput
end

local record UpdateTriggerInput
    Name: string
    TriggerUpdate: TriggerUpdate
end

local record UpdateTriggerOutput
    Trigger: Trigger
end

local record UpdateUsageProfileInput
    Name: string
    Description: string
    Configuration: ProfileConfiguration
end

local record UpdateUsageProfileOutput
    Name: string
end

local record UpdateUserDefinedFunctionInput
    CatalogId: string
    DatabaseName: string
    FunctionName: string
    FunctionInput: UserDefinedFunctionInput
end

local record UpdateUserDefinedFunctionOutput
end

local record UpdateWorkflowInput
    Name: string
    Description: string
    DefaultRunProperties: {string : string}
    MaxConcurrentRuns: number
end

local record UpdateWorkflowOutput
    Name: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record InvalidStateException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ThrottlingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalSessionStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AlreadyExistsException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederatedResourceAlreadyExistsException
    Message: string
    AssociatedGlueResource: string
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ColumnStatisticsTaskRunningException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record FederatedResourceAlreadyExistsException
    Message: string
    AssociatedGlueResource: string
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IntegrationConflictOperationFault
    Message: string
end

local record IntegrationQuotaExceededFault
    Message: string
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record KMSKeyNotAccessibleFault
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationNotSupportedException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record CrawlerRunningException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record SchedulerTransitioningException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IntegrationConflictOperationFault
    Message: string
end

local record IntegrationNotFoundFault
    Message: string
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record InvalidIntegrationStateFault
    Message: string
end

local record InvalidStateException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ConditionCheckFailureException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IllegalSessionStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ThrottlingException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationNotSupportedException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IntegrationNotFoundFault
    Message: string
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationNotSupportedException
    Message: string
end

local record TargetResourceNotFound
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IntegrationNotFoundFault
    Message: string
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ValidationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record InvalidStateException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalSessionStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ThrottlingException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record PermissionTypeMismatchException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record PermissionTypeMismatchException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record PermissionTypeMismatchException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationNotSupportedException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalSessionStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationNotSupportedException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IntegrationConflictOperationFault
    Message: string
end

local record IntegrationNotFoundFault
    Message: string
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record InvalidIntegrationStateFault
    Message: string
end

local record InvalidStateException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ConditionCheckFailureException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentRunsExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalWorkflowStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalSessionStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalBlueprintStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ColumnStatisticsTaskRunningException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record CrawlerRunningException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record NoScheduleException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record SchedulerRunningException
    Message: string
end

local record SchedulerTransitioningException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ConcurrentRunsExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record MaterializedViewRefreshTaskRunningException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ConcurrentRunsExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record MLTransformNotReadyException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentRunsExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentRunsExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ConcurrentRunsExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record ColumnStatisticsTaskNotRunningException
    Message: string
end

local record ColumnStatisticsTaskStoppingException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record CrawlerNotRunningException
    Message: string
end

local record CrawlerStoppingException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record SchedulerNotRunningException
    Message: string
end

local record SchedulerTransitioningException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record MaterializedViewRefreshTaskNotRunningException
    Message: string
end

local record MaterializedViewRefreshTaskStoppingException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record IllegalSessionStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalWorkflowStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IllegalBlueprintStateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record CrawlerRunningException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record SchedulerTransitioningException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServerException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ValidationException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record FederationSourceException
    FederationSourceErrorCode: string
    Message: string
end

local record FederationSourceRetryableException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationNotSupportedException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
    FromFederationSource: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
    FromFederationSource: boolean
end

local record OperationTimeoutException
    Message: string
end

local type SchemaDiffType = "SYNTAX_DIFF"

local type DataQualityModelStatus = "RUNNING" | "SUCCEEDED" | "FAILED"

local type SchemaVersionStatus = "AVAILABLE" | "PENDING" | "FAILURE" | "DELETING"

local type InclusionAnnotationValue = "INCLUDE" | "EXCLUDE"

local type IntegrationStatus = "CREATING" | "ACTIVE" | "MODIFYING" | "FAILED" | "DELETING" | "SYNCING" | "NEEDS_ATTENTION"

local type TransformStatusType = "NOT_READY" | "READY" | "DELETING"

local type FunctionType = "REGULAR_FUNCTION" | "AGGREGATE_FUNCTION" | "STORED_PROCEDURE"

local type ComputeEnvironment = "SPARK" | "ATHENA" | "PYTHON"

local type WorkerType = "Standard" | "G.1X" | "G.2X" | "G.025X" | "G.4X" | "G.8X" | "Z.2X"

local type IntegrationType = "REST"

local type TaskStatusType = "STARTING" | "RUNNING" | "STOPPING" | "STOPPED" | "SUCCEEDED" | "FAILED" | "TIMEOUT"

local type TriggerType = "SCHEDULED" | "CONDITIONAL" | "ON_DEMAND" | "EVENT"

local type SourceControlProvider = "GITHUB" | "GITLAB" | "BITBUCKET" | "AWS_CODE_COMMIT"

local type ResourceShareType = "FOREIGN" | "ALL" | "FEDERATED"

local type SchemaStatus = "AVAILABLE" | "PENDING" | "DELETING"

local type ExecutionClass = "FLEX" | "STANDARD"

local type ConnectionStatus = "READY" | "IN_PROGRESS" | "FAILED"

local type ExistCondition = "MUST_EXIST" | "NOT_EXIST" | "NONE"

local type TableOptimizerType = "compaction" | "retention" | "orphan_file_deletion"

local type ViewUpdateAction = "ADD" | "REPLACE" | "ADD_OR_REPLACE" | "DROP"

local type RegistryStatus = "AVAILABLE" | "DELETING"

local type DataFormat = "AVRO" | "JSON" | "PROTOBUF"

local type EnableHybridValues = "TRUE" | "FALSE"

local type JobMode = "SCRIPT" | "VISUAL" | "NOTEBOOK"

local type SourceControlAuthStrategy = "PERSONAL_ACCESS_TOKEN" | "AWS_SECRETS_MANAGER"

local type Language = "PYTHON" | "SCALA"

local type Compatibility = "NONE" | "DISABLED" | "BACKWARD" | "BACKWARD_ALL" | "FORWARD" | "FORWARD_ALL" | "FULL" | "FULL_ALL"

local record M
    BatchCreatePartitionInput: BatchCreatePartitionInput
    BatchCreatePartitionOutput: BatchCreatePartitionOutput
    BatchDeleteConnectionInput: BatchDeleteConnectionInput
    BatchDeleteConnectionOutput: BatchDeleteConnectionOutput
    BatchDeletePartitionInput: BatchDeletePartitionInput
    BatchDeletePartitionOutput: BatchDeletePartitionOutput
    BatchDeleteTableInput: BatchDeleteTableInput
    BatchDeleteTableOutput: BatchDeleteTableOutput
    BatchDeleteTableVersionInput: BatchDeleteTableVersionInput
    BatchDeleteTableVersionOutput: BatchDeleteTableVersionOutput
    BatchGetBlueprintsInput: BatchGetBlueprintsInput
    BatchGetBlueprintsOutput: BatchGetBlueprintsOutput
    BatchGetCrawlersInput: BatchGetCrawlersInput
    BatchGetCrawlersOutput: BatchGetCrawlersOutput
    BatchGetCustomEntityTypesInput: BatchGetCustomEntityTypesInput
    BatchGetCustomEntityTypesOutput: BatchGetCustomEntityTypesOutput
    BatchGetDataQualityResultInput: BatchGetDataQualityResultInput
    BatchGetDataQualityResultOutput: BatchGetDataQualityResultOutput
    BatchGetDevEndpointsInput: BatchGetDevEndpointsInput
    BatchGetDevEndpointsOutput: BatchGetDevEndpointsOutput
    BatchGetJobsInput: BatchGetJobsInput
    BatchGetJobsOutput: BatchGetJobsOutput
    BatchGetPartitionInput: BatchGetPartitionInput
    BatchGetPartitionOutput: BatchGetPartitionOutput
    BatchGetTableOptimizerInput: BatchGetTableOptimizerInput
    BatchGetTableOptimizerOutput: BatchGetTableOptimizerOutput
    BatchGetTriggersInput: BatchGetTriggersInput
    BatchGetTriggersOutput: BatchGetTriggersOutput
    BatchGetWorkflowsInput: BatchGetWorkflowsInput
    BatchGetWorkflowsOutput: BatchGetWorkflowsOutput
    BatchPutDataQualityStatisticAnnotationInput: BatchPutDataQualityStatisticAnnotationInput
    BatchPutDataQualityStatisticAnnotationOutput: BatchPutDataQualityStatisticAnnotationOutput
    BatchStopJobRunInput: BatchStopJobRunInput
    BatchStopJobRunOutput: BatchStopJobRunOutput
    BatchUpdatePartitionInput: BatchUpdatePartitionInput
    BatchUpdatePartitionOutput: BatchUpdatePartitionOutput
    CancelDataQualityRuleRecommendationRunInput: CancelDataQualityRuleRecommendationRunInput
    CancelDataQualityRuleRecommendationRunOutput: CancelDataQualityRuleRecommendationRunOutput
    CancelDataQualityRulesetEvaluationRunInput: CancelDataQualityRulesetEvaluationRunInput
    CancelDataQualityRulesetEvaluationRunOutput: CancelDataQualityRulesetEvaluationRunOutput
    CancelMLTaskRunInput: CancelMLTaskRunInput
    CancelMLTaskRunOutput: CancelMLTaskRunOutput
    CancelStatementInput: CancelStatementInput
    CancelStatementOutput: CancelStatementOutput
    CheckSchemaVersionValidityInput: CheckSchemaVersionValidityInput
    CheckSchemaVersionValidityOutput: CheckSchemaVersionValidityOutput
    CreateBlueprintInput: CreateBlueprintInput
    CreateBlueprintOutput: CreateBlueprintOutput
    CreateCatalogInput: CreateCatalogInput
    CreateCatalogOutput: CreateCatalogOutput
    CreateClassifierInput: CreateClassifierInput
    CreateClassifierOutput: CreateClassifierOutput
    CreateColumnStatisticsTaskSettingsInput: CreateColumnStatisticsTaskSettingsInput
    CreateColumnStatisticsTaskSettingsOutput: CreateColumnStatisticsTaskSettingsOutput
    CreateConnectionInput: CreateConnectionInput
    CreateConnectionOutput: CreateConnectionOutput
    CreateCrawlerInput: CreateCrawlerInput
    CreateCrawlerOutput: CreateCrawlerOutput
    CreateCustomEntityTypeInput: CreateCustomEntityTypeInput
    CreateCustomEntityTypeOutput: CreateCustomEntityTypeOutput
    CreateDatabaseInput: CreateDatabaseInput
    CreateDatabaseOutput: CreateDatabaseOutput
    CreateDataQualityRulesetInput: CreateDataQualityRulesetInput
    CreateDataQualityRulesetOutput: CreateDataQualityRulesetOutput
    CreateDevEndpointInput: CreateDevEndpointInput
    CreateDevEndpointOutput: CreateDevEndpointOutput
    CreateGlueIdentityCenterConfigurationInput: CreateGlueIdentityCenterConfigurationInput
    CreateGlueIdentityCenterConfigurationOutput: CreateGlueIdentityCenterConfigurationOutput
    CreateIntegrationInput: CreateIntegrationInput
    CreateIntegrationOutput: CreateIntegrationOutput
    CreateIntegrationResourcePropertyInput: CreateIntegrationResourcePropertyInput
    CreateIntegrationResourcePropertyOutput: CreateIntegrationResourcePropertyOutput
    CreateIntegrationTablePropertiesInput: CreateIntegrationTablePropertiesInput
    CreateIntegrationTablePropertiesOutput: CreateIntegrationTablePropertiesOutput
    CreateJobInput: CreateJobInput
    CreateJobOutput: CreateJobOutput
    CreateMLTransformInput: CreateMLTransformInput
    CreateMLTransformOutput: CreateMLTransformOutput
    CreatePartitionInput: CreatePartitionInput
    CreatePartitionOutput: CreatePartitionOutput
    CreatePartitionIndexInput: CreatePartitionIndexInput
    CreatePartitionIndexOutput: CreatePartitionIndexOutput
    CreateRegistryInput: CreateRegistryInput
    CreateRegistryOutput: CreateRegistryOutput
    CreateSchemaInput: CreateSchemaInput
    CreateSchemaOutput: CreateSchemaOutput
    CreateScriptInput: CreateScriptInput
    CreateScriptOutput: CreateScriptOutput
    CreateSecurityConfigurationInput: CreateSecurityConfigurationInput
    CreateSecurityConfigurationOutput: CreateSecurityConfigurationOutput
    CreateSessionInput: CreateSessionInput
    CreateSessionOutput: CreateSessionOutput
    CreateTableInput: CreateTableInput
    CreateTableOutput: CreateTableOutput
    CreateTableOptimizerInput: CreateTableOptimizerInput
    CreateTableOptimizerOutput: CreateTableOptimizerOutput
    CreateTriggerInput: CreateTriggerInput
    CreateTriggerOutput: CreateTriggerOutput
    CreateUsageProfileInput: CreateUsageProfileInput
    CreateUsageProfileOutput: CreateUsageProfileOutput
    CreateUserDefinedFunctionInput: CreateUserDefinedFunctionInput
    CreateUserDefinedFunctionOutput: CreateUserDefinedFunctionOutput
    CreateWorkflowInput: CreateWorkflowInput
    CreateWorkflowOutput: CreateWorkflowOutput
    DeleteBlueprintInput: DeleteBlueprintInput
    DeleteBlueprintOutput: DeleteBlueprintOutput
    DeleteCatalogInput: DeleteCatalogInput
    DeleteCatalogOutput: DeleteCatalogOutput
    DeleteClassifierInput: DeleteClassifierInput
    DeleteClassifierOutput: DeleteClassifierOutput
    DeleteColumnStatisticsForPartitionInput: DeleteColumnStatisticsForPartitionInput
    DeleteColumnStatisticsForPartitionOutput: DeleteColumnStatisticsForPartitionOutput
    DeleteColumnStatisticsForTableInput: DeleteColumnStatisticsForTableInput
    DeleteColumnStatisticsForTableOutput: DeleteColumnStatisticsForTableOutput
    DeleteColumnStatisticsTaskSettingsInput: DeleteColumnStatisticsTaskSettingsInput
    DeleteColumnStatisticsTaskSettingsOutput: DeleteColumnStatisticsTaskSettingsOutput
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteConnectionTypeInput: DeleteConnectionTypeInput
    DeleteConnectionTypeOutput: DeleteConnectionTypeOutput
    DeleteCrawlerInput: DeleteCrawlerInput
    DeleteCrawlerOutput: DeleteCrawlerOutput
    DeleteCustomEntityTypeInput: DeleteCustomEntityTypeInput
    DeleteCustomEntityTypeOutput: DeleteCustomEntityTypeOutput
    DeleteDatabaseInput: DeleteDatabaseInput
    DeleteDatabaseOutput: DeleteDatabaseOutput
    DeleteDataQualityRulesetInput: DeleteDataQualityRulesetInput
    DeleteDataQualityRulesetOutput: DeleteDataQualityRulesetOutput
    DeleteDevEndpointInput: DeleteDevEndpointInput
    DeleteDevEndpointOutput: DeleteDevEndpointOutput
    DeleteGlueIdentityCenterConfigurationInput: DeleteGlueIdentityCenterConfigurationInput
    DeleteGlueIdentityCenterConfigurationOutput: DeleteGlueIdentityCenterConfigurationOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeleteIntegrationResourcePropertyInput: DeleteIntegrationResourcePropertyInput
    DeleteIntegrationResourcePropertyOutput: DeleteIntegrationResourcePropertyOutput
    DeleteIntegrationTablePropertiesInput: DeleteIntegrationTablePropertiesInput
    DeleteIntegrationTablePropertiesOutput: DeleteIntegrationTablePropertiesOutput
    DeleteJobInput: DeleteJobInput
    DeleteJobOutput: DeleteJobOutput
    DeleteMLTransformInput: DeleteMLTransformInput
    DeleteMLTransformOutput: DeleteMLTransformOutput
    DeletePartitionInput: DeletePartitionInput
    DeletePartitionOutput: DeletePartitionOutput
    DeletePartitionIndexInput: DeletePartitionIndexInput
    DeletePartitionIndexOutput: DeletePartitionIndexOutput
    DeleteRegistryInput: DeleteRegistryInput
    DeleteRegistryOutput: DeleteRegistryOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteSchemaInput: DeleteSchemaInput
    DeleteSchemaOutput: DeleteSchemaOutput
    DeleteSchemaVersionsInput: DeleteSchemaVersionsInput
    DeleteSchemaVersionsOutput: DeleteSchemaVersionsOutput
    DeleteSecurityConfigurationInput: DeleteSecurityConfigurationInput
    DeleteSecurityConfigurationOutput: DeleteSecurityConfigurationOutput
    DeleteSessionInput: DeleteSessionInput
    DeleteSessionOutput: DeleteSessionOutput
    DeleteTableInput: DeleteTableInput
    DeleteTableOutput: DeleteTableOutput
    DeleteTableOptimizerInput: DeleteTableOptimizerInput
    DeleteTableOptimizerOutput: DeleteTableOptimizerOutput
    DeleteTableVersionInput: DeleteTableVersionInput
    DeleteTableVersionOutput: DeleteTableVersionOutput
    DeleteTriggerInput: DeleteTriggerInput
    DeleteTriggerOutput: DeleteTriggerOutput
    DeleteUsageProfileInput: DeleteUsageProfileInput
    DeleteUsageProfileOutput: DeleteUsageProfileOutput
    DeleteUserDefinedFunctionInput: DeleteUserDefinedFunctionInput
    DeleteUserDefinedFunctionOutput: DeleteUserDefinedFunctionOutput
    DeleteWorkflowInput: DeleteWorkflowInput
    DeleteWorkflowOutput: DeleteWorkflowOutput
    DescribeConnectionTypeInput: DescribeConnectionTypeInput
    DescribeConnectionTypeOutput: DescribeConnectionTypeOutput
    DescribeEntityInput: DescribeEntityInput
    DescribeEntityOutput: DescribeEntityOutput
    DescribeInboundIntegrationsInput: DescribeInboundIntegrationsInput
    DescribeInboundIntegrationsOutput: DescribeInboundIntegrationsOutput
    DescribeIntegrationsInput: DescribeIntegrationsInput
    DescribeIntegrationsOutput: DescribeIntegrationsOutput
    GetBlueprintInput: GetBlueprintInput
    GetBlueprintOutput: GetBlueprintOutput
    GetBlueprintRunInput: GetBlueprintRunInput
    GetBlueprintRunOutput: GetBlueprintRunOutput
    GetBlueprintRunsInput: GetBlueprintRunsInput
    GetBlueprintRunsOutput: GetBlueprintRunsOutput
    GetCatalogInput: GetCatalogInput
    GetCatalogOutput: GetCatalogOutput
    GetCatalogImportStatusInput: GetCatalogImportStatusInput
    GetCatalogImportStatusOutput: GetCatalogImportStatusOutput
    GetCatalogsInput: GetCatalogsInput
    GetCatalogsOutput: GetCatalogsOutput
    GetClassifierInput: GetClassifierInput
    GetClassifierOutput: GetClassifierOutput
    GetClassifiersInput: GetClassifiersInput
    GetClassifiersOutput: GetClassifiersOutput
    GetColumnStatisticsForPartitionInput: GetColumnStatisticsForPartitionInput
    GetColumnStatisticsForPartitionOutput: GetColumnStatisticsForPartitionOutput
    GetColumnStatisticsForTableInput: GetColumnStatisticsForTableInput
    GetColumnStatisticsForTableOutput: GetColumnStatisticsForTableOutput
    GetColumnStatisticsTaskRunInput: GetColumnStatisticsTaskRunInput
    GetColumnStatisticsTaskRunOutput: GetColumnStatisticsTaskRunOutput
    GetColumnStatisticsTaskRunsInput: GetColumnStatisticsTaskRunsInput
    GetColumnStatisticsTaskRunsOutput: GetColumnStatisticsTaskRunsOutput
    GetColumnStatisticsTaskSettingsInput: GetColumnStatisticsTaskSettingsInput
    GetColumnStatisticsTaskSettingsOutput: GetColumnStatisticsTaskSettingsOutput
    GetConnectionInput: GetConnectionInput
    GetConnectionOutput: GetConnectionOutput
    GetConnectionsInput: GetConnectionsInput
    GetConnectionsOutput: GetConnectionsOutput
    GetCrawlerInput: GetCrawlerInput
    GetCrawlerOutput: GetCrawlerOutput
    GetCrawlerMetricsInput: GetCrawlerMetricsInput
    GetCrawlerMetricsOutput: GetCrawlerMetricsOutput
    GetCrawlersInput: GetCrawlersInput
    GetCrawlersOutput: GetCrawlersOutput
    GetCustomEntityTypeInput: GetCustomEntityTypeInput
    GetCustomEntityTypeOutput: GetCustomEntityTypeOutput
    GetDatabaseInput: GetDatabaseInput
    GetDatabaseOutput: GetDatabaseOutput
    GetDatabasesInput: GetDatabasesInput
    GetDatabasesOutput: GetDatabasesOutput
    GetDataCatalogEncryptionSettingsInput: GetDataCatalogEncryptionSettingsInput
    GetDataCatalogEncryptionSettingsOutput: GetDataCatalogEncryptionSettingsOutput
    GetDataflowGraphInput: GetDataflowGraphInput
    GetDataflowGraphOutput: GetDataflowGraphOutput
    GetDataQualityModelInput: GetDataQualityModelInput
    GetDataQualityModelOutput: GetDataQualityModelOutput
    GetDataQualityModelResultInput: GetDataQualityModelResultInput
    GetDataQualityModelResultOutput: GetDataQualityModelResultOutput
    GetDataQualityResultInput: GetDataQualityResultInput
    GetDataQualityResultOutput: GetDataQualityResultOutput
    GetDataQualityRuleRecommendationRunInput: GetDataQualityRuleRecommendationRunInput
    GetDataQualityRuleRecommendationRunOutput: GetDataQualityRuleRecommendationRunOutput
    GetDataQualityRulesetInput: GetDataQualityRulesetInput
    GetDataQualityRulesetOutput: GetDataQualityRulesetOutput
    GetDataQualityRulesetEvaluationRunInput: GetDataQualityRulesetEvaluationRunInput
    GetDataQualityRulesetEvaluationRunOutput: GetDataQualityRulesetEvaluationRunOutput
    GetDevEndpointInput: GetDevEndpointInput
    GetDevEndpointOutput: GetDevEndpointOutput
    GetDevEndpointsInput: GetDevEndpointsInput
    GetDevEndpointsOutput: GetDevEndpointsOutput
    GetEntityRecordsInput: GetEntityRecordsInput
    GetEntityRecordsOutput: GetEntityRecordsOutput
    GetGlueIdentityCenterConfigurationInput: GetGlueIdentityCenterConfigurationInput
    GetGlueIdentityCenterConfigurationOutput: GetGlueIdentityCenterConfigurationOutput
    GetIntegrationResourcePropertyInput: GetIntegrationResourcePropertyInput
    GetIntegrationResourcePropertyOutput: GetIntegrationResourcePropertyOutput
    GetIntegrationTablePropertiesInput: GetIntegrationTablePropertiesInput
    GetIntegrationTablePropertiesOutput: GetIntegrationTablePropertiesOutput
    GetJobInput: GetJobInput
    GetJobOutput: GetJobOutput
    GetJobBookmarkInput: GetJobBookmarkInput
    GetJobBookmarkOutput: GetJobBookmarkOutput
    GetJobRunInput: GetJobRunInput
    GetJobRunOutput: GetJobRunOutput
    GetJobRunsInput: GetJobRunsInput
    GetJobRunsOutput: GetJobRunsOutput
    GetJobsInput: GetJobsInput
    GetJobsOutput: GetJobsOutput
    GetMappingInput: GetMappingInput
    GetMappingOutput: GetMappingOutput
    GetMaterializedViewRefreshTaskRunInput: GetMaterializedViewRefreshTaskRunInput
    GetMaterializedViewRefreshTaskRunOutput: GetMaterializedViewRefreshTaskRunOutput
    GetMLTaskRunInput: GetMLTaskRunInput
    GetMLTaskRunOutput: GetMLTaskRunOutput
    GetMLTaskRunsInput: GetMLTaskRunsInput
    GetMLTaskRunsOutput: GetMLTaskRunsOutput
    GetMLTransformInput: GetMLTransformInput
    GetMLTransformOutput: GetMLTransformOutput
    GetMLTransformsInput: GetMLTransformsInput
    GetMLTransformsOutput: GetMLTransformsOutput
    GetPartitionInput: GetPartitionInput
    GetPartitionOutput: GetPartitionOutput
    GetPartitionIndexesInput: GetPartitionIndexesInput
    GetPartitionIndexesOutput: GetPartitionIndexesOutput
    GetPartitionsInput: GetPartitionsInput
    GetPartitionsOutput: GetPartitionsOutput
    GetPlanInput: GetPlanInput
    GetPlanOutput: GetPlanOutput
    GetRegistryInput: GetRegistryInput
    GetRegistryOutput: GetRegistryOutput
    GetResourcePoliciesInput: GetResourcePoliciesInput
    GetResourcePoliciesOutput: GetResourcePoliciesOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetSchemaInput: GetSchemaInput
    GetSchemaOutput: GetSchemaOutput
    GetSchemaByDefinitionInput: GetSchemaByDefinitionInput
    GetSchemaByDefinitionOutput: GetSchemaByDefinitionOutput
    GetSchemaVersionInput: GetSchemaVersionInput
    GetSchemaVersionOutput: GetSchemaVersionOutput
    GetSchemaVersionsDiffInput: GetSchemaVersionsDiffInput
    GetSchemaVersionsDiffOutput: GetSchemaVersionsDiffOutput
    GetSecurityConfigurationInput: GetSecurityConfigurationInput
    GetSecurityConfigurationOutput: GetSecurityConfigurationOutput
    GetSecurityConfigurationsInput: GetSecurityConfigurationsInput
    GetSecurityConfigurationsOutput: GetSecurityConfigurationsOutput
    GetSessionInput: GetSessionInput
    GetSessionOutput: GetSessionOutput
    GetStatementInput: GetStatementInput
    GetStatementOutput: GetStatementOutput
    GetTableInput: GetTableInput
    GetTableOutput: GetTableOutput
    GetTableOptimizerInput: GetTableOptimizerInput
    GetTableOptimizerOutput: GetTableOptimizerOutput
    GetTablesInput: GetTablesInput
    GetTablesOutput: GetTablesOutput
    GetTableVersionInput: GetTableVersionInput
    GetTableVersionOutput: GetTableVersionOutput
    GetTableVersionsInput: GetTableVersionsInput
    GetTableVersionsOutput: GetTableVersionsOutput
    GetTagsInput: GetTagsInput
    GetTagsOutput: GetTagsOutput
    GetTriggerInput: GetTriggerInput
    GetTriggerOutput: GetTriggerOutput
    GetTriggersInput: GetTriggersInput
    GetTriggersOutput: GetTriggersOutput
    GetUnfilteredPartitionMetadataInput: GetUnfilteredPartitionMetadataInput
    GetUnfilteredPartitionMetadataOutput: GetUnfilteredPartitionMetadataOutput
    GetUnfilteredPartitionsMetadataInput: GetUnfilteredPartitionsMetadataInput
    GetUnfilteredPartitionsMetadataOutput: GetUnfilteredPartitionsMetadataOutput
    GetUnfilteredTableMetadataInput: GetUnfilteredTableMetadataInput
    GetUnfilteredTableMetadataOutput: GetUnfilteredTableMetadataOutput
    GetUsageProfileInput: GetUsageProfileInput
    GetUsageProfileOutput: GetUsageProfileOutput
    GetUserDefinedFunctionInput: GetUserDefinedFunctionInput
    GetUserDefinedFunctionOutput: GetUserDefinedFunctionOutput
    GetUserDefinedFunctionsInput: GetUserDefinedFunctionsInput
    GetUserDefinedFunctionsOutput: GetUserDefinedFunctionsOutput
    GetWorkflowInput: GetWorkflowInput
    GetWorkflowOutput: GetWorkflowOutput
    GetWorkflowRunInput: GetWorkflowRunInput
    GetWorkflowRunOutput: GetWorkflowRunOutput
    GetWorkflowRunPropertiesInput: GetWorkflowRunPropertiesInput
    GetWorkflowRunPropertiesOutput: GetWorkflowRunPropertiesOutput
    GetWorkflowRunsInput: GetWorkflowRunsInput
    GetWorkflowRunsOutput: GetWorkflowRunsOutput
    ImportCatalogToGlueInput: ImportCatalogToGlueInput
    ImportCatalogToGlueOutput: ImportCatalogToGlueOutput
    ListBlueprintsInput: ListBlueprintsInput
    ListBlueprintsOutput: ListBlueprintsOutput
    ListColumnStatisticsTaskRunsInput: ListColumnStatisticsTaskRunsInput
    ListColumnStatisticsTaskRunsOutput: ListColumnStatisticsTaskRunsOutput
    ListConnectionTypesInput: ListConnectionTypesInput
    ListConnectionTypesOutput: ListConnectionTypesOutput
    ListCrawlersInput: ListCrawlersInput
    ListCrawlersOutput: ListCrawlersOutput
    ListCrawlsInput: ListCrawlsInput
    ListCrawlsOutput: ListCrawlsOutput
    ListCustomEntityTypesInput: ListCustomEntityTypesInput
    ListCustomEntityTypesOutput: ListCustomEntityTypesOutput
    ListDataQualityResultsInput: ListDataQualityResultsInput
    ListDataQualityResultsOutput: ListDataQualityResultsOutput
    ListDataQualityRuleRecommendationRunsInput: ListDataQualityRuleRecommendationRunsInput
    ListDataQualityRuleRecommendationRunsOutput: ListDataQualityRuleRecommendationRunsOutput
    ListDataQualityRulesetEvaluationRunsInput: ListDataQualityRulesetEvaluationRunsInput
    ListDataQualityRulesetEvaluationRunsOutput: ListDataQualityRulesetEvaluationRunsOutput
    ListDataQualityRulesetsInput: ListDataQualityRulesetsInput
    ListDataQualityRulesetsOutput: ListDataQualityRulesetsOutput
    ListDataQualityStatisticAnnotationsInput: ListDataQualityStatisticAnnotationsInput
    ListDataQualityStatisticAnnotationsOutput: ListDataQualityStatisticAnnotationsOutput
    ListDataQualityStatisticsInput: ListDataQualityStatisticsInput
    ListDataQualityStatisticsOutput: ListDataQualityStatisticsOutput
    ListDevEndpointsInput: ListDevEndpointsInput
    ListDevEndpointsOutput: ListDevEndpointsOutput
    ListEntitiesInput: ListEntitiesInput
    ListEntitiesOutput: ListEntitiesOutput
    ListIntegrationResourcePropertiesInput: ListIntegrationResourcePropertiesInput
    ListIntegrationResourcePropertiesOutput: ListIntegrationResourcePropertiesOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListMaterializedViewRefreshTaskRunsInput: ListMaterializedViewRefreshTaskRunsInput
    ListMaterializedViewRefreshTaskRunsOutput: ListMaterializedViewRefreshTaskRunsOutput
    ListMLTransformsInput: ListMLTransformsInput
    ListMLTransformsOutput: ListMLTransformsOutput
    ListRegistriesInput: ListRegistriesInput
    ListRegistriesOutput: ListRegistriesOutput
    ListSchemasInput: ListSchemasInput
    ListSchemasOutput: ListSchemasOutput
    ListSchemaVersionsInput: ListSchemaVersionsInput
    ListSchemaVersionsOutput: ListSchemaVersionsOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    ListStatementsInput: ListStatementsInput
    ListStatementsOutput: ListStatementsOutput
    ListTableOptimizerRunsInput: ListTableOptimizerRunsInput
    ListTableOptimizerRunsOutput: ListTableOptimizerRunsOutput
    ListTriggersInput: ListTriggersInput
    ListTriggersOutput: ListTriggersOutput
    ListUsageProfilesInput: ListUsageProfilesInput
    ListUsageProfilesOutput: ListUsageProfilesOutput
    ListWorkflowsInput: ListWorkflowsInput
    ListWorkflowsOutput: ListWorkflowsOutput
    ModifyIntegrationInput: ModifyIntegrationInput
    ModifyIntegrationOutput: ModifyIntegrationOutput
    PutDataCatalogEncryptionSettingsInput: PutDataCatalogEncryptionSettingsInput
    PutDataCatalogEncryptionSettingsOutput: PutDataCatalogEncryptionSettingsOutput
    PutDataQualityProfileAnnotationInput: PutDataQualityProfileAnnotationInput
    PutDataQualityProfileAnnotationOutput: PutDataQualityProfileAnnotationOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    PutSchemaVersionMetadataInput: PutSchemaVersionMetadataInput
    PutSchemaVersionMetadataOutput: PutSchemaVersionMetadataOutput
    PutWorkflowRunPropertiesInput: PutWorkflowRunPropertiesInput
    PutWorkflowRunPropertiesOutput: PutWorkflowRunPropertiesOutput
    QuerySchemaVersionMetadataInput: QuerySchemaVersionMetadataInput
    QuerySchemaVersionMetadataOutput: QuerySchemaVersionMetadataOutput
    RegisterConnectionTypeInput: RegisterConnectionTypeInput
    RegisterConnectionTypeOutput: RegisterConnectionTypeOutput
    RegisterSchemaVersionInput: RegisterSchemaVersionInput
    RegisterSchemaVersionOutput: RegisterSchemaVersionOutput
    RemoveSchemaVersionMetadataInput: RemoveSchemaVersionMetadataInput
    RemoveSchemaVersionMetadataOutput: RemoveSchemaVersionMetadataOutput
    ResetJobBookmarkInput: ResetJobBookmarkInput
    ResetJobBookmarkOutput: ResetJobBookmarkOutput
    ResumeWorkflowRunInput: ResumeWorkflowRunInput
    ResumeWorkflowRunOutput: ResumeWorkflowRunOutput
    RunStatementInput: RunStatementInput
    RunStatementOutput: RunStatementOutput
    SearchTablesInput: SearchTablesInput
    SearchTablesOutput: SearchTablesOutput
    StartBlueprintRunInput: StartBlueprintRunInput
    StartBlueprintRunOutput: StartBlueprintRunOutput
    StartColumnStatisticsTaskRunInput: StartColumnStatisticsTaskRunInput
    StartColumnStatisticsTaskRunOutput: StartColumnStatisticsTaskRunOutput
    StartColumnStatisticsTaskRunScheduleInput: StartColumnStatisticsTaskRunScheduleInput
    StartColumnStatisticsTaskRunScheduleOutput: StartColumnStatisticsTaskRunScheduleOutput
    StartCrawlerInput: StartCrawlerInput
    StartCrawlerOutput: StartCrawlerOutput
    StartCrawlerScheduleInput: StartCrawlerScheduleInput
    StartCrawlerScheduleOutput: StartCrawlerScheduleOutput
    StartDataQualityRuleRecommendationRunInput: StartDataQualityRuleRecommendationRunInput
    StartDataQualityRuleRecommendationRunOutput: StartDataQualityRuleRecommendationRunOutput
    StartDataQualityRulesetEvaluationRunInput: StartDataQualityRulesetEvaluationRunInput
    StartDataQualityRulesetEvaluationRunOutput: StartDataQualityRulesetEvaluationRunOutput
    StartExportLabelsTaskRunInput: StartExportLabelsTaskRunInput
    StartExportLabelsTaskRunOutput: StartExportLabelsTaskRunOutput
    StartImportLabelsTaskRunInput: StartImportLabelsTaskRunInput
    StartImportLabelsTaskRunOutput: StartImportLabelsTaskRunOutput
    StartJobRunInput: StartJobRunInput
    StartJobRunOutput: StartJobRunOutput
    StartMaterializedViewRefreshTaskRunInput: StartMaterializedViewRefreshTaskRunInput
    StartMaterializedViewRefreshTaskRunOutput: StartMaterializedViewRefreshTaskRunOutput
    StartMLEvaluationTaskRunInput: StartMLEvaluationTaskRunInput
    StartMLEvaluationTaskRunOutput: StartMLEvaluationTaskRunOutput
    StartMLLabelingSetGenerationTaskRunInput: StartMLLabelingSetGenerationTaskRunInput
    StartMLLabelingSetGenerationTaskRunOutput: StartMLLabelingSetGenerationTaskRunOutput
    StartTriggerInput: StartTriggerInput
    StartTriggerOutput: StartTriggerOutput
    StartWorkflowRunInput: StartWorkflowRunInput
    StartWorkflowRunOutput: StartWorkflowRunOutput
    StopColumnStatisticsTaskRunInput: StopColumnStatisticsTaskRunInput
    StopColumnStatisticsTaskRunOutput: StopColumnStatisticsTaskRunOutput
    StopColumnStatisticsTaskRunScheduleInput: StopColumnStatisticsTaskRunScheduleInput
    StopColumnStatisticsTaskRunScheduleOutput: StopColumnStatisticsTaskRunScheduleOutput
    StopCrawlerInput: StopCrawlerInput
    StopCrawlerOutput: StopCrawlerOutput
    StopCrawlerScheduleInput: StopCrawlerScheduleInput
    StopCrawlerScheduleOutput: StopCrawlerScheduleOutput
    StopMaterializedViewRefreshTaskRunInput: StopMaterializedViewRefreshTaskRunInput
    StopMaterializedViewRefreshTaskRunOutput: StopMaterializedViewRefreshTaskRunOutput
    StopSessionInput: StopSessionInput
    StopSessionOutput: StopSessionOutput
    StopTriggerInput: StopTriggerInput
    StopTriggerOutput: StopTriggerOutput
    StopWorkflowRunInput: StopWorkflowRunInput
    StopWorkflowRunOutput: StopWorkflowRunOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestConnectionOperationInput: TestConnectionOperationInput
    TestConnectionOutput: TestConnectionOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBlueprintInput: UpdateBlueprintInput
    UpdateBlueprintOutput: UpdateBlueprintOutput
    UpdateCatalogInput: UpdateCatalogInput
    UpdateCatalogOutput: UpdateCatalogOutput
    UpdateClassifierInput: UpdateClassifierInput
    UpdateClassifierOutput: UpdateClassifierOutput
    UpdateColumnStatisticsForPartitionInput: UpdateColumnStatisticsForPartitionInput
    UpdateColumnStatisticsForPartitionOutput: UpdateColumnStatisticsForPartitionOutput
    UpdateColumnStatisticsForTableInput: UpdateColumnStatisticsForTableInput
    UpdateColumnStatisticsForTableOutput: UpdateColumnStatisticsForTableOutput
    UpdateColumnStatisticsTaskSettingsInput: UpdateColumnStatisticsTaskSettingsInput
    UpdateColumnStatisticsTaskSettingsOutput: UpdateColumnStatisticsTaskSettingsOutput
    UpdateConnectionInput: UpdateConnectionInput
    UpdateConnectionOutput: UpdateConnectionOutput
    UpdateCrawlerInput: UpdateCrawlerInput
    UpdateCrawlerOutput: UpdateCrawlerOutput
    UpdateCrawlerScheduleInput: UpdateCrawlerScheduleInput
    UpdateCrawlerScheduleOutput: UpdateCrawlerScheduleOutput
    UpdateDatabaseInput: UpdateDatabaseInput
    UpdateDatabaseOutput: UpdateDatabaseOutput
    UpdateDataQualityRulesetInput: UpdateDataQualityRulesetInput
    UpdateDataQualityRulesetOutput: UpdateDataQualityRulesetOutput
    UpdateDevEndpointInput: UpdateDevEndpointInput
    UpdateDevEndpointOutput: UpdateDevEndpointOutput
    UpdateGlueIdentityCenterConfigurationInput: UpdateGlueIdentityCenterConfigurationInput
    UpdateGlueIdentityCenterConfigurationOutput: UpdateGlueIdentityCenterConfigurationOutput
    UpdateIntegrationResourcePropertyInput: UpdateIntegrationResourcePropertyInput
    UpdateIntegrationResourcePropertyOutput: UpdateIntegrationResourcePropertyOutput
    UpdateIntegrationTablePropertiesInput: UpdateIntegrationTablePropertiesInput
    UpdateIntegrationTablePropertiesOutput: UpdateIntegrationTablePropertiesOutput
    UpdateJobInput: UpdateJobInput
    UpdateJobOutput: UpdateJobOutput
    UpdateJobFromSourceControlInput: UpdateJobFromSourceControlInput
    UpdateJobFromSourceControlOutput: UpdateJobFromSourceControlOutput
    UpdateMLTransformInput: UpdateMLTransformInput
    UpdateMLTransformOutput: UpdateMLTransformOutput
    UpdatePartitionInput: UpdatePartitionInput
    UpdatePartitionOutput: UpdatePartitionOutput
    UpdateRegistryInput: UpdateRegistryInput
    UpdateRegistryOutput: UpdateRegistryOutput
    UpdateSchemaInput: UpdateSchemaInput
    UpdateSchemaOutput: UpdateSchemaOutput
    UpdateSourceControlFromJobInput: UpdateSourceControlFromJobInput
    UpdateSourceControlFromJobOutput: UpdateSourceControlFromJobOutput
    UpdateTableInput: UpdateTableInput
    UpdateTableOutput: UpdateTableOutput
    UpdateTableOptimizerInput: UpdateTableOptimizerInput
    UpdateTableOptimizerOutput: UpdateTableOptimizerOutput
    UpdateTriggerInput: UpdateTriggerInput
    UpdateTriggerOutput: UpdateTriggerOutput
    UpdateUsageProfileInput: UpdateUsageProfileInput
    UpdateUsageProfileOutput: UpdateUsageProfileOutput
    UpdateUserDefinedFunctionInput: UpdateUserDefinedFunctionInput
    UpdateUserDefinedFunctionOutput: UpdateUserDefinedFunctionOutput
    UpdateWorkflowInput: UpdateWorkflowInput
    UpdateWorkflowOutput: UpdateWorkflowOutput
end

return M
