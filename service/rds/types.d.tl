local record AddRoleToDBClusterInput
    DBClusterIdentifier: string
    RoleArn: string
    FeatureName: string
end

local record AddRoleToDBClusterOutput
end

local record AddRoleToDBInstanceInput
    DBInstanceIdentifier: string
    RoleArn: string
    FeatureName: string
end

local record AddRoleToDBInstanceOutput
end

local record AddSourceIdentifierToSubscriptionInput
    SubscriptionName: string
    SourceIdentifier: string
end

local record AddSourceIdentifierToSubscriptionOutput
    EventSubscription: EventSubscription
end

local record AddTagsToResourceInput
    ResourceName: string
    Tags: {Tag}
end

local record AddTagsToResourceOutput
end

local record ApplyPendingMaintenanceActionInput
    ResourceIdentifier: string
    ApplyAction: string
    OptInType: string
end

local record ApplyPendingMaintenanceActionOutput
    ResourcePendingMaintenanceActions: ResourcePendingMaintenanceActions
end

local record AuthorizeDBSecurityGroupIngressInput
    DBSecurityGroupName: string
    CIDRIP: string
    EC2SecurityGroupName: string
    EC2SecurityGroupId: string
    EC2SecurityGroupOwnerId: string
end

local record AuthorizeDBSecurityGroupIngressOutput
    DBSecurityGroup: DBSecurityGroup
end

local record BacktrackDBClusterInput
    DBClusterIdentifier: string
    BacktrackTo: number
    Force: boolean
    UseEarliestTimeOnPointInTimeUnavailable: boolean
end

local record BacktrackDBClusterOutput
    DBClusterIdentifier: string
    BacktrackIdentifier: string
    BacktrackTo: number
    BacktrackedFrom: number
    BacktrackRequestCreationTime: number
    Status: string
end

local record CancelExportTaskInput
    ExportTaskIdentifier: string
end

local record CancelExportTaskOutput
    ExportTaskIdentifier: string
    SourceArn: string
    ExportOnly: {string}
    SnapshotTime: number
    TaskStartTime: number
    TaskEndTime: number
    S3Bucket: string
    S3Prefix: string
    IamRoleArn: string
    KmsKeyId: string
    Status: string
    PercentProgress: number
    TotalExtractedDataInGB: number
    FailureCause: string
    WarningMessage: string
    SourceType: string
end

local record CopyDBClusterParameterGroupInput
    SourceDBClusterParameterGroupIdentifier: string
    TargetDBClusterParameterGroupIdentifier: string
    TargetDBClusterParameterGroupDescription: string
    Tags: {Tag}
end

local record CopyDBClusterParameterGroupOutput
    DBClusterParameterGroup: DBClusterParameterGroup
end

local record CopyDBClusterSnapshotInput
    SourceDBClusterSnapshotIdentifier: string
    TargetDBClusterSnapshotIdentifier: string
    KmsKeyId: string
    PreSignedUrl: string
    CopyTags: boolean
    Tags: {Tag}
end

local record CopyDBClusterSnapshotOutput
    DBClusterSnapshot: DBClusterSnapshot
end

local record CopyDBParameterGroupInput
    SourceDBParameterGroupIdentifier: string
    TargetDBParameterGroupIdentifier: string
    TargetDBParameterGroupDescription: string
    Tags: {Tag}
end

local record CopyDBParameterGroupOutput
    DBParameterGroup: DBParameterGroup
end

local record CopyDBSnapshotInput
    SourceDBSnapshotIdentifier: string
    TargetDBSnapshotIdentifier: string
    KmsKeyId: string
    Tags: {Tag}
    CopyTags: boolean
    PreSignedUrl: string
    OptionGroupName: string
    TargetCustomAvailabilityZone: string
    SnapshotTarget: string
    CopyOptionGroup: boolean
    SnapshotAvailabilityZone: string
end

local record CopyDBSnapshotOutput
    DBSnapshot: DBSnapshot
end

local record CopyOptionGroupInput
    SourceOptionGroupIdentifier: string
    TargetOptionGroupIdentifier: string
    TargetOptionGroupDescription: string
    Tags: {Tag}
end

local record CopyOptionGroupOutput
    OptionGroup: OptionGroup
end

local record CreateBlueGreenDeploymentInput
    BlueGreenDeploymentName: string
    Source: string
    TargetEngineVersion: string
    TargetDBParameterGroupName: string
    TargetDBClusterParameterGroupName: string
    Tags: {Tag}
    TargetDBInstanceClass: string
    UpgradeTargetStorageConfig: boolean
    TargetIops: number
    TargetStorageType: string
    TargetAllocatedStorage: number
    TargetStorageThroughput: number
end

local record CreateBlueGreenDeploymentOutput
    BlueGreenDeployment: BlueGreenDeployment
end

local record CreateCustomDBEngineVersionInput
    Engine: string
    EngineVersion: string
    DatabaseInstallationFilesS3BucketName: string
    DatabaseInstallationFilesS3Prefix: string
    DatabaseInstallationFiles: {string}
    ImageId: string
    KMSKeyId: string
    SourceCustomDbEngineVersionIdentifier: string
    UseAwsProvidedLatestImage: boolean
    Description: string
    Manifest: string
    Tags: {Tag}
end

local record CreateCustomDBEngineVersionOutput
    Engine: string
    MajorEngineVersion: string
    EngineVersion: string
    DatabaseInstallationFilesS3BucketName: string
    DatabaseInstallationFilesS3Prefix: string
    DatabaseInstallationFiles: {string}
    CustomDBEngineVersionManifest: string
    DBParameterGroupFamily: string
    DBEngineDescription: string
    DBEngineVersionArn: string
    DBEngineVersionDescription: string
    DefaultCharacterSet: CharacterSet
    FailureReason: string
    Image: CustomDBEngineVersionAMI
    DBEngineMediaType: string
    KMSKeyId: string
    CreateTime: number
    SupportedCharacterSets: {CharacterSet}
    SupportedNcharCharacterSets: {CharacterSet}
    ValidUpgradeTarget: {UpgradeTarget}
    SupportedTimezones: {Timezone}
    ExportableLogTypes: {string}
    SupportsLogExportsToCloudwatchLogs: boolean
    SupportsReadReplica: boolean
    SupportedEngineModes: {string}
    SupportedFeatureNames: {string}
    Status: string
    SupportsParallelQuery: boolean
    SupportsGlobalDatabases: boolean
    TagList: {Tag}
    SupportsBabelfish: boolean
    SupportsLimitlessDatabase: boolean
    SupportsCertificateRotationWithoutRestart: boolean
    SupportedCACertificateIdentifiers: {string}
    SupportsLocalWriteForwarding: boolean
    SupportsIntegrations: boolean
    ServerlessV2FeaturesSupport: ServerlessV2FeaturesSupport
end

local record CreateDBClusterInput
    AvailabilityZones: {string}
    BackupRetentionPeriod: number
    CharacterSetName: string
    DatabaseName: string
    DBClusterIdentifier: string
    DBClusterParameterGroupName: string
    VpcSecurityGroupIds: {string}
    DBSubnetGroupName: string
    Engine: string
    EngineVersion: string
    Port: number
    MasterUsername: string
    MasterUserPassword: string
    OptionGroupName: string
    PreferredBackupWindow: string
    PreferredMaintenanceWindow: string
    ReplicationSourceIdentifier: string
    Tags: {Tag}
    StorageEncrypted: boolean
    KmsKeyId: string
    PreSignedUrl: string
    EnableIAMDatabaseAuthentication: boolean
    BacktrackWindow: number
    EnableCloudwatchLogsExports: {string}
    EngineMode: string
    ScalingConfiguration: ScalingConfiguration
    RdsCustomClusterConfiguration: RdsCustomClusterConfiguration
    DBClusterInstanceClass: string
    AllocatedStorage: number
    StorageType: string
    Iops: number
    PubliclyAccessible: boolean
    AutoMinorVersionUpgrade: boolean
    DeletionProtection: boolean
    GlobalClusterIdentifier: string
    EnableHttpEndpoint: boolean
    CopyTagsToSnapshot: boolean
    Domain: string
    DomainIAMRoleName: string
    EnableGlobalWriteForwarding: boolean
    NetworkType: string
    ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration
    MonitoringInterval: number
    MonitoringRoleArn: string
    DatabaseInsightsMode: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    EnableLimitlessDatabase: boolean
    ClusterScalabilityType: string
    DBSystemId: string
    ManageMasterUserPassword: boolean
    EnableLocalWriteForwarding: boolean
    MasterUserSecretKmsKeyId: string
    CACertificateIdentifier: string
    EngineLifecycleSupport: string
    TagSpecifications: {TagSpecification}
    MasterUserAuthenticationType: string
    WithExpressConfiguration: boolean
end

local record CreateDBClusterOutput
    DBCluster: DBCluster
end

local record CreateDBClusterEndpointInput
    DBClusterIdentifier: string
    DBClusterEndpointIdentifier: string
    EndpointType: string
    StaticMembers: {string}
    ExcludedMembers: {string}
    Tags: {Tag}
end

local record CreateDBClusterEndpointOutput
    DBClusterEndpointIdentifier: string
    DBClusterIdentifier: string
    DBClusterEndpointResourceIdentifier: string
    Endpoint: string
    Status: string
    EndpointType: string
    CustomEndpointType: string
    StaticMembers: {string}
    ExcludedMembers: {string}
    DBClusterEndpointArn: string
end

local record CreateDBClusterParameterGroupInput
    DBClusterParameterGroupName: string
    DBParameterGroupFamily: string
    Description: string
    Tags: {Tag}
end

local record CreateDBClusterParameterGroupOutput
    DBClusterParameterGroup: DBClusterParameterGroup
end

local record CreateDBClusterSnapshotInput
    DBClusterSnapshotIdentifier: string
    DBClusterIdentifier: string
    Tags: {Tag}
end

local record CreateDBClusterSnapshotOutput
    DBClusterSnapshot: DBClusterSnapshot
end

local record CreateDBInstanceInput
    DBName: string
    DBInstanceIdentifier: string
    AllocatedStorage: number
    DBInstanceClass: string
    Engine: string
    MasterUsername: string
    MasterUserPassword: string
    DBSecurityGroups: {string}
    VpcSecurityGroupIds: {string}
    AvailabilityZone: string
    DBSubnetGroupName: string
    PreferredMaintenanceWindow: string
    DBParameterGroupName: string
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    Port: number
    MultiAZ: boolean
    EngineVersion: string
    AutoMinorVersionUpgrade: boolean
    LicenseModel: string
    Iops: number
    StorageThroughput: number
    OptionGroupName: string
    CharacterSetName: string
    NcharCharacterSetName: string
    PubliclyAccessible: boolean
    Tags: {Tag}
    DBClusterIdentifier: string
    StorageType: string
    TdeCredentialArn: string
    TdeCredentialPassword: string
    StorageEncrypted: boolean
    KmsKeyId: string
    Domain: string
    DomainFqdn: string
    DomainOu: string
    DomainAuthSecretArn: string
    DomainDnsIps: {string}
    CopyTagsToSnapshot: boolean
    MonitoringInterval: number
    MonitoringRoleArn: string
    DomainIAMRoleName: string
    PromotionTier: number
    Timezone: string
    EnableIAMDatabaseAuthentication: boolean
    DatabaseInsightsMode: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    EnableCloudwatchLogsExports: {string}
    ProcessorFeatures: {ProcessorFeature}
    DeletionProtection: boolean
    MaxAllocatedStorage: number
    EnableCustomerOwnedIp: boolean
    NetworkType: string
    BackupTarget: string
    CustomIamInstanceProfile: string
    DBSystemId: string
    CACertificateIdentifier: string
    ManageMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
    MultiTenant: boolean
    DedicatedLogVolume: boolean
    EngineLifecycleSupport: string
    AdditionalStorageVolumes: {AdditionalStorageVolume}
    TagSpecifications: {TagSpecification}
    MasterUserAuthenticationType: string
end

local record CreateDBInstanceOutput
    DBInstance: DBInstance
end

local record CreateDBInstanceReadReplicaInput
    DBInstanceIdentifier: string
    SourceDBInstanceIdentifier: string
    DBInstanceClass: string
    AvailabilityZone: string
    Port: number
    MultiAZ: boolean
    AutoMinorVersionUpgrade: boolean
    Iops: number
    StorageThroughput: number
    OptionGroupName: string
    DBParameterGroupName: string
    PubliclyAccessible: boolean
    Tags: {Tag}
    DBSubnetGroupName: string
    VpcSecurityGroupIds: {string}
    StorageType: string
    CopyTagsToSnapshot: boolean
    MonitoringInterval: number
    MonitoringRoleArn: string
    KmsKeyId: string
    PreSignedUrl: string
    EnableIAMDatabaseAuthentication: boolean
    DatabaseInsightsMode: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    EnableCloudwatchLogsExports: {string}
    ProcessorFeatures: {ProcessorFeature}
    UseDefaultProcessorFeatures: boolean
    DeletionProtection: boolean
    Domain: string
    DomainIAMRoleName: string
    DomainFqdn: string
    DomainOu: string
    DomainAuthSecretArn: string
    DomainDnsIps: {string}
    ReplicaMode: string
    EnableCustomerOwnedIp: boolean
    NetworkType: string
    MaxAllocatedStorage: number
    BackupTarget: string
    CustomIamInstanceProfile: string
    AllocatedStorage: number
    SourceDBClusterIdentifier: string
    DedicatedLogVolume: boolean
    UpgradeStorageConfig: boolean
    CACertificateIdentifier: string
    AdditionalStorageVolumes: {AdditionalStorageVolume}
    TagSpecifications: {TagSpecification}
end

local record CreateDBInstanceReadReplicaOutput
    DBInstance: DBInstance
end

local record CreateDBParameterGroupInput
    DBParameterGroupName: string
    DBParameterGroupFamily: string
    Description: string
    Tags: {Tag}
end

local record CreateDBParameterGroupOutput
    DBParameterGroup: DBParameterGroup
end

local record CreateDBProxyInput
    DBProxyName: string
    EngineFamily: string
    DefaultAuthScheme: string
    Auth: {UserAuthConfig}
    RoleArn: string
    VpcSubnetIds: {string}
    VpcSecurityGroupIds: {string}
    RequireTLS: boolean
    IdleClientTimeout: number
    DebugLogging: boolean
    Tags: {Tag}
    EndpointNetworkType: string
    TargetConnectionNetworkType: string
end

local record CreateDBProxyOutput
    DBProxy: DBProxy
end

local record CreateDBProxyEndpointInput
    DBProxyName: string
    DBProxyEndpointName: string
    VpcSubnetIds: {string}
    VpcSecurityGroupIds: {string}
    TargetRole: string
    Tags: {Tag}
    EndpointNetworkType: string
end

local record CreateDBProxyEndpointOutput
    DBProxyEndpoint: DBProxyEndpoint
end

local record CreateDBSecurityGroupInput
    DBSecurityGroupName: string
    DBSecurityGroupDescription: string
    Tags: {Tag}
end

local record CreateDBSecurityGroupOutput
    DBSecurityGroup: DBSecurityGroup
end

local record CreateDBShardGroupInput
    DBShardGroupIdentifier: string
    DBClusterIdentifier: string
    ComputeRedundancy: number
    MaxACU: number
    MinACU: number
    PubliclyAccessible: boolean
    Tags: {Tag}
end

local record CreateDBShardGroupOutput
    DBShardGroupResourceId: string
    DBShardGroupIdentifier: string
    DBClusterIdentifier: string
    MaxACU: number
    MinACU: number
    ComputeRedundancy: number
    Status: string
    PubliclyAccessible: boolean
    Endpoint: string
    DBShardGroupArn: string
    TagList: {Tag}
end

local record CreateDBSnapshotInput
    DBSnapshotIdentifier: string
    DBInstanceIdentifier: string
    Tags: {Tag}
end

local record CreateDBSnapshotOutput
    DBSnapshot: DBSnapshot
end

local record CreateDBSubnetGroupInput
    DBSubnetGroupName: string
    DBSubnetGroupDescription: string
    SubnetIds: {string}
    Tags: {Tag}
end

local record CreateDBSubnetGroupOutput
    DBSubnetGroup: DBSubnetGroup
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

local record CreateGlobalClusterInput
    GlobalClusterIdentifier: string
    SourceDBClusterIdentifier: string
    Engine: string
    EngineVersion: string
    EngineLifecycleSupport: string
    DeletionProtection: boolean
    DatabaseName: string
    StorageEncrypted: boolean
    Tags: {Tag}
end

local record CreateGlobalClusterOutput
    GlobalCluster: GlobalCluster
end

local record CreateIntegrationInput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    KMSKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
    DataFilter: string
    Description: string
end

local record CreateIntegrationOutput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    IntegrationArn: string
    KMSKeyId: string
    AdditionalEncryptionContext: {string : string}
    Status: string
    Tags: {Tag}
    DataFilter: string
    Description: string
    CreateTime: number
    Errors: {IntegrationError}
end

local record CreateOptionGroupInput
    OptionGroupName: string
    EngineName: string
    MajorEngineVersion: string
    OptionGroupDescription: string
    Tags: {Tag}
end

local record CreateOptionGroupOutput
    OptionGroup: OptionGroup
end

local record CreateTenantDatabaseInput
    DBInstanceIdentifier: string
    TenantDBName: string
    MasterUsername: string
    MasterUserPassword: string
    CharacterSetName: string
    NcharCharacterSetName: string
    ManageMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
    Tags: {Tag}
end

local record CreateTenantDatabaseOutput
    TenantDatabase: TenantDatabase
end

local record DeleteBlueGreenDeploymentInput
    BlueGreenDeploymentIdentifier: string
    DeleteTarget: boolean
end

local record DeleteBlueGreenDeploymentOutput
    BlueGreenDeployment: BlueGreenDeployment
end

local record DeleteCustomDBEngineVersionInput
    Engine: string
    EngineVersion: string
end

local record DeleteCustomDBEngineVersionOutput
    Engine: string
    MajorEngineVersion: string
    EngineVersion: string
    DatabaseInstallationFilesS3BucketName: string
    DatabaseInstallationFilesS3Prefix: string
    DatabaseInstallationFiles: {string}
    CustomDBEngineVersionManifest: string
    DBParameterGroupFamily: string
    DBEngineDescription: string
    DBEngineVersionArn: string
    DBEngineVersionDescription: string
    DefaultCharacterSet: CharacterSet
    FailureReason: string
    Image: CustomDBEngineVersionAMI
    DBEngineMediaType: string
    KMSKeyId: string
    CreateTime: number
    SupportedCharacterSets: {CharacterSet}
    SupportedNcharCharacterSets: {CharacterSet}
    ValidUpgradeTarget: {UpgradeTarget}
    SupportedTimezones: {Timezone}
    ExportableLogTypes: {string}
    SupportsLogExportsToCloudwatchLogs: boolean
    SupportsReadReplica: boolean
    SupportedEngineModes: {string}
    SupportedFeatureNames: {string}
    Status: string
    SupportsParallelQuery: boolean
    SupportsGlobalDatabases: boolean
    TagList: {Tag}
    SupportsBabelfish: boolean
    SupportsLimitlessDatabase: boolean
    SupportsCertificateRotationWithoutRestart: boolean
    SupportedCACertificateIdentifiers: {string}
    SupportsLocalWriteForwarding: boolean
    SupportsIntegrations: boolean
    ServerlessV2FeaturesSupport: ServerlessV2FeaturesSupport
end

local record DeleteDBClusterInput
    DBClusterIdentifier: string
    SkipFinalSnapshot: boolean
    FinalDBSnapshotIdentifier: string
    DeleteAutomatedBackups: boolean
end

local record DeleteDBClusterOutput
    DBCluster: DBCluster
end

local record DeleteDBClusterAutomatedBackupInput
    DbClusterResourceId: string
end

local record DeleteDBClusterAutomatedBackupOutput
    DBClusterAutomatedBackup: DBClusterAutomatedBackup
end

local record DeleteDBClusterEndpointInput
    DBClusterEndpointIdentifier: string
end

local record DeleteDBClusterEndpointOutput
    DBClusterEndpointIdentifier: string
    DBClusterIdentifier: string
    DBClusterEndpointResourceIdentifier: string
    Endpoint: string
    Status: string
    EndpointType: string
    CustomEndpointType: string
    StaticMembers: {string}
    ExcludedMembers: {string}
    DBClusterEndpointArn: string
end

local record DeleteDBClusterParameterGroupInput
    DBClusterParameterGroupName: string
end

local record DeleteDBClusterParameterGroupOutput
end

local record DeleteDBClusterSnapshotInput
    DBClusterSnapshotIdentifier: string
end

local record DeleteDBClusterSnapshotOutput
    DBClusterSnapshot: DBClusterSnapshot
end

local record DeleteDBInstanceInput
    DBInstanceIdentifier: string
    SkipFinalSnapshot: boolean
    FinalDBSnapshotIdentifier: string
    DeleteAutomatedBackups: boolean
end

local record DeleteDBInstanceOutput
    DBInstance: DBInstance
end

local record DeleteDBInstanceAutomatedBackupInput
    DbiResourceId: string
    DBInstanceAutomatedBackupsArn: string
end

local record DeleteDBInstanceAutomatedBackupOutput
    DBInstanceAutomatedBackup: DBInstanceAutomatedBackup
end

local record DeleteDBParameterGroupInput
    DBParameterGroupName: string
end

local record DeleteDBParameterGroupOutput
end

local record DeleteDBProxyInput
    DBProxyName: string
end

local record DeleteDBProxyOutput
    DBProxy: DBProxy
end

local record DeleteDBProxyEndpointInput
    DBProxyEndpointName: string
end

local record DeleteDBProxyEndpointOutput
    DBProxyEndpoint: DBProxyEndpoint
end

local record DeleteDBSecurityGroupInput
    DBSecurityGroupName: string
end

local record DeleteDBSecurityGroupOutput
end

local record DeleteDBShardGroupInput
    DBShardGroupIdentifier: string
end

local record DeleteDBShardGroupOutput
    DBShardGroupResourceId: string
    DBShardGroupIdentifier: string
    DBClusterIdentifier: string
    MaxACU: number
    MinACU: number
    ComputeRedundancy: number
    Status: string
    PubliclyAccessible: boolean
    Endpoint: string
    DBShardGroupArn: string
    TagList: {Tag}
end

local record DeleteDBSnapshotInput
    DBSnapshotIdentifier: string
end

local record DeleteDBSnapshotOutput
    DBSnapshot: DBSnapshot
end

local record DeleteDBSubnetGroupInput
    DBSubnetGroupName: string
end

local record DeleteDBSubnetGroupOutput
end

local record DeleteEventSubscriptionInput
    SubscriptionName: string
end

local record DeleteEventSubscriptionOutput
    EventSubscription: EventSubscription
end

local record DeleteGlobalClusterInput
    GlobalClusterIdentifier: string
end

local record DeleteGlobalClusterOutput
    GlobalCluster: GlobalCluster
end

local record DeleteIntegrationInput
    IntegrationIdentifier: string
end

local record DeleteIntegrationOutput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    IntegrationArn: string
    KMSKeyId: string
    AdditionalEncryptionContext: {string : string}
    Status: string
    Tags: {Tag}
    DataFilter: string
    Description: string
    CreateTime: number
    Errors: {IntegrationError}
end

local record DeleteOptionGroupInput
    OptionGroupName: string
end

local record DeleteOptionGroupOutput
end

local record DeleteTenantDatabaseInput
    DBInstanceIdentifier: string
    TenantDBName: string
    SkipFinalSnapshot: boolean
    FinalDBSnapshotIdentifier: string
end

local record DeleteTenantDatabaseOutput
    TenantDatabase: TenantDatabase
end

local record DeregisterDBProxyTargetsInput
    DBProxyName: string
    TargetGroupName: string
    DBInstanceIdentifiers: {string}
    DBClusterIdentifiers: {string}
end

local record DeregisterDBProxyTargetsOutput
end

local record DescribeAccountAttributesInput
end

local record DescribeAccountAttributesOutput
    AccountQuotas: {AccountQuota}
end

local record DescribeBlueGreenDeploymentsInput
    BlueGreenDeploymentIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeBlueGreenDeploymentsOutput
    BlueGreenDeployments: {BlueGreenDeployment}
    Marker: string
end

local record DescribeCertificatesInput
    CertificateIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeCertificatesOutput
    DefaultCertificateForNewLaunches: string
    Certificates: {Certificate}
    Marker: string
end

local record DescribeDBClusterAutomatedBackupsInput
    DbClusterResourceId: string
    DBClusterIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBClusterAutomatedBackupsOutput
    Marker: string
    DBClusterAutomatedBackups: {DBClusterAutomatedBackup}
end

local record DescribeDBClusterBacktracksInput
    DBClusterIdentifier: string
    BacktrackIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBClusterBacktracksOutput
    Marker: string
    DBClusterBacktracks: {DBClusterBacktrack}
end

local record DescribeDBClusterEndpointsInput
    DBClusterIdentifier: string
    DBClusterEndpointIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBClusterEndpointsOutput
    Marker: string
    DBClusterEndpoints: {DBClusterEndpoint}
end

local record DescribeDBClusterParameterGroupsInput
    DBClusterParameterGroupName: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBClusterParameterGroupsOutput
    Marker: string
    DBClusterParameterGroups: {DBClusterParameterGroup}
end

local record DescribeDBClusterParametersInput
    DBClusterParameterGroupName: string
    Source: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBClusterParametersOutput
    Parameters: {Parameter}
    Marker: string
end

local record DescribeDBClustersInput
    DBClusterIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    IncludeShared: boolean
end

local record DescribeDBClustersOutput
    Marker: string
    DBClusters: {DBCluster}
end

local record DescribeDBClusterSnapshotAttributesInput
    DBClusterSnapshotIdentifier: string
end

local record DescribeDBClusterSnapshotAttributesOutput
    DBClusterSnapshotAttributesResult: DBClusterSnapshotAttributesResult
end

local record DescribeDBClusterSnapshotsInput
    DBClusterIdentifier: string
    DBClusterSnapshotIdentifier: string
    SnapshotType: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    IncludeShared: boolean
    IncludePublic: boolean
    DbClusterResourceId: string
end

local record DescribeDBClusterSnapshotsOutput
    Marker: string
    DBClusterSnapshots: {DBClusterSnapshot}
end

local record DescribeDBEngineVersionsInput
    Engine: string
    EngineVersion: string
    DBParameterGroupFamily: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    DefaultOnly: boolean
    ListSupportedCharacterSets: boolean
    ListSupportedTimezones: boolean
    IncludeAll: boolean
end

local record DescribeDBEngineVersionsOutput
    Marker: string
    DBEngineVersions: {DBEngineVersion}
end

local record DescribeDBInstanceAutomatedBackupsInput
    DbiResourceId: string
    DBInstanceIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    DBInstanceAutomatedBackupsArn: string
end

local record DescribeDBInstanceAutomatedBackupsOutput
    Marker: string
    DBInstanceAutomatedBackups: {DBInstanceAutomatedBackup}
end

local record DescribeDBInstancesInput
    DBInstanceIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBInstancesOutput
    Marker: string
    DBInstances: {DBInstance}
end

local record DescribeDBLogFilesInput
    DBInstanceIdentifier: string
    FilenameContains: string
    FileLastWritten: number
    FileSize: number
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBLogFilesOutput
    DescribeDBLogFiles: {DescribeDBLogFilesDetails}
    Marker: string
end

local record DescribeDBMajorEngineVersionsInput
    Engine: string
    MajorEngineVersion: string
    Marker: string
    MaxRecords: number
end

local record DescribeDBMajorEngineVersionsOutput
    DBMajorEngineVersions: {DBMajorEngineVersion}
    Marker: string
end

local record DescribeDBParameterGroupsInput
    DBParameterGroupName: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBParameterGroupsOutput
    Marker: string
    DBParameterGroups: {DBParameterGroup}
end

local record DescribeDBParametersInput
    DBParameterGroupName: string
    Source: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBParametersOutput
    Parameters: {Parameter}
    Marker: string
end

local record DescribeDBProxiesInput
    DBProxyName: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeDBProxiesOutput
    DBProxies: {DBProxy}
    Marker: string
end

local record DescribeDBProxyEndpointsInput
    DBProxyName: string
    DBProxyEndpointName: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeDBProxyEndpointsOutput
    DBProxyEndpoints: {DBProxyEndpoint}
    Marker: string
end

local record DescribeDBProxyTargetGroupsInput
    DBProxyName: string
    TargetGroupName: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeDBProxyTargetGroupsOutput
    TargetGroups: {DBProxyTargetGroup}
    Marker: string
end

local record DescribeDBProxyTargetsInput
    DBProxyName: string
    TargetGroupName: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeDBProxyTargetsOutput
    Targets: {DBProxyTarget}
    Marker: string
end

local record DescribeDBRecommendationsInput
    LastUpdatedAfter: number
    LastUpdatedBefore: number
    Locale: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBRecommendationsOutput
    DBRecommendations: {DBRecommendation}
    Marker: string
end

local record DescribeDBSecurityGroupsInput
    DBSecurityGroupName: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBSecurityGroupsOutput
    Marker: string
    DBSecurityGroups: {DBSecurityGroup}
end

local record DescribeDBShardGroupsInput
    DBShardGroupIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeDBShardGroupsOutput
    DBShardGroups: {DBShardGroup}
    Marker: string
end

local record DescribeDBSnapshotAttributesInput
    DBSnapshotIdentifier: string
end

local record DescribeDBSnapshotAttributesOutput
    DBSnapshotAttributesResult: DBSnapshotAttributesResult
end

local record DescribeDBSnapshotsInput
    DBInstanceIdentifier: string
    DBSnapshotIdentifier: string
    SnapshotType: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    IncludeShared: boolean
    IncludePublic: boolean
    DbiResourceId: string
end

local record DescribeDBSnapshotsOutput
    Marker: string
    DBSnapshots: {DBSnapshot}
end

local record DescribeDBSnapshotTenantDatabasesInput
    DBInstanceIdentifier: string
    DBSnapshotIdentifier: string
    SnapshotType: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
    DbiResourceId: string
end

local record DescribeDBSnapshotTenantDatabasesOutput
    Marker: string
    DBSnapshotTenantDatabases: {DBSnapshotTenantDatabase}
end

local record DescribeDBSubnetGroupsInput
    DBSubnetGroupName: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeDBSubnetGroupsOutput
    Marker: string
    DBSubnetGroups: {DBSubnetGroup}
end

local record DescribeEngineDefaultClusterParametersInput
    DBParameterGroupFamily: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeEngineDefaultClusterParametersOutput
    EngineDefaults: EngineDefaults
end

local record DescribeEngineDefaultParametersInput
    DBParameterGroupFamily: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeEngineDefaultParametersOutput
    EngineDefaults: EngineDefaults
end

local record DescribeEventCategoriesInput
    SourceType: string
    Filters: {Filter}
end

local record DescribeEventCategoriesOutput
    EventCategoriesMapList: {EventCategoriesMap}
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

local record DescribeExportTasksInput
    ExportTaskIdentifier: string
    SourceArn: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
    SourceType: string
end

local record DescribeExportTasksOutput
    Marker: string
    ExportTasks: {ExportTask}
end

local record DescribeGlobalClustersInput
    GlobalClusterIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeGlobalClustersOutput
    Marker: string
    GlobalClusters: {GlobalCluster}
end

local record DescribeIntegrationsInput
    IntegrationIdentifier: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeIntegrationsOutput
    Marker: string
    Integrations: {Integration}
end

local record DescribeOptionGroupOptionsInput
    EngineName: string
    MajorEngineVersion: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeOptionGroupOptionsOutput
    OptionGroupOptions: {OptionGroupOption}
    Marker: string
end

local record DescribeOptionGroupsInput
    OptionGroupName: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
    EngineName: string
    MajorEngineVersion: string
end

local record DescribeOptionGroupsOutput
    OptionGroupsList: {OptionGroup}
    Marker: string
end

local record DescribeOrderableDBInstanceOptionsInput
    Engine: string
    EngineVersion: string
    DBInstanceClass: string
    LicenseModel: string
    AvailabilityZoneGroup: string
    Vpc: boolean
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeOrderableDBInstanceOptionsOutput
    OrderableDBInstanceOptions: {OrderableDBInstanceOption}
    Marker: string
end

local record DescribePendingMaintenanceActionsInput
    ResourceIdentifier: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribePendingMaintenanceActionsOutput
    PendingMaintenanceActions: {ResourcePendingMaintenanceActions}
    Marker: string
end

local record DescribeReservedDBInstancesInput
    ReservedDBInstanceId: string
    ReservedDBInstancesOfferingId: string
    DBInstanceClass: string
    Duration: string
    ProductDescription: string
    OfferingType: string
    MultiAZ: boolean
    LeaseId: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReservedDBInstancesOutput
    Marker: string
    ReservedDBInstances: {ReservedDBInstance}
end

local record DescribeReservedDBInstancesOfferingsInput
    ReservedDBInstancesOfferingId: string
    DBInstanceClass: string
    Duration: string
    ProductDescription: string
    OfferingType: string
    MultiAZ: boolean
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeReservedDBInstancesOfferingsOutput
    Marker: string
    ReservedDBInstancesOfferings: {ReservedDBInstancesOffering}
end

local record DescribeServerlessV2PlatformVersionsInput
    ServerlessV2PlatformVersion: string
    Engine: string
    Filters: {Filter}
    DefaultOnly: boolean
    IncludeAll: boolean
    MaxRecords: number
    Marker: string
end

local record DescribeServerlessV2PlatformVersionsOutput
    Marker: string
    ServerlessV2PlatformVersions: {ServerlessV2PlatformVersionInfo}
end

local record DescribeSourceRegionsInput
    RegionName: string
    MaxRecords: number
    Marker: string
    Filters: {Filter}
end

local record DescribeSourceRegionsOutput
    Marker: string
    SourceRegions: {SourceRegion}
end

local record DescribeTenantDatabasesInput
    DBInstanceIdentifier: string
    TenantDBName: string
    Filters: {Filter}
    Marker: string
    MaxRecords: number
end

local record DescribeTenantDatabasesOutput
    Marker: string
    TenantDatabases: {TenantDatabase}
end

local record DescribeValidDBInstanceModificationsInput
    DBInstanceIdentifier: string
end

local record DescribeValidDBInstanceModificationsOutput
    ValidDBInstanceModificationsMessage: ValidDBInstanceModificationsMessage
end

local record DisableHttpEndpointInput
    ResourceArn: string
end

local record DisableHttpEndpointOutput
    ResourceArn: string
    HttpEndpointEnabled: boolean
end

local record DownloadDBLogFilePortionInput
    DBInstanceIdentifier: string
    LogFileName: string
    Marker: string
    NumberOfLines: number
end

local record DownloadDBLogFilePortionOutput
    LogFileData: string
    Marker: string
    AdditionalDataPending: boolean
end

local record EnableHttpEndpointInput
    ResourceArn: string
end

local record EnableHttpEndpointOutput
    ResourceArn: string
    HttpEndpointEnabled: boolean
end

local record FailoverDBClusterInput
    DBClusterIdentifier: string
    TargetDBInstanceIdentifier: string
end

local record FailoverDBClusterOutput
    DBCluster: DBCluster
end

local record FailoverGlobalClusterInput
    GlobalClusterIdentifier: string
    TargetDbClusterIdentifier: string
    AllowDataLoss: boolean
    Switchover: boolean
end

local record FailoverGlobalClusterOutput
    GlobalCluster: GlobalCluster
end

local record ListTagsForResourceInput
    ResourceName: string
    Filters: {Filter}
end

local record ListTagsForResourceOutput
    TagList: {Tag}
end

local record ModifyActivityStreamInput
    ResourceArn: string
    AuditPolicyState: string
end

local record ModifyActivityStreamOutput
    KmsKeyId: string
    KinesisStreamName: string
    Status: string
    Mode: string
    EngineNativeAuditFieldsIncluded: boolean
    PolicyStatus: string
end

local record ModifyCertificatesInput
    CertificateIdentifier: string
    RemoveCustomerOverride: boolean
end

local record ModifyCertificatesOutput
    Certificate: Certificate
end

local record ModifyCurrentDBClusterCapacityInput
    DBClusterIdentifier: string
    Capacity: number
    SecondsBeforeTimeout: number
    TimeoutAction: string
end

local record ModifyCurrentDBClusterCapacityOutput
    DBClusterIdentifier: string
    PendingCapacity: number
    CurrentCapacity: number
    SecondsBeforeTimeout: number
    TimeoutAction: string
end

local record ModifyCustomDBEngineVersionInput
    Engine: string
    EngineVersion: string
    Description: string
    Status: string
end

local record ModifyCustomDBEngineVersionOutput
    Engine: string
    MajorEngineVersion: string
    EngineVersion: string
    DatabaseInstallationFilesS3BucketName: string
    DatabaseInstallationFilesS3Prefix: string
    DatabaseInstallationFiles: {string}
    CustomDBEngineVersionManifest: string
    DBParameterGroupFamily: string
    DBEngineDescription: string
    DBEngineVersionArn: string
    DBEngineVersionDescription: string
    DefaultCharacterSet: CharacterSet
    FailureReason: string
    Image: CustomDBEngineVersionAMI
    DBEngineMediaType: string
    KMSKeyId: string
    CreateTime: number
    SupportedCharacterSets: {CharacterSet}
    SupportedNcharCharacterSets: {CharacterSet}
    ValidUpgradeTarget: {UpgradeTarget}
    SupportedTimezones: {Timezone}
    ExportableLogTypes: {string}
    SupportsLogExportsToCloudwatchLogs: boolean
    SupportsReadReplica: boolean
    SupportedEngineModes: {string}
    SupportedFeatureNames: {string}
    Status: string
    SupportsParallelQuery: boolean
    SupportsGlobalDatabases: boolean
    TagList: {Tag}
    SupportsBabelfish: boolean
    SupportsLimitlessDatabase: boolean
    SupportsCertificateRotationWithoutRestart: boolean
    SupportedCACertificateIdentifiers: {string}
    SupportsLocalWriteForwarding: boolean
    SupportsIntegrations: boolean
    ServerlessV2FeaturesSupport: ServerlessV2FeaturesSupport
end

local record ModifyDBClusterInput
    DBClusterIdentifier: string
    NewDBClusterIdentifier: string
    ApplyImmediately: boolean
    BackupRetentionPeriod: number
    DBClusterParameterGroupName: string
    VpcSecurityGroupIds: {string}
    Port: number
    MasterUserPassword: string
    OptionGroupName: string
    PreferredBackupWindow: string
    PreferredMaintenanceWindow: string
    EnableIAMDatabaseAuthentication: boolean
    BacktrackWindow: number
    CloudwatchLogsExportConfiguration: CloudwatchLogsExportConfiguration
    EngineVersion: string
    AllowMajorVersionUpgrade: boolean
    DBInstanceParameterGroupName: string
    Domain: string
    DomainIAMRoleName: string
    ScalingConfiguration: ScalingConfiguration
    DeletionProtection: boolean
    EnableHttpEndpoint: boolean
    CopyTagsToSnapshot: boolean
    EnableGlobalWriteForwarding: boolean
    DBClusterInstanceClass: string
    AllocatedStorage: number
    StorageType: string
    Iops: number
    AutoMinorVersionUpgrade: boolean
    NetworkType: string
    ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration
    MonitoringInterval: number
    MonitoringRoleArn: string
    DatabaseInsightsMode: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    ManageMasterUserPassword: boolean
    RotateMasterUserPassword: boolean
    EnableLocalWriteForwarding: boolean
    MasterUserSecretKmsKeyId: string
    EngineMode: string
    AllowEngineModeChange: boolean
    AwsBackupRecoveryPointArn: string
    EnableLimitlessDatabase: boolean
    CACertificateIdentifier: string
    MasterUserAuthenticationType: string
end

local record ModifyDBClusterOutput
    DBCluster: DBCluster
end

local record ModifyDBClusterEndpointInput
    DBClusterEndpointIdentifier: string
    EndpointType: string
    StaticMembers: {string}
    ExcludedMembers: {string}
end

local record ModifyDBClusterEndpointOutput
    DBClusterEndpointIdentifier: string
    DBClusterIdentifier: string
    DBClusterEndpointResourceIdentifier: string
    Endpoint: string
    Status: string
    EndpointType: string
    CustomEndpointType: string
    StaticMembers: {string}
    ExcludedMembers: {string}
    DBClusterEndpointArn: string
end

local record ModifyDBClusterParameterGroupInput
    DBClusterParameterGroupName: string
    Parameters: {Parameter}
end

local record ModifyDBClusterParameterGroupOutput
    DBClusterParameterGroupName: string
end

local record ModifyDBClusterSnapshotAttributeInput
    DBClusterSnapshotIdentifier: string
    AttributeName: string
    ValuesToAdd: {string}
    ValuesToRemove: {string}
end

local record ModifyDBClusterSnapshotAttributeOutput
    DBClusterSnapshotAttributesResult: DBClusterSnapshotAttributesResult
end

local record ModifyDBInstanceInput
    DBInstanceIdentifier: string
    AllocatedStorage: number
    DBInstanceClass: string
    DBSubnetGroupName: string
    DBSecurityGroups: {string}
    VpcSecurityGroupIds: {string}
    ApplyImmediately: boolean
    MasterUserPassword: string
    DBParameterGroupName: string
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    PreferredMaintenanceWindow: string
    MultiAZ: boolean
    EngineVersion: string
    AllowMajorVersionUpgrade: boolean
    AutoMinorVersionUpgrade: boolean
    LicenseModel: string
    Iops: number
    StorageThroughput: number
    OptionGroupName: string
    NewDBInstanceIdentifier: string
    StorageType: string
    TdeCredentialArn: string
    TdeCredentialPassword: string
    CACertificateIdentifier: string
    Domain: string
    DomainFqdn: string
    DomainOu: string
    DomainAuthSecretArn: string
    DomainDnsIps: {string}
    DisableDomain: boolean
    CopyTagsToSnapshot: boolean
    MonitoringInterval: number
    DBPortNumber: number
    PubliclyAccessible: boolean
    MonitoringRoleArn: string
    DomainIAMRoleName: string
    PromotionTier: number
    EnableIAMDatabaseAuthentication: boolean
    DatabaseInsightsMode: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    CloudwatchLogsExportConfiguration: CloudwatchLogsExportConfiguration
    ProcessorFeatures: {ProcessorFeature}
    UseDefaultProcessorFeatures: boolean
    DeletionProtection: boolean
    MaxAllocatedStorage: number
    CertificateRotationRestart: boolean
    ReplicaMode: string
    AutomationMode: string
    ResumeFullAutomationModeMinutes: number
    EnableCustomerOwnedIp: boolean
    NetworkType: string
    AwsBackupRecoveryPointArn: string
    ManageMasterUserPassword: boolean
    RotateMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
    MultiTenant: boolean
    DedicatedLogVolume: boolean
    Engine: string
    AdditionalStorageVolumes: {ModifyAdditionalStorageVolume}
    TagSpecifications: {TagSpecification}
    MasterUserAuthenticationType: string
end

local record ModifyDBInstanceOutput
    DBInstance: DBInstance
end

local record ModifyDBParameterGroupInput
    DBParameterGroupName: string
    Parameters: {Parameter}
end

local record ModifyDBParameterGroupOutput
    DBParameterGroupName: string
end

local record ModifyDBProxyInput
    DBProxyName: string
    NewDBProxyName: string
    DefaultAuthScheme: string
    Auth: {UserAuthConfig}
    RequireTLS: boolean
    IdleClientTimeout: number
    DebugLogging: boolean
    RoleArn: string
    SecurityGroups: {string}
end

local record ModifyDBProxyOutput
    DBProxy: DBProxy
end

local record ModifyDBProxyEndpointInput
    DBProxyEndpointName: string
    NewDBProxyEndpointName: string
    VpcSecurityGroupIds: {string}
end

local record ModifyDBProxyEndpointOutput
    DBProxyEndpoint: DBProxyEndpoint
end

local record ModifyDBProxyTargetGroupInput
    TargetGroupName: string
    DBProxyName: string
    ConnectionPoolConfig: ConnectionPoolConfiguration
    NewName: string
end

local record ModifyDBProxyTargetGroupOutput
    DBProxyTargetGroup: DBProxyTargetGroup
end

local record ModifyDBRecommendationInput
    RecommendationId: string
    Locale: string
    Status: string
    RecommendedActionUpdates: {RecommendedActionUpdate}
end

local record ModifyDBRecommendationOutput
    DBRecommendation: DBRecommendation
end

local record ModifyDBShardGroupInput
    DBShardGroupIdentifier: string
    MaxACU: number
    MinACU: number
    ComputeRedundancy: number
end

local record ModifyDBShardGroupOutput
    DBShardGroupResourceId: string
    DBShardGroupIdentifier: string
    DBClusterIdentifier: string
    MaxACU: number
    MinACU: number
    ComputeRedundancy: number
    Status: string
    PubliclyAccessible: boolean
    Endpoint: string
    DBShardGroupArn: string
    TagList: {Tag}
end

local record ModifyDBSnapshotInput
    DBSnapshotIdentifier: string
    EngineVersion: string
    OptionGroupName: string
end

local record ModifyDBSnapshotOutput
    DBSnapshot: DBSnapshot
end

local record ModifyDBSnapshotAttributeInput
    DBSnapshotIdentifier: string
    AttributeName: string
    ValuesToAdd: {string}
    ValuesToRemove: {string}
end

local record ModifyDBSnapshotAttributeOutput
    DBSnapshotAttributesResult: DBSnapshotAttributesResult
end

local record ModifyDBSubnetGroupInput
    DBSubnetGroupName: string
    DBSubnetGroupDescription: string
    SubnetIds: {string}
end

local record ModifyDBSubnetGroupOutput
    DBSubnetGroup: DBSubnetGroup
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

local record ModifyGlobalClusterInput
    GlobalClusterIdentifier: string
    NewGlobalClusterIdentifier: string
    DeletionProtection: boolean
    EngineVersion: string
    AllowMajorVersionUpgrade: boolean
end

local record ModifyGlobalClusterOutput
    GlobalCluster: GlobalCluster
end

local record ModifyIntegrationInput
    IntegrationIdentifier: string
    IntegrationName: string
    DataFilter: string
    Description: string
end

local record ModifyIntegrationOutput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    IntegrationArn: string
    KMSKeyId: string
    AdditionalEncryptionContext: {string : string}
    Status: string
    Tags: {Tag}
    DataFilter: string
    Description: string
    CreateTime: number
    Errors: {IntegrationError}
end

local record ModifyOptionGroupInput
    OptionGroupName: string
    OptionsToInclude: {OptionConfiguration}
    OptionsToRemove: {string}
    ApplyImmediately: boolean
end

local record ModifyOptionGroupOutput
    OptionGroup: OptionGroup
end

local record ModifyTenantDatabaseInput
    DBInstanceIdentifier: string
    TenantDBName: string
    MasterUserPassword: string
    NewTenantDBName: string
    ManageMasterUserPassword: boolean
    RotateMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
end

local record ModifyTenantDatabaseOutput
    TenantDatabase: TenantDatabase
end

local record PromoteReadReplicaInput
    DBInstanceIdentifier: string
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    TagSpecifications: {TagSpecification}
end

local record PromoteReadReplicaOutput
    DBInstance: DBInstance
end

local record PromoteReadReplicaDBClusterInput
    DBClusterIdentifier: string
end

local record PromoteReadReplicaDBClusterOutput
    DBCluster: DBCluster
end

local record PurchaseReservedDBInstancesOfferingInput
    ReservedDBInstancesOfferingId: string
    ReservedDBInstanceId: string
    DBInstanceCount: number
    Tags: {Tag}
end

local record PurchaseReservedDBInstancesOfferingOutput
    ReservedDBInstance: ReservedDBInstance
end

local record RebootDBClusterInput
    DBClusterIdentifier: string
end

local record RebootDBClusterOutput
    DBCluster: DBCluster
end

local record RebootDBInstanceInput
    DBInstanceIdentifier: string
    ForceFailover: boolean
end

local record RebootDBInstanceOutput
    DBInstance: DBInstance
end

local record RebootDBShardGroupInput
    DBShardGroupIdentifier: string
end

local record RebootDBShardGroupOutput
    DBShardGroupResourceId: string
    DBShardGroupIdentifier: string
    DBClusterIdentifier: string
    MaxACU: number
    MinACU: number
    ComputeRedundancy: number
    Status: string
    PubliclyAccessible: boolean
    Endpoint: string
    DBShardGroupArn: string
    TagList: {Tag}
end

local record RegisterDBProxyTargetsInput
    DBProxyName: string
    TargetGroupName: string
    DBInstanceIdentifiers: {string}
    DBClusterIdentifiers: {string}
end

local record RegisterDBProxyTargetsOutput
    DBProxyTargets: {DBProxyTarget}
end

local record RemoveFromGlobalClusterInput
    GlobalClusterIdentifier: string
    DbClusterIdentifier: string
end

local record RemoveFromGlobalClusterOutput
    GlobalCluster: GlobalCluster
end

local record RemoveRoleFromDBClusterInput
    DBClusterIdentifier: string
    RoleArn: string
    FeatureName: string
end

local record RemoveRoleFromDBClusterOutput
end

local record RemoveRoleFromDBInstanceInput
    DBInstanceIdentifier: string
    RoleArn: string
    FeatureName: string
end

local record RemoveRoleFromDBInstanceOutput
end

local record RemoveSourceIdentifierFromSubscriptionInput
    SubscriptionName: string
    SourceIdentifier: string
end

local record RemoveSourceIdentifierFromSubscriptionOutput
    EventSubscription: EventSubscription
end

local record RemoveTagsFromResourceInput
    ResourceName: string
    TagKeys: {string}
end

local record RemoveTagsFromResourceOutput
end

local record ResetDBClusterParameterGroupInput
    DBClusterParameterGroupName: string
    ResetAllParameters: boolean
    Parameters: {Parameter}
end

local record ResetDBClusterParameterGroupOutput
    DBClusterParameterGroupName: string
end

local record ResetDBParameterGroupInput
    DBParameterGroupName: string
    ResetAllParameters: boolean
    Parameters: {Parameter}
end

local record ResetDBParameterGroupOutput
    DBParameterGroupName: string
end

local record RestoreDBClusterFromS3Input
    AvailabilityZones: {string}
    BackupRetentionPeriod: number
    CharacterSetName: string
    DatabaseName: string
    DBClusterIdentifier: string
    DBClusterParameterGroupName: string
    VpcSecurityGroupIds: {string}
    DBSubnetGroupName: string
    Engine: string
    EngineVersion: string
    Port: number
    MasterUsername: string
    MasterUserPassword: string
    OptionGroupName: string
    PreferredBackupWindow: string
    PreferredMaintenanceWindow: string
    Tags: {Tag}
    StorageEncrypted: boolean
    KmsKeyId: string
    EnableIAMDatabaseAuthentication: boolean
    SourceEngine: string
    SourceEngineVersion: string
    S3BucketName: string
    S3Prefix: string
    S3IngestionRoleArn: string
    BacktrackWindow: number
    EnableCloudwatchLogsExports: {string}
    DeletionProtection: boolean
    CopyTagsToSnapshot: boolean
    Domain: string
    DomainIAMRoleName: string
    StorageType: string
    NetworkType: string
    ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration
    ManageMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
    EngineLifecycleSupport: string
    TagSpecifications: {TagSpecification}
end

local record RestoreDBClusterFromS3Output
    DBCluster: DBCluster
end

local record RestoreDBClusterFromSnapshotInput
    AvailabilityZones: {string}
    DBClusterIdentifier: string
    SnapshotIdentifier: string
    Engine: string
    EngineVersion: string
    Port: number
    DBSubnetGroupName: string
    DatabaseName: string
    OptionGroupName: string
    VpcSecurityGroupIds: {string}
    Tags: {Tag}
    KmsKeyId: string
    EnableIAMDatabaseAuthentication: boolean
    BacktrackWindow: number
    EnableCloudwatchLogsExports: {string}
    EngineMode: string
    ScalingConfiguration: ScalingConfiguration
    DBClusterParameterGroupName: string
    DeletionProtection: boolean
    CopyTagsToSnapshot: boolean
    Domain: string
    DomainIAMRoleName: string
    DBClusterInstanceClass: string
    StorageType: string
    Iops: number
    PubliclyAccessible: boolean
    NetworkType: string
    ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration
    RdsCustomClusterConfiguration: RdsCustomClusterConfiguration
    MonitoringInterval: number
    MonitoringRoleArn: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    EngineLifecycleSupport: string
    TagSpecifications: {TagSpecification}
    EnableVPCNetworking: boolean
    EnableInternetAccessGateway: boolean
end

local record RestoreDBClusterFromSnapshotOutput
    DBCluster: DBCluster
end

local record RestoreDBClusterToPointInTimeInput
    DBClusterIdentifier: string
    RestoreType: string
    SourceDBClusterIdentifier: string
    RestoreToTime: number
    UseLatestRestorableTime: boolean
    Port: number
    DBSubnetGroupName: string
    OptionGroupName: string
    VpcSecurityGroupIds: {string}
    Tags: {Tag}
    KmsKeyId: string
    EnableIAMDatabaseAuthentication: boolean
    BacktrackWindow: number
    EnableCloudwatchLogsExports: {string}
    DBClusterParameterGroupName: string
    DeletionProtection: boolean
    CopyTagsToSnapshot: boolean
    Domain: string
    DomainIAMRoleName: string
    DBClusterInstanceClass: string
    StorageType: string
    PubliclyAccessible: boolean
    Iops: number
    NetworkType: string
    SourceDbClusterResourceId: string
    ServerlessV2ScalingConfiguration: ServerlessV2ScalingConfiguration
    ScalingConfiguration: ScalingConfiguration
    EngineMode: string
    RdsCustomClusterConfiguration: RdsCustomClusterConfiguration
    MonitoringInterval: number
    MonitoringRoleArn: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    EngineLifecycleSupport: string
    TagSpecifications: {TagSpecification}
    EnableVPCNetworking: boolean
    EnableInternetAccessGateway: boolean
end

local record RestoreDBClusterToPointInTimeOutput
    DBCluster: DBCluster
end

local record RestoreDBInstanceFromDBSnapshotInput
    DBInstanceIdentifier: string
    DBSnapshotIdentifier: string
    DBInstanceClass: string
    Port: number
    AvailabilityZone: string
    DBSubnetGroupName: string
    MultiAZ: boolean
    PubliclyAccessible: boolean
    AutoMinorVersionUpgrade: boolean
    LicenseModel: string
    DBName: string
    Engine: string
    Iops: number
    StorageThroughput: number
    OptionGroupName: string
    Tags: {Tag}
    StorageType: string
    TdeCredentialArn: string
    TdeCredentialPassword: string
    VpcSecurityGroupIds: {string}
    Domain: string
    DomainFqdn: string
    DomainOu: string
    DomainAuthSecretArn: string
    DomainDnsIps: {string}
    CopyTagsToSnapshot: boolean
    DomainIAMRoleName: string
    EnableIAMDatabaseAuthentication: boolean
    EnableCloudwatchLogsExports: {string}
    ProcessorFeatures: {ProcessorFeature}
    UseDefaultProcessorFeatures: boolean
    DBParameterGroupName: string
    DeletionProtection: boolean
    EnableCustomerOwnedIp: boolean
    NetworkType: string
    BackupTarget: string
    CustomIamInstanceProfile: string
    AllocatedStorage: number
    DBClusterSnapshotIdentifier: string
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    DedicatedLogVolume: boolean
    CACertificateIdentifier: string
    EngineLifecycleSupport: string
    AdditionalStorageVolumes: {AdditionalStorageVolume}
    TagSpecifications: {TagSpecification}
    ManageMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
end

local record RestoreDBInstanceFromDBSnapshotOutput
    DBInstance: DBInstance
end

local record RestoreDBInstanceFromS3Input
    DBName: string
    DBInstanceIdentifier: string
    AllocatedStorage: number
    DBInstanceClass: string
    Engine: string
    MasterUsername: string
    MasterUserPassword: string
    DBSecurityGroups: {string}
    VpcSecurityGroupIds: {string}
    AvailabilityZone: string
    DBSubnetGroupName: string
    PreferredMaintenanceWindow: string
    DBParameterGroupName: string
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    Port: number
    MultiAZ: boolean
    EngineVersion: string
    AutoMinorVersionUpgrade: boolean
    LicenseModel: string
    Iops: number
    StorageThroughput: number
    OptionGroupName: string
    PubliclyAccessible: boolean
    Tags: {Tag}
    StorageType: string
    StorageEncrypted: boolean
    KmsKeyId: string
    CopyTagsToSnapshot: boolean
    MonitoringInterval: number
    MonitoringRoleArn: string
    EnableIAMDatabaseAuthentication: boolean
    SourceEngine: string
    SourceEngineVersion: string
    S3BucketName: string
    S3Prefix: string
    S3IngestionRoleArn: string
    DatabaseInsightsMode: string
    EnablePerformanceInsights: boolean
    PerformanceInsightsKMSKeyId: string
    PerformanceInsightsRetentionPeriod: number
    EnableCloudwatchLogsExports: {string}
    ProcessorFeatures: {ProcessorFeature}
    UseDefaultProcessorFeatures: boolean
    DeletionProtection: boolean
    MaxAllocatedStorage: number
    NetworkType: string
    ManageMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
    DedicatedLogVolume: boolean
    CACertificateIdentifier: string
    EngineLifecycleSupport: string
    AdditionalStorageVolumes: {AdditionalStorageVolume}
    TagSpecifications: {TagSpecification}
end

local record RestoreDBInstanceFromS3Output
    DBInstance: DBInstance
end

local record RestoreDBInstanceToPointInTimeInput
    SourceDBInstanceIdentifier: string
    TargetDBInstanceIdentifier: string
    RestoreTime: number
    UseLatestRestorableTime: boolean
    DBInstanceClass: string
    Port: number
    AvailabilityZone: string
    DBSubnetGroupName: string
    MultiAZ: boolean
    PubliclyAccessible: boolean
    AutoMinorVersionUpgrade: boolean
    LicenseModel: string
    DBName: string
    Engine: string
    Iops: number
    StorageThroughput: number
    OptionGroupName: string
    CopyTagsToSnapshot: boolean
    Tags: {Tag}
    StorageType: string
    TdeCredentialArn: string
    TdeCredentialPassword: string
    VpcSecurityGroupIds: {string}
    Domain: string
    DomainIAMRoleName: string
    DomainFqdn: string
    DomainOu: string
    DomainAuthSecretArn: string
    DomainDnsIps: {string}
    EnableIAMDatabaseAuthentication: boolean
    EnableCloudwatchLogsExports: {string}
    ProcessorFeatures: {ProcessorFeature}
    UseDefaultProcessorFeatures: boolean
    DBParameterGroupName: string
    DeletionProtection: boolean
    SourceDbiResourceId: string
    MaxAllocatedStorage: number
    EnableCustomerOwnedIp: boolean
    NetworkType: string
    SourceDBInstanceAutomatedBackupsArn: string
    BackupTarget: string
    CustomIamInstanceProfile: string
    AllocatedStorage: number
    BackupRetentionPeriod: number
    PreferredBackupWindow: string
    DedicatedLogVolume: boolean
    CACertificateIdentifier: string
    EngineLifecycleSupport: string
    AdditionalStorageVolumes: {AdditionalStorageVolume}
    TagSpecifications: {TagSpecification}
    ManageMasterUserPassword: boolean
    MasterUserSecretKmsKeyId: string
end

local record RestoreDBInstanceToPointInTimeOutput
    DBInstance: DBInstance
end

local record RevokeDBSecurityGroupIngressInput
    DBSecurityGroupName: string
    CIDRIP: string
    EC2SecurityGroupName: string
    EC2SecurityGroupId: string
    EC2SecurityGroupOwnerId: string
end

local record RevokeDBSecurityGroupIngressOutput
    DBSecurityGroup: DBSecurityGroup
end

local record StartActivityStreamInput
    ResourceArn: string
    Mode: string
    KmsKeyId: string
    ApplyImmediately: boolean
    EngineNativeAuditFieldsIncluded: boolean
end

local record StartActivityStreamOutput
    KmsKeyId: string
    KinesisStreamName: string
    Status: string
    Mode: string
    EngineNativeAuditFieldsIncluded: boolean
    ApplyImmediately: boolean
end

local record StartDBClusterInput
    DBClusterIdentifier: string
end

local record StartDBClusterOutput
    DBCluster: DBCluster
end

local record StartDBInstanceInput
    DBInstanceIdentifier: string
end

local record StartDBInstanceOutput
    DBInstance: DBInstance
end

local record StartDBInstanceAutomatedBackupsReplicationInput
    SourceDBInstanceArn: string
    BackupRetentionPeriod: number
    KmsKeyId: string
    PreSignedUrl: string
    Tags: {Tag}
end

local record StartDBInstanceAutomatedBackupsReplicationOutput
    DBInstanceAutomatedBackup: DBInstanceAutomatedBackup
end

local record StartExportTaskInput
    ExportTaskIdentifier: string
    SourceArn: string
    S3BucketName: string
    IamRoleArn: string
    KmsKeyId: string
    S3Prefix: string
    ExportOnly: {string}
end

local record StartExportTaskOutput
    ExportTaskIdentifier: string
    SourceArn: string
    ExportOnly: {string}
    SnapshotTime: number
    TaskStartTime: number
    TaskEndTime: number
    S3Bucket: string
    S3Prefix: string
    IamRoleArn: string
    KmsKeyId: string
    Status: string
    PercentProgress: number
    TotalExtractedDataInGB: number
    FailureCause: string
    WarningMessage: string
    SourceType: string
end

local record StopActivityStreamInput
    ResourceArn: string
    ApplyImmediately: boolean
end

local record StopActivityStreamOutput
    KmsKeyId: string
    KinesisStreamName: string
    Status: string
end

local record StopDBClusterInput
    DBClusterIdentifier: string
end

local record StopDBClusterOutput
    DBCluster: DBCluster
end

local record StopDBInstanceInput
    DBInstanceIdentifier: string
    DBSnapshotIdentifier: string
end

local record StopDBInstanceOutput
    DBInstance: DBInstance
end

local record StopDBInstanceAutomatedBackupsReplicationInput
    SourceDBInstanceArn: string
end

local record StopDBInstanceAutomatedBackupsReplicationOutput
    DBInstanceAutomatedBackup: DBInstanceAutomatedBackup
end

local record SwitchoverBlueGreenDeploymentInput
    BlueGreenDeploymentIdentifier: string
    SwitchoverTimeout: number
end

local record SwitchoverBlueGreenDeploymentOutput
    BlueGreenDeployment: BlueGreenDeployment
end

local record SwitchoverGlobalClusterInput
    GlobalClusterIdentifier: string
    TargetDbClusterIdentifier: string
end

local record SwitchoverGlobalClusterOutput
    GlobalCluster: GlobalCluster
end

local record SwitchoverReadReplicaInput
    DBInstanceIdentifier: string
end

local record SwitchoverReadReplicaOutput
    DBInstance: DBInstance
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterRoleAlreadyExistsFault
    message: string
end

local record DBClusterRoleQuotaExceededFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBInstanceRoleAlreadyExistsFault
    message: string
end

local record DBInstanceRoleQuotaExceededFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record SourceNotFoundFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record BlueGreenDeploymentNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBProxyEndpointNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record DBShardGroupNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSnapshotTenantDatabaseNotFoundFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record InvalidDBClusterEndpointStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record TenantDatabaseNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record AuthorizationAlreadyExistsFault
    message: string
end

local record AuthorizationQuotaExceededFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record InvalidDBSecurityGroupStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record ExportTaskNotFoundFault
    message: string
end

local record InvalidExportTaskStateFault
    message: string
end

local record DBParameterGroupAlreadyExistsFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBParameterGroupQuotaExceededFault
    message: string
end

local record DBClusterSnapshotAlreadyExistsFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record InvalidDBClusterSnapshotStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record DBParameterGroupAlreadyExistsFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBParameterGroupQuotaExceededFault
    message: string
end

local record CustomAvailabilityZoneNotFoundFault
    message: string
end

local record DBSnapshotAlreadyExistsFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record InvalidDBSnapshotStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record OptionGroupAlreadyExistsFault
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record OptionGroupQuotaExceededFault
    message: string
end

local record BlueGreenDeploymentAlreadyExistsFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterParameterGroupNotFoundFault
    message: string
end

local record DBClusterQuotaExceededFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record InstanceQuotaExceededFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record SourceClusterNotSupportedFault
    message: string
end

local record SourceDatabaseNotSupportedFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record CreateCustomDBEngineVersionFault
    message: string
end

local record CustomDBEngineVersionAlreadyExistsFault
    message: string
end

local record CustomDBEngineVersionNotFoundFault
    message: string
end

local record CustomDBEngineVersionQuotaExceededFault
    message: string
end

local record Ec2ImagePropertiesNotSupportedFault
    message: string
end

local record InvalidCustomDBEngineVersionStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record DBClusterAlreadyExistsFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterParameterGroupNotFoundFault
    message: string
end

local record DBClusterQuotaExceededFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record GlobalClusterNotFoundFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InsufficientStorageClusterCapacityFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBSubnetGroupFault
    message: string
end

local record InvalidDBSubnetGroupStateFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record DBClusterEndpointAlreadyExistsFault
    message: string
end

local record DBClusterEndpointQuotaExceededFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record DBParameterGroupAlreadyExistsFault
    message: string
end

local record DBParameterGroupQuotaExceededFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterSnapshotAlreadyExistsFault
    message: string
end

local record InvalidDBClusterSnapshotStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record BackupPolicyNotFoundFault
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceAlreadyExistsFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InstanceQuotaExceededFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record ProvisionedIopsNotAvailableInAZFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record TenantDatabaseQuotaExceededFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceAlreadyExistsFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotAllowedFault
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InstanceQuotaExceededFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBSubnetGroupFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record ProvisionedIopsNotAvailableInAZFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record TenantDatabaseQuotaExceededFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record DBParameterGroupAlreadyExistsFault
    message: string
end

local record DBParameterGroupQuotaExceededFault
    message: string
end

local record DBProxyAlreadyExistsFault
    message: string
end

local record DBProxyQuotaExceededFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record DBProxyEndpointAlreadyExistsFault
    message: string
end

local record DBProxyEndpointQuotaExceededFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record DBSecurityGroupAlreadyExistsFault
    message: string
end

local record DBSecurityGroupNotSupportedFault
    message: string
end

local record DBSecurityGroupQuotaExceededFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBShardGroupAlreadyExistsFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record MaxDBShardGroupLimitReached
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record UnsupportedDBEngineVersionFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBSnapshotAlreadyExistsFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record DBSubnetGroupAlreadyExistsFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupQuotaExceededFault
    message: string
end

local record DBSubnetQuotaExceededFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record EventSubscriptionQuotaExceededFault
    message: string
end

local record SNSInvalidTopicFault
    message: string
end

local record SNSNoAuthorizationFault
    message: string
end

local record SNSTopicArnNotFoundFault
    message: string
end

local record SourceNotFoundFault
    message: string
end

local record SubscriptionAlreadyExistFault
    message: string
end

local record SubscriptionCategoryNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record GlobalClusterAlreadyExistsFault
    message: string
end

local record GlobalClusterQuotaExceededFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBShardGroupStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record IntegrationAlreadyExistsFault
    message: string
end

local record IntegrationConflictOperationFault
    message: string
end

local record IntegrationQuotaExceededFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record OptionGroupAlreadyExistsFault
    message: string
end

local record OptionGroupQuotaExceededFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record TenantDatabaseAlreadyExistsFault
    message: string
end

local record TenantDatabaseQuotaExceededFault
    message: string
end

local record BlueGreenDeploymentNotFoundFault
    message: string
end

local record InvalidBlueGreenDeploymentStateFault
    message: string
end

local record CustomDBEngineVersionNotFoundFault
    message: string
end

local record InvalidCustomDBEngineVersionStateFault
    message: string
end

local record DBClusterAutomatedBackupQuotaExceededFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterSnapshotAlreadyExistsFault
    message: string
end

local record InvalidDBClusterSnapshotStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record DBClusterAutomatedBackupNotFoundFault
    message: string
end

local record InvalidDBClusterAutomatedBackupStateFault
    message: string
end

local record DBClusterEndpointNotFoundFault
    message: string
end

local record InvalidDBClusterEndpointStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record InvalidDBParameterGroupStateFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record InvalidDBClusterSnapshotStateFault
    message: string
end

local record DBInstanceAutomatedBackupQuotaExceededFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBSnapshotAlreadyExistsFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record DBInstanceAutomatedBackupNotFoundFault
    message: string
end

local record InvalidDBInstanceAutomatedBackupStateFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record InvalidDBParameterGroupStateFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record DBProxyEndpointNotFoundFault
    message: string
end

local record InvalidDBProxyEndpointStateFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record InvalidDBSecurityGroupStateFault
    message: string
end

local record DBShardGroupNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBShardGroupStateFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record InvalidDBSnapshotStateFault
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record InvalidDBSubnetGroupStateFault
    message: string
end

local record InvalidDBSubnetStateFault
    message: string
end

local record InvalidEventSubscriptionStateFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record GlobalClusterNotFoundFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record IntegrationConflictOperationFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record InvalidIntegrationStateFault
    message: string
end

local record InvalidOptionGroupStateFault
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBSnapshotAlreadyExistsFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record TenantDatabaseNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record DBProxyTargetNotFoundFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record BlueGreenDeploymentNotFoundFault
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBClusterAutomatedBackupNotFoundFault
    message: string
end

local record DBClusterBacktrackNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record DBInstanceAutomatedBackupNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBInstanceNotReadyFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyEndpointNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record DBProxyTargetNotFoundFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBShardGroupNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record ExportTaskNotFoundFault
    message: string
end

local record GlobalClusterNotFoundFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ReservedDBInstanceNotFoundFault
    message: string
end

local record ReservedDBInstancesOfferingNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBInstanceNotReadyFault
    message: string
end

local record DBLogFileNotFoundFault
    message: string
end

local record InvalidResourceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record GlobalClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record BlueGreenDeploymentNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBProxyEndpointNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record DBShardGroupNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSnapshotTenantDatabaseNotFoundFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record TenantDatabaseNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record InvalidDBClusterCapacityFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record CustomDBEngineVersionNotFoundFault
    message: string
end

local record InvalidCustomDBEngineVersionStateFault
    message: string
end

local record DBClusterAlreadyExistsFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterParameterGroupNotFoundFault
    message: string
end

local record DBInstanceAlreadyExistsFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBSecurityGroupStateFault
    message: string
end

local record InvalidDBSubnetGroupStateFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotAvailableFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record DBClusterEndpointNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBClusterEndpointStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record InvalidDBParameterGroupStateFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record InvalidDBClusterSnapshotStateFault
    message: string
end

local record SharedSnapshotQuotaExceededFault
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record BackupPolicyNotFoundFault
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBInstanceAlreadyExistsFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record DBUpgradeDependencyFailureFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBSecurityGroupStateFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record ProvisionedIopsNotAvailableInAZFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record TenantDatabaseQuotaExceededFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record InvalidDBParameterGroupStateFault
    message: string
end

local record DBProxyAlreadyExistsFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record DBProxyEndpointAlreadyExistsFault
    message: string
end

local record DBProxyEndpointNotFoundFault
    message: string
end

local record InvalidDBProxyEndpointStateFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record DBShardGroupAlreadyExistsFault
    message: string
end

local record DBShardGroupNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record InvalidDBSnapshotStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record InvalidDBSnapshotStateFault
    message: string
end

local record SharedSnapshotQuotaExceededFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DBSubnetQuotaExceededFault
    message: string
end

local record InvalidDBSubnetGroupStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record SubnetAlreadyInUse
    message: string
end

local record EventSubscriptionQuotaExceededFault
    message: string
end

local record SNSInvalidTopicFault
    message: string
end

local record SNSNoAuthorizationFault
    message: string
end

local record SNSTopicArnNotFoundFault
    message: string
end

local record SubscriptionCategoryNotFoundFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record GlobalClusterAlreadyExistsFault
    message: string
end

local record GlobalClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record IntegrationConflictOperationFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record InvalidIntegrationStateFault
    message: string
end

local record InvalidOptionGroupStateFault
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record TenantDatabaseAlreadyExistsFault
    message: string
end

local record TenantDatabaseNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record ReservedDBInstanceAlreadyExistsFault
    message: string
end

local record ReservedDBInstanceQuotaExceededFault
    message: string
end

local record ReservedDBInstancesOfferingNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record DBShardGroupNotFoundFault
    message: string
end

local record InvalidDBShardGroupStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetAlreadyRegisteredFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record InsufficientAvailableIPsInSubnetFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBProxyStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record GlobalClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterRoleNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBInstanceRoleNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record SourceNotFoundFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record BlueGreenDeploymentNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBProxyEndpointNotFoundFault
    message: string
end

local record DBProxyNotFoundFault
    message: string
end

local record DBProxyTargetGroupNotFoundFault
    message: string
end

local record DBShardGroupNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSnapshotTenantDatabaseNotFoundFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record InvalidDBClusterEndpointStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record TenantDatabaseNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record InvalidDBParameterGroupStateFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record InvalidDBParameterGroupStateFault
    message: string
end

local record DBClusterAlreadyExistsFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterParameterGroupNotFoundFault
    message: string
end

local record DBClusterQuotaExceededFault
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InsufficientStorageClusterCapacityFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBSubnetGroupStateFault
    message: string
end

local record InvalidS3BucketFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record DBClusterAlreadyExistsFault
    message: string
end

local record DBClusterParameterGroupNotFoundFault
    message: string
end

local record DBClusterQuotaExceededFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InsufficientDBClusterCapacityFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InsufficientStorageClusterCapacityFault
    message: string
end

local record InvalidDBClusterSnapshotStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBSnapshotStateFault
    message: string
end

local record InvalidRestoreFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record DBClusterAlreadyExistsFault
    message: string
end

local record DBClusterAutomatedBackupNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterParameterGroupNotFoundFault
    message: string
end

local record DBClusterQuotaExceededFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InsufficientDBClusterCapacityFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InsufficientStorageClusterCapacityFault
    message: string
end

local record InvalidDBClusterSnapshotStateFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBSnapshotStateFault
    message: string
end

local record InvalidRestoreFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record BackupPolicyNotFoundFault
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record DBInstanceAlreadyExistsFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InstanceQuotaExceededFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InvalidDBSnapshotStateFault
    message: string
end

local record InvalidRestoreFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record ProvisionedIopsNotAvailableInAZFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record TenantDatabaseQuotaExceededFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record BackupPolicyNotFoundFault
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBInstanceAlreadyExistsFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record InstanceQuotaExceededFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InvalidS3BucketFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record ProvisionedIopsNotAvailableInAZFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record BackupPolicyNotFoundFault
    message: string
end

local record CertificateNotFoundFault
    message: string
end

local record DBInstanceAlreadyExistsFault
    message: string
end

local record DBInstanceAutomatedBackupNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBParameterGroupNotFoundFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record DomainNotFoundFault
    message: string
end

local record InstanceQuotaExceededFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidRestoreFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record NetworkTypeNotSupported
    message: string
end

local record OptionGroupNotFoundFault
    message: string
end

local record PointInTimeRestoreNotEnabledFault
    message: string
end

local record ProvisionedIopsNotAvailableInAZFault
    message: string
end

local record StorageQuotaExceededFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record TenantDatabaseQuotaExceededFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record DBSecurityGroupNotFoundFault
    message: string
end

local record InvalidDBSecurityGroupStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBShardGroupStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBSubnetGroupDoesNotCoverEnoughAZs
    message: string
end

local record DBSubnetGroupNotFoundFault
    message: string
end

local record InsufficientDBInstanceCapacityFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record VpcEncryptionControlViolationException
    message: string
end

local record DBInstanceAutomatedBackupQuotaExceededFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceAutomatedBackupStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record StorageTypeNotSupportedFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBClusterSnapshotNotFoundFault
    message: string
end

local record DBSnapshotNotFoundFault
    message: string
end

local record ExportTaskAlreadyExistsFault
    message: string
end

local record IamRoleMissingPermissionsFault
    message: string
end

local record IamRoleNotFoundFault
    message: string
end

local record InvalidExportOnlyFault
    message: string
end

local record InvalidExportSourceStateFault
    message: string
end

local record InvalidS3BucketFault
    message: string
end

local record KMSKeyNotAccessibleFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record InvalidDBShardGroupStateFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record DBSnapshotAlreadyExistsFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local record BlueGreenDeploymentNotFoundFault
    message: string
end

local record InvalidBlueGreenDeploymentStateFault
    message: string
end

local record DBClusterNotFoundFault
    message: string
end

local record GlobalClusterNotFoundFault
    message: string
end

local record InvalidDBClusterStateFault
    message: string
end

local record InvalidGlobalClusterStateFault
    message: string
end

local record DBInstanceNotFoundFault
    message: string
end

local record InvalidDBInstanceStateFault
    message: string
end

local type ActivityStreamMode = "sync" | "async"

local type ActivityStreamPolicyStatus = "locked" | "unlocked" | "locking-policy" | "unlocking-policy"

local type ActivityStreamStatus = "stopped" | "starting" | "started" | "stopping"

local type AuditPolicyState = "locked" | "unlocked"

local type AutomationMode = "full" | "all-paused"

local type ClusterScalabilityType = "standard" | "limitless"

local type CustomEngineVersionStatus = "available" | "inactive" | "inactive-except-restore"

local type DBProxyEndpointTargetRole = "READ_WRITE" | "READ_ONLY"

local type DatabaseInsightsMode = "standard" | "advanced"

local type DefaultAuthScheme = "IAM_AUTH" | "NONE"

local type EndpointNetworkType = "IPV4" | "IPV6" | "DUAL"

local type EngineFamily = "MYSQL" | "POSTGRESQL" | "SQLSERVER"

local type ExportSourceType = "SNAPSHOT" | "CLUSTER"

local type IntegrationStatus = "creating" | "active" | "modifying" | "failed" | "deleting" | "syncing" | "needs_attention"

local type MasterUserAuthenticationType = "password" | "iam-db-auth"

local type ReplicaMode = "open-read-only" | "mounted"

local type SourceType = "db-instance" | "db-parameter-group" | "db-security-group" | "db-snapshot" | "db-cluster" | "db-cluster-snapshot" | "custom-engine-version" | "db-proxy" | "blue-green-deployment" | "db-shard-group" | "zero-etl"

local type TargetConnectionNetworkType = "IPV4" | "IPV6"

local record M
    AddRoleToDBClusterInput: AddRoleToDBClusterInput
    AddRoleToDBClusterOutput: AddRoleToDBClusterOutput
    AddRoleToDBInstanceInput: AddRoleToDBInstanceInput
    AddRoleToDBInstanceOutput: AddRoleToDBInstanceOutput
    AddSourceIdentifierToSubscriptionInput: AddSourceIdentifierToSubscriptionInput
    AddSourceIdentifierToSubscriptionOutput: AddSourceIdentifierToSubscriptionOutput
    AddTagsToResourceInput: AddTagsToResourceInput
    AddTagsToResourceOutput: AddTagsToResourceOutput
    ApplyPendingMaintenanceActionInput: ApplyPendingMaintenanceActionInput
    ApplyPendingMaintenanceActionOutput: ApplyPendingMaintenanceActionOutput
    AuthorizeDBSecurityGroupIngressInput: AuthorizeDBSecurityGroupIngressInput
    AuthorizeDBSecurityGroupIngressOutput: AuthorizeDBSecurityGroupIngressOutput
    BacktrackDBClusterInput: BacktrackDBClusterInput
    BacktrackDBClusterOutput: BacktrackDBClusterOutput
    CancelExportTaskInput: CancelExportTaskInput
    CancelExportTaskOutput: CancelExportTaskOutput
    CopyDBClusterParameterGroupInput: CopyDBClusterParameterGroupInput
    CopyDBClusterParameterGroupOutput: CopyDBClusterParameterGroupOutput
    CopyDBClusterSnapshotInput: CopyDBClusterSnapshotInput
    CopyDBClusterSnapshotOutput: CopyDBClusterSnapshotOutput
    CopyDBParameterGroupInput: CopyDBParameterGroupInput
    CopyDBParameterGroupOutput: CopyDBParameterGroupOutput
    CopyDBSnapshotInput: CopyDBSnapshotInput
    CopyDBSnapshotOutput: CopyDBSnapshotOutput
    CopyOptionGroupInput: CopyOptionGroupInput
    CopyOptionGroupOutput: CopyOptionGroupOutput
    CreateBlueGreenDeploymentInput: CreateBlueGreenDeploymentInput
    CreateBlueGreenDeploymentOutput: CreateBlueGreenDeploymentOutput
    CreateCustomDBEngineVersionInput: CreateCustomDBEngineVersionInput
    CreateCustomDBEngineVersionOutput: CreateCustomDBEngineVersionOutput
    CreateDBClusterInput: CreateDBClusterInput
    CreateDBClusterOutput: CreateDBClusterOutput
    CreateDBClusterEndpointInput: CreateDBClusterEndpointInput
    CreateDBClusterEndpointOutput: CreateDBClusterEndpointOutput
    CreateDBClusterParameterGroupInput: CreateDBClusterParameterGroupInput
    CreateDBClusterParameterGroupOutput: CreateDBClusterParameterGroupOutput
    CreateDBClusterSnapshotInput: CreateDBClusterSnapshotInput
    CreateDBClusterSnapshotOutput: CreateDBClusterSnapshotOutput
    CreateDBInstanceInput: CreateDBInstanceInput
    CreateDBInstanceOutput: CreateDBInstanceOutput
    CreateDBInstanceReadReplicaInput: CreateDBInstanceReadReplicaInput
    CreateDBInstanceReadReplicaOutput: CreateDBInstanceReadReplicaOutput
    CreateDBParameterGroupInput: CreateDBParameterGroupInput
    CreateDBParameterGroupOutput: CreateDBParameterGroupOutput
    CreateDBProxyInput: CreateDBProxyInput
    CreateDBProxyOutput: CreateDBProxyOutput
    CreateDBProxyEndpointInput: CreateDBProxyEndpointInput
    CreateDBProxyEndpointOutput: CreateDBProxyEndpointOutput
    CreateDBSecurityGroupInput: CreateDBSecurityGroupInput
    CreateDBSecurityGroupOutput: CreateDBSecurityGroupOutput
    CreateDBShardGroupInput: CreateDBShardGroupInput
    CreateDBShardGroupOutput: CreateDBShardGroupOutput
    CreateDBSnapshotInput: CreateDBSnapshotInput
    CreateDBSnapshotOutput: CreateDBSnapshotOutput
    CreateDBSubnetGroupInput: CreateDBSubnetGroupInput
    CreateDBSubnetGroupOutput: CreateDBSubnetGroupOutput
    CreateEventSubscriptionInput: CreateEventSubscriptionInput
    CreateEventSubscriptionOutput: CreateEventSubscriptionOutput
    CreateGlobalClusterInput: CreateGlobalClusterInput
    CreateGlobalClusterOutput: CreateGlobalClusterOutput
    CreateIntegrationInput: CreateIntegrationInput
    CreateIntegrationOutput: CreateIntegrationOutput
    CreateOptionGroupInput: CreateOptionGroupInput
    CreateOptionGroupOutput: CreateOptionGroupOutput
    CreateTenantDatabaseInput: CreateTenantDatabaseInput
    CreateTenantDatabaseOutput: CreateTenantDatabaseOutput
    DeleteBlueGreenDeploymentInput: DeleteBlueGreenDeploymentInput
    DeleteBlueGreenDeploymentOutput: DeleteBlueGreenDeploymentOutput
    DeleteCustomDBEngineVersionInput: DeleteCustomDBEngineVersionInput
    DeleteCustomDBEngineVersionOutput: DeleteCustomDBEngineVersionOutput
    DeleteDBClusterInput: DeleteDBClusterInput
    DeleteDBClusterOutput: DeleteDBClusterOutput
    DeleteDBClusterAutomatedBackupInput: DeleteDBClusterAutomatedBackupInput
    DeleteDBClusterAutomatedBackupOutput: DeleteDBClusterAutomatedBackupOutput
    DeleteDBClusterEndpointInput: DeleteDBClusterEndpointInput
    DeleteDBClusterEndpointOutput: DeleteDBClusterEndpointOutput
    DeleteDBClusterParameterGroupInput: DeleteDBClusterParameterGroupInput
    DeleteDBClusterParameterGroupOutput: DeleteDBClusterParameterGroupOutput
    DeleteDBClusterSnapshotInput: DeleteDBClusterSnapshotInput
    DeleteDBClusterSnapshotOutput: DeleteDBClusterSnapshotOutput
    DeleteDBInstanceInput: DeleteDBInstanceInput
    DeleteDBInstanceOutput: DeleteDBInstanceOutput
    DeleteDBInstanceAutomatedBackupInput: DeleteDBInstanceAutomatedBackupInput
    DeleteDBInstanceAutomatedBackupOutput: DeleteDBInstanceAutomatedBackupOutput
    DeleteDBParameterGroupInput: DeleteDBParameterGroupInput
    DeleteDBParameterGroupOutput: DeleteDBParameterGroupOutput
    DeleteDBProxyInput: DeleteDBProxyInput
    DeleteDBProxyOutput: DeleteDBProxyOutput
    DeleteDBProxyEndpointInput: DeleteDBProxyEndpointInput
    DeleteDBProxyEndpointOutput: DeleteDBProxyEndpointOutput
    DeleteDBSecurityGroupInput: DeleteDBSecurityGroupInput
    DeleteDBSecurityGroupOutput: DeleteDBSecurityGroupOutput
    DeleteDBShardGroupInput: DeleteDBShardGroupInput
    DeleteDBShardGroupOutput: DeleteDBShardGroupOutput
    DeleteDBSnapshotInput: DeleteDBSnapshotInput
    DeleteDBSnapshotOutput: DeleteDBSnapshotOutput
    DeleteDBSubnetGroupInput: DeleteDBSubnetGroupInput
    DeleteDBSubnetGroupOutput: DeleteDBSubnetGroupOutput
    DeleteEventSubscriptionInput: DeleteEventSubscriptionInput
    DeleteEventSubscriptionOutput: DeleteEventSubscriptionOutput
    DeleteGlobalClusterInput: DeleteGlobalClusterInput
    DeleteGlobalClusterOutput: DeleteGlobalClusterOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeleteOptionGroupInput: DeleteOptionGroupInput
    DeleteOptionGroupOutput: DeleteOptionGroupOutput
    DeleteTenantDatabaseInput: DeleteTenantDatabaseInput
    DeleteTenantDatabaseOutput: DeleteTenantDatabaseOutput
    DeregisterDBProxyTargetsInput: DeregisterDBProxyTargetsInput
    DeregisterDBProxyTargetsOutput: DeregisterDBProxyTargetsOutput
    DescribeAccountAttributesInput: DescribeAccountAttributesInput
    DescribeAccountAttributesOutput: DescribeAccountAttributesOutput
    DescribeBlueGreenDeploymentsInput: DescribeBlueGreenDeploymentsInput
    DescribeBlueGreenDeploymentsOutput: DescribeBlueGreenDeploymentsOutput
    DescribeCertificatesInput: DescribeCertificatesInput
    DescribeCertificatesOutput: DescribeCertificatesOutput
    DescribeDBClusterAutomatedBackupsInput: DescribeDBClusterAutomatedBackupsInput
    DescribeDBClusterAutomatedBackupsOutput: DescribeDBClusterAutomatedBackupsOutput
    DescribeDBClusterBacktracksInput: DescribeDBClusterBacktracksInput
    DescribeDBClusterBacktracksOutput: DescribeDBClusterBacktracksOutput
    DescribeDBClusterEndpointsInput: DescribeDBClusterEndpointsInput
    DescribeDBClusterEndpointsOutput: DescribeDBClusterEndpointsOutput
    DescribeDBClusterParameterGroupsInput: DescribeDBClusterParameterGroupsInput
    DescribeDBClusterParameterGroupsOutput: DescribeDBClusterParameterGroupsOutput
    DescribeDBClusterParametersInput: DescribeDBClusterParametersInput
    DescribeDBClusterParametersOutput: DescribeDBClusterParametersOutput
    DescribeDBClustersInput: DescribeDBClustersInput
    DescribeDBClustersOutput: DescribeDBClustersOutput
    DescribeDBClusterSnapshotAttributesInput: DescribeDBClusterSnapshotAttributesInput
    DescribeDBClusterSnapshotAttributesOutput: DescribeDBClusterSnapshotAttributesOutput
    DescribeDBClusterSnapshotsInput: DescribeDBClusterSnapshotsInput
    DescribeDBClusterSnapshotsOutput: DescribeDBClusterSnapshotsOutput
    DescribeDBEngineVersionsInput: DescribeDBEngineVersionsInput
    DescribeDBEngineVersionsOutput: DescribeDBEngineVersionsOutput
    DescribeDBInstanceAutomatedBackupsInput: DescribeDBInstanceAutomatedBackupsInput
    DescribeDBInstanceAutomatedBackupsOutput: DescribeDBInstanceAutomatedBackupsOutput
    DescribeDBInstancesInput: DescribeDBInstancesInput
    DescribeDBInstancesOutput: DescribeDBInstancesOutput
    DescribeDBLogFilesInput: DescribeDBLogFilesInput
    DescribeDBLogFilesOutput: DescribeDBLogFilesOutput
    DescribeDBMajorEngineVersionsInput: DescribeDBMajorEngineVersionsInput
    DescribeDBMajorEngineVersionsOutput: DescribeDBMajorEngineVersionsOutput
    DescribeDBParameterGroupsInput: DescribeDBParameterGroupsInput
    DescribeDBParameterGroupsOutput: DescribeDBParameterGroupsOutput
    DescribeDBParametersInput: DescribeDBParametersInput
    DescribeDBParametersOutput: DescribeDBParametersOutput
    DescribeDBProxiesInput: DescribeDBProxiesInput
    DescribeDBProxiesOutput: DescribeDBProxiesOutput
    DescribeDBProxyEndpointsInput: DescribeDBProxyEndpointsInput
    DescribeDBProxyEndpointsOutput: DescribeDBProxyEndpointsOutput
    DescribeDBProxyTargetGroupsInput: DescribeDBProxyTargetGroupsInput
    DescribeDBProxyTargetGroupsOutput: DescribeDBProxyTargetGroupsOutput
    DescribeDBProxyTargetsInput: DescribeDBProxyTargetsInput
    DescribeDBProxyTargetsOutput: DescribeDBProxyTargetsOutput
    DescribeDBRecommendationsInput: DescribeDBRecommendationsInput
    DescribeDBRecommendationsOutput: DescribeDBRecommendationsOutput
    DescribeDBSecurityGroupsInput: DescribeDBSecurityGroupsInput
    DescribeDBSecurityGroupsOutput: DescribeDBSecurityGroupsOutput
    DescribeDBShardGroupsInput: DescribeDBShardGroupsInput
    DescribeDBShardGroupsOutput: DescribeDBShardGroupsOutput
    DescribeDBSnapshotAttributesInput: DescribeDBSnapshotAttributesInput
    DescribeDBSnapshotAttributesOutput: DescribeDBSnapshotAttributesOutput
    DescribeDBSnapshotsInput: DescribeDBSnapshotsInput
    DescribeDBSnapshotsOutput: DescribeDBSnapshotsOutput
    DescribeDBSnapshotTenantDatabasesInput: DescribeDBSnapshotTenantDatabasesInput
    DescribeDBSnapshotTenantDatabasesOutput: DescribeDBSnapshotTenantDatabasesOutput
    DescribeDBSubnetGroupsInput: DescribeDBSubnetGroupsInput
    DescribeDBSubnetGroupsOutput: DescribeDBSubnetGroupsOutput
    DescribeEngineDefaultClusterParametersInput: DescribeEngineDefaultClusterParametersInput
    DescribeEngineDefaultClusterParametersOutput: DescribeEngineDefaultClusterParametersOutput
    DescribeEngineDefaultParametersInput: DescribeEngineDefaultParametersInput
    DescribeEngineDefaultParametersOutput: DescribeEngineDefaultParametersOutput
    DescribeEventCategoriesInput: DescribeEventCategoriesInput
    DescribeEventCategoriesOutput: DescribeEventCategoriesOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeEventSubscriptionsInput: DescribeEventSubscriptionsInput
    DescribeEventSubscriptionsOutput: DescribeEventSubscriptionsOutput
    DescribeExportTasksInput: DescribeExportTasksInput
    DescribeExportTasksOutput: DescribeExportTasksOutput
    DescribeGlobalClustersInput: DescribeGlobalClustersInput
    DescribeGlobalClustersOutput: DescribeGlobalClustersOutput
    DescribeIntegrationsInput: DescribeIntegrationsInput
    DescribeIntegrationsOutput: DescribeIntegrationsOutput
    DescribeOptionGroupOptionsInput: DescribeOptionGroupOptionsInput
    DescribeOptionGroupOptionsOutput: DescribeOptionGroupOptionsOutput
    DescribeOptionGroupsInput: DescribeOptionGroupsInput
    DescribeOptionGroupsOutput: DescribeOptionGroupsOutput
    DescribeOrderableDBInstanceOptionsInput: DescribeOrderableDBInstanceOptionsInput
    DescribeOrderableDBInstanceOptionsOutput: DescribeOrderableDBInstanceOptionsOutput
    DescribePendingMaintenanceActionsInput: DescribePendingMaintenanceActionsInput
    DescribePendingMaintenanceActionsOutput: DescribePendingMaintenanceActionsOutput
    DescribeReservedDBInstancesInput: DescribeReservedDBInstancesInput
    DescribeReservedDBInstancesOutput: DescribeReservedDBInstancesOutput
    DescribeReservedDBInstancesOfferingsInput: DescribeReservedDBInstancesOfferingsInput
    DescribeReservedDBInstancesOfferingsOutput: DescribeReservedDBInstancesOfferingsOutput
    DescribeServerlessV2PlatformVersionsInput: DescribeServerlessV2PlatformVersionsInput
    DescribeServerlessV2PlatformVersionsOutput: DescribeServerlessV2PlatformVersionsOutput
    DescribeSourceRegionsInput: DescribeSourceRegionsInput
    DescribeSourceRegionsOutput: DescribeSourceRegionsOutput
    DescribeTenantDatabasesInput: DescribeTenantDatabasesInput
    DescribeTenantDatabasesOutput: DescribeTenantDatabasesOutput
    DescribeValidDBInstanceModificationsInput: DescribeValidDBInstanceModificationsInput
    DescribeValidDBInstanceModificationsOutput: DescribeValidDBInstanceModificationsOutput
    DisableHttpEndpointInput: DisableHttpEndpointInput
    DisableHttpEndpointOutput: DisableHttpEndpointOutput
    DownloadDBLogFilePortionInput: DownloadDBLogFilePortionInput
    DownloadDBLogFilePortionOutput: DownloadDBLogFilePortionOutput
    EnableHttpEndpointInput: EnableHttpEndpointInput
    EnableHttpEndpointOutput: EnableHttpEndpointOutput
    FailoverDBClusterInput: FailoverDBClusterInput
    FailoverDBClusterOutput: FailoverDBClusterOutput
    FailoverGlobalClusterInput: FailoverGlobalClusterInput
    FailoverGlobalClusterOutput: FailoverGlobalClusterOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ModifyActivityStreamInput: ModifyActivityStreamInput
    ModifyActivityStreamOutput: ModifyActivityStreamOutput
    ModifyCertificatesInput: ModifyCertificatesInput
    ModifyCertificatesOutput: ModifyCertificatesOutput
    ModifyCurrentDBClusterCapacityInput: ModifyCurrentDBClusterCapacityInput
    ModifyCurrentDBClusterCapacityOutput: ModifyCurrentDBClusterCapacityOutput
    ModifyCustomDBEngineVersionInput: ModifyCustomDBEngineVersionInput
    ModifyCustomDBEngineVersionOutput: ModifyCustomDBEngineVersionOutput
    ModifyDBClusterInput: ModifyDBClusterInput
    ModifyDBClusterOutput: ModifyDBClusterOutput
    ModifyDBClusterEndpointInput: ModifyDBClusterEndpointInput
    ModifyDBClusterEndpointOutput: ModifyDBClusterEndpointOutput
    ModifyDBClusterParameterGroupInput: ModifyDBClusterParameterGroupInput
    ModifyDBClusterParameterGroupOutput: ModifyDBClusterParameterGroupOutput
    ModifyDBClusterSnapshotAttributeInput: ModifyDBClusterSnapshotAttributeInput
    ModifyDBClusterSnapshotAttributeOutput: ModifyDBClusterSnapshotAttributeOutput
    ModifyDBInstanceInput: ModifyDBInstanceInput
    ModifyDBInstanceOutput: ModifyDBInstanceOutput
    ModifyDBParameterGroupInput: ModifyDBParameterGroupInput
    ModifyDBParameterGroupOutput: ModifyDBParameterGroupOutput
    ModifyDBProxyInput: ModifyDBProxyInput
    ModifyDBProxyOutput: ModifyDBProxyOutput
    ModifyDBProxyEndpointInput: ModifyDBProxyEndpointInput
    ModifyDBProxyEndpointOutput: ModifyDBProxyEndpointOutput
    ModifyDBProxyTargetGroupInput: ModifyDBProxyTargetGroupInput
    ModifyDBProxyTargetGroupOutput: ModifyDBProxyTargetGroupOutput
    ModifyDBRecommendationInput: ModifyDBRecommendationInput
    ModifyDBRecommendationOutput: ModifyDBRecommendationOutput
    ModifyDBShardGroupInput: ModifyDBShardGroupInput
    ModifyDBShardGroupOutput: ModifyDBShardGroupOutput
    ModifyDBSnapshotInput: ModifyDBSnapshotInput
    ModifyDBSnapshotOutput: ModifyDBSnapshotOutput
    ModifyDBSnapshotAttributeInput: ModifyDBSnapshotAttributeInput
    ModifyDBSnapshotAttributeOutput: ModifyDBSnapshotAttributeOutput
    ModifyDBSubnetGroupInput: ModifyDBSubnetGroupInput
    ModifyDBSubnetGroupOutput: ModifyDBSubnetGroupOutput
    ModifyEventSubscriptionInput: ModifyEventSubscriptionInput
    ModifyEventSubscriptionOutput: ModifyEventSubscriptionOutput
    ModifyGlobalClusterInput: ModifyGlobalClusterInput
    ModifyGlobalClusterOutput: ModifyGlobalClusterOutput
    ModifyIntegrationInput: ModifyIntegrationInput
    ModifyIntegrationOutput: ModifyIntegrationOutput
    ModifyOptionGroupInput: ModifyOptionGroupInput
    ModifyOptionGroupOutput: ModifyOptionGroupOutput
    ModifyTenantDatabaseInput: ModifyTenantDatabaseInput
    ModifyTenantDatabaseOutput: ModifyTenantDatabaseOutput
    PromoteReadReplicaInput: PromoteReadReplicaInput
    PromoteReadReplicaOutput: PromoteReadReplicaOutput
    PromoteReadReplicaDBClusterInput: PromoteReadReplicaDBClusterInput
    PromoteReadReplicaDBClusterOutput: PromoteReadReplicaDBClusterOutput
    PurchaseReservedDBInstancesOfferingInput: PurchaseReservedDBInstancesOfferingInput
    PurchaseReservedDBInstancesOfferingOutput: PurchaseReservedDBInstancesOfferingOutput
    RebootDBClusterInput: RebootDBClusterInput
    RebootDBClusterOutput: RebootDBClusterOutput
    RebootDBInstanceInput: RebootDBInstanceInput
    RebootDBInstanceOutput: RebootDBInstanceOutput
    RebootDBShardGroupInput: RebootDBShardGroupInput
    RebootDBShardGroupOutput: RebootDBShardGroupOutput
    RegisterDBProxyTargetsInput: RegisterDBProxyTargetsInput
    RegisterDBProxyTargetsOutput: RegisterDBProxyTargetsOutput
    RemoveFromGlobalClusterInput: RemoveFromGlobalClusterInput
    RemoveFromGlobalClusterOutput: RemoveFromGlobalClusterOutput
    RemoveRoleFromDBClusterInput: RemoveRoleFromDBClusterInput
    RemoveRoleFromDBClusterOutput: RemoveRoleFromDBClusterOutput
    RemoveRoleFromDBInstanceInput: RemoveRoleFromDBInstanceInput
    RemoveRoleFromDBInstanceOutput: RemoveRoleFromDBInstanceOutput
    RemoveSourceIdentifierFromSubscriptionInput: RemoveSourceIdentifierFromSubscriptionInput
    RemoveSourceIdentifierFromSubscriptionOutput: RemoveSourceIdentifierFromSubscriptionOutput
    RemoveTagsFromResourceInput: RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput: RemoveTagsFromResourceOutput
    ResetDBClusterParameterGroupInput: ResetDBClusterParameterGroupInput
    ResetDBClusterParameterGroupOutput: ResetDBClusterParameterGroupOutput
    ResetDBParameterGroupInput: ResetDBParameterGroupInput
    ResetDBParameterGroupOutput: ResetDBParameterGroupOutput
    RestoreDBClusterFromS3Input: RestoreDBClusterFromS3Input
    RestoreDBClusterFromS3Output: RestoreDBClusterFromS3Output
    RestoreDBClusterFromSnapshotInput: RestoreDBClusterFromSnapshotInput
    RestoreDBClusterFromSnapshotOutput: RestoreDBClusterFromSnapshotOutput
    RestoreDBClusterToPointInTimeInput: RestoreDBClusterToPointInTimeInput
    RestoreDBClusterToPointInTimeOutput: RestoreDBClusterToPointInTimeOutput
    RestoreDBInstanceFromDBSnapshotInput: RestoreDBInstanceFromDBSnapshotInput
    RestoreDBInstanceFromDBSnapshotOutput: RestoreDBInstanceFromDBSnapshotOutput
    RestoreDBInstanceFromS3Input: RestoreDBInstanceFromS3Input
    RestoreDBInstanceFromS3Output: RestoreDBInstanceFromS3Output
    RestoreDBInstanceToPointInTimeInput: RestoreDBInstanceToPointInTimeInput
    RestoreDBInstanceToPointInTimeOutput: RestoreDBInstanceToPointInTimeOutput
    RevokeDBSecurityGroupIngressInput: RevokeDBSecurityGroupIngressInput
    RevokeDBSecurityGroupIngressOutput: RevokeDBSecurityGroupIngressOutput
    StartActivityStreamInput: StartActivityStreamInput
    StartActivityStreamOutput: StartActivityStreamOutput
    StartDBClusterInput: StartDBClusterInput
    StartDBClusterOutput: StartDBClusterOutput
    StartDBInstanceInput: StartDBInstanceInput
    StartDBInstanceOutput: StartDBInstanceOutput
    StartDBInstanceAutomatedBackupsReplicationInput: StartDBInstanceAutomatedBackupsReplicationInput
    StartDBInstanceAutomatedBackupsReplicationOutput: StartDBInstanceAutomatedBackupsReplicationOutput
    StartExportTaskInput: StartExportTaskInput
    StartExportTaskOutput: StartExportTaskOutput
    StopActivityStreamInput: StopActivityStreamInput
    StopActivityStreamOutput: StopActivityStreamOutput
    StopDBClusterInput: StopDBClusterInput
    StopDBClusterOutput: StopDBClusterOutput
    StopDBInstanceInput: StopDBInstanceInput
    StopDBInstanceOutput: StopDBInstanceOutput
    StopDBInstanceAutomatedBackupsReplicationInput: StopDBInstanceAutomatedBackupsReplicationInput
    StopDBInstanceAutomatedBackupsReplicationOutput: StopDBInstanceAutomatedBackupsReplicationOutput
    SwitchoverBlueGreenDeploymentInput: SwitchoverBlueGreenDeploymentInput
    SwitchoverBlueGreenDeploymentOutput: SwitchoverBlueGreenDeploymentOutput
    SwitchoverGlobalClusterInput: SwitchoverGlobalClusterInput
    SwitchoverGlobalClusterOutput: SwitchoverGlobalClusterOutput
    SwitchoverReadReplicaInput: SwitchoverReadReplicaInput
    SwitchoverReadReplicaOutput: SwitchoverReadReplicaOutput
end

return M
