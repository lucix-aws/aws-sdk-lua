local record AcceptInboundConnectionInput
    ConnectionId: string
end

local record AcceptInboundConnectionOutput
    Connection: InboundConnection
end

local record AddDataSourceInput
    DomainName: string
    Name: string
    DataSourceType: DataSourceType
    Description: string
end

local record AddDataSourceOutput
    Message: string
end

local record AddDirectQueryDataSourceInput
    DataSourceName: string
    DataSourceType: DirectQueryDataSourceType
    Description: string
    OpenSearchArns: {string}
    DataSourceAccessPolicy: string
    TagList: {Tag}
end

local record AddDirectQueryDataSourceOutput
    DataSourceArn: string
end

local record AddTagsInput
    ARN: string
    TagList: {Tag}
end

local record AddTagsOutput
end

local record AssociatePackageInput
    PackageID: string
    DomainName: string
    PrerequisitePackageIDList: {string}
    AssociationConfiguration: PackageAssociationConfiguration
end

local record AssociatePackageOutput
    DomainPackageDetails: DomainPackageDetails
end

local record AssociatePackagesInput
    PackageList: {PackageDetailsForAssociation}
    DomainName: string
end

local record AssociatePackagesOutput
    DomainPackageDetailsList: {DomainPackageDetails}
end

local record AuthorizeVpcEndpointAccessInput
    DomainName: string
    Account: string
    Service: string
    ServiceOptions: ServiceOptions
end

local record AuthorizeVpcEndpointAccessOutput
    AuthorizedPrincipal: AuthorizedPrincipal
end

local record CancelDomainConfigChangeInput
    DomainName: string
    DryRun: boolean
end

local record CancelDomainConfigChangeOutput
    CancelledChangeIds: {string}
    CancelledChangeProperties: {CancelledChangeProperty}
    DryRun: boolean
end

local record CancelServiceSoftwareUpdateInput
    DomainName: string
end

local record CancelServiceSoftwareUpdateOutput
    ServiceSoftwareOptions: ServiceSoftwareOptions
end

local record CreateApplicationInput
    clientToken: string
    name: string
    dataSources: {DataSource}
    iamIdentityCenterOptions: IamIdentityCenterOptionsInput
    appConfigs: {AppConfig}
    tagList: {Tag}
    kmsKeyArn: string
end

local record CreateApplicationOutput
    id: string
    name: string
    arn: string
    dataSources: {DataSource}
    iamIdentityCenterOptions: IamIdentityCenterOptions
    appConfigs: {AppConfig}
    tagList: {Tag}
    createdAt: number
    kmsKeyArn: string
end

local record CreateDomainInput
    DomainName: string
    EngineVersion: string
    ClusterConfig: ClusterConfig
    EBSOptions: EBSOptions
    AccessPolicies: string
    IPAddressType: string
    SnapshotOptions: SnapshotOptions
    VPCOptions: VPCOptions
    CognitoOptions: CognitoOptions
    EncryptionAtRestOptions: EncryptionAtRestOptions
    NodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions
    AdvancedOptions: {string : string}
    LogPublishingOptions: {string : LogPublishingOption}
    DomainEndpointOptions: DomainEndpointOptions
    AdvancedSecurityOptions: AdvancedSecurityOptionsInput
    IdentityCenterOptions: IdentityCenterOptionsInput
    TagList: {Tag}
    AutoTuneOptions: AutoTuneOptionsInput
    OffPeakWindowOptions: OffPeakWindowOptions
    SoftwareUpdateOptions: SoftwareUpdateOptions
    AIMLOptions: AIMLOptionsInput
    DeploymentStrategyOptions: DeploymentStrategyOptions
end

local record CreateDomainOutput
    DomainStatus: DomainStatus
end

local record CreateIndexInput
    DomainName: string
    IndexName: string
    IndexSchema: any
end

local record CreateIndexOutput
    Status: string
end

local record CreateOutboundConnectionInput
    LocalDomainInfo: DomainInformationContainer
    RemoteDomainInfo: DomainInformationContainer
    ConnectionAlias: string
    ConnectionMode: string
    ConnectionProperties: ConnectionProperties
end

local record CreateOutboundConnectionOutput
    LocalDomainInfo: DomainInformationContainer
    RemoteDomainInfo: DomainInformationContainer
    ConnectionAlias: string
    ConnectionStatus: OutboundConnectionStatus
    ConnectionId: string
    ConnectionMode: string
    ConnectionProperties: ConnectionProperties
end

local record CreatePackageInput
    PackageName: string
    PackageType: string
    PackageDescription: string
    PackageSource: PackageSource
    PackageConfiguration: PackageConfiguration
    EngineVersion: string
    PackageVendingOptions: PackageVendingOptions
    PackageEncryptionOptions: PackageEncryptionOptions
end

local record CreatePackageOutput
    PackageDetails: PackageDetails
end

local record CreateVpcEndpointInput
    DomainArn: string
    VpcOptions: VPCOptions
    ClientToken: string
end

local record CreateVpcEndpointOutput
    VpcEndpoint: VpcEndpoint
end

local record DeleteApplicationInput
    id: string
end

local record DeleteApplicationOutput
end

local record DeleteDataSourceInput
    DomainName: string
    Name: string
end

local record DeleteDataSourceOutput
    Message: string
end

local record DeleteDirectQueryDataSourceInput
    DataSourceName: string
end

local record DeleteDirectQueryDataSourceOutput
end

local record DeleteDomainInput
    DomainName: string
end

local record DeleteDomainOutput
    DomainStatus: DomainStatus
end

local record DeleteInboundConnectionInput
    ConnectionId: string
end

local record DeleteInboundConnectionOutput
    Connection: InboundConnection
end

local record DeleteIndexInput
    DomainName: string
    IndexName: string
end

local record DeleteIndexOutput
    Status: string
end

local record DeleteOutboundConnectionInput
    ConnectionId: string
end

local record DeleteOutboundConnectionOutput
    Connection: OutboundConnection
end

local record DeletePackageInput
    PackageID: string
end

local record DeletePackageOutput
    PackageDetails: PackageDetails
end

local record DeleteVpcEndpointInput
    VpcEndpointId: string
end

local record DeleteVpcEndpointOutput
    VpcEndpointSummary: VpcEndpointSummary
end

local record DeregisterCapabilityInput
    applicationId: string
    capabilityName: string
end

local record DeregisterCapabilityOutput
    status: string
end

local record DescribeDomainInput
    DomainName: string
end

local record DescribeDomainOutput
    DomainStatus: DomainStatus
end

local record DescribeDomainAutoTunesInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record DescribeDomainAutoTunesOutput
    AutoTunes: {AutoTune}
    NextToken: string
end

local record DescribeDomainChangeProgressInput
    DomainName: string
    ChangeId: string
end

local record DescribeDomainChangeProgressOutput
    ChangeProgressStatus: ChangeProgressStatusDetails
end

local record DescribeDomainConfigInput
    DomainName: string
end

local record DescribeDomainConfigOutput
    DomainConfig: DomainConfig
end

local record DescribeDomainHealthInput
    DomainName: string
end

local record DescribeDomainHealthOutput
    DomainState: string
    AvailabilityZoneCount: string
    ActiveAvailabilityZoneCount: string
    StandByAvailabilityZoneCount: string
    DataNodeCount: string
    DedicatedMaster: boolean
    MasterEligibleNodeCount: string
    WarmNodeCount: string
    MasterNode: string
    ClusterHealth: string
    TotalShards: string
    TotalUnAssignedShards: string
    EnvironmentInformation: {EnvironmentInfo}
end

local record DescribeDomainNodesInput
    DomainName: string
end

local record DescribeDomainNodesOutput
    DomainNodesStatusList: {DomainNodesStatus}
end

local record DescribeDomainsInput
    DomainNames: {string}
end

local record DescribeDomainsOutput
    DomainStatusList: {DomainStatus}
end

local record DescribeDryRunProgressInput
    DomainName: string
    DryRunId: string
    LoadDryRunConfig: boolean
end

local record DescribeDryRunProgressOutput
    DryRunProgressStatus: DryRunProgressStatus
    DryRunConfig: DomainStatus
    DryRunResults: DryRunResults
end

local record DescribeInboundConnectionsInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeInboundConnectionsOutput
    Connections: {InboundConnection}
    NextToken: string
end

local record DescribeInsightDetailsInput
    Entity: InsightEntity
    InsightId: string
    ShowHtmlContent: boolean
end

local record DescribeInsightDetailsOutput
    Fields: {InsightField}
end

local record DescribeInstanceTypeLimitsInput
    DomainName: string
    InstanceType: string
    EngineVersion: string
end

local record DescribeInstanceTypeLimitsOutput
    LimitsByRole: {string : Limits}
end

local record DescribeOutboundConnectionsInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeOutboundConnectionsOutput
    Connections: {OutboundConnection}
    NextToken: string
end

local record DescribePackagesInput
    Filters: {DescribePackagesFilter}
    MaxResults: number
    NextToken: string
end

local record DescribePackagesOutput
    PackageDetailsList: {PackageDetails}
    NextToken: string
end

local record DescribeReservedInstanceOfferingsInput
    ReservedInstanceOfferingId: string
    MaxResults: number
    NextToken: string
end

local record DescribeReservedInstanceOfferingsOutput
    NextToken: string
    ReservedInstanceOfferings: {ReservedInstanceOffering}
end

local record DescribeReservedInstancesInput
    ReservedInstanceId: string
    MaxResults: number
    NextToken: string
end

local record DescribeReservedInstancesOutput
    NextToken: string
    ReservedInstances: {ReservedInstance}
end

local record DescribeVpcEndpointsInput
    VpcEndpointIds: {string}
end

local record DescribeVpcEndpointsOutput
    VpcEndpoints: {VpcEndpoint}
    VpcEndpointErrors: {VpcEndpointError}
end

local record DissociatePackageInput
    PackageID: string
    DomainName: string
end

local record DissociatePackageOutput
    DomainPackageDetails: DomainPackageDetails
end

local record DissociatePackagesInput
    PackageList: {string}
    DomainName: string
end

local record DissociatePackagesOutput
    DomainPackageDetailsList: {DomainPackageDetails}
end

local record GetApplicationInput
    id: string
end

local record GetApplicationOutput
    id: string
    arn: string
    name: string
    endpoint: string
    status: string
    iamIdentityCenterOptions: IamIdentityCenterOptions
    dataSources: {DataSource}
    appConfigs: {AppConfig}
    createdAt: number
    lastUpdatedAt: number
    kmsKeyArn: string
end

local record GetCapabilityInput
    applicationId: string
    capabilityName: string
end

local record GetCapabilityOutput
    capabilityName: string
    applicationId: string
    status: string
    capabilityConfig: CapabilityExtendedResponseConfig
    failures: {CapabilityFailure}
end

local record GetCompatibleVersionsInput
    DomainName: string
end

local record GetCompatibleVersionsOutput
    CompatibleVersions: {CompatibleVersionsMap}
end

local record GetDataSourceInput
    DomainName: string
    Name: string
end

local record GetDataSourceOutput
    DataSourceType: DataSourceType
    Name: string
    Description: string
    Status: string
end

local record GetDefaultApplicationSettingInput
end

local record GetDefaultApplicationSettingOutput
    applicationArn: string
end

local record GetDirectQueryDataSourceInput
    DataSourceName: string
end

local record GetDirectQueryDataSourceOutput
    DataSourceName: string
    DataSourceType: DirectQueryDataSourceType
    Description: string
    OpenSearchArns: {string}
    DataSourceAccessPolicy: string
    DataSourceArn: string
end

local record GetDomainMaintenanceStatusInput
    DomainName: string
    MaintenanceId: string
end

local record GetDomainMaintenanceStatusOutput
    Status: string
    StatusMessage: string
    NodeId: string
    Action: string
    CreatedAt: number
    UpdatedAt: number
end

local record GetIndexInput
    DomainName: string
    IndexName: string
end

local record GetIndexOutput
    IndexSchema: any
end

local record GetPackageVersionHistoryInput
    PackageID: string
    MaxResults: number
    NextToken: string
end

local record GetPackageVersionHistoryOutput
    PackageID: string
    PackageVersionHistoryList: {PackageVersionHistory}
    NextToken: string
end

local record GetUpgradeHistoryInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record GetUpgradeHistoryOutput
    UpgradeHistories: {UpgradeHistory}
    NextToken: string
end

local record GetUpgradeStatusInput
    DomainName: string
end

local record GetUpgradeStatusOutput
    UpgradeStep: string
    StepStatus: string
    UpgradeName: string
end

local record ListApplicationsInput
    nextToken: string
    statuses: {string}
    maxResults: number
end

local record ListApplicationsOutput
    ApplicationSummaries: {ApplicationSummary}
    nextToken: string
end

local record ListDataSourcesInput
    DomainName: string
end

local record ListDataSourcesOutput
    DataSources: {DataSourceDetails}
end

local record ListDirectQueryDataSourcesInput
    NextToken: string
end

local record ListDirectQueryDataSourcesOutput
    NextToken: string
    DirectQueryDataSources: {DirectQueryDataSource}
end

local record ListDomainMaintenancesInput
    DomainName: string
    Action: string
    Status: string
    MaxResults: number
    NextToken: string
end

local record ListDomainMaintenancesOutput
    DomainMaintenances: {DomainMaintenanceDetails}
    NextToken: string
end

local record ListDomainNamesInput
    EngineType: string
end

local record ListDomainNamesOutput
    DomainNames: {DomainInfo}
end

local record ListDomainsForPackageInput
    PackageID: string
    MaxResults: number
    NextToken: string
end

local record ListDomainsForPackageOutput
    DomainPackageDetailsList: {DomainPackageDetails}
    NextToken: string
end

local record ListInsightsInput
    Entity: InsightEntity
    TimeRange: InsightTimeRange
    SortOrder: string
    MaxResults: number
    NextToken: string
end

local record ListInsightsOutput
    Insights: {Insight}
    NextToken: string
end

local record ListInstanceTypeDetailsInput
    EngineVersion: string
    DomainName: string
    MaxResults: number
    NextToken: string
    RetrieveAZs: boolean
    InstanceType: string
end

local record ListInstanceTypeDetailsOutput
    InstanceTypeDetails: {InstanceTypeDetails}
    NextToken: string
end

local record ListPackagesForDomainInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListPackagesForDomainOutput
    DomainPackageDetailsList: {DomainPackageDetails}
    NextToken: string
end

local record ListScheduledActionsInput
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListScheduledActionsOutput
    ScheduledActions: {ScheduledAction}
    NextToken: string
end

local record ListTagsInput
    ARN: string
end

local record ListTagsOutput
    TagList: {Tag}
end

local record ListVersionsInput
    MaxResults: number
    NextToken: string
end

local record ListVersionsOutput
    Versions: {string}
    NextToken: string
end

local record ListVpcEndpointAccessInput
    DomainName: string
    NextToken: string
end

local record ListVpcEndpointAccessOutput
    AuthorizedPrincipalList: {AuthorizedPrincipal}
    NextToken: string
end

local record ListVpcEndpointsInput
    NextToken: string
end

local record ListVpcEndpointsOutput
    VpcEndpointSummaryList: {VpcEndpointSummary}
    NextToken: string
end

local record ListVpcEndpointsForDomainInput
    DomainName: string
    NextToken: string
end

local record ListVpcEndpointsForDomainOutput
    VpcEndpointSummaryList: {VpcEndpointSummary}
    NextToken: string
end

local record PurchaseReservedInstanceOfferingInput
    ReservedInstanceOfferingId: string
    ReservationName: string
    InstanceCount: number
end

local record PurchaseReservedInstanceOfferingOutput
    ReservedInstanceId: string
    ReservationName: string
end

local record PutDefaultApplicationSettingInput
    applicationArn: string
    setAsDefault: boolean
end

local record PutDefaultApplicationSettingOutput
    applicationArn: string
end

local record RegisterCapabilityInput
    applicationId: string
    capabilityName: string
    capabilityConfig: CapabilityBaseRequestConfig
end

local record RegisterCapabilityOutput
    capabilityName: string
    applicationId: string
    status: string
    capabilityConfig: CapabilityBaseResponseConfig
end

local record RejectInboundConnectionInput
    ConnectionId: string
end

local record RejectInboundConnectionOutput
    Connection: InboundConnection
end

local record RemoveTagsInput
    ARN: string
    TagKeys: {string}
end

local record RemoveTagsOutput
end

local record RevokeVpcEndpointAccessInput
    DomainName: string
    Account: string
    Service: string
    ServiceOptions: ServiceOptions
end

local record RevokeVpcEndpointAccessOutput
end

local record RollbackServiceSoftwareUpdateInput
    DomainName: string
end

local record RollbackServiceSoftwareUpdateOutput
    RollbackServiceSoftwareOptions: RollbackServiceSoftwareOptions
end

local record StartDomainMaintenanceInput
    DomainName: string
    Action: string
    NodeId: string
end

local record StartDomainMaintenanceOutput
    MaintenanceId: string
end

local record StartServiceSoftwareUpdateInput
    DomainName: string
    ScheduleAt: string
    DesiredStartTime: number
end

local record StartServiceSoftwareUpdateOutput
    ServiceSoftwareOptions: ServiceSoftwareOptions
end

local record UpdateApplicationInput
    id: string
    dataSources: {DataSource}
    appConfigs: {AppConfig}
end

local record UpdateApplicationOutput
    id: string
    name: string
    arn: string
    dataSources: {DataSource}
    iamIdentityCenterOptions: IamIdentityCenterOptions
    appConfigs: {AppConfig}
    createdAt: number
    lastUpdatedAt: number
end

local record UpdateDataSourceInput
    DomainName: string
    Name: string
    DataSourceType: DataSourceType
    Description: string
    Status: string
end

local record UpdateDataSourceOutput
    Message: string
end

local record UpdateDirectQueryDataSourceInput
    DataSourceName: string
    DataSourceType: DirectQueryDataSourceType
    Description: string
    OpenSearchArns: {string}
    DataSourceAccessPolicy: string
end

local record UpdateDirectQueryDataSourceOutput
    DataSourceArn: string
end

local record UpdateDomainConfigInput
    DomainName: string
    ClusterConfig: ClusterConfig
    EBSOptions: EBSOptions
    SnapshotOptions: SnapshotOptions
    VPCOptions: VPCOptions
    CognitoOptions: CognitoOptions
    AdvancedOptions: {string : string}
    AccessPolicies: string
    IPAddressType: string
    LogPublishingOptions: {string : LogPublishingOption}
    EncryptionAtRestOptions: EncryptionAtRestOptions
    DomainEndpointOptions: DomainEndpointOptions
    NodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions
    AdvancedSecurityOptions: AdvancedSecurityOptionsInput
    IdentityCenterOptions: IdentityCenterOptionsInput
    AutoTuneOptions: AutoTuneOptions
    DryRun: boolean
    DryRunMode: string
    OffPeakWindowOptions: OffPeakWindowOptions
    SoftwareUpdateOptions: SoftwareUpdateOptions
    AIMLOptions: AIMLOptionsInput
    DeploymentStrategyOptions: DeploymentStrategyOptions
end

local record UpdateDomainConfigOutput
    DomainConfig: DomainConfig
    DryRunResults: DryRunResults
    DryRunProgressStatus: DryRunProgressStatus
end

local record UpdateIndexInput
    DomainName: string
    IndexName: string
    IndexSchema: any
end

local record UpdateIndexOutput
    Status: string
end

local record UpdatePackageInput
    PackageID: string
    PackageSource: PackageSource
    PackageDescription: string
    CommitMessage: string
    PackageConfiguration: PackageConfiguration
    PackageEncryptionOptions: PackageEncryptionOptions
end

local record UpdatePackageOutput
    PackageDetails: PackageDetails
end

local record UpdatePackageScopeInput
    PackageID: string
    Operation: string
    PackageUserList: {string}
end

local record UpdatePackageScopeOutput
    PackageID: string
    Operation: string
    PackageUserList: {string}
end

local record UpdateScheduledActionInput
    DomainName: string
    ActionID: string
    ActionType: string
    ScheduleAt: string
    DesiredStartTime: number
end

local record UpdateScheduledActionOutput
    ScheduledAction: ScheduledAction
end

local record UpdateVpcEndpointInput
    VpcEndpointId: string
    VpcOptions: VPCOptions
end

local record UpdateVpcEndpointOutput
    VpcEndpoint: VpcEndpoint
end

local record UpgradeDomainInput
    DomainName: string
    TargetVersion: string
    PerformCheckOnly: boolean
    AdvancedOptions: {string : string}
end

local record UpgradeDomainOutput
    UpgradeId: string
    DomainName: string
    TargetVersion: string
    PerformCheckOnly: boolean
    AdvancedOptions: {string : string}
    ChangeProgressDetails: ChangeProgressDetails
end

local record DisabledOperationException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record BaseException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidTypeException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceAlreadyExistsException
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

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record InvalidTypeException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record DisabledOperationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record DisabledOperationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record InvalidTypeException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
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

local record InternalException
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

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record DisabledOperationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record InvalidTypeException
    message: string
end

local record LimitExceededException
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

local record DependencyFailureException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
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

local record BaseException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SlotNotAvailableException
    SlotSuggestions: {number}
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record ConflictException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record BaseException
    message: string
end

local record DisabledOperationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local type ScheduleAt = "NOW" | "TIMESTAMP" | "OFF_PEAK_WINDOW"

local type OpenSearchPartitionInstanceType = "m3.medium.search" | "m3.large.search" | "m3.xlarge.search" | "m3.2xlarge.search" | "m4.large.search" | "m4.xlarge.search" | "m4.2xlarge.search" | "m4.4xlarge.search" | "m4.10xlarge.search" | "m5.large.search" | "m5.xlarge.search" | "m5.2xlarge.search" | "m5.4xlarge.search" | "m5.12xlarge.search" | "m5.24xlarge.search" | "r5.large.search" | "r5.xlarge.search" | "r5.2xlarge.search" | "r5.4xlarge.search" | "r5.12xlarge.search" | "r5.24xlarge.search" | "c5.large.search" | "c5.xlarge.search" | "c5.2xlarge.search" | "c5.4xlarge.search" | "c5.9xlarge.search" | "c5.18xlarge.search" | "t3.nano.search" | "t3.micro.search" | "t3.small.search" | "t3.medium.search" | "t3.large.search" | "t3.xlarge.search" | "t3.2xlarge.search" | "or1.medium.search" | "or1.large.search" | "or1.xlarge.search" | "or1.2xlarge.search" | "or1.4xlarge.search" | "or1.8xlarge.search" | "or1.12xlarge.search" | "or1.16xlarge.search" | "ultrawarm1.medium.search" | "ultrawarm1.large.search" | "ultrawarm1.xlarge.search" | "t2.micro.search" | "t2.small.search" | "t2.medium.search" | "r3.large.search" | "r3.xlarge.search" | "r3.2xlarge.search" | "r3.4xlarge.search" | "r3.8xlarge.search" | "i2.xlarge.search" | "i2.2xlarge.search" | "d2.xlarge.search" | "d2.2xlarge.search" | "d2.4xlarge.search" | "d2.8xlarge.search" | "c4.large.search" | "c4.xlarge.search" | "c4.2xlarge.search" | "c4.4xlarge.search" | "c4.8xlarge.search" | "r4.large.search" | "r4.xlarge.search" | "r4.2xlarge.search" | "r4.4xlarge.search" | "r4.8xlarge.search" | "r4.16xlarge.search" | "i3.large.search" | "i3.xlarge.search" | "i3.2xlarge.search" | "i3.4xlarge.search" | "i3.8xlarge.search" | "i3.16xlarge.search" | "r6g.large.search" | "r6g.xlarge.search" | "r6g.2xlarge.search" | "r6g.4xlarge.search" | "r6g.8xlarge.search" | "r6g.12xlarge.search" | "m6g.large.search" | "m6g.xlarge.search" | "m6g.2xlarge.search" | "m6g.4xlarge.search" | "m6g.8xlarge.search" | "m6g.12xlarge.search" | "c6g.large.search" | "c6g.xlarge.search" | "c6g.2xlarge.search" | "c6g.4xlarge.search" | "c6g.8xlarge.search" | "c6g.12xlarge.search" | "r6gd.large.search" | "r6gd.xlarge.search" | "r6gd.2xlarge.search" | "r6gd.4xlarge.search" | "r6gd.8xlarge.search" | "r6gd.12xlarge.search" | "r6gd.16xlarge.search" | "t4g.small.search" | "t4g.medium.search"

local type IndexStatus = "CREATED" | "UPDATED" | "DELETED"

local type UpgradeStatus = "IN_PROGRESS" | "SUCCEEDED" | "SUCCEEDED_WITH_ISSUES" | "FAILED"

local type MaintenanceStatus = "PENDING" | "IN_PROGRESS" | "COMPLETED" | "FAILED" | "TIMED_OUT"

local type IPAddressType = "ipv4" | "dualstack"

local type ActionType = "SERVICE_SOFTWARE_UPDATE" | "JVM_HEAP_SIZE_TUNING" | "JVM_YOUNG_GEN_TUNING"

local type ApplicationStatus = "CREATING" | "UPDATING" | "DELETING" | "ACTIVE" | "FAILED"

local type PackageType = "TXT-DICTIONARY" | "ZIP-PLUGIN" | "PACKAGE-LICENSE" | "PACKAGE-CONFIG"

local type MasterNodeStatus = "Available" | "UnAvailable"

local type DomainState = "Active" | "Processing" | "NotAvailable"

local type EngineType = "OpenSearch" | "Elasticsearch"

local type DataSourceStatus = "ACTIVE" | "DISABLED"

local type PackageScopeOperationEnum = "ADD" | "OVERRIDE" | "REMOVE"

local type InsightSortOrder = "ASC" | "DESC"

local type MaintenanceType = "REBOOT_NODE" | "RESTART_SEARCH_PROCESS" | "RESTART_DASHBOARD"

local type DryRunMode = "Basic" | "Verbose"

local type AWSServicePrincipal = "application.opensearchservice.amazonaws.com"

local type ConnectionMode = "DIRECT" | "VPC_ENDPOINT"

local type UpgradeStep = "PRE_UPGRADE_CHECK" | "SNAPSHOT" | "UPGRADE"

local type CapabilityStatus = "creating" | "create_failed" | "active" | "updating" | "update_failed" | "deleting" | "delete_failed"

local type DomainHealth = "Red" | "Yellow" | "Green" | "NotAvailable"

local record M
    AcceptInboundConnectionInput: AcceptInboundConnectionInput
    AcceptInboundConnectionOutput: AcceptInboundConnectionOutput
    AddDataSourceInput: AddDataSourceInput
    AddDataSourceOutput: AddDataSourceOutput
    AddDirectQueryDataSourceInput: AddDirectQueryDataSourceInput
    AddDirectQueryDataSourceOutput: AddDirectQueryDataSourceOutput
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    AssociatePackageInput: AssociatePackageInput
    AssociatePackageOutput: AssociatePackageOutput
    AssociatePackagesInput: AssociatePackagesInput
    AssociatePackagesOutput: AssociatePackagesOutput
    AuthorizeVpcEndpointAccessInput: AuthorizeVpcEndpointAccessInput
    AuthorizeVpcEndpointAccessOutput: AuthorizeVpcEndpointAccessOutput
    CancelDomainConfigChangeInput: CancelDomainConfigChangeInput
    CancelDomainConfigChangeOutput: CancelDomainConfigChangeOutput
    CancelServiceSoftwareUpdateInput: CancelServiceSoftwareUpdateInput
    CancelServiceSoftwareUpdateOutput: CancelServiceSoftwareUpdateOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateIndexInput: CreateIndexInput
    CreateIndexOutput: CreateIndexOutput
    CreateOutboundConnectionInput: CreateOutboundConnectionInput
    CreateOutboundConnectionOutput: CreateOutboundConnectionOutput
    CreatePackageInput: CreatePackageInput
    CreatePackageOutput: CreatePackageOutput
    CreateVpcEndpointInput: CreateVpcEndpointInput
    CreateVpcEndpointOutput: CreateVpcEndpointOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteDirectQueryDataSourceInput: DeleteDirectQueryDataSourceInput
    DeleteDirectQueryDataSourceOutput: DeleteDirectQueryDataSourceOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteInboundConnectionInput: DeleteInboundConnectionInput
    DeleteInboundConnectionOutput: DeleteInboundConnectionOutput
    DeleteIndexInput: DeleteIndexInput
    DeleteIndexOutput: DeleteIndexOutput
    DeleteOutboundConnectionInput: DeleteOutboundConnectionInput
    DeleteOutboundConnectionOutput: DeleteOutboundConnectionOutput
    DeletePackageInput: DeletePackageInput
    DeletePackageOutput: DeletePackageOutput
    DeleteVpcEndpointInput: DeleteVpcEndpointInput
    DeleteVpcEndpointOutput: DeleteVpcEndpointOutput
    DeregisterCapabilityInput: DeregisterCapabilityInput
    DeregisterCapabilityOutput: DeregisterCapabilityOutput
    DescribeDomainInput: DescribeDomainInput
    DescribeDomainOutput: DescribeDomainOutput
    DescribeDomainAutoTunesInput: DescribeDomainAutoTunesInput
    DescribeDomainAutoTunesOutput: DescribeDomainAutoTunesOutput
    DescribeDomainChangeProgressInput: DescribeDomainChangeProgressInput
    DescribeDomainChangeProgressOutput: DescribeDomainChangeProgressOutput
    DescribeDomainConfigInput: DescribeDomainConfigInput
    DescribeDomainConfigOutput: DescribeDomainConfigOutput
    DescribeDomainHealthInput: DescribeDomainHealthInput
    DescribeDomainHealthOutput: DescribeDomainHealthOutput
    DescribeDomainNodesInput: DescribeDomainNodesInput
    DescribeDomainNodesOutput: DescribeDomainNodesOutput
    DescribeDomainsInput: DescribeDomainsInput
    DescribeDomainsOutput: DescribeDomainsOutput
    DescribeDryRunProgressInput: DescribeDryRunProgressInput
    DescribeDryRunProgressOutput: DescribeDryRunProgressOutput
    DescribeInboundConnectionsInput: DescribeInboundConnectionsInput
    DescribeInboundConnectionsOutput: DescribeInboundConnectionsOutput
    DescribeInsightDetailsInput: DescribeInsightDetailsInput
    DescribeInsightDetailsOutput: DescribeInsightDetailsOutput
    DescribeInstanceTypeLimitsInput: DescribeInstanceTypeLimitsInput
    DescribeInstanceTypeLimitsOutput: DescribeInstanceTypeLimitsOutput
    DescribeOutboundConnectionsInput: DescribeOutboundConnectionsInput
    DescribeOutboundConnectionsOutput: DescribeOutboundConnectionsOutput
    DescribePackagesInput: DescribePackagesInput
    DescribePackagesOutput: DescribePackagesOutput
    DescribeReservedInstanceOfferingsInput: DescribeReservedInstanceOfferingsInput
    DescribeReservedInstanceOfferingsOutput: DescribeReservedInstanceOfferingsOutput
    DescribeReservedInstancesInput: DescribeReservedInstancesInput
    DescribeReservedInstancesOutput: DescribeReservedInstancesOutput
    DescribeVpcEndpointsInput: DescribeVpcEndpointsInput
    DescribeVpcEndpointsOutput: DescribeVpcEndpointsOutput
    DissociatePackageInput: DissociatePackageInput
    DissociatePackageOutput: DissociatePackageOutput
    DissociatePackagesInput: DissociatePackagesInput
    DissociatePackagesOutput: DissociatePackagesOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetCapabilityInput: GetCapabilityInput
    GetCapabilityOutput: GetCapabilityOutput
    GetCompatibleVersionsInput: GetCompatibleVersionsInput
    GetCompatibleVersionsOutput: GetCompatibleVersionsOutput
    GetDataSourceInput: GetDataSourceInput
    GetDataSourceOutput: GetDataSourceOutput
    GetDefaultApplicationSettingInput: GetDefaultApplicationSettingInput
    GetDefaultApplicationSettingOutput: GetDefaultApplicationSettingOutput
    GetDirectQueryDataSourceInput: GetDirectQueryDataSourceInput
    GetDirectQueryDataSourceOutput: GetDirectQueryDataSourceOutput
    GetDomainMaintenanceStatusInput: GetDomainMaintenanceStatusInput
    GetDomainMaintenanceStatusOutput: GetDomainMaintenanceStatusOutput
    GetIndexInput: GetIndexInput
    GetIndexOutput: GetIndexOutput
    GetPackageVersionHistoryInput: GetPackageVersionHistoryInput
    GetPackageVersionHistoryOutput: GetPackageVersionHistoryOutput
    GetUpgradeHistoryInput: GetUpgradeHistoryInput
    GetUpgradeHistoryOutput: GetUpgradeHistoryOutput
    GetUpgradeStatusInput: GetUpgradeStatusInput
    GetUpgradeStatusOutput: GetUpgradeStatusOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListDataSourcesInput: ListDataSourcesInput
    ListDataSourcesOutput: ListDataSourcesOutput
    ListDirectQueryDataSourcesInput: ListDirectQueryDataSourcesInput
    ListDirectQueryDataSourcesOutput: ListDirectQueryDataSourcesOutput
    ListDomainMaintenancesInput: ListDomainMaintenancesInput
    ListDomainMaintenancesOutput: ListDomainMaintenancesOutput
    ListDomainNamesInput: ListDomainNamesInput
    ListDomainNamesOutput: ListDomainNamesOutput
    ListDomainsForPackageInput: ListDomainsForPackageInput
    ListDomainsForPackageOutput: ListDomainsForPackageOutput
    ListInsightsInput: ListInsightsInput
    ListInsightsOutput: ListInsightsOutput
    ListInstanceTypeDetailsInput: ListInstanceTypeDetailsInput
    ListInstanceTypeDetailsOutput: ListInstanceTypeDetailsOutput
    ListPackagesForDomainInput: ListPackagesForDomainInput
    ListPackagesForDomainOutput: ListPackagesForDomainOutput
    ListScheduledActionsInput: ListScheduledActionsInput
    ListScheduledActionsOutput: ListScheduledActionsOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ListVersionsInput: ListVersionsInput
    ListVersionsOutput: ListVersionsOutput
    ListVpcEndpointAccessInput: ListVpcEndpointAccessInput
    ListVpcEndpointAccessOutput: ListVpcEndpointAccessOutput
    ListVpcEndpointsInput: ListVpcEndpointsInput
    ListVpcEndpointsOutput: ListVpcEndpointsOutput
    ListVpcEndpointsForDomainInput: ListVpcEndpointsForDomainInput
    ListVpcEndpointsForDomainOutput: ListVpcEndpointsForDomainOutput
    PurchaseReservedInstanceOfferingInput: PurchaseReservedInstanceOfferingInput
    PurchaseReservedInstanceOfferingOutput: PurchaseReservedInstanceOfferingOutput
    PutDefaultApplicationSettingInput: PutDefaultApplicationSettingInput
    PutDefaultApplicationSettingOutput: PutDefaultApplicationSettingOutput
    RegisterCapabilityInput: RegisterCapabilityInput
    RegisterCapabilityOutput: RegisterCapabilityOutput
    RejectInboundConnectionInput: RejectInboundConnectionInput
    RejectInboundConnectionOutput: RejectInboundConnectionOutput
    RemoveTagsInput: RemoveTagsInput
    RemoveTagsOutput: RemoveTagsOutput
    RevokeVpcEndpointAccessInput: RevokeVpcEndpointAccessInput
    RevokeVpcEndpointAccessOutput: RevokeVpcEndpointAccessOutput
    RollbackServiceSoftwareUpdateInput: RollbackServiceSoftwareUpdateInput
    RollbackServiceSoftwareUpdateOutput: RollbackServiceSoftwareUpdateOutput
    StartDomainMaintenanceInput: StartDomainMaintenanceInput
    StartDomainMaintenanceOutput: StartDomainMaintenanceOutput
    StartServiceSoftwareUpdateInput: StartServiceSoftwareUpdateInput
    StartServiceSoftwareUpdateOutput: StartServiceSoftwareUpdateOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateDirectQueryDataSourceInput: UpdateDirectQueryDataSourceInput
    UpdateDirectQueryDataSourceOutput: UpdateDirectQueryDataSourceOutput
    UpdateDomainConfigInput: UpdateDomainConfigInput
    UpdateDomainConfigOutput: UpdateDomainConfigOutput
    UpdateIndexInput: UpdateIndexInput
    UpdateIndexOutput: UpdateIndexOutput
    UpdatePackageInput: UpdatePackageInput
    UpdatePackageOutput: UpdatePackageOutput
    UpdatePackageScopeInput: UpdatePackageScopeInput
    UpdatePackageScopeOutput: UpdatePackageScopeOutput
    UpdateScheduledActionInput: UpdateScheduledActionInput
    UpdateScheduledActionOutput: UpdateScheduledActionOutput
    UpdateVpcEndpointInput: UpdateVpcEndpointInput
    UpdateVpcEndpointOutput: UpdateVpcEndpointOutput
    UpgradeDomainInput: UpgradeDomainInput
    UpgradeDomainOutput: UpgradeDomainOutput
end

return M
