local record AcceptInboundCrossClusterSearchConnectionInput
    CrossClusterSearchConnectionId: string
end

local record AcceptInboundCrossClusterSearchConnectionOutput
    CrossClusterSearchConnection: InboundCrossClusterSearchConnection
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
end

local record AssociatePackageOutput
    DomainPackageDetails: DomainPackageDetails
end

local record AuthorizeVpcEndpointAccessInput
    DomainName: string
    Account: string
end

local record AuthorizeVpcEndpointAccessOutput
    AuthorizedPrincipal: AuthorizedPrincipal
end

local record CancelDomainConfigChangeInput
    DomainName: string
    DryRun: boolean
end

local record CancelDomainConfigChangeOutput
    DryRun: boolean
    CancelledChangeIds: {string}
    CancelledChangeProperties: {CancelledChangeProperty}
end

local record CancelElasticsearchServiceSoftwareUpdateInput
    DomainName: string
end

local record CancelElasticsearchServiceSoftwareUpdateOutput
    ServiceSoftwareOptions: ServiceSoftwareOptions
end

local record CreateElasticsearchDomainInput
    DomainName: string
    ElasticsearchVersion: string
    ElasticsearchClusterConfig: ElasticsearchClusterConfig
    EBSOptions: EBSOptions
    AccessPolicies: string
    SnapshotOptions: SnapshotOptions
    VPCOptions: VPCOptions
    CognitoOptions: CognitoOptions
    EncryptionAtRestOptions: EncryptionAtRestOptions
    NodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions
    AdvancedOptions: {string : string}
    LogPublishingOptions: {string : LogPublishingOption}
    DomainEndpointOptions: DomainEndpointOptions
    AdvancedSecurityOptions: AdvancedSecurityOptionsInput
    AutoTuneOptions: AutoTuneOptionsInput
    TagList: {Tag}
    DeploymentStrategyOptions: DeploymentStrategyOptions
end

local record CreateElasticsearchDomainOutput
    DomainStatus: ElasticsearchDomainStatus
end

local record CreateOutboundCrossClusterSearchConnectionInput
    SourceDomainInfo: DomainInformation
    DestinationDomainInfo: DomainInformation
    ConnectionAlias: string
end

local record CreateOutboundCrossClusterSearchConnectionOutput
    SourceDomainInfo: DomainInformation
    DestinationDomainInfo: DomainInformation
    ConnectionAlias: string
    ConnectionStatus: OutboundCrossClusterSearchConnectionStatus
    CrossClusterSearchConnectionId: string
end

local record CreatePackageInput
    PackageName: string
    PackageType: string
    PackageDescription: string
    PackageSource: PackageSource
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

local record DeleteElasticsearchDomainInput
    DomainName: string
end

local record DeleteElasticsearchDomainOutput
    DomainStatus: ElasticsearchDomainStatus
end

local record DeleteElasticsearchServiceRoleInput
end

local record DeleteElasticsearchServiceRoleOutput
end

local record DeleteInboundCrossClusterSearchConnectionInput
    CrossClusterSearchConnectionId: string
end

local record DeleteInboundCrossClusterSearchConnectionOutput
    CrossClusterSearchConnection: InboundCrossClusterSearchConnection
end

local record DeleteOutboundCrossClusterSearchConnectionInput
    CrossClusterSearchConnectionId: string
end

local record DeleteOutboundCrossClusterSearchConnectionOutput
    CrossClusterSearchConnection: OutboundCrossClusterSearchConnection
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

local record DescribeElasticsearchDomainInput
    DomainName: string
end

local record DescribeElasticsearchDomainOutput
    DomainStatus: ElasticsearchDomainStatus
end

local record DescribeElasticsearchDomainConfigInput
    DomainName: string
end

local record DescribeElasticsearchDomainConfigOutput
    DomainConfig: ElasticsearchDomainConfig
end

local record DescribeElasticsearchDomainsInput
    DomainNames: {string}
end

local record DescribeElasticsearchDomainsOutput
    DomainStatusList: {ElasticsearchDomainStatus}
end

local record DescribeElasticsearchInstanceTypeLimitsInput
    DomainName: string
    InstanceType: string
    ElasticsearchVersion: string
end

local record DescribeElasticsearchInstanceTypeLimitsOutput
    LimitsByRole: {string : Limits}
end

local record DescribeInboundCrossClusterSearchConnectionsInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeInboundCrossClusterSearchConnectionsOutput
    CrossClusterSearchConnections: {InboundCrossClusterSearchConnection}
    NextToken: string
end

local record DescribeOutboundCrossClusterSearchConnectionsInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeOutboundCrossClusterSearchConnectionsOutput
    CrossClusterSearchConnections: {OutboundCrossClusterSearchConnection}
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

local record DescribeReservedElasticsearchInstanceOfferingsInput
    ReservedElasticsearchInstanceOfferingId: string
    MaxResults: number
    NextToken: string
end

local record DescribeReservedElasticsearchInstanceOfferingsOutput
    NextToken: string
    ReservedElasticsearchInstanceOfferings: {ReservedElasticsearchInstanceOffering}
end

local record DescribeReservedElasticsearchInstancesInput
    ReservedElasticsearchInstanceId: string
    MaxResults: number
    NextToken: string
end

local record DescribeReservedElasticsearchInstancesOutput
    NextToken: string
    ReservedElasticsearchInstances: {ReservedElasticsearchInstance}
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

local record GetCompatibleElasticsearchVersionsInput
    DomainName: string
end

local record GetCompatibleElasticsearchVersionsOutput
    CompatibleElasticsearchVersions: {CompatibleVersionsMap}
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

local record ListElasticsearchInstanceTypesInput
    ElasticsearchVersion: string
    DomainName: string
    MaxResults: number
    NextToken: string
end

local record ListElasticsearchInstanceTypesOutput
    ElasticsearchInstanceTypes: {string}
    NextToken: string
end

local record ListElasticsearchVersionsInput
    MaxResults: number
    NextToken: string
end

local record ListElasticsearchVersionsOutput
    ElasticsearchVersions: {string}
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

local record ListTagsInput
    ARN: string
end

local record ListTagsOutput
    TagList: {Tag}
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

local record PurchaseReservedElasticsearchInstanceOfferingInput
    ReservedElasticsearchInstanceOfferingId: string
    ReservationName: string
    InstanceCount: number
end

local record PurchaseReservedElasticsearchInstanceOfferingOutput
    ReservedElasticsearchInstanceId: string
    ReservationName: string
end

local record RejectInboundCrossClusterSearchConnectionInput
    CrossClusterSearchConnectionId: string
end

local record RejectInboundCrossClusterSearchConnectionOutput
    CrossClusterSearchConnection: InboundCrossClusterSearchConnection
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
end

local record RevokeVpcEndpointAccessOutput
end

local record StartElasticsearchServiceSoftwareUpdateInput
    DomainName: string
end

local record StartElasticsearchServiceSoftwareUpdateOutput
    ServiceSoftwareOptions: ServiceSoftwareOptions
end

local record UpdateElasticsearchDomainConfigInput
    DomainName: string
    ElasticsearchClusterConfig: ElasticsearchClusterConfig
    EBSOptions: EBSOptions
    SnapshotOptions: SnapshotOptions
    VPCOptions: VPCOptions
    CognitoOptions: CognitoOptions
    AdvancedOptions: {string : string}
    AccessPolicies: string
    LogPublishingOptions: {string : LogPublishingOption}
    DomainEndpointOptions: DomainEndpointOptions
    AdvancedSecurityOptions: AdvancedSecurityOptionsInput
    NodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions
    EncryptionAtRestOptions: EncryptionAtRestOptions
    AutoTuneOptions: AutoTuneOptions
    DryRun: boolean
    DeploymentStrategyOptions: DeploymentStrategyOptions
end

local record UpdateElasticsearchDomainConfigOutput
    DomainConfig: ElasticsearchDomainConfig
    DryRunResults: DryRunResults
end

local record UpdatePackageInput
    PackageID: string
    PackageSource: PackageSource
    PackageDescription: string
    CommitMessage: string
end

local record UpdatePackageOutput
    PackageDetails: PackageDetails
end

local record UpdateVpcEndpointInput
    VpcEndpointId: string
    VpcOptions: VPCOptions
end

local record UpdateVpcEndpointOutput
    VpcEndpoint: VpcEndpoint
end

local record UpgradeElasticsearchDomainInput
    DomainName: string
    TargetVersion: string
    PerformCheckOnly: boolean
end

local record UpgradeElasticsearchDomainOutput
    DomainName: string
    TargetVersion: string
    PerformCheckOnly: boolean
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

local record ValidationException
    message: string
end

local record DisabledOperationException
    message: string
end

local record ResourceNotFoundException
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

local record InternalException
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

local type UpgradeStatus = "IN_PROGRESS" | "SUCCEEDED" | "SUCCEEDED_WITH_ISSUES" | "FAILED"

local type UpgradeStep = "PRE_UPGRADE_CHECK" | "SNAPSHOT" | "UPGRADE"

local type EngineType = "OpenSearch" | "Elasticsearch"

local type PackageType = "TXT-DICTIONARY"

local type ESPartitionInstanceType = "m3.medium.elasticsearch" | "m3.large.elasticsearch" | "m3.xlarge.elasticsearch" | "m3.2xlarge.elasticsearch" | "m4.large.elasticsearch" | "m4.xlarge.elasticsearch" | "m4.2xlarge.elasticsearch" | "m4.4xlarge.elasticsearch" | "m4.10xlarge.elasticsearch" | "m5.large.elasticsearch" | "m5.xlarge.elasticsearch" | "m5.2xlarge.elasticsearch" | "m5.4xlarge.elasticsearch" | "m5.12xlarge.elasticsearch" | "r5.large.elasticsearch" | "r5.xlarge.elasticsearch" | "r5.2xlarge.elasticsearch" | "r5.4xlarge.elasticsearch" | "r5.12xlarge.elasticsearch" | "c5.large.elasticsearch" | "c5.xlarge.elasticsearch" | "c5.2xlarge.elasticsearch" | "c5.4xlarge.elasticsearch" | "c5.9xlarge.elasticsearch" | "c5.18xlarge.elasticsearch" | "ultrawarm1.medium.elasticsearch" | "ultrawarm1.large.elasticsearch" | "t2.micro.elasticsearch" | "t2.small.elasticsearch" | "t2.medium.elasticsearch" | "r3.large.elasticsearch" | "r3.xlarge.elasticsearch" | "r3.2xlarge.elasticsearch" | "r3.4xlarge.elasticsearch" | "r3.8xlarge.elasticsearch" | "i2.xlarge.elasticsearch" | "i2.2xlarge.elasticsearch" | "d2.xlarge.elasticsearch" | "d2.2xlarge.elasticsearch" | "d2.4xlarge.elasticsearch" | "d2.8xlarge.elasticsearch" | "c4.large.elasticsearch" | "c4.xlarge.elasticsearch" | "c4.2xlarge.elasticsearch" | "c4.4xlarge.elasticsearch" | "c4.8xlarge.elasticsearch" | "r4.large.elasticsearch" | "r4.xlarge.elasticsearch" | "r4.2xlarge.elasticsearch" | "r4.4xlarge.elasticsearch" | "r4.8xlarge.elasticsearch" | "r4.16xlarge.elasticsearch" | "i3.large.elasticsearch" | "i3.xlarge.elasticsearch" | "i3.2xlarge.elasticsearch" | "i3.4xlarge.elasticsearch" | "i3.8xlarge.elasticsearch" | "i3.16xlarge.elasticsearch"

local record M
    AcceptInboundCrossClusterSearchConnectionInput: AcceptInboundCrossClusterSearchConnectionInput
    AcceptInboundCrossClusterSearchConnectionOutput: AcceptInboundCrossClusterSearchConnectionOutput
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    AssociatePackageInput: AssociatePackageInput
    AssociatePackageOutput: AssociatePackageOutput
    AuthorizeVpcEndpointAccessInput: AuthorizeVpcEndpointAccessInput
    AuthorizeVpcEndpointAccessOutput: AuthorizeVpcEndpointAccessOutput
    CancelDomainConfigChangeInput: CancelDomainConfigChangeInput
    CancelDomainConfigChangeOutput: CancelDomainConfigChangeOutput
    CancelElasticsearchServiceSoftwareUpdateInput: CancelElasticsearchServiceSoftwareUpdateInput
    CancelElasticsearchServiceSoftwareUpdateOutput: CancelElasticsearchServiceSoftwareUpdateOutput
    CreateElasticsearchDomainInput: CreateElasticsearchDomainInput
    CreateElasticsearchDomainOutput: CreateElasticsearchDomainOutput
    CreateOutboundCrossClusterSearchConnectionInput: CreateOutboundCrossClusterSearchConnectionInput
    CreateOutboundCrossClusterSearchConnectionOutput: CreateOutboundCrossClusterSearchConnectionOutput
    CreatePackageInput: CreatePackageInput
    CreatePackageOutput: CreatePackageOutput
    CreateVpcEndpointInput: CreateVpcEndpointInput
    CreateVpcEndpointOutput: CreateVpcEndpointOutput
    DeleteElasticsearchDomainInput: DeleteElasticsearchDomainInput
    DeleteElasticsearchDomainOutput: DeleteElasticsearchDomainOutput
    DeleteElasticsearchServiceRoleInput: DeleteElasticsearchServiceRoleInput
    DeleteElasticsearchServiceRoleOutput: DeleteElasticsearchServiceRoleOutput
    DeleteInboundCrossClusterSearchConnectionInput: DeleteInboundCrossClusterSearchConnectionInput
    DeleteInboundCrossClusterSearchConnectionOutput: DeleteInboundCrossClusterSearchConnectionOutput
    DeleteOutboundCrossClusterSearchConnectionInput: DeleteOutboundCrossClusterSearchConnectionInput
    DeleteOutboundCrossClusterSearchConnectionOutput: DeleteOutboundCrossClusterSearchConnectionOutput
    DeletePackageInput: DeletePackageInput
    DeletePackageOutput: DeletePackageOutput
    DeleteVpcEndpointInput: DeleteVpcEndpointInput
    DeleteVpcEndpointOutput: DeleteVpcEndpointOutput
    DescribeDomainAutoTunesInput: DescribeDomainAutoTunesInput
    DescribeDomainAutoTunesOutput: DescribeDomainAutoTunesOutput
    DescribeDomainChangeProgressInput: DescribeDomainChangeProgressInput
    DescribeDomainChangeProgressOutput: DescribeDomainChangeProgressOutput
    DescribeElasticsearchDomainInput: DescribeElasticsearchDomainInput
    DescribeElasticsearchDomainOutput: DescribeElasticsearchDomainOutput
    DescribeElasticsearchDomainConfigInput: DescribeElasticsearchDomainConfigInput
    DescribeElasticsearchDomainConfigOutput: DescribeElasticsearchDomainConfigOutput
    DescribeElasticsearchDomainsInput: DescribeElasticsearchDomainsInput
    DescribeElasticsearchDomainsOutput: DescribeElasticsearchDomainsOutput
    DescribeElasticsearchInstanceTypeLimitsInput: DescribeElasticsearchInstanceTypeLimitsInput
    DescribeElasticsearchInstanceTypeLimitsOutput: DescribeElasticsearchInstanceTypeLimitsOutput
    DescribeInboundCrossClusterSearchConnectionsInput: DescribeInboundCrossClusterSearchConnectionsInput
    DescribeInboundCrossClusterSearchConnectionsOutput: DescribeInboundCrossClusterSearchConnectionsOutput
    DescribeOutboundCrossClusterSearchConnectionsInput: DescribeOutboundCrossClusterSearchConnectionsInput
    DescribeOutboundCrossClusterSearchConnectionsOutput: DescribeOutboundCrossClusterSearchConnectionsOutput
    DescribePackagesInput: DescribePackagesInput
    DescribePackagesOutput: DescribePackagesOutput
    DescribeReservedElasticsearchInstanceOfferingsInput: DescribeReservedElasticsearchInstanceOfferingsInput
    DescribeReservedElasticsearchInstanceOfferingsOutput: DescribeReservedElasticsearchInstanceOfferingsOutput
    DescribeReservedElasticsearchInstancesInput: DescribeReservedElasticsearchInstancesInput
    DescribeReservedElasticsearchInstancesOutput: DescribeReservedElasticsearchInstancesOutput
    DescribeVpcEndpointsInput: DescribeVpcEndpointsInput
    DescribeVpcEndpointsOutput: DescribeVpcEndpointsOutput
    DissociatePackageInput: DissociatePackageInput
    DissociatePackageOutput: DissociatePackageOutput
    GetCompatibleElasticsearchVersionsInput: GetCompatibleElasticsearchVersionsInput
    GetCompatibleElasticsearchVersionsOutput: GetCompatibleElasticsearchVersionsOutput
    GetPackageVersionHistoryInput: GetPackageVersionHistoryInput
    GetPackageVersionHistoryOutput: GetPackageVersionHistoryOutput
    GetUpgradeHistoryInput: GetUpgradeHistoryInput
    GetUpgradeHistoryOutput: GetUpgradeHistoryOutput
    GetUpgradeStatusInput: GetUpgradeStatusInput
    GetUpgradeStatusOutput: GetUpgradeStatusOutput
    ListDomainNamesInput: ListDomainNamesInput
    ListDomainNamesOutput: ListDomainNamesOutput
    ListDomainsForPackageInput: ListDomainsForPackageInput
    ListDomainsForPackageOutput: ListDomainsForPackageOutput
    ListElasticsearchInstanceTypesInput: ListElasticsearchInstanceTypesInput
    ListElasticsearchInstanceTypesOutput: ListElasticsearchInstanceTypesOutput
    ListElasticsearchVersionsInput: ListElasticsearchVersionsInput
    ListElasticsearchVersionsOutput: ListElasticsearchVersionsOutput
    ListPackagesForDomainInput: ListPackagesForDomainInput
    ListPackagesForDomainOutput: ListPackagesForDomainOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ListVpcEndpointAccessInput: ListVpcEndpointAccessInput
    ListVpcEndpointAccessOutput: ListVpcEndpointAccessOutput
    ListVpcEndpointsInput: ListVpcEndpointsInput
    ListVpcEndpointsOutput: ListVpcEndpointsOutput
    ListVpcEndpointsForDomainInput: ListVpcEndpointsForDomainInput
    ListVpcEndpointsForDomainOutput: ListVpcEndpointsForDomainOutput
    PurchaseReservedElasticsearchInstanceOfferingInput: PurchaseReservedElasticsearchInstanceOfferingInput
    PurchaseReservedElasticsearchInstanceOfferingOutput: PurchaseReservedElasticsearchInstanceOfferingOutput
    RejectInboundCrossClusterSearchConnectionInput: RejectInboundCrossClusterSearchConnectionInput
    RejectInboundCrossClusterSearchConnectionOutput: RejectInboundCrossClusterSearchConnectionOutput
    RemoveTagsInput: RemoveTagsInput
    RemoveTagsOutput: RemoveTagsOutput
    RevokeVpcEndpointAccessInput: RevokeVpcEndpointAccessInput
    RevokeVpcEndpointAccessOutput: RevokeVpcEndpointAccessOutput
    StartElasticsearchServiceSoftwareUpdateInput: StartElasticsearchServiceSoftwareUpdateInput
    StartElasticsearchServiceSoftwareUpdateOutput: StartElasticsearchServiceSoftwareUpdateOutput
    UpdateElasticsearchDomainConfigInput: UpdateElasticsearchDomainConfigInput
    UpdateElasticsearchDomainConfigOutput: UpdateElasticsearchDomainConfigOutput
    UpdatePackageInput: UpdatePackageInput
    UpdatePackageOutput: UpdatePackageOutput
    UpdateVpcEndpointInput: UpdateVpcEndpointInput
    UpdateVpcEndpointOutput: UpdateVpcEndpointOutput
    UpgradeElasticsearchDomainInput: UpgradeElasticsearchDomainInput
    UpgradeElasticsearchDomainOutput: UpgradeElasticsearchDomainOutput
end

return M
