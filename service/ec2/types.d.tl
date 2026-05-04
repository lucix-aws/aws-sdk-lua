local record AcceptAddressTransferInput
    Address: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record AcceptAddressTransferOutput
    AddressTransfer: AddressTransfer
end

local record AcceptCapacityReservationBillingOwnershipInput
    DryRun: boolean
    CapacityReservationId: string
end

local record AcceptCapacityReservationBillingOwnershipOutput
    Return: boolean
end

local record AcceptReservedInstancesExchangeQuoteInput
    DryRun: boolean
    ReservedInstanceIds: {string}
    TargetConfigurations: {TargetConfigurationRequest}
end

local record AcceptReservedInstancesExchangeQuoteOutput
    ExchangeId: string
end

local record AcceptTransitGatewayClientVpnAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record AcceptTransitGatewayClientVpnAttachmentOutput
    TransitGatewayClientVpnAttachment: TransitGatewayClientVpnAttachment
end

local record AcceptTransitGatewayMulticastDomainAssociationsInput
    TransitGatewayMulticastDomainId: string
    TransitGatewayAttachmentId: string
    SubnetIds: {string}
    DryRun: boolean
end

local record AcceptTransitGatewayMulticastDomainAssociationsOutput
    Associations: TransitGatewayMulticastDomainAssociations
end

local record AcceptTransitGatewayPeeringAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record AcceptTransitGatewayPeeringAttachmentOutput
    TransitGatewayPeeringAttachment: TransitGatewayPeeringAttachment
end

local record AcceptTransitGatewayVpcAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record AcceptTransitGatewayVpcAttachmentOutput
    TransitGatewayVpcAttachment: TransitGatewayVpcAttachment
end

local record AcceptVpcEndpointConnectionsInput
    DryRun: boolean
    ServiceId: string
    VpcEndpointIds: {string}
end

local record AcceptVpcEndpointConnectionsOutput
    Unsuccessful: {UnsuccessfulItem}
end

local record AcceptVpcPeeringConnectionInput
    DryRun: boolean
    VpcPeeringConnectionId: string
end

local record AcceptVpcPeeringConnectionOutput
    VpcPeeringConnection: VpcPeeringConnection
end

local record AdvertiseByoipCidrInput
    Cidr: string
    Asn: string
    DryRun: boolean
    NetworkBorderGroup: string
end

local record AdvertiseByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local record AllocateAddressInput
    Domain: string
    Address: string
    PublicIpv4Pool: string
    NetworkBorderGroup: string
    CustomerOwnedIpv4Pool: string
    TagSpecifications: {TagSpecification}
    IpamPoolId: string
    DryRun: boolean
end

local record AllocateAddressOutput
    AllocationId: string
    PublicIpv4Pool: string
    NetworkBorderGroup: string
    Domain: string
    CustomerOwnedIp: string
    CustomerOwnedIpv4Pool: string
    CarrierIp: string
    PublicIp: string
end

local record AllocateHostsInput
    InstanceFamily: string
    TagSpecifications: {TagSpecification}
    HostRecovery: string
    OutpostArn: string
    HostMaintenance: string
    AssetIds: {string}
    AvailabilityZoneId: string
    AutoPlacement: string
    ClientToken: string
    InstanceType: string
    Quantity: number
    AvailabilityZone: string
end

local record AllocateHostsOutput
    HostIds: {string}
end

local record AllocateIpamPoolCidrInput
    DryRun: boolean
    IpamPoolId: string
    Cidr: string
    NetmaskLength: number
    ClientToken: string
    Description: string
    PreviewNextCidr: boolean
    AllowedCidrs: {string}
    DisallowedCidrs: {string}
end

local record AllocateIpamPoolCidrOutput
    IpamPoolAllocation: IpamPoolAllocation
end

local record ApplySecurityGroupsToClientVpnTargetNetworkInput
    ClientVpnEndpointId: string
    VpcId: string
    SecurityGroupIds: {string}
    DryRun: boolean
end

local record ApplySecurityGroupsToClientVpnTargetNetworkOutput
    SecurityGroupIds: {string}
end

local record AssignIpv6AddressesInput
    Ipv6PrefixCount: number
    Ipv6Prefixes: {string}
    NetworkInterfaceId: string
    Ipv6Addresses: {string}
    Ipv6AddressCount: number
end

local record AssignIpv6AddressesOutput
    AssignedIpv6Addresses: {string}
    AssignedIpv6Prefixes: {string}
    NetworkInterfaceId: string
end

local record AssignPrivateIpAddressesInput
    Ipv4Prefixes: {string}
    Ipv4PrefixCount: number
    NetworkInterfaceId: string
    PrivateIpAddresses: {string}
    SecondaryPrivateIpAddressCount: number
    AllowReassignment: boolean
end

local record AssignPrivateIpAddressesOutput
    NetworkInterfaceId: string
    AssignedPrivateIpAddresses: {AssignedPrivateIpAddress}
    AssignedIpv4Prefixes: {Ipv4PrefixSpecification}
end

local record AssignPrivateNatGatewayAddressInput
    NatGatewayId: string
    PrivateIpAddresses: {string}
    PrivateIpAddressCount: number
    DryRun: boolean
end

local record AssignPrivateNatGatewayAddressOutput
    NatGatewayId: string
    NatGatewayAddresses: {NatGatewayAddress}
end

local record AssociateAddressInput
    AllocationId: string
    InstanceId: string
    PublicIp: string
    DryRun: boolean
    NetworkInterfaceId: string
    PrivateIpAddress: string
    AllowReassociation: boolean
end

local record AssociateAddressOutput
    AssociationId: string
end

local record AssociateCapacityReservationBillingOwnerInput
    DryRun: boolean
    CapacityReservationId: string
    UnusedReservationBillingOwnerId: string
end

local record AssociateCapacityReservationBillingOwnerOutput
    Return: boolean
end

local record AssociateClientVpnTargetNetworkInput
    ClientVpnEndpointId: string
    SubnetId: string
    ClientToken: string
    DryRun: boolean
    AvailabilityZone: string
    AvailabilityZoneId: string
end

local record AssociateClientVpnTargetNetworkOutput
    AssociationId: string
    Status: AssociationStatus
end

local record AssociateDhcpOptionsInput
    DhcpOptionsId: string
    VpcId: string
    DryRun: boolean
end

local record AssociateDhcpOptionsOutput
end

local record AssociateEnclaveCertificateIamRoleInput
    CertificateArn: string
    RoleArn: string
    DryRun: boolean
end

local record AssociateEnclaveCertificateIamRoleOutput
    CertificateS3BucketName: string
    CertificateS3ObjectKey: string
    EncryptionKmsKeyId: string
end

local record AssociateIamInstanceProfileInput
    IamInstanceProfile: IamInstanceProfileSpecification
    InstanceId: string
end

local record AssociateIamInstanceProfileOutput
    IamInstanceProfileAssociation: IamInstanceProfileAssociation
end

local record AssociateInstanceEventWindowInput
    DryRun: boolean
    InstanceEventWindowId: string
    AssociationTarget: InstanceEventWindowAssociationRequest
end

local record AssociateInstanceEventWindowOutput
    InstanceEventWindow: InstanceEventWindow
end

local record AssociateIpamByoasnInput
    DryRun: boolean
    Asn: string
    Cidr: string
end

local record AssociateIpamByoasnOutput
    AsnAssociation: AsnAssociation
end

local record AssociateIpamResourceDiscoveryInput
    DryRun: boolean
    IpamId: string
    IpamResourceDiscoveryId: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
end

local record AssociateIpamResourceDiscoveryOutput
    IpamResourceDiscoveryAssociation: IpamResourceDiscoveryAssociation
end

local record AssociateNatGatewayAddressInput
    NatGatewayId: string
    AllocationIds: {string}
    PrivateIpAddresses: {string}
    DryRun: boolean
    AvailabilityZone: string
    AvailabilityZoneId: string
end

local record AssociateNatGatewayAddressOutput
    NatGatewayId: string
    NatGatewayAddresses: {NatGatewayAddress}
end

local record AssociateRouteServerInput
    RouteServerId: string
    VpcId: string
    DryRun: boolean
end

local record AssociateRouteServerOutput
    RouteServerAssociation: RouteServerAssociation
end

local record AssociateRouteTableInput
    GatewayId: string
    PublicIpv4Pool: string
    DryRun: boolean
    SubnetId: string
    RouteTableId: string
end

local record AssociateRouteTableOutput
    AssociationId: string
    AssociationState: RouteTableAssociationState
end

local record AssociateSecurityGroupVpcInput
    GroupId: string
    VpcId: string
    DryRun: boolean
end

local record AssociateSecurityGroupVpcOutput
    State: string
end

local record AssociateSubnetCidrBlockInput
    Ipv6IpamPoolId: string
    Ipv6NetmaskLength: number
    SubnetId: string
    Ipv6CidrBlock: string
end

local record AssociateSubnetCidrBlockOutput
    Ipv6CidrBlockAssociation: SubnetIpv6CidrBlockAssociation
    SubnetId: string
end

local record AssociateTransitGatewayMulticastDomainInput
    TransitGatewayMulticastDomainId: string
    TransitGatewayAttachmentId: string
    SubnetIds: {string}
    DryRun: boolean
end

local record AssociateTransitGatewayMulticastDomainOutput
    Associations: TransitGatewayMulticastDomainAssociations
end

local record AssociateTransitGatewayPolicyTableInput
    TransitGatewayPolicyTableId: string
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record AssociateTransitGatewayPolicyTableOutput
    Association: TransitGatewayPolicyTableAssociation
end

local record AssociateTransitGatewayRouteTableInput
    TransitGatewayRouteTableId: string
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record AssociateTransitGatewayRouteTableOutput
    Association: TransitGatewayAssociation
end

local record AssociateTrunkInterfaceInput
    BranchInterfaceId: string
    TrunkInterfaceId: string
    VlanId: number
    GreKey: number
    ClientToken: string
    DryRun: boolean
end

local record AssociateTrunkInterfaceOutput
    InterfaceAssociation: TrunkInterfaceAssociation
    ClientToken: string
end

local record AssociateVpcCidrBlockInput
    CidrBlock: string
    Ipv6CidrBlockNetworkBorderGroup: string
    Ipv6Pool: string
    Ipv6CidrBlock: string
    Ipv4IpamPoolId: string
    Ipv4NetmaskLength: number
    Ipv6IpamPoolId: string
    Ipv6NetmaskLength: number
    VpcId: string
    AmazonProvidedIpv6CidrBlock: boolean
end

local record AssociateVpcCidrBlockOutput
    Ipv6CidrBlockAssociation: VpcIpv6CidrBlockAssociation
    CidrBlockAssociation: VpcCidrBlockAssociation
    VpcId: string
end

local record AttachClassicLinkVpcInput
    DryRun: boolean
    InstanceId: string
    VpcId: string
    Groups: {string}
end

local record AttachClassicLinkVpcOutput
    Return: boolean
end

local record AttachInternetGatewayInput
    DryRun: boolean
    InternetGatewayId: string
    VpcId: string
end

local record AttachInternetGatewayOutput
end

local record AttachNetworkInterfaceInput
    NetworkCardIndex: number
    EnaSrdSpecification: EnaSrdSpecification
    EnaQueueCount: number
    DryRun: boolean
    NetworkInterfaceId: string
    InstanceId: string
    DeviceIndex: number
end

local record AttachNetworkInterfaceOutput
    AttachmentId: string
    NetworkCardIndex: number
end

local record AttachVerifiedAccessTrustProviderInput
    VerifiedAccessInstanceId: string
    VerifiedAccessTrustProviderId: string
    ClientToken: string
    DryRun: boolean
end

local record AttachVerifiedAccessTrustProviderOutput
    VerifiedAccessTrustProvider: VerifiedAccessTrustProvider
    VerifiedAccessInstance: VerifiedAccessInstance
end

local record AttachVolumeInput
    Device: string
    InstanceId: string
    VolumeId: string
    EbsCardIndex: number
    DryRun: boolean
end

local record AttachVolumeOutput
    DeleteOnTermination: boolean
    AssociatedResource: string
    InstanceOwningService: string
    EbsCardIndex: number
    VolumeId: string
    InstanceId: string
    Device: string
    State: string
    AttachTime: number
end

local record AttachVpnGatewayInput
    VpcId: string
    VpnGatewayId: string
    DryRun: boolean
end

local record AttachVpnGatewayOutput
    VpcAttachment: VpcAttachment
end

local record AuthorizeClientVpnIngressInput
    ClientVpnEndpointId: string
    TargetNetworkCidr: string
    AccessGroupId: string
    AuthorizeAllGroups: boolean
    Description: string
    ClientToken: string
    DryRun: boolean
end

local record AuthorizeClientVpnIngressOutput
    Status: ClientVpnAuthorizationRuleStatus
end

local record AuthorizeSecurityGroupEgressInput
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    GroupId: string
    SourceSecurityGroupName: string
    SourceSecurityGroupOwnerId: string
    IpProtocol: string
    FromPort: number
    ToPort: number
    CidrIp: string
    IpPermissions: {IpPermission}
end

local record AuthorizeSecurityGroupEgressOutput
    Return: boolean
    SecurityGroupRules: {SecurityGroupRule}
end

local record AuthorizeSecurityGroupIngressInput
    CidrIp: string
    FromPort: number
    GroupId: string
    GroupName: string
    IpPermissions: {IpPermission}
    IpProtocol: string
    SourceSecurityGroupName: string
    SourceSecurityGroupOwnerId: string
    ToPort: number
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record AuthorizeSecurityGroupIngressOutput
    Return: boolean
    SecurityGroupRules: {SecurityGroupRule}
end

local record BundleInstanceInput
    InstanceId: string
    Storage: Storage
    DryRun: boolean
end

local record BundleInstanceOutput
    BundleTask: BundleTask
end

local record CancelBundleTaskInput
    BundleId: string
    DryRun: boolean
end

local record CancelBundleTaskOutput
    BundleTask: BundleTask
end

local record CancelCapacityReservationInput
    CapacityReservationId: string
    DryRun: boolean
end

local record CancelCapacityReservationOutput
    Return: boolean
end

local record CancelCapacityReservationFleetsInput
    DryRun: boolean
    CapacityReservationFleetIds: {string}
end

local record CancelCapacityReservationFleetsOutput
    SuccessfulFleetCancellations: {CapacityReservationFleetCancellationState}
    FailedFleetCancellations: {FailedCapacityReservationFleetCancellationResult}
end

local record CancelConversionTaskInput
    DryRun: boolean
    ConversionTaskId: string
    ReasonMessage: string
end

local record CancelConversionTaskOutput
end

local record CancelDeclarativePoliciesReportInput
    DryRun: boolean
    ReportId: string
end

local record CancelDeclarativePoliciesReportOutput
    Return: boolean
end

local record CancelExportTaskInput
    ExportTaskId: string
end

local record CancelExportTaskOutput
end

local record CancelImageLaunchPermissionInput
    ImageId: string
    DryRun: boolean
end

local record CancelImageLaunchPermissionOutput
    Return: boolean
end

local record CancelImportTaskInput
    CancelReason: string
    DryRun: boolean
    ImportTaskId: string
end

local record CancelImportTaskOutput
    ImportTaskId: string
    PreviousState: string
    State: string
end

local record CancelReservedInstancesListingInput
    ReservedInstancesListingId: string
end

local record CancelReservedInstancesListingOutput
    ReservedInstancesListings: {ReservedInstancesListing}
end

local record CancelSpotFleetRequestsInput
    DryRun: boolean
    SpotFleetRequestIds: {string}
    TerminateInstances: boolean
end

local record CancelSpotFleetRequestsOutput
    SuccessfulFleetRequests: {CancelSpotFleetRequestsSuccessItem}
    UnsuccessfulFleetRequests: {CancelSpotFleetRequestsErrorItem}
end

local record CancelSpotInstanceRequestsInput
    DryRun: boolean
    SpotInstanceRequestIds: {string}
end

local record CancelSpotInstanceRequestsOutput
    CancelledSpotInstanceRequests: {CancelledSpotInstanceRequest}
end

local record ConfirmProductInstanceInput
    InstanceId: string
    ProductCode: string
    DryRun: boolean
end

local record ConfirmProductInstanceOutput
    Return: boolean
    OwnerId: string
end

local record CopyFpgaImageInput
    DryRun: boolean
    SourceFpgaImageId: string
    Description: string
    Name: string
    SourceRegion: string
    ClientToken: string
end

local record CopyFpgaImageOutput
    FpgaImageId: string
end

local record CopyImageInput
    ClientToken: string
    Description: string
    Encrypted: boolean
    KmsKeyId: string
    Name: string
    SourceImageId: string
    SourceRegion: string
    DestinationOutpostArn: string
    CopyImageTags: boolean
    TagSpecifications: {TagSpecification}
    SnapshotCopyCompletionDurationMinutes: number
    DestinationAvailabilityZone: string
    DestinationAvailabilityZoneId: string
    DryRun: boolean
end

local record CopyImageOutput
    ImageId: string
end

local record CopySnapshotInput
    Description: string
    DestinationOutpostArn: string
    DestinationRegion: string
    Encrypted: boolean
    KmsKeyId: string
    PresignedUrl: string
    SourceRegion: string
    SourceSnapshotId: string
    TagSpecifications: {TagSpecification}
    CompletionDurationMinutes: number
    DestinationAvailabilityZone: string
    DryRun: boolean
end

local record CopySnapshotOutput
    Tags: {Tag}
    SnapshotId: string
end

local record CopyVolumesInput
    SourceVolumeId: string
    Iops: number
    Size: number
    VolumeType: string
    DryRun: boolean
    TagSpecifications: {TagSpecification}
    MultiAttachEnabled: boolean
    Throughput: number
    ClientToken: string
end

local record CopyVolumesOutput
    Volumes: {Volume}
end

local record CreateCapacityManagerDataExportInput
    S3BucketName: string
    S3BucketPrefix: string
    Schedule: string
    OutputFormat: string
    ClientToken: string
    DryRun: boolean
    TagSpecifications: {TagSpecification}
end

local record CreateCapacityManagerDataExportOutput
    CapacityManagerDataExportId: string
end

local record CreateCapacityReservationInput
    ClientToken: string
    InstanceType: string
    InstancePlatform: string
    AvailabilityZone: string
    AvailabilityZoneId: string
    Tenancy: string
    InstanceCount: number
    EbsOptimized: boolean
    EphemeralStorage: boolean
    EndDate: number
    EndDateType: string
    InstanceMatchCriteria: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    OutpostArn: string
    PlacementGroupArn: string
    StartDate: number
    CommitmentDuration: number
    DeliveryPreference: string
end

local record CreateCapacityReservationOutput
    CapacityReservation: CapacityReservation
end

local record CreateCapacityReservationBySplittingInput
    DryRun: boolean
    ClientToken: string
    SourceCapacityReservationId: string
    InstanceCount: number
    TagSpecifications: {TagSpecification}
end

local record CreateCapacityReservationBySplittingOutput
    SourceCapacityReservation: CapacityReservation
    DestinationCapacityReservation: CapacityReservation
    InstanceCount: number
end

local record CreateCapacityReservationFleetInput
    AllocationStrategy: string
    ClientToken: string
    InstanceTypeSpecifications: {ReservationFleetInstanceSpecification}
    Tenancy: string
    TotalTargetCapacity: number
    EndDate: number
    InstanceMatchCriteria: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateCapacityReservationFleetOutput
    CapacityReservationFleetId: string
    State: string
    TotalTargetCapacity: number
    TotalFulfilledCapacity: number
    InstanceMatchCriteria: string
    AllocationStrategy: string
    CreateTime: number
    EndDate: number
    Tenancy: string
    FleetCapacityReservations: {FleetCapacityReservation}
    Tags: {Tag}
end

local record CreateCarrierGatewayInput
    VpcId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    ClientToken: string
end

local record CreateCarrierGatewayOutput
    CarrierGateway: CarrierGateway
end

local record CreateClientVpnEndpointInput
    ClientCidrBlock: string
    ServerCertificateArn: string
    AuthenticationOptions: {ClientVpnAuthenticationRequest}
    ConnectionLogOptions: ConnectionLogOptions
    DnsServers: {string}
    TransportProtocol: string
    VpnPort: number
    Description: string
    SplitTunnel: boolean
    DryRun: boolean
    ClientToken: string
    TagSpecifications: {TagSpecification}
    SecurityGroupIds: {string}
    VpcId: string
    SelfServicePortal: string
    ClientConnectOptions: ClientConnectOptions
    SessionTimeoutHours: number
    ClientLoginBannerOptions: ClientLoginBannerOptions
    ClientRouteEnforcementOptions: ClientRouteEnforcementOptions
    DisconnectOnSessionTimeout: boolean
    EndpointIpAddressType: string
    TrafficIpAddressType: string
    TransitGatewayConfiguration: TransitGatewayConfigurationInputStructure
end

local record CreateClientVpnEndpointOutput
    ClientVpnEndpointId: string
    Status: ClientVpnEndpointStatus
    DnsName: string
end

local record CreateClientVpnRouteInput
    ClientVpnEndpointId: string
    DestinationCidrBlock: string
    TargetVpcSubnetId: string
    Description: string
    ClientToken: string
    DryRun: boolean
end

local record CreateClientVpnRouteOutput
    Status: ClientVpnRouteStatus
end

local record CreateCoipCidrInput
    Cidr: string
    CoipPoolId: string
    DryRun: boolean
end

local record CreateCoipCidrOutput
    CoipCidr: CoipCidr
end

local record CreateCoipPoolInput
    LocalGatewayRouteTableId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateCoipPoolOutput
    CoipPool: CoipPool
end

local record CreateCustomerGatewayInput
    BgpAsn: number
    PublicIp: string
    CertificateArn: string
    Type: string
    TagSpecifications: {TagSpecification}
    DeviceName: string
    IpAddress: string
    BgpAsnExtended: number
    DryRun: boolean
end

local record CreateCustomerGatewayOutput
    CustomerGateway: CustomerGateway
end

local record CreateDefaultSubnetInput
    AvailabilityZone: string
    DryRun: boolean
    Ipv6Native: boolean
    AvailabilityZoneId: string
end

local record CreateDefaultSubnetOutput
    Subnet: Subnet
end

local record CreateDefaultVpcInput
    DryRun: boolean
end

local record CreateDefaultVpcOutput
    Vpc: Vpc
end

local record CreateDelegateMacVolumeOwnershipTaskInput
    ClientToken: string
    DryRun: boolean
    InstanceId: string
    MacCredentials: string
    TagSpecifications: {TagSpecification}
end

local record CreateDelegateMacVolumeOwnershipTaskOutput
    MacModificationTask: MacModificationTask
end

local record CreateDhcpOptionsInput
    DhcpConfigurations: {NewDhcpConfiguration}
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateDhcpOptionsOutput
    DhcpOptions: DhcpOptions
end

local record CreateEgressOnlyInternetGatewayInput
    ClientToken: string
    DryRun: boolean
    VpcId: string
    TagSpecifications: {TagSpecification}
end

local record CreateEgressOnlyInternetGatewayOutput
    ClientToken: string
    EgressOnlyInternetGateway: EgressOnlyInternetGateway
end

local record CreateFleetInput
    DryRun: boolean
    ClientToken: string
    SpotOptions: SpotOptionsRequest
    OnDemandOptions: OnDemandOptionsRequest
    ReservedCapacityOptions: ReservedCapacityOptionsRequest
    ExcessCapacityTerminationPolicy: string
    LaunchTemplateConfigs: {FleetLaunchTemplateConfigRequest}
    TargetCapacitySpecification: TargetCapacitySpecificationRequest
    TerminateInstancesWithExpiration: boolean
    Type: string
    ValidFrom: number
    ValidUntil: number
    ReplaceUnhealthyInstances: boolean
    TagSpecifications: {TagSpecification}
    Context: string
end

local record CreateFleetOutput
    FleetId: string
    Errors: {CreateFleetError}
    Instances: {CreateFleetInstance}
end

local record CreateFlowLogsInput
    DryRun: boolean
    ClientToken: string
    DeliverLogsPermissionArn: string
    DeliverCrossAccountRole: string
    LogGroupName: string
    ResourceIds: {string}
    ResourceType: string
    TrafficType: string
    LogDestinationType: string
    LogDestination: string
    LogFormat: string
    TagSpecifications: {TagSpecification}
    MaxAggregationInterval: number
    DestinationOptions: DestinationOptionsRequest
end

local record CreateFlowLogsOutput
    ClientToken: string
    FlowLogIds: {string}
    Unsuccessful: {UnsuccessfulItem}
end

local record CreateFpgaImageInput
    DryRun: boolean
    InputStorageLocation: StorageLocation
    LogsStorageLocation: StorageLocation
    Description: string
    Name: string
    ClientToken: string
    TagSpecifications: {TagSpecification}
end

local record CreateFpgaImageOutput
    FpgaImageId: string
    FpgaImageGlobalId: string
end

local record CreateImageInput
    TagSpecifications: {TagSpecification}
    SnapshotLocation: string
    DryRun: boolean
    InstanceId: string
    Name: string
    Description: string
    NoReboot: boolean
    BlockDeviceMappings: {BlockDeviceMapping}
end

local record CreateImageOutput
    ImageId: string
end

local record CreateImageUsageReportInput
    ImageId: string
    DryRun: boolean
    ResourceTypes: {ImageUsageResourceTypeRequest}
    AccountIds: {string}
    ClientToken: string
    TagSpecifications: {TagSpecification}
end

local record CreateImageUsageReportOutput
    ReportId: string
end

local record CreateInstanceConnectEndpointInput
    DryRun: boolean
    SubnetId: string
    SecurityGroupIds: {string}
    PreserveClientIp: boolean
    ClientToken: string
    TagSpecifications: {TagSpecification}
    IpAddressType: string
end

local record CreateInstanceConnectEndpointOutput
    InstanceConnectEndpoint: Ec2InstanceConnectEndpoint
    ClientToken: string
end

local record CreateInstanceEventWindowInput
    DryRun: boolean
    Name: string
    TimeRanges: {InstanceEventWindowTimeRangeRequest}
    CronExpression: string
    TagSpecifications: {TagSpecification}
end

local record CreateInstanceEventWindowOutput
    InstanceEventWindow: InstanceEventWindow
end

local record CreateInstanceExportTaskInput
    TagSpecifications: {TagSpecification}
    Description: string
    InstanceId: string
    TargetEnvironment: string
    ExportToS3Task: ExportToS3TaskSpecification
end

local record CreateInstanceExportTaskOutput
    ExportTask: ExportTask
end

local record CreateInternetGatewayInput
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateInternetGatewayOutput
    InternetGateway: InternetGateway
end

local record CreateInterruptibleCapacityReservationAllocationInput
    CapacityReservationId: string
    InstanceCount: number
    ClientToken: string
    DryRun: boolean
    TagSpecifications: {TagSpecification}
end

local record CreateInterruptibleCapacityReservationAllocationOutput
    SourceCapacityReservationId: string
    TargetInstanceCount: number
    Status: string
    InterruptionType: string
end

local record CreateIpamInput
    DryRun: boolean
    Description: string
    OperatingRegions: {AddIpamOperatingRegion}
    TagSpecifications: {TagSpecification}
    ClientToken: string
    Tier: string
    EnablePrivateGua: boolean
    MeteredAccount: string
end

local record CreateIpamOutput
    Ipam: Ipam
end

local record CreateIpamExternalResourceVerificationTokenInput
    DryRun: boolean
    IpamId: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
end

local record CreateIpamExternalResourceVerificationTokenOutput
    IpamExternalResourceVerificationToken: IpamExternalResourceVerificationToken
end

local record CreateIpamPolicyInput
    DryRun: boolean
    TagSpecifications: {TagSpecification}
    ClientToken: string
    IpamId: string
end

local record CreateIpamPolicyOutput
    IpamPolicy: IpamPolicy
end

local record CreateIpamPoolInput
    DryRun: boolean
    IpamScopeId: string
    Locale: string
    SourceIpamPoolId: string
    Description: string
    AddressFamily: string
    AutoImport: boolean
    PubliclyAdvertisable: boolean
    AllocationMinNetmaskLength: number
    AllocationMaxNetmaskLength: number
    AllocationDefaultNetmaskLength: number
    AllocationResourceTags: {RequestIpamResourceTag}
    TagSpecifications: {TagSpecification}
    ClientToken: string
    AwsService: string
    PublicIpSource: string
    SourceResource: IpamPoolSourceResourceRequest
end

local record CreateIpamPoolOutput
    IpamPool: IpamPool
end

local record CreateIpamPrefixListResolverInput
    DryRun: boolean
    IpamId: string
    Description: string
    AddressFamily: string
    Rules: {IpamPrefixListResolverRuleRequest}
    TagSpecifications: {TagSpecification}
    ClientToken: string
end

local record CreateIpamPrefixListResolverOutput
    IpamPrefixListResolver: IpamPrefixListResolver
end

local record CreateIpamPrefixListResolverTargetInput
    DryRun: boolean
    IpamPrefixListResolverId: string
    PrefixListId: string
    PrefixListRegion: string
    DesiredVersion: number
    TrackLatestVersion: boolean
    TagSpecifications: {TagSpecification}
    ClientToken: string
end

local record CreateIpamPrefixListResolverTargetOutput
    IpamPrefixListResolverTarget: IpamPrefixListResolverTarget
end

local record CreateIpamResourceDiscoveryInput
    DryRun: boolean
    Description: string
    OperatingRegions: {AddIpamOperatingRegion}
    TagSpecifications: {TagSpecification}
    ClientToken: string
end

local record CreateIpamResourceDiscoveryOutput
    IpamResourceDiscovery: IpamResourceDiscovery
end

local record CreateIpamScopeInput
    DryRun: boolean
    IpamId: string
    Description: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
    ExternalAuthorityConfiguration: ExternalAuthorityConfiguration
end

local record CreateIpamScopeOutput
    IpamScope: IpamScope
end

local record CreateKeyPairInput
    KeyName: string
    KeyType: string
    TagSpecifications: {TagSpecification}
    KeyFormat: string
    DryRun: boolean
end

local record CreateKeyPairOutput
    KeyPairId: string
    Tags: {Tag}
    KeyName: string
    KeyFingerprint: string
    KeyMaterial: string
end

local record CreateLaunchTemplateInput
    DryRun: boolean
    ClientToken: string
    LaunchTemplateName: string
    VersionDescription: string
    LaunchTemplateData: RequestLaunchTemplateData
    Operator: OperatorRequest
    TagSpecifications: {TagSpecification}
end

local record CreateLaunchTemplateOutput
    LaunchTemplate: LaunchTemplate
    Warning: ValidationWarning
end

local record CreateLaunchTemplateVersionInput
    DryRun: boolean
    ClientToken: string
    LaunchTemplateId: string
    LaunchTemplateName: string
    SourceVersion: string
    VersionDescription: string
    LaunchTemplateData: RequestLaunchTemplateData
    ResolveAlias: boolean
end

local record CreateLaunchTemplateVersionOutput
    LaunchTemplateVersion: LaunchTemplateVersion
    Warning: ValidationWarning
end

local record CreateLocalGatewayRouteInput
    DestinationCidrBlock: string
    LocalGatewayRouteTableId: string
    LocalGatewayVirtualInterfaceGroupId: string
    DryRun: boolean
    NetworkInterfaceId: string
    DestinationPrefixListId: string
end

local record CreateLocalGatewayRouteOutput
    Route: LocalGatewayRoute
end

local record CreateLocalGatewayRouteTableInput
    LocalGatewayId: string
    Mode: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateLocalGatewayRouteTableOutput
    LocalGatewayRouteTable: LocalGatewayRouteTable
end

local record CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput
    LocalGatewayRouteTableId: string
    LocalGatewayVirtualInterfaceGroupId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation: LocalGatewayRouteTableVirtualInterfaceGroupAssociation
end

local record CreateLocalGatewayRouteTableVpcAssociationInput
    LocalGatewayRouteTableId: string
    VpcId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateLocalGatewayRouteTableVpcAssociationOutput
    LocalGatewayRouteTableVpcAssociation: LocalGatewayRouteTableVpcAssociation
end

local record CreateLocalGatewayVirtualInterfaceInput
    LocalGatewayVirtualInterfaceGroupId: string
    OutpostLagId: string
    Vlan: number
    LocalAddress: string
    PeerAddress: string
    PeerBgpAsn: number
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    PeerBgpAsnExtended: number
end

local record CreateLocalGatewayVirtualInterfaceOutput
    LocalGatewayVirtualInterface: LocalGatewayVirtualInterface
end

local record CreateLocalGatewayVirtualInterfaceGroupInput
    LocalGatewayId: string
    LocalBgpAsn: number
    LocalBgpAsnExtended: number
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateLocalGatewayVirtualInterfaceGroupOutput
    LocalGatewayVirtualInterfaceGroup: LocalGatewayVirtualInterfaceGroup
end

local record CreateMacSystemIntegrityProtectionModificationTaskInput
    ClientToken: string
    DryRun: boolean
    InstanceId: string
    MacCredentials: string
    MacSystemIntegrityProtectionConfiguration: MacSystemIntegrityProtectionConfigurationRequest
    MacSystemIntegrityProtectionStatus: string
    TagSpecifications: {TagSpecification}
end

local record CreateMacSystemIntegrityProtectionModificationTaskOutput
    MacModificationTask: MacModificationTask
end

local record CreateManagedPrefixListInput
    DryRun: boolean
    PrefixListName: string
    Entries: {AddPrefixListEntry}
    MaxEntries: number
    TagSpecifications: {TagSpecification}
    AddressFamily: string
    ClientToken: string
end

local record CreateManagedPrefixListOutput
    PrefixList: ManagedPrefixList
end

local record CreateNatGatewayInput
    AvailabilityMode: string
    AllocationId: string
    ClientToken: string
    DryRun: boolean
    SubnetId: string
    VpcId: string
    AvailabilityZoneAddresses: {AvailabilityZoneAddress}
    TagSpecifications: {TagSpecification}
    ConnectivityType: string
    PrivateIpAddress: string
    SecondaryAllocationIds: {string}
    SecondaryPrivateIpAddresses: {string}
    SecondaryPrivateIpAddressCount: number
end

local record CreateNatGatewayOutput
    ClientToken: string
    NatGateway: NatGateway
end

local record CreateNetworkAclInput
    TagSpecifications: {TagSpecification}
    ClientToken: string
    DryRun: boolean
    VpcId: string
end

local record CreateNetworkAclOutput
    NetworkAcl: NetworkAcl
    ClientToken: string
end

local record CreateNetworkAclEntryInput
    DryRun: boolean
    NetworkAclId: string
    RuleNumber: number
    Protocol: string
    RuleAction: string
    Egress: boolean
    CidrBlock: string
    Ipv6CidrBlock: string
    IcmpTypeCode: IcmpTypeCode
    PortRange: PortRange
end

local record CreateNetworkAclEntryOutput
end

local record CreateNetworkInsightsAccessScopeInput
    MatchPaths: {AccessScopePathRequest}
    ExcludePaths: {AccessScopePathRequest}
    ClientToken: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateNetworkInsightsAccessScopeOutput
    NetworkInsightsAccessScope: NetworkInsightsAccessScope
    NetworkInsightsAccessScopeContent: NetworkInsightsAccessScopeContent
end

local record CreateNetworkInsightsPathInput
    SourceIp: string
    DestinationIp: string
    Source: string
    Destination: string
    Protocol: string
    DestinationPort: number
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    ClientToken: string
    FilterAtSource: PathRequestFilter
    FilterAtDestination: PathRequestFilter
end

local record CreateNetworkInsightsPathOutput
    NetworkInsightsPath: NetworkInsightsPath
end

local record CreateNetworkInterfaceInput
    Ipv4Prefixes: {Ipv4PrefixSpecificationRequest}
    Ipv4PrefixCount: number
    Ipv6Prefixes: {Ipv6PrefixSpecificationRequest}
    Ipv6PrefixCount: number
    InterfaceType: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
    EnablePrimaryIpv6: boolean
    ConnectionTrackingSpecification: ConnectionTrackingSpecificationRequest
    Operator: OperatorRequest
    SubnetId: string
    Description: string
    PrivateIpAddress: string
    Groups: {string}
    PrivateIpAddresses: {PrivateIpAddressSpecification}
    SecondaryPrivateIpAddressCount: number
    Ipv6Addresses: {InstanceIpv6Address}
    Ipv6AddressCount: number
    DryRun: boolean
end

local record CreateNetworkInterfaceOutput
    NetworkInterface: NetworkInterface
    ClientToken: string
end

local record CreateNetworkInterfacePermissionInput
    NetworkInterfaceId: string
    AwsAccountId: string
    AwsService: string
    Permission: string
    DryRun: boolean
end

local record CreateNetworkInterfacePermissionOutput
    InterfacePermission: NetworkInterfacePermission
end

local record CreatePlacementGroupInput
    PartitionCount: number
    TagSpecifications: {TagSpecification}
    SpreadLevel: string
    LinkedGroupId: string
    Operator: OperatorRequest
    DryRun: boolean
    GroupName: string
    Strategy: string
end

local record CreatePlacementGroupOutput
    PlacementGroup: PlacementGroup
end

local record CreatePublicIpv4PoolInput
    DryRun: boolean
    TagSpecifications: {TagSpecification}
    NetworkBorderGroup: string
end

local record CreatePublicIpv4PoolOutput
    PoolId: string
end

local record CreateReplaceRootVolumeTaskInput
    InstanceId: string
    SnapshotId: string
    ClientToken: string
    DryRun: boolean
    TagSpecifications: {TagSpecification}
    ImageId: string
    DeleteReplacedRootVolume: boolean
    VolumeInitializationRate: number
end

local record CreateReplaceRootVolumeTaskOutput
    ReplaceRootVolumeTask: ReplaceRootVolumeTask
end

local record CreateReservedInstancesListingInput
    ReservedInstancesId: string
    InstanceCount: number
    PriceSchedules: {PriceScheduleSpecification}
    ClientToken: string
end

local record CreateReservedInstancesListingOutput
    ReservedInstancesListings: {ReservedInstancesListing}
end

local record CreateRestoreImageTaskInput
    Bucket: string
    ObjectKey: string
    Name: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateRestoreImageTaskOutput
    ImageId: string
end

local record CreateRouteInput
    DestinationPrefixListId: string
    VpcEndpointId: string
    TransitGatewayId: string
    LocalGatewayId: string
    CarrierGatewayId: string
    CoreNetworkArn: string
    OdbNetworkArn: string
    DryRun: boolean
    RouteTableId: string
    DestinationCidrBlock: string
    GatewayId: string
    DestinationIpv6CidrBlock: string
    EgressOnlyInternetGatewayId: string
    InstanceId: string
    NetworkInterfaceId: string
    VpcPeeringConnectionId: string
    NatGatewayId: string
end

local record CreateRouteOutput
    Return: boolean
end

local record CreateRouteServerInput
    AmazonSideAsn: number
    ClientToken: string
    DryRun: boolean
    PersistRoutes: string
    PersistRoutesDuration: number
    SnsNotificationsEnabled: boolean
    TagSpecifications: {TagSpecification}
end

local record CreateRouteServerOutput
    RouteServer: RouteServer
end

local record CreateRouteServerEndpointInput
    RouteServerId: string
    SubnetId: string
    ClientToken: string
    DryRun: boolean
    TagSpecifications: {TagSpecification}
end

local record CreateRouteServerEndpointOutput
    RouteServerEndpoint: RouteServerEndpoint
end

local record CreateRouteServerPeerInput
    RouteServerEndpointId: string
    PeerAddress: string
    BgpOptions: RouteServerBgpOptionsRequest
    DryRun: boolean
    TagSpecifications: {TagSpecification}
end

local record CreateRouteServerPeerOutput
    RouteServerPeer: RouteServerPeer
end

local record CreateRouteTableInput
    TagSpecifications: {TagSpecification}
    ClientToken: string
    DryRun: boolean
    VpcId: string
end

local record CreateRouteTableOutput
    RouteTable: RouteTable
    ClientToken: string
end

local record CreateSecondaryNetworkInput
    ClientToken: string
    DryRun: boolean
    Ipv4CidrBlock: string
    NetworkType: string
    TagSpecifications: {TagSpecification}
end

local record CreateSecondaryNetworkOutput
    SecondaryNetwork: SecondaryNetwork
    ClientToken: string
end

local record CreateSecondarySubnetInput
    ClientToken: string
    AvailabilityZone: string
    AvailabilityZoneId: string
    DryRun: boolean
    Ipv4CidrBlock: string
    SecondaryNetworkId: string
    TagSpecifications: {TagSpecification}
end

local record CreateSecondarySubnetOutput
    SecondarySubnet: SecondarySubnet
    ClientToken: string
end

local record CreateSecurityGroupInput
    Description: string
    GroupName: string
    VpcId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateSecurityGroupOutput
    GroupId: string
    Tags: {Tag}
    SecurityGroupArn: string
end

local record CreateSnapshotInput
    Description: string
    OutpostArn: string
    VolumeId: string
    TagSpecifications: {TagSpecification}
    Location: string
    DryRun: boolean
end

local record CreateSnapshotOutput
    OwnerAlias: string
    OutpostArn: string
    Tags: {Tag}
    StorageTier: string
    RestoreExpiryTime: number
    SseType: string
    AvailabilityZone: string
    TransferType: string
    CompletionDurationMinutes: number
    CompletionTime: number
    FullSnapshotSizeInBytes: number
    SnapshotId: string
    VolumeId: string
    State: string
    StateMessage: string
    StartTime: number
    Progress: string
    OwnerId: string
    Description: string
    VolumeSize: number
    Encrypted: boolean
    KmsKeyId: string
    DataEncryptionKeyId: string
end

local record CreateSnapshotsInput
    Description: string
    InstanceSpecification: InstanceSpecification
    OutpostArn: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    CopyTagsFromSource: string
    Location: string
end

local record CreateSnapshotsOutput
    Snapshots: {SnapshotInfo}
end

local record CreateSpotDatafeedSubscriptionInput
    DryRun: boolean
    Bucket: string
    Prefix: string
end

local record CreateSpotDatafeedSubscriptionOutput
    SpotDatafeedSubscription: SpotDatafeedSubscription
end

local record CreateStoreImageTaskInput
    ImageId: string
    Bucket: string
    S3ObjectTags: {S3ObjectTag}
    DryRun: boolean
end

local record CreateStoreImageTaskOutput
    ObjectKey: string
end

local record CreateSubnetInput
    TagSpecifications: {TagSpecification}
    AvailabilityZone: string
    AvailabilityZoneId: string
    CidrBlock: string
    Ipv6CidrBlock: string
    OutpostArn: string
    VpcId: string
    Ipv6Native: boolean
    Ipv4IpamPoolId: string
    Ipv4NetmaskLength: number
    Ipv6IpamPoolId: string
    Ipv6NetmaskLength: number
    DryRun: boolean
end

local record CreateSubnetOutput
    Subnet: Subnet
end

local record CreateSubnetCidrReservationInput
    SubnetId: string
    Cidr: string
    ReservationType: string
    Description: string
    DryRun: boolean
    TagSpecifications: {TagSpecification}
end

local record CreateSubnetCidrReservationOutput
    SubnetCidrReservation: SubnetCidrReservation
end

local record CreateTagsInput
    DryRun: boolean
    Resources: {string}
    Tags: {Tag}
end

local record CreateTagsOutput
end

local record CreateTrafficMirrorFilterInput
    Description: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    ClientToken: string
end

local record CreateTrafficMirrorFilterOutput
    TrafficMirrorFilter: TrafficMirrorFilter
    ClientToken: string
end

local record CreateTrafficMirrorFilterRuleInput
    TrafficMirrorFilterId: string
    TrafficDirection: string
    RuleNumber: number
    RuleAction: string
    DestinationPortRange: TrafficMirrorPortRangeRequest
    SourcePortRange: TrafficMirrorPortRangeRequest
    Protocol: number
    DestinationCidrBlock: string
    SourceCidrBlock: string
    Description: string
    DryRun: boolean
    ClientToken: string
    TagSpecifications: {TagSpecification}
end

local record CreateTrafficMirrorFilterRuleOutput
    TrafficMirrorFilterRule: TrafficMirrorFilterRule
    ClientToken: string
end

local record CreateTrafficMirrorSessionInput
    NetworkInterfaceId: string
    TrafficMirrorTargetId: string
    TrafficMirrorFilterId: string
    PacketLength: number
    SessionNumber: number
    VirtualNetworkId: number
    Description: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    ClientToken: string
end

local record CreateTrafficMirrorSessionOutput
    TrafficMirrorSession: TrafficMirrorSession
    ClientToken: string
end

local record CreateTrafficMirrorTargetInput
    NetworkInterfaceId: string
    NetworkLoadBalancerArn: string
    Description: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    ClientToken: string
    GatewayLoadBalancerEndpointId: string
end

local record CreateTrafficMirrorTargetOutput
    TrafficMirrorTarget: TrafficMirrorTarget
    ClientToken: string
end

local record CreateTransitGatewayInput
    Description: string
    Options: TransitGatewayRequestOptions
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayOutput
    TransitGateway: TransitGateway
end

local record CreateTransitGatewayConnectInput
    TransportTransitGatewayAttachmentId: string
    Options: CreateTransitGatewayConnectRequestOptions
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayConnectOutput
    TransitGatewayConnect: TransitGatewayConnect
end

local record CreateTransitGatewayConnectPeerInput
    TransitGatewayAttachmentId: string
    TransitGatewayAddress: string
    PeerAddress: string
    BgpOptions: TransitGatewayConnectRequestBgpOptions
    InsideCidrBlocks: {string}
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayConnectPeerOutput
    TransitGatewayConnectPeer: TransitGatewayConnectPeer
end

local record CreateTransitGatewayMeteringPolicyInput
    TransitGatewayId: string
    MiddleboxAttachmentIds: {string}
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayMeteringPolicyOutput
    TransitGatewayMeteringPolicy: TransitGatewayMeteringPolicy
end

local record CreateTransitGatewayMeteringPolicyEntryInput
    TransitGatewayMeteringPolicyId: string
    PolicyRuleNumber: number
    SourceTransitGatewayAttachmentId: string
    SourceTransitGatewayAttachmentType: string
    SourceCidrBlock: string
    SourcePortRange: string
    DestinationTransitGatewayAttachmentId: string
    DestinationTransitGatewayAttachmentType: string
    DestinationCidrBlock: string
    DestinationPortRange: string
    Protocol: string
    MeteredAccount: string
    DryRun: boolean
end

local record CreateTransitGatewayMeteringPolicyEntryOutput
    TransitGatewayMeteringPolicyEntry: TransitGatewayMeteringPolicyEntry
end

local record CreateTransitGatewayMulticastDomainInput
    TransitGatewayId: string
    Options: CreateTransitGatewayMulticastDomainRequestOptions
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayMulticastDomainOutput
    TransitGatewayMulticastDomain: TransitGatewayMulticastDomain
end

local record CreateTransitGatewayPeeringAttachmentInput
    TransitGatewayId: string
    PeerTransitGatewayId: string
    PeerAccountId: string
    PeerRegion: string
    Options: CreateTransitGatewayPeeringAttachmentRequestOptions
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayPeeringAttachmentOutput
    TransitGatewayPeeringAttachment: TransitGatewayPeeringAttachment
end

local record CreateTransitGatewayPolicyTableInput
    TransitGatewayId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayPolicyTableOutput
    TransitGatewayPolicyTable: TransitGatewayPolicyTable
end

local record CreateTransitGatewayPrefixListReferenceInput
    TransitGatewayRouteTableId: string
    PrefixListId: string
    TransitGatewayAttachmentId: string
    Blackhole: boolean
    DryRun: boolean
end

local record CreateTransitGatewayPrefixListReferenceOutput
    TransitGatewayPrefixListReference: TransitGatewayPrefixListReference
end

local record CreateTransitGatewayRouteInput
    DestinationCidrBlock: string
    TransitGatewayRouteTableId: string
    TransitGatewayAttachmentId: string
    Blackhole: boolean
    DryRun: boolean
end

local record CreateTransitGatewayRouteOutput
    Route: TransitGatewayRoute
end

local record CreateTransitGatewayRouteTableInput
    TransitGatewayId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayRouteTableOutput
    TransitGatewayRouteTable: TransitGatewayRouteTable
end

local record CreateTransitGatewayRouteTableAnnouncementInput
    TransitGatewayRouteTableId: string
    PeeringAttachmentId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayRouteTableAnnouncementOutput
    TransitGatewayRouteTableAnnouncement: TransitGatewayRouteTableAnnouncement
end

local record CreateTransitGatewayVpcAttachmentInput
    TransitGatewayId: string
    VpcId: string
    SubnetIds: {string}
    Options: CreateTransitGatewayVpcAttachmentRequestOptions
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateTransitGatewayVpcAttachmentOutput
    TransitGatewayVpcAttachment: TransitGatewayVpcAttachment
end

local record CreateVerifiedAccessEndpointInput
    VerifiedAccessGroupId: string
    EndpointType: string
    AttachmentType: string
    DomainCertificateArn: string
    ApplicationDomain: string
    EndpointDomainPrefix: string
    SecurityGroupIds: {string}
    LoadBalancerOptions: CreateVerifiedAccessEndpointLoadBalancerOptions
    NetworkInterfaceOptions: CreateVerifiedAccessEndpointEniOptions
    Description: string
    PolicyDocument: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
    DryRun: boolean
    SseSpecification: VerifiedAccessSseSpecificationRequest
    RdsOptions: CreateVerifiedAccessEndpointRdsOptions
    CidrOptions: CreateVerifiedAccessEndpointCidrOptions
end

local record CreateVerifiedAccessEndpointOutput
    VerifiedAccessEndpoint: VerifiedAccessEndpoint
end

local record CreateVerifiedAccessGroupInput
    VerifiedAccessInstanceId: string
    Description: string
    PolicyDocument: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
    DryRun: boolean
    SseSpecification: VerifiedAccessSseSpecificationRequest
end

local record CreateVerifiedAccessGroupOutput
    VerifiedAccessGroup: VerifiedAccessGroup
end

local record CreateVerifiedAccessInstanceInput
    Description: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
    DryRun: boolean
    FIPSEnabled: boolean
    CidrEndpointsCustomSubDomain: string
end

local record CreateVerifiedAccessInstanceOutput
    VerifiedAccessInstance: VerifiedAccessInstance
end

local record CreateVerifiedAccessTrustProviderInput
    TrustProviderType: string
    UserTrustProviderType: string
    DeviceTrustProviderType: string
    OidcOptions: CreateVerifiedAccessTrustProviderOidcOptions
    DeviceOptions: CreateVerifiedAccessTrustProviderDeviceOptions
    PolicyReferenceName: string
    Description: string
    TagSpecifications: {TagSpecification}
    ClientToken: string
    DryRun: boolean
    SseSpecification: VerifiedAccessSseSpecificationRequest
    NativeApplicationOidcOptions: CreateVerifiedAccessNativeApplicationOidcOptions
end

local record CreateVerifiedAccessTrustProviderOutput
    VerifiedAccessTrustProvider: VerifiedAccessTrustProvider
end

local record CreateVolumeInput
    AvailabilityZone: string
    AvailabilityZoneId: string
    Encrypted: boolean
    Iops: number
    KmsKeyId: string
    OutpostArn: string
    Size: number
    SnapshotId: string
    VolumeType: string
    TagSpecifications: {TagSpecification}
    MultiAttachEnabled: boolean
    Throughput: number
    ClientToken: string
    VolumeInitializationRate: number
    Operator: OperatorRequest
    DryRun: boolean
end

local record CreateVolumeOutput
    AvailabilityZoneId: string
    OutpostArn: string
    SourceVolumeId: string
    Iops: number
    Tags: {Tag}
    VolumeType: string
    FastRestored: boolean
    MultiAttachEnabled: boolean
    Throughput: number
    SseType: string
    Operator: OperatorResponse
    VolumeInitializationRate: number
    VolumeId: string
    Size: number
    SnapshotId: string
    AvailabilityZone: string
    State: string
    CreateTime: number
    Attachments: {VolumeAttachment}
    Encrypted: boolean
    KmsKeyId: string
end

local record CreateVpcInput
    CidrBlock: string
    Ipv6Pool: string
    Ipv6CidrBlock: string
    Ipv4IpamPoolId: string
    Ipv4NetmaskLength: number
    Ipv6IpamPoolId: string
    Ipv6NetmaskLength: number
    Ipv6CidrBlockNetworkBorderGroup: string
    VpcEncryptionControl: VpcEncryptionControlConfiguration
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    InstanceTenancy: string
    AmazonProvidedIpv6CidrBlock: boolean
end

local record CreateVpcOutput
    Vpc: Vpc
end

local record CreateVpcBlockPublicAccessExclusionInput
    DryRun: boolean
    SubnetId: string
    VpcId: string
    InternetGatewayExclusionMode: string
    TagSpecifications: {TagSpecification}
end

local record CreateVpcBlockPublicAccessExclusionOutput
    VpcBlockPublicAccessExclusion: VpcBlockPublicAccessExclusion
end

local record CreateVpcEncryptionControlInput
    DryRun: boolean
    VpcId: string
    TagSpecifications: {TagSpecification}
end

local record CreateVpcEncryptionControlOutput
    VpcEncryptionControl: VpcEncryptionControl
end

local record CreateVpcEndpointInput
    DryRun: boolean
    VpcEndpointType: string
    VpcId: string
    ServiceName: string
    PolicyDocument: string
    RouteTableIds: {string}
    SubnetIds: {string}
    SecurityGroupIds: {string}
    IpAddressType: string
    DnsOptions: DnsOptionsSpecification
    ClientToken: string
    PrivateDnsEnabled: boolean
    TagSpecifications: {TagSpecification}
    SubnetConfigurations: {SubnetConfiguration}
    ServiceNetworkArn: string
    ResourceConfigurationArn: string
    ServiceRegion: string
end

local record CreateVpcEndpointOutput
    VpcEndpoint: VpcEndpoint
    ClientToken: string
end

local record CreateVpcEndpointConnectionNotificationInput
    DryRun: boolean
    ServiceId: string
    VpcEndpointId: string
    ConnectionNotificationArn: string
    ConnectionEvents: {string}
    ClientToken: string
end

local record CreateVpcEndpointConnectionNotificationOutput
    ConnectionNotification: ConnectionNotification
    ClientToken: string
end

local record CreateVpcEndpointServiceConfigurationInput
    DryRun: boolean
    AcceptanceRequired: boolean
    PrivateDnsName: string
    NetworkLoadBalancerArns: {string}
    GatewayLoadBalancerArns: {string}
    SupportedIpAddressTypes: {string}
    SupportedRegions: {string}
    ClientToken: string
    TagSpecifications: {TagSpecification}
end

local record CreateVpcEndpointServiceConfigurationOutput
    ServiceConfiguration: ServiceConfiguration
    ClientToken: string
end

local record CreateVpcPeeringConnectionInput
    PeerRegion: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    VpcId: string
    PeerVpcId: string
    PeerOwnerId: string
end

local record CreateVpcPeeringConnectionOutput
    VpcPeeringConnection: VpcPeeringConnection
end

local record CreateVpnConcentratorInput
    Type: string
    TransitGatewayId: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
end

local record CreateVpnConcentratorOutput
    VpnConcentrator: VpnConcentrator
end

local record CreateVpnConnectionInput
    CustomerGatewayId: string
    Type: string
    VpnGatewayId: string
    TransitGatewayId: string
    VpnConcentratorId: string
    TagSpecifications: {TagSpecification}
    PreSharedKeyStorage: string
    DryRun: boolean
    Options: VpnConnectionOptionsSpecification
end

local record CreateVpnConnectionOutput
    VpnConnection: VpnConnection
end

local record CreateVpnConnectionRouteInput
    DestinationCidrBlock: string
    VpnConnectionId: string
end

local record CreateVpnConnectionRouteOutput
end

local record CreateVpnGatewayInput
    AvailabilityZone: string
    Type: string
    TagSpecifications: {TagSpecification}
    AmazonSideAsn: number
    DryRun: boolean
end

local record CreateVpnGatewayOutput
    VpnGateway: VpnGateway
end

local record DeleteCapacityManagerDataExportInput
    CapacityManagerDataExportId: string
    DryRun: boolean
end

local record DeleteCapacityManagerDataExportOutput
    CapacityManagerDataExportId: string
end

local record DeleteCarrierGatewayInput
    CarrierGatewayId: string
    DryRun: boolean
end

local record DeleteCarrierGatewayOutput
    CarrierGateway: CarrierGateway
end

local record DeleteClientVpnEndpointInput
    ClientVpnEndpointId: string
    DryRun: boolean
end

local record DeleteClientVpnEndpointOutput
    Status: ClientVpnEndpointStatus
end

local record DeleteClientVpnRouteInput
    ClientVpnEndpointId: string
    TargetVpcSubnetId: string
    DestinationCidrBlock: string
    DryRun: boolean
end

local record DeleteClientVpnRouteOutput
    Status: ClientVpnRouteStatus
end

local record DeleteCoipCidrInput
    Cidr: string
    CoipPoolId: string
    DryRun: boolean
end

local record DeleteCoipCidrOutput
    CoipCidr: CoipCidr
end

local record DeleteCoipPoolInput
    CoipPoolId: string
    DryRun: boolean
end

local record DeleteCoipPoolOutput
    CoipPool: CoipPool
end

local record DeleteCustomerGatewayInput
    CustomerGatewayId: string
    DryRun: boolean
end

local record DeleteCustomerGatewayOutput
end

local record DeleteDhcpOptionsInput
    DhcpOptionsId: string
    DryRun: boolean
end

local record DeleteDhcpOptionsOutput
end

local record DeleteEgressOnlyInternetGatewayInput
    DryRun: boolean
    EgressOnlyInternetGatewayId: string
end

local record DeleteEgressOnlyInternetGatewayOutput
    ReturnCode: boolean
end

local record DeleteFleetsInput
    DryRun: boolean
    FleetIds: {string}
    TerminateInstances: boolean
end

local record DeleteFleetsOutput
    SuccessfulFleetDeletions: {DeleteFleetSuccessItem}
    UnsuccessfulFleetDeletions: {DeleteFleetErrorItem}
end

local record DeleteFlowLogsInput
    DryRun: boolean
    FlowLogIds: {string}
end

local record DeleteFlowLogsOutput
    Unsuccessful: {UnsuccessfulItem}
end

local record DeleteFpgaImageInput
    DryRun: boolean
    FpgaImageId: string
end

local record DeleteFpgaImageOutput
    Return: boolean
end

local record DeleteImageUsageReportInput
    ReportId: string
    DryRun: boolean
end

local record DeleteImageUsageReportOutput
    Return: boolean
end

local record DeleteInstanceConnectEndpointInput
    DryRun: boolean
    InstanceConnectEndpointId: string
end

local record DeleteInstanceConnectEndpointOutput
    InstanceConnectEndpoint: Ec2InstanceConnectEndpoint
end

local record DeleteInstanceEventWindowInput
    DryRun: boolean
    ForceDelete: boolean
    InstanceEventWindowId: string
end

local record DeleteInstanceEventWindowOutput
    InstanceEventWindowState: InstanceEventWindowStateChange
end

local record DeleteInternetGatewayInput
    DryRun: boolean
    InternetGatewayId: string
end

local record DeleteInternetGatewayOutput
end

local record DeleteIpamInput
    DryRun: boolean
    IpamId: string
    Cascade: boolean
end

local record DeleteIpamOutput
    Ipam: Ipam
end

local record DeleteIpamExternalResourceVerificationTokenInput
    DryRun: boolean
    IpamExternalResourceVerificationTokenId: string
end

local record DeleteIpamExternalResourceVerificationTokenOutput
    IpamExternalResourceVerificationToken: IpamExternalResourceVerificationToken
end

local record DeleteIpamPolicyInput
    DryRun: boolean
    IpamPolicyId: string
end

local record DeleteIpamPolicyOutput
    IpamPolicy: IpamPolicy
end

local record DeleteIpamPoolInput
    DryRun: boolean
    IpamPoolId: string
    Cascade: boolean
end

local record DeleteIpamPoolOutput
    IpamPool: IpamPool
end

local record DeleteIpamPrefixListResolverInput
    DryRun: boolean
    IpamPrefixListResolverId: string
end

local record DeleteIpamPrefixListResolverOutput
    IpamPrefixListResolver: IpamPrefixListResolver
end

local record DeleteIpamPrefixListResolverTargetInput
    DryRun: boolean
    IpamPrefixListResolverTargetId: string
end

local record DeleteIpamPrefixListResolverTargetOutput
    IpamPrefixListResolverTarget: IpamPrefixListResolverTarget
end

local record DeleteIpamResourceDiscoveryInput
    DryRun: boolean
    IpamResourceDiscoveryId: string
end

local record DeleteIpamResourceDiscoveryOutput
    IpamResourceDiscovery: IpamResourceDiscovery
end

local record DeleteIpamScopeInput
    DryRun: boolean
    IpamScopeId: string
end

local record DeleteIpamScopeOutput
    IpamScope: IpamScope
end

local record DeleteKeyPairInput
    KeyName: string
    KeyPairId: string
    DryRun: boolean
end

local record DeleteKeyPairOutput
    Return: boolean
    KeyPairId: string
end

local record DeleteLaunchTemplateInput
    DryRun: boolean
    LaunchTemplateId: string
    LaunchTemplateName: string
end

local record DeleteLaunchTemplateOutput
    LaunchTemplate: LaunchTemplate
end

local record DeleteLaunchTemplateVersionsInput
    DryRun: boolean
    LaunchTemplateId: string
    LaunchTemplateName: string
    Versions: {string}
end

local record DeleteLaunchTemplateVersionsOutput
    SuccessfullyDeletedLaunchTemplateVersions: {DeleteLaunchTemplateVersionsResponseSuccessItem}
    UnsuccessfullyDeletedLaunchTemplateVersions: {DeleteLaunchTemplateVersionsResponseErrorItem}
end

local record DeleteLocalGatewayRouteInput
    DestinationCidrBlock: string
    LocalGatewayRouteTableId: string
    DryRun: boolean
    DestinationPrefixListId: string
end

local record DeleteLocalGatewayRouteOutput
    Route: LocalGatewayRoute
end

local record DeleteLocalGatewayRouteTableInput
    LocalGatewayRouteTableId: string
    DryRun: boolean
end

local record DeleteLocalGatewayRouteTableOutput
    LocalGatewayRouteTable: LocalGatewayRouteTable
end

local record DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput
    LocalGatewayRouteTableVirtualInterfaceGroupAssociationId: string
    DryRun: boolean
end

local record DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput
    LocalGatewayRouteTableVirtualInterfaceGroupAssociation: LocalGatewayRouteTableVirtualInterfaceGroupAssociation
end

local record DeleteLocalGatewayRouteTableVpcAssociationInput
    LocalGatewayRouteTableVpcAssociationId: string
    DryRun: boolean
end

local record DeleteLocalGatewayRouteTableVpcAssociationOutput
    LocalGatewayRouteTableVpcAssociation: LocalGatewayRouteTableVpcAssociation
end

local record DeleteLocalGatewayVirtualInterfaceInput
    LocalGatewayVirtualInterfaceId: string
    DryRun: boolean
end

local record DeleteLocalGatewayVirtualInterfaceOutput
    LocalGatewayVirtualInterface: LocalGatewayVirtualInterface
end

local record DeleteLocalGatewayVirtualInterfaceGroupInput
    LocalGatewayVirtualInterfaceGroupId: string
    DryRun: boolean
end

local record DeleteLocalGatewayVirtualInterfaceGroupOutput
    LocalGatewayVirtualInterfaceGroup: LocalGatewayVirtualInterfaceGroup
end

local record DeleteManagedPrefixListInput
    DryRun: boolean
    PrefixListId: string
end

local record DeleteManagedPrefixListOutput
    PrefixList: ManagedPrefixList
end

local record DeleteNatGatewayInput
    DryRun: boolean
    NatGatewayId: string
end

local record DeleteNatGatewayOutput
    NatGatewayId: string
end

local record DeleteNetworkAclInput
    DryRun: boolean
    NetworkAclId: string
end

local record DeleteNetworkAclOutput
end

local record DeleteNetworkAclEntryInput
    DryRun: boolean
    NetworkAclId: string
    RuleNumber: number
    Egress: boolean
end

local record DeleteNetworkAclEntryOutput
end

local record DeleteNetworkInsightsAccessScopeInput
    DryRun: boolean
    NetworkInsightsAccessScopeId: string
end

local record DeleteNetworkInsightsAccessScopeOutput
    NetworkInsightsAccessScopeId: string
end

local record DeleteNetworkInsightsAccessScopeAnalysisInput
    NetworkInsightsAccessScopeAnalysisId: string
    DryRun: boolean
end

local record DeleteNetworkInsightsAccessScopeAnalysisOutput
    NetworkInsightsAccessScopeAnalysisId: string
end

local record DeleteNetworkInsightsAnalysisInput
    DryRun: boolean
    NetworkInsightsAnalysisId: string
end

local record DeleteNetworkInsightsAnalysisOutput
    NetworkInsightsAnalysisId: string
end

local record DeleteNetworkInsightsPathInput
    DryRun: boolean
    NetworkInsightsPathId: string
end

local record DeleteNetworkInsightsPathOutput
    NetworkInsightsPathId: string
end

local record DeleteNetworkInterfaceInput
    DryRun: boolean
    NetworkInterfaceId: string
end

local record DeleteNetworkInterfaceOutput
end

local record DeleteNetworkInterfacePermissionInput
    NetworkInterfacePermissionId: string
    Force: boolean
    DryRun: boolean
end

local record DeleteNetworkInterfacePermissionOutput
    Return: boolean
end

local record DeletePlacementGroupInput
    DryRun: boolean
    GroupName: string
end

local record DeletePlacementGroupOutput
end

local record DeletePublicIpv4PoolInput
    DryRun: boolean
    PoolId: string
    NetworkBorderGroup: string
end

local record DeletePublicIpv4PoolOutput
    ReturnValue: boolean
end

local record DeleteQueuedReservedInstancesInput
    DryRun: boolean
    ReservedInstancesIds: {string}
end

local record DeleteQueuedReservedInstancesOutput
    SuccessfulQueuedPurchaseDeletions: {SuccessfulQueuedPurchaseDeletion}
    FailedQueuedPurchaseDeletions: {FailedQueuedPurchaseDeletion}
end

local record DeleteRouteInput
    DestinationPrefixListId: string
    DryRun: boolean
    RouteTableId: string
    DestinationCidrBlock: string
    DestinationIpv6CidrBlock: string
end

local record DeleteRouteOutput
end

local record DeleteRouteServerInput
    RouteServerId: string
    DryRun: boolean
end

local record DeleteRouteServerOutput
    RouteServer: RouteServer
end

local record DeleteRouteServerEndpointInput
    RouteServerEndpointId: string
    DryRun: boolean
end

local record DeleteRouteServerEndpointOutput
    RouteServerEndpoint: RouteServerEndpoint
end

local record DeleteRouteServerPeerInput
    RouteServerPeerId: string
    DryRun: boolean
end

local record DeleteRouteServerPeerOutput
    RouteServerPeer: RouteServerPeer
end

local record DeleteRouteTableInput
    DryRun: boolean
    RouteTableId: string
end

local record DeleteRouteTableOutput
end

local record DeleteSecondaryNetworkInput
    ClientToken: string
    DryRun: boolean
    SecondaryNetworkId: string
end

local record DeleteSecondaryNetworkOutput
    SecondaryNetwork: SecondaryNetwork
    ClientToken: string
end

local record DeleteSecondarySubnetInput
    ClientToken: string
    DryRun: boolean
    SecondarySubnetId: string
end

local record DeleteSecondarySubnetOutput
    SecondarySubnet: SecondarySubnet
    ClientToken: string
end

local record DeleteSecurityGroupInput
    GroupId: string
    GroupName: string
    DryRun: boolean
end

local record DeleteSecurityGroupOutput
    Return: boolean
    GroupId: string
end

local record DeleteSnapshotInput
    SnapshotId: string
    DryRun: boolean
end

local record DeleteSnapshotOutput
end

local record DeleteSpotDatafeedSubscriptionInput
    DryRun: boolean
end

local record DeleteSpotDatafeedSubscriptionOutput
end

local record DeleteSubnetInput
    SubnetId: string
    DryRun: boolean
end

local record DeleteSubnetOutput
end

local record DeleteSubnetCidrReservationInput
    SubnetCidrReservationId: string
    DryRun: boolean
end

local record DeleteSubnetCidrReservationOutput
    DeletedSubnetCidrReservation: SubnetCidrReservation
end

local record DeleteTagsInput
    DryRun: boolean
    Resources: {string}
    Tags: {Tag}
end

local record DeleteTagsOutput
end

local record DeleteTrafficMirrorFilterInput
    TrafficMirrorFilterId: string
    DryRun: boolean
end

local record DeleteTrafficMirrorFilterOutput
    TrafficMirrorFilterId: string
end

local record DeleteTrafficMirrorFilterRuleInput
    TrafficMirrorFilterRuleId: string
    DryRun: boolean
end

local record DeleteTrafficMirrorFilterRuleOutput
    TrafficMirrorFilterRuleId: string
end

local record DeleteTrafficMirrorSessionInput
    TrafficMirrorSessionId: string
    DryRun: boolean
end

local record DeleteTrafficMirrorSessionOutput
    TrafficMirrorSessionId: string
end

local record DeleteTrafficMirrorTargetInput
    TrafficMirrorTargetId: string
    DryRun: boolean
end

local record DeleteTrafficMirrorTargetOutput
    TrafficMirrorTargetId: string
end

local record DeleteTransitGatewayInput
    TransitGatewayId: string
    DryRun: boolean
end

local record DeleteTransitGatewayOutput
    TransitGateway: TransitGateway
end

local record DeleteTransitGatewayClientVpnAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record DeleteTransitGatewayClientVpnAttachmentOutput
    TransitGatewayClientVpnAttachment: TransitGatewayClientVpnAttachment
end

local record DeleteTransitGatewayConnectInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record DeleteTransitGatewayConnectOutput
    TransitGatewayConnect: TransitGatewayConnect
end

local record DeleteTransitGatewayConnectPeerInput
    TransitGatewayConnectPeerId: string
    DryRun: boolean
end

local record DeleteTransitGatewayConnectPeerOutput
    TransitGatewayConnectPeer: TransitGatewayConnectPeer
end

local record DeleteTransitGatewayMeteringPolicyInput
    TransitGatewayMeteringPolicyId: string
    DryRun: boolean
end

local record DeleteTransitGatewayMeteringPolicyOutput
    TransitGatewayMeteringPolicy: TransitGatewayMeteringPolicy
end

local record DeleteTransitGatewayMeteringPolicyEntryInput
    TransitGatewayMeteringPolicyId: string
    PolicyRuleNumber: number
    DryRun: boolean
end

local record DeleteTransitGatewayMeteringPolicyEntryOutput
    TransitGatewayMeteringPolicyEntry: TransitGatewayMeteringPolicyEntry
end

local record DeleteTransitGatewayMulticastDomainInput
    TransitGatewayMulticastDomainId: string
    DryRun: boolean
end

local record DeleteTransitGatewayMulticastDomainOutput
    TransitGatewayMulticastDomain: TransitGatewayMulticastDomain
end

local record DeleteTransitGatewayPeeringAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record DeleteTransitGatewayPeeringAttachmentOutput
    TransitGatewayPeeringAttachment: TransitGatewayPeeringAttachment
end

local record DeleteTransitGatewayPolicyTableInput
    TransitGatewayPolicyTableId: string
    DryRun: boolean
end

local record DeleteTransitGatewayPolicyTableOutput
    TransitGatewayPolicyTable: TransitGatewayPolicyTable
end

local record DeleteTransitGatewayPrefixListReferenceInput
    TransitGatewayRouteTableId: string
    PrefixListId: string
    DryRun: boolean
end

local record DeleteTransitGatewayPrefixListReferenceOutput
    TransitGatewayPrefixListReference: TransitGatewayPrefixListReference
end

local record DeleteTransitGatewayRouteInput
    TransitGatewayRouteTableId: string
    DestinationCidrBlock: string
    DryRun: boolean
end

local record DeleteTransitGatewayRouteOutput
    Route: TransitGatewayRoute
end

local record DeleteTransitGatewayRouteTableInput
    TransitGatewayRouteTableId: string
    DryRun: boolean
end

local record DeleteTransitGatewayRouteTableOutput
    TransitGatewayRouteTable: TransitGatewayRouteTable
end

local record DeleteTransitGatewayRouteTableAnnouncementInput
    TransitGatewayRouteTableAnnouncementId: string
    DryRun: boolean
end

local record DeleteTransitGatewayRouteTableAnnouncementOutput
    TransitGatewayRouteTableAnnouncement: TransitGatewayRouteTableAnnouncement
end

local record DeleteTransitGatewayVpcAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record DeleteTransitGatewayVpcAttachmentOutput
    TransitGatewayVpcAttachment: TransitGatewayVpcAttachment
end

local record DeleteVerifiedAccessEndpointInput
    VerifiedAccessEndpointId: string
    ClientToken: string
    DryRun: boolean
end

local record DeleteVerifiedAccessEndpointOutput
    VerifiedAccessEndpoint: VerifiedAccessEndpoint
end

local record DeleteVerifiedAccessGroupInput
    VerifiedAccessGroupId: string
    ClientToken: string
    DryRun: boolean
end

local record DeleteVerifiedAccessGroupOutput
    VerifiedAccessGroup: VerifiedAccessGroup
end

local record DeleteVerifiedAccessInstanceInput
    VerifiedAccessInstanceId: string
    DryRun: boolean
    ClientToken: string
end

local record DeleteVerifiedAccessInstanceOutput
    VerifiedAccessInstance: VerifiedAccessInstance
end

local record DeleteVerifiedAccessTrustProviderInput
    VerifiedAccessTrustProviderId: string
    DryRun: boolean
    ClientToken: string
end

local record DeleteVerifiedAccessTrustProviderOutput
    VerifiedAccessTrustProvider: VerifiedAccessTrustProvider
end

local record DeleteVolumeInput
    VolumeId: string
    DryRun: boolean
end

local record DeleteVolumeOutput
end

local record DeleteVpcInput
    VpcId: string
    DryRun: boolean
end

local record DeleteVpcOutput
end

local record DeleteVpcBlockPublicAccessExclusionInput
    DryRun: boolean
    ExclusionId: string
end

local record DeleteVpcBlockPublicAccessExclusionOutput
    VpcBlockPublicAccessExclusion: VpcBlockPublicAccessExclusion
end

local record DeleteVpcEncryptionControlInput
    DryRun: boolean
    VpcEncryptionControlId: string
end

local record DeleteVpcEncryptionControlOutput
    VpcEncryptionControl: VpcEncryptionControl
end

local record DeleteVpcEndpointConnectionNotificationsInput
    DryRun: boolean
    ConnectionNotificationIds: {string}
end

local record DeleteVpcEndpointConnectionNotificationsOutput
    Unsuccessful: {UnsuccessfulItem}
end

local record DeleteVpcEndpointsInput
    DryRun: boolean
    VpcEndpointIds: {string}
end

local record DeleteVpcEndpointsOutput
    Unsuccessful: {UnsuccessfulItem}
end

local record DeleteVpcEndpointServiceConfigurationsInput
    DryRun: boolean
    ServiceIds: {string}
end

local record DeleteVpcEndpointServiceConfigurationsOutput
    Unsuccessful: {UnsuccessfulItem}
end

local record DeleteVpcPeeringConnectionInput
    DryRun: boolean
    VpcPeeringConnectionId: string
end

local record DeleteVpcPeeringConnectionOutput
    Return: boolean
end

local record DeleteVpnConcentratorInput
    VpnConcentratorId: string
    DryRun: boolean
end

local record DeleteVpnConcentratorOutput
    Return: boolean
end

local record DeleteVpnConnectionInput
    VpnConnectionId: string
    DryRun: boolean
end

local record DeleteVpnConnectionOutput
end

local record DeleteVpnConnectionRouteInput
    DestinationCidrBlock: string
    VpnConnectionId: string
end

local record DeleteVpnConnectionRouteOutput
end

local record DeleteVpnGatewayInput
    VpnGatewayId: string
    DryRun: boolean
end

local record DeleteVpnGatewayOutput
end

local record DeprovisionByoipCidrInput
    Cidr: string
    DryRun: boolean
end

local record DeprovisionByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local record DeprovisionIpamByoasnInput
    DryRun: boolean
    IpamId: string
    Asn: string
end

local record DeprovisionIpamByoasnOutput
    Byoasn: Byoasn
end

local record DeprovisionIpamPoolCidrInput
    DryRun: boolean
    IpamPoolId: string
    Cidr: string
end

local record DeprovisionIpamPoolCidrOutput
    IpamPoolCidr: IpamPoolCidr
end

local record DeprovisionPublicIpv4PoolCidrInput
    DryRun: boolean
    PoolId: string
    Cidr: string
end

local record DeprovisionPublicIpv4PoolCidrOutput
    PoolId: string
    DeprovisionedAddresses: {string}
end

local record DeregisterImageInput
    ImageId: string
    DeleteAssociatedSnapshots: boolean
    DryRun: boolean
end

local record DeregisterImageOutput
    Return: boolean
    DeleteSnapshotResults: {DeleteSnapshotReturnCode}
end

local record DeregisterInstanceEventNotificationAttributesInput
    DryRun: boolean
    InstanceTagAttribute: DeregisterInstanceTagAttributeRequest
end

local record DeregisterInstanceEventNotificationAttributesOutput
    InstanceTagAttribute: InstanceTagNotificationAttribute
end

local record DeregisterTransitGatewayMulticastGroupMembersInput
    TransitGatewayMulticastDomainId: string
    GroupIpAddress: string
    NetworkInterfaceIds: {string}
    DryRun: boolean
end

local record DeregisterTransitGatewayMulticastGroupMembersOutput
    DeregisteredMulticastGroupMembers: TransitGatewayMulticastDeregisteredGroupMembers
end

local record DeregisterTransitGatewayMulticastGroupSourcesInput
    TransitGatewayMulticastDomainId: string
    GroupIpAddress: string
    NetworkInterfaceIds: {string}
    DryRun: boolean
end

local record DeregisterTransitGatewayMulticastGroupSourcesOutput
    DeregisteredMulticastGroupSources: TransitGatewayMulticastDeregisteredGroupSources
end

local record DescribeAccountAttributesInput
    DryRun: boolean
    AttributeNames: {string}
end

local record DescribeAccountAttributesOutput
    AccountAttributes: {AccountAttribute}
end

local record DescribeAddressesInput
    PublicIps: {string}
    DryRun: boolean
    Filters: {Filter}
    AllocationIds: {string}
end

local record DescribeAddressesOutput
    Addresses: {Address}
end

local record DescribeAddressesAttributeInput
    AllocationIds: {string}
    Attribute: string
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record DescribeAddressesAttributeOutput
    Addresses: {AddressAttribute}
    NextToken: string
end

local record DescribeAddressTransfersInput
    AllocationIds: {string}
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record DescribeAddressTransfersOutput
    AddressTransfers: {AddressTransfer}
    NextToken: string
end

local record DescribeAggregateIdFormatInput
    DryRun: boolean
end

local record DescribeAggregateIdFormatOutput
    UseLongIdsAggregated: boolean
    Statuses: {IdFormat}
end

local record DescribeAvailabilityZonesInput
    ZoneNames: {string}
    ZoneIds: {string}
    AllAvailabilityZones: boolean
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeAvailabilityZonesOutput
    AvailabilityZones: {AvailabilityZone}
end

local record DescribeAwsNetworkPerformanceMetricSubscriptionsInput
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeAwsNetworkPerformanceMetricSubscriptionsOutput
    NextToken: string
    Subscriptions: {Subscription}
end

local record DescribeBundleTasksInput
    BundleIds: {string}
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeBundleTasksOutput
    BundleTasks: {BundleTask}
end

local record DescribeByoipCidrsInput
    DryRun: boolean
    MaxResults: number
    NextToken: string
end

local record DescribeByoipCidrsOutput
    ByoipCidrs: {ByoipCidr}
    NextToken: string
end

local record DescribeCapacityBlockExtensionHistoryInput
    CapacityReservationIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeCapacityBlockExtensionHistoryOutput
    CapacityBlockExtensions: {CapacityBlockExtension}
    NextToken: string
end

local record DescribeCapacityBlockExtensionOfferingsInput
    DryRun: boolean
    CapacityBlockExtensionDurationHours: number
    CapacityReservationId: string
    NextToken: string
    MaxResults: number
end

local record DescribeCapacityBlockExtensionOfferingsOutput
    CapacityBlockExtensionOfferings: {CapacityBlockExtensionOffering}
    NextToken: string
end

local record DescribeCapacityBlockOfferingsInput
    DryRun: boolean
    InstanceType: string
    InstanceCount: number
    StartDateRange: number
    EndDateRange: number
    CapacityDurationHours: number
    NextToken: string
    MaxResults: number
    UltraserverType: string
    UltraserverCount: number
    AllAvailabilityZones: boolean
end

local record DescribeCapacityBlockOfferingsOutput
    CapacityBlockOfferings: {CapacityBlockOffering}
    NextToken: string
end

local record DescribeCapacityBlocksInput
    CapacityBlockIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeCapacityBlocksOutput
    CapacityBlocks: {CapacityBlock}
    NextToken: string
end

local record DescribeCapacityBlockStatusInput
    CapacityBlockIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeCapacityBlockStatusOutput
    CapacityBlockStatuses: {CapacityBlockStatus}
    NextToken: string
end

local record DescribeCapacityManagerDataExportsInput
    CapacityManagerDataExportIds: {string}
    MaxResults: number
    NextToken: string
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeCapacityManagerDataExportsOutput
    CapacityManagerDataExports: {CapacityManagerDataExportResponse}
    NextToken: string
end

local record DescribeCapacityReservationBillingRequestsInput
    CapacityReservationIds: {string}
    Role: string
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeCapacityReservationBillingRequestsOutput
    NextToken: string
    CapacityReservationBillingRequests: {CapacityReservationBillingRequest}
end

local record DescribeCapacityReservationFleetsInput
    CapacityReservationFleetIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeCapacityReservationFleetsOutput
    CapacityReservationFleets: {CapacityReservationFleet}
    NextToken: string
end

local record DescribeCapacityReservationsInput
    CapacityReservationIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeCapacityReservationsOutput
    NextToken: string
    CapacityReservations: {CapacityReservation}
end

local record DescribeCapacityReservationTopologyInput
    DryRun: boolean
    NextToken: string
    MaxResults: number
    CapacityReservationIds: {string}
    Filters: {Filter}
end

local record DescribeCapacityReservationTopologyOutput
    NextToken: string
    CapacityReservations: {CapacityReservationTopology}
end

local record DescribeCarrierGatewaysInput
    CarrierGatewayIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeCarrierGatewaysOutput
    CarrierGateways: {CarrierGateway}
    NextToken: string
end

local record DescribeClassicLinkInstancesInput
    DryRun: boolean
    InstanceIds: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeClassicLinkInstancesOutput
    Instances: {ClassicLinkInstance}
    NextToken: string
end

local record DescribeClientVpnAuthorizationRulesInput
    ClientVpnEndpointId: string
    DryRun: boolean
    NextToken: string
    Filters: {Filter}
    MaxResults: number
end

local record DescribeClientVpnAuthorizationRulesOutput
    AuthorizationRules: {AuthorizationRule}
    NextToken: string
end

local record DescribeClientVpnConnectionsInput
    ClientVpnEndpointId: string
    Filters: {Filter}
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record DescribeClientVpnConnectionsOutput
    Connections: {ClientVpnConnection}
    NextToken: string
end

local record DescribeClientVpnEndpointsInput
    ClientVpnEndpointIds: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeClientVpnEndpointsOutput
    ClientVpnEndpoints: {ClientVpnEndpoint}
    NextToken: string
end

local record DescribeClientVpnRoutesInput
    ClientVpnEndpointId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeClientVpnRoutesOutput
    Routes: {ClientVpnRoute}
    NextToken: string
end

local record DescribeClientVpnTargetNetworksInput
    ClientVpnEndpointId: string
    AssociationIds: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeClientVpnTargetNetworksOutput
    ClientVpnTargetNetworks: {TargetNetwork}
    NextToken: string
end

local record DescribeCoipPoolsInput
    PoolIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeCoipPoolsOutput
    CoipPools: {CoipPool}
    NextToken: string
end

local record DescribeConversionTasksInput
    DryRun: boolean
    ConversionTaskIds: {string}
end

local record DescribeConversionTasksOutput
    ConversionTasks: {ConversionTask}
end

local record DescribeCustomerGatewaysInput
    CustomerGatewayIds: {string}
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeCustomerGatewaysOutput
    CustomerGateways: {CustomerGateway}
end

local record DescribeDeclarativePoliciesReportsInput
    DryRun: boolean
    NextToken: string
    MaxResults: number
    ReportIds: {string}
end

local record DescribeDeclarativePoliciesReportsOutput
    NextToken: string
    Reports: {DeclarativePoliciesReport}
end

local record DescribeDhcpOptionsInput
    DhcpOptionsIds: {string}
    NextToken: string
    MaxResults: number
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeDhcpOptionsOutput
    NextToken: string
    DhcpOptions: {DhcpOptions}
end

local record DescribeEgressOnlyInternetGatewaysInput
    DryRun: boolean
    EgressOnlyInternetGatewayIds: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record DescribeEgressOnlyInternetGatewaysOutput
    EgressOnlyInternetGateways: {EgressOnlyInternetGateway}
    NextToken: string
end

local record DescribeElasticGpusInput
    ElasticGpuIds: {string}
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeElasticGpusOutput
    ElasticGpuSet: {ElasticGpus}
    MaxResults: number
    NextToken: string
end

local record DescribeExportImageTasksInput
    DryRun: boolean
    Filters: {Filter}
    ExportImageTaskIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeExportImageTasksOutput
    ExportImageTasks: {ExportImageTask}
    NextToken: string
end

local record DescribeExportTasksInput
    Filters: {Filter}
    ExportTaskIds: {string}
end

local record DescribeExportTasksOutput
    ExportTasks: {ExportTask}
end

local record DescribeFastLaunchImagesInput
    ImageIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeFastLaunchImagesOutput
    FastLaunchImages: {DescribeFastLaunchImagesSuccessItem}
    NextToken: string
end

local record DescribeFastSnapshotRestoresInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeFastSnapshotRestoresOutput
    FastSnapshotRestores: {DescribeFastSnapshotRestoreSuccessItem}
    NextToken: string
end

local record DescribeFleetHistoryInput
    DryRun: boolean
    EventType: string
    MaxResults: number
    NextToken: string
    FleetId: string
    StartTime: number
end

local record DescribeFleetHistoryOutput
    HistoryRecords: {HistoryRecordEntry}
    LastEvaluatedTime: number
    NextToken: string
    FleetId: string
    StartTime: number
end

local record DescribeFleetInstancesInput
    DryRun: boolean
    MaxResults: number
    NextToken: string
    FleetId: string
    Filters: {Filter}
end

local record DescribeFleetInstancesOutput
    ActiveInstances: {ActiveInstance}
    NextToken: string
    FleetId: string
end

local record DescribeFleetsInput
    DryRun: boolean
    MaxResults: number
    NextToken: string
    FleetIds: {string}
    Filters: {Filter}
end

local record DescribeFleetsOutput
    NextToken: string
    Fleets: {FleetData}
end

local record DescribeFlowLogsInput
    DryRun: boolean
    Filter: {Filter}
    FlowLogIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeFlowLogsOutput
    FlowLogs: {FlowLog}
    NextToken: string
end

local record DescribeFpgaImageAttributeInput
    DryRun: boolean
    FpgaImageId: string
    Attribute: string
end

local record DescribeFpgaImageAttributeOutput
    FpgaImageAttribute: FpgaImageAttribute
end

local record DescribeFpgaImagesInput
    DryRun: boolean
    FpgaImageIds: {string}
    Owners: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeFpgaImagesOutput
    FpgaImages: {FpgaImage}
    NextToken: string
end

local record DescribeHostReservationOfferingsInput
    Filter: {Filter}
    MaxDuration: number
    MaxResults: number
    MinDuration: number
    NextToken: string
    OfferingId: string
end

local record DescribeHostReservationOfferingsOutput
    NextToken: string
    OfferingSet: {HostOffering}
end

local record DescribeHostReservationsInput
    Filter: {Filter}
    HostReservationIdSet: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeHostReservationsOutput
    HostReservationSet: {HostReservation}
    NextToken: string
end

local record DescribeHostsInput
    HostIds: {string}
    NextToken: string
    MaxResults: number
    Filter: {Filter}
end

local record DescribeHostsOutput
    Hosts: {Host}
    NextToken: string
end

local record DescribeIamInstanceProfileAssociationsInput
    AssociationIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeIamInstanceProfileAssociationsOutput
    IamInstanceProfileAssociations: {IamInstanceProfileAssociation}
    NextToken: string
end

local record DescribeIdentityIdFormatInput
    Resource: string
    PrincipalArn: string
end

local record DescribeIdentityIdFormatOutput
    Statuses: {IdFormat}
end

local record DescribeIdFormatInput
    Resource: string
end

local record DescribeIdFormatOutput
    Statuses: {IdFormat}
end

local record DescribeImageAttributeInput
    Attribute: string
    ImageId: string
    DryRun: boolean
end

local record DescribeImageAttributeOutput
    Description: AttributeValue
    KernelId: AttributeValue
    RamdiskId: AttributeValue
    SriovNetSupport: AttributeValue
    BootMode: AttributeValue
    TpmSupport: AttributeValue
    UefiData: AttributeValue
    LastLaunchedTime: AttributeValue
    ImdsSupport: AttributeValue
    DeregistrationProtection: AttributeValue
    ImageId: string
    LaunchPermissions: {LaunchPermission}
    ProductCodes: {ProductCode}
    BlockDeviceMappings: {BlockDeviceMapping}
end

local record DescribeImageReferencesInput
    ImageIds: {string}
    IncludeAllResourceTypes: boolean
    ResourceTypes: {ResourceTypeRequest}
    NextToken: string
    DryRun: boolean
    MaxResults: number
end

local record DescribeImageReferencesOutput
    NextToken: string
    ImageReferences: {ImageReference}
end

local record DescribeImagesInput
    ExecutableUsers: {string}
    ImageIds: {string}
    Owners: {string}
    IncludeDeprecated: boolean
    IncludeDisabled: boolean
    MaxResults: number
    NextToken: string
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeImagesOutput
    NextToken: string
    Images: {Image}
end

local record DescribeImageUsageReportEntriesInput
    ImageIds: {string}
    ReportIds: {string}
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
    MaxResults: number
end

local record DescribeImageUsageReportEntriesOutput
    NextToken: string
    ImageUsageReportEntries: {ImageUsageReportEntry}
end

local record DescribeImageUsageReportsInput
    ImageIds: {string}
    ReportIds: {string}
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
    MaxResults: number
end

local record DescribeImageUsageReportsOutput
    NextToken: string
    ImageUsageReports: {ImageUsageReport}
end

local record DescribeImportImageTasksInput
    DryRun: boolean
    Filters: {Filter}
    ImportTaskIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeImportImageTasksOutput
    ImportImageTasks: {ImportImageTask}
    NextToken: string
end

local record DescribeImportSnapshotTasksInput
    DryRun: boolean
    Filters: {Filter}
    ImportTaskIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeImportSnapshotTasksOutput
    ImportSnapshotTasks: {ImportSnapshotTask}
    NextToken: string
end

local record DescribeInstanceAttributeInput
    DryRun: boolean
    InstanceId: string
    Attribute: string
end

local record DescribeInstanceAttributeOutput
    BlockDeviceMappings: {InstanceBlockDeviceMapping}
    DisableApiTermination: AttributeBooleanValue
    EnaSupport: AttributeBooleanValue
    EnclaveOptions: EnclaveOptions
    EbsOptimized: AttributeBooleanValue
    InstanceId: string
    InstanceInitiatedShutdownBehavior: AttributeValue
    InstanceType: AttributeValue
    KernelId: AttributeValue
    ProductCodes: {ProductCode}
    RamdiskId: AttributeValue
    RootDeviceName: AttributeValue
    SourceDestCheck: AttributeBooleanValue
    SriovNetSupport: AttributeValue
    UserData: AttributeValue
    DisableApiStop: AttributeBooleanValue
    Groups: {GroupIdentifier}
end

local record DescribeInstanceConnectEndpointsInput
    DryRun: boolean
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    InstanceConnectEndpointIds: {string}
end

local record DescribeInstanceConnectEndpointsOutput
    InstanceConnectEndpoints: {Ec2InstanceConnectEndpoint}
    NextToken: string
end

local record DescribeInstanceCreditSpecificationsInput
    DryRun: boolean
    Filters: {Filter}
    InstanceIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeInstanceCreditSpecificationsOutput
    InstanceCreditSpecifications: {InstanceCreditSpecification}
    NextToken: string
end

local record DescribeInstanceEventNotificationAttributesInput
    DryRun: boolean
end

local record DescribeInstanceEventNotificationAttributesOutput
    InstanceTagAttribute: InstanceTagNotificationAttribute
end

local record DescribeInstanceEventWindowsInput
    DryRun: boolean
    InstanceEventWindowIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeInstanceEventWindowsOutput
    InstanceEventWindows: {InstanceEventWindow}
    NextToken: string
end

local record DescribeInstanceImageMetadataInput
    Filters: {Filter}
    InstanceIds: {string}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeInstanceImageMetadataOutput
    InstanceImageMetadata: {InstanceImageMetadata}
    NextToken: string
end

local record DescribeInstancesInput
    InstanceIds: {string}
    IncludeManagedResources: boolean
    DryRun: boolean
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeInstancesOutput
    NextToken: string
    Reservations: {Reservation}
end

local record DescribeInstanceSqlHaHistoryStatesInput
    InstanceIds: {string}
    StartTime: number
    EndTime: number
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeInstanceSqlHaHistoryStatesOutput
    Instances: {RegisteredInstance}
    NextToken: string
end

local record DescribeInstanceSqlHaStatesInput
    InstanceIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeInstanceSqlHaStatesOutput
    Instances: {RegisteredInstance}
    NextToken: string
end

local record DescribeInstanceStatusInput
    InstanceIds: {string}
    MaxResults: number
    NextToken: string
    IncludeManagedResources: boolean
    DryRun: boolean
    Filters: {Filter}
    IncludeAllInstances: boolean
end

local record DescribeInstanceStatusOutput
    InstanceStatuses: {InstanceStatus}
    NextToken: string
end

local record DescribeInstanceTopologyInput
    DryRun: boolean
    NextToken: string
    MaxResults: number
    InstanceIds: {string}
    GroupNames: {string}
    Filters: {Filter}
end

local record DescribeInstanceTopologyOutput
    Instances: {InstanceTopology}
    NextToken: string
end

local record DescribeInstanceTypeOfferingsInput
    DryRun: boolean
    LocationType: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeInstanceTypeOfferingsOutput
    InstanceTypeOfferings: {InstanceTypeOffering}
    NextToken: string
end

local record DescribeInstanceTypesInput
    DryRun: boolean
    InstanceTypes: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeInstanceTypesOutput
    InstanceTypes: {InstanceTypeInfo}
    NextToken: string
end

local record DescribeInternetGatewaysInput
    NextToken: string
    MaxResults: number
    DryRun: boolean
    InternetGatewayIds: {string}
    Filters: {Filter}
end

local record DescribeInternetGatewaysOutput
    InternetGateways: {InternetGateway}
    NextToken: string
end

local record DescribeIpamByoasnInput
    DryRun: boolean
    MaxResults: number
    NextToken: string
end

local record DescribeIpamByoasnOutput
    Byoasns: {Byoasn}
    NextToken: string
end

local record DescribeIpamExternalResourceVerificationTokensInput
    DryRun: boolean
    Filters: {Filter}
    NextToken: string
    MaxResults: number
    IpamExternalResourceVerificationTokenIds: {string}
end

local record DescribeIpamExternalResourceVerificationTokensOutput
    NextToken: string
    IpamExternalResourceVerificationTokens: {IpamExternalResourceVerificationToken}
end

local record DescribeIpamPoliciesInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    IpamPolicyIds: {string}
end

local record DescribeIpamPoliciesOutput
    NextToken: string
    IpamPolicies: {IpamPolicy}
end

local record DescribeIpamPoolsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    IpamPoolIds: {string}
end

local record DescribeIpamPoolsOutput
    NextToken: string
    IpamPools: {IpamPool}
end

local record DescribeIpamPrefixListResolversInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    IpamPrefixListResolverIds: {string}
end

local record DescribeIpamPrefixListResolversOutput
    NextToken: string
    IpamPrefixListResolvers: {IpamPrefixListResolver}
end

local record DescribeIpamPrefixListResolverTargetsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    IpamPrefixListResolverTargetIds: {string}
    IpamPrefixListResolverId: string
end

local record DescribeIpamPrefixListResolverTargetsOutput
    NextToken: string
    IpamPrefixListResolverTargets: {IpamPrefixListResolverTarget}
end

local record DescribeIpamResourceDiscoveriesInput
    DryRun: boolean
    IpamResourceDiscoveryIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record DescribeIpamResourceDiscoveriesOutput
    IpamResourceDiscoveries: {IpamResourceDiscovery}
    NextToken: string
end

local record DescribeIpamResourceDiscoveryAssociationsInput
    DryRun: boolean
    IpamResourceDiscoveryAssociationIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record DescribeIpamResourceDiscoveryAssociationsOutput
    IpamResourceDiscoveryAssociations: {IpamResourceDiscoveryAssociation}
    NextToken: string
end

local record DescribeIpamsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    IpamIds: {string}
end

local record DescribeIpamsOutput
    NextToken: string
    Ipams: {Ipam}
end

local record DescribeIpamScopesInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    IpamScopeIds: {string}
end

local record DescribeIpamScopesOutput
    NextToken: string
    IpamScopes: {IpamScope}
end

local record DescribeIpv6PoolsInput
    PoolIds: {string}
    NextToken: string
    MaxResults: number
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeIpv6PoolsOutput
    Ipv6Pools: {Ipv6Pool}
    NextToken: string
end

local record DescribeKeyPairsInput
    KeyNames: {string}
    KeyPairIds: {string}
    IncludePublicKey: boolean
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeKeyPairsOutput
    KeyPairs: {KeyPairInfo}
end

local record DescribeLaunchTemplatesInput
    DryRun: boolean
    LaunchTemplateIds: {string}
    LaunchTemplateNames: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
    IncludeManagedResources: boolean
end

local record DescribeLaunchTemplatesOutput
    LaunchTemplates: {LaunchTemplate}
    NextToken: string
end

local record DescribeLaunchTemplateVersionsInput
    DryRun: boolean
    LaunchTemplateId: string
    LaunchTemplateName: string
    Versions: {string}
    MinVersion: string
    MaxVersion: string
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    ResolveAlias: boolean
    IncludeManagedResources: boolean
end

local record DescribeLaunchTemplateVersionsOutput
    LaunchTemplateVersions: {LaunchTemplateVersion}
    NextToken: string
end

local record DescribeLocalGatewayRouteTablesInput
    LocalGatewayRouteTableIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeLocalGatewayRouteTablesOutput
    LocalGatewayRouteTables: {LocalGatewayRouteTable}
    NextToken: string
end

local record DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput
    LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutput
    LocalGatewayRouteTableVirtualInterfaceGroupAssociations: {LocalGatewayRouteTableVirtualInterfaceGroupAssociation}
    NextToken: string
end

local record DescribeLocalGatewayRouteTableVpcAssociationsInput
    LocalGatewayRouteTableVpcAssociationIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeLocalGatewayRouteTableVpcAssociationsOutput
    LocalGatewayRouteTableVpcAssociations: {LocalGatewayRouteTableVpcAssociation}
    NextToken: string
end

local record DescribeLocalGatewaysInput
    LocalGatewayIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeLocalGatewaysOutput
    LocalGateways: {LocalGateway}
    NextToken: string
end

local record DescribeLocalGatewayVirtualInterfaceGroupsInput
    LocalGatewayVirtualInterfaceGroupIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeLocalGatewayVirtualInterfaceGroupsOutput
    LocalGatewayVirtualInterfaceGroups: {LocalGatewayVirtualInterfaceGroup}
    NextToken: string
end

local record DescribeLocalGatewayVirtualInterfacesInput
    LocalGatewayVirtualInterfaceIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeLocalGatewayVirtualInterfacesOutput
    LocalGatewayVirtualInterfaces: {LocalGatewayVirtualInterface}
    NextToken: string
end

local record DescribeLockedSnapshotsInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    SnapshotIds: {string}
    DryRun: boolean
end

local record DescribeLockedSnapshotsOutput
    Snapshots: {LockedSnapshotsInfo}
    NextToken: string
end

local record DescribeMacHostsInput
    Filters: {Filter}
    HostIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeMacHostsOutput
    MacHosts: {MacHost}
    NextToken: string
end

local record DescribeMacModificationTasksInput
    DryRun: boolean
    Filters: {Filter}
    MacModificationTaskIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeMacModificationTasksOutput
    MacModificationTasks: {MacModificationTask}
    NextToken: string
end

local record DescribeManagedPrefixListsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    PrefixListIds: {string}
end

local record DescribeManagedPrefixListsOutput
    NextToken: string
    PrefixLists: {ManagedPrefixList}
end

local record DescribeMovingAddressesInput
    DryRun: boolean
    PublicIps: {string}
    NextToken: string
    Filters: {Filter}
    MaxResults: number
end

local record DescribeMovingAddressesOutput
    MovingAddressStatuses: {MovingAddressStatus}
    NextToken: string
end

local record DescribeNatGatewaysInput
    DryRun: boolean
    Filter: {Filter}
    MaxResults: number
    NatGatewayIds: {string}
    NextToken: string
end

local record DescribeNatGatewaysOutput
    NatGateways: {NatGateway}
    NextToken: string
end

local record DescribeNetworkAclsInput
    NextToken: string
    MaxResults: number
    DryRun: boolean
    NetworkAclIds: {string}
    Filters: {Filter}
end

local record DescribeNetworkAclsOutput
    NetworkAcls: {NetworkAcl}
    NextToken: string
end

local record DescribeNetworkInsightsAccessScopeAnalysesInput
    NetworkInsightsAccessScopeAnalysisIds: {string}
    NetworkInsightsAccessScopeId: string
    AnalysisStartTimeBegin: number
    AnalysisStartTimeEnd: number
    Filters: {Filter}
    MaxResults: number
    DryRun: boolean
    NextToken: string
end

local record DescribeNetworkInsightsAccessScopeAnalysesOutput
    NetworkInsightsAccessScopeAnalyses: {NetworkInsightsAccessScopeAnalysis}
    NextToken: string
end

local record DescribeNetworkInsightsAccessScopesInput
    NetworkInsightsAccessScopeIds: {string}
    Filters: {Filter}
    MaxResults: number
    DryRun: boolean
    NextToken: string
end

local record DescribeNetworkInsightsAccessScopesOutput
    NetworkInsightsAccessScopes: {NetworkInsightsAccessScope}
    NextToken: string
end

local record DescribeNetworkInsightsAnalysesInput
    NetworkInsightsAnalysisIds: {string}
    NetworkInsightsPathId: string
    AnalysisStartTime: number
    AnalysisEndTime: number
    Filters: {Filter}
    MaxResults: number
    DryRun: boolean
    NextToken: string
end

local record DescribeNetworkInsightsAnalysesOutput
    NetworkInsightsAnalyses: {NetworkInsightsAnalysis}
    NextToken: string
end

local record DescribeNetworkInsightsPathsInput
    NetworkInsightsPathIds: {string}
    Filters: {Filter}
    MaxResults: number
    DryRun: boolean
    NextToken: string
end

local record DescribeNetworkInsightsPathsOutput
    NetworkInsightsPaths: {NetworkInsightsPath}
    NextToken: string
end

local record DescribeNetworkInterfaceAttributeInput
    DryRun: boolean
    NetworkInterfaceId: string
    Attribute: string
end

local record DescribeNetworkInterfaceAttributeOutput
    Attachment: NetworkInterfaceAttachment
    Description: AttributeValue
    Groups: {GroupIdentifier}
    NetworkInterfaceId: string
    SourceDestCheck: AttributeBooleanValue
    AssociatePublicIpAddress: boolean
end

local record DescribeNetworkInterfacePermissionsInput
    NetworkInterfacePermissionIds: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeNetworkInterfacePermissionsOutput
    NetworkInterfacePermissions: {NetworkInterfacePermission}
    NextToken: string
end

local record DescribeNetworkInterfacesInput
    NextToken: string
    MaxResults: number
    IncludeManagedResources: boolean
    DryRun: boolean
    NetworkInterfaceIds: {string}
    Filters: {Filter}
end

local record DescribeNetworkInterfacesOutput
    NetworkInterfaces: {NetworkInterface}
    NextToken: string
end

local record DescribeOutpostLagsInput
    OutpostLagIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeOutpostLagsOutput
    OutpostLags: {OutpostLag}
    NextToken: string
end

local record DescribePlacementGroupsInput
    GroupIds: {string}
    DryRun: boolean
    GroupNames: {string}
    Filters: {Filter}
end

local record DescribePlacementGroupsOutput
    PlacementGroups: {PlacementGroup}
end

local record DescribePrefixListsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    PrefixListIds: {string}
end

local record DescribePrefixListsOutput
    NextToken: string
    PrefixLists: {PrefixList}
end

local record DescribePrincipalIdFormatInput
    DryRun: boolean
    Resources: {string}
    MaxResults: number
    NextToken: string
end

local record DescribePrincipalIdFormatOutput
    Principals: {PrincipalIdFormat}
    NextToken: string
end

local record DescribePublicIpv4PoolsInput
    PoolIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record DescribePublicIpv4PoolsOutput
    PublicIpv4Pools: {PublicIpv4Pool}
    NextToken: string
end

local record DescribeRegionsInput
    RegionNames: {string}
    AllRegions: boolean
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeRegionsOutput
    Regions: {Region}
end

local record DescribeReplaceRootVolumeTasksInput
    ReplaceRootVolumeTaskIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeReplaceRootVolumeTasksOutput
    ReplaceRootVolumeTasks: {ReplaceRootVolumeTask}
    NextToken: string
end

local record DescribeReservedInstancesInput
    OfferingClass: string
    ReservedInstancesIds: {string}
    DryRun: boolean
    Filters: {Filter}
    OfferingType: string
end

local record DescribeReservedInstancesOutput
    ReservedInstances: {ReservedInstances}
end

local record DescribeReservedInstancesListingsInput
    ReservedInstancesId: string
    ReservedInstancesListingId: string
    Filters: {Filter}
end

local record DescribeReservedInstancesListingsOutput
    ReservedInstancesListings: {ReservedInstancesListing}
end

local record DescribeReservedInstancesModificationsInput
    ReservedInstancesModificationIds: {string}
    NextToken: string
    Filters: {Filter}
end

local record DescribeReservedInstancesModificationsOutput
    NextToken: string
    ReservedInstancesModifications: {ReservedInstancesModification}
end

local record DescribeReservedInstancesOfferingsInput
    AvailabilityZone: string
    IncludeMarketplace: boolean
    InstanceType: string
    MaxDuration: number
    MaxInstanceCount: number
    MinDuration: number
    OfferingClass: string
    ProductDescription: string
    ReservedInstancesOfferingIds: {string}
    AvailabilityZoneId: string
    DryRun: boolean
    Filters: {Filter}
    InstanceTenancy: string
    OfferingType: string
    NextToken: string
    MaxResults: number
end

local record DescribeReservedInstancesOfferingsOutput
    NextToken: string
    ReservedInstancesOfferings: {ReservedInstancesOffering}
end

local record DescribeRouteServerEndpointsInput
    RouteServerEndpointIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeRouteServerEndpointsOutput
    RouteServerEndpoints: {RouteServerEndpoint}
    NextToken: string
end

local record DescribeRouteServerPeersInput
    RouteServerPeerIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeRouteServerPeersOutput
    RouteServerPeers: {RouteServerPeer}
    NextToken: string
end

local record DescribeRouteServersInput
    RouteServerIds: {string}
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeRouteServersOutput
    RouteServers: {RouteServer}
    NextToken: string
end

local record DescribeRouteTablesInput
    NextToken: string
    MaxResults: number
    DryRun: boolean
    RouteTableIds: {string}
    Filters: {Filter}
end

local record DescribeRouteTablesOutput
    RouteTables: {RouteTable}
    NextToken: string
end

local record DescribeScheduledInstanceAvailabilityInput
    DryRun: boolean
    Filters: {Filter}
    FirstSlotStartTimeRange: SlotDateTimeRangeRequest
    MaxResults: number
    MaxSlotDurationInHours: number
    MinSlotDurationInHours: number
    NextToken: string
    Recurrence: ScheduledInstanceRecurrenceRequest
end

local record DescribeScheduledInstanceAvailabilityOutput
    NextToken: string
    ScheduledInstanceAvailabilitySet: {ScheduledInstanceAvailability}
end

local record DescribeScheduledInstancesInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    ScheduledInstanceIds: {string}
    SlotStartTimeRange: SlotStartTimeRangeRequest
end

local record DescribeScheduledInstancesOutput
    NextToken: string
    ScheduledInstanceSet: {ScheduledInstance}
end

local record DescribeSecondaryInterfacesInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    SecondaryInterfaceIds: {string}
end

local record DescribeSecondaryInterfacesOutput
    SecondaryInterfaces: {SecondaryInterface}
    NextToken: string
end

local record DescribeSecondaryNetworksInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    SecondaryNetworkIds: {string}
end

local record DescribeSecondaryNetworksOutput
    SecondaryNetworks: {SecondaryNetwork}
    NextToken: string
end

local record DescribeSecondarySubnetsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    SecondarySubnetIds: {string}
end

local record DescribeSecondarySubnetsOutput
    SecondarySubnets: {SecondarySubnet}
    NextToken: string
end

local record DescribeSecurityGroupReferencesInput
    DryRun: boolean
    GroupId: {string}
end

local record DescribeSecurityGroupReferencesOutput
    SecurityGroupReferenceSet: {SecurityGroupReference}
end

local record DescribeSecurityGroupRulesInput
    Filters: {Filter}
    SecurityGroupRuleIds: {string}
    DryRun: boolean
    NextToken: string
    MaxResults: number
end

local record DescribeSecurityGroupRulesOutput
    SecurityGroupRules: {SecurityGroupRule}
    NextToken: string
end

local record DescribeSecurityGroupsInput
    GroupIds: {string}
    GroupNames: {string}
    NextToken: string
    MaxResults: number
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeSecurityGroupsOutput
    NextToken: string
    SecurityGroups: {SecurityGroup}
end

local record DescribeSecurityGroupVpcAssociationsInput
    Filters: {Filter}
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record DescribeSecurityGroupVpcAssociationsOutput
    SecurityGroupVpcAssociations: {SecurityGroupVpcAssociation}
    NextToken: string
end

local record DescribeServiceLinkVirtualInterfacesInput
    ServiceLinkVirtualInterfaceIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeServiceLinkVirtualInterfacesOutput
    ServiceLinkVirtualInterfaces: {ServiceLinkVirtualInterface}
    NextToken: string
end

local record DescribeSnapshotAttributeInput
    Attribute: string
    SnapshotId: string
    DryRun: boolean
end

local record DescribeSnapshotAttributeOutput
    ProductCodes: {ProductCode}
    SnapshotId: string
    CreateVolumePermissions: {CreateVolumePermission}
end

local record DescribeSnapshotsInput
    MaxResults: number
    NextToken: string
    OwnerIds: {string}
    RestorableByUserIds: {string}
    SnapshotIds: {string}
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeSnapshotsOutput
    NextToken: string
    Snapshots: {Snapshot}
end

local record DescribeSnapshotTierStatusInput
    Filters: {Filter}
    DryRun: boolean
    NextToken: string
    MaxResults: number
end

local record DescribeSnapshotTierStatusOutput
    SnapshotTierStatuses: {SnapshotTierStatus}
    NextToken: string
end

local record DescribeSpotDatafeedSubscriptionInput
    DryRun: boolean
end

local record DescribeSpotDatafeedSubscriptionOutput
    SpotDatafeedSubscription: SpotDatafeedSubscription
end

local record DescribeSpotFleetInstancesInput
    DryRun: boolean
    SpotFleetRequestId: string
    NextToken: string
    MaxResults: number
end

local record DescribeSpotFleetInstancesOutput
    ActiveInstances: {ActiveInstance}
    NextToken: string
    SpotFleetRequestId: string
end

local record DescribeSpotFleetRequestHistoryInput
    DryRun: boolean
    SpotFleetRequestId: string
    EventType: string
    StartTime: number
    NextToken: string
    MaxResults: number
end

local record DescribeSpotFleetRequestHistoryOutput
    HistoryRecords: {HistoryRecord}
    LastEvaluatedTime: number
    NextToken: string
    SpotFleetRequestId: string
    StartTime: number
end

local record DescribeSpotFleetRequestsInput
    DryRun: boolean
    SpotFleetRequestIds: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeSpotFleetRequestsOutput
    NextToken: string
    SpotFleetRequestConfigs: {SpotFleetRequestConfig}
end

local record DescribeSpotInstanceRequestsInput
    NextToken: string
    MaxResults: number
    DryRun: boolean
    SpotInstanceRequestIds: {string}
    Filters: {Filter}
end

local record DescribeSpotInstanceRequestsOutput
    SpotInstanceRequests: {SpotInstanceRequest}
    NextToken: string
end

local record DescribeSpotPriceHistoryInput
    AvailabilityZoneId: string
    DryRun: boolean
    StartTime: number
    EndTime: number
    InstanceTypes: {string}
    ProductDescriptions: {string}
    Filters: {Filter}
    AvailabilityZone: string
    MaxResults: number
    NextToken: string
end

local record DescribeSpotPriceHistoryOutput
    NextToken: string
    SpotPriceHistory: {SpotPrice}
end

local record DescribeStaleSecurityGroupsInput
    DryRun: boolean
    MaxResults: number
    NextToken: string
    VpcId: string
end

local record DescribeStaleSecurityGroupsOutput
    NextToken: string
    StaleSecurityGroupSet: {StaleSecurityGroup}
end

local record DescribeStoreImageTasksInput
    ImageIds: {string}
    DryRun: boolean
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeStoreImageTasksOutput
    StoreImageTaskResults: {StoreImageTaskResult}
    NextToken: string
end

local record DescribeSubnetsInput
    Filters: {Filter}
    SubnetIds: {string}
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record DescribeSubnetsOutput
    NextToken: string
    Subnets: {Subnet}
end

local record DescribeTagsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeTagsOutput
    NextToken: string
    Tags: {TagDescription}
end

local record DescribeTrafficMirrorFilterRulesInput
    TrafficMirrorFilterRuleIds: {string}
    TrafficMirrorFilterId: string
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeTrafficMirrorFilterRulesOutput
    TrafficMirrorFilterRules: {TrafficMirrorFilterRule}
    NextToken: string
end

local record DescribeTrafficMirrorFiltersInput
    TrafficMirrorFilterIds: {string}
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeTrafficMirrorFiltersOutput
    TrafficMirrorFilters: {TrafficMirrorFilter}
    NextToken: string
end

local record DescribeTrafficMirrorSessionsInput
    TrafficMirrorSessionIds: {string}
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeTrafficMirrorSessionsOutput
    TrafficMirrorSessions: {TrafficMirrorSession}
    NextToken: string
end

local record DescribeTrafficMirrorTargetsInput
    TrafficMirrorTargetIds: {string}
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeTrafficMirrorTargetsOutput
    TrafficMirrorTargets: {TrafficMirrorTarget}
    NextToken: string
end

local record DescribeTransitGatewayAttachmentsInput
    TransitGatewayAttachmentIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayAttachmentsOutput
    TransitGatewayAttachments: {TransitGatewayAttachment}
    NextToken: string
end

local record DescribeTransitGatewayConnectPeersInput
    TransitGatewayConnectPeerIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayConnectPeersOutput
    TransitGatewayConnectPeers: {TransitGatewayConnectPeer}
    NextToken: string
end

local record DescribeTransitGatewayConnectsInput
    TransitGatewayAttachmentIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayConnectsOutput
    TransitGatewayConnects: {TransitGatewayConnect}
    NextToken: string
end

local record DescribeTransitGatewayMeteringPoliciesInput
    TransitGatewayMeteringPolicyIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayMeteringPoliciesOutput
    TransitGatewayMeteringPolicies: {TransitGatewayMeteringPolicy}
    NextToken: string
end

local record DescribeTransitGatewayMulticastDomainsInput
    TransitGatewayMulticastDomainIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayMulticastDomainsOutput
    TransitGatewayMulticastDomains: {TransitGatewayMulticastDomain}
    NextToken: string
end

local record DescribeTransitGatewayPeeringAttachmentsInput
    TransitGatewayAttachmentIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayPeeringAttachmentsOutput
    TransitGatewayPeeringAttachments: {TransitGatewayPeeringAttachment}
    NextToken: string
end

local record DescribeTransitGatewayPolicyTablesInput
    TransitGatewayPolicyTableIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayPolicyTablesOutput
    TransitGatewayPolicyTables: {TransitGatewayPolicyTable}
    NextToken: string
end

local record DescribeTransitGatewayRouteTableAnnouncementsInput
    TransitGatewayRouteTableAnnouncementIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayRouteTableAnnouncementsOutput
    TransitGatewayRouteTableAnnouncements: {TransitGatewayRouteTableAnnouncement}
    NextToken: string
end

local record DescribeTransitGatewayRouteTablesInput
    TransitGatewayRouteTableIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayRouteTablesOutput
    TransitGatewayRouteTables: {TransitGatewayRouteTable}
    NextToken: string
end

local record DescribeTransitGatewaysInput
    TransitGatewayIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewaysOutput
    TransitGateways: {TransitGateway}
    NextToken: string
end

local record DescribeTransitGatewayVpcAttachmentsInput
    TransitGatewayAttachmentIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeTransitGatewayVpcAttachmentsOutput
    TransitGatewayVpcAttachments: {TransitGatewayVpcAttachment}
    NextToken: string
end

local record DescribeTrunkInterfaceAssociationsInput
    AssociationIds: {string}
    DryRun: boolean
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeTrunkInterfaceAssociationsOutput
    InterfaceAssociations: {TrunkInterfaceAssociation}
    NextToken: string
end

local record DescribeVerifiedAccessEndpointsInput
    VerifiedAccessEndpointIds: {string}
    VerifiedAccessInstanceId: string
    VerifiedAccessGroupId: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeVerifiedAccessEndpointsOutput
    VerifiedAccessEndpoints: {VerifiedAccessEndpoint}
    NextToken: string
end

local record DescribeVerifiedAccessGroupsInput
    VerifiedAccessGroupIds: {string}
    VerifiedAccessInstanceId: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeVerifiedAccessGroupsOutput
    VerifiedAccessGroups: {VerifiedAccessGroup}
    NextToken: string
end

local record DescribeVerifiedAccessInstanceLoggingConfigurationsInput
    VerifiedAccessInstanceIds: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeVerifiedAccessInstanceLoggingConfigurationsOutput
    LoggingConfigurations: {VerifiedAccessInstanceLoggingConfiguration}
    NextToken: string
end

local record DescribeVerifiedAccessInstancesInput
    VerifiedAccessInstanceIds: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeVerifiedAccessInstancesOutput
    VerifiedAccessInstances: {VerifiedAccessInstance}
    NextToken: string
end

local record DescribeVerifiedAccessTrustProvidersInput
    VerifiedAccessTrustProviderIds: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
    DryRun: boolean
end

local record DescribeVerifiedAccessTrustProvidersOutput
    VerifiedAccessTrustProviders: {VerifiedAccessTrustProvider}
    NextToken: string
end

local record DescribeVolumeAttributeInput
    Attribute: string
    VolumeId: string
    DryRun: boolean
end

local record DescribeVolumeAttributeOutput
    AutoEnableIO: AttributeBooleanValue
    ProductCodes: {ProductCode}
    VolumeId: string
end

local record DescribeVolumesInput
    VolumeIds: {string}
    IncludeManagedResources: boolean
    DryRun: boolean
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeVolumesOutput
    NextToken: string
    Volumes: {Volume}
end

local record DescribeVolumesModificationsInput
    DryRun: boolean
    VolumeIds: {string}
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record DescribeVolumesModificationsOutput
    NextToken: string
    VolumesModifications: {VolumeModification}
end

local record DescribeVolumeStatusInput
    MaxResults: number
    NextToken: string
    VolumeIds: {string}
    IncludeManagedResources: boolean
    DryRun: boolean
    Filters: {Filter}
end

local record DescribeVolumeStatusOutput
    NextToken: string
    VolumeStatuses: {VolumeStatusItem}
end

local record DescribeVpcAttributeInput
    Attribute: string
    VpcId: string
    DryRun: boolean
end

local record DescribeVpcAttributeOutput
    EnableDnsHostnames: AttributeBooleanValue
    EnableDnsSupport: AttributeBooleanValue
    EnableNetworkAddressUsageMetrics: AttributeBooleanValue
    VpcId: string
end

local record DescribeVpcBlockPublicAccessExclusionsInput
    DryRun: boolean
    Filters: {Filter}
    ExclusionIds: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeVpcBlockPublicAccessExclusionsOutput
    VpcBlockPublicAccessExclusions: {VpcBlockPublicAccessExclusion}
    NextToken: string
end

local record DescribeVpcBlockPublicAccessOptionsInput
    DryRun: boolean
end

local record DescribeVpcBlockPublicAccessOptionsOutput
    VpcBlockPublicAccessOptions: VpcBlockPublicAccessOptions
end

local record DescribeVpcClassicLinkInput
    DryRun: boolean
    VpcIds: {string}
    Filters: {Filter}
end

local record DescribeVpcClassicLinkOutput
    Vpcs: {VpcClassicLink}
end

local record DescribeVpcClassicLinkDnsSupportInput
    VpcIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeVpcClassicLinkDnsSupportOutput
    NextToken: string
    Vpcs: {ClassicLinkDnsSupport}
end

local record DescribeVpcEncryptionControlsInput
    DryRun: boolean
    Filters: {Filter}
    VpcEncryptionControlIds: {string}
    VpcIds: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeVpcEncryptionControlsOutput
    VpcEncryptionControls: {VpcEncryptionControl}
    NextToken: string
end

local record DescribeVpcEndpointAssociationsInput
    DryRun: boolean
    VpcEndpointIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeVpcEndpointAssociationsOutput
    VpcEndpointAssociations: {VpcEndpointAssociation}
    NextToken: string
end

local record DescribeVpcEndpointConnectionNotificationsInput
    DryRun: boolean
    ConnectionNotificationId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeVpcEndpointConnectionNotificationsOutput
    ConnectionNotificationSet: {ConnectionNotification}
    NextToken: string
end

local record DescribeVpcEndpointConnectionsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeVpcEndpointConnectionsOutput
    VpcEndpointConnections: {VpcEndpointConnection}
    NextToken: string
end

local record DescribeVpcEndpointsInput
    DryRun: boolean
    VpcEndpointIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeVpcEndpointsOutput
    VpcEndpoints: {VpcEndpoint}
    NextToken: string
end

local record DescribeVpcEndpointServiceConfigurationsInput
    DryRun: boolean
    ServiceIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeVpcEndpointServiceConfigurationsOutput
    ServiceConfigurations: {ServiceConfiguration}
    NextToken: string
end

local record DescribeVpcEndpointServicePermissionsInput
    DryRun: boolean
    ServiceId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeVpcEndpointServicePermissionsOutput
    AllowedPrincipals: {AllowedPrincipal}
    NextToken: string
end

local record DescribeVpcEndpointServicesInput
    DryRun: boolean
    ServiceNames: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    ServiceRegions: {string}
end

local record DescribeVpcEndpointServicesOutput
    ServiceNames: {string}
    ServiceDetails: {ServiceDetail}
    NextToken: string
end

local record DescribeVpcPeeringConnectionsInput
    NextToken: string
    MaxResults: number
    DryRun: boolean
    VpcPeeringConnectionIds: {string}
    Filters: {Filter}
end

local record DescribeVpcPeeringConnectionsOutput
    VpcPeeringConnections: {VpcPeeringConnection}
    NextToken: string
end

local record DescribeVpcsInput
    Filters: {Filter}
    VpcIds: {string}
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record DescribeVpcsOutput
    NextToken: string
    Vpcs: {Vpc}
end

local record DescribeVpnConcentratorsInput
    VpnConcentratorIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record DescribeVpnConcentratorsOutput
    VpnConcentrators: {VpnConcentrator}
    NextToken: string
end

local record DescribeVpnConnectionsInput
    Filters: {Filter}
    VpnConnectionIds: {string}
    DryRun: boolean
end

local record DescribeVpnConnectionsOutput
    VpnConnections: {VpnConnection}
end

local record DescribeVpnGatewaysInput
    Filters: {Filter}
    VpnGatewayIds: {string}
    DryRun: boolean
end

local record DescribeVpnGatewaysOutput
    VpnGateways: {VpnGateway}
end

local record DetachClassicLinkVpcInput
    DryRun: boolean
    InstanceId: string
    VpcId: string
end

local record DetachClassicLinkVpcOutput
    Return: boolean
end

local record DetachInternetGatewayInput
    DryRun: boolean
    InternetGatewayId: string
    VpcId: string
end

local record DetachInternetGatewayOutput
end

local record DetachNetworkInterfaceInput
    DryRun: boolean
    AttachmentId: string
    Force: boolean
end

local record DetachNetworkInterfaceOutput
end

local record DetachVerifiedAccessTrustProviderInput
    VerifiedAccessInstanceId: string
    VerifiedAccessTrustProviderId: string
    ClientToken: string
    DryRun: boolean
end

local record DetachVerifiedAccessTrustProviderOutput
    VerifiedAccessTrustProvider: VerifiedAccessTrustProvider
    VerifiedAccessInstance: VerifiedAccessInstance
end

local record DetachVolumeInput
    Device: string
    Force: boolean
    InstanceId: string
    VolumeId: string
    DryRun: boolean
end

local record DetachVolumeOutput
    DeleteOnTermination: boolean
    AssociatedResource: string
    InstanceOwningService: string
    EbsCardIndex: number
    VolumeId: string
    InstanceId: string
    Device: string
    State: string
    AttachTime: number
end

local record DetachVpnGatewayInput
    VpcId: string
    VpnGatewayId: string
    DryRun: boolean
end

local record DetachVpnGatewayOutput
end

local record DisableAddressTransferInput
    AllocationId: string
    DryRun: boolean
end

local record DisableAddressTransferOutput
    AddressTransfer: AddressTransfer
end

local record DisableAllowedImagesSettingsInput
    DryRun: boolean
end

local record DisableAllowedImagesSettingsOutput
    AllowedImagesSettingsState: string
end

local record DisableAwsNetworkPerformanceMetricSubscriptionInput
    Source: string
    Destination: string
    Metric: string
    Statistic: string
    DryRun: boolean
end

local record DisableAwsNetworkPerformanceMetricSubscriptionOutput
    Output: boolean
end

local record DisableCapacityManagerInput
    DryRun: boolean
    ClientToken: string
end

local record DisableCapacityManagerOutput
    CapacityManagerStatus: string
    OrganizationsAccess: boolean
end

local record DisableEbsEncryptionByDefaultInput
    DryRun: boolean
end

local record DisableEbsEncryptionByDefaultOutput
    EbsEncryptionByDefault: boolean
end

local record DisableFastLaunchInput
    ImageId: string
    Force: boolean
    DryRun: boolean
end

local record DisableFastLaunchOutput
    ImageId: string
    ResourceType: string
    SnapshotConfiguration: FastLaunchSnapshotConfigurationResponse
    LaunchTemplate: FastLaunchLaunchTemplateSpecificationResponse
    MaxParallelLaunches: number
    OwnerId: string
    State: string
    StateTransitionReason: string
    StateTransitionTime: number
end

local record DisableFastSnapshotRestoresInput
    AvailabilityZones: {string}
    AvailabilityZoneIds: {string}
    SourceSnapshotIds: {string}
    DryRun: boolean
end

local record DisableFastSnapshotRestoresOutput
    Successful: {DisableFastSnapshotRestoreSuccessItem}
    Unsuccessful: {DisableFastSnapshotRestoreErrorItem}
end

local record DisableImageInput
    ImageId: string
    DryRun: boolean
end

local record DisableImageOutput
    Return: boolean
end

local record DisableImageBlockPublicAccessInput
    DryRun: boolean
end

local record DisableImageBlockPublicAccessOutput
    ImageBlockPublicAccessState: string
end

local record DisableImageDeprecationInput
    ImageId: string
    DryRun: boolean
end

local record DisableImageDeprecationOutput
    Return: boolean
end

local record DisableImageDeregistrationProtectionInput
    ImageId: string
    DryRun: boolean
end

local record DisableImageDeregistrationProtectionOutput
    Return: string
end

local record DisableInstanceSqlHaStandbyDetectionsInput
    InstanceIds: {string}
    DryRun: boolean
end

local record DisableInstanceSqlHaStandbyDetectionsOutput
    Instances: {RegisteredInstance}
end

local record DisableIpamOrganizationAdminAccountInput
    DryRun: boolean
    DelegatedAdminAccountId: string
end

local record DisableIpamOrganizationAdminAccountOutput
    Success: boolean
end

local record DisableIpamPolicyInput
    DryRun: boolean
    IpamPolicyId: string
    OrganizationTargetId: string
end

local record DisableIpamPolicyOutput
    Return: boolean
end

local record DisableRouteServerPropagationInput
    RouteServerId: string
    RouteTableId: string
    DryRun: boolean
end

local record DisableRouteServerPropagationOutput
    RouteServerPropagation: RouteServerPropagation
end

local record DisableSerialConsoleAccessInput
    DryRun: boolean
end

local record DisableSerialConsoleAccessOutput
    SerialConsoleAccessEnabled: boolean
end

local record DisableSnapshotBlockPublicAccessInput
    DryRun: boolean
end

local record DisableSnapshotBlockPublicAccessOutput
    State: string
end

local record DisableTransitGatewayRouteTablePropagationInput
    TransitGatewayRouteTableId: string
    TransitGatewayAttachmentId: string
    DryRun: boolean
    TransitGatewayRouteTableAnnouncementId: string
end

local record DisableTransitGatewayRouteTablePropagationOutput
    Propagation: TransitGatewayPropagation
end

local record DisableVgwRoutePropagationInput
    GatewayId: string
    RouteTableId: string
    DryRun: boolean
end

local record DisableVgwRoutePropagationOutput
end

local record DisableVpcClassicLinkInput
    DryRun: boolean
    VpcId: string
end

local record DisableVpcClassicLinkOutput
    Return: boolean
end

local record DisableVpcClassicLinkDnsSupportInput
    VpcId: string
end

local record DisableVpcClassicLinkDnsSupportOutput
    Return: boolean
end

local record DisassociateAddressInput
    AssociationId: string
    PublicIp: string
    DryRun: boolean
end

local record DisassociateAddressOutput
end

local record DisassociateCapacityReservationBillingOwnerInput
    DryRun: boolean
    CapacityReservationId: string
    UnusedReservationBillingOwnerId: string
end

local record DisassociateCapacityReservationBillingOwnerOutput
    Return: boolean
end

local record DisassociateClientVpnTargetNetworkInput
    ClientVpnEndpointId: string
    AssociationId: string
    DryRun: boolean
end

local record DisassociateClientVpnTargetNetworkOutput
    AssociationId: string
    Status: AssociationStatus
end

local record DisassociateEnclaveCertificateIamRoleInput
    CertificateArn: string
    RoleArn: string
    DryRun: boolean
end

local record DisassociateEnclaveCertificateIamRoleOutput
    Return: boolean
end

local record DisassociateIamInstanceProfileInput
    AssociationId: string
end

local record DisassociateIamInstanceProfileOutput
    IamInstanceProfileAssociation: IamInstanceProfileAssociation
end

local record DisassociateInstanceEventWindowInput
    DryRun: boolean
    InstanceEventWindowId: string
    AssociationTarget: InstanceEventWindowDisassociationRequest
end

local record DisassociateInstanceEventWindowOutput
    InstanceEventWindow: InstanceEventWindow
end

local record DisassociateIpamByoasnInput
    DryRun: boolean
    Asn: string
    Cidr: string
end

local record DisassociateIpamByoasnOutput
    AsnAssociation: AsnAssociation
end

local record DisassociateIpamResourceDiscoveryInput
    DryRun: boolean
    IpamResourceDiscoveryAssociationId: string
end

local record DisassociateIpamResourceDiscoveryOutput
    IpamResourceDiscoveryAssociation: IpamResourceDiscoveryAssociation
end

local record DisassociateNatGatewayAddressInput
    NatGatewayId: string
    AssociationIds: {string}
    MaxDrainDurationSeconds: number
    DryRun: boolean
end

local record DisassociateNatGatewayAddressOutput
    NatGatewayId: string
    NatGatewayAddresses: {NatGatewayAddress}
end

local record DisassociateRouteServerInput
    RouteServerId: string
    VpcId: string
    DryRun: boolean
end

local record DisassociateRouteServerOutput
    RouteServerAssociation: RouteServerAssociation
end

local record DisassociateRouteTableInput
    DryRun: boolean
    AssociationId: string
end

local record DisassociateRouteTableOutput
end

local record DisassociateSecurityGroupVpcInput
    GroupId: string
    VpcId: string
    DryRun: boolean
end

local record DisassociateSecurityGroupVpcOutput
    State: string
end

local record DisassociateSubnetCidrBlockInput
    AssociationId: string
end

local record DisassociateSubnetCidrBlockOutput
    Ipv6CidrBlockAssociation: SubnetIpv6CidrBlockAssociation
    SubnetId: string
end

local record DisassociateTransitGatewayMulticastDomainInput
    TransitGatewayMulticastDomainId: string
    TransitGatewayAttachmentId: string
    SubnetIds: {string}
    DryRun: boolean
end

local record DisassociateTransitGatewayMulticastDomainOutput
    Associations: TransitGatewayMulticastDomainAssociations
end

local record DisassociateTransitGatewayPolicyTableInput
    TransitGatewayPolicyTableId: string
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record DisassociateTransitGatewayPolicyTableOutput
    Association: TransitGatewayPolicyTableAssociation
end

local record DisassociateTransitGatewayRouteTableInput
    TransitGatewayRouteTableId: string
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record DisassociateTransitGatewayRouteTableOutput
    Association: TransitGatewayAssociation
end

local record DisassociateTrunkInterfaceInput
    AssociationId: string
    ClientToken: string
    DryRun: boolean
end

local record DisassociateTrunkInterfaceOutput
    Return: boolean
    ClientToken: string
end

local record DisassociateVpcCidrBlockInput
    AssociationId: string
end

local record DisassociateVpcCidrBlockOutput
    Ipv6CidrBlockAssociation: VpcIpv6CidrBlockAssociation
    CidrBlockAssociation: VpcCidrBlockAssociation
    VpcId: string
end

local record EnableAddressTransferInput
    AllocationId: string
    TransferAccountId: string
    DryRun: boolean
end

local record EnableAddressTransferOutput
    AddressTransfer: AddressTransfer
end

local record EnableAllowedImagesSettingsInput
    AllowedImagesSettingsState: string
    DryRun: boolean
end

local record EnableAllowedImagesSettingsOutput
    AllowedImagesSettingsState: string
end

local record EnableAwsNetworkPerformanceMetricSubscriptionInput
    Source: string
    Destination: string
    Metric: string
    Statistic: string
    DryRun: boolean
end

local record EnableAwsNetworkPerformanceMetricSubscriptionOutput
    Output: boolean
end

local record EnableCapacityManagerInput
    OrganizationsAccess: boolean
    DryRun: boolean
    ClientToken: string
end

local record EnableCapacityManagerOutput
    CapacityManagerStatus: string
    OrganizationsAccess: boolean
end

local record EnableEbsEncryptionByDefaultInput
    DryRun: boolean
end

local record EnableEbsEncryptionByDefaultOutput
    EbsEncryptionByDefault: boolean
end

local record EnableFastLaunchInput
    ImageId: string
    ResourceType: string
    SnapshotConfiguration: FastLaunchSnapshotConfigurationRequest
    LaunchTemplate: FastLaunchLaunchTemplateSpecificationRequest
    MaxParallelLaunches: number
    DryRun: boolean
end

local record EnableFastLaunchOutput
    ImageId: string
    ResourceType: string
    SnapshotConfiguration: FastLaunchSnapshotConfigurationResponse
    LaunchTemplate: FastLaunchLaunchTemplateSpecificationResponse
    MaxParallelLaunches: number
    OwnerId: string
    State: string
    StateTransitionReason: string
    StateTransitionTime: number
end

local record EnableFastSnapshotRestoresInput
    AvailabilityZones: {string}
    AvailabilityZoneIds: {string}
    SourceSnapshotIds: {string}
    DryRun: boolean
end

local record EnableFastSnapshotRestoresOutput
    Successful: {EnableFastSnapshotRestoreSuccessItem}
    Unsuccessful: {EnableFastSnapshotRestoreErrorItem}
end

local record EnableImageInput
    ImageId: string
    DryRun: boolean
end

local record EnableImageOutput
    Return: boolean
end

local record EnableImageBlockPublicAccessInput
    ImageBlockPublicAccessState: string
    DryRun: boolean
end

local record EnableImageBlockPublicAccessOutput
    ImageBlockPublicAccessState: string
end

local record EnableImageDeprecationInput
    ImageId: string
    DeprecateAt: number
    DryRun: boolean
end

local record EnableImageDeprecationOutput
    Return: boolean
end

local record EnableImageDeregistrationProtectionInput
    ImageId: string
    WithCooldown: boolean
    DryRun: boolean
end

local record EnableImageDeregistrationProtectionOutput
    Return: string
end

local record EnableInstanceSqlHaStandbyDetectionsInput
    InstanceIds: {string}
    SqlServerCredentials: string
    DryRun: boolean
end

local record EnableInstanceSqlHaStandbyDetectionsOutput
    Instances: {RegisteredInstance}
end

local record EnableIpamOrganizationAdminAccountInput
    DryRun: boolean
    DelegatedAdminAccountId: string
end

local record EnableIpamOrganizationAdminAccountOutput
    Success: boolean
end

local record EnableIpamPolicyInput
    DryRun: boolean
    IpamPolicyId: string
    OrganizationTargetId: string
end

local record EnableIpamPolicyOutput
    IpamPolicyId: string
end

local record EnableReachabilityAnalyzerOrganizationSharingInput
    DryRun: boolean
end

local record EnableReachabilityAnalyzerOrganizationSharingOutput
    ReturnValue: boolean
end

local record EnableRouteServerPropagationInput
    RouteServerId: string
    RouteTableId: string
    DryRun: boolean
end

local record EnableRouteServerPropagationOutput
    RouteServerPropagation: RouteServerPropagation
end

local record EnableSerialConsoleAccessInput
    DryRun: boolean
end

local record EnableSerialConsoleAccessOutput
    SerialConsoleAccessEnabled: boolean
end

local record EnableSnapshotBlockPublicAccessInput
    State: string
    DryRun: boolean
end

local record EnableSnapshotBlockPublicAccessOutput
    State: string
end

local record EnableTransitGatewayRouteTablePropagationInput
    TransitGatewayRouteTableId: string
    TransitGatewayAttachmentId: string
    DryRun: boolean
    TransitGatewayRouteTableAnnouncementId: string
end

local record EnableTransitGatewayRouteTablePropagationOutput
    Propagation: TransitGatewayPropagation
end

local record EnableVgwRoutePropagationInput
    GatewayId: string
    RouteTableId: string
    DryRun: boolean
end

local record EnableVgwRoutePropagationOutput
end

local record EnableVolumeIOInput
    DryRun: boolean
    VolumeId: string
end

local record EnableVolumeIOOutput
end

local record EnableVpcClassicLinkInput
    DryRun: boolean
    VpcId: string
end

local record EnableVpcClassicLinkOutput
    Return: boolean
end

local record EnableVpcClassicLinkDnsSupportInput
    VpcId: string
end

local record EnableVpcClassicLinkDnsSupportOutput
    Return: boolean
end

local record ExportClientVpnClientCertificateRevocationListInput
    ClientVpnEndpointId: string
    DryRun: boolean
end

local record ExportClientVpnClientCertificateRevocationListOutput
    CertificateRevocationList: string
    Status: ClientCertificateRevocationListStatus
end

local record ExportClientVpnClientConfigurationInput
    ClientVpnEndpointId: string
    DryRun: boolean
end

local record ExportClientVpnClientConfigurationOutput
    ClientConfiguration: string
end

local record ExportImageInput
    ClientToken: string
    Description: string
    DiskImageFormat: string
    DryRun: boolean
    ImageId: string
    S3ExportLocation: ExportTaskS3LocationRequest
    RoleName: string
    TagSpecifications: {TagSpecification}
end

local record ExportImageOutput
    Description: string
    DiskImageFormat: string
    ExportImageTaskId: string
    ImageId: string
    RoleName: string
    Progress: string
    S3ExportLocation: ExportTaskS3Location
    Status: string
    StatusMessage: string
    Tags: {Tag}
end

local record ExportTransitGatewayRoutesInput
    TransitGatewayRouteTableId: string
    Filters: {Filter}
    S3Bucket: string
    DryRun: boolean
end

local record ExportTransitGatewayRoutesOutput
    S3Location: string
end

local record ExportVerifiedAccessInstanceClientConfigurationInput
    VerifiedAccessInstanceId: string
    DryRun: boolean
end

local record ExportVerifiedAccessInstanceClientConfigurationOutput
    Version: string
    VerifiedAccessInstanceId: string
    Region: string
    DeviceTrustProviders: {string}
    UserTrustProvider: VerifiedAccessInstanceUserTrustProviderClientConfiguration
    OpenVpnConfigurations: {VerifiedAccessInstanceOpenVpnClientConfiguration}
end

local record GetActiveVpnTunnelStatusInput
    VpnConnectionId: string
    VpnTunnelOutsideIpAddress: string
    DryRun: boolean
end

local record GetActiveVpnTunnelStatusOutput
    ActiveVpnTunnelStatus: ActiveVpnTunnelStatus
end

local record GetAllowedImagesSettingsInput
    DryRun: boolean
end

local record GetAllowedImagesSettingsOutput
    State: string
    ImageCriteria: {ImageCriterion}
    ManagedBy: string
end

local record GetAssociatedEnclaveCertificateIamRolesInput
    CertificateArn: string
    DryRun: boolean
end

local record GetAssociatedEnclaveCertificateIamRolesOutput
    AssociatedRoles: {AssociatedRole}
end

local record GetAssociatedIpv6PoolCidrsInput
    PoolId: string
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record GetAssociatedIpv6PoolCidrsOutput
    Ipv6CidrAssociations: {Ipv6CidrAssociation}
    NextToken: string
end

local record GetAwsNetworkPerformanceDataInput
    DataQueries: {DataQuery}
    StartTime: number
    EndTime: number
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetAwsNetworkPerformanceDataOutput
    DataResponses: {DataResponse}
    NextToken: string
end

local record GetCapacityManagerAttributesInput
    DryRun: boolean
end

local record GetCapacityManagerAttributesOutput
    CapacityManagerStatus: string
    OrganizationsAccess: boolean
    DataExportCount: number
    IngestionStatus: string
    IngestionStatusMessage: string
    EarliestDatapointTimestamp: number
    LatestDatapointTimestamp: number
end

local record GetCapacityManagerMetricDataInput
    MetricNames: {string}
    StartTime: number
    EndTime: number
    Period: number
    GroupBy: {string}
    FilterBy: {CapacityManagerCondition}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetCapacityManagerMetricDataOutput
    MetricDataResults: {MetricDataResult}
    NextToken: string
end

local record GetCapacityManagerMetricDimensionsInput
    GroupBy: {string}
    FilterBy: {CapacityManagerCondition}
    StartTime: number
    EndTime: number
    MetricNames: {string}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetCapacityManagerMetricDimensionsOutput
    MetricDimensionResults: {CapacityManagerDimension}
    NextToken: string
end

local record GetCapacityManagerMonitoredTagKeysInput
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetCapacityManagerMonitoredTagKeysOutput
    CapacityManagerTagKeys: {CapacityManagerMonitoredTagKey}
    NextToken: string
end

local record GetCapacityReservationUsageInput
    CapacityReservationId: string
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record GetCapacityReservationUsageOutput
    NextToken: string
    CapacityReservationId: string
    InstanceType: string
    TotalInstanceCount: number
    AvailableInstanceCount: number
    State: string
    InstanceUsages: {InstanceUsage}
    Interruptible: boolean
    InterruptibleCapacityAllocation: InterruptibleCapacityAllocation
    InterruptionInfo: InterruptionInfo
end

local record GetCoipPoolUsageInput
    PoolId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetCoipPoolUsageOutput
    CoipPoolId: string
    CoipAddressUsages: {CoipAddressUsage}
    LocalGatewayRouteTableId: string
    NextToken: string
end

local record GetConsoleOutputInput
    InstanceId: string
    Latest: boolean
    DryRun: boolean
end

local record GetConsoleOutputOutput
    InstanceId: string
    Timestamp: number
    Output: string
end

local record GetConsoleScreenshotInput
    DryRun: boolean
    InstanceId: string
    WakeUp: boolean
end

local record GetConsoleScreenshotOutput
    ImageData: string
    InstanceId: string
end

local record GetDeclarativePoliciesReportSummaryInput
    DryRun: boolean
    ReportId: string
end

local record GetDeclarativePoliciesReportSummaryOutput
    ReportId: string
    S3Bucket: string
    S3Prefix: string
    TargetId: string
    StartTime: number
    EndTime: number
    NumberOfAccounts: number
    NumberOfFailedAccounts: number
    AttributeSummaries: {AttributeSummary}
end

local record GetDefaultCreditSpecificationInput
    DryRun: boolean
    InstanceFamily: string
end

local record GetDefaultCreditSpecificationOutput
    InstanceFamilyCreditSpecification: InstanceFamilyCreditSpecification
end

local record GetEbsDefaultKmsKeyIdInput
    DryRun: boolean
end

local record GetEbsDefaultKmsKeyIdOutput
    KmsKeyId: string
end

local record GetEbsEncryptionByDefaultInput
    DryRun: boolean
end

local record GetEbsEncryptionByDefaultOutput
    EbsEncryptionByDefault: boolean
    SseType: string
end

local record GetEnabledIpamPolicyInput
    DryRun: boolean
end

local record GetEnabledIpamPolicyOutput
    IpamPolicyEnabled: boolean
    IpamPolicyId: string
    ManagedBy: string
end

local record GetFlowLogsIntegrationTemplateInput
    DryRun: boolean
    FlowLogId: string
    ConfigDeliveryS3DestinationArn: string
    IntegrateServices: IntegrateServices
end

local record GetFlowLogsIntegrationTemplateOutput
    Result: string
end

local record GetGroupsForCapacityReservationInput
    CapacityReservationId: string
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record GetGroupsForCapacityReservationOutput
    NextToken: string
    CapacityReservationGroups: {CapacityReservationGroup}
end

local record GetHostReservationPurchasePreviewInput
    HostIdSet: {string}
    OfferingId: string
end

local record GetHostReservationPurchasePreviewOutput
    CurrencyCode: string
    Purchase: {Purchase}
    TotalHourlyPrice: string
    TotalUpfrontPrice: string
end

local record GetImageAncestryInput
    ImageId: string
    DryRun: boolean
end

local record GetImageAncestryOutput
    ImageAncestryEntries: {ImageAncestryEntry}
end

local record GetImageBlockPublicAccessStateInput
    DryRun: boolean
end

local record GetImageBlockPublicAccessStateOutput
    ImageBlockPublicAccessState: string
    ManagedBy: string
end

local record GetInstanceMetadataDefaultsInput
    DryRun: boolean
end

local record GetInstanceMetadataDefaultsOutput
    AccountLevel: InstanceMetadataDefaultsResponse
end

local record GetInstanceTpmEkPubInput
    InstanceId: string
    KeyType: string
    KeyFormat: string
    DryRun: boolean
end

local record GetInstanceTpmEkPubOutput
    InstanceId: string
    KeyType: string
    KeyFormat: string
    KeyValue: string
end

local record GetInstanceTypesFromInstanceRequirementsInput
    DryRun: boolean
    ArchitectureTypes: {string}
    VirtualizationTypes: {string}
    InstanceRequirements: InstanceRequirementsRequest
    MaxResults: number
    NextToken: string
    Context: string
end

local record GetInstanceTypesFromInstanceRequirementsOutput
    InstanceTypes: {InstanceTypeInfoFromInstanceRequirements}
    NextToken: string
end

local record GetInstanceUefiDataInput
    InstanceId: string
    DryRun: boolean
end

local record GetInstanceUefiDataOutput
    InstanceId: string
    UefiData: string
end

local record GetIpamAddressHistoryInput
    DryRun: boolean
    Cidr: string
    IpamScopeId: string
    VpcId: string
    StartTime: number
    EndTime: number
    MaxResults: number
    NextToken: string
end

local record GetIpamAddressHistoryOutput
    HistoryRecords: {IpamAddressHistoryRecord}
    NextToken: string
end

local record GetIpamDiscoveredAccountsInput
    DryRun: boolean
    IpamResourceDiscoveryId: string
    DiscoveryRegion: string
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record GetIpamDiscoveredAccountsOutput
    IpamDiscoveredAccounts: {IpamDiscoveredAccount}
    NextToken: string
end

local record GetIpamDiscoveredPublicAddressesInput
    DryRun: boolean
    IpamResourceDiscoveryId: string
    AddressRegion: string
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record GetIpamDiscoveredPublicAddressesOutput
    IpamDiscoveredPublicAddresses: {IpamDiscoveredPublicAddress}
    OldestSampleTime: number
    NextToken: string
end

local record GetIpamDiscoveredResourceCidrsInput
    DryRun: boolean
    IpamResourceDiscoveryId: string
    ResourceRegion: string
    Filters: {Filter}
    NextToken: string
    MaxResults: number
end

local record GetIpamDiscoveredResourceCidrsOutput
    IpamDiscoveredResourceCidrs: {IpamDiscoveredResourceCidr}
    NextToken: string
end

local record GetIpamPolicyAllocationRulesInput
    DryRun: boolean
    IpamPolicyId: string
    Filters: {Filter}
    Locale: string
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record GetIpamPolicyAllocationRulesOutput
    IpamPolicyDocuments: {IpamPolicyDocument}
    NextToken: string
end

local record GetIpamPolicyOrganizationTargetsInput
    DryRun: boolean
    MaxResults: number
    NextToken: string
    IpamPolicyId: string
    Filters: {Filter}
end

local record GetIpamPolicyOrganizationTargetsOutput
    OrganizationTargets: {IpamPolicyOrganizationTarget}
    NextToken: string
end

local record GetIpamPoolAllocationsInput
    DryRun: boolean
    IpamPoolId: string
    IpamPoolAllocationId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record GetIpamPoolAllocationsOutput
    IpamPoolAllocations: {IpamPoolAllocation}
    NextToken: string
end

local record GetIpamPoolCidrsInput
    DryRun: boolean
    IpamPoolId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record GetIpamPoolCidrsOutput
    IpamPoolCidrs: {IpamPoolCidr}
    NextToken: string
end

local record GetIpamPrefixListResolverRulesInput
    DryRun: boolean
    IpamPrefixListResolverId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record GetIpamPrefixListResolverRulesOutput
    Rules: {IpamPrefixListResolverRule}
    NextToken: string
end

local record GetIpamPrefixListResolverVersionEntriesInput
    DryRun: boolean
    IpamPrefixListResolverId: string
    IpamPrefixListResolverVersion: number
    MaxResults: number
    NextToken: string
end

local record GetIpamPrefixListResolverVersionEntriesOutput
    Entries: {IpamPrefixListResolverVersionEntry}
    NextToken: string
end

local record GetIpamPrefixListResolverVersionsInput
    DryRun: boolean
    IpamPrefixListResolverId: string
    IpamPrefixListResolverVersions: {number}
    MaxResults: number
    Filters: {Filter}
    NextToken: string
end

local record GetIpamPrefixListResolverVersionsOutput
    IpamPrefixListResolverVersions: {IpamPrefixListResolverVersion}
    NextToken: string
end

local record GetIpamResourceCidrsInput
    DryRun: boolean
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    IpamScopeId: string
    IpamPoolId: string
    ResourceId: string
    ResourceType: string
    ResourceTag: RequestIpamResourceTag
    ResourceOwner: string
end

local record GetIpamResourceCidrsOutput
    NextToken: string
    IpamResourceCidrs: {IpamResourceCidr}
end

local record GetLaunchTemplateDataInput
    DryRun: boolean
    InstanceId: string
end

local record GetLaunchTemplateDataOutput
    LaunchTemplateData: ResponseLaunchTemplateData
end

local record GetManagedPrefixListAssociationsInput
    DryRun: boolean
    PrefixListId: string
    MaxResults: number
    NextToken: string
end

local record GetManagedPrefixListAssociationsOutput
    PrefixListAssociations: {PrefixListAssociation}
    NextToken: string
end

local record GetManagedPrefixListEntriesInput
    DryRun: boolean
    PrefixListId: string
    TargetVersion: number
    MaxResults: number
    NextToken: string
end

local record GetManagedPrefixListEntriesOutput
    Entries: {PrefixListEntry}
    NextToken: string
end

local record GetManagedResourceVisibilityInput
    DryRun: boolean
end

local record GetManagedResourceVisibilityOutput
    Visibility: ManagedResourceVisibilitySettings
end

local record GetNetworkInsightsAccessScopeAnalysisFindingsInput
    NetworkInsightsAccessScopeAnalysisId: string
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetNetworkInsightsAccessScopeAnalysisFindingsOutput
    NetworkInsightsAccessScopeAnalysisId: string
    AnalysisStatus: string
    AnalysisFindings: {AccessScopeAnalysisFinding}
    NextToken: string
end

local record GetNetworkInsightsAccessScopeContentInput
    NetworkInsightsAccessScopeId: string
    DryRun: boolean
end

local record GetNetworkInsightsAccessScopeContentOutput
    NetworkInsightsAccessScopeContent: NetworkInsightsAccessScopeContent
end

local record GetPasswordDataInput
    InstanceId: string
    DryRun: boolean
end

local record GetPasswordDataOutput
    InstanceId: string
    Timestamp: number
    PasswordData: string
end

local record GetReservedInstancesExchangeQuoteInput
    DryRun: boolean
    ReservedInstanceIds: {string}
    TargetConfigurations: {TargetConfigurationRequest}
end

local record GetReservedInstancesExchangeQuoteOutput
    CurrencyCode: string
    IsValidExchange: boolean
    OutputReservedInstancesWillExpireAt: number
    PaymentDue: string
    ReservedInstanceValueRollup: ReservationValue
    ReservedInstanceValueSet: {ReservedInstanceReservationValue}
    TargetConfigurationValueRollup: ReservationValue
    TargetConfigurationValueSet: {TargetReservationValue}
    ValidationFailureReason: string
end

local record GetRouteServerAssociationsInput
    RouteServerId: string
    DryRun: boolean
end

local record GetRouteServerAssociationsOutput
    RouteServerAssociations: {RouteServerAssociation}
end

local record GetRouteServerPropagationsInput
    RouteServerId: string
    RouteTableId: string
    DryRun: boolean
end

local record GetRouteServerPropagationsOutput
    RouteServerPropagations: {RouteServerPropagation}
end

local record GetRouteServerRoutingDatabaseInput
    RouteServerId: string
    NextToken: string
    MaxResults: number
    DryRun: boolean
    Filters: {Filter}
end

local record GetRouteServerRoutingDatabaseOutput
    AreRoutesPersisted: boolean
    Routes: {RouteServerRoute}
    NextToken: string
end

local record GetSecurityGroupsForVpcInput
    VpcId: string
    NextToken: string
    MaxResults: number
    Filters: {Filter}
    DryRun: boolean
end

local record GetSecurityGroupsForVpcOutput
    NextToken: string
    SecurityGroupForVpcs: {SecurityGroupForVpc}
end

local record GetSerialConsoleAccessStatusInput
    DryRun: boolean
end

local record GetSerialConsoleAccessStatusOutput
    SerialConsoleAccessEnabled: boolean
    ManagedBy: string
end

local record GetSnapshotBlockPublicAccessStateInput
    DryRun: boolean
end

local record GetSnapshotBlockPublicAccessStateOutput
    State: string
    ManagedBy: string
end

local record GetSpotPlacementScoresInput
    InstanceTypes: {string}
    TargetCapacity: number
    TargetCapacityUnitType: string
    SingleAvailabilityZone: boolean
    RegionNames: {string}
    InstanceRequirementsWithMetadata: InstanceRequirementsWithMetadataRequest
    DryRun: boolean
    MaxResults: number
    NextToken: string
end

local record GetSpotPlacementScoresOutput
    SpotPlacementScores: {SpotPlacementScore}
    NextToken: string
end

local record GetSubnetCidrReservationsInput
    Filters: {Filter}
    SubnetId: string
    DryRun: boolean
    NextToken: string
    MaxResults: number
end

local record GetSubnetCidrReservationsOutput
    SubnetIpv4CidrReservations: {SubnetCidrReservation}
    SubnetIpv6CidrReservations: {SubnetCidrReservation}
    NextToken: string
end

local record GetTransitGatewayAttachmentPropagationsInput
    TransitGatewayAttachmentId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayAttachmentPropagationsOutput
    TransitGatewayAttachmentPropagations: {TransitGatewayAttachmentPropagation}
    NextToken: string
end

local record GetTransitGatewayMeteringPolicyEntriesInput
    TransitGatewayMeteringPolicyId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayMeteringPolicyEntriesOutput
    TransitGatewayMeteringPolicyEntries: {TransitGatewayMeteringPolicyEntry}
    NextToken: string
end

local record GetTransitGatewayMulticastDomainAssociationsInput
    TransitGatewayMulticastDomainId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayMulticastDomainAssociationsOutput
    MulticastDomainAssociations: {TransitGatewayMulticastDomainAssociation}
    NextToken: string
end

local record GetTransitGatewayPolicyTableAssociationsInput
    TransitGatewayPolicyTableId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayPolicyTableAssociationsOutput
    Associations: {TransitGatewayPolicyTableAssociation}
    NextToken: string
end

local record GetTransitGatewayPolicyTableEntriesInput
    TransitGatewayPolicyTableId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayPolicyTableEntriesOutput
    TransitGatewayPolicyTableEntries: {TransitGatewayPolicyTableEntry}
end

local record GetTransitGatewayPrefixListReferencesInput
    TransitGatewayRouteTableId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayPrefixListReferencesOutput
    TransitGatewayPrefixListReferences: {TransitGatewayPrefixListReference}
    NextToken: string
end

local record GetTransitGatewayRouteTableAssociationsInput
    TransitGatewayRouteTableId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayRouteTableAssociationsOutput
    Associations: {TransitGatewayRouteTableAssociation}
    NextToken: string
end

local record GetTransitGatewayRouteTablePropagationsInput
    TransitGatewayRouteTableId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetTransitGatewayRouteTablePropagationsOutput
    TransitGatewayRouteTablePropagations: {TransitGatewayRouteTablePropagation}
    NextToken: string
end

local record GetVerifiedAccessEndpointPolicyInput
    VerifiedAccessEndpointId: string
    DryRun: boolean
end

local record GetVerifiedAccessEndpointPolicyOutput
    PolicyEnabled: boolean
    PolicyDocument: string
end

local record GetVerifiedAccessEndpointTargetsInput
    VerifiedAccessEndpointId: string
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetVerifiedAccessEndpointTargetsOutput
    VerifiedAccessEndpointTargets: {VerifiedAccessEndpointTarget}
    NextToken: string
end

local record GetVerifiedAccessGroupPolicyInput
    VerifiedAccessGroupId: string
    DryRun: boolean
end

local record GetVerifiedAccessGroupPolicyOutput
    PolicyEnabled: boolean
    PolicyDocument: string
end

local record GetVpcResourcesBlockingEncryptionEnforcementInput
    VpcId: string
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetVpcResourcesBlockingEncryptionEnforcementOutput
    NonCompliantResources: {VpcEncryptionNonCompliantResource}
    NextToken: string
end

local record GetVpnConnectionDeviceSampleConfigurationInput
    VpnConnectionId: string
    VpnConnectionDeviceTypeId: string
    InternetKeyExchangeVersion: string
    SampleType: string
    DryRun: boolean
end

local record GetVpnConnectionDeviceSampleConfigurationOutput
    VpnConnectionDeviceSampleConfiguration: string
end

local record GetVpnConnectionDeviceTypesInput
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record GetVpnConnectionDeviceTypesOutput
    VpnConnectionDeviceTypes: {VpnConnectionDeviceType}
    NextToken: string
end

local record GetVpnTunnelReplacementStatusInput
    VpnConnectionId: string
    VpnTunnelOutsideIpAddress: string
    DryRun: boolean
end

local record GetVpnTunnelReplacementStatusOutput
    VpnConnectionId: string
    TransitGatewayId: string
    CustomerGatewayId: string
    VpnGatewayId: string
    VpnTunnelOutsideIpAddress: string
    MaintenanceDetails: MaintenanceDetails
end

local record ImportClientVpnClientCertificateRevocationListInput
    ClientVpnEndpointId: string
    CertificateRevocationList: string
    DryRun: boolean
end

local record ImportClientVpnClientCertificateRevocationListOutput
    Return: boolean
end

local record ImportImageInput
    Architecture: string
    ClientData: ClientData
    ClientToken: string
    Description: string
    DiskContainers: {ImageDiskContainer}
    DryRun: boolean
    Encrypted: boolean
    Hypervisor: string
    KmsKeyId: string
    LicenseType: string
    Platform: string
    RoleName: string
    LicenseSpecifications: {ImportImageLicenseConfigurationRequest}
    TagSpecifications: {TagSpecification}
    UsageOperation: string
    BootMode: string
end

local record ImportImageOutput
    Architecture: string
    Description: string
    Encrypted: boolean
    Hypervisor: string
    ImageId: string
    ImportTaskId: string
    KmsKeyId: string
    LicenseType: string
    Platform: string
    Progress: string
    SnapshotDetails: {SnapshotDetail}
    Status: string
    StatusMessage: string
    LicenseSpecifications: {ImportImageLicenseConfigurationResponse}
    Tags: {Tag}
    UsageOperation: string
end

local record ImportInstanceInput
    DryRun: boolean
    Description: string
    LaunchSpecification: ImportInstanceLaunchSpecification
    DiskImages: {DiskImage}
    Platform: string
end

local record ImportInstanceOutput
    ConversionTask: ConversionTask
end

local record ImportKeyPairInput
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    KeyName: string
    PublicKeyMaterial: string
end

local record ImportKeyPairOutput
    KeyFingerprint: string
    KeyName: string
    KeyPairId: string
    Tags: {Tag}
end

local record ImportSnapshotInput
    ClientData: ClientData
    ClientToken: string
    Description: string
    DiskContainer: SnapshotDiskContainer
    DryRun: boolean
    Encrypted: boolean
    KmsKeyId: string
    RoleName: string
    TagSpecifications: {TagSpecification}
end

local record ImportSnapshotOutput
    Description: string
    ImportTaskId: string
    SnapshotTaskDetail: SnapshotTaskDetail
    Tags: {Tag}
end

local record ImportVolumeInput
    AvailabilityZoneId: string
    DryRun: boolean
    AvailabilityZone: string
    Image: DiskImageDetail
    Description: string
    Volume: VolumeDetail
end

local record ImportVolumeOutput
    ConversionTask: ConversionTask
end

local record ListImagesInRecycleBinInput
    ImageIds: {string}
    NextToken: string
    MaxResults: number
    DryRun: boolean
end

local record ListImagesInRecycleBinOutput
    Images: {ImageRecycleBinInfo}
    NextToken: string
end

local record ListSnapshotsInRecycleBinInput
    MaxResults: number
    NextToken: string
    SnapshotIds: {string}
    DryRun: boolean
end

local record ListSnapshotsInRecycleBinOutput
    Snapshots: {SnapshotRecycleBinInfo}
    NextToken: string
end

local record ListVolumesInRecycleBinInput
    VolumeIds: {string}
    DryRun: boolean
    MaxResults: number
    NextToken: string
end

local record ListVolumesInRecycleBinOutput
    Volumes: {VolumeRecycleBinInfo}
    NextToken: string
end

local record LockSnapshotInput
    SnapshotId: string
    DryRun: boolean
    LockMode: string
    CoolOffPeriod: number
    LockDuration: number
    ExpirationDate: number
end

local record LockSnapshotOutput
    SnapshotId: string
    LockState: string
    LockDuration: number
    CoolOffPeriod: number
    CoolOffPeriodExpiresOn: number
    LockCreatedOn: number
    LockExpiresOn: number
    LockDurationStartTime: number
end

local record ModifyAddressAttributeInput
    AllocationId: string
    DomainName: string
    DryRun: boolean
end

local record ModifyAddressAttributeOutput
    Address: AddressAttribute
end

local record ModifyAvailabilityZoneGroupInput
    GroupName: string
    OptInStatus: string
    DryRun: boolean
end

local record ModifyAvailabilityZoneGroupOutput
    Return: boolean
end

local record ModifyCapacityReservationInput
    CapacityReservationId: string
    InstanceCount: number
    EndDate: number
    EndDateType: string
    Accept: boolean
    DryRun: boolean
    AdditionalInfo: string
    InstanceMatchCriteria: string
end

local record ModifyCapacityReservationOutput
    Return: boolean
end

local record ModifyCapacityReservationFleetInput
    CapacityReservationFleetId: string
    TotalTargetCapacity: number
    EndDate: number
    DryRun: boolean
    RemoveEndDate: boolean
end

local record ModifyCapacityReservationFleetOutput
    Return: boolean
end

local record ModifyClientVpnEndpointInput
    ClientVpnEndpointId: string
    ServerCertificateArn: string
    ConnectionLogOptions: ConnectionLogOptions
    DnsServers: DnsServersOptionsModifyStructure
    VpnPort: number
    Description: string
    SplitTunnel: boolean
    DryRun: boolean
    SecurityGroupIds: {string}
    VpcId: string
    SelfServicePortal: string
    ClientConnectOptions: ClientConnectOptions
    SessionTimeoutHours: number
    ClientLoginBannerOptions: ClientLoginBannerOptions
    ClientRouteEnforcementOptions: ClientRouteEnforcementOptions
    DisconnectOnSessionTimeout: boolean
    TransitGatewayConfiguration: TransitGatewayConfigurationInputStructure
end

local record ModifyClientVpnEndpointOutput
    Return: boolean
end

local record ModifyDefaultCreditSpecificationInput
    DryRun: boolean
    InstanceFamily: string
    CpuCredits: string
end

local record ModifyDefaultCreditSpecificationOutput
    InstanceFamilyCreditSpecification: InstanceFamilyCreditSpecification
end

local record ModifyEbsDefaultKmsKeyIdInput
    KmsKeyId: string
    DryRun: boolean
end

local record ModifyEbsDefaultKmsKeyIdOutput
    KmsKeyId: string
end

local record ModifyFleetInput
    DryRun: boolean
    ExcessCapacityTerminationPolicy: string
    LaunchTemplateConfigs: {FleetLaunchTemplateConfigRequest}
    FleetId: string
    TargetCapacitySpecification: TargetCapacitySpecificationRequest
    Context: string
end

local record ModifyFleetOutput
    Return: boolean
end

local record ModifyFpgaImageAttributeInput
    DryRun: boolean
    FpgaImageId: string
    Attribute: string
    OperationType: string
    UserIds: {string}
    UserGroups: {string}
    ProductCodes: {string}
    LoadPermission: LoadPermissionModifications
    Description: string
    Name: string
end

local record ModifyFpgaImageAttributeOutput
    FpgaImageAttribute: FpgaImageAttribute
end

local record ModifyHostsInput
    HostRecovery: string
    InstanceType: string
    InstanceFamily: string
    HostMaintenance: string
    HostIds: {string}
    AutoPlacement: string
end

local record ModifyHostsOutput
    Successful: {string}
    Unsuccessful: {UnsuccessfulItem}
end

local record ModifyIdentityIdFormatInput
    Resource: string
    UseLongIds: boolean
    PrincipalArn: string
end

local record ModifyIdentityIdFormatOutput
end

local record ModifyIdFormatInput
    Resource: string
    UseLongIds: boolean
end

local record ModifyIdFormatOutput
end

local record ModifyImageAttributeInput
    Attribute: string
    Description: AttributeValue
    ImageId: string
    LaunchPermission: LaunchPermissionModifications
    OperationType: string
    ProductCodes: {string}
    UserGroups: {string}
    UserIds: {string}
    Value: string
    OrganizationArns: {string}
    OrganizationalUnitArns: {string}
    ImdsSupport: AttributeValue
    DryRun: boolean
end

local record ModifyImageAttributeOutput
end

local record ModifyInstanceAttributeInput
    SourceDestCheck: AttributeBooleanValue
    DisableApiStop: AttributeBooleanValue
    DryRun: boolean
    InstanceId: string
    Attribute: string
    Value: string
    BlockDeviceMappings: {InstanceBlockDeviceMappingSpecification}
    DisableApiTermination: AttributeBooleanValue
    InstanceType: AttributeValue
    Kernel: AttributeValue
    Ramdisk: AttributeValue
    UserData: BlobAttributeValue
    InstanceInitiatedShutdownBehavior: AttributeValue
    Groups: {string}
    EbsOptimized: AttributeBooleanValue
    SriovNetSupport: AttributeValue
    EnaSupport: AttributeBooleanValue
end

local record ModifyInstanceAttributeOutput
end

local record ModifyInstanceCapacityReservationAttributesInput
    InstanceId: string
    CapacityReservationSpecification: CapacityReservationSpecification
    DryRun: boolean
end

local record ModifyInstanceCapacityReservationAttributesOutput
    Return: boolean
end

local record ModifyInstanceConnectEndpointInput
    DryRun: boolean
    InstanceConnectEndpointId: string
    IpAddressType: string
    SecurityGroupIds: {string}
    PreserveClientIp: boolean
end

local record ModifyInstanceConnectEndpointOutput
    Return: boolean
end

local record ModifyInstanceCpuOptionsInput
    InstanceId: string
    CoreCount: number
    ThreadsPerCore: number
    NestedVirtualization: string
    DryRun: boolean
end

local record ModifyInstanceCpuOptionsOutput
    InstanceId: string
    CoreCount: number
    ThreadsPerCore: number
    NestedVirtualization: string
end

local record ModifyInstanceCreditSpecificationInput
    DryRun: boolean
    ClientToken: string
    InstanceCreditSpecifications: {InstanceCreditSpecificationRequest}
end

local record ModifyInstanceCreditSpecificationOutput
    SuccessfulInstanceCreditSpecifications: {SuccessfulInstanceCreditSpecificationItem}
    UnsuccessfulInstanceCreditSpecifications: {UnsuccessfulInstanceCreditSpecificationItem}
end

local record ModifyInstanceEventStartTimeInput
    DryRun: boolean
    InstanceId: string
    InstanceEventId: string
    NotBefore: number
end

local record ModifyInstanceEventStartTimeOutput
    Event: InstanceStatusEvent
end

local record ModifyInstanceEventWindowInput
    DryRun: boolean
    Name: string
    InstanceEventWindowId: string
    TimeRanges: {InstanceEventWindowTimeRangeRequest}
    CronExpression: string
end

local record ModifyInstanceEventWindowOutput
    InstanceEventWindow: InstanceEventWindow
end

local record ModifyInstanceMaintenanceOptionsInput
    InstanceId: string
    AutoRecovery: string
    RebootMigration: string
    DryRun: boolean
end

local record ModifyInstanceMaintenanceOptionsOutput
    InstanceId: string
    AutoRecovery: string
    RebootMigration: string
end

local record ModifyInstanceMetadataDefaultsInput
    HttpTokens: string
    HttpPutResponseHopLimit: number
    HttpEndpoint: string
    InstanceMetadataTags: string
    DryRun: boolean
    HttpTokensEnforced: string
end

local record ModifyInstanceMetadataDefaultsOutput
    Return: boolean
end

local record ModifyInstanceMetadataOptionsInput
    InstanceId: string
    HttpTokens: string
    HttpPutResponseHopLimit: number
    HttpEndpoint: string
    DryRun: boolean
    HttpProtocolIpv6: string
    InstanceMetadataTags: string
end

local record ModifyInstanceMetadataOptionsOutput
    InstanceId: string
    InstanceMetadataOptions: InstanceMetadataOptionsResponse
end

local record ModifyInstanceNetworkPerformanceOptionsInput
    InstanceId: string
    BandwidthWeighting: string
    DryRun: boolean
end

local record ModifyInstanceNetworkPerformanceOptionsOutput
    InstanceId: string
    BandwidthWeighting: string
end

local record ModifyInstancePlacementInput
    GroupName: string
    PartitionNumber: number
    HostResourceGroupArn: string
    GroupId: string
    InstanceId: string
    Tenancy: string
    Affinity: string
    HostId: string
end

local record ModifyInstancePlacementOutput
    Return: boolean
end

local record ModifyIpamInput
    DryRun: boolean
    IpamId: string
    Description: string
    AddOperatingRegions: {AddIpamOperatingRegion}
    RemoveOperatingRegions: {RemoveIpamOperatingRegion}
    Tier: string
    EnablePrivateGua: boolean
    MeteredAccount: string
end

local record ModifyIpamOutput
    Ipam: Ipam
end

local record ModifyIpamPolicyAllocationRulesInput
    DryRun: boolean
    IpamPolicyId: string
    Locale: string
    ResourceType: string
    AllocationRules: {IpamPolicyAllocationRuleRequest}
end

local record ModifyIpamPolicyAllocationRulesOutput
    IpamPolicyDocument: IpamPolicyDocument
end

local record ModifyIpamPoolInput
    DryRun: boolean
    IpamPoolId: string
    Description: string
    AutoImport: boolean
    AllocationMinNetmaskLength: number
    AllocationMaxNetmaskLength: number
    AllocationDefaultNetmaskLength: number
    ClearAllocationDefaultNetmaskLength: boolean
    AddAllocationResourceTags: {RequestIpamResourceTag}
    RemoveAllocationResourceTags: {RequestIpamResourceTag}
end

local record ModifyIpamPoolOutput
    IpamPool: IpamPool
end

local record ModifyIpamPrefixListResolverInput
    DryRun: boolean
    IpamPrefixListResolverId: string
    Description: string
    Rules: {IpamPrefixListResolverRuleRequest}
end

local record ModifyIpamPrefixListResolverOutput
    IpamPrefixListResolver: IpamPrefixListResolver
end

local record ModifyIpamPrefixListResolverTargetInput
    DryRun: boolean
    IpamPrefixListResolverTargetId: string
    DesiredVersion: number
    TrackLatestVersion: boolean
    ClientToken: string
end

local record ModifyIpamPrefixListResolverTargetOutput
    IpamPrefixListResolverTarget: IpamPrefixListResolverTarget
end

local record ModifyIpamResourceCidrInput
    DryRun: boolean
    ResourceId: string
    ResourceCidr: string
    ResourceRegion: string
    CurrentIpamScopeId: string
    DestinationIpamScopeId: string
    Monitored: boolean
end

local record ModifyIpamResourceCidrOutput
    IpamResourceCidr: IpamResourceCidr
end

local record ModifyIpamResourceDiscoveryInput
    DryRun: boolean
    IpamResourceDiscoveryId: string
    Description: string
    AddOperatingRegions: {AddIpamOperatingRegion}
    RemoveOperatingRegions: {RemoveIpamOperatingRegion}
    AddOrganizationalUnitExclusions: {AddIpamOrganizationalUnitExclusion}
    RemoveOrganizationalUnitExclusions: {RemoveIpamOrganizationalUnitExclusion}
end

local record ModifyIpamResourceDiscoveryOutput
    IpamResourceDiscovery: IpamResourceDiscovery
end

local record ModifyIpamScopeInput
    DryRun: boolean
    IpamScopeId: string
    Description: string
    ExternalAuthorityConfiguration: ExternalAuthorityConfiguration
    RemoveExternalAuthorityConfiguration: boolean
end

local record ModifyIpamScopeOutput
    IpamScope: IpamScope
end

local record ModifyLaunchTemplateInput
    DryRun: boolean
    ClientToken: string
    LaunchTemplateId: string
    LaunchTemplateName: string
    DefaultVersion: string
end

local record ModifyLaunchTemplateOutput
    LaunchTemplate: LaunchTemplate
end

local record ModifyLocalGatewayRouteInput
    DestinationCidrBlock: string
    LocalGatewayRouteTableId: string
    LocalGatewayVirtualInterfaceGroupId: string
    NetworkInterfaceId: string
    DryRun: boolean
    DestinationPrefixListId: string
end

local record ModifyLocalGatewayRouteOutput
    Route: LocalGatewayRoute
end

local record ModifyManagedPrefixListInput
    DryRun: boolean
    PrefixListId: string
    CurrentVersion: number
    PrefixListName: string
    AddEntries: {AddPrefixListEntry}
    RemoveEntries: {RemovePrefixListEntry}
    MaxEntries: number
    IpamPrefixListResolverSyncEnabled: boolean
end

local record ModifyManagedPrefixListOutput
    PrefixList: ManagedPrefixList
end

local record ModifyManagedResourceVisibilityInput
    DryRun: boolean
    DefaultVisibility: string
end

local record ModifyManagedResourceVisibilityOutput
    Visibility: ManagedResourceVisibilitySettings
end

local record ModifyNetworkInterfaceAttributeInput
    EnaSrdSpecification: EnaSrdSpecification
    EnablePrimaryIpv6: boolean
    ConnectionTrackingSpecification: ConnectionTrackingSpecificationRequest
    AssociatePublicIpAddress: boolean
    AssociatedSubnetIds: {string}
    DryRun: boolean
    NetworkInterfaceId: string
    Description: AttributeValue
    SourceDestCheck: AttributeBooleanValue
    Groups: {string}
    Attachment: NetworkInterfaceAttachmentChanges
end

local record ModifyNetworkInterfaceAttributeOutput
end

local record ModifyPrivateDnsNameOptionsInput
    DryRun: boolean
    InstanceId: string
    PrivateDnsHostnameType: string
    EnableResourceNameDnsARecord: boolean
    EnableResourceNameDnsAAAARecord: boolean
end

local record ModifyPrivateDnsNameOptionsOutput
    Return: boolean
end

local record ModifyPublicIpDnsNameOptionsInput
    NetworkInterfaceId: string
    HostnameType: string
    DryRun: boolean
end

local record ModifyPublicIpDnsNameOptionsOutput
    Successful: boolean
end

local record ModifyReservedInstancesInput
    ReservedInstancesIds: {string}
    ClientToken: string
    TargetConfigurations: {ReservedInstancesConfiguration}
end

local record ModifyReservedInstancesOutput
    ReservedInstancesModificationId: string
end

local record ModifyRouteServerInput
    RouteServerId: string
    PersistRoutes: string
    PersistRoutesDuration: number
    SnsNotificationsEnabled: boolean
    DryRun: boolean
end

local record ModifyRouteServerOutput
    RouteServer: RouteServer
end

local record ModifySecurityGroupRulesInput
    GroupId: string
    SecurityGroupRules: {SecurityGroupRuleUpdate}
    DryRun: boolean
end

local record ModifySecurityGroupRulesOutput
    Return: boolean
end

local record ModifySnapshotAttributeInput
    Attribute: string
    CreateVolumePermission: CreateVolumePermissionModifications
    GroupNames: {string}
    OperationType: string
    SnapshotId: string
    UserIds: {string}
    DryRun: boolean
end

local record ModifySnapshotAttributeOutput
end

local record ModifySnapshotTierInput
    SnapshotId: string
    StorageTier: string
    DryRun: boolean
end

local record ModifySnapshotTierOutput
    SnapshotId: string
    TieringStartTime: number
end

local record ModifySpotFleetRequestInput
    LaunchTemplateConfigs: {LaunchTemplateConfig}
    OnDemandTargetCapacity: number
    Context: string
    SpotFleetRequestId: string
    TargetCapacity: number
    ExcessCapacityTerminationPolicy: string
end

local record ModifySpotFleetRequestOutput
    Return: boolean
end

local record ModifySubnetAttributeInput
    AssignIpv6AddressOnCreation: AttributeBooleanValue
    MapPublicIpOnLaunch: AttributeBooleanValue
    SubnetId: string
    MapCustomerOwnedIpOnLaunch: AttributeBooleanValue
    CustomerOwnedIpv4Pool: string
    EnableDns64: AttributeBooleanValue
    PrivateDnsHostnameTypeOnLaunch: string
    EnableResourceNameDnsARecordOnLaunch: AttributeBooleanValue
    EnableResourceNameDnsAAAARecordOnLaunch: AttributeBooleanValue
    EnableLniAtDeviceIndex: number
    DisableLniAtDeviceIndex: AttributeBooleanValue
end

local record ModifySubnetAttributeOutput
end

local record ModifyTrafficMirrorFilterNetworkServicesInput
    TrafficMirrorFilterId: string
    AddNetworkServices: {string}
    RemoveNetworkServices: {string}
    DryRun: boolean
end

local record ModifyTrafficMirrorFilterNetworkServicesOutput
    TrafficMirrorFilter: TrafficMirrorFilter
end

local record ModifyTrafficMirrorFilterRuleInput
    TrafficMirrorFilterRuleId: string
    TrafficDirection: string
    RuleNumber: number
    RuleAction: string
    DestinationPortRange: TrafficMirrorPortRangeRequest
    SourcePortRange: TrafficMirrorPortRangeRequest
    Protocol: number
    DestinationCidrBlock: string
    SourceCidrBlock: string
    Description: string
    RemoveFields: {string}
    DryRun: boolean
end

local record ModifyTrafficMirrorFilterRuleOutput
    TrafficMirrorFilterRule: TrafficMirrorFilterRule
end

local record ModifyTrafficMirrorSessionInput
    TrafficMirrorSessionId: string
    TrafficMirrorTargetId: string
    TrafficMirrorFilterId: string
    PacketLength: number
    SessionNumber: number
    VirtualNetworkId: number
    Description: string
    RemoveFields: {string}
    DryRun: boolean
end

local record ModifyTrafficMirrorSessionOutput
    TrafficMirrorSession: TrafficMirrorSession
end

local record ModifyTransitGatewayInput
    TransitGatewayId: string
    Description: string
    Options: ModifyTransitGatewayOptions
    DryRun: boolean
end

local record ModifyTransitGatewayOutput
    TransitGateway: TransitGateway
end

local record ModifyTransitGatewayMeteringPolicyInput
    TransitGatewayMeteringPolicyId: string
    AddMiddleboxAttachmentIds: {string}
    RemoveMiddleboxAttachmentIds: {string}
    DryRun: boolean
end

local record ModifyTransitGatewayMeteringPolicyOutput
    TransitGatewayMeteringPolicy: TransitGatewayMeteringPolicy
end

local record ModifyTransitGatewayPrefixListReferenceInput
    TransitGatewayRouteTableId: string
    PrefixListId: string
    TransitGatewayAttachmentId: string
    Blackhole: boolean
    DryRun: boolean
end

local record ModifyTransitGatewayPrefixListReferenceOutput
    TransitGatewayPrefixListReference: TransitGatewayPrefixListReference
end

local record ModifyTransitGatewayVpcAttachmentInput
    TransitGatewayAttachmentId: string
    AddSubnetIds: {string}
    RemoveSubnetIds: {string}
    Options: ModifyTransitGatewayVpcAttachmentRequestOptions
    DryRun: boolean
end

local record ModifyTransitGatewayVpcAttachmentOutput
    TransitGatewayVpcAttachment: TransitGatewayVpcAttachment
end

local record ModifyVerifiedAccessEndpointInput
    VerifiedAccessEndpointId: string
    VerifiedAccessGroupId: string
    LoadBalancerOptions: ModifyVerifiedAccessEndpointLoadBalancerOptions
    NetworkInterfaceOptions: ModifyVerifiedAccessEndpointEniOptions
    Description: string
    ClientToken: string
    DryRun: boolean
    RdsOptions: ModifyVerifiedAccessEndpointRdsOptions
    CidrOptions: ModifyVerifiedAccessEndpointCidrOptions
end

local record ModifyVerifiedAccessEndpointOutput
    VerifiedAccessEndpoint: VerifiedAccessEndpoint
end

local record ModifyVerifiedAccessEndpointPolicyInput
    VerifiedAccessEndpointId: string
    PolicyEnabled: boolean
    PolicyDocument: string
    ClientToken: string
    DryRun: boolean
    SseSpecification: VerifiedAccessSseSpecificationRequest
end

local record ModifyVerifiedAccessEndpointPolicyOutput
    PolicyEnabled: boolean
    PolicyDocument: string
    SseSpecification: VerifiedAccessSseSpecificationResponse
end

local record ModifyVerifiedAccessGroupInput
    VerifiedAccessGroupId: string
    VerifiedAccessInstanceId: string
    Description: string
    ClientToken: string
    DryRun: boolean
end

local record ModifyVerifiedAccessGroupOutput
    VerifiedAccessGroup: VerifiedAccessGroup
end

local record ModifyVerifiedAccessGroupPolicyInput
    VerifiedAccessGroupId: string
    PolicyEnabled: boolean
    PolicyDocument: string
    ClientToken: string
    DryRun: boolean
    SseSpecification: VerifiedAccessSseSpecificationRequest
end

local record ModifyVerifiedAccessGroupPolicyOutput
    PolicyEnabled: boolean
    PolicyDocument: string
    SseSpecification: VerifiedAccessSseSpecificationResponse
end

local record ModifyVerifiedAccessInstanceInput
    VerifiedAccessInstanceId: string
    Description: string
    DryRun: boolean
    ClientToken: string
    CidrEndpointsCustomSubDomain: string
end

local record ModifyVerifiedAccessInstanceOutput
    VerifiedAccessInstance: VerifiedAccessInstance
end

local record ModifyVerifiedAccessInstanceLoggingConfigurationInput
    VerifiedAccessInstanceId: string
    AccessLogs: VerifiedAccessLogOptions
    DryRun: boolean
    ClientToken: string
end

local record ModifyVerifiedAccessInstanceLoggingConfigurationOutput
    LoggingConfiguration: VerifiedAccessInstanceLoggingConfiguration
end

local record ModifyVerifiedAccessTrustProviderInput
    VerifiedAccessTrustProviderId: string
    OidcOptions: ModifyVerifiedAccessTrustProviderOidcOptions
    DeviceOptions: ModifyVerifiedAccessTrustProviderDeviceOptions
    Description: string
    DryRun: boolean
    ClientToken: string
    SseSpecification: VerifiedAccessSseSpecificationRequest
    NativeApplicationOidcOptions: ModifyVerifiedAccessNativeApplicationOidcOptions
end

local record ModifyVerifiedAccessTrustProviderOutput
    VerifiedAccessTrustProvider: VerifiedAccessTrustProvider
end

local record ModifyVolumeInput
    DryRun: boolean
    VolumeId: string
    Size: number
    VolumeType: string
    Iops: number
    Throughput: number
    MultiAttachEnabled: boolean
end

local record ModifyVolumeOutput
    VolumeModification: VolumeModification
end

local record ModifyVolumeAttributeInput
    AutoEnableIO: AttributeBooleanValue
    VolumeId: string
    DryRun: boolean
end

local record ModifyVolumeAttributeOutput
end

local record ModifyVpcAttributeInput
    EnableDnsHostnames: AttributeBooleanValue
    EnableDnsSupport: AttributeBooleanValue
    VpcId: string
    EnableNetworkAddressUsageMetrics: AttributeBooleanValue
end

local record ModifyVpcAttributeOutput
end

local record ModifyVpcBlockPublicAccessExclusionInput
    DryRun: boolean
    ExclusionId: string
    InternetGatewayExclusionMode: string
end

local record ModifyVpcBlockPublicAccessExclusionOutput
    VpcBlockPublicAccessExclusion: VpcBlockPublicAccessExclusion
end

local record ModifyVpcBlockPublicAccessOptionsInput
    DryRun: boolean
    InternetGatewayBlockMode: string
end

local record ModifyVpcBlockPublicAccessOptionsOutput
    VpcBlockPublicAccessOptions: VpcBlockPublicAccessOptions
end

local record ModifyVpcEncryptionControlInput
    DryRun: boolean
    VpcEncryptionControlId: string
    Mode: string
    InternetGatewayExclusion: string
    EgressOnlyInternetGatewayExclusion: string
    NatGatewayExclusion: string
    VirtualPrivateGatewayExclusion: string
    VpcPeeringExclusion: string
    LambdaExclusion: string
    VpcLatticeExclusion: string
    ElasticFileSystemExclusion: string
end

local record ModifyVpcEncryptionControlOutput
    VpcEncryptionControl: VpcEncryptionControl
end

local record ModifyVpcEndpointInput
    DryRun: boolean
    VpcEndpointId: string
    ResetPolicy: boolean
    PolicyDocument: string
    AddRouteTableIds: {string}
    RemoveRouteTableIds: {string}
    AddSubnetIds: {string}
    RemoveSubnetIds: {string}
    AddSecurityGroupIds: {string}
    RemoveSecurityGroupIds: {string}
    IpAddressType: string
    DnsOptions: DnsOptionsSpecification
    PrivateDnsEnabled: boolean
    SubnetConfigurations: {SubnetConfiguration}
end

local record ModifyVpcEndpointOutput
    Return: boolean
end

local record ModifyVpcEndpointConnectionNotificationInput
    DryRun: boolean
    ConnectionNotificationId: string
    ConnectionNotificationArn: string
    ConnectionEvents: {string}
end

local record ModifyVpcEndpointConnectionNotificationOutput
    ReturnValue: boolean
end

local record ModifyVpcEndpointServiceConfigurationInput
    DryRun: boolean
    ServiceId: string
    PrivateDnsName: string
    RemovePrivateDnsName: boolean
    AcceptanceRequired: boolean
    AddNetworkLoadBalancerArns: {string}
    RemoveNetworkLoadBalancerArns: {string}
    AddGatewayLoadBalancerArns: {string}
    RemoveGatewayLoadBalancerArns: {string}
    AddSupportedIpAddressTypes: {string}
    RemoveSupportedIpAddressTypes: {string}
    AddSupportedRegions: {string}
    RemoveSupportedRegions: {string}
end

local record ModifyVpcEndpointServiceConfigurationOutput
    Return: boolean
end

local record ModifyVpcEndpointServicePayerResponsibilityInput
    DryRun: boolean
    ServiceId: string
    PayerResponsibility: string
end

local record ModifyVpcEndpointServicePayerResponsibilityOutput
    ReturnValue: boolean
end

local record ModifyVpcEndpointServicePermissionsInput
    DryRun: boolean
    ServiceId: string
    AddAllowedPrincipals: {string}
    RemoveAllowedPrincipals: {string}
end

local record ModifyVpcEndpointServicePermissionsOutput
    AddedPrincipals: {AddedPrincipal}
    ReturnValue: boolean
end

local record ModifyVpcPeeringConnectionOptionsInput
    AccepterPeeringConnectionOptions: PeeringConnectionOptionsRequest
    DryRun: boolean
    RequesterPeeringConnectionOptions: PeeringConnectionOptionsRequest
    VpcPeeringConnectionId: string
end

local record ModifyVpcPeeringConnectionOptionsOutput
    AccepterPeeringConnectionOptions: PeeringConnectionOptions
    RequesterPeeringConnectionOptions: PeeringConnectionOptions
end

local record ModifyVpcTenancyInput
    VpcId: string
    InstanceTenancy: string
    DryRun: boolean
end

local record ModifyVpcTenancyOutput
    ReturnValue: boolean
end

local record ModifyVpnConnectionInput
    VpnConnectionId: string
    TransitGatewayId: string
    CustomerGatewayId: string
    VpnGatewayId: string
    DryRun: boolean
end

local record ModifyVpnConnectionOutput
    VpnConnection: VpnConnection
end

local record ModifyVpnConnectionOptionsInput
    VpnConnectionId: string
    LocalIpv4NetworkCidr: string
    RemoteIpv4NetworkCidr: string
    LocalIpv6NetworkCidr: string
    RemoteIpv6NetworkCidr: string
    DryRun: boolean
end

local record ModifyVpnConnectionOptionsOutput
    VpnConnection: VpnConnection
end

local record ModifyVpnTunnelCertificateInput
    VpnConnectionId: string
    VpnTunnelOutsideIpAddress: string
    DryRun: boolean
end

local record ModifyVpnTunnelCertificateOutput
    VpnConnection: VpnConnection
end

local record ModifyVpnTunnelOptionsInput
    VpnConnectionId: string
    VpnTunnelOutsideIpAddress: string
    TunnelOptions: ModifyVpnTunnelOptionsSpecification
    DryRun: boolean
    SkipTunnelReplacement: boolean
    PreSharedKeyStorage: string
end

local record ModifyVpnTunnelOptionsOutput
    VpnConnection: VpnConnection
end

local record MonitorInstancesInput
    InstanceIds: {string}
    DryRun: boolean
end

local record MonitorInstancesOutput
    InstanceMonitorings: {InstanceMonitoring}
end

local record MoveAddressToVpcInput
    DryRun: boolean
    PublicIp: string
end

local record MoveAddressToVpcOutput
    AllocationId: string
    Status: string
end

local record MoveByoipCidrToIpamInput
    DryRun: boolean
    Cidr: string
    IpamPoolId: string
    IpamPoolOwner: string
end

local record MoveByoipCidrToIpamOutput
    ByoipCidr: ByoipCidr
end

local record MoveCapacityReservationInstancesInput
    DryRun: boolean
    ClientToken: string
    SourceCapacityReservationId: string
    DestinationCapacityReservationId: string
    InstanceCount: number
end

local record MoveCapacityReservationInstancesOutput
    SourceCapacityReservation: CapacityReservation
    DestinationCapacityReservation: CapacityReservation
    InstanceCount: number
end

local record ProvisionByoipCidrInput
    Cidr: string
    CidrAuthorizationContext: CidrAuthorizationContext
    PubliclyAdvertisable: boolean
    Description: string
    DryRun: boolean
    PoolTagSpecifications: {TagSpecification}
    MultiRegion: boolean
    NetworkBorderGroup: string
end

local record ProvisionByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local record ProvisionIpamByoasnInput
    DryRun: boolean
    IpamId: string
    Asn: string
    AsnAuthorizationContext: AsnAuthorizationContext
end

local record ProvisionIpamByoasnOutput
    Byoasn: Byoasn
end

local record ProvisionIpamPoolCidrInput
    DryRun: boolean
    IpamPoolId: string
    Cidr: string
    CidrAuthorizationContext: IpamCidrAuthorizationContext
    NetmaskLength: number
    ClientToken: string
    VerificationMethod: string
    IpamExternalResourceVerificationTokenId: string
end

local record ProvisionIpamPoolCidrOutput
    IpamPoolCidr: IpamPoolCidr
end

local record ProvisionPublicIpv4PoolCidrInput
    DryRun: boolean
    IpamPoolId: string
    PoolId: string
    NetmaskLength: number
    NetworkBorderGroup: string
end

local record ProvisionPublicIpv4PoolCidrOutput
    PoolId: string
    PoolAddressRange: PublicIpv4PoolRange
end

local record PurchaseCapacityBlockInput
    DryRun: boolean
    TagSpecifications: {TagSpecification}
    CapacityBlockOfferingId: string
    InstancePlatform: string
end

local record PurchaseCapacityBlockOutput
    CapacityReservation: CapacityReservation
    CapacityBlocks: {CapacityBlock}
end

local record PurchaseCapacityBlockExtensionInput
    CapacityBlockExtensionOfferingId: string
    CapacityReservationId: string
    DryRun: boolean
end

local record PurchaseCapacityBlockExtensionOutput
    CapacityBlockExtensions: {CapacityBlockExtension}
end

local record PurchaseHostReservationInput
    ClientToken: string
    CurrencyCode: string
    HostIdSet: {string}
    LimitPrice: string
    OfferingId: string
    TagSpecifications: {TagSpecification}
end

local record PurchaseHostReservationOutput
    ClientToken: string
    CurrencyCode: string
    Purchase: {Purchase}
    TotalHourlyPrice: string
    TotalUpfrontPrice: string
end

local record PurchaseReservedInstancesOfferingInput
    InstanceCount: number
    ReservedInstancesOfferingId: string
    PurchaseTime: number
    DryRun: boolean
    LimitPrice: ReservedInstanceLimitPrice
end

local record PurchaseReservedInstancesOfferingOutput
    ReservedInstancesId: string
end

local record PurchaseScheduledInstancesInput
    ClientToken: string
    DryRun: boolean
    PurchaseRequests: {PurchaseRequest}
end

local record PurchaseScheduledInstancesOutput
    ScheduledInstanceSet: {ScheduledInstance}
end

local record RebootInstancesInput
    InstanceIds: {string}
    DryRun: boolean
end

local record RebootInstancesOutput
end

local record RegisterImageInput
    ImageLocation: string
    BillingProducts: {string}
    BootMode: string
    TpmSupport: string
    UefiData: string
    ImdsSupport: string
    TagSpecifications: {TagSpecification}
    DryRun: boolean
    Name: string
    Description: string
    Architecture: string
    KernelId: string
    RamdiskId: string
    RootDeviceName: string
    BlockDeviceMappings: {BlockDeviceMapping}
    VirtualizationType: string
    SriovNetSupport: string
    EnaSupport: boolean
end

local record RegisterImageOutput
    ImageId: string
end

local record RegisterInstanceEventNotificationAttributesInput
    DryRun: boolean
    InstanceTagAttribute: RegisterInstanceTagAttributeRequest
end

local record RegisterInstanceEventNotificationAttributesOutput
    InstanceTagAttribute: InstanceTagNotificationAttribute
end

local record RegisterTransitGatewayMulticastGroupMembersInput
    TransitGatewayMulticastDomainId: string
    GroupIpAddress: string
    NetworkInterfaceIds: {string}
    DryRun: boolean
end

local record RegisterTransitGatewayMulticastGroupMembersOutput
    RegisteredMulticastGroupMembers: TransitGatewayMulticastRegisteredGroupMembers
end

local record RegisterTransitGatewayMulticastGroupSourcesInput
    TransitGatewayMulticastDomainId: string
    GroupIpAddress: string
    NetworkInterfaceIds: {string}
    DryRun: boolean
end

local record RegisterTransitGatewayMulticastGroupSourcesOutput
    RegisteredMulticastGroupSources: TransitGatewayMulticastRegisteredGroupSources
end

local record RejectCapacityReservationBillingOwnershipInput
    DryRun: boolean
    CapacityReservationId: string
end

local record RejectCapacityReservationBillingOwnershipOutput
    Return: boolean
end

local record RejectTransitGatewayClientVpnAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record RejectTransitGatewayClientVpnAttachmentOutput
    TransitGatewayClientVpnAttachment: TransitGatewayClientVpnAttachment
end

local record RejectTransitGatewayMulticastDomainAssociationsInput
    TransitGatewayMulticastDomainId: string
    TransitGatewayAttachmentId: string
    SubnetIds: {string}
    DryRun: boolean
end

local record RejectTransitGatewayMulticastDomainAssociationsOutput
    Associations: TransitGatewayMulticastDomainAssociations
end

local record RejectTransitGatewayPeeringAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record RejectTransitGatewayPeeringAttachmentOutput
    TransitGatewayPeeringAttachment: TransitGatewayPeeringAttachment
end

local record RejectTransitGatewayVpcAttachmentInput
    TransitGatewayAttachmentId: string
    DryRun: boolean
end

local record RejectTransitGatewayVpcAttachmentOutput
    TransitGatewayVpcAttachment: TransitGatewayVpcAttachment
end

local record RejectVpcEndpointConnectionsInput
    DryRun: boolean
    ServiceId: string
    VpcEndpointIds: {string}
end

local record RejectVpcEndpointConnectionsOutput
    Unsuccessful: {UnsuccessfulItem}
end

local record RejectVpcPeeringConnectionInput
    DryRun: boolean
    VpcPeeringConnectionId: string
end

local record RejectVpcPeeringConnectionOutput
    Return: boolean
end

local record ReleaseAddressInput
    AllocationId: string
    PublicIp: string
    NetworkBorderGroup: string
    DryRun: boolean
end

local record ReleaseAddressOutput
end

local record ReleaseHostsInput
    HostIds: {string}
end

local record ReleaseHostsOutput
    Successful: {string}
    Unsuccessful: {UnsuccessfulItem}
end

local record ReleaseIpamPoolAllocationInput
    DryRun: boolean
    IpamPoolId: string
    Cidr: string
    IpamPoolAllocationId: string
end

local record ReleaseIpamPoolAllocationOutput
    Success: boolean
end

local record ReplaceIamInstanceProfileAssociationInput
    IamInstanceProfile: IamInstanceProfileSpecification
    AssociationId: string
end

local record ReplaceIamInstanceProfileAssociationOutput
    IamInstanceProfileAssociation: IamInstanceProfileAssociation
end

local record ReplaceImageCriteriaInAllowedImagesSettingsInput
    ImageCriteria: {ImageCriterionRequest}
    DryRun: boolean
end

local record ReplaceImageCriteriaInAllowedImagesSettingsOutput
    ReturnValue: boolean
end

local record ReplaceNetworkAclAssociationInput
    DryRun: boolean
    AssociationId: string
    NetworkAclId: string
end

local record ReplaceNetworkAclAssociationOutput
    NewAssociationId: string
end

local record ReplaceNetworkAclEntryInput
    DryRun: boolean
    NetworkAclId: string
    RuleNumber: number
    Protocol: string
    RuleAction: string
    Egress: boolean
    CidrBlock: string
    Ipv6CidrBlock: string
    IcmpTypeCode: IcmpTypeCode
    PortRange: PortRange
end

local record ReplaceNetworkAclEntryOutput
end

local record ReplaceRouteInput
    DestinationPrefixListId: string
    VpcEndpointId: string
    LocalTarget: boolean
    TransitGatewayId: string
    LocalGatewayId: string
    CarrierGatewayId: string
    CoreNetworkArn: string
    OdbNetworkArn: string
    DryRun: boolean
    RouteTableId: string
    DestinationCidrBlock: string
    GatewayId: string
    DestinationIpv6CidrBlock: string
    EgressOnlyInternetGatewayId: string
    InstanceId: string
    NetworkInterfaceId: string
    VpcPeeringConnectionId: string
    NatGatewayId: string
end

local record ReplaceRouteOutput
end

local record ReplaceRouteTableAssociationInput
    DryRun: boolean
    AssociationId: string
    RouteTableId: string
end

local record ReplaceRouteTableAssociationOutput
    NewAssociationId: string
    AssociationState: RouteTableAssociationState
end

local record ReplaceTransitGatewayRouteInput
    DestinationCidrBlock: string
    TransitGatewayRouteTableId: string
    TransitGatewayAttachmentId: string
    Blackhole: boolean
    DryRun: boolean
end

local record ReplaceTransitGatewayRouteOutput
    Route: TransitGatewayRoute
end

local record ReplaceVpnTunnelInput
    VpnConnectionId: string
    VpnTunnelOutsideIpAddress: string
    ApplyPendingMaintenance: boolean
    DryRun: boolean
end

local record ReplaceVpnTunnelOutput
    Return: boolean
end

local record ReportInstanceStatusInput
    DryRun: boolean
    Instances: {string}
    Status: string
    StartTime: number
    EndTime: number
    ReasonCodes: {string}
    Description: string
end

local record ReportInstanceStatusOutput
end

local record RequestSpotFleetInput
    DryRun: boolean
    SpotFleetRequestConfig: SpotFleetRequestConfigData
end

local record RequestSpotFleetOutput
    SpotFleetRequestId: string
end

local record RequestSpotInstancesInput
    LaunchSpecification: RequestSpotLaunchSpecification
    TagSpecifications: {TagSpecification}
    InstanceInterruptionBehavior: string
    DryRun: boolean
    SpotPrice: string
    ClientToken: string
    InstanceCount: number
    Type: string
    ValidFrom: number
    ValidUntil: number
    LaunchGroup: string
    AvailabilityZoneGroup: string
    BlockDurationMinutes: number
end

local record RequestSpotInstancesOutput
    SpotInstanceRequests: {SpotInstanceRequest}
end

local record ResetAddressAttributeInput
    AllocationId: string
    Attribute: string
    DryRun: boolean
end

local record ResetAddressAttributeOutput
    Address: AddressAttribute
end

local record ResetEbsDefaultKmsKeyIdInput
    DryRun: boolean
end

local record ResetEbsDefaultKmsKeyIdOutput
    KmsKeyId: string
end

local record ResetFpgaImageAttributeInput
    DryRun: boolean
    FpgaImageId: string
    Attribute: string
end

local record ResetFpgaImageAttributeOutput
    Return: boolean
end

local record ResetImageAttributeInput
    Attribute: string
    ImageId: string
    DryRun: boolean
end

local record ResetImageAttributeOutput
end

local record ResetInstanceAttributeInput
    DryRun: boolean
    InstanceId: string
    Attribute: string
end

local record ResetInstanceAttributeOutput
end

local record ResetNetworkInterfaceAttributeInput
    DryRun: boolean
    NetworkInterfaceId: string
    SourceDestCheck: string
end

local record ResetNetworkInterfaceAttributeOutput
end

local record ResetSnapshotAttributeInput
    Attribute: string
    SnapshotId: string
    DryRun: boolean
end

local record ResetSnapshotAttributeOutput
end

local record RestoreAddressToClassicInput
    DryRun: boolean
    PublicIp: string
end

local record RestoreAddressToClassicOutput
    PublicIp: string
    Status: string
end

local record RestoreImageFromRecycleBinInput
    ImageId: string
    DryRun: boolean
end

local record RestoreImageFromRecycleBinOutput
    Return: boolean
end

local record RestoreManagedPrefixListVersionInput
    DryRun: boolean
    PrefixListId: string
    PreviousVersion: number
    CurrentVersion: number
end

local record RestoreManagedPrefixListVersionOutput
    PrefixList: ManagedPrefixList
end

local record RestoreSnapshotFromRecycleBinInput
    SnapshotId: string
    DryRun: boolean
end

local record RestoreSnapshotFromRecycleBinOutput
    SnapshotId: string
    OutpostArn: string
    Description: string
    Encrypted: boolean
    OwnerId: string
    Progress: string
    StartTime: number
    State: string
    VolumeId: string
    VolumeSize: number
    SseType: string
end

local record RestoreSnapshotTierInput
    SnapshotId: string
    TemporaryRestoreDays: number
    PermanentRestore: boolean
    DryRun: boolean
end

local record RestoreSnapshotTierOutput
    SnapshotId: string
    RestoreStartTime: number
    RestoreDuration: number
    IsPermanentRestore: boolean
end

local record RestoreVolumeFromRecycleBinInput
    VolumeId: string
    DryRun: boolean
end

local record RestoreVolumeFromRecycleBinOutput
    Return: boolean
end

local record RevokeClientVpnIngressInput
    ClientVpnEndpointId: string
    TargetNetworkCidr: string
    AccessGroupId: string
    RevokeAllGroups: boolean
    DryRun: boolean
end

local record RevokeClientVpnIngressOutput
    Status: ClientVpnAuthorizationRuleStatus
end

local record RevokeSecurityGroupEgressInput
    SecurityGroupRuleIds: {string}
    DryRun: boolean
    GroupId: string
    SourceSecurityGroupName: string
    SourceSecurityGroupOwnerId: string
    IpProtocol: string
    FromPort: number
    ToPort: number
    CidrIp: string
    IpPermissions: {IpPermission}
end

local record RevokeSecurityGroupEgressOutput
    Return: boolean
    UnknownIpPermissions: {IpPermission}
    RevokedSecurityGroupRules: {RevokedSecurityGroupRule}
end

local record RevokeSecurityGroupIngressInput
    CidrIp: string
    FromPort: number
    GroupId: string
    GroupName: string
    IpPermissions: {IpPermission}
    IpProtocol: string
    SourceSecurityGroupName: string
    SourceSecurityGroupOwnerId: string
    ToPort: number
    SecurityGroupRuleIds: {string}
    DryRun: boolean
end

local record RevokeSecurityGroupIngressOutput
    Return: boolean
    UnknownIpPermissions: {IpPermission}
    RevokedSecurityGroupRules: {RevokedSecurityGroupRule}
end

local record RunInstancesInput
    BlockDeviceMappings: {BlockDeviceMapping}
    ImageId: string
    InstanceType: string
    Ipv6AddressCount: number
    Ipv6Addresses: {InstanceIpv6Address}
    KernelId: string
    KeyName: string
    MaxCount: number
    MinCount: number
    Monitoring: RunInstancesMonitoringEnabled
    Placement: Placement
    RamdiskId: string
    SecurityGroupIds: {string}
    SecurityGroups: {string}
    SubnetId: string
    UserData: string
    ElasticGpuSpecification: {ElasticGpuSpecification}
    ElasticInferenceAccelerators: {ElasticInferenceAccelerator}
    TagSpecifications: {TagSpecification}
    LaunchTemplate: LaunchTemplateSpecification
    InstanceMarketOptions: InstanceMarketOptionsRequest
    CreditSpecification: CreditSpecificationRequest
    CpuOptions: CpuOptionsRequest
    CapacityReservationSpecification: CapacityReservationSpecification
    HibernationOptions: HibernationOptionsRequest
    LicenseSpecifications: {LicenseConfigurationRequest}
    MetadataOptions: InstanceMetadataOptionsRequest
    EnclaveOptions: EnclaveOptionsRequest
    PrivateDnsNameOptions: PrivateDnsNameOptionsRequest
    MaintenanceOptions: InstanceMaintenanceOptionsRequest
    DisableApiStop: boolean
    EnablePrimaryIpv6: boolean
    NetworkPerformanceOptions: InstanceNetworkPerformanceOptionsRequest
    Operator: OperatorRequest
    SecondaryInterfaces: {InstanceSecondaryInterfaceSpecificationRequest}
    DryRun: boolean
    DisableApiTermination: boolean
    InstanceInitiatedShutdownBehavior: string
    PrivateIpAddress: string
    ClientToken: string
    AdditionalInfo: string
    NetworkInterfaces: {InstanceNetworkInterfaceSpecification}
    IamInstanceProfile: IamInstanceProfileSpecification
    EbsOptimized: boolean
end

local record RunInstancesOutput
    ReservationId: string
    OwnerId: string
    RequesterId: string
    Groups: {GroupIdentifier}
    Instances: {Instance}
end

local record RunScheduledInstancesInput
    ClientToken: string
    DryRun: boolean
    InstanceCount: number
    LaunchSpecification: ScheduledInstancesLaunchSpecification
    ScheduledInstanceId: string
end

local record RunScheduledInstancesOutput
    InstanceIdSet: {string}
end

local record SearchLocalGatewayRoutesInput
    LocalGatewayRouteTableId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record SearchLocalGatewayRoutesOutput
    Routes: {LocalGatewayRoute}
    NextToken: string
end

local record SearchTransitGatewayMulticastGroupsInput
    TransitGatewayMulticastDomainId: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
    DryRun: boolean
end

local record SearchTransitGatewayMulticastGroupsOutput
    MulticastGroups: {TransitGatewayMulticastGroup}
    NextToken: string
end

local record SearchTransitGatewayRoutesInput
    TransitGatewayRouteTableId: string
    Filters: {Filter}
    MaxResults: number
    DryRun: boolean
    NextToken: string
end

local record SearchTransitGatewayRoutesOutput
    Routes: {TransitGatewayRoute}
    AdditionalRoutesAvailable: boolean
    NextToken: string
end

local record SendDiagnosticInterruptInput
    InstanceId: string
    DryRun: boolean
end

local record SendDiagnosticInterruptOutput
end

local record StartDeclarativePoliciesReportInput
    DryRun: boolean
    S3Bucket: string
    S3Prefix: string
    TargetId: string
    TagSpecifications: {TagSpecification}
end

local record StartDeclarativePoliciesReportOutput
    ReportId: string
end

local record StartInstancesInput
    InstanceIds: {string}
    AdditionalInfo: string
    DryRun: boolean
end

local record StartInstancesOutput
    StartingInstances: {InstanceStateChange}
end

local record StartNetworkInsightsAccessScopeAnalysisInput
    NetworkInsightsAccessScopeId: string
    DryRun: boolean
    TagSpecifications: {TagSpecification}
    ClientToken: string
end

local record StartNetworkInsightsAccessScopeAnalysisOutput
    NetworkInsightsAccessScopeAnalysis: NetworkInsightsAccessScopeAnalysis
end

local record StartNetworkInsightsAnalysisInput
    NetworkInsightsPathId: string
    AdditionalAccounts: {string}
    FilterInArns: {string}
    FilterOutArns: {string}
    DryRun: boolean
    TagSpecifications: {TagSpecification}
    ClientToken: string
end

local record StartNetworkInsightsAnalysisOutput
    NetworkInsightsAnalysis: NetworkInsightsAnalysis
end

local record StartVpcEndpointServicePrivateDnsVerificationInput
    DryRun: boolean
    ServiceId: string
end

local record StartVpcEndpointServicePrivateDnsVerificationOutput
    ReturnValue: boolean
end

local record StopInstancesInput
    InstanceIds: {string}
    Hibernate: boolean
    SkipOsShutdown: boolean
    DryRun: boolean
    Force: boolean
end

local record StopInstancesOutput
    StoppingInstances: {InstanceStateChange}
end

local record TerminateClientVpnConnectionsInput
    ClientVpnEndpointId: string
    ConnectionId: string
    Username: string
    DryRun: boolean
end

local record TerminateClientVpnConnectionsOutput
    ClientVpnEndpointId: string
    Username: string
    ConnectionStatuses: {TerminateConnectionStatus}
end

local record TerminateInstancesInput
    InstanceIds: {string}
    Force: boolean
    SkipOsShutdown: boolean
    DryRun: boolean
end

local record TerminateInstancesOutput
    TerminatingInstances: {InstanceStateChange}
end

local record UnassignIpv6AddressesInput
    Ipv6Prefixes: {string}
    NetworkInterfaceId: string
    Ipv6Addresses: {string}
end

local record UnassignIpv6AddressesOutput
    NetworkInterfaceId: string
    UnassignedIpv6Addresses: {string}
    UnassignedIpv6Prefixes: {string}
end

local record UnassignPrivateIpAddressesInput
    Ipv4Prefixes: {string}
    NetworkInterfaceId: string
    PrivateIpAddresses: {string}
end

local record UnassignPrivateIpAddressesOutput
end

local record UnassignPrivateNatGatewayAddressInput
    NatGatewayId: string
    PrivateIpAddresses: {string}
    MaxDrainDurationSeconds: number
    DryRun: boolean
end

local record UnassignPrivateNatGatewayAddressOutput
    NatGatewayId: string
    NatGatewayAddresses: {NatGatewayAddress}
end

local record UnlockSnapshotInput
    SnapshotId: string
    DryRun: boolean
end

local record UnlockSnapshotOutput
    SnapshotId: string
end

local record UnmonitorInstancesInput
    InstanceIds: {string}
    DryRun: boolean
end

local record UnmonitorInstancesOutput
    InstanceMonitorings: {InstanceMonitoring}
end

local record UpdateCapacityManagerMonitoredTagKeysInput
    ActivateTagKeys: {string}
    DeactivateTagKeys: {string}
    DryRun: boolean
    ClientToken: string
end

local record UpdateCapacityManagerMonitoredTagKeysOutput
    CapacityManagerTagKeys: {CapacityManagerMonitoredTagKey}
end

local record UpdateCapacityManagerOrganizationsAccessInput
    OrganizationsAccess: boolean
    DryRun: boolean
    ClientToken: string
end

local record UpdateCapacityManagerOrganizationsAccessOutput
    CapacityManagerStatus: string
    OrganizationsAccess: boolean
end

local record UpdateInterruptibleCapacityReservationAllocationInput
    CapacityReservationId: string
    TargetInstanceCount: number
    DryRun: boolean
end

local record UpdateInterruptibleCapacityReservationAllocationOutput
    InterruptibleCapacityReservationId: string
    SourceCapacityReservationId: string
    InstanceCount: number
    TargetInstanceCount: number
    Status: string
    InterruptionType: string
end

local record UpdateSecurityGroupRuleDescriptionsEgressInput
    DryRun: boolean
    GroupId: string
    GroupName: string
    IpPermissions: {IpPermission}
    SecurityGroupRuleDescriptions: {SecurityGroupRuleDescription}
end

local record UpdateSecurityGroupRuleDescriptionsEgressOutput
    Return: boolean
end

local record UpdateSecurityGroupRuleDescriptionsIngressInput
    DryRun: boolean
    GroupId: string
    GroupName: string
    IpPermissions: {IpPermission}
    SecurityGroupRuleDescriptions: {SecurityGroupRuleDescription}
end

local record UpdateSecurityGroupRuleDescriptionsIngressOutput
    Return: boolean
end

local record WithdrawByoipCidrInput
    Cidr: string
    DryRun: boolean
end

local record WithdrawByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local type VpcEncryptionControlExclusionStateInput = "enable" | "disable"

local type InstanceAutoRecoveryState = "disabled" | "default"

local type IpamTier = "free" | "advanced"

local type IpamPoolPublicIpSource = "amazon" | "byoip"

local type AutoPlacement = "on" | "off"

local type DefaultInstanceMetadataEndpointState = "disabled" | "enabled" | "no-preference"

local type FastLaunchStateCode = "enabling" | "enabling-failed" | "enabled" | "enabled-failed" | "disabling" | "disabling-failed"

local type CallerRole = "odcr-owner" | "unused-reservation-billing-owner"

local type PayerResponsibility = "ServiceOwner"

local type TargetCapacityUnitType = "vcpu" | "memory-mib" | "units"

local type CapacityReservationInstancePlatform = "Linux/UNIX" | "Red Hat Enterprise Linux" | "SUSE Linux" | "Windows" | "Windows with SQL Server" | "Windows with SQL Server Enterprise" | "Windows with SQL Server Standard" | "Windows with SQL Server Web" | "Linux with SQL Server Standard" | "Linux with SQL Server Web" | "Linux with SQL Server Enterprise" | "RHEL with SQL Server Standard" | "RHEL with SQL Server Enterprise" | "RHEL with SQL Server Web" | "RHEL with HA" | "RHEL with HA and SQL Server Standard" | "RHEL with HA and SQL Server Enterprise" | "Ubuntu Pro"

local type UnlimitedSupportedInstanceFamily = "t2" | "t3" | "t3a" | "t4g"

local type IpamResourceType = "vpc" | "subnet" | "eip" | "public-ipv4-pool" | "ipv6-pool" | "eni" | "anycast-ip-list"

local type PlatformValues = "Windows"

local type TrustProviderType = "user" | "device"

local type VerificationMethod = "remarks-x509" | "dns-token"

local type LogDestinationType = "cloud-watch-logs" | "s3" | "kinesis-data-firehose"

local type KeyFormat = "pem" | "ppk"

local type Status = "MoveInProgress" | "InVpc" | "InClassic"

local type FastLaunchResourceType = "snapshot"

local type TrafficType = "ACCEPT" | "REJECT" | "ALL"

local type DomainType = "vpc" | "standard"

local type NetworkInterfaceCreationType = "efa" | "efa-only" | "branch" | "trunk"

local type SpotInstanceType = "one-time" | "persistent"

local type IngestionStatus = "initial-ingestion-in-progress" | "ingestion-complete" | "ingestion-failed"

local type IpamMeteredAccount = "ipam-owner" | "resource-owner"

local type AllowedImagesSettingsEnabledState = "enabled" | "audit-mode"

local type VpcEndpointType = "Interface" | "Gateway" | "GatewayLoadBalancer" | "Resource" | "ServiceNetwork"

local type AddressAttributeName = "domain-name"

local type LocalGatewayRouteTableMode = "direct-vpc-routing" | "coip"

local type SecondaryNetworkType = "rdma"

local type CurrencyCodeValues = "USD"

local type LockMode = "compliance" | "governance"

local type SecurityGroupVpcAssociationState = "associating" | "associated" | "association-failed" | "disassociating" | "disassociated" | "disassociation-failed"

local type HostRecovery = "on" | "off"

local type GatewayType = "ipsec.1"

local type HttpTokensState = "optional" | "required"

local type SnapshotState = "pending" | "completed" | "error" | "recoverable" | "recovering"

local type SubnetCidrReservationType = "prefix" | "explicit"

local type RuleAction = "allow" | "deny"

local type KeyType = "rsa" | "ed25519"

local type EndDateType = "unlimited" | "limited"

local type StatisticType = "p50"

local type AvailabilityMode = "zonal" | "regional"

local type VpnConcentratorType = "ipsec.1"

local type Protocol = "tcp" | "udp"

local type DefaultInstanceMetadataTagsState = "disabled" | "enabled" | "no-preference"

local type RIProductDescription = "Linux/UNIX" | "Linux/UNIX (Amazon VPC)" | "Windows" | "Windows (Amazon VPC)"

local type ImageBlockPublicAccessDisabledState = "unblocked"

local type InstanceType = "a1.medium" | "a1.large" | "a1.xlarge" | "a1.2xlarge" | "a1.4xlarge" | "a1.metal" | "c1.medium" | "c1.xlarge" | "c3.large" | "c3.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c4.large" | "c4.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c5.large" | "c5.xlarge" | "c5.2xlarge" | "c5.4xlarge" | "c5.9xlarge" | "c5.12xlarge" | "c5.18xlarge" | "c5.24xlarge" | "c5.metal" | "c5a.large" | "c5a.xlarge" | "c5a.2xlarge" | "c5a.4xlarge" | "c5a.8xlarge" | "c5a.12xlarge" | "c5a.16xlarge" | "c5a.24xlarge" | "c5ad.large" | "c5ad.xlarge" | "c5ad.2xlarge" | "c5ad.4xlarge" | "c5ad.8xlarge" | "c5ad.12xlarge" | "c5ad.16xlarge" | "c5ad.24xlarge" | "c5d.large" | "c5d.xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.12xlarge" | "c5d.18xlarge" | "c5d.24xlarge" | "c5d.metal" | "c5n.large" | "c5n.xlarge" | "c5n.2xlarge" | "c5n.4xlarge" | "c5n.9xlarge" | "c5n.18xlarge" | "c5n.metal" | "c6g.medium" | "c6g.large" | "c6g.xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "c6g.metal" | "c6gd.medium" | "c6gd.large" | "c6gd.xlarge" | "c6gd.2xlarge" | "c6gd.4xlarge" | "c6gd.8xlarge" | "c6gd.12xlarge" | "c6gd.16xlarge" | "c6gd.metal" | "c6gn.medium" | "c6gn.large" | "c6gn.xlarge" | "c6gn.2xlarge" | "c6gn.4xlarge" | "c6gn.8xlarge" | "c6gn.12xlarge" | "c6gn.16xlarge" | "c6i.large" | "c6i.xlarge" | "c6i.2xlarge" | "c6i.4xlarge" | "c6i.8xlarge" | "c6i.12xlarge" | "c6i.16xlarge" | "c6i.24xlarge" | "c6i.32xlarge" | "c6i.metal" | "cc1.4xlarge" | "cc2.8xlarge" | "cg1.4xlarge" | "cr1.8xlarge" | "d2.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d3.xlarge" | "d3.2xlarge" | "d3.4xlarge" | "d3.8xlarge" | "d3en.xlarge" | "d3en.2xlarge" | "d3en.4xlarge" | "d3en.6xlarge" | "d3en.8xlarge" | "d3en.12xlarge" | "dl1.24xlarge" | "f1.2xlarge" | "f1.4xlarge" | "f1.16xlarge" | "g2.2xlarge" | "g2.8xlarge" | "g3.4xlarge" | "g3.8xlarge" | "g3.16xlarge" | "g3s.xlarge" | "g4ad.xlarge" | "g4ad.2xlarge" | "g4ad.4xlarge" | "g4ad.8xlarge" | "g4ad.16xlarge" | "g4dn.xlarge" | "g4dn.2xlarge" | "g4dn.4xlarge" | "g4dn.8xlarge" | "g4dn.12xlarge" | "g4dn.16xlarge" | "g4dn.metal" | "g5.xlarge" | "g5.2xlarge" | "g5.4xlarge" | "g5.8xlarge" | "g5.12xlarge" | "g5.16xlarge" | "g5.24xlarge" | "g5.48xlarge" | "g5g.xlarge" | "g5g.2xlarge" | "g5g.4xlarge" | "g5g.8xlarge" | "g5g.16xlarge" | "g5g.metal" | "hi1.4xlarge" | "hpc6a.48xlarge" | "hs1.8xlarge" | "h1.2xlarge" | "h1.4xlarge" | "h1.8xlarge" | "h1.16xlarge" | "i2.xlarge" | "i2.2xlarge" | "i2.4xlarge" | "i2.8xlarge" | "i3.large" | "i3.xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.8xlarge" | "i3.16xlarge" | "i3.metal" | "i3en.large" | "i3en.xlarge" | "i3en.2xlarge" | "i3en.3xlarge" | "i3en.6xlarge" | "i3en.12xlarge" | "i3en.24xlarge" | "i3en.metal" | "im4gn.large" | "im4gn.xlarge" | "im4gn.2xlarge" | "im4gn.4xlarge" | "im4gn.8xlarge" | "im4gn.16xlarge" | "inf1.xlarge" | "inf1.2xlarge" | "inf1.6xlarge" | "inf1.24xlarge" | "is4gen.medium" | "is4gen.large" | "is4gen.xlarge" | "is4gen.2xlarge" | "is4gen.4xlarge" | "is4gen.8xlarge" | "m1.small" | "m1.medium" | "m1.large" | "m1.xlarge" | "m2.xlarge" | "m2.2xlarge" | "m2.4xlarge" | "m3.medium" | "m3.large" | "m3.xlarge" | "m3.2xlarge" | "m4.large" | "m4.xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.10xlarge" | "m4.16xlarge" | "m5.large" | "m5.xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.metal" | "m5a.large" | "m5a.xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5ad.large" | "m5ad.xlarge" | "m5ad.2xlarge" | "m5ad.4xlarge" | "m5ad.8xlarge" | "m5ad.12xlarge" | "m5ad.16xlarge" | "m5ad.24xlarge" | "m5d.large" | "m5d.xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.metal" | "m5dn.large" | "m5dn.xlarge" | "m5dn.2xlarge" | "m5dn.4xlarge" | "m5dn.8xlarge" | "m5dn.12xlarge" | "m5dn.16xlarge" | "m5dn.24xlarge" | "m5dn.metal" | "m5n.large" | "m5n.xlarge" | "m5n.2xlarge" | "m5n.4xlarge" | "m5n.8xlarge" | "m5n.12xlarge" | "m5n.16xlarge" | "m5n.24xlarge" | "m5n.metal" | "m5zn.large" | "m5zn.xlarge" | "m5zn.2xlarge" | "m5zn.3xlarge" | "m5zn.6xlarge" | "m5zn.12xlarge" | "m5zn.metal" | "m6a.large" | "m6a.xlarge" | "m6a.2xlarge" | "m6a.4xlarge" | "m6a.8xlarge" | "m6a.12xlarge" | "m6a.16xlarge" | "m6a.24xlarge" | "m6a.32xlarge" | "m6a.48xlarge" | "m6g.metal" | "m6g.medium" | "m6g.large" | "m6g.xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "m6gd.metal" | "m6gd.medium" | "m6gd.large" | "m6gd.xlarge" | "m6gd.2xlarge" | "m6gd.4xlarge" | "m6gd.8xlarge" | "m6gd.12xlarge" | "m6gd.16xlarge" | "m6i.large" | "m6i.xlarge" | "m6i.2xlarge" | "m6i.4xlarge" | "m6i.8xlarge" | "m6i.12xlarge" | "m6i.16xlarge" | "m6i.24xlarge" | "m6i.32xlarge" | "m6i.metal" | "mac1.metal" | "p2.xlarge" | "p2.8xlarge" | "p2.16xlarge" | "p3.2xlarge" | "p3.8xlarge" | "p3.16xlarge" | "p3dn.24xlarge" | "p4d.24xlarge" | "r3.large" | "r3.xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r4.large" | "r4.xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.16xlarge" | "r5.large" | "r5.xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.metal" | "r5a.large" | "r5a.xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5ad.large" | "r5ad.xlarge" | "r5ad.2xlarge" | "r5ad.4xlarge" | "r5ad.8xlarge" | "r5ad.12xlarge" | "r5ad.16xlarge" | "r5ad.24xlarge" | "r5b.large" | "r5b.xlarge" | "r5b.2xlarge" | "r5b.4xlarge" | "r5b.8xlarge" | "r5b.12xlarge" | "r5b.16xlarge" | "r5b.24xlarge" | "r5b.metal" | "r5d.large" | "r5d.xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.metal" | "r5dn.large" | "r5dn.xlarge" | "r5dn.2xlarge" | "r5dn.4xlarge" | "r5dn.8xlarge" | "r5dn.12xlarge" | "r5dn.16xlarge" | "r5dn.24xlarge" | "r5dn.metal" | "r5n.large" | "r5n.xlarge" | "r5n.2xlarge" | "r5n.4xlarge" | "r5n.8xlarge" | "r5n.12xlarge" | "r5n.16xlarge" | "r5n.24xlarge" | "r5n.metal" | "r6g.medium" | "r6g.large" | "r6g.xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "r6g.metal" | "r6gd.medium" | "r6gd.large" | "r6gd.xlarge" | "r6gd.2xlarge" | "r6gd.4xlarge" | "r6gd.8xlarge" | "r6gd.12xlarge" | "r6gd.16xlarge" | "r6gd.metal" | "r6i.large" | "r6i.xlarge" | "r6i.2xlarge" | "r6i.4xlarge" | "r6i.8xlarge" | "r6i.12xlarge" | "r6i.16xlarge" | "r6i.24xlarge" | "r6i.32xlarge" | "r6i.metal" | "t1.micro" | "t2.nano" | "t2.micro" | "t2.small" | "t2.medium" | "t2.large" | "t2.xlarge" | "t2.2xlarge" | "t3.nano" | "t3.micro" | "t3.small" | "t3.medium" | "t3.large" | "t3.xlarge" | "t3.2xlarge" | "t3a.nano" | "t3a.micro" | "t3a.small" | "t3a.medium" | "t3a.large" | "t3a.xlarge" | "t3a.2xlarge" | "t4g.nano" | "t4g.micro" | "t4g.small" | "t4g.medium" | "t4g.large" | "t4g.xlarge" | "t4g.2xlarge" | "u-6tb1.56xlarge" | "u-6tb1.112xlarge" | "u-9tb1.112xlarge" | "u-12tb1.112xlarge" | "u-6tb1.metal" | "u-9tb1.metal" | "u-12tb1.metal" | "u-18tb1.metal" | "u-24tb1.metal" | "vt1.3xlarge" | "vt1.6xlarge" | "vt1.24xlarge" | "x1.16xlarge" | "x1.32xlarge" | "x1e.xlarge" | "x1e.2xlarge" | "x1e.4xlarge" | "x1e.8xlarge" | "x1e.16xlarge" | "x1e.32xlarge" | "x2iezn.2xlarge" | "x2iezn.4xlarge" | "x2iezn.6xlarge" | "x2iezn.8xlarge" | "x2iezn.12xlarge" | "x2iezn.metal" | "x2gd.medium" | "x2gd.large" | "x2gd.xlarge" | "x2gd.2xlarge" | "x2gd.4xlarge" | "x2gd.8xlarge" | "x2gd.12xlarge" | "x2gd.16xlarge" | "x2gd.metal" | "z1d.large" | "z1d.xlarge" | "z1d.2xlarge" | "z1d.3xlarge" | "z1d.6xlarge" | "z1d.12xlarge" | "z1d.metal" | "x2idn.16xlarge" | "x2idn.24xlarge" | "x2idn.32xlarge" | "x2iedn.xlarge" | "x2iedn.2xlarge" | "x2iedn.4xlarge" | "x2iedn.8xlarge" | "x2iedn.16xlarge" | "x2iedn.24xlarge" | "x2iedn.32xlarge" | "c6a.large" | "c6a.xlarge" | "c6a.2xlarge" | "c6a.4xlarge" | "c6a.8xlarge" | "c6a.12xlarge" | "c6a.16xlarge" | "c6a.24xlarge" | "c6a.32xlarge" | "c6a.48xlarge" | "c6a.metal" | "m6a.metal" | "i4i.large" | "i4i.xlarge" | "i4i.2xlarge" | "i4i.4xlarge" | "i4i.8xlarge" | "i4i.16xlarge" | "i4i.32xlarge" | "i4i.metal" | "x2idn.metal" | "x2iedn.metal" | "c7g.medium" | "c7g.large" | "c7g.xlarge" | "c7g.2xlarge" | "c7g.4xlarge" | "c7g.8xlarge" | "c7g.12xlarge" | "c7g.16xlarge" | "mac2.metal" | "c6id.large" | "c6id.xlarge" | "c6id.2xlarge" | "c6id.4xlarge" | "c6id.8xlarge" | "c6id.12xlarge" | "c6id.16xlarge" | "c6id.24xlarge" | "c6id.32xlarge" | "c6id.metal" | "m6id.large" | "m6id.xlarge" | "m6id.2xlarge" | "m6id.4xlarge" | "m6id.8xlarge" | "m6id.12xlarge" | "m6id.16xlarge" | "m6id.24xlarge" | "m6id.32xlarge" | "m6id.metal" | "r6id.large" | "r6id.xlarge" | "r6id.2xlarge" | "r6id.4xlarge" | "r6id.8xlarge" | "r6id.12xlarge" | "r6id.16xlarge" | "r6id.24xlarge" | "r6id.32xlarge" | "r6id.metal" | "r6a.large" | "r6a.xlarge" | "r6a.2xlarge" | "r6a.4xlarge" | "r6a.8xlarge" | "r6a.12xlarge" | "r6a.16xlarge" | "r6a.24xlarge" | "r6a.32xlarge" | "r6a.48xlarge" | "r6a.metal" | "p4de.24xlarge" | "u-3tb1.56xlarge" | "u-18tb1.112xlarge" | "u-24tb1.112xlarge" | "trn1.2xlarge" | "trn1.32xlarge" | "hpc6id.32xlarge" | "c6in.large" | "c6in.xlarge" | "c6in.2xlarge" | "c6in.4xlarge" | "c6in.8xlarge" | "c6in.12xlarge" | "c6in.16xlarge" | "c6in.24xlarge" | "c6in.32xlarge" | "m6in.large" | "m6in.xlarge" | "m6in.2xlarge" | "m6in.4xlarge" | "m6in.8xlarge" | "m6in.12xlarge" | "m6in.16xlarge" | "m6in.24xlarge" | "m6in.32xlarge" | "m6idn.large" | "m6idn.xlarge" | "m6idn.2xlarge" | "m6idn.4xlarge" | "m6idn.8xlarge" | "m6idn.12xlarge" | "m6idn.16xlarge" | "m6idn.24xlarge" | "m6idn.32xlarge" | "r6in.large" | "r6in.xlarge" | "r6in.2xlarge" | "r6in.4xlarge" | "r6in.8xlarge" | "r6in.12xlarge" | "r6in.16xlarge" | "r6in.24xlarge" | "r6in.32xlarge" | "r6idn.large" | "r6idn.xlarge" | "r6idn.2xlarge" | "r6idn.4xlarge" | "r6idn.8xlarge" | "r6idn.12xlarge" | "r6idn.16xlarge" | "r6idn.24xlarge" | "r6idn.32xlarge" | "c7g.metal" | "m7g.medium" | "m7g.large" | "m7g.xlarge" | "m7g.2xlarge" | "m7g.4xlarge" | "m7g.8xlarge" | "m7g.12xlarge" | "m7g.16xlarge" | "m7g.metal" | "r7g.medium" | "r7g.large" | "r7g.xlarge" | "r7g.2xlarge" | "r7g.4xlarge" | "r7g.8xlarge" | "r7g.12xlarge" | "r7g.16xlarge" | "r7g.metal" | "c6in.metal" | "m6in.metal" | "m6idn.metal" | "r6in.metal" | "r6idn.metal" | "inf2.xlarge" | "inf2.8xlarge" | "inf2.24xlarge" | "inf2.48xlarge" | "trn1n.32xlarge" | "i4g.large" | "i4g.xlarge" | "i4g.2xlarge" | "i4g.4xlarge" | "i4g.8xlarge" | "i4g.16xlarge" | "hpc7g.4xlarge" | "hpc7g.8xlarge" | "hpc7g.16xlarge" | "c7gn.medium" | "c7gn.large" | "c7gn.xlarge" | "c7gn.2xlarge" | "c7gn.4xlarge" | "c7gn.8xlarge" | "c7gn.12xlarge" | "c7gn.16xlarge" | "p5.48xlarge" | "m7i.large" | "m7i.xlarge" | "m7i.2xlarge" | "m7i.4xlarge" | "m7i.8xlarge" | "m7i.12xlarge" | "m7i.16xlarge" | "m7i.24xlarge" | "m7i.48xlarge" | "m7i-flex.large" | "m7i-flex.xlarge" | "m7i-flex.2xlarge" | "m7i-flex.4xlarge" | "m7i-flex.8xlarge" | "m7a.medium" | "m7a.large" | "m7a.xlarge" | "m7a.2xlarge" | "m7a.4xlarge" | "m7a.8xlarge" | "m7a.12xlarge" | "m7a.16xlarge" | "m7a.24xlarge" | "m7a.32xlarge" | "m7a.48xlarge" | "m7a.metal-48xl" | "hpc7a.12xlarge" | "hpc7a.24xlarge" | "hpc7a.48xlarge" | "hpc7a.96xlarge" | "c7gd.medium" | "c7gd.large" | "c7gd.xlarge" | "c7gd.2xlarge" | "c7gd.4xlarge" | "c7gd.8xlarge" | "c7gd.12xlarge" | "c7gd.16xlarge" | "m7gd.medium" | "m7gd.large" | "m7gd.xlarge" | "m7gd.2xlarge" | "m7gd.4xlarge" | "m7gd.8xlarge" | "m7gd.12xlarge" | "m7gd.16xlarge" | "r7gd.medium" | "r7gd.large" | "r7gd.xlarge" | "r7gd.2xlarge" | "r7gd.4xlarge" | "r7gd.8xlarge" | "r7gd.12xlarge" | "r7gd.16xlarge" | "r7a.medium" | "r7a.large" | "r7a.xlarge" | "r7a.2xlarge" | "r7a.4xlarge" | "r7a.8xlarge" | "r7a.12xlarge" | "r7a.16xlarge" | "r7a.24xlarge" | "r7a.32xlarge" | "r7a.48xlarge" | "c7i.large" | "c7i.xlarge" | "c7i.2xlarge" | "c7i.4xlarge" | "c7i.8xlarge" | "c7i.12xlarge" | "c7i.16xlarge" | "c7i.24xlarge" | "c7i.48xlarge" | "mac2-m2pro.metal" | "r7iz.large" | "r7iz.xlarge" | "r7iz.2xlarge" | "r7iz.4xlarge" | "r7iz.8xlarge" | "r7iz.12xlarge" | "r7iz.16xlarge" | "r7iz.32xlarge" | "c7a.medium" | "c7a.large" | "c7a.xlarge" | "c7a.2xlarge" | "c7a.4xlarge" | "c7a.8xlarge" | "c7a.12xlarge" | "c7a.16xlarge" | "c7a.24xlarge" | "c7a.32xlarge" | "c7a.48xlarge" | "c7a.metal-48xl" | "r7a.metal-48xl" | "r7i.large" | "r7i.xlarge" | "r7i.2xlarge" | "r7i.4xlarge" | "r7i.8xlarge" | "r7i.12xlarge" | "r7i.16xlarge" | "r7i.24xlarge" | "r7i.48xlarge" | "dl2q.24xlarge" | "mac2-m2.metal" | "i4i.12xlarge" | "i4i.24xlarge" | "c7i.metal-24xl" | "c7i.metal-48xl" | "m7i.metal-24xl" | "m7i.metal-48xl" | "r7i.metal-24xl" | "r7i.metal-48xl" | "r7iz.metal-16xl" | "r7iz.metal-32xl" | "c7gd.metal" | "m7gd.metal" | "r7gd.metal" | "g6.xlarge" | "g6.2xlarge" | "g6.4xlarge" | "g6.8xlarge" | "g6.12xlarge" | "g6.16xlarge" | "g6.24xlarge" | "g6.48xlarge" | "gr6.4xlarge" | "gr6.8xlarge" | "c7i-flex.large" | "c7i-flex.xlarge" | "c7i-flex.2xlarge" | "c7i-flex.4xlarge" | "c7i-flex.8xlarge" | "u7i-12tb.224xlarge" | "u7in-16tb.224xlarge" | "u7in-24tb.224xlarge" | "u7in-32tb.224xlarge" | "u7ib-12tb.224xlarge" | "c7gn.metal" | "r8g.medium" | "r8g.large" | "r8g.xlarge" | "r8g.2xlarge" | "r8g.4xlarge" | "r8g.8xlarge" | "r8g.12xlarge" | "r8g.16xlarge" | "r8g.24xlarge" | "r8g.48xlarge" | "r8g.metal-24xl" | "r8g.metal-48xl" | "mac2-m1ultra.metal" | "g6e.xlarge" | "g6e.2xlarge" | "g6e.4xlarge" | "g6e.8xlarge" | "g6e.12xlarge" | "g6e.16xlarge" | "g6e.24xlarge" | "g6e.48xlarge" | "c8g.medium" | "c8g.large" | "c8g.xlarge" | "c8g.2xlarge" | "c8g.4xlarge" | "c8g.8xlarge" | "c8g.12xlarge" | "c8g.16xlarge" | "c8g.24xlarge" | "c8g.48xlarge" | "c8g.metal-24xl" | "c8g.metal-48xl" | "m8g.medium" | "m8g.large" | "m8g.xlarge" | "m8g.2xlarge" | "m8g.4xlarge" | "m8g.8xlarge" | "m8g.12xlarge" | "m8g.16xlarge" | "m8g.24xlarge" | "m8g.48xlarge" | "m8g.metal-24xl" | "m8g.metal-48xl" | "x8g.medium" | "x8g.large" | "x8g.xlarge" | "x8g.2xlarge" | "x8g.4xlarge" | "x8g.8xlarge" | "x8g.12xlarge" | "x8g.16xlarge" | "x8g.24xlarge" | "x8g.48xlarge" | "x8g.metal-24xl" | "x8g.metal-48xl" | "i7ie.large" | "i7ie.xlarge" | "i7ie.2xlarge" | "i7ie.3xlarge" | "i7ie.6xlarge" | "i7ie.12xlarge" | "i7ie.18xlarge" | "i7ie.24xlarge" | "i7ie.48xlarge" | "i8g.large" | "i8g.xlarge" | "i8g.2xlarge" | "i8g.4xlarge" | "i8g.8xlarge" | "i8g.12xlarge" | "i8g.16xlarge" | "i8g.24xlarge" | "i8g.metal-24xl" | "u7i-6tb.112xlarge" | "u7i-8tb.112xlarge" | "u7inh-32tb.480xlarge" | "p5e.48xlarge" | "p5en.48xlarge" | "f2.12xlarge" | "f2.48xlarge" | "trn2.48xlarge" | "c7i-flex.12xlarge" | "c7i-flex.16xlarge" | "m7i-flex.12xlarge" | "m7i-flex.16xlarge" | "i7ie.metal-24xl" | "i7ie.metal-48xl" | "i8g.48xlarge" | "c8gd.medium" | "c8gd.large" | "c8gd.xlarge" | "c8gd.2xlarge" | "c8gd.4xlarge" | "c8gd.8xlarge" | "c8gd.12xlarge" | "c8gd.16xlarge" | "c8gd.24xlarge" | "c8gd.48xlarge" | "c8gd.metal-24xl" | "c8gd.metal-48xl" | "i7i.large" | "i7i.xlarge" | "i7i.2xlarge" | "i7i.4xlarge" | "i7i.8xlarge" | "i7i.12xlarge" | "i7i.16xlarge" | "i7i.24xlarge" | "i7i.48xlarge" | "i7i.metal-24xl" | "i7i.metal-48xl" | "p6-b200.48xlarge" | "m8gd.medium" | "m8gd.large" | "m8gd.xlarge" | "m8gd.2xlarge" | "m8gd.4xlarge" | "m8gd.8xlarge" | "m8gd.12xlarge" | "m8gd.16xlarge" | "m8gd.24xlarge" | "m8gd.48xlarge" | "m8gd.metal-24xl" | "m8gd.metal-48xl" | "r8gd.medium" | "r8gd.large" | "r8gd.xlarge" | "r8gd.2xlarge" | "r8gd.4xlarge" | "r8gd.8xlarge" | "r8gd.12xlarge" | "r8gd.16xlarge" | "r8gd.24xlarge" | "r8gd.48xlarge" | "r8gd.metal-24xl" | "r8gd.metal-48xl" | "c8gn.medium" | "c8gn.large" | "c8gn.xlarge" | "c8gn.2xlarge" | "c8gn.4xlarge" | "c8gn.8xlarge" | "c8gn.12xlarge" | "c8gn.16xlarge" | "c8gn.24xlarge" | "c8gn.48xlarge" | "c8gn.metal-24xl" | "c8gn.metal-48xl" | "f2.6xlarge" | "p6e-gb200.36xlarge" | "g6f.large" | "g6f.xlarge" | "g6f.2xlarge" | "g6f.4xlarge" | "gr6f.4xlarge" | "p5.4xlarge" | "r8i.large" | "r8i.xlarge" | "r8i.2xlarge" | "r8i.4xlarge" | "r8i.8xlarge" | "r8i.12xlarge" | "r8i.16xlarge" | "r8i.24xlarge" | "r8i.32xlarge" | "r8i.48xlarge" | "r8i.96xlarge" | "r8i.metal-48xl" | "r8i.metal-96xl" | "r8i-flex.large" | "r8i-flex.xlarge" | "r8i-flex.2xlarge" | "r8i-flex.4xlarge" | "r8i-flex.8xlarge" | "r8i-flex.12xlarge" | "r8i-flex.16xlarge" | "m8i.large" | "m8i.xlarge" | "m8i.2xlarge" | "m8i.4xlarge" | "m8i.8xlarge" | "m8i.12xlarge" | "m8i.16xlarge" | "m8i.24xlarge" | "m8i.32xlarge" | "m8i.48xlarge" | "m8i.96xlarge" | "m8i.metal-48xl" | "m8i.metal-96xl" | "m8i-flex.large" | "m8i-flex.xlarge" | "m8i-flex.2xlarge" | "m8i-flex.4xlarge" | "m8i-flex.8xlarge" | "m8i-flex.12xlarge" | "m8i-flex.16xlarge" | "i8ge.large" | "i8ge.xlarge" | "i8ge.2xlarge" | "i8ge.3xlarge" | "i8ge.6xlarge" | "i8ge.12xlarge" | "i8ge.18xlarge" | "i8ge.24xlarge" | "i8ge.48xlarge" | "i8ge.metal-24xl" | "i8ge.metal-48xl" | "mac-m4.metal" | "mac-m4pro.metal" | "r8gn.medium" | "r8gn.large" | "r8gn.xlarge" | "r8gn.2xlarge" | "r8gn.4xlarge" | "r8gn.8xlarge" | "r8gn.12xlarge" | "r8gn.16xlarge" | "r8gn.24xlarge" | "r8gn.48xlarge" | "r8gn.metal-24xl" | "r8gn.metal-48xl" | "c8i.large" | "c8i.xlarge" | "c8i.2xlarge" | "c8i.4xlarge" | "c8i.8xlarge" | "c8i.12xlarge" | "c8i.16xlarge" | "c8i.24xlarge" | "c8i.32xlarge" | "c8i.48xlarge" | "c8i.96xlarge" | "c8i.metal-48xl" | "c8i.metal-96xl" | "c8i-flex.large" | "c8i-flex.xlarge" | "c8i-flex.2xlarge" | "c8i-flex.4xlarge" | "c8i-flex.8xlarge" | "c8i-flex.12xlarge" | "c8i-flex.16xlarge" | "r8gb.medium" | "r8gb.large" | "r8gb.xlarge" | "r8gb.2xlarge" | "r8gb.4xlarge" | "r8gb.8xlarge" | "r8gb.12xlarge" | "r8gb.16xlarge" | "r8gb.24xlarge" | "r8gb.metal-24xl" | "m8a.medium" | "m8a.large" | "m8a.xlarge" | "m8a.2xlarge" | "m8a.4xlarge" | "m8a.8xlarge" | "m8a.12xlarge" | "m8a.16xlarge" | "m8a.24xlarge" | "m8a.48xlarge" | "m8a.metal-24xl" | "m8a.metal-48xl" | "trn2.3xlarge" | "r8a.medium" | "r8a.large" | "r8a.xlarge" | "r8a.2xlarge" | "r8a.4xlarge" | "r8a.8xlarge" | "r8a.12xlarge" | "r8a.16xlarge" | "r8a.24xlarge" | "r8a.48xlarge" | "r8a.metal-24xl" | "r8a.metal-48xl" | "p6-b300.48xlarge" | "c8a.medium" | "c8a.large" | "c8a.xlarge" | "c8a.2xlarge" | "c8a.4xlarge" | "c8a.8xlarge" | "c8a.12xlarge" | "c8a.16xlarge" | "c8a.24xlarge" | "c8a.48xlarge" | "c8a.metal-24xl" | "c8a.metal-48xl" | "c8gb.12xlarge" | "c8gb.16xlarge" | "c8gb.24xlarge" | "c8gb.2xlarge" | "c8gb.4xlarge" | "c8gb.8xlarge" | "c8gb.large" | "c8gb.medium" | "c8gb.metal-24xl" | "c8gb.xlarge" | "c8gb.48xlarge" | "c8gb.metal-48xl" | "m8gb.12xlarge" | "m8gb.16xlarge" | "m8gb.24xlarge" | "m8gb.2xlarge" | "m8gb.4xlarge" | "m8gb.8xlarge" | "m8gb.large" | "m8gb.medium" | "m8gb.xlarge" | "m8gb.48xlarge" | "m8gb.metal-24xl" | "m8gb.metal-48xl" | "m8gn.12xlarge" | "m8gn.16xlarge" | "m8gn.24xlarge" | "m8gn.2xlarge" | "m8gn.48xlarge" | "m8gn.4xlarge" | "m8gn.8xlarge" | "m8gn.large" | "m8gn.medium" | "m8gn.xlarge" | "m8gn.metal-24xl" | "m8gn.metal-48xl" | "x8aedz.12xlarge" | "x8aedz.24xlarge" | "x8aedz.3xlarge" | "x8aedz.6xlarge" | "x8aedz.large" | "x8aedz.metal-12xl" | "x8aedz.metal-24xl" | "x8aedz.xlarge" | "m8azn.medium" | "m8azn.large" | "m8azn.xlarge" | "m8azn.3xlarge" | "m8azn.6xlarge" | "m8azn.12xlarge" | "m8azn.24xlarge" | "m8azn.metal-12xl" | "m8azn.metal-24xl" | "x8i.large" | "x8i.xlarge" | "x8i.2xlarge" | "x8i.4xlarge" | "x8i.8xlarge" | "x8i.12xlarge" | "x8i.16xlarge" | "x8i.24xlarge" | "x8i.32xlarge" | "x8i.48xlarge" | "x8i.64xlarge" | "x8i.96xlarge" | "x8i.metal-48xl" | "x8i.metal-96xl" | "mac-m4max.metal" | "g7e.2xlarge" | "g7e.4xlarge" | "g7e.8xlarge" | "g7e.12xlarge" | "g7e.24xlarge" | "g7e.48xlarge" | "r8id.large" | "r8id.xlarge" | "r8id.2xlarge" | "r8id.4xlarge" | "r8id.8xlarge" | "r8id.12xlarge" | "r8id.16xlarge" | "r8id.24xlarge" | "r8id.32xlarge" | "r8id.48xlarge" | "r8id.96xlarge" | "r8id.metal-48xl" | "r8id.metal-96xl" | "c8id.large" | "c8id.xlarge" | "c8id.2xlarge" | "c8id.4xlarge" | "c8id.8xlarge" | "c8id.12xlarge" | "c8id.16xlarge" | "c8id.24xlarge" | "c8id.32xlarge" | "c8id.48xlarge" | "c8id.96xlarge" | "c8id.metal-48xl" | "c8id.metal-96xl" | "m8id.large" | "m8id.xlarge" | "m8id.2xlarge" | "m8id.4xlarge" | "m8id.8xlarge" | "m8id.12xlarge" | "m8id.16xlarge" | "m8id.24xlarge" | "m8id.32xlarge" | "m8id.48xlarge" | "m8id.96xlarge" | "m8id.metal-48xl" | "m8id.metal-96xl" | "hpc8a.96xlarge"

local type SelfServicePortal = "enabled" | "disabled"

local type ImdsSupportValues = "v2.0"

local type HostTenancy = "default" | "dedicated" | "host"

local type FlowLogsResourceType = "VPC" | "Subnet" | "NetworkInterface" | "TransitGateway" | "TransitGatewayAttachment" | "RegionalNatGateway"

local type HostMaintenance = "on" | "off"

local type MacSystemIntegrityProtectionSettingStatus = "enabled" | "disabled"

local type OutputFormat = "csv" | "parquet"

local type ExcessCapacityTerminationPolicy = "noTermination" | "default"

local type ArchitectureValues = "i386" | "x86_64" | "arm64" | "x86_64_mac" | "arm64_mac"

local type InternetGatewayBlockMode = "off" | "block-bidirectional" | "block-ingress"

local type FpgaImageAttributeName = "description" | "name" | "loadPermission" | "productCodes"

local type EkPubKeyFormat = "der" | "tpmt"

local type AnalysisStatus = "running" | "succeeded" | "failed"

local type Tenancy = "default" | "dedicated" | "host"

local type ReportStatusType = "ok" | "impaired"

local type ExportEnvironment = "citrix" | "vmware" | "microsoft"

local type InstanceInterruptionBehavior = "hibernate" | "stop" | "terminate"

local type FleetExcessCapacityTerminationPolicy = "no-termination" | "termination"

local type Affinity = "default" | "host"

local type VolumeState = "creating" | "available" | "in-use" | "deleting" | "deleted" | "error"

local type OfferingClassType = "standard" | "convertible"

local type BootModeValues = "legacy-bios" | "uefi" | "uefi-preferred"

local type SnapshotLocationEnum = "regional" | "local"

local type SpreadLevel = "host" | "rack"

local type IpamPolicyResourceType = "alb" | "eip" | "rds" | "rnat"

local type InterruptibleCapacityReservationAllocationStatus = "pending" | "active" | "updating" | "canceling" | "canceled" | "failed"

local type ImageAttributeName = "description" | "kernel" | "ramdisk" | "launchPermission" | "productCodes" | "blockDeviceMapping" | "sriovNetSupport" | "bootMode" | "tpmSupport" | "uefiData" | "lastLaunchedTime" | "imdsSupport" | "deregistrationProtection"

local type NestedVirtualizationSpecification = "enabled" | "disabled"

local type FleetCapacityReservationTenancy = "default"

local type HostnameType = "ip-name" | "resource-name"

local type MetricType = "aggregate-latency"

local type InterruptionType = "adhoc"

local type SnapshotAttributeName = "productCodes" | "createVolumePermission"

local type InstanceMetadataTagsState = "disabled" | "enabled"

local type LocationType = "region" | "availability-zone" | "availability-zone-id" | "outpost"

local type FleetInstanceMatchCriteria = "open"

local type CapacityReservationState = "active" | "expired" | "cancelled" | "pending" | "failed" | "scheduled" | "payment-pending" | "payment-failed" | "assessing" | "delayed" | "unsupported" | "unavailable"

local type CapacityReservationDeliveryPreference = "fixed" | "incremental"

local type ResetFpgaImageAttributeName = "loadPermission"

local type UserTrustProviderType = "iam-identity-center" | "oidc"

local type EkPubKeyType = "rsa-2048" | "ecc-sec-p384"

local type ImageBlockPublicAccessEnabledState = "block-new-sharing"

local type InstanceMetadataEndpointState = "disabled" | "enabled"

local type ModifyAvailabilityZoneOptInStatus = "opted-in" | "not-opted-in"

local type VerifiedAccessEndpointAttachmentType = "vpc"

local type Schedule = "hourly"

local type VolumeType = "standard" | "io1" | "io2" | "gp2" | "sc1" | "st1" | "gp3"

local type ResetImageAttributeName = "launchPermission"

local type FleetType = "request" | "maintain" | "instant"

local type EventType = "instanceChange" | "fleetRequestChange" | "error" | "information"

local type TrafficMirrorRuleAction = "accept" | "reject"

local type IpamPoolAwsService = "ec2" | "global-services"

local type VpcAttributeName = "enableDnsSupport" | "enableDnsHostnames" | "enableNetworkAddressUsageMetrics"

local type ConnectivityType = "private" | "public"

local type OfferingTypeValues = "Heavy Utilization" | "Medium Utilization" | "Light Utilization" | "No Upfront" | "Partial Upfront" | "All Upfront"

local type TpmSupportValues = "v2.0"

local type InstanceAttributeName = "instanceType" | "kernel" | "ramdisk" | "userData" | "disableApiTermination" | "instanceInitiatedShutdownBehavior" | "rootDeviceName" | "blockDeviceMapping" | "productCodes" | "sourceDestCheck" | "groupSet" | "ebsOptimized" | "sriovNetSupport" | "enaSupport" | "enclaveOptions" | "disableApiStop"

local type OperationType = "add" | "remove"

local type TrafficDirection = "ingress" | "egress"

local type DeviceTrustProviderType = "jamf" | "crowdstrike" | "jumpcloud"

local type TransitGatewayAttachmentResourceType = "vpc" | "vpn" | "vpn-concentrator" | "direct-connect-gateway" | "connect" | "peering" | "tgw-peering" | "network-function" | "client-vpn"

local type ManagedResourceDefaultVisibility = "hidden" | "visible"

local type ManagedBy = "account" | "declarative-policy"

local type IpamPolicyManagedBy = "account" | "delegated-administrator-for-ipam"

local type VolumeAttachmentState = "attaching" | "attached" | "detaching" | "detached" | "busy"

local type RouteServerPersistRoutesAction = "enable" | "disable" | "reset"

local type StorageTier = "archive" | "standard"

local type EndpointIpAddressType = "ipv4" | "ipv6" | "dual-stack"

local type IpAddressType = "ipv4" | "dualstack" | "ipv6"

local type LockState = "compliance" | "governance" | "compliance-cooloff" | "expired"

local type NetworkInterfaceAttribute = "description" | "groupSet" | "sourceDestCheck" | "attachment" | "associatePublicIpAddress"

local type CapacityReservationFleetState = "submitted" | "modifying" | "active" | "partially_fulfilled" | "expiring" | "expired" | "cancelling" | "cancelled" | "failed"

local type AddressFamily = "ipv4" | "ipv6"

local type SnapshotBlockPublicAccessState = "block-all-sharing" | "block-new-sharing" | "unblocked"

local type InstanceRebootMigrationState = "disabled" | "default"

local type InterfacePermissionType = "INSTANCE-ATTACH" | "EIP-ASSOCIATE"

local type VerifiedAccessEndpointType = "load-balancer" | "network-interface" | "rds" | "cidr"

local type VolumeAttributeName = "autoEnableIO" | "productCodes"

local type InstanceMatchCriteria = "open" | "targeted"

local type SSEType = "sse-ebs" | "sse-kms" | "none"

local type DefaultHttpTokensEnforcedState = "disabled" | "enabled" | "no-preference"

local type TrafficIpAddressType = "ipv4" | "ipv6" | "dual-stack"

local type PlacementStrategy = "cluster" | "spread" | "partition"

local type TransportProtocol = "tcp" | "udp"

local type CopyTagsFromSource = "volume"

local type InstanceBandwidthWeighting = "default" | "vpc-1" | "ebs-1"

local type TransferType = "time-based" | "standard"

local type InternetGatewayExclusionMode = "allow-bidirectional" | "allow-egress"

local type FleetEventType = "instance-change" | "fleet-change" | "service-error"

local type VpcTenancy = "default"

local type ShutdownBehavior = "stop" | "terminate"

local type MetadataDefaultHttpTokensState = "optional" | "required" | "no-preference"

local type CapacityReservationTenancy = "default" | "dedicated"

local type VpcEncryptionControlMode = "monitor" | "enforce"

local type DiskImageFormat = "VMDK" | "RAW" | "VHD"

local type InstanceMetadataProtocolState = "disabled" | "enabled"

local type TransitGatewayMeteringPayerType = "source-attachment-owner" | "destination-attachment-owner" | "transit-gateway-owner"

local type PublicIpDnsOption = "public-dual-stack-dns-name" | "public-ipv4-dns-name" | "public-ipv6-dns-name"

local type AllowedImagesSettingsDisabledState = "disabled"

local type TargetStorageTier = "archive"

local type CapacityManagerStatus = "enabled" | "disabled"

local record M
    AcceptAddressTransferInput: AcceptAddressTransferInput
    AcceptAddressTransferOutput: AcceptAddressTransferOutput
    AcceptCapacityReservationBillingOwnershipInput: AcceptCapacityReservationBillingOwnershipInput
    AcceptCapacityReservationBillingOwnershipOutput: AcceptCapacityReservationBillingOwnershipOutput
    AcceptReservedInstancesExchangeQuoteInput: AcceptReservedInstancesExchangeQuoteInput
    AcceptReservedInstancesExchangeQuoteOutput: AcceptReservedInstancesExchangeQuoteOutput
    AcceptTransitGatewayClientVpnAttachmentInput: AcceptTransitGatewayClientVpnAttachmentInput
    AcceptTransitGatewayClientVpnAttachmentOutput: AcceptTransitGatewayClientVpnAttachmentOutput
    AcceptTransitGatewayMulticastDomainAssociationsInput: AcceptTransitGatewayMulticastDomainAssociationsInput
    AcceptTransitGatewayMulticastDomainAssociationsOutput: AcceptTransitGatewayMulticastDomainAssociationsOutput
    AcceptTransitGatewayPeeringAttachmentInput: AcceptTransitGatewayPeeringAttachmentInput
    AcceptTransitGatewayPeeringAttachmentOutput: AcceptTransitGatewayPeeringAttachmentOutput
    AcceptTransitGatewayVpcAttachmentInput: AcceptTransitGatewayVpcAttachmentInput
    AcceptTransitGatewayVpcAttachmentOutput: AcceptTransitGatewayVpcAttachmentOutput
    AcceptVpcEndpointConnectionsInput: AcceptVpcEndpointConnectionsInput
    AcceptVpcEndpointConnectionsOutput: AcceptVpcEndpointConnectionsOutput
    AcceptVpcPeeringConnectionInput: AcceptVpcPeeringConnectionInput
    AcceptVpcPeeringConnectionOutput: AcceptVpcPeeringConnectionOutput
    AdvertiseByoipCidrInput: AdvertiseByoipCidrInput
    AdvertiseByoipCidrOutput: AdvertiseByoipCidrOutput
    AllocateAddressInput: AllocateAddressInput
    AllocateAddressOutput: AllocateAddressOutput
    AllocateHostsInput: AllocateHostsInput
    AllocateHostsOutput: AllocateHostsOutput
    AllocateIpamPoolCidrInput: AllocateIpamPoolCidrInput
    AllocateIpamPoolCidrOutput: AllocateIpamPoolCidrOutput
    ApplySecurityGroupsToClientVpnTargetNetworkInput: ApplySecurityGroupsToClientVpnTargetNetworkInput
    ApplySecurityGroupsToClientVpnTargetNetworkOutput: ApplySecurityGroupsToClientVpnTargetNetworkOutput
    AssignIpv6AddressesInput: AssignIpv6AddressesInput
    AssignIpv6AddressesOutput: AssignIpv6AddressesOutput
    AssignPrivateIpAddressesInput: AssignPrivateIpAddressesInput
    AssignPrivateIpAddressesOutput: AssignPrivateIpAddressesOutput
    AssignPrivateNatGatewayAddressInput: AssignPrivateNatGatewayAddressInput
    AssignPrivateNatGatewayAddressOutput: AssignPrivateNatGatewayAddressOutput
    AssociateAddressInput: AssociateAddressInput
    AssociateAddressOutput: AssociateAddressOutput
    AssociateCapacityReservationBillingOwnerInput: AssociateCapacityReservationBillingOwnerInput
    AssociateCapacityReservationBillingOwnerOutput: AssociateCapacityReservationBillingOwnerOutput
    AssociateClientVpnTargetNetworkInput: AssociateClientVpnTargetNetworkInput
    AssociateClientVpnTargetNetworkOutput: AssociateClientVpnTargetNetworkOutput
    AssociateDhcpOptionsInput: AssociateDhcpOptionsInput
    AssociateDhcpOptionsOutput: AssociateDhcpOptionsOutput
    AssociateEnclaveCertificateIamRoleInput: AssociateEnclaveCertificateIamRoleInput
    AssociateEnclaveCertificateIamRoleOutput: AssociateEnclaveCertificateIamRoleOutput
    AssociateIamInstanceProfileInput: AssociateIamInstanceProfileInput
    AssociateIamInstanceProfileOutput: AssociateIamInstanceProfileOutput
    AssociateInstanceEventWindowInput: AssociateInstanceEventWindowInput
    AssociateInstanceEventWindowOutput: AssociateInstanceEventWindowOutput
    AssociateIpamByoasnInput: AssociateIpamByoasnInput
    AssociateIpamByoasnOutput: AssociateIpamByoasnOutput
    AssociateIpamResourceDiscoveryInput: AssociateIpamResourceDiscoveryInput
    AssociateIpamResourceDiscoveryOutput: AssociateIpamResourceDiscoveryOutput
    AssociateNatGatewayAddressInput: AssociateNatGatewayAddressInput
    AssociateNatGatewayAddressOutput: AssociateNatGatewayAddressOutput
    AssociateRouteServerInput: AssociateRouteServerInput
    AssociateRouteServerOutput: AssociateRouteServerOutput
    AssociateRouteTableInput: AssociateRouteTableInput
    AssociateRouteTableOutput: AssociateRouteTableOutput
    AssociateSecurityGroupVpcInput: AssociateSecurityGroupVpcInput
    AssociateSecurityGroupVpcOutput: AssociateSecurityGroupVpcOutput
    AssociateSubnetCidrBlockInput: AssociateSubnetCidrBlockInput
    AssociateSubnetCidrBlockOutput: AssociateSubnetCidrBlockOutput
    AssociateTransitGatewayMulticastDomainInput: AssociateTransitGatewayMulticastDomainInput
    AssociateTransitGatewayMulticastDomainOutput: AssociateTransitGatewayMulticastDomainOutput
    AssociateTransitGatewayPolicyTableInput: AssociateTransitGatewayPolicyTableInput
    AssociateTransitGatewayPolicyTableOutput: AssociateTransitGatewayPolicyTableOutput
    AssociateTransitGatewayRouteTableInput: AssociateTransitGatewayRouteTableInput
    AssociateTransitGatewayRouteTableOutput: AssociateTransitGatewayRouteTableOutput
    AssociateTrunkInterfaceInput: AssociateTrunkInterfaceInput
    AssociateTrunkInterfaceOutput: AssociateTrunkInterfaceOutput
    AssociateVpcCidrBlockInput: AssociateVpcCidrBlockInput
    AssociateVpcCidrBlockOutput: AssociateVpcCidrBlockOutput
    AttachClassicLinkVpcInput: AttachClassicLinkVpcInput
    AttachClassicLinkVpcOutput: AttachClassicLinkVpcOutput
    AttachInternetGatewayInput: AttachInternetGatewayInput
    AttachInternetGatewayOutput: AttachInternetGatewayOutput
    AttachNetworkInterfaceInput: AttachNetworkInterfaceInput
    AttachNetworkInterfaceOutput: AttachNetworkInterfaceOutput
    AttachVerifiedAccessTrustProviderInput: AttachVerifiedAccessTrustProviderInput
    AttachVerifiedAccessTrustProviderOutput: AttachVerifiedAccessTrustProviderOutput
    AttachVolumeInput: AttachVolumeInput
    AttachVolumeOutput: AttachVolumeOutput
    AttachVpnGatewayInput: AttachVpnGatewayInput
    AttachVpnGatewayOutput: AttachVpnGatewayOutput
    AuthorizeClientVpnIngressInput: AuthorizeClientVpnIngressInput
    AuthorizeClientVpnIngressOutput: AuthorizeClientVpnIngressOutput
    AuthorizeSecurityGroupEgressInput: AuthorizeSecurityGroupEgressInput
    AuthorizeSecurityGroupEgressOutput: AuthorizeSecurityGroupEgressOutput
    AuthorizeSecurityGroupIngressInput: AuthorizeSecurityGroupIngressInput
    AuthorizeSecurityGroupIngressOutput: AuthorizeSecurityGroupIngressOutput
    BundleInstanceInput: BundleInstanceInput
    BundleInstanceOutput: BundleInstanceOutput
    CancelBundleTaskInput: CancelBundleTaskInput
    CancelBundleTaskOutput: CancelBundleTaskOutput
    CancelCapacityReservationInput: CancelCapacityReservationInput
    CancelCapacityReservationOutput: CancelCapacityReservationOutput
    CancelCapacityReservationFleetsInput: CancelCapacityReservationFleetsInput
    CancelCapacityReservationFleetsOutput: CancelCapacityReservationFleetsOutput
    CancelConversionTaskInput: CancelConversionTaskInput
    CancelConversionTaskOutput: CancelConversionTaskOutput
    CancelDeclarativePoliciesReportInput: CancelDeclarativePoliciesReportInput
    CancelDeclarativePoliciesReportOutput: CancelDeclarativePoliciesReportOutput
    CancelExportTaskInput: CancelExportTaskInput
    CancelExportTaskOutput: CancelExportTaskOutput
    CancelImageLaunchPermissionInput: CancelImageLaunchPermissionInput
    CancelImageLaunchPermissionOutput: CancelImageLaunchPermissionOutput
    CancelImportTaskInput: CancelImportTaskInput
    CancelImportTaskOutput: CancelImportTaskOutput
    CancelReservedInstancesListingInput: CancelReservedInstancesListingInput
    CancelReservedInstancesListingOutput: CancelReservedInstancesListingOutput
    CancelSpotFleetRequestsInput: CancelSpotFleetRequestsInput
    CancelSpotFleetRequestsOutput: CancelSpotFleetRequestsOutput
    CancelSpotInstanceRequestsInput: CancelSpotInstanceRequestsInput
    CancelSpotInstanceRequestsOutput: CancelSpotInstanceRequestsOutput
    ConfirmProductInstanceInput: ConfirmProductInstanceInput
    ConfirmProductInstanceOutput: ConfirmProductInstanceOutput
    CopyFpgaImageInput: CopyFpgaImageInput
    CopyFpgaImageOutput: CopyFpgaImageOutput
    CopyImageInput: CopyImageInput
    CopyImageOutput: CopyImageOutput
    CopySnapshotInput: CopySnapshotInput
    CopySnapshotOutput: CopySnapshotOutput
    CopyVolumesInput: CopyVolumesInput
    CopyVolumesOutput: CopyVolumesOutput
    CreateCapacityManagerDataExportInput: CreateCapacityManagerDataExportInput
    CreateCapacityManagerDataExportOutput: CreateCapacityManagerDataExportOutput
    CreateCapacityReservationInput: CreateCapacityReservationInput
    CreateCapacityReservationOutput: CreateCapacityReservationOutput
    CreateCapacityReservationBySplittingInput: CreateCapacityReservationBySplittingInput
    CreateCapacityReservationBySplittingOutput: CreateCapacityReservationBySplittingOutput
    CreateCapacityReservationFleetInput: CreateCapacityReservationFleetInput
    CreateCapacityReservationFleetOutput: CreateCapacityReservationFleetOutput
    CreateCarrierGatewayInput: CreateCarrierGatewayInput
    CreateCarrierGatewayOutput: CreateCarrierGatewayOutput
    CreateClientVpnEndpointInput: CreateClientVpnEndpointInput
    CreateClientVpnEndpointOutput: CreateClientVpnEndpointOutput
    CreateClientVpnRouteInput: CreateClientVpnRouteInput
    CreateClientVpnRouteOutput: CreateClientVpnRouteOutput
    CreateCoipCidrInput: CreateCoipCidrInput
    CreateCoipCidrOutput: CreateCoipCidrOutput
    CreateCoipPoolInput: CreateCoipPoolInput
    CreateCoipPoolOutput: CreateCoipPoolOutput
    CreateCustomerGatewayInput: CreateCustomerGatewayInput
    CreateCustomerGatewayOutput: CreateCustomerGatewayOutput
    CreateDefaultSubnetInput: CreateDefaultSubnetInput
    CreateDefaultSubnetOutput: CreateDefaultSubnetOutput
    CreateDefaultVpcInput: CreateDefaultVpcInput
    CreateDefaultVpcOutput: CreateDefaultVpcOutput
    CreateDelegateMacVolumeOwnershipTaskInput: CreateDelegateMacVolumeOwnershipTaskInput
    CreateDelegateMacVolumeOwnershipTaskOutput: CreateDelegateMacVolumeOwnershipTaskOutput
    CreateDhcpOptionsInput: CreateDhcpOptionsInput
    CreateDhcpOptionsOutput: CreateDhcpOptionsOutput
    CreateEgressOnlyInternetGatewayInput: CreateEgressOnlyInternetGatewayInput
    CreateEgressOnlyInternetGatewayOutput: CreateEgressOnlyInternetGatewayOutput
    CreateFleetInput: CreateFleetInput
    CreateFleetOutput: CreateFleetOutput
    CreateFlowLogsInput: CreateFlowLogsInput
    CreateFlowLogsOutput: CreateFlowLogsOutput
    CreateFpgaImageInput: CreateFpgaImageInput
    CreateFpgaImageOutput: CreateFpgaImageOutput
    CreateImageInput: CreateImageInput
    CreateImageOutput: CreateImageOutput
    CreateImageUsageReportInput: CreateImageUsageReportInput
    CreateImageUsageReportOutput: CreateImageUsageReportOutput
    CreateInstanceConnectEndpointInput: CreateInstanceConnectEndpointInput
    CreateInstanceConnectEndpointOutput: CreateInstanceConnectEndpointOutput
    CreateInstanceEventWindowInput: CreateInstanceEventWindowInput
    CreateInstanceEventWindowOutput: CreateInstanceEventWindowOutput
    CreateInstanceExportTaskInput: CreateInstanceExportTaskInput
    CreateInstanceExportTaskOutput: CreateInstanceExportTaskOutput
    CreateInternetGatewayInput: CreateInternetGatewayInput
    CreateInternetGatewayOutput: CreateInternetGatewayOutput
    CreateInterruptibleCapacityReservationAllocationInput: CreateInterruptibleCapacityReservationAllocationInput
    CreateInterruptibleCapacityReservationAllocationOutput: CreateInterruptibleCapacityReservationAllocationOutput
    CreateIpamInput: CreateIpamInput
    CreateIpamOutput: CreateIpamOutput
    CreateIpamExternalResourceVerificationTokenInput: CreateIpamExternalResourceVerificationTokenInput
    CreateIpamExternalResourceVerificationTokenOutput: CreateIpamExternalResourceVerificationTokenOutput
    CreateIpamPolicyInput: CreateIpamPolicyInput
    CreateIpamPolicyOutput: CreateIpamPolicyOutput
    CreateIpamPoolInput: CreateIpamPoolInput
    CreateIpamPoolOutput: CreateIpamPoolOutput
    CreateIpamPrefixListResolverInput: CreateIpamPrefixListResolverInput
    CreateIpamPrefixListResolverOutput: CreateIpamPrefixListResolverOutput
    CreateIpamPrefixListResolverTargetInput: CreateIpamPrefixListResolverTargetInput
    CreateIpamPrefixListResolverTargetOutput: CreateIpamPrefixListResolverTargetOutput
    CreateIpamResourceDiscoveryInput: CreateIpamResourceDiscoveryInput
    CreateIpamResourceDiscoveryOutput: CreateIpamResourceDiscoveryOutput
    CreateIpamScopeInput: CreateIpamScopeInput
    CreateIpamScopeOutput: CreateIpamScopeOutput
    CreateKeyPairInput: CreateKeyPairInput
    CreateKeyPairOutput: CreateKeyPairOutput
    CreateLaunchTemplateInput: CreateLaunchTemplateInput
    CreateLaunchTemplateOutput: CreateLaunchTemplateOutput
    CreateLaunchTemplateVersionInput: CreateLaunchTemplateVersionInput
    CreateLaunchTemplateVersionOutput: CreateLaunchTemplateVersionOutput
    CreateLocalGatewayRouteInput: CreateLocalGatewayRouteInput
    CreateLocalGatewayRouteOutput: CreateLocalGatewayRouteOutput
    CreateLocalGatewayRouteTableInput: CreateLocalGatewayRouteTableInput
    CreateLocalGatewayRouteTableOutput: CreateLocalGatewayRouteTableOutput
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput: CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput: CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput
    CreateLocalGatewayRouteTableVpcAssociationInput: CreateLocalGatewayRouteTableVpcAssociationInput
    CreateLocalGatewayRouteTableVpcAssociationOutput: CreateLocalGatewayRouteTableVpcAssociationOutput
    CreateLocalGatewayVirtualInterfaceInput: CreateLocalGatewayVirtualInterfaceInput
    CreateLocalGatewayVirtualInterfaceOutput: CreateLocalGatewayVirtualInterfaceOutput
    CreateLocalGatewayVirtualInterfaceGroupInput: CreateLocalGatewayVirtualInterfaceGroupInput
    CreateLocalGatewayVirtualInterfaceGroupOutput: CreateLocalGatewayVirtualInterfaceGroupOutput
    CreateMacSystemIntegrityProtectionModificationTaskInput: CreateMacSystemIntegrityProtectionModificationTaskInput
    CreateMacSystemIntegrityProtectionModificationTaskOutput: CreateMacSystemIntegrityProtectionModificationTaskOutput
    CreateManagedPrefixListInput: CreateManagedPrefixListInput
    CreateManagedPrefixListOutput: CreateManagedPrefixListOutput
    CreateNatGatewayInput: CreateNatGatewayInput
    CreateNatGatewayOutput: CreateNatGatewayOutput
    CreateNetworkAclInput: CreateNetworkAclInput
    CreateNetworkAclOutput: CreateNetworkAclOutput
    CreateNetworkAclEntryInput: CreateNetworkAclEntryInput
    CreateNetworkAclEntryOutput: CreateNetworkAclEntryOutput
    CreateNetworkInsightsAccessScopeInput: CreateNetworkInsightsAccessScopeInput
    CreateNetworkInsightsAccessScopeOutput: CreateNetworkInsightsAccessScopeOutput
    CreateNetworkInsightsPathInput: CreateNetworkInsightsPathInput
    CreateNetworkInsightsPathOutput: CreateNetworkInsightsPathOutput
    CreateNetworkInterfaceInput: CreateNetworkInterfaceInput
    CreateNetworkInterfaceOutput: CreateNetworkInterfaceOutput
    CreateNetworkInterfacePermissionInput: CreateNetworkInterfacePermissionInput
    CreateNetworkInterfacePermissionOutput: CreateNetworkInterfacePermissionOutput
    CreatePlacementGroupInput: CreatePlacementGroupInput
    CreatePlacementGroupOutput: CreatePlacementGroupOutput
    CreatePublicIpv4PoolInput: CreatePublicIpv4PoolInput
    CreatePublicIpv4PoolOutput: CreatePublicIpv4PoolOutput
    CreateReplaceRootVolumeTaskInput: CreateReplaceRootVolumeTaskInput
    CreateReplaceRootVolumeTaskOutput: CreateReplaceRootVolumeTaskOutput
    CreateReservedInstancesListingInput: CreateReservedInstancesListingInput
    CreateReservedInstancesListingOutput: CreateReservedInstancesListingOutput
    CreateRestoreImageTaskInput: CreateRestoreImageTaskInput
    CreateRestoreImageTaskOutput: CreateRestoreImageTaskOutput
    CreateRouteInput: CreateRouteInput
    CreateRouteOutput: CreateRouteOutput
    CreateRouteServerInput: CreateRouteServerInput
    CreateRouteServerOutput: CreateRouteServerOutput
    CreateRouteServerEndpointInput: CreateRouteServerEndpointInput
    CreateRouteServerEndpointOutput: CreateRouteServerEndpointOutput
    CreateRouteServerPeerInput: CreateRouteServerPeerInput
    CreateRouteServerPeerOutput: CreateRouteServerPeerOutput
    CreateRouteTableInput: CreateRouteTableInput
    CreateRouteTableOutput: CreateRouteTableOutput
    CreateSecondaryNetworkInput: CreateSecondaryNetworkInput
    CreateSecondaryNetworkOutput: CreateSecondaryNetworkOutput
    CreateSecondarySubnetInput: CreateSecondarySubnetInput
    CreateSecondarySubnetOutput: CreateSecondarySubnetOutput
    CreateSecurityGroupInput: CreateSecurityGroupInput
    CreateSecurityGroupOutput: CreateSecurityGroupOutput
    CreateSnapshotInput: CreateSnapshotInput
    CreateSnapshotOutput: CreateSnapshotOutput
    CreateSnapshotsInput: CreateSnapshotsInput
    CreateSnapshotsOutput: CreateSnapshotsOutput
    CreateSpotDatafeedSubscriptionInput: CreateSpotDatafeedSubscriptionInput
    CreateSpotDatafeedSubscriptionOutput: CreateSpotDatafeedSubscriptionOutput
    CreateStoreImageTaskInput: CreateStoreImageTaskInput
    CreateStoreImageTaskOutput: CreateStoreImageTaskOutput
    CreateSubnetInput: CreateSubnetInput
    CreateSubnetOutput: CreateSubnetOutput
    CreateSubnetCidrReservationInput: CreateSubnetCidrReservationInput
    CreateSubnetCidrReservationOutput: CreateSubnetCidrReservationOutput
    CreateTagsInput: CreateTagsInput
    CreateTagsOutput: CreateTagsOutput
    CreateTrafficMirrorFilterInput: CreateTrafficMirrorFilterInput
    CreateTrafficMirrorFilterOutput: CreateTrafficMirrorFilterOutput
    CreateTrafficMirrorFilterRuleInput: CreateTrafficMirrorFilterRuleInput
    CreateTrafficMirrorFilterRuleOutput: CreateTrafficMirrorFilterRuleOutput
    CreateTrafficMirrorSessionInput: CreateTrafficMirrorSessionInput
    CreateTrafficMirrorSessionOutput: CreateTrafficMirrorSessionOutput
    CreateTrafficMirrorTargetInput: CreateTrafficMirrorTargetInput
    CreateTrafficMirrorTargetOutput: CreateTrafficMirrorTargetOutput
    CreateTransitGatewayInput: CreateTransitGatewayInput
    CreateTransitGatewayOutput: CreateTransitGatewayOutput
    CreateTransitGatewayConnectInput: CreateTransitGatewayConnectInput
    CreateTransitGatewayConnectOutput: CreateTransitGatewayConnectOutput
    CreateTransitGatewayConnectPeerInput: CreateTransitGatewayConnectPeerInput
    CreateTransitGatewayConnectPeerOutput: CreateTransitGatewayConnectPeerOutput
    CreateTransitGatewayMeteringPolicyInput: CreateTransitGatewayMeteringPolicyInput
    CreateTransitGatewayMeteringPolicyOutput: CreateTransitGatewayMeteringPolicyOutput
    CreateTransitGatewayMeteringPolicyEntryInput: CreateTransitGatewayMeteringPolicyEntryInput
    CreateTransitGatewayMeteringPolicyEntryOutput: CreateTransitGatewayMeteringPolicyEntryOutput
    CreateTransitGatewayMulticastDomainInput: CreateTransitGatewayMulticastDomainInput
    CreateTransitGatewayMulticastDomainOutput: CreateTransitGatewayMulticastDomainOutput
    CreateTransitGatewayPeeringAttachmentInput: CreateTransitGatewayPeeringAttachmentInput
    CreateTransitGatewayPeeringAttachmentOutput: CreateTransitGatewayPeeringAttachmentOutput
    CreateTransitGatewayPolicyTableInput: CreateTransitGatewayPolicyTableInput
    CreateTransitGatewayPolicyTableOutput: CreateTransitGatewayPolicyTableOutput
    CreateTransitGatewayPrefixListReferenceInput: CreateTransitGatewayPrefixListReferenceInput
    CreateTransitGatewayPrefixListReferenceOutput: CreateTransitGatewayPrefixListReferenceOutput
    CreateTransitGatewayRouteInput: CreateTransitGatewayRouteInput
    CreateTransitGatewayRouteOutput: CreateTransitGatewayRouteOutput
    CreateTransitGatewayRouteTableInput: CreateTransitGatewayRouteTableInput
    CreateTransitGatewayRouteTableOutput: CreateTransitGatewayRouteTableOutput
    CreateTransitGatewayRouteTableAnnouncementInput: CreateTransitGatewayRouteTableAnnouncementInput
    CreateTransitGatewayRouteTableAnnouncementOutput: CreateTransitGatewayRouteTableAnnouncementOutput
    CreateTransitGatewayVpcAttachmentInput: CreateTransitGatewayVpcAttachmentInput
    CreateTransitGatewayVpcAttachmentOutput: CreateTransitGatewayVpcAttachmentOutput
    CreateVerifiedAccessEndpointInput: CreateVerifiedAccessEndpointInput
    CreateVerifiedAccessEndpointOutput: CreateVerifiedAccessEndpointOutput
    CreateVerifiedAccessGroupInput: CreateVerifiedAccessGroupInput
    CreateVerifiedAccessGroupOutput: CreateVerifiedAccessGroupOutput
    CreateVerifiedAccessInstanceInput: CreateVerifiedAccessInstanceInput
    CreateVerifiedAccessInstanceOutput: CreateVerifiedAccessInstanceOutput
    CreateVerifiedAccessTrustProviderInput: CreateVerifiedAccessTrustProviderInput
    CreateVerifiedAccessTrustProviderOutput: CreateVerifiedAccessTrustProviderOutput
    CreateVolumeInput: CreateVolumeInput
    CreateVolumeOutput: CreateVolumeOutput
    CreateVpcInput: CreateVpcInput
    CreateVpcOutput: CreateVpcOutput
    CreateVpcBlockPublicAccessExclusionInput: CreateVpcBlockPublicAccessExclusionInput
    CreateVpcBlockPublicAccessExclusionOutput: CreateVpcBlockPublicAccessExclusionOutput
    CreateVpcEncryptionControlInput: CreateVpcEncryptionControlInput
    CreateVpcEncryptionControlOutput: CreateVpcEncryptionControlOutput
    CreateVpcEndpointInput: CreateVpcEndpointInput
    CreateVpcEndpointOutput: CreateVpcEndpointOutput
    CreateVpcEndpointConnectionNotificationInput: CreateVpcEndpointConnectionNotificationInput
    CreateVpcEndpointConnectionNotificationOutput: CreateVpcEndpointConnectionNotificationOutput
    CreateVpcEndpointServiceConfigurationInput: CreateVpcEndpointServiceConfigurationInput
    CreateVpcEndpointServiceConfigurationOutput: CreateVpcEndpointServiceConfigurationOutput
    CreateVpcPeeringConnectionInput: CreateVpcPeeringConnectionInput
    CreateVpcPeeringConnectionOutput: CreateVpcPeeringConnectionOutput
    CreateVpnConcentratorInput: CreateVpnConcentratorInput
    CreateVpnConcentratorOutput: CreateVpnConcentratorOutput
    CreateVpnConnectionInput: CreateVpnConnectionInput
    CreateVpnConnectionOutput: CreateVpnConnectionOutput
    CreateVpnConnectionRouteInput: CreateVpnConnectionRouteInput
    CreateVpnConnectionRouteOutput: CreateVpnConnectionRouteOutput
    CreateVpnGatewayInput: CreateVpnGatewayInput
    CreateVpnGatewayOutput: CreateVpnGatewayOutput
    DeleteCapacityManagerDataExportInput: DeleteCapacityManagerDataExportInput
    DeleteCapacityManagerDataExportOutput: DeleteCapacityManagerDataExportOutput
    DeleteCarrierGatewayInput: DeleteCarrierGatewayInput
    DeleteCarrierGatewayOutput: DeleteCarrierGatewayOutput
    DeleteClientVpnEndpointInput: DeleteClientVpnEndpointInput
    DeleteClientVpnEndpointOutput: DeleteClientVpnEndpointOutput
    DeleteClientVpnRouteInput: DeleteClientVpnRouteInput
    DeleteClientVpnRouteOutput: DeleteClientVpnRouteOutput
    DeleteCoipCidrInput: DeleteCoipCidrInput
    DeleteCoipCidrOutput: DeleteCoipCidrOutput
    DeleteCoipPoolInput: DeleteCoipPoolInput
    DeleteCoipPoolOutput: DeleteCoipPoolOutput
    DeleteCustomerGatewayInput: DeleteCustomerGatewayInput
    DeleteCustomerGatewayOutput: DeleteCustomerGatewayOutput
    DeleteDhcpOptionsInput: DeleteDhcpOptionsInput
    DeleteDhcpOptionsOutput: DeleteDhcpOptionsOutput
    DeleteEgressOnlyInternetGatewayInput: DeleteEgressOnlyInternetGatewayInput
    DeleteEgressOnlyInternetGatewayOutput: DeleteEgressOnlyInternetGatewayOutput
    DeleteFleetsInput: DeleteFleetsInput
    DeleteFleetsOutput: DeleteFleetsOutput
    DeleteFlowLogsInput: DeleteFlowLogsInput
    DeleteFlowLogsOutput: DeleteFlowLogsOutput
    DeleteFpgaImageInput: DeleteFpgaImageInput
    DeleteFpgaImageOutput: DeleteFpgaImageOutput
    DeleteImageUsageReportInput: DeleteImageUsageReportInput
    DeleteImageUsageReportOutput: DeleteImageUsageReportOutput
    DeleteInstanceConnectEndpointInput: DeleteInstanceConnectEndpointInput
    DeleteInstanceConnectEndpointOutput: DeleteInstanceConnectEndpointOutput
    DeleteInstanceEventWindowInput: DeleteInstanceEventWindowInput
    DeleteInstanceEventWindowOutput: DeleteInstanceEventWindowOutput
    DeleteInternetGatewayInput: DeleteInternetGatewayInput
    DeleteInternetGatewayOutput: DeleteInternetGatewayOutput
    DeleteIpamInput: DeleteIpamInput
    DeleteIpamOutput: DeleteIpamOutput
    DeleteIpamExternalResourceVerificationTokenInput: DeleteIpamExternalResourceVerificationTokenInput
    DeleteIpamExternalResourceVerificationTokenOutput: DeleteIpamExternalResourceVerificationTokenOutput
    DeleteIpamPolicyInput: DeleteIpamPolicyInput
    DeleteIpamPolicyOutput: DeleteIpamPolicyOutput
    DeleteIpamPoolInput: DeleteIpamPoolInput
    DeleteIpamPoolOutput: DeleteIpamPoolOutput
    DeleteIpamPrefixListResolverInput: DeleteIpamPrefixListResolverInput
    DeleteIpamPrefixListResolverOutput: DeleteIpamPrefixListResolverOutput
    DeleteIpamPrefixListResolverTargetInput: DeleteIpamPrefixListResolverTargetInput
    DeleteIpamPrefixListResolverTargetOutput: DeleteIpamPrefixListResolverTargetOutput
    DeleteIpamResourceDiscoveryInput: DeleteIpamResourceDiscoveryInput
    DeleteIpamResourceDiscoveryOutput: DeleteIpamResourceDiscoveryOutput
    DeleteIpamScopeInput: DeleteIpamScopeInput
    DeleteIpamScopeOutput: DeleteIpamScopeOutput
    DeleteKeyPairInput: DeleteKeyPairInput
    DeleteKeyPairOutput: DeleteKeyPairOutput
    DeleteLaunchTemplateInput: DeleteLaunchTemplateInput
    DeleteLaunchTemplateOutput: DeleteLaunchTemplateOutput
    DeleteLaunchTemplateVersionsInput: DeleteLaunchTemplateVersionsInput
    DeleteLaunchTemplateVersionsOutput: DeleteLaunchTemplateVersionsOutput
    DeleteLocalGatewayRouteInput: DeleteLocalGatewayRouteInput
    DeleteLocalGatewayRouteOutput: DeleteLocalGatewayRouteOutput
    DeleteLocalGatewayRouteTableInput: DeleteLocalGatewayRouteTableInput
    DeleteLocalGatewayRouteTableOutput: DeleteLocalGatewayRouteTableOutput
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput: DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput: DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput
    DeleteLocalGatewayRouteTableVpcAssociationInput: DeleteLocalGatewayRouteTableVpcAssociationInput
    DeleteLocalGatewayRouteTableVpcAssociationOutput: DeleteLocalGatewayRouteTableVpcAssociationOutput
    DeleteLocalGatewayVirtualInterfaceInput: DeleteLocalGatewayVirtualInterfaceInput
    DeleteLocalGatewayVirtualInterfaceOutput: DeleteLocalGatewayVirtualInterfaceOutput
    DeleteLocalGatewayVirtualInterfaceGroupInput: DeleteLocalGatewayVirtualInterfaceGroupInput
    DeleteLocalGatewayVirtualInterfaceGroupOutput: DeleteLocalGatewayVirtualInterfaceGroupOutput
    DeleteManagedPrefixListInput: DeleteManagedPrefixListInput
    DeleteManagedPrefixListOutput: DeleteManagedPrefixListOutput
    DeleteNatGatewayInput: DeleteNatGatewayInput
    DeleteNatGatewayOutput: DeleteNatGatewayOutput
    DeleteNetworkAclInput: DeleteNetworkAclInput
    DeleteNetworkAclOutput: DeleteNetworkAclOutput
    DeleteNetworkAclEntryInput: DeleteNetworkAclEntryInput
    DeleteNetworkAclEntryOutput: DeleteNetworkAclEntryOutput
    DeleteNetworkInsightsAccessScopeInput: DeleteNetworkInsightsAccessScopeInput
    DeleteNetworkInsightsAccessScopeOutput: DeleteNetworkInsightsAccessScopeOutput
    DeleteNetworkInsightsAccessScopeAnalysisInput: DeleteNetworkInsightsAccessScopeAnalysisInput
    DeleteNetworkInsightsAccessScopeAnalysisOutput: DeleteNetworkInsightsAccessScopeAnalysisOutput
    DeleteNetworkInsightsAnalysisInput: DeleteNetworkInsightsAnalysisInput
    DeleteNetworkInsightsAnalysisOutput: DeleteNetworkInsightsAnalysisOutput
    DeleteNetworkInsightsPathInput: DeleteNetworkInsightsPathInput
    DeleteNetworkInsightsPathOutput: DeleteNetworkInsightsPathOutput
    DeleteNetworkInterfaceInput: DeleteNetworkInterfaceInput
    DeleteNetworkInterfaceOutput: DeleteNetworkInterfaceOutput
    DeleteNetworkInterfacePermissionInput: DeleteNetworkInterfacePermissionInput
    DeleteNetworkInterfacePermissionOutput: DeleteNetworkInterfacePermissionOutput
    DeletePlacementGroupInput: DeletePlacementGroupInput
    DeletePlacementGroupOutput: DeletePlacementGroupOutput
    DeletePublicIpv4PoolInput: DeletePublicIpv4PoolInput
    DeletePublicIpv4PoolOutput: DeletePublicIpv4PoolOutput
    DeleteQueuedReservedInstancesInput: DeleteQueuedReservedInstancesInput
    DeleteQueuedReservedInstancesOutput: DeleteQueuedReservedInstancesOutput
    DeleteRouteInput: DeleteRouteInput
    DeleteRouteOutput: DeleteRouteOutput
    DeleteRouteServerInput: DeleteRouteServerInput
    DeleteRouteServerOutput: DeleteRouteServerOutput
    DeleteRouteServerEndpointInput: DeleteRouteServerEndpointInput
    DeleteRouteServerEndpointOutput: DeleteRouteServerEndpointOutput
    DeleteRouteServerPeerInput: DeleteRouteServerPeerInput
    DeleteRouteServerPeerOutput: DeleteRouteServerPeerOutput
    DeleteRouteTableInput: DeleteRouteTableInput
    DeleteRouteTableOutput: DeleteRouteTableOutput
    DeleteSecondaryNetworkInput: DeleteSecondaryNetworkInput
    DeleteSecondaryNetworkOutput: DeleteSecondaryNetworkOutput
    DeleteSecondarySubnetInput: DeleteSecondarySubnetInput
    DeleteSecondarySubnetOutput: DeleteSecondarySubnetOutput
    DeleteSecurityGroupInput: DeleteSecurityGroupInput
    DeleteSecurityGroupOutput: DeleteSecurityGroupOutput
    DeleteSnapshotInput: DeleteSnapshotInput
    DeleteSnapshotOutput: DeleteSnapshotOutput
    DeleteSpotDatafeedSubscriptionInput: DeleteSpotDatafeedSubscriptionInput
    DeleteSpotDatafeedSubscriptionOutput: DeleteSpotDatafeedSubscriptionOutput
    DeleteSubnetInput: DeleteSubnetInput
    DeleteSubnetOutput: DeleteSubnetOutput
    DeleteSubnetCidrReservationInput: DeleteSubnetCidrReservationInput
    DeleteSubnetCidrReservationOutput: DeleteSubnetCidrReservationOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DeleteTrafficMirrorFilterInput: DeleteTrafficMirrorFilterInput
    DeleteTrafficMirrorFilterOutput: DeleteTrafficMirrorFilterOutput
    DeleteTrafficMirrorFilterRuleInput: DeleteTrafficMirrorFilterRuleInput
    DeleteTrafficMirrorFilterRuleOutput: DeleteTrafficMirrorFilterRuleOutput
    DeleteTrafficMirrorSessionInput: DeleteTrafficMirrorSessionInput
    DeleteTrafficMirrorSessionOutput: DeleteTrafficMirrorSessionOutput
    DeleteTrafficMirrorTargetInput: DeleteTrafficMirrorTargetInput
    DeleteTrafficMirrorTargetOutput: DeleteTrafficMirrorTargetOutput
    DeleteTransitGatewayInput: DeleteTransitGatewayInput
    DeleteTransitGatewayOutput: DeleteTransitGatewayOutput
    DeleteTransitGatewayClientVpnAttachmentInput: DeleteTransitGatewayClientVpnAttachmentInput
    DeleteTransitGatewayClientVpnAttachmentOutput: DeleteTransitGatewayClientVpnAttachmentOutput
    DeleteTransitGatewayConnectInput: DeleteTransitGatewayConnectInput
    DeleteTransitGatewayConnectOutput: DeleteTransitGatewayConnectOutput
    DeleteTransitGatewayConnectPeerInput: DeleteTransitGatewayConnectPeerInput
    DeleteTransitGatewayConnectPeerOutput: DeleteTransitGatewayConnectPeerOutput
    DeleteTransitGatewayMeteringPolicyInput: DeleteTransitGatewayMeteringPolicyInput
    DeleteTransitGatewayMeteringPolicyOutput: DeleteTransitGatewayMeteringPolicyOutput
    DeleteTransitGatewayMeteringPolicyEntryInput: DeleteTransitGatewayMeteringPolicyEntryInput
    DeleteTransitGatewayMeteringPolicyEntryOutput: DeleteTransitGatewayMeteringPolicyEntryOutput
    DeleteTransitGatewayMulticastDomainInput: DeleteTransitGatewayMulticastDomainInput
    DeleteTransitGatewayMulticastDomainOutput: DeleteTransitGatewayMulticastDomainOutput
    DeleteTransitGatewayPeeringAttachmentInput: DeleteTransitGatewayPeeringAttachmentInput
    DeleteTransitGatewayPeeringAttachmentOutput: DeleteTransitGatewayPeeringAttachmentOutput
    DeleteTransitGatewayPolicyTableInput: DeleteTransitGatewayPolicyTableInput
    DeleteTransitGatewayPolicyTableOutput: DeleteTransitGatewayPolicyTableOutput
    DeleteTransitGatewayPrefixListReferenceInput: DeleteTransitGatewayPrefixListReferenceInput
    DeleteTransitGatewayPrefixListReferenceOutput: DeleteTransitGatewayPrefixListReferenceOutput
    DeleteTransitGatewayRouteInput: DeleteTransitGatewayRouteInput
    DeleteTransitGatewayRouteOutput: DeleteTransitGatewayRouteOutput
    DeleteTransitGatewayRouteTableInput: DeleteTransitGatewayRouteTableInput
    DeleteTransitGatewayRouteTableOutput: DeleteTransitGatewayRouteTableOutput
    DeleteTransitGatewayRouteTableAnnouncementInput: DeleteTransitGatewayRouteTableAnnouncementInput
    DeleteTransitGatewayRouteTableAnnouncementOutput: DeleteTransitGatewayRouteTableAnnouncementOutput
    DeleteTransitGatewayVpcAttachmentInput: DeleteTransitGatewayVpcAttachmentInput
    DeleteTransitGatewayVpcAttachmentOutput: DeleteTransitGatewayVpcAttachmentOutput
    DeleteVerifiedAccessEndpointInput: DeleteVerifiedAccessEndpointInput
    DeleteVerifiedAccessEndpointOutput: DeleteVerifiedAccessEndpointOutput
    DeleteVerifiedAccessGroupInput: DeleteVerifiedAccessGroupInput
    DeleteVerifiedAccessGroupOutput: DeleteVerifiedAccessGroupOutput
    DeleteVerifiedAccessInstanceInput: DeleteVerifiedAccessInstanceInput
    DeleteVerifiedAccessInstanceOutput: DeleteVerifiedAccessInstanceOutput
    DeleteVerifiedAccessTrustProviderInput: DeleteVerifiedAccessTrustProviderInput
    DeleteVerifiedAccessTrustProviderOutput: DeleteVerifiedAccessTrustProviderOutput
    DeleteVolumeInput: DeleteVolumeInput
    DeleteVolumeOutput: DeleteVolumeOutput
    DeleteVpcInput: DeleteVpcInput
    DeleteVpcOutput: DeleteVpcOutput
    DeleteVpcBlockPublicAccessExclusionInput: DeleteVpcBlockPublicAccessExclusionInput
    DeleteVpcBlockPublicAccessExclusionOutput: DeleteVpcBlockPublicAccessExclusionOutput
    DeleteVpcEncryptionControlInput: DeleteVpcEncryptionControlInput
    DeleteVpcEncryptionControlOutput: DeleteVpcEncryptionControlOutput
    DeleteVpcEndpointConnectionNotificationsInput: DeleteVpcEndpointConnectionNotificationsInput
    DeleteVpcEndpointConnectionNotificationsOutput: DeleteVpcEndpointConnectionNotificationsOutput
    DeleteVpcEndpointsInput: DeleteVpcEndpointsInput
    DeleteVpcEndpointsOutput: DeleteVpcEndpointsOutput
    DeleteVpcEndpointServiceConfigurationsInput: DeleteVpcEndpointServiceConfigurationsInput
    DeleteVpcEndpointServiceConfigurationsOutput: DeleteVpcEndpointServiceConfigurationsOutput
    DeleteVpcPeeringConnectionInput: DeleteVpcPeeringConnectionInput
    DeleteVpcPeeringConnectionOutput: DeleteVpcPeeringConnectionOutput
    DeleteVpnConcentratorInput: DeleteVpnConcentratorInput
    DeleteVpnConcentratorOutput: DeleteVpnConcentratorOutput
    DeleteVpnConnectionInput: DeleteVpnConnectionInput
    DeleteVpnConnectionOutput: DeleteVpnConnectionOutput
    DeleteVpnConnectionRouteInput: DeleteVpnConnectionRouteInput
    DeleteVpnConnectionRouteOutput: DeleteVpnConnectionRouteOutput
    DeleteVpnGatewayInput: DeleteVpnGatewayInput
    DeleteVpnGatewayOutput: DeleteVpnGatewayOutput
    DeprovisionByoipCidrInput: DeprovisionByoipCidrInput
    DeprovisionByoipCidrOutput: DeprovisionByoipCidrOutput
    DeprovisionIpamByoasnInput: DeprovisionIpamByoasnInput
    DeprovisionIpamByoasnOutput: DeprovisionIpamByoasnOutput
    DeprovisionIpamPoolCidrInput: DeprovisionIpamPoolCidrInput
    DeprovisionIpamPoolCidrOutput: DeprovisionIpamPoolCidrOutput
    DeprovisionPublicIpv4PoolCidrInput: DeprovisionPublicIpv4PoolCidrInput
    DeprovisionPublicIpv4PoolCidrOutput: DeprovisionPublicIpv4PoolCidrOutput
    DeregisterImageInput: DeregisterImageInput
    DeregisterImageOutput: DeregisterImageOutput
    DeregisterInstanceEventNotificationAttributesInput: DeregisterInstanceEventNotificationAttributesInput
    DeregisterInstanceEventNotificationAttributesOutput: DeregisterInstanceEventNotificationAttributesOutput
    DeregisterTransitGatewayMulticastGroupMembersInput: DeregisterTransitGatewayMulticastGroupMembersInput
    DeregisterTransitGatewayMulticastGroupMembersOutput: DeregisterTransitGatewayMulticastGroupMembersOutput
    DeregisterTransitGatewayMulticastGroupSourcesInput: DeregisterTransitGatewayMulticastGroupSourcesInput
    DeregisterTransitGatewayMulticastGroupSourcesOutput: DeregisterTransitGatewayMulticastGroupSourcesOutput
    DescribeAccountAttributesInput: DescribeAccountAttributesInput
    DescribeAccountAttributesOutput: DescribeAccountAttributesOutput
    DescribeAddressesInput: DescribeAddressesInput
    DescribeAddressesOutput: DescribeAddressesOutput
    DescribeAddressesAttributeInput: DescribeAddressesAttributeInput
    DescribeAddressesAttributeOutput: DescribeAddressesAttributeOutput
    DescribeAddressTransfersInput: DescribeAddressTransfersInput
    DescribeAddressTransfersOutput: DescribeAddressTransfersOutput
    DescribeAggregateIdFormatInput: DescribeAggregateIdFormatInput
    DescribeAggregateIdFormatOutput: DescribeAggregateIdFormatOutput
    DescribeAvailabilityZonesInput: DescribeAvailabilityZonesInput
    DescribeAvailabilityZonesOutput: DescribeAvailabilityZonesOutput
    DescribeAwsNetworkPerformanceMetricSubscriptionsInput: DescribeAwsNetworkPerformanceMetricSubscriptionsInput
    DescribeAwsNetworkPerformanceMetricSubscriptionsOutput: DescribeAwsNetworkPerformanceMetricSubscriptionsOutput
    DescribeBundleTasksInput: DescribeBundleTasksInput
    DescribeBundleTasksOutput: DescribeBundleTasksOutput
    DescribeByoipCidrsInput: DescribeByoipCidrsInput
    DescribeByoipCidrsOutput: DescribeByoipCidrsOutput
    DescribeCapacityBlockExtensionHistoryInput: DescribeCapacityBlockExtensionHistoryInput
    DescribeCapacityBlockExtensionHistoryOutput: DescribeCapacityBlockExtensionHistoryOutput
    DescribeCapacityBlockExtensionOfferingsInput: DescribeCapacityBlockExtensionOfferingsInput
    DescribeCapacityBlockExtensionOfferingsOutput: DescribeCapacityBlockExtensionOfferingsOutput
    DescribeCapacityBlockOfferingsInput: DescribeCapacityBlockOfferingsInput
    DescribeCapacityBlockOfferingsOutput: DescribeCapacityBlockOfferingsOutput
    DescribeCapacityBlocksInput: DescribeCapacityBlocksInput
    DescribeCapacityBlocksOutput: DescribeCapacityBlocksOutput
    DescribeCapacityBlockStatusInput: DescribeCapacityBlockStatusInput
    DescribeCapacityBlockStatusOutput: DescribeCapacityBlockStatusOutput
    DescribeCapacityManagerDataExportsInput: DescribeCapacityManagerDataExportsInput
    DescribeCapacityManagerDataExportsOutput: DescribeCapacityManagerDataExportsOutput
    DescribeCapacityReservationBillingRequestsInput: DescribeCapacityReservationBillingRequestsInput
    DescribeCapacityReservationBillingRequestsOutput: DescribeCapacityReservationBillingRequestsOutput
    DescribeCapacityReservationFleetsInput: DescribeCapacityReservationFleetsInput
    DescribeCapacityReservationFleetsOutput: DescribeCapacityReservationFleetsOutput
    DescribeCapacityReservationsInput: DescribeCapacityReservationsInput
    DescribeCapacityReservationsOutput: DescribeCapacityReservationsOutput
    DescribeCapacityReservationTopologyInput: DescribeCapacityReservationTopologyInput
    DescribeCapacityReservationTopologyOutput: DescribeCapacityReservationTopologyOutput
    DescribeCarrierGatewaysInput: DescribeCarrierGatewaysInput
    DescribeCarrierGatewaysOutput: DescribeCarrierGatewaysOutput
    DescribeClassicLinkInstancesInput: DescribeClassicLinkInstancesInput
    DescribeClassicLinkInstancesOutput: DescribeClassicLinkInstancesOutput
    DescribeClientVpnAuthorizationRulesInput: DescribeClientVpnAuthorizationRulesInput
    DescribeClientVpnAuthorizationRulesOutput: DescribeClientVpnAuthorizationRulesOutput
    DescribeClientVpnConnectionsInput: DescribeClientVpnConnectionsInput
    DescribeClientVpnConnectionsOutput: DescribeClientVpnConnectionsOutput
    DescribeClientVpnEndpointsInput: DescribeClientVpnEndpointsInput
    DescribeClientVpnEndpointsOutput: DescribeClientVpnEndpointsOutput
    DescribeClientVpnRoutesInput: DescribeClientVpnRoutesInput
    DescribeClientVpnRoutesOutput: DescribeClientVpnRoutesOutput
    DescribeClientVpnTargetNetworksInput: DescribeClientVpnTargetNetworksInput
    DescribeClientVpnTargetNetworksOutput: DescribeClientVpnTargetNetworksOutput
    DescribeCoipPoolsInput: DescribeCoipPoolsInput
    DescribeCoipPoolsOutput: DescribeCoipPoolsOutput
    DescribeConversionTasksInput: DescribeConversionTasksInput
    DescribeConversionTasksOutput: DescribeConversionTasksOutput
    DescribeCustomerGatewaysInput: DescribeCustomerGatewaysInput
    DescribeCustomerGatewaysOutput: DescribeCustomerGatewaysOutput
    DescribeDeclarativePoliciesReportsInput: DescribeDeclarativePoliciesReportsInput
    DescribeDeclarativePoliciesReportsOutput: DescribeDeclarativePoliciesReportsOutput
    DescribeDhcpOptionsInput: DescribeDhcpOptionsInput
    DescribeDhcpOptionsOutput: DescribeDhcpOptionsOutput
    DescribeEgressOnlyInternetGatewaysInput: DescribeEgressOnlyInternetGatewaysInput
    DescribeEgressOnlyInternetGatewaysOutput: DescribeEgressOnlyInternetGatewaysOutput
    DescribeElasticGpusInput: DescribeElasticGpusInput
    DescribeElasticGpusOutput: DescribeElasticGpusOutput
    DescribeExportImageTasksInput: DescribeExportImageTasksInput
    DescribeExportImageTasksOutput: DescribeExportImageTasksOutput
    DescribeExportTasksInput: DescribeExportTasksInput
    DescribeExportTasksOutput: DescribeExportTasksOutput
    DescribeFastLaunchImagesInput: DescribeFastLaunchImagesInput
    DescribeFastLaunchImagesOutput: DescribeFastLaunchImagesOutput
    DescribeFastSnapshotRestoresInput: DescribeFastSnapshotRestoresInput
    DescribeFastSnapshotRestoresOutput: DescribeFastSnapshotRestoresOutput
    DescribeFleetHistoryInput: DescribeFleetHistoryInput
    DescribeFleetHistoryOutput: DescribeFleetHistoryOutput
    DescribeFleetInstancesInput: DescribeFleetInstancesInput
    DescribeFleetInstancesOutput: DescribeFleetInstancesOutput
    DescribeFleetsInput: DescribeFleetsInput
    DescribeFleetsOutput: DescribeFleetsOutput
    DescribeFlowLogsInput: DescribeFlowLogsInput
    DescribeFlowLogsOutput: DescribeFlowLogsOutput
    DescribeFpgaImageAttributeInput: DescribeFpgaImageAttributeInput
    DescribeFpgaImageAttributeOutput: DescribeFpgaImageAttributeOutput
    DescribeFpgaImagesInput: DescribeFpgaImagesInput
    DescribeFpgaImagesOutput: DescribeFpgaImagesOutput
    DescribeHostReservationOfferingsInput: DescribeHostReservationOfferingsInput
    DescribeHostReservationOfferingsOutput: DescribeHostReservationOfferingsOutput
    DescribeHostReservationsInput: DescribeHostReservationsInput
    DescribeHostReservationsOutput: DescribeHostReservationsOutput
    DescribeHostsInput: DescribeHostsInput
    DescribeHostsOutput: DescribeHostsOutput
    DescribeIamInstanceProfileAssociationsInput: DescribeIamInstanceProfileAssociationsInput
    DescribeIamInstanceProfileAssociationsOutput: DescribeIamInstanceProfileAssociationsOutput
    DescribeIdentityIdFormatInput: DescribeIdentityIdFormatInput
    DescribeIdentityIdFormatOutput: DescribeIdentityIdFormatOutput
    DescribeIdFormatInput: DescribeIdFormatInput
    DescribeIdFormatOutput: DescribeIdFormatOutput
    DescribeImageAttributeInput: DescribeImageAttributeInput
    DescribeImageAttributeOutput: DescribeImageAttributeOutput
    DescribeImageReferencesInput: DescribeImageReferencesInput
    DescribeImageReferencesOutput: DescribeImageReferencesOutput
    DescribeImagesInput: DescribeImagesInput
    DescribeImagesOutput: DescribeImagesOutput
    DescribeImageUsageReportEntriesInput: DescribeImageUsageReportEntriesInput
    DescribeImageUsageReportEntriesOutput: DescribeImageUsageReportEntriesOutput
    DescribeImageUsageReportsInput: DescribeImageUsageReportsInput
    DescribeImageUsageReportsOutput: DescribeImageUsageReportsOutput
    DescribeImportImageTasksInput: DescribeImportImageTasksInput
    DescribeImportImageTasksOutput: DescribeImportImageTasksOutput
    DescribeImportSnapshotTasksInput: DescribeImportSnapshotTasksInput
    DescribeImportSnapshotTasksOutput: DescribeImportSnapshotTasksOutput
    DescribeInstanceAttributeInput: DescribeInstanceAttributeInput
    DescribeInstanceAttributeOutput: DescribeInstanceAttributeOutput
    DescribeInstanceConnectEndpointsInput: DescribeInstanceConnectEndpointsInput
    DescribeInstanceConnectEndpointsOutput: DescribeInstanceConnectEndpointsOutput
    DescribeInstanceCreditSpecificationsInput: DescribeInstanceCreditSpecificationsInput
    DescribeInstanceCreditSpecificationsOutput: DescribeInstanceCreditSpecificationsOutput
    DescribeInstanceEventNotificationAttributesInput: DescribeInstanceEventNotificationAttributesInput
    DescribeInstanceEventNotificationAttributesOutput: DescribeInstanceEventNotificationAttributesOutput
    DescribeInstanceEventWindowsInput: DescribeInstanceEventWindowsInput
    DescribeInstanceEventWindowsOutput: DescribeInstanceEventWindowsOutput
    DescribeInstanceImageMetadataInput: DescribeInstanceImageMetadataInput
    DescribeInstanceImageMetadataOutput: DescribeInstanceImageMetadataOutput
    DescribeInstancesInput: DescribeInstancesInput
    DescribeInstancesOutput: DescribeInstancesOutput
    DescribeInstanceSqlHaHistoryStatesInput: DescribeInstanceSqlHaHistoryStatesInput
    DescribeInstanceSqlHaHistoryStatesOutput: DescribeInstanceSqlHaHistoryStatesOutput
    DescribeInstanceSqlHaStatesInput: DescribeInstanceSqlHaStatesInput
    DescribeInstanceSqlHaStatesOutput: DescribeInstanceSqlHaStatesOutput
    DescribeInstanceStatusInput: DescribeInstanceStatusInput
    DescribeInstanceStatusOutput: DescribeInstanceStatusOutput
    DescribeInstanceTopologyInput: DescribeInstanceTopologyInput
    DescribeInstanceTopologyOutput: DescribeInstanceTopologyOutput
    DescribeInstanceTypeOfferingsInput: DescribeInstanceTypeOfferingsInput
    DescribeInstanceTypeOfferingsOutput: DescribeInstanceTypeOfferingsOutput
    DescribeInstanceTypesInput: DescribeInstanceTypesInput
    DescribeInstanceTypesOutput: DescribeInstanceTypesOutput
    DescribeInternetGatewaysInput: DescribeInternetGatewaysInput
    DescribeInternetGatewaysOutput: DescribeInternetGatewaysOutput
    DescribeIpamByoasnInput: DescribeIpamByoasnInput
    DescribeIpamByoasnOutput: DescribeIpamByoasnOutput
    DescribeIpamExternalResourceVerificationTokensInput: DescribeIpamExternalResourceVerificationTokensInput
    DescribeIpamExternalResourceVerificationTokensOutput: DescribeIpamExternalResourceVerificationTokensOutput
    DescribeIpamPoliciesInput: DescribeIpamPoliciesInput
    DescribeIpamPoliciesOutput: DescribeIpamPoliciesOutput
    DescribeIpamPoolsInput: DescribeIpamPoolsInput
    DescribeIpamPoolsOutput: DescribeIpamPoolsOutput
    DescribeIpamPrefixListResolversInput: DescribeIpamPrefixListResolversInput
    DescribeIpamPrefixListResolversOutput: DescribeIpamPrefixListResolversOutput
    DescribeIpamPrefixListResolverTargetsInput: DescribeIpamPrefixListResolverTargetsInput
    DescribeIpamPrefixListResolverTargetsOutput: DescribeIpamPrefixListResolverTargetsOutput
    DescribeIpamResourceDiscoveriesInput: DescribeIpamResourceDiscoveriesInput
    DescribeIpamResourceDiscoveriesOutput: DescribeIpamResourceDiscoveriesOutput
    DescribeIpamResourceDiscoveryAssociationsInput: DescribeIpamResourceDiscoveryAssociationsInput
    DescribeIpamResourceDiscoveryAssociationsOutput: DescribeIpamResourceDiscoveryAssociationsOutput
    DescribeIpamsInput: DescribeIpamsInput
    DescribeIpamsOutput: DescribeIpamsOutput
    DescribeIpamScopesInput: DescribeIpamScopesInput
    DescribeIpamScopesOutput: DescribeIpamScopesOutput
    DescribeIpv6PoolsInput: DescribeIpv6PoolsInput
    DescribeIpv6PoolsOutput: DescribeIpv6PoolsOutput
    DescribeKeyPairsInput: DescribeKeyPairsInput
    DescribeKeyPairsOutput: DescribeKeyPairsOutput
    DescribeLaunchTemplatesInput: DescribeLaunchTemplatesInput
    DescribeLaunchTemplatesOutput: DescribeLaunchTemplatesOutput
    DescribeLaunchTemplateVersionsInput: DescribeLaunchTemplateVersionsInput
    DescribeLaunchTemplateVersionsOutput: DescribeLaunchTemplateVersionsOutput
    DescribeLocalGatewayRouteTablesInput: DescribeLocalGatewayRouteTablesInput
    DescribeLocalGatewayRouteTablesOutput: DescribeLocalGatewayRouteTablesOutput
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutput: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutput
    DescribeLocalGatewayRouteTableVpcAssociationsInput: DescribeLocalGatewayRouteTableVpcAssociationsInput
    DescribeLocalGatewayRouteTableVpcAssociationsOutput: DescribeLocalGatewayRouteTableVpcAssociationsOutput
    DescribeLocalGatewaysInput: DescribeLocalGatewaysInput
    DescribeLocalGatewaysOutput: DescribeLocalGatewaysOutput
    DescribeLocalGatewayVirtualInterfaceGroupsInput: DescribeLocalGatewayVirtualInterfaceGroupsInput
    DescribeLocalGatewayVirtualInterfaceGroupsOutput: DescribeLocalGatewayVirtualInterfaceGroupsOutput
    DescribeLocalGatewayVirtualInterfacesInput: DescribeLocalGatewayVirtualInterfacesInput
    DescribeLocalGatewayVirtualInterfacesOutput: DescribeLocalGatewayVirtualInterfacesOutput
    DescribeLockedSnapshotsInput: DescribeLockedSnapshotsInput
    DescribeLockedSnapshotsOutput: DescribeLockedSnapshotsOutput
    DescribeMacHostsInput: DescribeMacHostsInput
    DescribeMacHostsOutput: DescribeMacHostsOutput
    DescribeMacModificationTasksInput: DescribeMacModificationTasksInput
    DescribeMacModificationTasksOutput: DescribeMacModificationTasksOutput
    DescribeManagedPrefixListsInput: DescribeManagedPrefixListsInput
    DescribeManagedPrefixListsOutput: DescribeManagedPrefixListsOutput
    DescribeMovingAddressesInput: DescribeMovingAddressesInput
    DescribeMovingAddressesOutput: DescribeMovingAddressesOutput
    DescribeNatGatewaysInput: DescribeNatGatewaysInput
    DescribeNatGatewaysOutput: DescribeNatGatewaysOutput
    DescribeNetworkAclsInput: DescribeNetworkAclsInput
    DescribeNetworkAclsOutput: DescribeNetworkAclsOutput
    DescribeNetworkInsightsAccessScopeAnalysesInput: DescribeNetworkInsightsAccessScopeAnalysesInput
    DescribeNetworkInsightsAccessScopeAnalysesOutput: DescribeNetworkInsightsAccessScopeAnalysesOutput
    DescribeNetworkInsightsAccessScopesInput: DescribeNetworkInsightsAccessScopesInput
    DescribeNetworkInsightsAccessScopesOutput: DescribeNetworkInsightsAccessScopesOutput
    DescribeNetworkInsightsAnalysesInput: DescribeNetworkInsightsAnalysesInput
    DescribeNetworkInsightsAnalysesOutput: DescribeNetworkInsightsAnalysesOutput
    DescribeNetworkInsightsPathsInput: DescribeNetworkInsightsPathsInput
    DescribeNetworkInsightsPathsOutput: DescribeNetworkInsightsPathsOutput
    DescribeNetworkInterfaceAttributeInput: DescribeNetworkInterfaceAttributeInput
    DescribeNetworkInterfaceAttributeOutput: DescribeNetworkInterfaceAttributeOutput
    DescribeNetworkInterfacePermissionsInput: DescribeNetworkInterfacePermissionsInput
    DescribeNetworkInterfacePermissionsOutput: DescribeNetworkInterfacePermissionsOutput
    DescribeNetworkInterfacesInput: DescribeNetworkInterfacesInput
    DescribeNetworkInterfacesOutput: DescribeNetworkInterfacesOutput
    DescribeOutpostLagsInput: DescribeOutpostLagsInput
    DescribeOutpostLagsOutput: DescribeOutpostLagsOutput
    DescribePlacementGroupsInput: DescribePlacementGroupsInput
    DescribePlacementGroupsOutput: DescribePlacementGroupsOutput
    DescribePrefixListsInput: DescribePrefixListsInput
    DescribePrefixListsOutput: DescribePrefixListsOutput
    DescribePrincipalIdFormatInput: DescribePrincipalIdFormatInput
    DescribePrincipalIdFormatOutput: DescribePrincipalIdFormatOutput
    DescribePublicIpv4PoolsInput: DescribePublicIpv4PoolsInput
    DescribePublicIpv4PoolsOutput: DescribePublicIpv4PoolsOutput
    DescribeRegionsInput: DescribeRegionsInput
    DescribeRegionsOutput: DescribeRegionsOutput
    DescribeReplaceRootVolumeTasksInput: DescribeReplaceRootVolumeTasksInput
    DescribeReplaceRootVolumeTasksOutput: DescribeReplaceRootVolumeTasksOutput
    DescribeReservedInstancesInput: DescribeReservedInstancesInput
    DescribeReservedInstancesOutput: DescribeReservedInstancesOutput
    DescribeReservedInstancesListingsInput: DescribeReservedInstancesListingsInput
    DescribeReservedInstancesListingsOutput: DescribeReservedInstancesListingsOutput
    DescribeReservedInstancesModificationsInput: DescribeReservedInstancesModificationsInput
    DescribeReservedInstancesModificationsOutput: DescribeReservedInstancesModificationsOutput
    DescribeReservedInstancesOfferingsInput: DescribeReservedInstancesOfferingsInput
    DescribeReservedInstancesOfferingsOutput: DescribeReservedInstancesOfferingsOutput
    DescribeRouteServerEndpointsInput: DescribeRouteServerEndpointsInput
    DescribeRouteServerEndpointsOutput: DescribeRouteServerEndpointsOutput
    DescribeRouteServerPeersInput: DescribeRouteServerPeersInput
    DescribeRouteServerPeersOutput: DescribeRouteServerPeersOutput
    DescribeRouteServersInput: DescribeRouteServersInput
    DescribeRouteServersOutput: DescribeRouteServersOutput
    DescribeRouteTablesInput: DescribeRouteTablesInput
    DescribeRouteTablesOutput: DescribeRouteTablesOutput
    DescribeScheduledInstanceAvailabilityInput: DescribeScheduledInstanceAvailabilityInput
    DescribeScheduledInstanceAvailabilityOutput: DescribeScheduledInstanceAvailabilityOutput
    DescribeScheduledInstancesInput: DescribeScheduledInstancesInput
    DescribeScheduledInstancesOutput: DescribeScheduledInstancesOutput
    DescribeSecondaryInterfacesInput: DescribeSecondaryInterfacesInput
    DescribeSecondaryInterfacesOutput: DescribeSecondaryInterfacesOutput
    DescribeSecondaryNetworksInput: DescribeSecondaryNetworksInput
    DescribeSecondaryNetworksOutput: DescribeSecondaryNetworksOutput
    DescribeSecondarySubnetsInput: DescribeSecondarySubnetsInput
    DescribeSecondarySubnetsOutput: DescribeSecondarySubnetsOutput
    DescribeSecurityGroupReferencesInput: DescribeSecurityGroupReferencesInput
    DescribeSecurityGroupReferencesOutput: DescribeSecurityGroupReferencesOutput
    DescribeSecurityGroupRulesInput: DescribeSecurityGroupRulesInput
    DescribeSecurityGroupRulesOutput: DescribeSecurityGroupRulesOutput
    DescribeSecurityGroupsInput: DescribeSecurityGroupsInput
    DescribeSecurityGroupsOutput: DescribeSecurityGroupsOutput
    DescribeSecurityGroupVpcAssociationsInput: DescribeSecurityGroupVpcAssociationsInput
    DescribeSecurityGroupVpcAssociationsOutput: DescribeSecurityGroupVpcAssociationsOutput
    DescribeServiceLinkVirtualInterfacesInput: DescribeServiceLinkVirtualInterfacesInput
    DescribeServiceLinkVirtualInterfacesOutput: DescribeServiceLinkVirtualInterfacesOutput
    DescribeSnapshotAttributeInput: DescribeSnapshotAttributeInput
    DescribeSnapshotAttributeOutput: DescribeSnapshotAttributeOutput
    DescribeSnapshotsInput: DescribeSnapshotsInput
    DescribeSnapshotsOutput: DescribeSnapshotsOutput
    DescribeSnapshotTierStatusInput: DescribeSnapshotTierStatusInput
    DescribeSnapshotTierStatusOutput: DescribeSnapshotTierStatusOutput
    DescribeSpotDatafeedSubscriptionInput: DescribeSpotDatafeedSubscriptionInput
    DescribeSpotDatafeedSubscriptionOutput: DescribeSpotDatafeedSubscriptionOutput
    DescribeSpotFleetInstancesInput: DescribeSpotFleetInstancesInput
    DescribeSpotFleetInstancesOutput: DescribeSpotFleetInstancesOutput
    DescribeSpotFleetRequestHistoryInput: DescribeSpotFleetRequestHistoryInput
    DescribeSpotFleetRequestHistoryOutput: DescribeSpotFleetRequestHistoryOutput
    DescribeSpotFleetRequestsInput: DescribeSpotFleetRequestsInput
    DescribeSpotFleetRequestsOutput: DescribeSpotFleetRequestsOutput
    DescribeSpotInstanceRequestsInput: DescribeSpotInstanceRequestsInput
    DescribeSpotInstanceRequestsOutput: DescribeSpotInstanceRequestsOutput
    DescribeSpotPriceHistoryInput: DescribeSpotPriceHistoryInput
    DescribeSpotPriceHistoryOutput: DescribeSpotPriceHistoryOutput
    DescribeStaleSecurityGroupsInput: DescribeStaleSecurityGroupsInput
    DescribeStaleSecurityGroupsOutput: DescribeStaleSecurityGroupsOutput
    DescribeStoreImageTasksInput: DescribeStoreImageTasksInput
    DescribeStoreImageTasksOutput: DescribeStoreImageTasksOutput
    DescribeSubnetsInput: DescribeSubnetsInput
    DescribeSubnetsOutput: DescribeSubnetsOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DescribeTrafficMirrorFilterRulesInput: DescribeTrafficMirrorFilterRulesInput
    DescribeTrafficMirrorFilterRulesOutput: DescribeTrafficMirrorFilterRulesOutput
    DescribeTrafficMirrorFiltersInput: DescribeTrafficMirrorFiltersInput
    DescribeTrafficMirrorFiltersOutput: DescribeTrafficMirrorFiltersOutput
    DescribeTrafficMirrorSessionsInput: DescribeTrafficMirrorSessionsInput
    DescribeTrafficMirrorSessionsOutput: DescribeTrafficMirrorSessionsOutput
    DescribeTrafficMirrorTargetsInput: DescribeTrafficMirrorTargetsInput
    DescribeTrafficMirrorTargetsOutput: DescribeTrafficMirrorTargetsOutput
    DescribeTransitGatewayAttachmentsInput: DescribeTransitGatewayAttachmentsInput
    DescribeTransitGatewayAttachmentsOutput: DescribeTransitGatewayAttachmentsOutput
    DescribeTransitGatewayConnectPeersInput: DescribeTransitGatewayConnectPeersInput
    DescribeTransitGatewayConnectPeersOutput: DescribeTransitGatewayConnectPeersOutput
    DescribeTransitGatewayConnectsInput: DescribeTransitGatewayConnectsInput
    DescribeTransitGatewayConnectsOutput: DescribeTransitGatewayConnectsOutput
    DescribeTransitGatewayMeteringPoliciesInput: DescribeTransitGatewayMeteringPoliciesInput
    DescribeTransitGatewayMeteringPoliciesOutput: DescribeTransitGatewayMeteringPoliciesOutput
    DescribeTransitGatewayMulticastDomainsInput: DescribeTransitGatewayMulticastDomainsInput
    DescribeTransitGatewayMulticastDomainsOutput: DescribeTransitGatewayMulticastDomainsOutput
    DescribeTransitGatewayPeeringAttachmentsInput: DescribeTransitGatewayPeeringAttachmentsInput
    DescribeTransitGatewayPeeringAttachmentsOutput: DescribeTransitGatewayPeeringAttachmentsOutput
    DescribeTransitGatewayPolicyTablesInput: DescribeTransitGatewayPolicyTablesInput
    DescribeTransitGatewayPolicyTablesOutput: DescribeTransitGatewayPolicyTablesOutput
    DescribeTransitGatewayRouteTableAnnouncementsInput: DescribeTransitGatewayRouteTableAnnouncementsInput
    DescribeTransitGatewayRouteTableAnnouncementsOutput: DescribeTransitGatewayRouteTableAnnouncementsOutput
    DescribeTransitGatewayRouteTablesInput: DescribeTransitGatewayRouteTablesInput
    DescribeTransitGatewayRouteTablesOutput: DescribeTransitGatewayRouteTablesOutput
    DescribeTransitGatewaysInput: DescribeTransitGatewaysInput
    DescribeTransitGatewaysOutput: DescribeTransitGatewaysOutput
    DescribeTransitGatewayVpcAttachmentsInput: DescribeTransitGatewayVpcAttachmentsInput
    DescribeTransitGatewayVpcAttachmentsOutput: DescribeTransitGatewayVpcAttachmentsOutput
    DescribeTrunkInterfaceAssociationsInput: DescribeTrunkInterfaceAssociationsInput
    DescribeTrunkInterfaceAssociationsOutput: DescribeTrunkInterfaceAssociationsOutput
    DescribeVerifiedAccessEndpointsInput: DescribeVerifiedAccessEndpointsInput
    DescribeVerifiedAccessEndpointsOutput: DescribeVerifiedAccessEndpointsOutput
    DescribeVerifiedAccessGroupsInput: DescribeVerifiedAccessGroupsInput
    DescribeVerifiedAccessGroupsOutput: DescribeVerifiedAccessGroupsOutput
    DescribeVerifiedAccessInstanceLoggingConfigurationsInput: DescribeVerifiedAccessInstanceLoggingConfigurationsInput
    DescribeVerifiedAccessInstanceLoggingConfigurationsOutput: DescribeVerifiedAccessInstanceLoggingConfigurationsOutput
    DescribeVerifiedAccessInstancesInput: DescribeVerifiedAccessInstancesInput
    DescribeVerifiedAccessInstancesOutput: DescribeVerifiedAccessInstancesOutput
    DescribeVerifiedAccessTrustProvidersInput: DescribeVerifiedAccessTrustProvidersInput
    DescribeVerifiedAccessTrustProvidersOutput: DescribeVerifiedAccessTrustProvidersOutput
    DescribeVolumeAttributeInput: DescribeVolumeAttributeInput
    DescribeVolumeAttributeOutput: DescribeVolumeAttributeOutput
    DescribeVolumesInput: DescribeVolumesInput
    DescribeVolumesOutput: DescribeVolumesOutput
    DescribeVolumesModificationsInput: DescribeVolumesModificationsInput
    DescribeVolumesModificationsOutput: DescribeVolumesModificationsOutput
    DescribeVolumeStatusInput: DescribeVolumeStatusInput
    DescribeVolumeStatusOutput: DescribeVolumeStatusOutput
    DescribeVpcAttributeInput: DescribeVpcAttributeInput
    DescribeVpcAttributeOutput: DescribeVpcAttributeOutput
    DescribeVpcBlockPublicAccessExclusionsInput: DescribeVpcBlockPublicAccessExclusionsInput
    DescribeVpcBlockPublicAccessExclusionsOutput: DescribeVpcBlockPublicAccessExclusionsOutput
    DescribeVpcBlockPublicAccessOptionsInput: DescribeVpcBlockPublicAccessOptionsInput
    DescribeVpcBlockPublicAccessOptionsOutput: DescribeVpcBlockPublicAccessOptionsOutput
    DescribeVpcClassicLinkInput: DescribeVpcClassicLinkInput
    DescribeVpcClassicLinkOutput: DescribeVpcClassicLinkOutput
    DescribeVpcClassicLinkDnsSupportInput: DescribeVpcClassicLinkDnsSupportInput
    DescribeVpcClassicLinkDnsSupportOutput: DescribeVpcClassicLinkDnsSupportOutput
    DescribeVpcEncryptionControlsInput: DescribeVpcEncryptionControlsInput
    DescribeVpcEncryptionControlsOutput: DescribeVpcEncryptionControlsOutput
    DescribeVpcEndpointAssociationsInput: DescribeVpcEndpointAssociationsInput
    DescribeVpcEndpointAssociationsOutput: DescribeVpcEndpointAssociationsOutput
    DescribeVpcEndpointConnectionNotificationsInput: DescribeVpcEndpointConnectionNotificationsInput
    DescribeVpcEndpointConnectionNotificationsOutput: DescribeVpcEndpointConnectionNotificationsOutput
    DescribeVpcEndpointConnectionsInput: DescribeVpcEndpointConnectionsInput
    DescribeVpcEndpointConnectionsOutput: DescribeVpcEndpointConnectionsOutput
    DescribeVpcEndpointsInput: DescribeVpcEndpointsInput
    DescribeVpcEndpointsOutput: DescribeVpcEndpointsOutput
    DescribeVpcEndpointServiceConfigurationsInput: DescribeVpcEndpointServiceConfigurationsInput
    DescribeVpcEndpointServiceConfigurationsOutput: DescribeVpcEndpointServiceConfigurationsOutput
    DescribeVpcEndpointServicePermissionsInput: DescribeVpcEndpointServicePermissionsInput
    DescribeVpcEndpointServicePermissionsOutput: DescribeVpcEndpointServicePermissionsOutput
    DescribeVpcEndpointServicesInput: DescribeVpcEndpointServicesInput
    DescribeVpcEndpointServicesOutput: DescribeVpcEndpointServicesOutput
    DescribeVpcPeeringConnectionsInput: DescribeVpcPeeringConnectionsInput
    DescribeVpcPeeringConnectionsOutput: DescribeVpcPeeringConnectionsOutput
    DescribeVpcsInput: DescribeVpcsInput
    DescribeVpcsOutput: DescribeVpcsOutput
    DescribeVpnConcentratorsInput: DescribeVpnConcentratorsInput
    DescribeVpnConcentratorsOutput: DescribeVpnConcentratorsOutput
    DescribeVpnConnectionsInput: DescribeVpnConnectionsInput
    DescribeVpnConnectionsOutput: DescribeVpnConnectionsOutput
    DescribeVpnGatewaysInput: DescribeVpnGatewaysInput
    DescribeVpnGatewaysOutput: DescribeVpnGatewaysOutput
    DetachClassicLinkVpcInput: DetachClassicLinkVpcInput
    DetachClassicLinkVpcOutput: DetachClassicLinkVpcOutput
    DetachInternetGatewayInput: DetachInternetGatewayInput
    DetachInternetGatewayOutput: DetachInternetGatewayOutput
    DetachNetworkInterfaceInput: DetachNetworkInterfaceInput
    DetachNetworkInterfaceOutput: DetachNetworkInterfaceOutput
    DetachVerifiedAccessTrustProviderInput: DetachVerifiedAccessTrustProviderInput
    DetachVerifiedAccessTrustProviderOutput: DetachVerifiedAccessTrustProviderOutput
    DetachVolumeInput: DetachVolumeInput
    DetachVolumeOutput: DetachVolumeOutput
    DetachVpnGatewayInput: DetachVpnGatewayInput
    DetachVpnGatewayOutput: DetachVpnGatewayOutput
    DisableAddressTransferInput: DisableAddressTransferInput
    DisableAddressTransferOutput: DisableAddressTransferOutput
    DisableAllowedImagesSettingsInput: DisableAllowedImagesSettingsInput
    DisableAllowedImagesSettingsOutput: DisableAllowedImagesSettingsOutput
    DisableAwsNetworkPerformanceMetricSubscriptionInput: DisableAwsNetworkPerformanceMetricSubscriptionInput
    DisableAwsNetworkPerformanceMetricSubscriptionOutput: DisableAwsNetworkPerformanceMetricSubscriptionOutput
    DisableCapacityManagerInput: DisableCapacityManagerInput
    DisableCapacityManagerOutput: DisableCapacityManagerOutput
    DisableEbsEncryptionByDefaultInput: DisableEbsEncryptionByDefaultInput
    DisableEbsEncryptionByDefaultOutput: DisableEbsEncryptionByDefaultOutput
    DisableFastLaunchInput: DisableFastLaunchInput
    DisableFastLaunchOutput: DisableFastLaunchOutput
    DisableFastSnapshotRestoresInput: DisableFastSnapshotRestoresInput
    DisableFastSnapshotRestoresOutput: DisableFastSnapshotRestoresOutput
    DisableImageInput: DisableImageInput
    DisableImageOutput: DisableImageOutput
    DisableImageBlockPublicAccessInput: DisableImageBlockPublicAccessInput
    DisableImageBlockPublicAccessOutput: DisableImageBlockPublicAccessOutput
    DisableImageDeprecationInput: DisableImageDeprecationInput
    DisableImageDeprecationOutput: DisableImageDeprecationOutput
    DisableImageDeregistrationProtectionInput: DisableImageDeregistrationProtectionInput
    DisableImageDeregistrationProtectionOutput: DisableImageDeregistrationProtectionOutput
    DisableInstanceSqlHaStandbyDetectionsInput: DisableInstanceSqlHaStandbyDetectionsInput
    DisableInstanceSqlHaStandbyDetectionsOutput: DisableInstanceSqlHaStandbyDetectionsOutput
    DisableIpamOrganizationAdminAccountInput: DisableIpamOrganizationAdminAccountInput
    DisableIpamOrganizationAdminAccountOutput: DisableIpamOrganizationAdminAccountOutput
    DisableIpamPolicyInput: DisableIpamPolicyInput
    DisableIpamPolicyOutput: DisableIpamPolicyOutput
    DisableRouteServerPropagationInput: DisableRouteServerPropagationInput
    DisableRouteServerPropagationOutput: DisableRouteServerPropagationOutput
    DisableSerialConsoleAccessInput: DisableSerialConsoleAccessInput
    DisableSerialConsoleAccessOutput: DisableSerialConsoleAccessOutput
    DisableSnapshotBlockPublicAccessInput: DisableSnapshotBlockPublicAccessInput
    DisableSnapshotBlockPublicAccessOutput: DisableSnapshotBlockPublicAccessOutput
    DisableTransitGatewayRouteTablePropagationInput: DisableTransitGatewayRouteTablePropagationInput
    DisableTransitGatewayRouteTablePropagationOutput: DisableTransitGatewayRouteTablePropagationOutput
    DisableVgwRoutePropagationInput: DisableVgwRoutePropagationInput
    DisableVgwRoutePropagationOutput: DisableVgwRoutePropagationOutput
    DisableVpcClassicLinkInput: DisableVpcClassicLinkInput
    DisableVpcClassicLinkOutput: DisableVpcClassicLinkOutput
    DisableVpcClassicLinkDnsSupportInput: DisableVpcClassicLinkDnsSupportInput
    DisableVpcClassicLinkDnsSupportOutput: DisableVpcClassicLinkDnsSupportOutput
    DisassociateAddressInput: DisassociateAddressInput
    DisassociateAddressOutput: DisassociateAddressOutput
    DisassociateCapacityReservationBillingOwnerInput: DisassociateCapacityReservationBillingOwnerInput
    DisassociateCapacityReservationBillingOwnerOutput: DisassociateCapacityReservationBillingOwnerOutput
    DisassociateClientVpnTargetNetworkInput: DisassociateClientVpnTargetNetworkInput
    DisassociateClientVpnTargetNetworkOutput: DisassociateClientVpnTargetNetworkOutput
    DisassociateEnclaveCertificateIamRoleInput: DisassociateEnclaveCertificateIamRoleInput
    DisassociateEnclaveCertificateIamRoleOutput: DisassociateEnclaveCertificateIamRoleOutput
    DisassociateIamInstanceProfileInput: DisassociateIamInstanceProfileInput
    DisassociateIamInstanceProfileOutput: DisassociateIamInstanceProfileOutput
    DisassociateInstanceEventWindowInput: DisassociateInstanceEventWindowInput
    DisassociateInstanceEventWindowOutput: DisassociateInstanceEventWindowOutput
    DisassociateIpamByoasnInput: DisassociateIpamByoasnInput
    DisassociateIpamByoasnOutput: DisassociateIpamByoasnOutput
    DisassociateIpamResourceDiscoveryInput: DisassociateIpamResourceDiscoveryInput
    DisassociateIpamResourceDiscoveryOutput: DisassociateIpamResourceDiscoveryOutput
    DisassociateNatGatewayAddressInput: DisassociateNatGatewayAddressInput
    DisassociateNatGatewayAddressOutput: DisassociateNatGatewayAddressOutput
    DisassociateRouteServerInput: DisassociateRouteServerInput
    DisassociateRouteServerOutput: DisassociateRouteServerOutput
    DisassociateRouteTableInput: DisassociateRouteTableInput
    DisassociateRouteTableOutput: DisassociateRouteTableOutput
    DisassociateSecurityGroupVpcInput: DisassociateSecurityGroupVpcInput
    DisassociateSecurityGroupVpcOutput: DisassociateSecurityGroupVpcOutput
    DisassociateSubnetCidrBlockInput: DisassociateSubnetCidrBlockInput
    DisassociateSubnetCidrBlockOutput: DisassociateSubnetCidrBlockOutput
    DisassociateTransitGatewayMulticastDomainInput: DisassociateTransitGatewayMulticastDomainInput
    DisassociateTransitGatewayMulticastDomainOutput: DisassociateTransitGatewayMulticastDomainOutput
    DisassociateTransitGatewayPolicyTableInput: DisassociateTransitGatewayPolicyTableInput
    DisassociateTransitGatewayPolicyTableOutput: DisassociateTransitGatewayPolicyTableOutput
    DisassociateTransitGatewayRouteTableInput: DisassociateTransitGatewayRouteTableInput
    DisassociateTransitGatewayRouteTableOutput: DisassociateTransitGatewayRouteTableOutput
    DisassociateTrunkInterfaceInput: DisassociateTrunkInterfaceInput
    DisassociateTrunkInterfaceOutput: DisassociateTrunkInterfaceOutput
    DisassociateVpcCidrBlockInput: DisassociateVpcCidrBlockInput
    DisassociateVpcCidrBlockOutput: DisassociateVpcCidrBlockOutput
    EnableAddressTransferInput: EnableAddressTransferInput
    EnableAddressTransferOutput: EnableAddressTransferOutput
    EnableAllowedImagesSettingsInput: EnableAllowedImagesSettingsInput
    EnableAllowedImagesSettingsOutput: EnableAllowedImagesSettingsOutput
    EnableAwsNetworkPerformanceMetricSubscriptionInput: EnableAwsNetworkPerformanceMetricSubscriptionInput
    EnableAwsNetworkPerformanceMetricSubscriptionOutput: EnableAwsNetworkPerformanceMetricSubscriptionOutput
    EnableCapacityManagerInput: EnableCapacityManagerInput
    EnableCapacityManagerOutput: EnableCapacityManagerOutput
    EnableEbsEncryptionByDefaultInput: EnableEbsEncryptionByDefaultInput
    EnableEbsEncryptionByDefaultOutput: EnableEbsEncryptionByDefaultOutput
    EnableFastLaunchInput: EnableFastLaunchInput
    EnableFastLaunchOutput: EnableFastLaunchOutput
    EnableFastSnapshotRestoresInput: EnableFastSnapshotRestoresInput
    EnableFastSnapshotRestoresOutput: EnableFastSnapshotRestoresOutput
    EnableImageInput: EnableImageInput
    EnableImageOutput: EnableImageOutput
    EnableImageBlockPublicAccessInput: EnableImageBlockPublicAccessInput
    EnableImageBlockPublicAccessOutput: EnableImageBlockPublicAccessOutput
    EnableImageDeprecationInput: EnableImageDeprecationInput
    EnableImageDeprecationOutput: EnableImageDeprecationOutput
    EnableImageDeregistrationProtectionInput: EnableImageDeregistrationProtectionInput
    EnableImageDeregistrationProtectionOutput: EnableImageDeregistrationProtectionOutput
    EnableInstanceSqlHaStandbyDetectionsInput: EnableInstanceSqlHaStandbyDetectionsInput
    EnableInstanceSqlHaStandbyDetectionsOutput: EnableInstanceSqlHaStandbyDetectionsOutput
    EnableIpamOrganizationAdminAccountInput: EnableIpamOrganizationAdminAccountInput
    EnableIpamOrganizationAdminAccountOutput: EnableIpamOrganizationAdminAccountOutput
    EnableIpamPolicyInput: EnableIpamPolicyInput
    EnableIpamPolicyOutput: EnableIpamPolicyOutput
    EnableReachabilityAnalyzerOrganizationSharingInput: EnableReachabilityAnalyzerOrganizationSharingInput
    EnableReachabilityAnalyzerOrganizationSharingOutput: EnableReachabilityAnalyzerOrganizationSharingOutput
    EnableRouteServerPropagationInput: EnableRouteServerPropagationInput
    EnableRouteServerPropagationOutput: EnableRouteServerPropagationOutput
    EnableSerialConsoleAccessInput: EnableSerialConsoleAccessInput
    EnableSerialConsoleAccessOutput: EnableSerialConsoleAccessOutput
    EnableSnapshotBlockPublicAccessInput: EnableSnapshotBlockPublicAccessInput
    EnableSnapshotBlockPublicAccessOutput: EnableSnapshotBlockPublicAccessOutput
    EnableTransitGatewayRouteTablePropagationInput: EnableTransitGatewayRouteTablePropagationInput
    EnableTransitGatewayRouteTablePropagationOutput: EnableTransitGatewayRouteTablePropagationOutput
    EnableVgwRoutePropagationInput: EnableVgwRoutePropagationInput
    EnableVgwRoutePropagationOutput: EnableVgwRoutePropagationOutput
    EnableVolumeIOInput: EnableVolumeIOInput
    EnableVolumeIOOutput: EnableVolumeIOOutput
    EnableVpcClassicLinkInput: EnableVpcClassicLinkInput
    EnableVpcClassicLinkOutput: EnableVpcClassicLinkOutput
    EnableVpcClassicLinkDnsSupportInput: EnableVpcClassicLinkDnsSupportInput
    EnableVpcClassicLinkDnsSupportOutput: EnableVpcClassicLinkDnsSupportOutput
    ExportClientVpnClientCertificateRevocationListInput: ExportClientVpnClientCertificateRevocationListInput
    ExportClientVpnClientCertificateRevocationListOutput: ExportClientVpnClientCertificateRevocationListOutput
    ExportClientVpnClientConfigurationInput: ExportClientVpnClientConfigurationInput
    ExportClientVpnClientConfigurationOutput: ExportClientVpnClientConfigurationOutput
    ExportImageInput: ExportImageInput
    ExportImageOutput: ExportImageOutput
    ExportTransitGatewayRoutesInput: ExportTransitGatewayRoutesInput
    ExportTransitGatewayRoutesOutput: ExportTransitGatewayRoutesOutput
    ExportVerifiedAccessInstanceClientConfigurationInput: ExportVerifiedAccessInstanceClientConfigurationInput
    ExportVerifiedAccessInstanceClientConfigurationOutput: ExportVerifiedAccessInstanceClientConfigurationOutput
    GetActiveVpnTunnelStatusInput: GetActiveVpnTunnelStatusInput
    GetActiveVpnTunnelStatusOutput: GetActiveVpnTunnelStatusOutput
    GetAllowedImagesSettingsInput: GetAllowedImagesSettingsInput
    GetAllowedImagesSettingsOutput: GetAllowedImagesSettingsOutput
    GetAssociatedEnclaveCertificateIamRolesInput: GetAssociatedEnclaveCertificateIamRolesInput
    GetAssociatedEnclaveCertificateIamRolesOutput: GetAssociatedEnclaveCertificateIamRolesOutput
    GetAssociatedIpv6PoolCidrsInput: GetAssociatedIpv6PoolCidrsInput
    GetAssociatedIpv6PoolCidrsOutput: GetAssociatedIpv6PoolCidrsOutput
    GetAwsNetworkPerformanceDataInput: GetAwsNetworkPerformanceDataInput
    GetAwsNetworkPerformanceDataOutput: GetAwsNetworkPerformanceDataOutput
    GetCapacityManagerAttributesInput: GetCapacityManagerAttributesInput
    GetCapacityManagerAttributesOutput: GetCapacityManagerAttributesOutput
    GetCapacityManagerMetricDataInput: GetCapacityManagerMetricDataInput
    GetCapacityManagerMetricDataOutput: GetCapacityManagerMetricDataOutput
    GetCapacityManagerMetricDimensionsInput: GetCapacityManagerMetricDimensionsInput
    GetCapacityManagerMetricDimensionsOutput: GetCapacityManagerMetricDimensionsOutput
    GetCapacityManagerMonitoredTagKeysInput: GetCapacityManagerMonitoredTagKeysInput
    GetCapacityManagerMonitoredTagKeysOutput: GetCapacityManagerMonitoredTagKeysOutput
    GetCapacityReservationUsageInput: GetCapacityReservationUsageInput
    GetCapacityReservationUsageOutput: GetCapacityReservationUsageOutput
    GetCoipPoolUsageInput: GetCoipPoolUsageInput
    GetCoipPoolUsageOutput: GetCoipPoolUsageOutput
    GetConsoleOutputInput: GetConsoleOutputInput
    GetConsoleOutputOutput: GetConsoleOutputOutput
    GetConsoleScreenshotInput: GetConsoleScreenshotInput
    GetConsoleScreenshotOutput: GetConsoleScreenshotOutput
    GetDeclarativePoliciesReportSummaryInput: GetDeclarativePoliciesReportSummaryInput
    GetDeclarativePoliciesReportSummaryOutput: GetDeclarativePoliciesReportSummaryOutput
    GetDefaultCreditSpecificationInput: GetDefaultCreditSpecificationInput
    GetDefaultCreditSpecificationOutput: GetDefaultCreditSpecificationOutput
    GetEbsDefaultKmsKeyIdInput: GetEbsDefaultKmsKeyIdInput
    GetEbsDefaultKmsKeyIdOutput: GetEbsDefaultKmsKeyIdOutput
    GetEbsEncryptionByDefaultInput: GetEbsEncryptionByDefaultInput
    GetEbsEncryptionByDefaultOutput: GetEbsEncryptionByDefaultOutput
    GetEnabledIpamPolicyInput: GetEnabledIpamPolicyInput
    GetEnabledIpamPolicyOutput: GetEnabledIpamPolicyOutput
    GetFlowLogsIntegrationTemplateInput: GetFlowLogsIntegrationTemplateInput
    GetFlowLogsIntegrationTemplateOutput: GetFlowLogsIntegrationTemplateOutput
    GetGroupsForCapacityReservationInput: GetGroupsForCapacityReservationInput
    GetGroupsForCapacityReservationOutput: GetGroupsForCapacityReservationOutput
    GetHostReservationPurchasePreviewInput: GetHostReservationPurchasePreviewInput
    GetHostReservationPurchasePreviewOutput: GetHostReservationPurchasePreviewOutput
    GetImageAncestryInput: GetImageAncestryInput
    GetImageAncestryOutput: GetImageAncestryOutput
    GetImageBlockPublicAccessStateInput: GetImageBlockPublicAccessStateInput
    GetImageBlockPublicAccessStateOutput: GetImageBlockPublicAccessStateOutput
    GetInstanceMetadataDefaultsInput: GetInstanceMetadataDefaultsInput
    GetInstanceMetadataDefaultsOutput: GetInstanceMetadataDefaultsOutput
    GetInstanceTpmEkPubInput: GetInstanceTpmEkPubInput
    GetInstanceTpmEkPubOutput: GetInstanceTpmEkPubOutput
    GetInstanceTypesFromInstanceRequirementsInput: GetInstanceTypesFromInstanceRequirementsInput
    GetInstanceTypesFromInstanceRequirementsOutput: GetInstanceTypesFromInstanceRequirementsOutput
    GetInstanceUefiDataInput: GetInstanceUefiDataInput
    GetInstanceUefiDataOutput: GetInstanceUefiDataOutput
    GetIpamAddressHistoryInput: GetIpamAddressHistoryInput
    GetIpamAddressHistoryOutput: GetIpamAddressHistoryOutput
    GetIpamDiscoveredAccountsInput: GetIpamDiscoveredAccountsInput
    GetIpamDiscoveredAccountsOutput: GetIpamDiscoveredAccountsOutput
    GetIpamDiscoveredPublicAddressesInput: GetIpamDiscoveredPublicAddressesInput
    GetIpamDiscoveredPublicAddressesOutput: GetIpamDiscoveredPublicAddressesOutput
    GetIpamDiscoveredResourceCidrsInput: GetIpamDiscoveredResourceCidrsInput
    GetIpamDiscoveredResourceCidrsOutput: GetIpamDiscoveredResourceCidrsOutput
    GetIpamPolicyAllocationRulesInput: GetIpamPolicyAllocationRulesInput
    GetIpamPolicyAllocationRulesOutput: GetIpamPolicyAllocationRulesOutput
    GetIpamPolicyOrganizationTargetsInput: GetIpamPolicyOrganizationTargetsInput
    GetIpamPolicyOrganizationTargetsOutput: GetIpamPolicyOrganizationTargetsOutput
    GetIpamPoolAllocationsInput: GetIpamPoolAllocationsInput
    GetIpamPoolAllocationsOutput: GetIpamPoolAllocationsOutput
    GetIpamPoolCidrsInput: GetIpamPoolCidrsInput
    GetIpamPoolCidrsOutput: GetIpamPoolCidrsOutput
    GetIpamPrefixListResolverRulesInput: GetIpamPrefixListResolverRulesInput
    GetIpamPrefixListResolverRulesOutput: GetIpamPrefixListResolverRulesOutput
    GetIpamPrefixListResolverVersionEntriesInput: GetIpamPrefixListResolverVersionEntriesInput
    GetIpamPrefixListResolverVersionEntriesOutput: GetIpamPrefixListResolverVersionEntriesOutput
    GetIpamPrefixListResolverVersionsInput: GetIpamPrefixListResolverVersionsInput
    GetIpamPrefixListResolverVersionsOutput: GetIpamPrefixListResolverVersionsOutput
    GetIpamResourceCidrsInput: GetIpamResourceCidrsInput
    GetIpamResourceCidrsOutput: GetIpamResourceCidrsOutput
    GetLaunchTemplateDataInput: GetLaunchTemplateDataInput
    GetLaunchTemplateDataOutput: GetLaunchTemplateDataOutput
    GetManagedPrefixListAssociationsInput: GetManagedPrefixListAssociationsInput
    GetManagedPrefixListAssociationsOutput: GetManagedPrefixListAssociationsOutput
    GetManagedPrefixListEntriesInput: GetManagedPrefixListEntriesInput
    GetManagedPrefixListEntriesOutput: GetManagedPrefixListEntriesOutput
    GetManagedResourceVisibilityInput: GetManagedResourceVisibilityInput
    GetManagedResourceVisibilityOutput: GetManagedResourceVisibilityOutput
    GetNetworkInsightsAccessScopeAnalysisFindingsInput: GetNetworkInsightsAccessScopeAnalysisFindingsInput
    GetNetworkInsightsAccessScopeAnalysisFindingsOutput: GetNetworkInsightsAccessScopeAnalysisFindingsOutput
    GetNetworkInsightsAccessScopeContentInput: GetNetworkInsightsAccessScopeContentInput
    GetNetworkInsightsAccessScopeContentOutput: GetNetworkInsightsAccessScopeContentOutput
    GetPasswordDataInput: GetPasswordDataInput
    GetPasswordDataOutput: GetPasswordDataOutput
    GetReservedInstancesExchangeQuoteInput: GetReservedInstancesExchangeQuoteInput
    GetReservedInstancesExchangeQuoteOutput: GetReservedInstancesExchangeQuoteOutput
    GetRouteServerAssociationsInput: GetRouteServerAssociationsInput
    GetRouteServerAssociationsOutput: GetRouteServerAssociationsOutput
    GetRouteServerPropagationsInput: GetRouteServerPropagationsInput
    GetRouteServerPropagationsOutput: GetRouteServerPropagationsOutput
    GetRouteServerRoutingDatabaseInput: GetRouteServerRoutingDatabaseInput
    GetRouteServerRoutingDatabaseOutput: GetRouteServerRoutingDatabaseOutput
    GetSecurityGroupsForVpcInput: GetSecurityGroupsForVpcInput
    GetSecurityGroupsForVpcOutput: GetSecurityGroupsForVpcOutput
    GetSerialConsoleAccessStatusInput: GetSerialConsoleAccessStatusInput
    GetSerialConsoleAccessStatusOutput: GetSerialConsoleAccessStatusOutput
    GetSnapshotBlockPublicAccessStateInput: GetSnapshotBlockPublicAccessStateInput
    GetSnapshotBlockPublicAccessStateOutput: GetSnapshotBlockPublicAccessStateOutput
    GetSpotPlacementScoresInput: GetSpotPlacementScoresInput
    GetSpotPlacementScoresOutput: GetSpotPlacementScoresOutput
    GetSubnetCidrReservationsInput: GetSubnetCidrReservationsInput
    GetSubnetCidrReservationsOutput: GetSubnetCidrReservationsOutput
    GetTransitGatewayAttachmentPropagationsInput: GetTransitGatewayAttachmentPropagationsInput
    GetTransitGatewayAttachmentPropagationsOutput: GetTransitGatewayAttachmentPropagationsOutput
    GetTransitGatewayMeteringPolicyEntriesInput: GetTransitGatewayMeteringPolicyEntriesInput
    GetTransitGatewayMeteringPolicyEntriesOutput: GetTransitGatewayMeteringPolicyEntriesOutput
    GetTransitGatewayMulticastDomainAssociationsInput: GetTransitGatewayMulticastDomainAssociationsInput
    GetTransitGatewayMulticastDomainAssociationsOutput: GetTransitGatewayMulticastDomainAssociationsOutput
    GetTransitGatewayPolicyTableAssociationsInput: GetTransitGatewayPolicyTableAssociationsInput
    GetTransitGatewayPolicyTableAssociationsOutput: GetTransitGatewayPolicyTableAssociationsOutput
    GetTransitGatewayPolicyTableEntriesInput: GetTransitGatewayPolicyTableEntriesInput
    GetTransitGatewayPolicyTableEntriesOutput: GetTransitGatewayPolicyTableEntriesOutput
    GetTransitGatewayPrefixListReferencesInput: GetTransitGatewayPrefixListReferencesInput
    GetTransitGatewayPrefixListReferencesOutput: GetTransitGatewayPrefixListReferencesOutput
    GetTransitGatewayRouteTableAssociationsInput: GetTransitGatewayRouteTableAssociationsInput
    GetTransitGatewayRouteTableAssociationsOutput: GetTransitGatewayRouteTableAssociationsOutput
    GetTransitGatewayRouteTablePropagationsInput: GetTransitGatewayRouteTablePropagationsInput
    GetTransitGatewayRouteTablePropagationsOutput: GetTransitGatewayRouteTablePropagationsOutput
    GetVerifiedAccessEndpointPolicyInput: GetVerifiedAccessEndpointPolicyInput
    GetVerifiedAccessEndpointPolicyOutput: GetVerifiedAccessEndpointPolicyOutput
    GetVerifiedAccessEndpointTargetsInput: GetVerifiedAccessEndpointTargetsInput
    GetVerifiedAccessEndpointTargetsOutput: GetVerifiedAccessEndpointTargetsOutput
    GetVerifiedAccessGroupPolicyInput: GetVerifiedAccessGroupPolicyInput
    GetVerifiedAccessGroupPolicyOutput: GetVerifiedAccessGroupPolicyOutput
    GetVpcResourcesBlockingEncryptionEnforcementInput: GetVpcResourcesBlockingEncryptionEnforcementInput
    GetVpcResourcesBlockingEncryptionEnforcementOutput: GetVpcResourcesBlockingEncryptionEnforcementOutput
    GetVpnConnectionDeviceSampleConfigurationInput: GetVpnConnectionDeviceSampleConfigurationInput
    GetVpnConnectionDeviceSampleConfigurationOutput: GetVpnConnectionDeviceSampleConfigurationOutput
    GetVpnConnectionDeviceTypesInput: GetVpnConnectionDeviceTypesInput
    GetVpnConnectionDeviceTypesOutput: GetVpnConnectionDeviceTypesOutput
    GetVpnTunnelReplacementStatusInput: GetVpnTunnelReplacementStatusInput
    GetVpnTunnelReplacementStatusOutput: GetVpnTunnelReplacementStatusOutput
    ImportClientVpnClientCertificateRevocationListInput: ImportClientVpnClientCertificateRevocationListInput
    ImportClientVpnClientCertificateRevocationListOutput: ImportClientVpnClientCertificateRevocationListOutput
    ImportImageInput: ImportImageInput
    ImportImageOutput: ImportImageOutput
    ImportInstanceInput: ImportInstanceInput
    ImportInstanceOutput: ImportInstanceOutput
    ImportKeyPairInput: ImportKeyPairInput
    ImportKeyPairOutput: ImportKeyPairOutput
    ImportSnapshotInput: ImportSnapshotInput
    ImportSnapshotOutput: ImportSnapshotOutput
    ImportVolumeInput: ImportVolumeInput
    ImportVolumeOutput: ImportVolumeOutput
    ListImagesInRecycleBinInput: ListImagesInRecycleBinInput
    ListImagesInRecycleBinOutput: ListImagesInRecycleBinOutput
    ListSnapshotsInRecycleBinInput: ListSnapshotsInRecycleBinInput
    ListSnapshotsInRecycleBinOutput: ListSnapshotsInRecycleBinOutput
    ListVolumesInRecycleBinInput: ListVolumesInRecycleBinInput
    ListVolumesInRecycleBinOutput: ListVolumesInRecycleBinOutput
    LockSnapshotInput: LockSnapshotInput
    LockSnapshotOutput: LockSnapshotOutput
    ModifyAddressAttributeInput: ModifyAddressAttributeInput
    ModifyAddressAttributeOutput: ModifyAddressAttributeOutput
    ModifyAvailabilityZoneGroupInput: ModifyAvailabilityZoneGroupInput
    ModifyAvailabilityZoneGroupOutput: ModifyAvailabilityZoneGroupOutput
    ModifyCapacityReservationInput: ModifyCapacityReservationInput
    ModifyCapacityReservationOutput: ModifyCapacityReservationOutput
    ModifyCapacityReservationFleetInput: ModifyCapacityReservationFleetInput
    ModifyCapacityReservationFleetOutput: ModifyCapacityReservationFleetOutput
    ModifyClientVpnEndpointInput: ModifyClientVpnEndpointInput
    ModifyClientVpnEndpointOutput: ModifyClientVpnEndpointOutput
    ModifyDefaultCreditSpecificationInput: ModifyDefaultCreditSpecificationInput
    ModifyDefaultCreditSpecificationOutput: ModifyDefaultCreditSpecificationOutput
    ModifyEbsDefaultKmsKeyIdInput: ModifyEbsDefaultKmsKeyIdInput
    ModifyEbsDefaultKmsKeyIdOutput: ModifyEbsDefaultKmsKeyIdOutput
    ModifyFleetInput: ModifyFleetInput
    ModifyFleetOutput: ModifyFleetOutput
    ModifyFpgaImageAttributeInput: ModifyFpgaImageAttributeInput
    ModifyFpgaImageAttributeOutput: ModifyFpgaImageAttributeOutput
    ModifyHostsInput: ModifyHostsInput
    ModifyHostsOutput: ModifyHostsOutput
    ModifyIdentityIdFormatInput: ModifyIdentityIdFormatInput
    ModifyIdentityIdFormatOutput: ModifyIdentityIdFormatOutput
    ModifyIdFormatInput: ModifyIdFormatInput
    ModifyIdFormatOutput: ModifyIdFormatOutput
    ModifyImageAttributeInput: ModifyImageAttributeInput
    ModifyImageAttributeOutput: ModifyImageAttributeOutput
    ModifyInstanceAttributeInput: ModifyInstanceAttributeInput
    ModifyInstanceAttributeOutput: ModifyInstanceAttributeOutput
    ModifyInstanceCapacityReservationAttributesInput: ModifyInstanceCapacityReservationAttributesInput
    ModifyInstanceCapacityReservationAttributesOutput: ModifyInstanceCapacityReservationAttributesOutput
    ModifyInstanceConnectEndpointInput: ModifyInstanceConnectEndpointInput
    ModifyInstanceConnectEndpointOutput: ModifyInstanceConnectEndpointOutput
    ModifyInstanceCpuOptionsInput: ModifyInstanceCpuOptionsInput
    ModifyInstanceCpuOptionsOutput: ModifyInstanceCpuOptionsOutput
    ModifyInstanceCreditSpecificationInput: ModifyInstanceCreditSpecificationInput
    ModifyInstanceCreditSpecificationOutput: ModifyInstanceCreditSpecificationOutput
    ModifyInstanceEventStartTimeInput: ModifyInstanceEventStartTimeInput
    ModifyInstanceEventStartTimeOutput: ModifyInstanceEventStartTimeOutput
    ModifyInstanceEventWindowInput: ModifyInstanceEventWindowInput
    ModifyInstanceEventWindowOutput: ModifyInstanceEventWindowOutput
    ModifyInstanceMaintenanceOptionsInput: ModifyInstanceMaintenanceOptionsInput
    ModifyInstanceMaintenanceOptionsOutput: ModifyInstanceMaintenanceOptionsOutput
    ModifyInstanceMetadataDefaultsInput: ModifyInstanceMetadataDefaultsInput
    ModifyInstanceMetadataDefaultsOutput: ModifyInstanceMetadataDefaultsOutput
    ModifyInstanceMetadataOptionsInput: ModifyInstanceMetadataOptionsInput
    ModifyInstanceMetadataOptionsOutput: ModifyInstanceMetadataOptionsOutput
    ModifyInstanceNetworkPerformanceOptionsInput: ModifyInstanceNetworkPerformanceOptionsInput
    ModifyInstanceNetworkPerformanceOptionsOutput: ModifyInstanceNetworkPerformanceOptionsOutput
    ModifyInstancePlacementInput: ModifyInstancePlacementInput
    ModifyInstancePlacementOutput: ModifyInstancePlacementOutput
    ModifyIpamInput: ModifyIpamInput
    ModifyIpamOutput: ModifyIpamOutput
    ModifyIpamPolicyAllocationRulesInput: ModifyIpamPolicyAllocationRulesInput
    ModifyIpamPolicyAllocationRulesOutput: ModifyIpamPolicyAllocationRulesOutput
    ModifyIpamPoolInput: ModifyIpamPoolInput
    ModifyIpamPoolOutput: ModifyIpamPoolOutput
    ModifyIpamPrefixListResolverInput: ModifyIpamPrefixListResolverInput
    ModifyIpamPrefixListResolverOutput: ModifyIpamPrefixListResolverOutput
    ModifyIpamPrefixListResolverTargetInput: ModifyIpamPrefixListResolverTargetInput
    ModifyIpamPrefixListResolverTargetOutput: ModifyIpamPrefixListResolverTargetOutput
    ModifyIpamResourceCidrInput: ModifyIpamResourceCidrInput
    ModifyIpamResourceCidrOutput: ModifyIpamResourceCidrOutput
    ModifyIpamResourceDiscoveryInput: ModifyIpamResourceDiscoveryInput
    ModifyIpamResourceDiscoveryOutput: ModifyIpamResourceDiscoveryOutput
    ModifyIpamScopeInput: ModifyIpamScopeInput
    ModifyIpamScopeOutput: ModifyIpamScopeOutput
    ModifyLaunchTemplateInput: ModifyLaunchTemplateInput
    ModifyLaunchTemplateOutput: ModifyLaunchTemplateOutput
    ModifyLocalGatewayRouteInput: ModifyLocalGatewayRouteInput
    ModifyLocalGatewayRouteOutput: ModifyLocalGatewayRouteOutput
    ModifyManagedPrefixListInput: ModifyManagedPrefixListInput
    ModifyManagedPrefixListOutput: ModifyManagedPrefixListOutput
    ModifyManagedResourceVisibilityInput: ModifyManagedResourceVisibilityInput
    ModifyManagedResourceVisibilityOutput: ModifyManagedResourceVisibilityOutput
    ModifyNetworkInterfaceAttributeInput: ModifyNetworkInterfaceAttributeInput
    ModifyNetworkInterfaceAttributeOutput: ModifyNetworkInterfaceAttributeOutput
    ModifyPrivateDnsNameOptionsInput: ModifyPrivateDnsNameOptionsInput
    ModifyPrivateDnsNameOptionsOutput: ModifyPrivateDnsNameOptionsOutput
    ModifyPublicIpDnsNameOptionsInput: ModifyPublicIpDnsNameOptionsInput
    ModifyPublicIpDnsNameOptionsOutput: ModifyPublicIpDnsNameOptionsOutput
    ModifyReservedInstancesInput: ModifyReservedInstancesInput
    ModifyReservedInstancesOutput: ModifyReservedInstancesOutput
    ModifyRouteServerInput: ModifyRouteServerInput
    ModifyRouteServerOutput: ModifyRouteServerOutput
    ModifySecurityGroupRulesInput: ModifySecurityGroupRulesInput
    ModifySecurityGroupRulesOutput: ModifySecurityGroupRulesOutput
    ModifySnapshotAttributeInput: ModifySnapshotAttributeInput
    ModifySnapshotAttributeOutput: ModifySnapshotAttributeOutput
    ModifySnapshotTierInput: ModifySnapshotTierInput
    ModifySnapshotTierOutput: ModifySnapshotTierOutput
    ModifySpotFleetRequestInput: ModifySpotFleetRequestInput
    ModifySpotFleetRequestOutput: ModifySpotFleetRequestOutput
    ModifySubnetAttributeInput: ModifySubnetAttributeInput
    ModifySubnetAttributeOutput: ModifySubnetAttributeOutput
    ModifyTrafficMirrorFilterNetworkServicesInput: ModifyTrafficMirrorFilterNetworkServicesInput
    ModifyTrafficMirrorFilterNetworkServicesOutput: ModifyTrafficMirrorFilterNetworkServicesOutput
    ModifyTrafficMirrorFilterRuleInput: ModifyTrafficMirrorFilterRuleInput
    ModifyTrafficMirrorFilterRuleOutput: ModifyTrafficMirrorFilterRuleOutput
    ModifyTrafficMirrorSessionInput: ModifyTrafficMirrorSessionInput
    ModifyTrafficMirrorSessionOutput: ModifyTrafficMirrorSessionOutput
    ModifyTransitGatewayInput: ModifyTransitGatewayInput
    ModifyTransitGatewayOutput: ModifyTransitGatewayOutput
    ModifyTransitGatewayMeteringPolicyInput: ModifyTransitGatewayMeteringPolicyInput
    ModifyTransitGatewayMeteringPolicyOutput: ModifyTransitGatewayMeteringPolicyOutput
    ModifyTransitGatewayPrefixListReferenceInput: ModifyTransitGatewayPrefixListReferenceInput
    ModifyTransitGatewayPrefixListReferenceOutput: ModifyTransitGatewayPrefixListReferenceOutput
    ModifyTransitGatewayVpcAttachmentInput: ModifyTransitGatewayVpcAttachmentInput
    ModifyTransitGatewayVpcAttachmentOutput: ModifyTransitGatewayVpcAttachmentOutput
    ModifyVerifiedAccessEndpointInput: ModifyVerifiedAccessEndpointInput
    ModifyVerifiedAccessEndpointOutput: ModifyVerifiedAccessEndpointOutput
    ModifyVerifiedAccessEndpointPolicyInput: ModifyVerifiedAccessEndpointPolicyInput
    ModifyVerifiedAccessEndpointPolicyOutput: ModifyVerifiedAccessEndpointPolicyOutput
    ModifyVerifiedAccessGroupInput: ModifyVerifiedAccessGroupInput
    ModifyVerifiedAccessGroupOutput: ModifyVerifiedAccessGroupOutput
    ModifyVerifiedAccessGroupPolicyInput: ModifyVerifiedAccessGroupPolicyInput
    ModifyVerifiedAccessGroupPolicyOutput: ModifyVerifiedAccessGroupPolicyOutput
    ModifyVerifiedAccessInstanceInput: ModifyVerifiedAccessInstanceInput
    ModifyVerifiedAccessInstanceOutput: ModifyVerifiedAccessInstanceOutput
    ModifyVerifiedAccessInstanceLoggingConfigurationInput: ModifyVerifiedAccessInstanceLoggingConfigurationInput
    ModifyVerifiedAccessInstanceLoggingConfigurationOutput: ModifyVerifiedAccessInstanceLoggingConfigurationOutput
    ModifyVerifiedAccessTrustProviderInput: ModifyVerifiedAccessTrustProviderInput
    ModifyVerifiedAccessTrustProviderOutput: ModifyVerifiedAccessTrustProviderOutput
    ModifyVolumeInput: ModifyVolumeInput
    ModifyVolumeOutput: ModifyVolumeOutput
    ModifyVolumeAttributeInput: ModifyVolumeAttributeInput
    ModifyVolumeAttributeOutput: ModifyVolumeAttributeOutput
    ModifyVpcAttributeInput: ModifyVpcAttributeInput
    ModifyVpcAttributeOutput: ModifyVpcAttributeOutput
    ModifyVpcBlockPublicAccessExclusionInput: ModifyVpcBlockPublicAccessExclusionInput
    ModifyVpcBlockPublicAccessExclusionOutput: ModifyVpcBlockPublicAccessExclusionOutput
    ModifyVpcBlockPublicAccessOptionsInput: ModifyVpcBlockPublicAccessOptionsInput
    ModifyVpcBlockPublicAccessOptionsOutput: ModifyVpcBlockPublicAccessOptionsOutput
    ModifyVpcEncryptionControlInput: ModifyVpcEncryptionControlInput
    ModifyVpcEncryptionControlOutput: ModifyVpcEncryptionControlOutput
    ModifyVpcEndpointInput: ModifyVpcEndpointInput
    ModifyVpcEndpointOutput: ModifyVpcEndpointOutput
    ModifyVpcEndpointConnectionNotificationInput: ModifyVpcEndpointConnectionNotificationInput
    ModifyVpcEndpointConnectionNotificationOutput: ModifyVpcEndpointConnectionNotificationOutput
    ModifyVpcEndpointServiceConfigurationInput: ModifyVpcEndpointServiceConfigurationInput
    ModifyVpcEndpointServiceConfigurationOutput: ModifyVpcEndpointServiceConfigurationOutput
    ModifyVpcEndpointServicePayerResponsibilityInput: ModifyVpcEndpointServicePayerResponsibilityInput
    ModifyVpcEndpointServicePayerResponsibilityOutput: ModifyVpcEndpointServicePayerResponsibilityOutput
    ModifyVpcEndpointServicePermissionsInput: ModifyVpcEndpointServicePermissionsInput
    ModifyVpcEndpointServicePermissionsOutput: ModifyVpcEndpointServicePermissionsOutput
    ModifyVpcPeeringConnectionOptionsInput: ModifyVpcPeeringConnectionOptionsInput
    ModifyVpcPeeringConnectionOptionsOutput: ModifyVpcPeeringConnectionOptionsOutput
    ModifyVpcTenancyInput: ModifyVpcTenancyInput
    ModifyVpcTenancyOutput: ModifyVpcTenancyOutput
    ModifyVpnConnectionInput: ModifyVpnConnectionInput
    ModifyVpnConnectionOutput: ModifyVpnConnectionOutput
    ModifyVpnConnectionOptionsInput: ModifyVpnConnectionOptionsInput
    ModifyVpnConnectionOptionsOutput: ModifyVpnConnectionOptionsOutput
    ModifyVpnTunnelCertificateInput: ModifyVpnTunnelCertificateInput
    ModifyVpnTunnelCertificateOutput: ModifyVpnTunnelCertificateOutput
    ModifyVpnTunnelOptionsInput: ModifyVpnTunnelOptionsInput
    ModifyVpnTunnelOptionsOutput: ModifyVpnTunnelOptionsOutput
    MonitorInstancesInput: MonitorInstancesInput
    MonitorInstancesOutput: MonitorInstancesOutput
    MoveAddressToVpcInput: MoveAddressToVpcInput
    MoveAddressToVpcOutput: MoveAddressToVpcOutput
    MoveByoipCidrToIpamInput: MoveByoipCidrToIpamInput
    MoveByoipCidrToIpamOutput: MoveByoipCidrToIpamOutput
    MoveCapacityReservationInstancesInput: MoveCapacityReservationInstancesInput
    MoveCapacityReservationInstancesOutput: MoveCapacityReservationInstancesOutput
    ProvisionByoipCidrInput: ProvisionByoipCidrInput
    ProvisionByoipCidrOutput: ProvisionByoipCidrOutput
    ProvisionIpamByoasnInput: ProvisionIpamByoasnInput
    ProvisionIpamByoasnOutput: ProvisionIpamByoasnOutput
    ProvisionIpamPoolCidrInput: ProvisionIpamPoolCidrInput
    ProvisionIpamPoolCidrOutput: ProvisionIpamPoolCidrOutput
    ProvisionPublicIpv4PoolCidrInput: ProvisionPublicIpv4PoolCidrInput
    ProvisionPublicIpv4PoolCidrOutput: ProvisionPublicIpv4PoolCidrOutput
    PurchaseCapacityBlockInput: PurchaseCapacityBlockInput
    PurchaseCapacityBlockOutput: PurchaseCapacityBlockOutput
    PurchaseCapacityBlockExtensionInput: PurchaseCapacityBlockExtensionInput
    PurchaseCapacityBlockExtensionOutput: PurchaseCapacityBlockExtensionOutput
    PurchaseHostReservationInput: PurchaseHostReservationInput
    PurchaseHostReservationOutput: PurchaseHostReservationOutput
    PurchaseReservedInstancesOfferingInput: PurchaseReservedInstancesOfferingInput
    PurchaseReservedInstancesOfferingOutput: PurchaseReservedInstancesOfferingOutput
    PurchaseScheduledInstancesInput: PurchaseScheduledInstancesInput
    PurchaseScheduledInstancesOutput: PurchaseScheduledInstancesOutput
    RebootInstancesInput: RebootInstancesInput
    RebootInstancesOutput: RebootInstancesOutput
    RegisterImageInput: RegisterImageInput
    RegisterImageOutput: RegisterImageOutput
    RegisterInstanceEventNotificationAttributesInput: RegisterInstanceEventNotificationAttributesInput
    RegisterInstanceEventNotificationAttributesOutput: RegisterInstanceEventNotificationAttributesOutput
    RegisterTransitGatewayMulticastGroupMembersInput: RegisterTransitGatewayMulticastGroupMembersInput
    RegisterTransitGatewayMulticastGroupMembersOutput: RegisterTransitGatewayMulticastGroupMembersOutput
    RegisterTransitGatewayMulticastGroupSourcesInput: RegisterTransitGatewayMulticastGroupSourcesInput
    RegisterTransitGatewayMulticastGroupSourcesOutput: RegisterTransitGatewayMulticastGroupSourcesOutput
    RejectCapacityReservationBillingOwnershipInput: RejectCapacityReservationBillingOwnershipInput
    RejectCapacityReservationBillingOwnershipOutput: RejectCapacityReservationBillingOwnershipOutput
    RejectTransitGatewayClientVpnAttachmentInput: RejectTransitGatewayClientVpnAttachmentInput
    RejectTransitGatewayClientVpnAttachmentOutput: RejectTransitGatewayClientVpnAttachmentOutput
    RejectTransitGatewayMulticastDomainAssociationsInput: RejectTransitGatewayMulticastDomainAssociationsInput
    RejectTransitGatewayMulticastDomainAssociationsOutput: RejectTransitGatewayMulticastDomainAssociationsOutput
    RejectTransitGatewayPeeringAttachmentInput: RejectTransitGatewayPeeringAttachmentInput
    RejectTransitGatewayPeeringAttachmentOutput: RejectTransitGatewayPeeringAttachmentOutput
    RejectTransitGatewayVpcAttachmentInput: RejectTransitGatewayVpcAttachmentInput
    RejectTransitGatewayVpcAttachmentOutput: RejectTransitGatewayVpcAttachmentOutput
    RejectVpcEndpointConnectionsInput: RejectVpcEndpointConnectionsInput
    RejectVpcEndpointConnectionsOutput: RejectVpcEndpointConnectionsOutput
    RejectVpcPeeringConnectionInput: RejectVpcPeeringConnectionInput
    RejectVpcPeeringConnectionOutput: RejectVpcPeeringConnectionOutput
    ReleaseAddressInput: ReleaseAddressInput
    ReleaseAddressOutput: ReleaseAddressOutput
    ReleaseHostsInput: ReleaseHostsInput
    ReleaseHostsOutput: ReleaseHostsOutput
    ReleaseIpamPoolAllocationInput: ReleaseIpamPoolAllocationInput
    ReleaseIpamPoolAllocationOutput: ReleaseIpamPoolAllocationOutput
    ReplaceIamInstanceProfileAssociationInput: ReplaceIamInstanceProfileAssociationInput
    ReplaceIamInstanceProfileAssociationOutput: ReplaceIamInstanceProfileAssociationOutput
    ReplaceImageCriteriaInAllowedImagesSettingsInput: ReplaceImageCriteriaInAllowedImagesSettingsInput
    ReplaceImageCriteriaInAllowedImagesSettingsOutput: ReplaceImageCriteriaInAllowedImagesSettingsOutput
    ReplaceNetworkAclAssociationInput: ReplaceNetworkAclAssociationInput
    ReplaceNetworkAclAssociationOutput: ReplaceNetworkAclAssociationOutput
    ReplaceNetworkAclEntryInput: ReplaceNetworkAclEntryInput
    ReplaceNetworkAclEntryOutput: ReplaceNetworkAclEntryOutput
    ReplaceRouteInput: ReplaceRouteInput
    ReplaceRouteOutput: ReplaceRouteOutput
    ReplaceRouteTableAssociationInput: ReplaceRouteTableAssociationInput
    ReplaceRouteTableAssociationOutput: ReplaceRouteTableAssociationOutput
    ReplaceTransitGatewayRouteInput: ReplaceTransitGatewayRouteInput
    ReplaceTransitGatewayRouteOutput: ReplaceTransitGatewayRouteOutput
    ReplaceVpnTunnelInput: ReplaceVpnTunnelInput
    ReplaceVpnTunnelOutput: ReplaceVpnTunnelOutput
    ReportInstanceStatusInput: ReportInstanceStatusInput
    ReportInstanceStatusOutput: ReportInstanceStatusOutput
    RequestSpotFleetInput: RequestSpotFleetInput
    RequestSpotFleetOutput: RequestSpotFleetOutput
    RequestSpotInstancesInput: RequestSpotInstancesInput
    RequestSpotInstancesOutput: RequestSpotInstancesOutput
    ResetAddressAttributeInput: ResetAddressAttributeInput
    ResetAddressAttributeOutput: ResetAddressAttributeOutput
    ResetEbsDefaultKmsKeyIdInput: ResetEbsDefaultKmsKeyIdInput
    ResetEbsDefaultKmsKeyIdOutput: ResetEbsDefaultKmsKeyIdOutput
    ResetFpgaImageAttributeInput: ResetFpgaImageAttributeInput
    ResetFpgaImageAttributeOutput: ResetFpgaImageAttributeOutput
    ResetImageAttributeInput: ResetImageAttributeInput
    ResetImageAttributeOutput: ResetImageAttributeOutput
    ResetInstanceAttributeInput: ResetInstanceAttributeInput
    ResetInstanceAttributeOutput: ResetInstanceAttributeOutput
    ResetNetworkInterfaceAttributeInput: ResetNetworkInterfaceAttributeInput
    ResetNetworkInterfaceAttributeOutput: ResetNetworkInterfaceAttributeOutput
    ResetSnapshotAttributeInput: ResetSnapshotAttributeInput
    ResetSnapshotAttributeOutput: ResetSnapshotAttributeOutput
    RestoreAddressToClassicInput: RestoreAddressToClassicInput
    RestoreAddressToClassicOutput: RestoreAddressToClassicOutput
    RestoreImageFromRecycleBinInput: RestoreImageFromRecycleBinInput
    RestoreImageFromRecycleBinOutput: RestoreImageFromRecycleBinOutput
    RestoreManagedPrefixListVersionInput: RestoreManagedPrefixListVersionInput
    RestoreManagedPrefixListVersionOutput: RestoreManagedPrefixListVersionOutput
    RestoreSnapshotFromRecycleBinInput: RestoreSnapshotFromRecycleBinInput
    RestoreSnapshotFromRecycleBinOutput: RestoreSnapshotFromRecycleBinOutput
    RestoreSnapshotTierInput: RestoreSnapshotTierInput
    RestoreSnapshotTierOutput: RestoreSnapshotTierOutput
    RestoreVolumeFromRecycleBinInput: RestoreVolumeFromRecycleBinInput
    RestoreVolumeFromRecycleBinOutput: RestoreVolumeFromRecycleBinOutput
    RevokeClientVpnIngressInput: RevokeClientVpnIngressInput
    RevokeClientVpnIngressOutput: RevokeClientVpnIngressOutput
    RevokeSecurityGroupEgressInput: RevokeSecurityGroupEgressInput
    RevokeSecurityGroupEgressOutput: RevokeSecurityGroupEgressOutput
    RevokeSecurityGroupIngressInput: RevokeSecurityGroupIngressInput
    RevokeSecurityGroupIngressOutput: RevokeSecurityGroupIngressOutput
    RunInstancesInput: RunInstancesInput
    RunInstancesOutput: RunInstancesOutput
    RunScheduledInstancesInput: RunScheduledInstancesInput
    RunScheduledInstancesOutput: RunScheduledInstancesOutput
    SearchLocalGatewayRoutesInput: SearchLocalGatewayRoutesInput
    SearchLocalGatewayRoutesOutput: SearchLocalGatewayRoutesOutput
    SearchTransitGatewayMulticastGroupsInput: SearchTransitGatewayMulticastGroupsInput
    SearchTransitGatewayMulticastGroupsOutput: SearchTransitGatewayMulticastGroupsOutput
    SearchTransitGatewayRoutesInput: SearchTransitGatewayRoutesInput
    SearchTransitGatewayRoutesOutput: SearchTransitGatewayRoutesOutput
    SendDiagnosticInterruptInput: SendDiagnosticInterruptInput
    SendDiagnosticInterruptOutput: SendDiagnosticInterruptOutput
    StartDeclarativePoliciesReportInput: StartDeclarativePoliciesReportInput
    StartDeclarativePoliciesReportOutput: StartDeclarativePoliciesReportOutput
    StartInstancesInput: StartInstancesInput
    StartInstancesOutput: StartInstancesOutput
    StartNetworkInsightsAccessScopeAnalysisInput: StartNetworkInsightsAccessScopeAnalysisInput
    StartNetworkInsightsAccessScopeAnalysisOutput: StartNetworkInsightsAccessScopeAnalysisOutput
    StartNetworkInsightsAnalysisInput: StartNetworkInsightsAnalysisInput
    StartNetworkInsightsAnalysisOutput: StartNetworkInsightsAnalysisOutput
    StartVpcEndpointServicePrivateDnsVerificationInput: StartVpcEndpointServicePrivateDnsVerificationInput
    StartVpcEndpointServicePrivateDnsVerificationOutput: StartVpcEndpointServicePrivateDnsVerificationOutput
    StopInstancesInput: StopInstancesInput
    StopInstancesOutput: StopInstancesOutput
    TerminateClientVpnConnectionsInput: TerminateClientVpnConnectionsInput
    TerminateClientVpnConnectionsOutput: TerminateClientVpnConnectionsOutput
    TerminateInstancesInput: TerminateInstancesInput
    TerminateInstancesOutput: TerminateInstancesOutput
    UnassignIpv6AddressesInput: UnassignIpv6AddressesInput
    UnassignIpv6AddressesOutput: UnassignIpv6AddressesOutput
    UnassignPrivateIpAddressesInput: UnassignPrivateIpAddressesInput
    UnassignPrivateIpAddressesOutput: UnassignPrivateIpAddressesOutput
    UnassignPrivateNatGatewayAddressInput: UnassignPrivateNatGatewayAddressInput
    UnassignPrivateNatGatewayAddressOutput: UnassignPrivateNatGatewayAddressOutput
    UnlockSnapshotInput: UnlockSnapshotInput
    UnlockSnapshotOutput: UnlockSnapshotOutput
    UnmonitorInstancesInput: UnmonitorInstancesInput
    UnmonitorInstancesOutput: UnmonitorInstancesOutput
    UpdateCapacityManagerMonitoredTagKeysInput: UpdateCapacityManagerMonitoredTagKeysInput
    UpdateCapacityManagerMonitoredTagKeysOutput: UpdateCapacityManagerMonitoredTagKeysOutput
    UpdateCapacityManagerOrganizationsAccessInput: UpdateCapacityManagerOrganizationsAccessInput
    UpdateCapacityManagerOrganizationsAccessOutput: UpdateCapacityManagerOrganizationsAccessOutput
    UpdateInterruptibleCapacityReservationAllocationInput: UpdateInterruptibleCapacityReservationAllocationInput
    UpdateInterruptibleCapacityReservationAllocationOutput: UpdateInterruptibleCapacityReservationAllocationOutput
    UpdateSecurityGroupRuleDescriptionsEgressInput: UpdateSecurityGroupRuleDescriptionsEgressInput
    UpdateSecurityGroupRuleDescriptionsEgressOutput: UpdateSecurityGroupRuleDescriptionsEgressOutput
    UpdateSecurityGroupRuleDescriptionsIngressInput: UpdateSecurityGroupRuleDescriptionsIngressInput
    UpdateSecurityGroupRuleDescriptionsIngressOutput: UpdateSecurityGroupRuleDescriptionsIngressOutput
    WithdrawByoipCidrInput: WithdrawByoipCidrInput
    WithdrawByoipCidrOutput: WithdrawByoipCidrOutput
end

return M
