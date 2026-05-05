local record AcceptReservedNodeExchangeInput
    ReservedNodeId: string
    TargetReservedNodeOfferingId: string
end

local record AcceptReservedNodeExchangeOutput
    ExchangedReservedNode: ReservedNode
end

local record AddPartnerInput
    AccountId: string
    ClusterIdentifier: string
    DatabaseName: string
    PartnerName: string
end

local record AddPartnerOutput
    DatabaseName: string
    PartnerName: string
end

local record AssociateDataShareConsumerInput
    DataShareArn: string
    AssociateEntireAccount: boolean
    ConsumerArn: string
    ConsumerRegion: string
    AllowWrites: boolean
end

local record AssociateDataShareConsumerOutput
    DataShareArn: string
    ProducerArn: string
    AllowPubliclyAccessibleConsumers: boolean
    DataShareAssociations: {DataShareAssociation}
    ManagedBy: string
    DataShareType: string
end

local record AuthorizeClusterSecurityGroupIngressInput
    ClusterSecurityGroupName: string
    CIDRIP: string
    EC2SecurityGroupName: string
    EC2SecurityGroupOwnerId: string
end

local record AuthorizeClusterSecurityGroupIngressOutput
    ClusterSecurityGroup: ClusterSecurityGroup
end

local record AuthorizeDataShareInput
    DataShareArn: string
    ConsumerIdentifier: string
    AllowWrites: boolean
end

local record AuthorizeDataShareOutput
    DataShareArn: string
    ProducerArn: string
    AllowPubliclyAccessibleConsumers: boolean
    DataShareAssociations: {DataShareAssociation}
    ManagedBy: string
    DataShareType: string
end

local record AuthorizeEndpointAccessInput
    ClusterIdentifier: string
    Account: string
    VpcIds: {string}
end

local record AuthorizeEndpointAccessOutput
    Grantor: string
    Grantee: string
    ClusterIdentifier: string
    AuthorizeTime: number
    ClusterStatus: string
    Status: string
    AllowedAllVPCs: boolean
    AllowedVPCs: {string}
    EndpointCount: number
end

local record AuthorizeSnapshotAccessInput
    SnapshotIdentifier: string
    SnapshotArn: string
    SnapshotClusterIdentifier: string
    AccountWithRestoreAccess: string
end

local record AuthorizeSnapshotAccessOutput
    Snapshot: Snapshot
end

local record BatchDeleteClusterSnapshotsInput
    Identifiers: {DeleteClusterSnapshotMessage}
end

local record BatchDeleteClusterSnapshotsOutput
    Resources: {string}
    Errors: {SnapshotErrorMessage}
end

local record BatchModifyClusterSnapshotsInput
    SnapshotIdentifierList: {string}
    ManualSnapshotRetentionPeriod: number
    Force: boolean
end

local record BatchModifyClusterSnapshotsOutput
    Resources: {string}
    Errors: {SnapshotErrorMessage}
end

local record CancelResizeInput
    ClusterIdentifier: string
end

local record CancelResizeOutput
    TargetNodeType: string
    TargetNumberOfNodes: number
    TargetClusterType: string
    Status: string
    ImportTablesCompleted: {string}
    ImportTablesInProgress: {string}
    ImportTablesNotStarted: {string}
    AvgResizeRateInMegaBytesPerSecond: number
    TotalResizeDataInMegaBytes: number
    ProgressInMegaBytes: number
    ElapsedTimeInSeconds: number
    EstimatedTimeToCompletionInSeconds: number
    ResizeType: string
    Message: string
    TargetEncryptionType: string
    DataTransferProgressPercent: number
end

local record CopyClusterSnapshotInput
    SourceSnapshotIdentifier: string
    SourceSnapshotClusterIdentifier: string
    TargetSnapshotIdentifier: string
    ManualSnapshotRetentionPeriod: number
end

local record CopyClusterSnapshotOutput
    Snapshot: Snapshot
end

local record CreateAuthenticationProfileInput
    AuthenticationProfileName: string
    AuthenticationProfileContent: string
end

local record CreateAuthenticationProfileOutput
    AuthenticationProfileName: string
    AuthenticationProfileContent: string
end

local record CreateClusterInput
    DBName: string
    ClusterIdentifier: string
    ClusterType: string
    NodeType: string
    MasterUsername: string
    MasterUserPassword: string
    ClusterSecurityGroups: {string}
    VpcSecurityGroupIds: {string}
    ClusterSubnetGroupName: string
    AvailabilityZone: string
    PreferredMaintenanceWindow: string
    ClusterParameterGroupName: string
    AutomatedSnapshotRetentionPeriod: number
    ManualSnapshotRetentionPeriod: number
    Port: number
    ClusterVersion: string
    AllowVersionUpgrade: boolean
    NumberOfNodes: number
    PubliclyAccessible: boolean
    Encrypted: boolean
    HsmClientCertificateIdentifier: string
    HsmConfigurationIdentifier: string
    ElasticIp: string
    Tags: {Tag}
    KmsKeyId: string
    EnhancedVpcRouting: boolean
    AdditionalInfo: string
    IamRoles: {string}
    MaintenanceTrackName: string
    SnapshotScheduleIdentifier: string
    AvailabilityZoneRelocation: boolean
    AquaConfigurationStatus: string
    DefaultIamRoleArn: string
    LoadSampleData: string
    ManageMasterPassword: boolean
    MasterPasswordSecretKmsKeyId: string
    IpAddressType: string
    MultiAZ: boolean
    RedshiftIdcApplicationArn: string
    CatalogName: string
    ExtraComputeForAutomaticOptimization: boolean
end

local record CreateClusterOutput
    Cluster: Cluster
end

local record CreateClusterParameterGroupInput
    ParameterGroupName: string
    ParameterGroupFamily: string
    Description: string
    Tags: {Tag}
end

local record CreateClusterParameterGroupOutput
    ClusterParameterGroup: ClusterParameterGroup
end

local record CreateClusterSecurityGroupInput
    ClusterSecurityGroupName: string
    Description: string
    Tags: {Tag}
end

local record CreateClusterSecurityGroupOutput
    ClusterSecurityGroup: ClusterSecurityGroup
end

local record CreateClusterSnapshotInput
    SnapshotIdentifier: string
    ClusterIdentifier: string
    ManualSnapshotRetentionPeriod: number
    Tags: {Tag}
end

local record CreateClusterSnapshotOutput
    Snapshot: Snapshot
end

local record CreateClusterSubnetGroupInput
    ClusterSubnetGroupName: string
    Description: string
    SubnetIds: {string}
    Tags: {Tag}
end

local record CreateClusterSubnetGroupOutput
    ClusterSubnetGroup: ClusterSubnetGroup
end

local record CreateCustomDomainAssociationInput
    CustomDomainName: string
    CustomDomainCertificateArn: string
    ClusterIdentifier: string
end

local record CreateCustomDomainAssociationOutput
    CustomDomainName: string
    CustomDomainCertificateArn: string
    ClusterIdentifier: string
    CustomDomainCertExpiryTime: string
end

local record CreateEndpointAccessInput
    ClusterIdentifier: string
    ResourceOwner: string
    EndpointName: string
    SubnetGroupName: string
    VpcSecurityGroupIds: {string}
end

local record CreateEndpointAccessOutput
    ClusterIdentifier: string
    ResourceOwner: string
    SubnetGroupName: string
    EndpointStatus: string
    EndpointName: string
    EndpointCreateTime: number
    Port: number
    Address: string
    VpcSecurityGroups: {VpcSecurityGroupMembership}
    VpcEndpoint: VpcEndpoint
end

local record CreateEventSubscriptionInput
    SubscriptionName: string
    SnsTopicArn: string
    SourceType: string
    SourceIds: {string}
    EventCategories: {string}
    Severity: string
    Enabled: boolean
    Tags: {Tag}
end

local record CreateEventSubscriptionOutput
    EventSubscription: EventSubscription
end

local record CreateHsmClientCertificateInput
    HsmClientCertificateIdentifier: string
    Tags: {Tag}
end

local record CreateHsmClientCertificateOutput
    HsmClientCertificate: HsmClientCertificate
end

local record CreateHsmConfigurationInput
    HsmConfigurationIdentifier: string
    Description: string
    HsmIpAddress: string
    HsmPartitionName: string
    HsmPartitionPassword: string
    HsmServerPublicCertificate: string
    Tags: {Tag}
end

local record CreateHsmConfigurationOutput
    HsmConfiguration: HsmConfiguration
end

local record CreateIntegrationInput
    SourceArn: string
    TargetArn: string
    IntegrationName: string
    KMSKeyId: string
    TagList: {Tag}
    AdditionalEncryptionContext: {string : string}
    Description: string
end

local record CreateIntegrationOutput
    IntegrationArn: string
    IntegrationName: string
    SourceArn: string
    TargetArn: string
    Status: string
    Errors: {IntegrationError}
    CreateTime: number
    Description: string
    KMSKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
end

local record CreateRedshiftIdcApplicationInput
    IdcInstanceArn: string
    RedshiftIdcApplicationName: string
    IdentityNamespace: string
    IdcDisplayName: string
    IamRoleArn: string
    AuthorizedTokenIssuerList: {AuthorizedTokenIssuer}
    ServiceIntegrations: {ServiceIntegrationsUnion}
    ApplicationType: string
    Tags: {Tag}
    SsoTagKeys: {string}
end

local record CreateRedshiftIdcApplicationOutput
    RedshiftIdcApplication: RedshiftIdcApplication
end

local record CreateScheduledActionInput
    ScheduledActionName: string
    TargetAction: ScheduledActionType
    Schedule: string
    IamRole: string
    ScheduledActionDescription: string
    StartTime: number
    EndTime: number
    Enable: boolean
end

local record CreateScheduledActionOutput
    ScheduledActionName: string
    TargetAction: ScheduledActionType
    Schedule: string
    IamRole: string
    ScheduledActionDescription: string
    State: string
    NextInvocations: {number}
    StartTime: number
    EndTime: number
end

local record CreateSnapshotCopyGrantInput
    SnapshotCopyGrantName: string
    KmsKeyId: string
    Tags: {Tag}
end

local record CreateSnapshotCopyGrantOutput
    SnapshotCopyGrant: SnapshotCopyGrant
end

local record CreateSnapshotScheduleInput
    ScheduleDefinitions: {string}
    ScheduleIdentifier: string
    ScheduleDescription: string
    Tags: {Tag}
    DryRun: boolean
    NextInvocations: number
end

local record CreateSnapshotScheduleOutput
    ScheduleDefinitions: {string}
    ScheduleIdentifier: string
    ScheduleDescription: string
    Tags: {Tag}
    NextInvocations: {number}
    AssociatedClusterCount: number
    AssociatedClusters: {ClusterAssociatedToSchedule}
end

local record CreateTagsInput
    ResourceName: string
    Tags: {Tag}
end

local record CreateTagsOutput
end

local record CreateUsageLimitInput
    ClusterIdentifier: string
    FeatureType: string
    LimitType: string
    Amount: number
    Period: string
    BreachAction: string
    Tags: {Tag}
end

local record CreateUsageLimitOutput
    UsageLimitId: string
    ClusterIdentifier: string
    FeatureType: string
    LimitType: string
    Amount: number
    Period: string
    BreachAction: string
    Tags: {Tag}
end

local record DeauthorizeDataShareInput
    DataShareArn: string
    ConsumerIdentifier: string
end

local record DeauthorizeDataShareOutput
    DataShareArn: string
    ProducerArn: string
    AllowPubliclyAccessibleConsumers: boolean
    DataShareAssociations: {DataShareAssociation}
    ManagedBy: string
    DataShareType: string
end

local record DeleteAuthenticationProfileInput
    AuthenticationProfileName: string
end

local record DeleteAuthenticationProfileOutput
    AuthenticationProfileName: string
end

local record DeleteClusterInput
    ClusterIdentifier: string
    SkipFinalClusterSnapshot: boolean
    FinalClusterSnapshotIdentifier: string
    FinalClusterSnapshotRetentionPeriod: number
end

local record DeleteClusterOutput
    Cluster: Cluster
end

local record DeleteClusterParameterGroupInput
    ParameterGroupName: string
end

local record DeleteClusterParameterGroupOutput
end

local record DeleteClusterSecurityGroupInput
    ClusterSecurityGroupName: string
end

local record DeleteClusterSecurityGroupOutput
end

local record DeleteClusterSnapshotInput
    SnapshotIdentifier: string
    SnapshotClusterIdentifier: string
end

local record DeleteClusterSnapshotOutput
    Snapshot: Snapshot
end

local record DeleteClusterSubnetGroupInput
    ClusterSubnetGroupName: string
end

local record DeleteClusterSubnetGroupOutput
end

local record DeleteCustomDomainAssociationInput
    ClusterIdentifier: string
    CustomDomainName: string
end

local record DeleteCustomDomainAssociationOutput
end

local record DeleteEndpointAccessInput
    EndpointName: string
end

local record DeleteEndpointAccessOutput
    ClusterIdentifier: string
    ResourceOwner: string
    SubnetGroupName: string
    EndpointStatus: string
    EndpointName: string
    EndpointCreateTime: number
    Port: number
    Address: string
    VpcSecurityGroups: {VpcSecurityGroupMembership}
    VpcEndpoint: VpcEndpoint
end

local record DeleteEventSubscriptionInput
    SubscriptionName: string
end

local record DeleteEventSubscriptionOutput
end

local record DeleteHsmClientCertificateInput
    HsmClientCertificateIdentifier: string
end

local record DeleteHsmClientCertificateOutput
end

local record DeleteHsmConfigurationInput
    HsmConfigurationIdentifier: string
end

local record DeleteHsmConfigurationOutput
end

local record DeleteIntegrationInput
    IntegrationArn: string
end

local record DeleteIntegrationOutput
    IntegrationArn: string
    IntegrationName: string
    SourceArn: string
    TargetArn: string
    Status: string
    Errors: {IntegrationError}
    CreateTime: number
    Description: string
    KMSKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
end

local record DeletePartnerInput
    AccountId: string
    ClusterIdentifier: string
    DatabaseName: string
    PartnerName: string
end

local record DeletePartnerOutput
    DatabaseName: string
    PartnerName: string
end

local record DeleteRedshiftIdcApplicationInput
    RedshiftIdcApplicationArn: string
end

local record DeleteRedshiftIdcApplicationOutput
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteScheduledActionInput
    ScheduledActionName: string
end

local record DeleteScheduledActionOutput
end

local record DeleteSnapshotCopyGrantInput
    SnapshotCopyGrantName: string
end

local record DeleteSnapshotCopyGrantOutput
end

local record DeleteSnapshotScheduleInput
    ScheduleIdentifier: string
end

local record DeleteSnapshotScheduleOutput
end

local record DeleteTagsInput
    ResourceName: string
    TagKeys: {string}
end

local record DeleteTagsOutput
end

local record DeleteUsageLimitInput
    UsageLimitId: string
end

local record DeleteUsageLimitOutput
end

local record DeregisterNamespaceInput
    NamespaceIdentifier: NamespaceIdentifierUnion
    ConsumerIdentifiers: {string}
end

local record DeregisterNamespaceOutput
    Status: string
end

local record DescribeAccountAttributesInput
    AttributeNames: {string}
end

local record DescribeAccountAttributesOutput
    AccountAttributes: {AccountAttribute}
end

local record DescribeAuthenticationProfilesInput
    AuthenticationProfileName: string
end

local record DescribeAuthenticationProfilesOutput
    AuthenticationProfiles: {AuthenticationProfile}
end

local record DescribeClusterDbRevisionsInput
    ClusterIdentifier: string
    MaxRecords: number
    Marker: string
end

local record DescribeClusterDbRevisionsOutput
    Marker: string
    ClusterDbRevisions: {ClusterDbRevision}
end

local record DescribeClusterParameterGroupsInput
    ParameterGroupName: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeClusterParameterGroupsOutput
    Marker: string
    ParameterGroups: {ClusterParameterGroup}
end

local record DescribeClusterParametersInput
    ParameterGroupName: string
    Source: string
    MaxRecords: number
    Marker: string
end

local record DescribeClusterParametersOutput
    Parameters: {Parameter}
    Marker: string
end

local record DescribeClustersInput
    ClusterIdentifier: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeClustersOutput
    Marker: string
    Clusters: {Cluster}
end

local record DescribeClusterSecurityGroupsInput
    ClusterSecurityGroupName: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeClusterSecurityGroupsOutput
    Marker: string
    ClusterSecurityGroups: {ClusterSecurityGroup}
end

local record DescribeClusterSnapshotsInput
    ClusterIdentifier: string
    SnapshotIdentifier: string
    SnapshotArn: string
    SnapshotType: string
    StartTime: number
    EndTime: number
    MaxRecords: number
    Marker: string
    OwnerAccount: string
    TagKeys: {string}
    TagValues: {string}
    ClusterExists: boolean
    SortingEntities: {SnapshotSortingEntity}
end

local record DescribeClusterSnapshotsOutput
    Marker: string
    Snapshots: {Snapshot}
end

local record DescribeClusterSubnetGroupsInput
    ClusterSubnetGroupName: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeClusterSubnetGroupsOutput
    Marker: string
    ClusterSubnetGroups: {ClusterSubnetGroup}
end

local record DescribeClusterTracksInput
    MaintenanceTrackName: string
    MaxRecords: number
    Marker: string
end

local record DescribeClusterTracksOutput
    MaintenanceTracks: {MaintenanceTrack}
    Marker: string
end

local record DescribeClusterVersionsInput
    ClusterVersion: string
    ClusterParameterGroupFamily: string
    MaxRecords: number
    Marker: string
end

local record DescribeClusterVersionsOutput
    Marker: string
    ClusterVersions: {ClusterVersion}
end

local record DescribeCustomDomainAssociationsInput
    CustomDomainName: string
    CustomDomainCertificateArn: string
    MaxRecords: number
    Marker: string
end

local record DescribeCustomDomainAssociationsOutput
    Marker: string
    Associations: {Association}
end

local record DescribeDataSharesInput
    DataShareArn: string
    MaxRecords: number
    Marker: string
end

local record DescribeDataSharesOutput
    DataShares: {DataShare}
    Marker: string
end

local record DescribeDataSharesForConsumerInput
    ConsumerArn: string
    Status: string
    MaxRecords: number
    Marker: string
end

local record DescribeDataSharesForConsumerOutput
    DataShares: {DataShare}
    Marker: string
end

local record DescribeDataSharesForProducerInput
    ProducerArn: string
    Status: string
    MaxRecords: number
    Marker: string
end

local record DescribeDataSharesForProducerOutput
    DataShares: {DataShare}
    Marker: string
end

local record DescribeDefaultClusterParametersInput
    ParameterGroupFamily: string
    MaxRecords: number
    Marker: string
end

local record DescribeDefaultClusterParametersOutput
    DefaultClusterParameters: DefaultClusterParameters
end

local record DescribeEndpointAccessInput
    ClusterIdentifier: string
    ResourceOwner: string
    EndpointName: string
    VpcId: string
    MaxRecords: number
    Marker: string
end

local record DescribeEndpointAccessOutput
    EndpointAccessList: {EndpointAccess}
    Marker: string
end

local record DescribeEndpointAuthorizationInput
    ClusterIdentifier: string
    Account: string
    Grantee: boolean
    MaxRecords: number
    Marker: string
end

local record DescribeEndpointAuthorizationOutput
    EndpointAuthorizationList: {EndpointAuthorization}
    Marker: string
end

local record DescribeEventCategoriesInput
    SourceType: string
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
    MaxRecords: number
    Marker: string
end

local record DescribeEventsOutput
    Marker: string
    Events: {Event}
end

local record DescribeEventSubscriptionsInput
    SubscriptionName: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeEventSubscriptionsOutput
    Marker: string
    EventSubscriptionsList: {EventSubscription}
end

local record DescribeHsmClientCertificatesInput
    HsmClientCertificateIdentifier: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeHsmClientCertificatesOutput
    Marker: string
    HsmClientCertificates: {HsmClientCertificate}
end

local record DescribeHsmConfigurationsInput
    HsmConfigurationIdentifier: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeHsmConfigurationsOutput
    Marker: string
    HsmConfigurations: {HsmConfiguration}
end

local record DescribeInboundIntegrationsInput
    IntegrationArn: string
    TargetArn: string
    MaxRecords: number
    Marker: string
end

local record DescribeInboundIntegrationsOutput
    Marker: string
    InboundIntegrations: {InboundIntegration}
end

local record DescribeIntegrationsInput
    IntegrationArn: string
    MaxRecords: number
    Marker: string
    Filters: {DescribeIntegrationsFilter}
end

local record DescribeIntegrationsOutput
    Marker: string
    Integrations: {Integration}
end

local record DescribeLoggingStatusInput
    ClusterIdentifier: string
end

local record DescribeLoggingStatusOutput
    LoggingEnabled: boolean
    BucketName: string
    S3KeyPrefix: string
    LastSuccessfulDeliveryTime: number
    LastFailureTime: number
    LastFailureMessage: string
    LogDestinationType: string
    LogExports: {string}
end

local record DescribeNodeConfigurationOptionsInput
    ActionType: string
    ClusterIdentifier: string
    SnapshotIdentifier: string
    SnapshotArn: string
    OwnerAccount: string
    Filters: {NodeConfigurationOptionsFilter}
    Marker: string
    MaxRecords: number
end

local record DescribeNodeConfigurationOptionsOutput
    NodeConfigurationOptionList: {NodeConfigurationOption}
    Marker: string
end

local record DescribeOrderableClusterOptionsInput
    ClusterVersion: string
    NodeType: string
    MaxRecords: number
    Marker: string
end

local record DescribeOrderableClusterOptionsOutput
    OrderableClusterOptions: {OrderableClusterOption}
    Marker: string
end

local record DescribePartnersInput
    AccountId: string
    ClusterIdentifier: string
    DatabaseName: string
    PartnerName: string
end

local record DescribePartnersOutput
    PartnerIntegrationInfoList: {PartnerIntegrationInfo}
end

local record DescribeRedshiftIdcApplicationsInput
    RedshiftIdcApplicationArn: string
    MaxRecords: number
    Marker: string
end

local record DescribeRedshiftIdcApplicationsOutput
    RedshiftIdcApplications: {RedshiftIdcApplication}
    Marker: string
end

local record DescribeReservedNodeExchangeStatusInput
    ReservedNodeId: string
    ReservedNodeExchangeRequestId: string
    MaxRecords: number
    Marker: string
end

local record DescribeReservedNodeExchangeStatusOutput
    ReservedNodeExchangeStatusDetails: {ReservedNodeExchangeStatus}
    Marker: string
end

local record DescribeReservedNodeOfferingsInput
    ReservedNodeOfferingId: string
    MaxRecords: number
    Marker: string
end

local record DescribeReservedNodeOfferingsOutput
    Marker: string
    ReservedNodeOfferings: {ReservedNodeOffering}
end

local record DescribeReservedNodesInput
    ReservedNodeId: string
    MaxRecords: number
    Marker: string
end

local record DescribeReservedNodesOutput
    Marker: string
    ReservedNodes: {ReservedNode}
end

local record DescribeResizeInput
    ClusterIdentifier: string
end

local record DescribeResizeOutput
    TargetNodeType: string
    TargetNumberOfNodes: number
    TargetClusterType: string
    Status: string
    ImportTablesCompleted: {string}
    ImportTablesInProgress: {string}
    ImportTablesNotStarted: {string}
    AvgResizeRateInMegaBytesPerSecond: number
    TotalResizeDataInMegaBytes: number
    ProgressInMegaBytes: number
    ElapsedTimeInSeconds: number
    EstimatedTimeToCompletionInSeconds: number
    ResizeType: string
    Message: string
    TargetEncryptionType: string
    DataTransferProgressPercent: number
end

local record DescribeScheduledActionsInput
    ScheduledActionName: string
    TargetActionType: string
    StartTime: number
    EndTime: number
    Active: boolean
    Filters: {ScheduledActionFilter}
    Marker: string
    MaxRecords: number
end

local record DescribeScheduledActionsOutput
    Marker: string
    ScheduledActions: {ScheduledAction}
end

local record DescribeSnapshotCopyGrantsInput
    SnapshotCopyGrantName: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeSnapshotCopyGrantsOutput
    Marker: string
    SnapshotCopyGrants: {SnapshotCopyGrant}
end

local record DescribeSnapshotSchedulesInput
    ClusterIdentifier: string
    ScheduleIdentifier: string
    TagKeys: {string}
    TagValues: {string}
    Marker: string
    MaxRecords: number
end

local record DescribeSnapshotSchedulesOutput
    SnapshotSchedules: {SnapshotSchedule}
    Marker: string
end

local record DescribeStorageInput
end

local record DescribeStorageOutput
    TotalBackupSizeInMegaBytes: number
    TotalProvisionedStorageInMegaBytes: number
end

local record DescribeTableRestoreStatusInput
    ClusterIdentifier: string
    TableRestoreRequestId: string
    MaxRecords: number
    Marker: string
end

local record DescribeTableRestoreStatusOutput
    TableRestoreStatusDetails: {TableRestoreStatus}
    Marker: string
end

local record DescribeTagsInput
    ResourceName: string
    ResourceType: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeTagsOutput
    TaggedResources: {TaggedResource}
    Marker: string
end

local record DescribeUsageLimitsInput
    UsageLimitId: string
    ClusterIdentifier: string
    FeatureType: string
    MaxRecords: number
    Marker: string
    TagKeys: {string}
    TagValues: {string}
end

local record DescribeUsageLimitsOutput
    UsageLimits: {UsageLimit}
    Marker: string
end

local record DisableLoggingInput
    ClusterIdentifier: string
end

local record DisableLoggingOutput
    LoggingEnabled: boolean
    BucketName: string
    S3KeyPrefix: string
    LastSuccessfulDeliveryTime: number
    LastFailureTime: number
    LastFailureMessage: string
    LogDestinationType: string
    LogExports: {string}
end

local record DisableSnapshotCopyInput
    ClusterIdentifier: string
end

local record DisableSnapshotCopyOutput
    Cluster: Cluster
end

local record DisassociateDataShareConsumerInput
    DataShareArn: string
    DisassociateEntireAccount: boolean
    ConsumerArn: string
    ConsumerRegion: string
end

local record DisassociateDataShareConsumerOutput
    DataShareArn: string
    ProducerArn: string
    AllowPubliclyAccessibleConsumers: boolean
    DataShareAssociations: {DataShareAssociation}
    ManagedBy: string
    DataShareType: string
end

local record EnableLoggingInput
    ClusterIdentifier: string
    BucketName: string
    S3KeyPrefix: string
    LogDestinationType: string
    LogExports: {string}
end

local record EnableLoggingOutput
    LoggingEnabled: boolean
    BucketName: string
    S3KeyPrefix: string
    LastSuccessfulDeliveryTime: number
    LastFailureTime: number
    LastFailureMessage: string
    LogDestinationType: string
    LogExports: {string}
end

local record EnableSnapshotCopyInput
    ClusterIdentifier: string
    DestinationRegion: string
    RetentionPeriod: number
    SnapshotCopyGrantName: string
    ManualSnapshotRetentionPeriod: number
end

local record EnableSnapshotCopyOutput
    Cluster: Cluster
end

local record FailoverPrimaryComputeInput
    ClusterIdentifier: string
end

local record FailoverPrimaryComputeOutput
    Cluster: Cluster
end

local record GetClusterCredentialsInput
    DbUser: string
    DbName: string
    ClusterIdentifier: string
    DurationSeconds: number
    AutoCreate: boolean
    DbGroups: {string}
    CustomDomainName: string
end

local record GetClusterCredentialsOutput
    DbUser: string
    DbPassword: string
    Expiration: number
end

local record GetClusterCredentialsWithIAMInput
    DbName: string
    ClusterIdentifier: string
    DurationSeconds: number
    CustomDomainName: string
end

local record GetClusterCredentialsWithIAMOutput
    DbUser: string
    DbPassword: string
    Expiration: number
    NextRefreshTime: number
end

local record GetIdentityCenterAuthTokenInput
    ClusterIds: {string}
end

local record GetIdentityCenterAuthTokenOutput
    Token: string
    ExpirationTime: number
end

local record GetReservedNodeExchangeConfigurationOptionsInput
    ActionType: string
    ClusterIdentifier: string
    SnapshotIdentifier: string
    MaxRecords: number
    Marker: string
end

local record GetReservedNodeExchangeConfigurationOptionsOutput
    Marker: string
    ReservedNodeConfigurationOptionList: {ReservedNodeConfigurationOption}
end

local record GetReservedNodeExchangeOfferingsInput
    ReservedNodeId: string
    MaxRecords: number
    Marker: string
end

local record GetReservedNodeExchangeOfferingsOutput
    Marker: string
    ReservedNodeOfferings: {ReservedNodeOffering}
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    ResourcePolicy: ResourcePolicy
end

local record ListRecommendationsInput
    ClusterIdentifier: string
    NamespaceArn: string
    MaxRecords: number
    Marker: string
end

local record ListRecommendationsOutput
    Recommendations: {Recommendation}
    Marker: string
end

local record ModifyAquaConfigurationInput
    ClusterIdentifier: string
    AquaConfigurationStatus: string
end

local record ModifyAquaConfigurationOutput
    AquaConfiguration: AquaConfiguration
end

local record ModifyAuthenticationProfileInput
    AuthenticationProfileName: string
    AuthenticationProfileContent: string
end

local record ModifyAuthenticationProfileOutput
    AuthenticationProfileName: string
    AuthenticationProfileContent: string
end

local record ModifyClusterInput
    ClusterIdentifier: string
    ClusterType: string
    NodeType: string
    NumberOfNodes: number
    ClusterSecurityGroups: {string}
    VpcSecurityGroupIds: {string}
    MasterUserPassword: string
    ClusterParameterGroupName: string
    AutomatedSnapshotRetentionPeriod: number
    ManualSnapshotRetentionPeriod: number
    PreferredMaintenanceWindow: string
    ClusterVersion: string
    AllowVersionUpgrade: boolean
    HsmClientCertificateIdentifier: string
    HsmConfigurationIdentifier: string
    NewClusterIdentifier: string
    PubliclyAccessible: boolean
    ElasticIp: string
    EnhancedVpcRouting: boolean
    MaintenanceTrackName: string
    Encrypted: boolean
    KmsKeyId: string
    AvailabilityZoneRelocation: boolean
    AvailabilityZone: string
    Port: number
    ManageMasterPassword: boolean
    MasterPasswordSecretKmsKeyId: string
    IpAddressType: string
    MultiAZ: boolean
    ExtraComputeForAutomaticOptimization: boolean
end

local record ModifyClusterOutput
    Cluster: Cluster
end

local record ModifyClusterDbRevisionInput
    ClusterIdentifier: string
    RevisionTarget: string
end

local record ModifyClusterDbRevisionOutput
    Cluster: Cluster
end

local record ModifyClusterIamRolesInput
    ClusterIdentifier: string
    AddIamRoles: {string}
    RemoveIamRoles: {string}
    DefaultIamRoleArn: string
end

local record ModifyClusterIamRolesOutput
    Cluster: Cluster
end

local record ModifyClusterMaintenanceInput
    ClusterIdentifier: string
    DeferMaintenance: boolean
    DeferMaintenanceIdentifier: string
    DeferMaintenanceStartTime: number
    DeferMaintenanceEndTime: number
    DeferMaintenanceDuration: number
end

local record ModifyClusterMaintenanceOutput
    Cluster: Cluster
end

local record ModifyClusterParameterGroupInput
    ParameterGroupName: string
    Parameters: {Parameter}
end

local record ModifyClusterParameterGroupOutput
    ParameterGroupName: string
    ParameterGroupStatus: string
end

local record ModifyClusterSnapshotInput
    SnapshotIdentifier: string
    ManualSnapshotRetentionPeriod: number
    Force: boolean
end

local record ModifyClusterSnapshotOutput
    Snapshot: Snapshot
end

local record ModifyClusterSnapshotScheduleInput
    ClusterIdentifier: string
    ScheduleIdentifier: string
    DisassociateSchedule: boolean
end

local record ModifyClusterSnapshotScheduleOutput
end

local record ModifyClusterSubnetGroupInput
    ClusterSubnetGroupName: string
    Description: string
    SubnetIds: {string}
end

local record ModifyClusterSubnetGroupOutput
    ClusterSubnetGroup: ClusterSubnetGroup
end

local record ModifyCustomDomainAssociationInput
    CustomDomainName: string
    CustomDomainCertificateArn: string
    ClusterIdentifier: string
end

local record ModifyCustomDomainAssociationOutput
    CustomDomainName: string
    CustomDomainCertificateArn: string
    ClusterIdentifier: string
    CustomDomainCertExpiryTime: string
end

local record ModifyEndpointAccessInput
    EndpointName: string
    VpcSecurityGroupIds: {string}
end

local record ModifyEndpointAccessOutput
    ClusterIdentifier: string
    ResourceOwner: string
    SubnetGroupName: string
    EndpointStatus: string
    EndpointName: string
    EndpointCreateTime: number
    Port: number
    Address: string
    VpcSecurityGroups: {VpcSecurityGroupMembership}
    VpcEndpoint: VpcEndpoint
end

local record ModifyEventSubscriptionInput
    SubscriptionName: string
    SnsTopicArn: string
    SourceType: string
    SourceIds: {string}
    EventCategories: {string}
    Severity: string
    Enabled: boolean
end

local record ModifyEventSubscriptionOutput
    EventSubscription: EventSubscription
end

local record ModifyIntegrationInput
    IntegrationArn: string
    Description: string
    IntegrationName: string
end

local record ModifyIntegrationOutput
    IntegrationArn: string
    IntegrationName: string
    SourceArn: string
    TargetArn: string
    Status: string
    Errors: {IntegrationError}
    CreateTime: number
    Description: string
    KMSKeyId: string
    AdditionalEncryptionContext: {string : string}
    Tags: {Tag}
end

local record ModifyLakehouseConfigurationInput
    ClusterIdentifier: string
    LakehouseRegistration: string
    CatalogName: string
    LakehouseIdcRegistration: string
    LakehouseIdcApplicationArn: string
    DryRun: boolean
end

local record ModifyLakehouseConfigurationOutput
    ClusterIdentifier: string
    LakehouseIdcApplicationArn: string
    LakehouseRegistrationStatus: string
    CatalogArn: string
end

local record ModifyRedshiftIdcApplicationInput
    RedshiftIdcApplicationArn: string
    IdentityNamespace: string
    IamRoleArn: string
    IdcDisplayName: string
    AuthorizedTokenIssuerList: {AuthorizedTokenIssuer}
    ServiceIntegrations: {ServiceIntegrationsUnion}
end

local record ModifyRedshiftIdcApplicationOutput
    RedshiftIdcApplication: RedshiftIdcApplication
end

local record ModifyScheduledActionInput
    ScheduledActionName: string
    TargetAction: ScheduledActionType
    Schedule: string
    IamRole: string
    ScheduledActionDescription: string
    StartTime: number
    EndTime: number
    Enable: boolean
end

local record ModifyScheduledActionOutput
    ScheduledActionName: string
    TargetAction: ScheduledActionType
    Schedule: string
    IamRole: string
    ScheduledActionDescription: string
    State: string
    NextInvocations: {number}
    StartTime: number
    EndTime: number
end

local record ModifySnapshotCopyRetentionPeriodInput
    ClusterIdentifier: string
    RetentionPeriod: number
    Manual: boolean
end

local record ModifySnapshotCopyRetentionPeriodOutput
    Cluster: Cluster
end

local record ModifySnapshotScheduleInput
    ScheduleIdentifier: string
    ScheduleDefinitions: {string}
end

local record ModifySnapshotScheduleOutput
    ScheduleDefinitions: {string}
    ScheduleIdentifier: string
    ScheduleDescription: string
    Tags: {Tag}
    NextInvocations: {number}
    AssociatedClusterCount: number
    AssociatedClusters: {ClusterAssociatedToSchedule}
end

local record ModifyUsageLimitInput
    UsageLimitId: string
    Amount: number
    BreachAction: string
end

local record ModifyUsageLimitOutput
    UsageLimitId: string
    ClusterIdentifier: string
    FeatureType: string
    LimitType: string
    Amount: number
    Period: string
    BreachAction: string
    Tags: {Tag}
end

local record PauseClusterInput
    ClusterIdentifier: string
end

local record PauseClusterOutput
    Cluster: Cluster
end

local record PurchaseReservedNodeOfferingInput
    ReservedNodeOfferingId: string
    NodeCount: number
end

local record PurchaseReservedNodeOfferingOutput
    ReservedNode: ReservedNode
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
end

local record PutResourcePolicyOutput
    ResourcePolicy: ResourcePolicy
end

local record RebootClusterInput
    ClusterIdentifier: string
end

local record RebootClusterOutput
    Cluster: Cluster
end

local record RegisterNamespaceInput
    NamespaceIdentifier: NamespaceIdentifierUnion
    ConsumerIdentifiers: {string}
end

local record RegisterNamespaceOutput
    Status: string
end

local record RejectDataShareInput
    DataShareArn: string
end

local record RejectDataShareOutput
    DataShareArn: string
    ProducerArn: string
    AllowPubliclyAccessibleConsumers: boolean
    DataShareAssociations: {DataShareAssociation}
    ManagedBy: string
    DataShareType: string
end

local record ResetClusterParameterGroupInput
    ParameterGroupName: string
    ResetAllParameters: boolean
    Parameters: {Parameter}
end

local record ResetClusterParameterGroupOutput
    ParameterGroupName: string
    ParameterGroupStatus: string
end

local record ResizeClusterInput
    ClusterIdentifier: string
    ClusterType: string
    NodeType: string
    NumberOfNodes: number
    Classic: boolean
    ReservedNodeId: string
    TargetReservedNodeOfferingId: string
end

local record ResizeClusterOutput
    Cluster: Cluster
end

local record RestoreFromClusterSnapshotInput
    ClusterIdentifier: string
    SnapshotIdentifier: string
    SnapshotArn: string
    SnapshotClusterIdentifier: string
    Port: number
    AvailabilityZone: string
    AllowVersionUpgrade: boolean
    ClusterSubnetGroupName: string
    PubliclyAccessible: boolean
    OwnerAccount: string
    HsmClientCertificateIdentifier: string
    HsmConfigurationIdentifier: string
    ElasticIp: string
    ClusterParameterGroupName: string
    ClusterSecurityGroups: {string}
    VpcSecurityGroupIds: {string}
    PreferredMaintenanceWindow: string
    AutomatedSnapshotRetentionPeriod: number
    ManualSnapshotRetentionPeriod: number
    KmsKeyId: string
    NodeType: string
    EnhancedVpcRouting: boolean
    AdditionalInfo: string
    IamRoles: {string}
    MaintenanceTrackName: string
    SnapshotScheduleIdentifier: string
    NumberOfNodes: number
    AvailabilityZoneRelocation: boolean
    AquaConfigurationStatus: string
    DefaultIamRoleArn: string
    ReservedNodeId: string
    TargetReservedNodeOfferingId: string
    Encrypted: boolean
    ManageMasterPassword: boolean
    MasterPasswordSecretKmsKeyId: string
    IpAddressType: string
    MultiAZ: boolean
    CatalogName: string
    RedshiftIdcApplicationArn: string
end

local record RestoreFromClusterSnapshotOutput
    Cluster: Cluster
end

local record RestoreTableFromClusterSnapshotInput
    ClusterIdentifier: string
    SnapshotIdentifier: string
    SourceDatabaseName: string
    SourceSchemaName: string
    SourceTableName: string
    TargetDatabaseName: string
    TargetSchemaName: string
    NewTableName: string
    EnableCaseSensitiveIdentifier: boolean
end

local record RestoreTableFromClusterSnapshotOutput
    TableRestoreStatus: TableRestoreStatus
end

local record ResumeClusterInput
    ClusterIdentifier: string
end

local record ResumeClusterOutput
    Cluster: Cluster
end

local record RevokeClusterSecurityGroupIngressInput
    ClusterSecurityGroupName: string
    CIDRIP: string
    EC2SecurityGroupName: string
    EC2SecurityGroupOwnerId: string
end

local record RevokeClusterSecurityGroupIngressOutput
    ClusterSecurityGroup: ClusterSecurityGroup
end

local record RevokeEndpointAccessInput
    ClusterIdentifier: string
    Account: string
    VpcIds: {string}
    Force: boolean
end

local record RevokeEndpointAccessOutput
    Grantor: string
    Grantee: string
    ClusterIdentifier: string
    AuthorizeTime: number
    ClusterStatus: string
    Status: string
    AllowedAllVPCs: boolean
    AllowedVPCs: {string}
    EndpointCount: number
end

local record RevokeSnapshotAccessInput
    SnapshotIdentifier: string
    SnapshotArn: string
    SnapshotClusterIdentifier: string
    AccountWithRestoreAccess: string
end

local record RevokeSnapshotAccessOutput
    Snapshot: Snapshot
end

local record RotateEncryptionKeyInput
    ClusterIdentifier: string
end

local record RotateEncryptionKeyOutput
    Cluster: Cluster
end

local record UpdatePartnerStatusInput
    AccountId: string
    ClusterIdentifier: string
    DatabaseName: string
    PartnerName: string
    Status: string
    StatusMessage: string
end

local record UpdatePartnerStatusOutput
    DatabaseName: string
    PartnerName: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record InvalidReservedNodeStateFault
    message: string
end

local record ReservedNodeAlreadyExistsFault
    message: string
end

local record ReservedNodeAlreadyMigratedFault
    message: string
end

local record ReservedNodeNotFoundFault
    message: string
end

local record ReservedNodeOfferingNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record PartnerNotFoundFault
    message: string
end

local record UnauthorizedPartnerIntegrationFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record InvalidDataShareFault
    message: string
end

local record InvalidNamespaceFault
    message: string
end

local record AuthorizationAlreadyExistsFault
    message: string
end

local record AuthorizationQuotaExceededFault
    message: string
end

local record ClusterSecurityGroupNotFoundFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record InvalidDataShareFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record EndpointAuthorizationAlreadyExistsFault
    message: string
end

local record EndpointAuthorizationsPerClusterLimitExceededFault
    message: string
end

local record InvalidAuthorizationStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record AuthorizationAlreadyExistsFault
    message: string
end

local record AuthorizationQuotaExceededFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record InvalidClusterSnapshotStateFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record BatchDeleteRequestSizeExceededFault
    message: string
end

local record BatchModifyClusterSnapshotsLimitExceededFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record ResizeNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSnapshotAlreadyExistsFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record ClusterSnapshotQuotaExceededFault
    message: string
end

local record InvalidClusterSnapshotStateFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record AuthenticationProfileAlreadyExistsFault
    message: string
end

local record AuthenticationProfileQuotaExceededFault
    message: string
end

local record InvalidAuthenticationProfileRequestFault
    message: string
end

local record ClusterAlreadyExistsFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record ClusterQuotaExceededFault
    message: string
end

local record ClusterSecurityGroupNotFoundFault
    message: string
end

local record ClusterSubnetGroupNotFoundFault
    message: string
end

local record DependentServiceAccessDeniedFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record HsmClientCertificateNotFoundFault
    message: string
end

local record HsmConfigurationNotFoundFault
    message: string
end

local record InsufficientClusterCapacityFault
    message: string
end

local record InvalidClusterSubnetGroupStateFault
    message: string
end

local record InvalidClusterTrackFault
    message: string
end

local record InvalidElasticIpFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidTagFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record Ipv6CidrBlockNotFoundFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record NumberOfNodesPerClusterLimitExceededFault
    message: string
end

local record NumberOfNodesQuotaExceededFault
    message: string
end

local record RedshiftIdcApplicationNotExistsFault
    message: string
end

local record SnapshotScheduleNotFoundFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterParameterGroupAlreadyExistsFault
    message: string
end

local record ClusterParameterGroupQuotaExceededFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record ClusterSecurityGroupAlreadyExistsFault
    message: string
end

local record ClusterSecurityGroupQuotaExceededFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSnapshotAlreadyExistsFault
    message: string
end

local record ClusterSnapshotQuotaExceededFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record ClusterSubnetGroupAlreadyExistsFault
    message: string
end

local record ClusterSubnetGroupQuotaExceededFault
    message: string
end

local record ClusterSubnetQuotaExceededFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidTagFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record CustomCnameAssociationFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record AccessToClusterDeniedFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSubnetGroupNotFoundFault
    message: string
end

local record EndpointAlreadyExistsFault
    message: string
end

local record EndpointsPerAuthorizationLimitExceededFault
    message: string
end

local record EndpointsPerClusterLimitExceededFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record EventSubscriptionQuotaExceededFault
    message: string
end

local record InvalidTagFault
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

local record SubscriptionEventIdNotFoundFault
    message: string
end

local record SubscriptionSeverityNotFoundFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record HsmClientCertificateAlreadyExistsFault
    message: string
end

local record HsmClientCertificateQuotaExceededFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record HsmConfigurationAlreadyExistsFault
    message: string
end

local record HsmConfigurationQuotaExceededFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record TagLimitExceededFault
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

local record IntegrationSourceNotFoundFault
    message: string
end

local record IntegrationTargetNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceAccessDeniedFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record RedshiftIdcApplicationAlreadyExistsFault
    message: string
end

local record RedshiftIdcApplicationQuotaExceededFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidScheduledActionFault
    message: string
end

local record InvalidScheduleFault
    message: string
end

local record ScheduledActionAlreadyExistsFault
    message: string
end

local record ScheduledActionQuotaExceededFault
    message: string
end

local record ScheduledActionTypeUnsupportedFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record SnapshotCopyGrantAlreadyExistsFault
    message: string
end

local record SnapshotCopyGrantQuotaExceededFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record InvalidScheduleFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record ScheduleDefinitionTypeUnsupportedFault
    message: string
end

local record SnapshotScheduleAlreadyExistsFault
    message: string
end

local record SnapshotScheduleQuotaExceededFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidUsageLimitFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record UsageLimitAlreadyExistsFault
    message: string
end

local record InvalidDataShareFault
    message: string
end

local record AuthenticationProfileNotFoundFault
    message: string
end

local record InvalidAuthenticationProfileRequestFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSnapshotAlreadyExistsFault
    message: string
end

local record ClusterSnapshotQuotaExceededFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record InvalidClusterParameterGroupStateFault
    message: string
end

local record ClusterSecurityGroupNotFoundFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record InvalidClusterSnapshotStateFault
    message: string
end

local record ClusterSubnetGroupNotFoundFault
    message: string
end

local record InvalidClusterSubnetGroupStateFault
    message: string
end

local record InvalidClusterSubnetStateFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record CustomCnameAssociationFault
    message: string
end

local record CustomDomainAssociationNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record EndpointNotFoundFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidEndpointStateFault
    message: string
end

local record InvalidSubscriptionStateFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record HsmClientCertificateNotFoundFault
    message: string
end

local record InvalidHsmClientCertificateStateFault
    message: string
end

local record HsmConfigurationNotFoundFault
    message: string
end

local record InvalidHsmConfigurationStateFault
    message: string
end

local record IntegrationConflictOperationFault
    message: string
end

local record IntegrationConflictStateFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record PartnerNotFoundFault
    message: string
end

local record UnauthorizedPartnerIntegrationFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceAccessDeniedFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record RedshiftIdcApplicationNotExistsFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ScheduledActionNotFoundFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record InvalidSnapshotCopyGrantStateFault
    message: string
end

local record SnapshotCopyGrantNotFoundFault
    message: string
end

local record InvalidClusterSnapshotScheduleStateFault
    message: string
end

local record SnapshotScheduleNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record UsageLimitNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidNamespaceFault
    message: string
end

local record AuthenticationProfileNotFoundFault
    message: string
end

local record InvalidAuthenticationProfileRequestFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record ClusterSecurityGroupNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterSubnetGroupNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record InvalidClusterTrackFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record CustomDomainAssociationNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record InvalidDataShareFault
    message: string
end

local record InvalidNamespaceFault
    message: string
end

local record InvalidNamespaceFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record EndpointNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record HsmClientCertificateNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record HsmConfigurationNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record InvalidNamespaceFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record AccessToSnapshotDeniedFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record InvalidClusterSnapshotStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record UnauthorizedPartnerIntegrationFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceAccessDeniedFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record RedshiftIdcApplicationNotExistsFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ReservedNodeExchangeNotFoundFault
    message: string
end

local record ReservedNodeNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record ReservedNodeOfferingNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record ReservedNodeNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ResizeNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ScheduledActionNotFoundFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record InvalidTagFault
    message: string
end

local record SnapshotCopyGrantNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record TableRestoreNotFoundFault
    message: string
end

local record InvalidTagFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record SnapshotCopyAlreadyDisabledFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record InvalidDataShareFault
    message: string
end

local record InvalidNamespaceFault
    message: string
end

local record BucketNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InsufficientS3BucketPolicyFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidS3BucketNameFault
    message: string
end

local record InvalidS3KeyPrefixFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record CopyToRegionDisabledFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record IncompatibleOrderableOptions
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record SnapshotCopyAlreadyEnabledFault
    message: string
end

local record SnapshotCopyGrantNotFoundFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnknownSnapshotCopyRegionFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record RedshiftInvalidParameterFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record InvalidReservedNodeStateFault
    message: string
end

local record ReservedNodeAlreadyMigratedFault
    message: string
end

local record ReservedNodeNotFoundFault
    message: string
end

local record ReservedNodeOfferingNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record InvalidReservedNodeStateFault
    message: string
end

local record ReservedNodeAlreadyMigratedFault
    message: string
end

local record ReservedNodeNotFoundFault
    message: string
end

local record ReservedNodeOfferingNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record InvalidPolicyFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record AuthenticationProfileNotFoundFault
    message: string
end

local record AuthenticationProfileQuotaExceededFault
    message: string
end

local record InvalidAuthenticationProfileRequestFault
    message: string
end

local record ClusterAlreadyExistsFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record ClusterSecurityGroupNotFoundFault
    message: string
end

local record CustomCnameAssociationFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record HsmClientCertificateNotFoundFault
    message: string
end

local record HsmConfigurationNotFoundFault
    message: string
end

local record InsufficientClusterCapacityFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidClusterTrackFault
    message: string
end

local record InvalidElasticIpFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record Ipv6CidrBlockNotFoundFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record NumberOfNodesPerClusterLimitExceededFault
    message: string
end

local record NumberOfNodesQuotaExceededFault
    message: string
end

local record TableLimitExceededFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record UnsupportedOptionFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterOnLatestRevisionFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record InvalidClusterParameterGroupStateFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record InvalidClusterSnapshotStateFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterSnapshotScheduleStateFault
    message: string
end

local record SnapshotScheduleNotFoundFault
    message: string
end

local record ClusterSubnetGroupNotFoundFault
    message: string
end

local record ClusterSubnetQuotaExceededFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record SubnetAlreadyInUse
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record CustomCnameAssociationFault
    message: string
end

local record CustomDomainAssociationNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record EndpointNotFoundFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidEndpointStateFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record InvalidSubscriptionStateFault
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

local record SubscriptionCategoryNotFoundFault
    message: string
end

local record SubscriptionEventIdNotFoundFault
    message: string
end

local record SubscriptionNotFoundFault
    message: string
end

local record SubscriptionSeverityNotFoundFault
    message: string
end

local record IntegrationAlreadyExistsFault
    message: string
end

local record IntegrationConflictOperationFault
    message: string
end

local record IntegrationConflictStateFault
    message: string
end

local record IntegrationNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record DependentServiceAccessDeniedFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record RedshiftIdcApplicationNotExistsFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record DependentServiceAccessDeniedFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record RedshiftIdcApplicationNotExistsFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidScheduledActionFault
    message: string
end

local record InvalidScheduleFault
    message: string
end

local record ScheduledActionNotFoundFault
    message: string
end

local record ScheduledActionTypeUnsupportedFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidRetentionPeriodFault
    message: string
end

local record SnapshotCopyDisabledFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record InvalidScheduleFault
    message: string
end

local record SnapshotScheduleNotFoundFault
    message: string
end

local record SnapshotScheduleUpdateInProgressFault
    message: string
end

local record InvalidUsageLimitFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record UsageLimitNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ReservedNodeAlreadyExistsFault
    message: string
end

local record ReservedNodeOfferingNotFoundFault
    message: string
end

local record ReservedNodeQuotaExceededFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ConflictPolicyUpdateFault
    message: string
end

local record InvalidPolicyFault
    message: string
end

local record ResourceNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidNamespaceFault
    message: string
end

local record InvalidDataShareFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record InvalidClusterParameterGroupStateFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record InsufficientClusterCapacityFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidReservedNodeStateFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record NumberOfNodesPerClusterLimitExceededFault
    message: string
end

local record NumberOfNodesQuotaExceededFault
    message: string
end

local record ReservedNodeAlreadyExistsFault
    message: string
end

local record ReservedNodeAlreadyMigratedFault
    message: string
end

local record ReservedNodeNotFoundFault
    message: string
end

local record ReservedNodeOfferingNotFoundFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record UnsupportedOptionFault
    message: string
end

local record AccessToSnapshotDeniedFault
    message: string
end

local record ClusterAlreadyExistsFault
    message: string
end

local record ClusterParameterGroupNotFoundFault
    message: string
end

local record ClusterQuotaExceededFault
    message: string
end

local record ClusterSecurityGroupNotFoundFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record ClusterSubnetGroupNotFoundFault
    message: string
end

local record DependentServiceAccessDeniedFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record DependentServiceUnavailableFault
    message: string
end

local record HsmClientCertificateNotFoundFault
    message: string
end

local record HsmConfigurationNotFoundFault
    message: string
end

local record InsufficientClusterCapacityFault
    message: string
end

local record InvalidClusterSnapshotStateFault
    message: string
end

local record InvalidClusterSubnetGroupStateFault
    message: string
end

local record InvalidClusterTrackFault
    message: string
end

local record InvalidElasticIpFault
    message: string
end

local record InvalidReservedNodeStateFault
    message: string
end

local record InvalidRestoreFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record InvalidTagFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record Ipv6CidrBlockNotFoundFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record NumberOfNodesPerClusterLimitExceededFault
    message: string
end

local record NumberOfNodesQuotaExceededFault
    message: string
end

local record RedshiftIdcApplicationNotExistsFault
    message: string
end

local record ReservedNodeAlreadyExistsFault
    message: string
end

local record ReservedNodeAlreadyMigratedFault
    message: string
end

local record ReservedNodeNotFoundFault
    message: string
end

local record ReservedNodeOfferingNotFoundFault
    message: string
end

local record SnapshotScheduleNotFoundFault
    message: string
end

local record TagLimitExceededFault
    message: string
end

local record UnauthorizedOperation
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record InProgressTableRestoreQuotaExceededFault
    message: string
end

local record InvalidClusterSnapshotStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidTableRestoreArgumentFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InsufficientClusterCapacityFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record ClusterSecurityGroupNotFoundFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record EndpointAuthorizationNotFoundFault
    message: string
end

local record EndpointNotFoundFault
    message: string
end

local record InvalidAuthorizationStateFault
    message: string
end

local record InvalidClusterSecurityGroupStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidEndpointStateFault
    message: string
end

local record AccessToSnapshotDeniedFault
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record ClusterSnapshotNotFoundFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record DependentServiceRequestThrottlingFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record PartnerNotFoundFault
    message: string
end

local record UnauthorizedPartnerIntegrationFault
    message: string
end

local record UnsupportedOperationFault
    message: string
end

local type LogDestinationType = "s3" | "cloudwatch"

local type ZeroETLIntegrationStatus = "creating" | "active" | "modifying" | "failed" | "deleting" | "syncing" | "needs_attention"

local type ScheduledActionState = "ACTIVE" | "DISABLED"

local type UsageLimitPeriod = "daily" | "weekly" | "monthly"

local type UsageLimitLimitType = "time" | "data-scanned"

local type AuthorizationStatus = "Authorized" | "Revoking"

local type DataShareStatusForConsumer = "ACTIVE" | "AVAILABLE"

local type UsageLimitFeatureType = "spectrum" | "concurrency-scaling" | "cross-region-datasharing" | "extra-compute-for-automatic-optimization"

local type NamespaceRegistrationStatus = "Registering" | "Deregistering"

local type UsageLimitBreachAction = "log" | "emit-metric" | "disable"

local type PartnerIntegrationStatus = "Active" | "Inactive" | "RuntimeFailure" | "ConnectionFailure"

local type DataShareStatusForProducer = "ACTIVE" | "AUTHORIZED" | "PENDING_AUTHORIZATION" | "DEAUTHORIZED" | "REJECTED"

local type ActionType = "restore-cluster" | "recommend-node-config" | "resize-cluster"

local type LakehouseIdcRegistration = "Associate" | "Disassociate"

local type ReservedNodeExchangeActionType = "restore-cluster" | "resize-cluster"

local type DataShareType = "INTERNAL"

local type ScheduledActionTypeValues = "ResizeCluster" | "PauseCluster" | "ResumeCluster"

local type LakehouseRegistration = "Register" | "Deregister"

local type AquaConfigurationStatus = "enabled" | "disabled" | "auto"

local type ApplicationType = "None" | "Lakehouse"

local type SourceType = "cluster" | "cluster-parameter-group" | "cluster-security-group" | "cluster-snapshot" | "scheduled-action"

local record M
    AcceptReservedNodeExchangeInput: AcceptReservedNodeExchangeInput
    AcceptReservedNodeExchangeOutput: AcceptReservedNodeExchangeOutput
    AddPartnerInput: AddPartnerInput
    AddPartnerOutput: AddPartnerOutput
    AssociateDataShareConsumerInput: AssociateDataShareConsumerInput
    AssociateDataShareConsumerOutput: AssociateDataShareConsumerOutput
    AuthorizeClusterSecurityGroupIngressInput: AuthorizeClusterSecurityGroupIngressInput
    AuthorizeClusterSecurityGroupIngressOutput: AuthorizeClusterSecurityGroupIngressOutput
    AuthorizeDataShareInput: AuthorizeDataShareInput
    AuthorizeDataShareOutput: AuthorizeDataShareOutput
    AuthorizeEndpointAccessInput: AuthorizeEndpointAccessInput
    AuthorizeEndpointAccessOutput: AuthorizeEndpointAccessOutput
    AuthorizeSnapshotAccessInput: AuthorizeSnapshotAccessInput
    AuthorizeSnapshotAccessOutput: AuthorizeSnapshotAccessOutput
    BatchDeleteClusterSnapshotsInput: BatchDeleteClusterSnapshotsInput
    BatchDeleteClusterSnapshotsOutput: BatchDeleteClusterSnapshotsOutput
    BatchModifyClusterSnapshotsInput: BatchModifyClusterSnapshotsInput
    BatchModifyClusterSnapshotsOutput: BatchModifyClusterSnapshotsOutput
    CancelResizeInput: CancelResizeInput
    CancelResizeOutput: CancelResizeOutput
    CopyClusterSnapshotInput: CopyClusterSnapshotInput
    CopyClusterSnapshotOutput: CopyClusterSnapshotOutput
    CreateAuthenticationProfileInput: CreateAuthenticationProfileInput
    CreateAuthenticationProfileOutput: CreateAuthenticationProfileOutput
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateClusterParameterGroupInput: CreateClusterParameterGroupInput
    CreateClusterParameterGroupOutput: CreateClusterParameterGroupOutput
    CreateClusterSecurityGroupInput: CreateClusterSecurityGroupInput
    CreateClusterSecurityGroupOutput: CreateClusterSecurityGroupOutput
    CreateClusterSnapshotInput: CreateClusterSnapshotInput
    CreateClusterSnapshotOutput: CreateClusterSnapshotOutput
    CreateClusterSubnetGroupInput: CreateClusterSubnetGroupInput
    CreateClusterSubnetGroupOutput: CreateClusterSubnetGroupOutput
    CreateCustomDomainAssociationInput: CreateCustomDomainAssociationInput
    CreateCustomDomainAssociationOutput: CreateCustomDomainAssociationOutput
    CreateEndpointAccessInput: CreateEndpointAccessInput
    CreateEndpointAccessOutput: CreateEndpointAccessOutput
    CreateEventSubscriptionInput: CreateEventSubscriptionInput
    CreateEventSubscriptionOutput: CreateEventSubscriptionOutput
    CreateHsmClientCertificateInput: CreateHsmClientCertificateInput
    CreateHsmClientCertificateOutput: CreateHsmClientCertificateOutput
    CreateHsmConfigurationInput: CreateHsmConfigurationInput
    CreateHsmConfigurationOutput: CreateHsmConfigurationOutput
    CreateIntegrationInput: CreateIntegrationInput
    CreateIntegrationOutput: CreateIntegrationOutput
    CreateRedshiftIdcApplicationInput: CreateRedshiftIdcApplicationInput
    CreateRedshiftIdcApplicationOutput: CreateRedshiftIdcApplicationOutput
    CreateScheduledActionInput: CreateScheduledActionInput
    CreateScheduledActionOutput: CreateScheduledActionOutput
    CreateSnapshotCopyGrantInput: CreateSnapshotCopyGrantInput
    CreateSnapshotCopyGrantOutput: CreateSnapshotCopyGrantOutput
    CreateSnapshotScheduleInput: CreateSnapshotScheduleInput
    CreateSnapshotScheduleOutput: CreateSnapshotScheduleOutput
    CreateTagsInput: CreateTagsInput
    CreateTagsOutput: CreateTagsOutput
    CreateUsageLimitInput: CreateUsageLimitInput
    CreateUsageLimitOutput: CreateUsageLimitOutput
    DeauthorizeDataShareInput: DeauthorizeDataShareInput
    DeauthorizeDataShareOutput: DeauthorizeDataShareOutput
    DeleteAuthenticationProfileInput: DeleteAuthenticationProfileInput
    DeleteAuthenticationProfileOutput: DeleteAuthenticationProfileOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteClusterParameterGroupInput: DeleteClusterParameterGroupInput
    DeleteClusterParameterGroupOutput: DeleteClusterParameterGroupOutput
    DeleteClusterSecurityGroupInput: DeleteClusterSecurityGroupInput
    DeleteClusterSecurityGroupOutput: DeleteClusterSecurityGroupOutput
    DeleteClusterSnapshotInput: DeleteClusterSnapshotInput
    DeleteClusterSnapshotOutput: DeleteClusterSnapshotOutput
    DeleteClusterSubnetGroupInput: DeleteClusterSubnetGroupInput
    DeleteClusterSubnetGroupOutput: DeleteClusterSubnetGroupOutput
    DeleteCustomDomainAssociationInput: DeleteCustomDomainAssociationInput
    DeleteCustomDomainAssociationOutput: DeleteCustomDomainAssociationOutput
    DeleteEndpointAccessInput: DeleteEndpointAccessInput
    DeleteEndpointAccessOutput: DeleteEndpointAccessOutput
    DeleteEventSubscriptionInput: DeleteEventSubscriptionInput
    DeleteEventSubscriptionOutput: DeleteEventSubscriptionOutput
    DeleteHsmClientCertificateInput: DeleteHsmClientCertificateInput
    DeleteHsmClientCertificateOutput: DeleteHsmClientCertificateOutput
    DeleteHsmConfigurationInput: DeleteHsmConfigurationInput
    DeleteHsmConfigurationOutput: DeleteHsmConfigurationOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeletePartnerInput: DeletePartnerInput
    DeletePartnerOutput: DeletePartnerOutput
    DeleteRedshiftIdcApplicationInput: DeleteRedshiftIdcApplicationInput
    DeleteRedshiftIdcApplicationOutput: DeleteRedshiftIdcApplicationOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteScheduledActionInput: DeleteScheduledActionInput
    DeleteScheduledActionOutput: DeleteScheduledActionOutput
    DeleteSnapshotCopyGrantInput: DeleteSnapshotCopyGrantInput
    DeleteSnapshotCopyGrantOutput: DeleteSnapshotCopyGrantOutput
    DeleteSnapshotScheduleInput: DeleteSnapshotScheduleInput
    DeleteSnapshotScheduleOutput: DeleteSnapshotScheduleOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DeleteUsageLimitInput: DeleteUsageLimitInput
    DeleteUsageLimitOutput: DeleteUsageLimitOutput
    DeregisterNamespaceInput: DeregisterNamespaceInput
    DeregisterNamespaceOutput: DeregisterNamespaceOutput
    DescribeAccountAttributesInput: DescribeAccountAttributesInput
    DescribeAccountAttributesOutput: DescribeAccountAttributesOutput
    DescribeAuthenticationProfilesInput: DescribeAuthenticationProfilesInput
    DescribeAuthenticationProfilesOutput: DescribeAuthenticationProfilesOutput
    DescribeClusterDbRevisionsInput: DescribeClusterDbRevisionsInput
    DescribeClusterDbRevisionsOutput: DescribeClusterDbRevisionsOutput
    DescribeClusterParameterGroupsInput: DescribeClusterParameterGroupsInput
    DescribeClusterParameterGroupsOutput: DescribeClusterParameterGroupsOutput
    DescribeClusterParametersInput: DescribeClusterParametersInput
    DescribeClusterParametersOutput: DescribeClusterParametersOutput
    DescribeClustersInput: DescribeClustersInput
    DescribeClustersOutput: DescribeClustersOutput
    DescribeClusterSecurityGroupsInput: DescribeClusterSecurityGroupsInput
    DescribeClusterSecurityGroupsOutput: DescribeClusterSecurityGroupsOutput
    DescribeClusterSnapshotsInput: DescribeClusterSnapshotsInput
    DescribeClusterSnapshotsOutput: DescribeClusterSnapshotsOutput
    DescribeClusterSubnetGroupsInput: DescribeClusterSubnetGroupsInput
    DescribeClusterSubnetGroupsOutput: DescribeClusterSubnetGroupsOutput
    DescribeClusterTracksInput: DescribeClusterTracksInput
    DescribeClusterTracksOutput: DescribeClusterTracksOutput
    DescribeClusterVersionsInput: DescribeClusterVersionsInput
    DescribeClusterVersionsOutput: DescribeClusterVersionsOutput
    DescribeCustomDomainAssociationsInput: DescribeCustomDomainAssociationsInput
    DescribeCustomDomainAssociationsOutput: DescribeCustomDomainAssociationsOutput
    DescribeDataSharesInput: DescribeDataSharesInput
    DescribeDataSharesOutput: DescribeDataSharesOutput
    DescribeDataSharesForConsumerInput: DescribeDataSharesForConsumerInput
    DescribeDataSharesForConsumerOutput: DescribeDataSharesForConsumerOutput
    DescribeDataSharesForProducerInput: DescribeDataSharesForProducerInput
    DescribeDataSharesForProducerOutput: DescribeDataSharesForProducerOutput
    DescribeDefaultClusterParametersInput: DescribeDefaultClusterParametersInput
    DescribeDefaultClusterParametersOutput: DescribeDefaultClusterParametersOutput
    DescribeEndpointAccessInput: DescribeEndpointAccessInput
    DescribeEndpointAccessOutput: DescribeEndpointAccessOutput
    DescribeEndpointAuthorizationInput: DescribeEndpointAuthorizationInput
    DescribeEndpointAuthorizationOutput: DescribeEndpointAuthorizationOutput
    DescribeEventCategoriesInput: DescribeEventCategoriesInput
    DescribeEventCategoriesOutput: DescribeEventCategoriesOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeEventSubscriptionsInput: DescribeEventSubscriptionsInput
    DescribeEventSubscriptionsOutput: DescribeEventSubscriptionsOutput
    DescribeHsmClientCertificatesInput: DescribeHsmClientCertificatesInput
    DescribeHsmClientCertificatesOutput: DescribeHsmClientCertificatesOutput
    DescribeHsmConfigurationsInput: DescribeHsmConfigurationsInput
    DescribeHsmConfigurationsOutput: DescribeHsmConfigurationsOutput
    DescribeInboundIntegrationsInput: DescribeInboundIntegrationsInput
    DescribeInboundIntegrationsOutput: DescribeInboundIntegrationsOutput
    DescribeIntegrationsInput: DescribeIntegrationsInput
    DescribeIntegrationsOutput: DescribeIntegrationsOutput
    DescribeLoggingStatusInput: DescribeLoggingStatusInput
    DescribeLoggingStatusOutput: DescribeLoggingStatusOutput
    DescribeNodeConfigurationOptionsInput: DescribeNodeConfigurationOptionsInput
    DescribeNodeConfigurationOptionsOutput: DescribeNodeConfigurationOptionsOutput
    DescribeOrderableClusterOptionsInput: DescribeOrderableClusterOptionsInput
    DescribeOrderableClusterOptionsOutput: DescribeOrderableClusterOptionsOutput
    DescribePartnersInput: DescribePartnersInput
    DescribePartnersOutput: DescribePartnersOutput
    DescribeRedshiftIdcApplicationsInput: DescribeRedshiftIdcApplicationsInput
    DescribeRedshiftIdcApplicationsOutput: DescribeRedshiftIdcApplicationsOutput
    DescribeReservedNodeExchangeStatusInput: DescribeReservedNodeExchangeStatusInput
    DescribeReservedNodeExchangeStatusOutput: DescribeReservedNodeExchangeStatusOutput
    DescribeReservedNodeOfferingsInput: DescribeReservedNodeOfferingsInput
    DescribeReservedNodeOfferingsOutput: DescribeReservedNodeOfferingsOutput
    DescribeReservedNodesInput: DescribeReservedNodesInput
    DescribeReservedNodesOutput: DescribeReservedNodesOutput
    DescribeResizeInput: DescribeResizeInput
    DescribeResizeOutput: DescribeResizeOutput
    DescribeScheduledActionsInput: DescribeScheduledActionsInput
    DescribeScheduledActionsOutput: DescribeScheduledActionsOutput
    DescribeSnapshotCopyGrantsInput: DescribeSnapshotCopyGrantsInput
    DescribeSnapshotCopyGrantsOutput: DescribeSnapshotCopyGrantsOutput
    DescribeSnapshotSchedulesInput: DescribeSnapshotSchedulesInput
    DescribeSnapshotSchedulesOutput: DescribeSnapshotSchedulesOutput
    DescribeStorageInput: DescribeStorageInput
    DescribeStorageOutput: DescribeStorageOutput
    DescribeTableRestoreStatusInput: DescribeTableRestoreStatusInput
    DescribeTableRestoreStatusOutput: DescribeTableRestoreStatusOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DescribeUsageLimitsInput: DescribeUsageLimitsInput
    DescribeUsageLimitsOutput: DescribeUsageLimitsOutput
    DisableLoggingInput: DisableLoggingInput
    DisableLoggingOutput: DisableLoggingOutput
    DisableSnapshotCopyInput: DisableSnapshotCopyInput
    DisableSnapshotCopyOutput: DisableSnapshotCopyOutput
    DisassociateDataShareConsumerInput: DisassociateDataShareConsumerInput
    DisassociateDataShareConsumerOutput: DisassociateDataShareConsumerOutput
    EnableLoggingInput: EnableLoggingInput
    EnableLoggingOutput: EnableLoggingOutput
    EnableSnapshotCopyInput: EnableSnapshotCopyInput
    EnableSnapshotCopyOutput: EnableSnapshotCopyOutput
    FailoverPrimaryComputeInput: FailoverPrimaryComputeInput
    FailoverPrimaryComputeOutput: FailoverPrimaryComputeOutput
    GetClusterCredentialsInput: GetClusterCredentialsInput
    GetClusterCredentialsOutput: GetClusterCredentialsOutput
    GetClusterCredentialsWithIAMInput: GetClusterCredentialsWithIAMInput
    GetClusterCredentialsWithIAMOutput: GetClusterCredentialsWithIAMOutput
    GetIdentityCenterAuthTokenInput: GetIdentityCenterAuthTokenInput
    GetIdentityCenterAuthTokenOutput: GetIdentityCenterAuthTokenOutput
    GetReservedNodeExchangeConfigurationOptionsInput: GetReservedNodeExchangeConfigurationOptionsInput
    GetReservedNodeExchangeConfigurationOptionsOutput: GetReservedNodeExchangeConfigurationOptionsOutput
    GetReservedNodeExchangeOfferingsInput: GetReservedNodeExchangeOfferingsInput
    GetReservedNodeExchangeOfferingsOutput: GetReservedNodeExchangeOfferingsOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ListRecommendationsInput: ListRecommendationsInput
    ListRecommendationsOutput: ListRecommendationsOutput
    ModifyAquaConfigurationInput: ModifyAquaConfigurationInput
    ModifyAquaConfigurationOutput: ModifyAquaConfigurationOutput
    ModifyAuthenticationProfileInput: ModifyAuthenticationProfileInput
    ModifyAuthenticationProfileOutput: ModifyAuthenticationProfileOutput
    ModifyClusterInput: ModifyClusterInput
    ModifyClusterOutput: ModifyClusterOutput
    ModifyClusterDbRevisionInput: ModifyClusterDbRevisionInput
    ModifyClusterDbRevisionOutput: ModifyClusterDbRevisionOutput
    ModifyClusterIamRolesInput: ModifyClusterIamRolesInput
    ModifyClusterIamRolesOutput: ModifyClusterIamRolesOutput
    ModifyClusterMaintenanceInput: ModifyClusterMaintenanceInput
    ModifyClusterMaintenanceOutput: ModifyClusterMaintenanceOutput
    ModifyClusterParameterGroupInput: ModifyClusterParameterGroupInput
    ModifyClusterParameterGroupOutput: ModifyClusterParameterGroupOutput
    ModifyClusterSnapshotInput: ModifyClusterSnapshotInput
    ModifyClusterSnapshotOutput: ModifyClusterSnapshotOutput
    ModifyClusterSnapshotScheduleInput: ModifyClusterSnapshotScheduleInput
    ModifyClusterSnapshotScheduleOutput: ModifyClusterSnapshotScheduleOutput
    ModifyClusterSubnetGroupInput: ModifyClusterSubnetGroupInput
    ModifyClusterSubnetGroupOutput: ModifyClusterSubnetGroupOutput
    ModifyCustomDomainAssociationInput: ModifyCustomDomainAssociationInput
    ModifyCustomDomainAssociationOutput: ModifyCustomDomainAssociationOutput
    ModifyEndpointAccessInput: ModifyEndpointAccessInput
    ModifyEndpointAccessOutput: ModifyEndpointAccessOutput
    ModifyEventSubscriptionInput: ModifyEventSubscriptionInput
    ModifyEventSubscriptionOutput: ModifyEventSubscriptionOutput
    ModifyIntegrationInput: ModifyIntegrationInput
    ModifyIntegrationOutput: ModifyIntegrationOutput
    ModifyLakehouseConfigurationInput: ModifyLakehouseConfigurationInput
    ModifyLakehouseConfigurationOutput: ModifyLakehouseConfigurationOutput
    ModifyRedshiftIdcApplicationInput: ModifyRedshiftIdcApplicationInput
    ModifyRedshiftIdcApplicationOutput: ModifyRedshiftIdcApplicationOutput
    ModifyScheduledActionInput: ModifyScheduledActionInput
    ModifyScheduledActionOutput: ModifyScheduledActionOutput
    ModifySnapshotCopyRetentionPeriodInput: ModifySnapshotCopyRetentionPeriodInput
    ModifySnapshotCopyRetentionPeriodOutput: ModifySnapshotCopyRetentionPeriodOutput
    ModifySnapshotScheduleInput: ModifySnapshotScheduleInput
    ModifySnapshotScheduleOutput: ModifySnapshotScheduleOutput
    ModifyUsageLimitInput: ModifyUsageLimitInput
    ModifyUsageLimitOutput: ModifyUsageLimitOutput
    PauseClusterInput: PauseClusterInput
    PauseClusterOutput: PauseClusterOutput
    PurchaseReservedNodeOfferingInput: PurchaseReservedNodeOfferingInput
    PurchaseReservedNodeOfferingOutput: PurchaseReservedNodeOfferingOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RebootClusterInput: RebootClusterInput
    RebootClusterOutput: RebootClusterOutput
    RegisterNamespaceInput: RegisterNamespaceInput
    RegisterNamespaceOutput: RegisterNamespaceOutput
    RejectDataShareInput: RejectDataShareInput
    RejectDataShareOutput: RejectDataShareOutput
    ResetClusterParameterGroupInput: ResetClusterParameterGroupInput
    ResetClusterParameterGroupOutput: ResetClusterParameterGroupOutput
    ResizeClusterInput: ResizeClusterInput
    ResizeClusterOutput: ResizeClusterOutput
    RestoreFromClusterSnapshotInput: RestoreFromClusterSnapshotInput
    RestoreFromClusterSnapshotOutput: RestoreFromClusterSnapshotOutput
    RestoreTableFromClusterSnapshotInput: RestoreTableFromClusterSnapshotInput
    RestoreTableFromClusterSnapshotOutput: RestoreTableFromClusterSnapshotOutput
    ResumeClusterInput: ResumeClusterInput
    ResumeClusterOutput: ResumeClusterOutput
    RevokeClusterSecurityGroupIngressInput: RevokeClusterSecurityGroupIngressInput
    RevokeClusterSecurityGroupIngressOutput: RevokeClusterSecurityGroupIngressOutput
    RevokeEndpointAccessInput: RevokeEndpointAccessInput
    RevokeEndpointAccessOutput: RevokeEndpointAccessOutput
    RevokeSnapshotAccessInput: RevokeSnapshotAccessInput
    RevokeSnapshotAccessOutput: RevokeSnapshotAccessOutput
    RotateEncryptionKeyInput: RotateEncryptionKeyInput
    RotateEncryptionKeyOutput: RotateEncryptionKeyOutput
    UpdatePartnerStatusInput: UpdatePartnerStatusInput
    UpdatePartnerStatusOutput: UpdatePartnerStatusOutput
end

return M
