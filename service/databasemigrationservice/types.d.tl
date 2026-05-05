local record AddTagsToResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record AddTagsToResourceOutput
end

local record ApplyPendingMaintenanceActionInput
    ReplicationInstanceArn: string
    ApplyAction: string
    OptInType: string
end

local record ApplyPendingMaintenanceActionOutput
    ResourcePendingMaintenanceActions: ResourcePendingMaintenanceActions
end

local record BatchStartRecommendationsInput
    Data: {StartRecommendationsRequestEntry}
end

local record BatchStartRecommendationsOutput
    ErrorEntries: {BatchStartRecommendationsErrorEntry}
end

local record CancelMetadataModelConversionInput
    MigrationProjectIdentifier: string
    RequestIdentifier: string
end

local record CancelMetadataModelConversionOutput
    Request: SchemaConversionRequest
end

local record CancelMetadataModelCreationInput
    MigrationProjectIdentifier: string
    RequestIdentifier: string
end

local record CancelMetadataModelCreationOutput
    Request: SchemaConversionRequest
end

local record CancelReplicationTaskAssessmentRunInput
    ReplicationTaskAssessmentRunArn: string
end

local record CancelReplicationTaskAssessmentRunOutput
    ReplicationTaskAssessmentRun: ReplicationTaskAssessmentRun
end

local record CreateDataMigrationInput
    DataMigrationName: string
    MigrationProjectIdentifier: string
    DataMigrationType: string
    ServiceAccessRoleArn: string
    EnableCloudwatchLogs: boolean
    SourceDataSettings: {SourceDataSetting}
    TargetDataSettings: {TargetDataSetting}
    NumberOfJobs: number
    Tags: {Tag}
    SelectionRules: string
end

local record CreateDataMigrationOutput
    DataMigration: DataMigration
end

local record CreateDataProviderInput
    DataProviderName: string
    Description: string
    Engine: string
    Virtual: boolean
    Settings: DataProviderSettings
    Tags: {Tag}
end

local record CreateDataProviderOutput
    DataProvider: DataProvider
end

local record CreateEndpointInput
    EndpointIdentifier: string
    EndpointType: string
    EngineName: string
    Username: string
    Password: string
    ServerName: string
    Port: number
    DatabaseName: string
    ExtraConnectionAttributes: string
    KmsKeyId: string
    Tags: {Tag}
    CertificateArn: string
    SslMode: string
    ServiceAccessRoleArn: string
    ExternalTableDefinition: string
    DynamoDbSettings: DynamoDbSettings
    S3Settings: S3Settings
    DmsTransferSettings: DmsTransferSettings
    MongoDbSettings: MongoDbSettings
    KinesisSettings: KinesisSettings
    KafkaSettings: KafkaSettings
    ElasticsearchSettings: ElasticsearchSettings
    NeptuneSettings: NeptuneSettings
    RedshiftSettings: RedshiftSettings
    PostgreSQLSettings: PostgreSQLSettings
    MySQLSettings: MySQLSettings
    OracleSettings: OracleSettings
    SybaseSettings: SybaseSettings
    MicrosoftSQLServerSettings: MicrosoftSQLServerSettings
    IBMDb2Settings: IBMDb2Settings
    ResourceIdentifier: string
    DocDbSettings: DocDbSettings
    RedisSettings: RedisSettings
    GcpMySQLSettings: GcpMySQLSettings
    TimestreamSettings: TimestreamSettings
end

local record CreateEndpointOutput
    Endpoint: Endpoint
end

local record CreateEventSubscriptionInput
    SubscriptionName: string
    SnsTopicArn: string
    SourceType: string
    EventCategories: {string}
    SourceIds: {string}
    Enabled: boolean
    Tags: {Tag}
end

local record CreateEventSubscriptionOutput
    EventSubscription: EventSubscription
end

local record CreateFleetAdvisorCollectorInput
    CollectorName: string
    Description: string
    ServiceAccessRoleArn: string
    S3BucketName: string
end

local record CreateFleetAdvisorCollectorOutput
    CollectorReferencedId: string
    CollectorName: string
    Description: string
    ServiceAccessRoleArn: string
    S3BucketName: string
end

local record CreateInstanceProfileInput
    AvailabilityZone: string
    KmsKeyArn: string
    PubliclyAccessible: boolean
    Tags: {Tag}
    NetworkType: string
    InstanceProfileName: string
    Description: string
    SubnetGroupIdentifier: string
    VpcSecurityGroups: {string}
end

local record CreateInstanceProfileOutput
    InstanceProfile: InstanceProfile
end

local record CreateMigrationProjectInput
    MigrationProjectName: string
    SourceDataProviderDescriptors: {DataProviderDescriptorDefinition}
    TargetDataProviderDescriptors: {DataProviderDescriptorDefinition}
    InstanceProfileIdentifier: string
    TransformationRules: string
    Description: string
    Tags: {Tag}
    SchemaConversionApplicationAttributes: SCApplicationAttributes
end

local record CreateMigrationProjectOutput
    MigrationProject: MigrationProject
end

local record CreateReplicationConfigInput
    ReplicationConfigIdentifier: string
    SourceEndpointArn: string
    TargetEndpointArn: string
    ComputeConfig: ComputeConfig
    ReplicationType: string
    TableMappings: string
    ReplicationSettings: string
    SupplementalSettings: string
    ResourceIdentifier: string
    Tags: {Tag}
end

local record CreateReplicationConfigOutput
    ReplicationConfig: ReplicationConfig
end

local record CreateReplicationInstanceInput
    ReplicationInstanceIdentifier: string
    AllocatedStorage: number
    ReplicationInstanceClass: string
    VpcSecurityGroupIds: {string}
    AvailabilityZone: string
    ReplicationSubnetGroupIdentifier: string
    PreferredMaintenanceWindow: string
    MultiAZ: boolean
    EngineVersion: string
    AutoMinorVersionUpgrade: boolean
    Tags: {Tag}
    KmsKeyId: string
    PubliclyAccessible: boolean
    DnsNameServers: string
    ResourceIdentifier: string
    NetworkType: string
    KerberosAuthenticationSettings: KerberosAuthenticationSettings
end

local record CreateReplicationInstanceOutput
    ReplicationInstance: ReplicationInstance
end

local record CreateReplicationSubnetGroupInput
    ReplicationSubnetGroupIdentifier: string
    ReplicationSubnetGroupDescription: string
    SubnetIds: {string}
    Tags: {Tag}
end

local record CreateReplicationSubnetGroupOutput
    ReplicationSubnetGroup: ReplicationSubnetGroup
end

local record CreateReplicationTaskInput
    ReplicationTaskIdentifier: string
    SourceEndpointArn: string
    TargetEndpointArn: string
    ReplicationInstanceArn: string
    MigrationType: string
    TableMappings: string
    ReplicationTaskSettings: string
    CdcStartTime: number
    CdcStartPosition: string
    CdcStopPosition: string
    Tags: {Tag}
    TaskData: string
    ResourceIdentifier: string
end

local record CreateReplicationTaskOutput
    ReplicationTask: ReplicationTask
end

local record DeleteCertificateInput
    CertificateArn: string
end

local record DeleteCertificateOutput
    Certificate: Certificate
end

local record DeleteConnectionInput
    EndpointArn: string
    ReplicationInstanceArn: string
end

local record DeleteConnectionOutput
    Connection: Connection
end

local record DeleteDataMigrationInput
    DataMigrationIdentifier: string
end

local record DeleteDataMigrationOutput
    DataMigration: DataMigration
end

local record DeleteDataProviderInput
    DataProviderIdentifier: string
end

local record DeleteDataProviderOutput
    DataProvider: DataProvider
end

local record DeleteEndpointInput
    EndpointArn: string
end

local record DeleteEndpointOutput
    Endpoint: Endpoint
end

local record DeleteEventSubscriptionInput
    SubscriptionName: string
end

local record DeleteEventSubscriptionOutput
    EventSubscription: EventSubscription
end

local record DeleteFleetAdvisorCollectorInput
    CollectorReferencedId: string
end

local record DeleteFleetAdvisorCollectorOutput
end

local record DeleteFleetAdvisorDatabasesInput
    DatabaseIds: {string}
end

local record DeleteFleetAdvisorDatabasesOutput
    DatabaseIds: {string}
end

local record DeleteInstanceProfileInput
    InstanceProfileIdentifier: string
end

local record DeleteInstanceProfileOutput
    InstanceProfile: InstanceProfile
end

local record DeleteMigrationProjectInput
    MigrationProjectIdentifier: string
end

local record DeleteMigrationProjectOutput
    MigrationProject: MigrationProject
end

local record DeleteReplicationConfigInput
    ReplicationConfigArn: string
end

local record DeleteReplicationConfigOutput
    ReplicationConfig: ReplicationConfig
end

local record DeleteReplicationInstanceInput
    ReplicationInstanceArn: string
end

local record DeleteReplicationInstanceOutput
    ReplicationInstance: ReplicationInstance
end

local record DeleteReplicationSubnetGroupInput
    ReplicationSubnetGroupIdentifier: string
end

local record DeleteReplicationSubnetGroupOutput
end

local record DeleteReplicationTaskInput
    ReplicationTaskArn: string
end

local record DeleteReplicationTaskOutput
    ReplicationTask: ReplicationTask
end

local record DeleteReplicationTaskAssessmentRunInput
    ReplicationTaskAssessmentRunArn: string
end

local record DeleteReplicationTaskAssessmentRunOutput
    ReplicationTaskAssessmentRun: ReplicationTaskAssessmentRun
end

local record DescribeAccountAttributesInput
end

local record DescribeAccountAttributesOutput
    AccountQuotas: {AccountQuota}
    UniqueAccountIdentifier: string
end

local record DescribeApplicableIndividualAssessmentsInput
    ReplicationTaskArn: string
    ReplicationInstanceArn: string
    ReplicationConfigArn: string
    SourceEngineName: string
    TargetEngineName: string
    MigrationType: string
    MaxRecords: number
    Marker: string
end

local record DescribeApplicableIndividualAssessmentsOutput
    IndividualAssessmentNames: {string}
    Marker: string
end

local record DescribeCertificatesInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeCertificatesOutput
    Marker: string
    Certificates: {Certificate}
end

local record DescribeConnectionsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeConnectionsOutput
    Marker: string
    Connections: {Connection}
end

local record DescribeConversionConfigurationInput
    MigrationProjectIdentifier: string
end

local record DescribeConversionConfigurationOutput
    MigrationProjectIdentifier: string
    ConversionConfiguration: string
end

local record DescribeDataMigrationsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    WithoutSettings: boolean
    WithoutStatistics: boolean
end

local record DescribeDataMigrationsOutput
    DataMigrations: {DataMigration}
    Marker: string
end

local record DescribeDataProvidersInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDataProvidersOutput
    Marker: string
    DataProviders: {DataProvider}
end

local record DescribeEndpointsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeEndpointsOutput
    Marker: string
    Endpoints: {Endpoint}
end

local record DescribeEndpointSettingsInput
    EngineName: string
    MaxRecords: number
    Marker: string
end

local record DescribeEndpointSettingsOutput
    Marker: string
    EndpointSettings: {EndpointSetting}
end

local record DescribeEndpointTypesInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeEndpointTypesOutput
    Marker: string
    SupportedEndpointTypes: {SupportedEndpointType}
end

local record DescribeEngineVersionsInput
    MaxRecords: number
    Marker: string
end

local record DescribeEngineVersionsOutput
    EngineVersions: {EngineVersion}
    Marker: string
end

local record DescribeEventCategoriesInput
    SourceType: string
    Filters: {Filter}
end

local record DescribeEventCategoriesOutput
    EventCategoryGroupList: {EventCategoryGroup}
end

local record DescribeEventsInput
    SourceIdentifier: string
    SourceType: string
    StartTime: number
    EndTime: number
    Duration: number
    EventCategories: {string}
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeEventsOutput
    Marker: string
    Events: {Event}
end

local record DescribeEventSubscriptionsInput
    SubscriptionName: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeEventSubscriptionsOutput
    Marker: string
    EventSubscriptionsList: {EventSubscription}
end

local record DescribeExtensionPackAssociationsInput
    MigrationProjectIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeExtensionPackAssociationsOutput
    Marker: string
    Requests: {SchemaConversionRequest}
end

local record DescribeFleetAdvisorCollectorsInput
    Filters: {Filter}
    MaxRecords: number
    NextToken: string
end

local record DescribeFleetAdvisorCollectorsOutput
    Collectors: {CollectorResponse}
    NextToken: string
end

local record DescribeFleetAdvisorDatabasesInput
    Filters: {Filter}
    MaxRecords: number
    NextToken: string
end

local record DescribeFleetAdvisorDatabasesOutput
    Databases: {DatabaseResponse}
    NextToken: string
end

local record DescribeFleetAdvisorLsaAnalysisInput
    MaxRecords: number
    NextToken: string
end

local record DescribeFleetAdvisorLsaAnalysisOutput
    Analysis: {FleetAdvisorLsaAnalysisResponse}
    NextToken: string
end

local record DescribeFleetAdvisorSchemaObjectSummaryInput
    Filters: {Filter}
    MaxRecords: number
    NextToken: string
end

local record DescribeFleetAdvisorSchemaObjectSummaryOutput
    FleetAdvisorSchemaObjects: {FleetAdvisorSchemaObjectResponse}
    NextToken: string
end

local record DescribeFleetAdvisorSchemasInput
    Filters: {Filter}
    MaxRecords: number
    NextToken: string
end

local record DescribeFleetAdvisorSchemasOutput
    FleetAdvisorSchemas: {SchemaResponse}
    NextToken: string
end

local record DescribeInstanceProfilesInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeInstanceProfilesOutput
    Marker: string
    InstanceProfiles: {InstanceProfile}
end

local record DescribeMetadataModelInput
    SelectionRules: string
    MigrationProjectIdentifier: string
    Origin: string
end

local record DescribeMetadataModelOutput
    MetadataModelName: string
    MetadataModelType: string
    TargetMetadataModels: {MetadataModelReference}
    Definition: string
end

local record DescribeMetadataModelAssessmentsInput
    MigrationProjectIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeMetadataModelAssessmentsOutput
    Marker: string
    Requests: {SchemaConversionRequest}
end

local record DescribeMetadataModelChildrenInput
    SelectionRules: string
    MigrationProjectIdentifier: string
    Origin: string
    Marker: string
    MaxRecords: number
end

local record DescribeMetadataModelChildrenOutput
    Marker: string
    MetadataModelChildren: {MetadataModelReference}
end

local record DescribeMetadataModelConversionsInput
    MigrationProjectIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeMetadataModelConversionsOutput
    Marker: string
    Requests: {SchemaConversionRequest}
end

local record DescribeMetadataModelCreationsInput
    Filters: {Filter}
    Marker: string
    MaxRecords: number
    MigrationProjectIdentifier: string
end

local record DescribeMetadataModelCreationsOutput
    Marker: string
    Requests: {SchemaConversionRequest}
end

local record DescribeMetadataModelExportsAsScriptInput
    MigrationProjectIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeMetadataModelExportsAsScriptOutput
    Marker: string
    Requests: {SchemaConversionRequest}
end

local record DescribeMetadataModelExportsToTargetInput
    MigrationProjectIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeMetadataModelExportsToTargetOutput
    Marker: string
    Requests: {SchemaConversionRequest}
end

local record DescribeMetadataModelImportsInput
    MigrationProjectIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeMetadataModelImportsOutput
    Marker: string
    Requests: {SchemaConversionRequest}
end

local record DescribeMigrationProjectsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeMigrationProjectsOutput
    Marker: string
    MigrationProjects: {MigrationProject}
end

local record DescribeOrderableReplicationInstancesInput
    MaxRecords: number
    Marker: string
end

local record DescribeOrderableReplicationInstancesOutput
    OrderableReplicationInstances: {OrderableReplicationInstance}
    Marker: string
end

local record DescribePendingMaintenanceActionsInput
    ReplicationInstanceArn: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribePendingMaintenanceActionsOutput
    PendingMaintenanceActions: {ResourcePendingMaintenanceActions}
    Marker: string
end

local record DescribeRecommendationLimitationsInput
    Filters: {Filter}
    MaxRecords: number
    NextToken: string
end

local record DescribeRecommendationLimitationsOutput
    NextToken: string
    Limitations: {Limitation}
end

local record DescribeRecommendationsInput
    Filters: {Filter}
    MaxRecords: number
    NextToken: string
end

local record DescribeRecommendationsOutput
    NextToken: string
    Recommendations: {Recommendation}
end

local record DescribeRefreshSchemasStatusInput
    EndpointArn: string
end

local record DescribeRefreshSchemasStatusOutput
    RefreshSchemasStatus: RefreshSchemasStatus
end

local record DescribeReplicationConfigsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationConfigsOutput
    Marker: string
    ReplicationConfigs: {ReplicationConfig}
end

local record DescribeReplicationInstancesInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationInstancesOutput
    Marker: string
    ReplicationInstances: {ReplicationInstance}
end

local record DescribeReplicationInstanceTaskLogsInput
    ReplicationInstanceArn: string
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationInstanceTaskLogsOutput
    ReplicationInstanceArn: string
    ReplicationInstanceTaskLogs: {ReplicationInstanceTaskLog}
    Marker: string
end

local record DescribeReplicationsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationsOutput
    Marker: string
    Replications: {Replication}
end

local record DescribeReplicationSubnetGroupsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationSubnetGroupsOutput
    Marker: string
    ReplicationSubnetGroups: {ReplicationSubnetGroup}
end

local record DescribeReplicationTableStatisticsInput
    ReplicationConfigArn: string
    MaxRecords: number
    Marker: string
    Filters: {Filter}
end

local record DescribeReplicationTableStatisticsOutput
    ReplicationConfigArn: string
    Marker: string
    ReplicationTableStatistics: {TableStatistics}
end

local record DescribeReplicationTaskAssessmentResultsInput
    ReplicationTaskArn: string
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationTaskAssessmentResultsOutput
    Marker: string
    BucketName: string
    ReplicationTaskAssessmentResults: {ReplicationTaskAssessmentResult}
end

local record DescribeReplicationTaskAssessmentRunsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationTaskAssessmentRunsOutput
    Marker: string
    ReplicationTaskAssessmentRuns: {ReplicationTaskAssessmentRun}
end

local record DescribeReplicationTaskIndividualAssessmentsInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationTaskIndividualAssessmentsOutput
    Marker: string
    ReplicationTaskIndividualAssessments: {ReplicationTaskIndividualAssessment}
end

local record DescribeReplicationTasksInput
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    WithoutSettings: boolean
end

local record DescribeReplicationTasksOutput
    Marker: string
    ReplicationTasks: {ReplicationTask}
end

local record DescribeSchemasInput
    EndpointArn: string
    MaxRecords: number
    Marker: string
end

local record DescribeSchemasOutput
    Marker: string
    Schemas: {string}
end

local record DescribeTableStatisticsInput
    ReplicationTaskArn: string
    MaxRecords: number
    Marker: string
    Filters: {Filter}
end

local record DescribeTableStatisticsOutput
    ReplicationTaskArn: string
    TableStatistics: {TableStatistics}
    Marker: string
end

local record ExportMetadataModelAssessmentInput
    MigrationProjectIdentifier: string
    SelectionRules: string
    FileName: string
    AssessmentReportTypes: {string}
end

local record ExportMetadataModelAssessmentOutput
    PdfReport: ExportMetadataModelAssessmentResultEntry
    CsvReport: ExportMetadataModelAssessmentResultEntry
end

local record GetTargetSelectionRulesInput
    MigrationProjectIdentifier: string
    SelectionRules: string
end

local record GetTargetSelectionRulesOutput
    TargetSelectionRules: string
end

local record ImportCertificateInput
    CertificateIdentifier: string
    CertificatePem: string
    CertificateWallet: string
    Tags: {Tag}
    KmsKeyId: string
end

local record ImportCertificateOutput
    Certificate: Certificate
end

local record ListTagsForResourceInput
    ResourceArn: string
    ResourceArnList: {string}
end

local record ListTagsForResourceOutput
    TagList: {Tag}
end

local record ModifyConversionConfigurationInput
    MigrationProjectIdentifier: string
    ConversionConfiguration: string
end

local record ModifyConversionConfigurationOutput
    MigrationProjectIdentifier: string
end

local record ModifyDataMigrationInput
    DataMigrationIdentifier: string
    DataMigrationName: string
    EnableCloudwatchLogs: boolean
    ServiceAccessRoleArn: string
    DataMigrationType: string
    SourceDataSettings: {SourceDataSetting}
    TargetDataSettings: {TargetDataSetting}
    NumberOfJobs: number
    SelectionRules: string
end

local record ModifyDataMigrationOutput
    DataMigration: DataMigration
end

local record ModifyDataProviderInput
    DataProviderIdentifier: string
    DataProviderName: string
    Description: string
    Engine: string
    Virtual: boolean
    ExactSettings: boolean
    Settings: DataProviderSettings
end

local record ModifyDataProviderOutput
    DataProvider: DataProvider
end

local record ModifyEndpointInput
    EndpointArn: string
    EndpointIdentifier: string
    EndpointType: string
    EngineName: string
    Username: string
    Password: string
    ServerName: string
    Port: number
    DatabaseName: string
    ExtraConnectionAttributes: string
    CertificateArn: string
    SslMode: string
    ServiceAccessRoleArn: string
    ExternalTableDefinition: string
    DynamoDbSettings: DynamoDbSettings
    S3Settings: S3Settings
    DmsTransferSettings: DmsTransferSettings
    MongoDbSettings: MongoDbSettings
    KinesisSettings: KinesisSettings
    KafkaSettings: KafkaSettings
    ElasticsearchSettings: ElasticsearchSettings
    NeptuneSettings: NeptuneSettings
    RedshiftSettings: RedshiftSettings
    PostgreSQLSettings: PostgreSQLSettings
    MySQLSettings: MySQLSettings
    OracleSettings: OracleSettings
    SybaseSettings: SybaseSettings
    MicrosoftSQLServerSettings: MicrosoftSQLServerSettings
    IBMDb2Settings: IBMDb2Settings
    DocDbSettings: DocDbSettings
    RedisSettings: RedisSettings
    ExactSettings: boolean
    GcpMySQLSettings: GcpMySQLSettings
    TimestreamSettings: TimestreamSettings
end

local record ModifyEndpointOutput
    Endpoint: Endpoint
end

local record ModifyEventSubscriptionInput
    SubscriptionName: string
    SnsTopicArn: string
    SourceType: string
    EventCategories: {string}
    Enabled: boolean
end

local record ModifyEventSubscriptionOutput
    EventSubscription: EventSubscription
end

local record ModifyInstanceProfileInput
    InstanceProfileIdentifier: string
    AvailabilityZone: string
    KmsKeyArn: string
    PubliclyAccessible: boolean
    NetworkType: string
    InstanceProfileName: string
    Description: string
    SubnetGroupIdentifier: string
    VpcSecurityGroups: {string}
end

local record ModifyInstanceProfileOutput
    InstanceProfile: InstanceProfile
end

local record ModifyMigrationProjectInput
    MigrationProjectIdentifier: string
    MigrationProjectName: string
    SourceDataProviderDescriptors: {DataProviderDescriptorDefinition}
    TargetDataProviderDescriptors: {DataProviderDescriptorDefinition}
    InstanceProfileIdentifier: string
    TransformationRules: string
    Description: string
    SchemaConversionApplicationAttributes: SCApplicationAttributes
end

local record ModifyMigrationProjectOutput
    MigrationProject: MigrationProject
end

local record ModifyReplicationConfigInput
    ReplicationConfigArn: string
    ReplicationConfigIdentifier: string
    ReplicationType: string
    TableMappings: string
    ReplicationSettings: string
    SupplementalSettings: string
    ComputeConfig: ComputeConfig
    SourceEndpointArn: string
    TargetEndpointArn: string
end

local record ModifyReplicationConfigOutput
    ReplicationConfig: ReplicationConfig
end

local record ModifyReplicationInstanceInput
    ReplicationInstanceArn: string
    AllocatedStorage: number
    ApplyImmediately: boolean
    ReplicationInstanceClass: string
    VpcSecurityGroupIds: {string}
    PreferredMaintenanceWindow: string
    MultiAZ: boolean
    EngineVersion: string
    AllowMajorVersionUpgrade: boolean
    AutoMinorVersionUpgrade: boolean
    ReplicationInstanceIdentifier: string
    NetworkType: string
    KerberosAuthenticationSettings: KerberosAuthenticationSettings
end

local record ModifyReplicationInstanceOutput
    ReplicationInstance: ReplicationInstance
end

local record ModifyReplicationSubnetGroupInput
    ReplicationSubnetGroupIdentifier: string
    ReplicationSubnetGroupDescription: string
    SubnetIds: {string}
end

local record ModifyReplicationSubnetGroupOutput
    ReplicationSubnetGroup: ReplicationSubnetGroup
end

local record ModifyReplicationTaskInput
    ReplicationTaskArn: string
    ReplicationTaskIdentifier: string
    MigrationType: string
    TableMappings: string
    ReplicationTaskSettings: string
    CdcStartTime: number
    CdcStartPosition: string
    CdcStopPosition: string
    TaskData: string
end

local record ModifyReplicationTaskOutput
    ReplicationTask: ReplicationTask
end

local record MoveReplicationTaskInput
    ReplicationTaskArn: string
    TargetReplicationInstanceArn: string
end

local record MoveReplicationTaskOutput
    ReplicationTask: ReplicationTask
end

local record RebootReplicationInstanceInput
    ReplicationInstanceArn: string
    ForceFailover: boolean
    ForcePlannedFailover: boolean
end

local record RebootReplicationInstanceOutput
    ReplicationInstance: ReplicationInstance
end

local record RefreshSchemasInput
    EndpointArn: string
    ReplicationInstanceArn: string
end

local record RefreshSchemasOutput
    RefreshSchemasStatus: RefreshSchemasStatus
end

local record ReloadReplicationTablesInput
    ReplicationConfigArn: string
    TablesToReload: {TableToReload}
    ReloadOption: string
end

local record ReloadReplicationTablesOutput
    ReplicationConfigArn: string
end

local record ReloadTablesInput
    ReplicationTaskArn: string
    TablesToReload: {TableToReload}
    ReloadOption: string
end

local record ReloadTablesOutput
    ReplicationTaskArn: string
end

local record RemoveTagsFromResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record RemoveTagsFromResourceOutput
end

local record RunFleetAdvisorLsaAnalysisInput
end

local record RunFleetAdvisorLsaAnalysisOutput
    LsaAnalysisId: string
    Status: string
end

local record StartDataMigrationInput
    DataMigrationIdentifier: string
    StartType: string
end

local record StartDataMigrationOutput
    DataMigration: DataMigration
end

local record StartExtensionPackAssociationInput
    MigrationProjectIdentifier: string
end

local record StartExtensionPackAssociationOutput
    RequestIdentifier: string
end

local record StartMetadataModelAssessmentInput
    MigrationProjectIdentifier: string
    SelectionRules: string
end

local record StartMetadataModelAssessmentOutput
    RequestIdentifier: string
end

local record StartMetadataModelConversionInput
    MigrationProjectIdentifier: string
    SelectionRules: string
end

local record StartMetadataModelConversionOutput
    RequestIdentifier: string
end

local record StartMetadataModelCreationInput
    MigrationProjectIdentifier: string
    SelectionRules: string
    MetadataModelName: string
    Properties: MetadataModelProperties
end

local record StartMetadataModelCreationOutput
    RequestIdentifier: string
end

local record StartMetadataModelExportAsScriptInput
    MigrationProjectIdentifier: string
    SelectionRules: string
    Origin: string
    FileName: string
end

local record StartMetadataModelExportAsScriptOutput
    RequestIdentifier: string
end

local record StartMetadataModelExportToTargetInput
    MigrationProjectIdentifier: string
    SelectionRules: string
    OverwriteExtensionPack: boolean
end

local record StartMetadataModelExportToTargetOutput
    RequestIdentifier: string
end

local record StartMetadataModelImportInput
    MigrationProjectIdentifier: string
    SelectionRules: string
    Origin: string
    Refresh: boolean
end

local record StartMetadataModelImportOutput
    RequestIdentifier: string
end

local record StartRecommendationsInput
    DatabaseId: string
    Settings: RecommendationSettings
end

local record StartRecommendationsOutput
end

local record StartReplicationInput
    ReplicationConfigArn: string
    StartReplicationType: string
    PremigrationAssessmentSettings: string
    CdcStartTime: number
    CdcStartPosition: string
    CdcStopPosition: string
end

local record StartReplicationOutput
    Replication: Replication
end

local record StartReplicationTaskInput
    ReplicationTaskArn: string
    StartReplicationTaskType: string
    CdcStartTime: number
    CdcStartPosition: string
    CdcStopPosition: string
end

local record StartReplicationTaskOutput
    ReplicationTask: ReplicationTask
end

local record StartReplicationTaskAssessmentInput
    ReplicationTaskArn: string
end

local record StartReplicationTaskAssessmentOutput
    ReplicationTask: ReplicationTask
end

local record StartReplicationTaskAssessmentRunInput
    ReplicationTaskArn: string
    ServiceAccessRoleArn: string
    ResultLocationBucket: string
    ResultLocationFolder: string
    ResultEncryptionMode: string
    ResultKmsKeyArn: string
    AssessmentRunName: string
    IncludeOnly: {string}
    Exclude: {string}
    Tags: {Tag}
end

local record StartReplicationTaskAssessmentRunOutput
    ReplicationTaskAssessmentRun: ReplicationTaskAssessmentRun
end

local record StopDataMigrationInput
    DataMigrationIdentifier: string
end

local record StopDataMigrationOutput
    DataMigration: DataMigration
end

local record StopReplicationInput
    ReplicationConfigArn: string
end

local record StopReplicationOutput
    Replication: Replication
end

local record StopReplicationTaskInput
    ReplicationTaskArn: string
end

local record StopReplicationTaskOutput
    ReplicationTask: ReplicationTask
end

local record TestConnectionInput
    ReplicationInstanceArn: string
    EndpointArn: string
end

local record TestConnectionOutput
    Connection: Connection
end

local record UpdateSubscriptionsToEventBridgeInput
    ForceMove: boolean
end

local record UpdateSubscriptionsToEventBridgeOutput
    Result: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidOperationFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record KMSAccessDeniedFault
    message: string
end

local record KMSDisabledFault
    message: string
end

local record KMSInvalidStateFault
    message: string
end

local record KMSNotFoundFault
    message: string
end

local record KMSThrottlingFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record SNSInvalidTopicFault
    message: string
end

local record SNSNoAuthorizationFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ReplicationSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InsufficientResourceCapacityFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ReplicationSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record ReplicationSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record CollectorNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidOperationFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidCertificateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record KMSAccessDeniedFault
    message: string
end

local record KMSDisabledFault
    message: string
end

local record KMSInvalidStateFault
    message: string
end

local record KMSNotFoundFault
    message: string
end

local record KMSThrottlingFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record SNSInvalidTopicFault
    message: string
end

local record SNSNoAuthorizationFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ReplicationSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InsufficientResourceCapacityFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record UpgradeDependencyFailureFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record ReplicationSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record SubnetAlreadyInUse
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidOperationFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSAccessDeniedFault
    message: string
end

local record KMSDisabledFault
    message: string
end

local record KMSFault
    message: string
end

local record KMSInvalidStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record KMSNotFoundFault
    message: string
end

local record ResourceAlreadyExistsFault
    message: string
    resourceArn: string
end

local record ResourceNotFoundFault
    message: string
end

local record S3AccessDeniedFault
    message: string
end

local record S3ResourceNotFoundFault
    message: string
end

local record FailedDependencyFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ResourceQuotaExceededFault
    message: string
end

local record AccessDeniedFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local type ReloadOptionValue = "data-reload" | "validate-only"

local type ReplicationEndpointTypeValue = "source" | "target"

local type OriginTypeValue = "SOURCE" | "TARGET"

local type DmsSslModeValue = "none" | "require" | "verify-ca" | "verify-full"

local type StartReplicationMigrationTypeValue = "reload-target" | "resume-processing" | "start-replication"

local type MigrationTypeValue = "full-load" | "cdc" | "full-load-and-cdc"

local type SourceType = "replication-instance"

local type StartReplicationTaskTypeValue = "start-replication" | "resume-processing" | "reload-target"

local record M
    AddTagsToResourceInput: AddTagsToResourceInput
    AddTagsToResourceOutput: AddTagsToResourceOutput
    ApplyPendingMaintenanceActionInput: ApplyPendingMaintenanceActionInput
    ApplyPendingMaintenanceActionOutput: ApplyPendingMaintenanceActionOutput
    BatchStartRecommendationsInput: BatchStartRecommendationsInput
    BatchStartRecommendationsOutput: BatchStartRecommendationsOutput
    CancelMetadataModelConversionInput: CancelMetadataModelConversionInput
    CancelMetadataModelConversionOutput: CancelMetadataModelConversionOutput
    CancelMetadataModelCreationInput: CancelMetadataModelCreationInput
    CancelMetadataModelCreationOutput: CancelMetadataModelCreationOutput
    CancelReplicationTaskAssessmentRunInput: CancelReplicationTaskAssessmentRunInput
    CancelReplicationTaskAssessmentRunOutput: CancelReplicationTaskAssessmentRunOutput
    CreateDataMigrationInput: CreateDataMigrationInput
    CreateDataMigrationOutput: CreateDataMigrationOutput
    CreateDataProviderInput: CreateDataProviderInput
    CreateDataProviderOutput: CreateDataProviderOutput
    CreateEndpointInput: CreateEndpointInput
    CreateEndpointOutput: CreateEndpointOutput
    CreateEventSubscriptionInput: CreateEventSubscriptionInput
    CreateEventSubscriptionOutput: CreateEventSubscriptionOutput
    CreateFleetAdvisorCollectorInput: CreateFleetAdvisorCollectorInput
    CreateFleetAdvisorCollectorOutput: CreateFleetAdvisorCollectorOutput
    CreateInstanceProfileInput: CreateInstanceProfileInput
    CreateInstanceProfileOutput: CreateInstanceProfileOutput
    CreateMigrationProjectInput: CreateMigrationProjectInput
    CreateMigrationProjectOutput: CreateMigrationProjectOutput
    CreateReplicationConfigInput: CreateReplicationConfigInput
    CreateReplicationConfigOutput: CreateReplicationConfigOutput
    CreateReplicationInstanceInput: CreateReplicationInstanceInput
    CreateReplicationInstanceOutput: CreateReplicationInstanceOutput
    CreateReplicationSubnetGroupInput: CreateReplicationSubnetGroupInput
    CreateReplicationSubnetGroupOutput: CreateReplicationSubnetGroupOutput
    CreateReplicationTaskInput: CreateReplicationTaskInput
    CreateReplicationTaskOutput: CreateReplicationTaskOutput
    DeleteCertificateInput: DeleteCertificateInput
    DeleteCertificateOutput: DeleteCertificateOutput
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteDataMigrationInput: DeleteDataMigrationInput
    DeleteDataMigrationOutput: DeleteDataMigrationOutput
    DeleteDataProviderInput: DeleteDataProviderInput
    DeleteDataProviderOutput: DeleteDataProviderOutput
    DeleteEndpointInput: DeleteEndpointInput
    DeleteEndpointOutput: DeleteEndpointOutput
    DeleteEventSubscriptionInput: DeleteEventSubscriptionInput
    DeleteEventSubscriptionOutput: DeleteEventSubscriptionOutput
    DeleteFleetAdvisorCollectorInput: DeleteFleetAdvisorCollectorInput
    DeleteFleetAdvisorCollectorOutput: DeleteFleetAdvisorCollectorOutput
    DeleteFleetAdvisorDatabasesInput: DeleteFleetAdvisorDatabasesInput
    DeleteFleetAdvisorDatabasesOutput: DeleteFleetAdvisorDatabasesOutput
    DeleteInstanceProfileInput: DeleteInstanceProfileInput
    DeleteInstanceProfileOutput: DeleteInstanceProfileOutput
    DeleteMigrationProjectInput: DeleteMigrationProjectInput
    DeleteMigrationProjectOutput: DeleteMigrationProjectOutput
    DeleteReplicationConfigInput: DeleteReplicationConfigInput
    DeleteReplicationConfigOutput: DeleteReplicationConfigOutput
    DeleteReplicationInstanceInput: DeleteReplicationInstanceInput
    DeleteReplicationInstanceOutput: DeleteReplicationInstanceOutput
    DeleteReplicationSubnetGroupInput: DeleteReplicationSubnetGroupInput
    DeleteReplicationSubnetGroupOutput: DeleteReplicationSubnetGroupOutput
    DeleteReplicationTaskInput: DeleteReplicationTaskInput
    DeleteReplicationTaskOutput: DeleteReplicationTaskOutput
    DeleteReplicationTaskAssessmentRunInput: DeleteReplicationTaskAssessmentRunInput
    DeleteReplicationTaskAssessmentRunOutput: DeleteReplicationTaskAssessmentRunOutput
    DescribeAccountAttributesInput: DescribeAccountAttributesInput
    DescribeAccountAttributesOutput: DescribeAccountAttributesOutput
    DescribeApplicableIndividualAssessmentsInput: DescribeApplicableIndividualAssessmentsInput
    DescribeApplicableIndividualAssessmentsOutput: DescribeApplicableIndividualAssessmentsOutput
    DescribeCertificatesInput: DescribeCertificatesInput
    DescribeCertificatesOutput: DescribeCertificatesOutput
    DescribeConnectionsInput: DescribeConnectionsInput
    DescribeConnectionsOutput: DescribeConnectionsOutput
    DescribeConversionConfigurationInput: DescribeConversionConfigurationInput
    DescribeConversionConfigurationOutput: DescribeConversionConfigurationOutput
    DescribeDataMigrationsInput: DescribeDataMigrationsInput
    DescribeDataMigrationsOutput: DescribeDataMigrationsOutput
    DescribeDataProvidersInput: DescribeDataProvidersInput
    DescribeDataProvidersOutput: DescribeDataProvidersOutput
    DescribeEndpointsInput: DescribeEndpointsInput
    DescribeEndpointsOutput: DescribeEndpointsOutput
    DescribeEndpointSettingsInput: DescribeEndpointSettingsInput
    DescribeEndpointSettingsOutput: DescribeEndpointSettingsOutput
    DescribeEndpointTypesInput: DescribeEndpointTypesInput
    DescribeEndpointTypesOutput: DescribeEndpointTypesOutput
    DescribeEngineVersionsInput: DescribeEngineVersionsInput
    DescribeEngineVersionsOutput: DescribeEngineVersionsOutput
    DescribeEventCategoriesInput: DescribeEventCategoriesInput
    DescribeEventCategoriesOutput: DescribeEventCategoriesOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeEventSubscriptionsInput: DescribeEventSubscriptionsInput
    DescribeEventSubscriptionsOutput: DescribeEventSubscriptionsOutput
    DescribeExtensionPackAssociationsInput: DescribeExtensionPackAssociationsInput
    DescribeExtensionPackAssociationsOutput: DescribeExtensionPackAssociationsOutput
    DescribeFleetAdvisorCollectorsInput: DescribeFleetAdvisorCollectorsInput
    DescribeFleetAdvisorCollectorsOutput: DescribeFleetAdvisorCollectorsOutput
    DescribeFleetAdvisorDatabasesInput: DescribeFleetAdvisorDatabasesInput
    DescribeFleetAdvisorDatabasesOutput: DescribeFleetAdvisorDatabasesOutput
    DescribeFleetAdvisorLsaAnalysisInput: DescribeFleetAdvisorLsaAnalysisInput
    DescribeFleetAdvisorLsaAnalysisOutput: DescribeFleetAdvisorLsaAnalysisOutput
    DescribeFleetAdvisorSchemaObjectSummaryInput: DescribeFleetAdvisorSchemaObjectSummaryInput
    DescribeFleetAdvisorSchemaObjectSummaryOutput: DescribeFleetAdvisorSchemaObjectSummaryOutput
    DescribeFleetAdvisorSchemasInput: DescribeFleetAdvisorSchemasInput
    DescribeFleetAdvisorSchemasOutput: DescribeFleetAdvisorSchemasOutput
    DescribeInstanceProfilesInput: DescribeInstanceProfilesInput
    DescribeInstanceProfilesOutput: DescribeInstanceProfilesOutput
    DescribeMetadataModelInput: DescribeMetadataModelInput
    DescribeMetadataModelOutput: DescribeMetadataModelOutput
    DescribeMetadataModelAssessmentsInput: DescribeMetadataModelAssessmentsInput
    DescribeMetadataModelAssessmentsOutput: DescribeMetadataModelAssessmentsOutput
    DescribeMetadataModelChildrenInput: DescribeMetadataModelChildrenInput
    DescribeMetadataModelChildrenOutput: DescribeMetadataModelChildrenOutput
    DescribeMetadataModelConversionsInput: DescribeMetadataModelConversionsInput
    DescribeMetadataModelConversionsOutput: DescribeMetadataModelConversionsOutput
    DescribeMetadataModelCreationsInput: DescribeMetadataModelCreationsInput
    DescribeMetadataModelCreationsOutput: DescribeMetadataModelCreationsOutput
    DescribeMetadataModelExportsAsScriptInput: DescribeMetadataModelExportsAsScriptInput
    DescribeMetadataModelExportsAsScriptOutput: DescribeMetadataModelExportsAsScriptOutput
    DescribeMetadataModelExportsToTargetInput: DescribeMetadataModelExportsToTargetInput
    DescribeMetadataModelExportsToTargetOutput: DescribeMetadataModelExportsToTargetOutput
    DescribeMetadataModelImportsInput: DescribeMetadataModelImportsInput
    DescribeMetadataModelImportsOutput: DescribeMetadataModelImportsOutput
    DescribeMigrationProjectsInput: DescribeMigrationProjectsInput
    DescribeMigrationProjectsOutput: DescribeMigrationProjectsOutput
    DescribeOrderableReplicationInstancesInput: DescribeOrderableReplicationInstancesInput
    DescribeOrderableReplicationInstancesOutput: DescribeOrderableReplicationInstancesOutput
    DescribePendingMaintenanceActionsInput: DescribePendingMaintenanceActionsInput
    DescribePendingMaintenanceActionsOutput: DescribePendingMaintenanceActionsOutput
    DescribeRecommendationLimitationsInput: DescribeRecommendationLimitationsInput
    DescribeRecommendationLimitationsOutput: DescribeRecommendationLimitationsOutput
    DescribeRecommendationsInput: DescribeRecommendationsInput
    DescribeRecommendationsOutput: DescribeRecommendationsOutput
    DescribeRefreshSchemasStatusInput: DescribeRefreshSchemasStatusInput
    DescribeRefreshSchemasStatusOutput: DescribeRefreshSchemasStatusOutput
    DescribeReplicationConfigsInput: DescribeReplicationConfigsInput
    DescribeReplicationConfigsOutput: DescribeReplicationConfigsOutput
    DescribeReplicationInstancesInput: DescribeReplicationInstancesInput
    DescribeReplicationInstancesOutput: DescribeReplicationInstancesOutput
    DescribeReplicationInstanceTaskLogsInput: DescribeReplicationInstanceTaskLogsInput
    DescribeReplicationInstanceTaskLogsOutput: DescribeReplicationInstanceTaskLogsOutput
    DescribeReplicationsInput: DescribeReplicationsInput
    DescribeReplicationsOutput: DescribeReplicationsOutput
    DescribeReplicationSubnetGroupsInput: DescribeReplicationSubnetGroupsInput
    DescribeReplicationSubnetGroupsOutput: DescribeReplicationSubnetGroupsOutput
    DescribeReplicationTableStatisticsInput: DescribeReplicationTableStatisticsInput
    DescribeReplicationTableStatisticsOutput: DescribeReplicationTableStatisticsOutput
    DescribeReplicationTaskAssessmentResultsInput: DescribeReplicationTaskAssessmentResultsInput
    DescribeReplicationTaskAssessmentResultsOutput: DescribeReplicationTaskAssessmentResultsOutput
    DescribeReplicationTaskAssessmentRunsInput: DescribeReplicationTaskAssessmentRunsInput
    DescribeReplicationTaskAssessmentRunsOutput: DescribeReplicationTaskAssessmentRunsOutput
    DescribeReplicationTaskIndividualAssessmentsInput: DescribeReplicationTaskIndividualAssessmentsInput
    DescribeReplicationTaskIndividualAssessmentsOutput: DescribeReplicationTaskIndividualAssessmentsOutput
    DescribeReplicationTasksInput: DescribeReplicationTasksInput
    DescribeReplicationTasksOutput: DescribeReplicationTasksOutput
    DescribeSchemasInput: DescribeSchemasInput
    DescribeSchemasOutput: DescribeSchemasOutput
    DescribeTableStatisticsInput: DescribeTableStatisticsInput
    DescribeTableStatisticsOutput: DescribeTableStatisticsOutput
    ExportMetadataModelAssessmentInput: ExportMetadataModelAssessmentInput
    ExportMetadataModelAssessmentOutput: ExportMetadataModelAssessmentOutput
    GetTargetSelectionRulesInput: GetTargetSelectionRulesInput
    GetTargetSelectionRulesOutput: GetTargetSelectionRulesOutput
    ImportCertificateInput: ImportCertificateInput
    ImportCertificateOutput: ImportCertificateOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ModifyConversionConfigurationInput: ModifyConversionConfigurationInput
    ModifyConversionConfigurationOutput: ModifyConversionConfigurationOutput
    ModifyDataMigrationInput: ModifyDataMigrationInput
    ModifyDataMigrationOutput: ModifyDataMigrationOutput
    ModifyDataProviderInput: ModifyDataProviderInput
    ModifyDataProviderOutput: ModifyDataProviderOutput
    ModifyEndpointInput: ModifyEndpointInput
    ModifyEndpointOutput: ModifyEndpointOutput
    ModifyEventSubscriptionInput: ModifyEventSubscriptionInput
    ModifyEventSubscriptionOutput: ModifyEventSubscriptionOutput
    ModifyInstanceProfileInput: ModifyInstanceProfileInput
    ModifyInstanceProfileOutput: ModifyInstanceProfileOutput
    ModifyMigrationProjectInput: ModifyMigrationProjectInput
    ModifyMigrationProjectOutput: ModifyMigrationProjectOutput
    ModifyReplicationConfigInput: ModifyReplicationConfigInput
    ModifyReplicationConfigOutput: ModifyReplicationConfigOutput
    ModifyReplicationInstanceInput: ModifyReplicationInstanceInput
    ModifyReplicationInstanceOutput: ModifyReplicationInstanceOutput
    ModifyReplicationSubnetGroupInput: ModifyReplicationSubnetGroupInput
    ModifyReplicationSubnetGroupOutput: ModifyReplicationSubnetGroupOutput
    ModifyReplicationTaskInput: ModifyReplicationTaskInput
    ModifyReplicationTaskOutput: ModifyReplicationTaskOutput
    MoveReplicationTaskInput: MoveReplicationTaskInput
    MoveReplicationTaskOutput: MoveReplicationTaskOutput
    RebootReplicationInstanceInput: RebootReplicationInstanceInput
    RebootReplicationInstanceOutput: RebootReplicationInstanceOutput
    RefreshSchemasInput: RefreshSchemasInput
    RefreshSchemasOutput: RefreshSchemasOutput
    ReloadReplicationTablesInput: ReloadReplicationTablesInput
    ReloadReplicationTablesOutput: ReloadReplicationTablesOutput
    ReloadTablesInput: ReloadTablesInput
    ReloadTablesOutput: ReloadTablesOutput
    RemoveTagsFromResourceInput: RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput: RemoveTagsFromResourceOutput
    RunFleetAdvisorLsaAnalysisInput: RunFleetAdvisorLsaAnalysisInput
    RunFleetAdvisorLsaAnalysisOutput: RunFleetAdvisorLsaAnalysisOutput
    StartDataMigrationInput: StartDataMigrationInput
    StartDataMigrationOutput: StartDataMigrationOutput
    StartExtensionPackAssociationInput: StartExtensionPackAssociationInput
    StartExtensionPackAssociationOutput: StartExtensionPackAssociationOutput
    StartMetadataModelAssessmentInput: StartMetadataModelAssessmentInput
    StartMetadataModelAssessmentOutput: StartMetadataModelAssessmentOutput
    StartMetadataModelConversionInput: StartMetadataModelConversionInput
    StartMetadataModelConversionOutput: StartMetadataModelConversionOutput
    StartMetadataModelCreationInput: StartMetadataModelCreationInput
    StartMetadataModelCreationOutput: StartMetadataModelCreationOutput
    StartMetadataModelExportAsScriptInput: StartMetadataModelExportAsScriptInput
    StartMetadataModelExportAsScriptOutput: StartMetadataModelExportAsScriptOutput
    StartMetadataModelExportToTargetInput: StartMetadataModelExportToTargetInput
    StartMetadataModelExportToTargetOutput: StartMetadataModelExportToTargetOutput
    StartMetadataModelImportInput: StartMetadataModelImportInput
    StartMetadataModelImportOutput: StartMetadataModelImportOutput
    StartRecommendationsInput: StartRecommendationsInput
    StartRecommendationsOutput: StartRecommendationsOutput
    StartReplicationInput: StartReplicationInput
    StartReplicationOutput: StartReplicationOutput
    StartReplicationTaskInput: StartReplicationTaskInput
    StartReplicationTaskOutput: StartReplicationTaskOutput
    StartReplicationTaskAssessmentInput: StartReplicationTaskAssessmentInput
    StartReplicationTaskAssessmentOutput: StartReplicationTaskAssessmentOutput
    StartReplicationTaskAssessmentRunInput: StartReplicationTaskAssessmentRunInput
    StartReplicationTaskAssessmentRunOutput: StartReplicationTaskAssessmentRunOutput
    StopDataMigrationInput: StopDataMigrationInput
    StopDataMigrationOutput: StopDataMigrationOutput
    StopReplicationInput: StopReplicationInput
    StopReplicationOutput: StopReplicationOutput
    StopReplicationTaskInput: StopReplicationTaskInput
    StopReplicationTaskOutput: StopReplicationTaskOutput
    TestConnectionInput: TestConnectionInput
    TestConnectionOutput: TestConnectionOutput
    UpdateSubscriptionsToEventBridgeInput: UpdateSubscriptionsToEventBridgeInput
    UpdateSubscriptionsToEventBridgeOutput: UpdateSubscriptionsToEventBridgeOutput
end

return M
