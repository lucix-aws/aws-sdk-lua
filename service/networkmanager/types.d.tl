local record AcceptAttachmentInput
    AttachmentId: string
end

local record AcceptAttachmentOutput
    Attachment: Attachment
end

local record AssociateConnectPeerInput
    GlobalNetworkId: string
    ConnectPeerId: string
    DeviceId: string
    LinkId: string
end

local record AssociateConnectPeerOutput
    ConnectPeerAssociation: ConnectPeerAssociation
end

local record AssociateCustomerGatewayInput
    CustomerGatewayArn: string
    GlobalNetworkId: string
    DeviceId: string
    LinkId: string
end

local record AssociateCustomerGatewayOutput
    CustomerGatewayAssociation: CustomerGatewayAssociation
end

local record AssociateLinkInput
    GlobalNetworkId: string
    DeviceId: string
    LinkId: string
end

local record AssociateLinkOutput
    LinkAssociation: LinkAssociation
end

local record AssociateTransitGatewayConnectPeerInput
    GlobalNetworkId: string
    TransitGatewayConnectPeerArn: string
    DeviceId: string
    LinkId: string
end

local record AssociateTransitGatewayConnectPeerOutput
    TransitGatewayConnectPeerAssociation: TransitGatewayConnectPeerAssociation
end

local record CreateConnectAttachmentInput
    CoreNetworkId: string
    EdgeLocation: string
    TransportAttachmentId: string
    RoutingPolicyLabel: string
    Options: ConnectAttachmentOptions
    Tags: {Tag}
    ClientToken: string
end

local record CreateConnectAttachmentOutput
    ConnectAttachment: ConnectAttachment
end

local record CreateConnectionInput
    GlobalNetworkId: string
    DeviceId: string
    ConnectedDeviceId: string
    LinkId: string
    ConnectedLinkId: string
    Description: string
    Tags: {Tag}
end

local record CreateConnectionOutput
    Connection: Connection
end

local record CreateConnectPeerInput
    ConnectAttachmentId: string
    CoreNetworkAddress: string
    PeerAddress: string
    BgpOptions: BgpOptions
    InsideCidrBlocks: {string}
    Tags: {Tag}
    ClientToken: string
    SubnetArn: string
end

local record CreateConnectPeerOutput
    ConnectPeer: ConnectPeer
end

local record CreateCoreNetworkInput
    GlobalNetworkId: string
    Description: string
    Tags: {Tag}
    PolicyDocument: string
    ClientToken: string
end

local record CreateCoreNetworkOutput
    CoreNetwork: CoreNetwork
end

local record CreateCoreNetworkPrefixListAssociationInput
    CoreNetworkId: string
    PrefixListArn: string
    PrefixListAlias: string
    ClientToken: string
end

local record CreateCoreNetworkPrefixListAssociationOutput
    CoreNetworkId: string
    PrefixListArn: string
    PrefixListAlias: string
end

local record CreateDeviceInput
    GlobalNetworkId: string
    AWSLocation: AWSLocation
    Description: string
    Type: string
    Vendor: string
    Model: string
    SerialNumber: string
    Location: Location
    SiteId: string
    Tags: {Tag}
end

local record CreateDeviceOutput
    Device: Device
end

local record CreateDirectConnectGatewayAttachmentInput
    CoreNetworkId: string
    DirectConnectGatewayArn: string
    RoutingPolicyLabel: string
    EdgeLocations: {string}
    Tags: {Tag}
    ClientToken: string
end

local record CreateDirectConnectGatewayAttachmentOutput
    DirectConnectGatewayAttachment: DirectConnectGatewayAttachment
end

local record CreateGlobalNetworkInput
    Description: string
    Tags: {Tag}
end

local record CreateGlobalNetworkOutput
    GlobalNetwork: GlobalNetwork
end

local record CreateLinkInput
    GlobalNetworkId: string
    Description: string
    Type: string
    Bandwidth: Bandwidth
    Provider: string
    SiteId: string
    Tags: {Tag}
end

local record CreateLinkOutput
    Link: Link
end

local record CreateSiteInput
    GlobalNetworkId: string
    Description: string
    Location: Location
    Tags: {Tag}
end

local record CreateSiteOutput
    Site: Site
end

local record CreateSiteToSiteVpnAttachmentInput
    CoreNetworkId: string
    VpnConnectionArn: string
    RoutingPolicyLabel: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateSiteToSiteVpnAttachmentOutput
    SiteToSiteVpnAttachment: SiteToSiteVpnAttachment
end

local record CreateTransitGatewayPeeringInput
    CoreNetworkId: string
    TransitGatewayArn: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateTransitGatewayPeeringOutput
    TransitGatewayPeering: TransitGatewayPeering
end

local record CreateTransitGatewayRouteTableAttachmentInput
    PeeringId: string
    TransitGatewayRouteTableArn: string
    RoutingPolicyLabel: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateTransitGatewayRouteTableAttachmentOutput
    TransitGatewayRouteTableAttachment: TransitGatewayRouteTableAttachment
end

local record CreateVpcAttachmentInput
    CoreNetworkId: string
    VpcArn: string
    SubnetArns: {string}
    Options: VpcOptions
    RoutingPolicyLabel: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateVpcAttachmentOutput
    VpcAttachment: VpcAttachment
end

local record DeleteAttachmentInput
    AttachmentId: string
end

local record DeleteAttachmentOutput
    Attachment: Attachment
end

local record DeleteConnectionInput
    GlobalNetworkId: string
    ConnectionId: string
end

local record DeleteConnectionOutput
    Connection: Connection
end

local record DeleteConnectPeerInput
    ConnectPeerId: string
end

local record DeleteConnectPeerOutput
    ConnectPeer: ConnectPeer
end

local record DeleteCoreNetworkInput
    CoreNetworkId: string
end

local record DeleteCoreNetworkOutput
    CoreNetwork: CoreNetwork
end

local record DeleteCoreNetworkPolicyVersionInput
    CoreNetworkId: string
    PolicyVersionId: number
end

local record DeleteCoreNetworkPolicyVersionOutput
    CoreNetworkPolicy: CoreNetworkPolicy
end

local record DeleteCoreNetworkPrefixListAssociationInput
    CoreNetworkId: string
    PrefixListArn: string
end

local record DeleteCoreNetworkPrefixListAssociationOutput
    CoreNetworkId: string
    PrefixListArn: string
end

local record DeleteDeviceInput
    GlobalNetworkId: string
    DeviceId: string
end

local record DeleteDeviceOutput
    Device: Device
end

local record DeleteGlobalNetworkInput
    GlobalNetworkId: string
end

local record DeleteGlobalNetworkOutput
    GlobalNetwork: GlobalNetwork
end

local record DeleteLinkInput
    GlobalNetworkId: string
    LinkId: string
end

local record DeleteLinkOutput
    Link: Link
end

local record DeletePeeringInput
    PeeringId: string
end

local record DeletePeeringOutput
    Peering: Peering
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteSiteInput
    GlobalNetworkId: string
    SiteId: string
end

local record DeleteSiteOutput
    Site: Site
end

local record DeregisterTransitGatewayInput
    GlobalNetworkId: string
    TransitGatewayArn: string
end

local record DeregisterTransitGatewayOutput
    TransitGatewayRegistration: TransitGatewayRegistration
end

local record DescribeGlobalNetworksInput
    GlobalNetworkIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeGlobalNetworksOutput
    GlobalNetworks: {GlobalNetwork}
    NextToken: string
end

local record DisassociateConnectPeerInput
    GlobalNetworkId: string
    ConnectPeerId: string
end

local record DisassociateConnectPeerOutput
    ConnectPeerAssociation: ConnectPeerAssociation
end

local record DisassociateCustomerGatewayInput
    GlobalNetworkId: string
    CustomerGatewayArn: string
end

local record DisassociateCustomerGatewayOutput
    CustomerGatewayAssociation: CustomerGatewayAssociation
end

local record DisassociateLinkInput
    GlobalNetworkId: string
    DeviceId: string
    LinkId: string
end

local record DisassociateLinkOutput
    LinkAssociation: LinkAssociation
end

local record DisassociateTransitGatewayConnectPeerInput
    GlobalNetworkId: string
    TransitGatewayConnectPeerArn: string
end

local record DisassociateTransitGatewayConnectPeerOutput
    TransitGatewayConnectPeerAssociation: TransitGatewayConnectPeerAssociation
end

local record ExecuteCoreNetworkChangeSetInput
    CoreNetworkId: string
    PolicyVersionId: number
end

local record ExecuteCoreNetworkChangeSetOutput
end

local record GetConnectAttachmentInput
    AttachmentId: string
end

local record GetConnectAttachmentOutput
    ConnectAttachment: ConnectAttachment
end

local record GetConnectionsInput
    GlobalNetworkId: string
    ConnectionIds: {string}
    DeviceId: string
    MaxResults: number
    NextToken: string
end

local record GetConnectionsOutput
    Connections: {Connection}
    NextToken: string
end

local record GetConnectPeerInput
    ConnectPeerId: string
end

local record GetConnectPeerOutput
    ConnectPeer: ConnectPeer
end

local record GetConnectPeerAssociationsInput
    GlobalNetworkId: string
    ConnectPeerIds: {string}
    MaxResults: number
    NextToken: string
end

local record GetConnectPeerAssociationsOutput
    ConnectPeerAssociations: {ConnectPeerAssociation}
    NextToken: string
end

local record GetCoreNetworkInput
    CoreNetworkId: string
end

local record GetCoreNetworkOutput
    CoreNetwork: CoreNetwork
end

local record GetCoreNetworkChangeEventsInput
    CoreNetworkId: string
    PolicyVersionId: number
    MaxResults: number
    NextToken: string
end

local record GetCoreNetworkChangeEventsOutput
    CoreNetworkChangeEvents: {CoreNetworkChangeEvent}
    NextToken: string
end

local record GetCoreNetworkChangeSetInput
    CoreNetworkId: string
    PolicyVersionId: number
    MaxResults: number
    NextToken: string
end

local record GetCoreNetworkChangeSetOutput
    CoreNetworkChanges: {CoreNetworkChange}
    NextToken: string
end

local record GetCoreNetworkPolicyInput
    CoreNetworkId: string
    PolicyVersionId: number
    Alias: string
end

local record GetCoreNetworkPolicyOutput
    CoreNetworkPolicy: CoreNetworkPolicy
end

local record GetCustomerGatewayAssociationsInput
    GlobalNetworkId: string
    CustomerGatewayArns: {string}
    MaxResults: number
    NextToken: string
end

local record GetCustomerGatewayAssociationsOutput
    CustomerGatewayAssociations: {CustomerGatewayAssociation}
    NextToken: string
end

local record GetDevicesInput
    GlobalNetworkId: string
    DeviceIds: {string}
    SiteId: string
    MaxResults: number
    NextToken: string
end

local record GetDevicesOutput
    Devices: {Device}
    NextToken: string
end

local record GetDirectConnectGatewayAttachmentInput
    AttachmentId: string
end

local record GetDirectConnectGatewayAttachmentOutput
    DirectConnectGatewayAttachment: DirectConnectGatewayAttachment
end

local record GetLinkAssociationsInput
    GlobalNetworkId: string
    DeviceId: string
    LinkId: string
    MaxResults: number
    NextToken: string
end

local record GetLinkAssociationsOutput
    LinkAssociations: {LinkAssociation}
    NextToken: string
end

local record GetLinksInput
    GlobalNetworkId: string
    LinkIds: {string}
    SiteId: string
    Type: string
    Provider: string
    MaxResults: number
    NextToken: string
end

local record GetLinksOutput
    Links: {Link}
    NextToken: string
end

local record GetNetworkResourceCountsInput
    GlobalNetworkId: string
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record GetNetworkResourceCountsOutput
    NetworkResourceCounts: {NetworkResourceCount}
    NextToken: string
end

local record GetNetworkResourceRelationshipsInput
    GlobalNetworkId: string
    CoreNetworkId: string
    RegisteredGatewayArn: string
    AwsRegion: string
    AccountId: string
    ResourceType: string
    ResourceArn: string
    MaxResults: number
    NextToken: string
end

local record GetNetworkResourceRelationshipsOutput
    Relationships: {Relationship}
    NextToken: string
end

local record GetNetworkResourcesInput
    GlobalNetworkId: string
    CoreNetworkId: string
    RegisteredGatewayArn: string
    AwsRegion: string
    AccountId: string
    ResourceType: string
    ResourceArn: string
    MaxResults: number
    NextToken: string
end

local record GetNetworkResourcesOutput
    NetworkResources: {NetworkResource}
    NextToken: string
end

local record GetNetworkRoutesInput
    GlobalNetworkId: string
    RouteTableIdentifier: RouteTableIdentifier
    ExactCidrMatches: {string}
    LongestPrefixMatches: {string}
    SubnetOfMatches: {string}
    SupernetOfMatches: {string}
    PrefixListIds: {string}
    States: {string}
    Types: {string}
    DestinationFilters: {string : {string}}
end

local record GetNetworkRoutesOutput
    RouteTableArn: string
    CoreNetworkSegmentEdge: CoreNetworkSegmentEdgeIdentifier
    RouteTableType: string
    RouteTableTimestamp: number
    NetworkRoutes: {NetworkRoute}
end

local record GetNetworkTelemetryInput
    GlobalNetworkId: string
    CoreNetworkId: string
    RegisteredGatewayArn: string
    AwsRegion: string
    AccountId: string
    ResourceType: string
    ResourceArn: string
    MaxResults: number
    NextToken: string
end

local record GetNetworkTelemetryOutput
    NetworkTelemetry: {NetworkTelemetry}
    NextToken: string
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    PolicyDocument: string
end

local record GetRouteAnalysisInput
    GlobalNetworkId: string
    RouteAnalysisId: string
end

local record GetRouteAnalysisOutput
    RouteAnalysis: RouteAnalysis
end

local record GetSitesInput
    GlobalNetworkId: string
    SiteIds: {string}
    MaxResults: number
    NextToken: string
end

local record GetSitesOutput
    Sites: {Site}
    NextToken: string
end

local record GetSiteToSiteVpnAttachmentInput
    AttachmentId: string
end

local record GetSiteToSiteVpnAttachmentOutput
    SiteToSiteVpnAttachment: SiteToSiteVpnAttachment
end

local record GetTransitGatewayConnectPeerAssociationsInput
    GlobalNetworkId: string
    TransitGatewayConnectPeerArns: {string}
    MaxResults: number
    NextToken: string
end

local record GetTransitGatewayConnectPeerAssociationsOutput
    TransitGatewayConnectPeerAssociations: {TransitGatewayConnectPeerAssociation}
    NextToken: string
end

local record GetTransitGatewayPeeringInput
    PeeringId: string
end

local record GetTransitGatewayPeeringOutput
    TransitGatewayPeering: TransitGatewayPeering
end

local record GetTransitGatewayRegistrationsInput
    GlobalNetworkId: string
    TransitGatewayArns: {string}
    MaxResults: number
    NextToken: string
end

local record GetTransitGatewayRegistrationsOutput
    TransitGatewayRegistrations: {TransitGatewayRegistration}
    NextToken: string
end

local record GetTransitGatewayRouteTableAttachmentInput
    AttachmentId: string
end

local record GetTransitGatewayRouteTableAttachmentOutput
    TransitGatewayRouteTableAttachment: TransitGatewayRouteTableAttachment
end

local record GetVpcAttachmentInput
    AttachmentId: string
end

local record GetVpcAttachmentOutput
    VpcAttachment: VpcAttachment
end

local record ListAttachmentRoutingPolicyAssociationsInput
    CoreNetworkId: string
    AttachmentId: string
    MaxResults: number
    NextToken: string
end

local record ListAttachmentRoutingPolicyAssociationsOutput
    AttachmentRoutingPolicyAssociations: {AttachmentRoutingPolicyAssociationSummary}
    NextToken: string
end

local record ListAttachmentsInput
    CoreNetworkId: string
    AttachmentType: string
    EdgeLocation: string
    State: string
    MaxResults: number
    NextToken: string
end

local record ListAttachmentsOutput
    Attachments: {Attachment}
    NextToken: string
end

local record ListConnectPeersInput
    CoreNetworkId: string
    ConnectAttachmentId: string
    MaxResults: number
    NextToken: string
end

local record ListConnectPeersOutput
    ConnectPeers: {ConnectPeerSummary}
    NextToken: string
end

local record ListCoreNetworkPolicyVersionsInput
    CoreNetworkId: string
    MaxResults: number
    NextToken: string
end

local record ListCoreNetworkPolicyVersionsOutput
    CoreNetworkPolicyVersions: {CoreNetworkPolicyVersion}
    NextToken: string
end

local record ListCoreNetworkPrefixListAssociationsInput
    CoreNetworkId: string
    PrefixListArn: string
    MaxResults: number
    NextToken: string
end

local record ListCoreNetworkPrefixListAssociationsOutput
    PrefixListAssociations: {PrefixListAssociation}
    NextToken: string
end

local record ListCoreNetworkRoutingInformationInput
    CoreNetworkId: string
    SegmentName: string
    EdgeLocation: string
    NextHopFilters: {string : {string}}
    LocalPreferenceMatches: {string}
    ExactAsPathMatches: {string}
    MedMatches: {string}
    CommunityMatches: {string}
    MaxResults: number
    NextToken: string
end

local record ListCoreNetworkRoutingInformationOutput
    CoreNetworkRoutingInformation: {CoreNetworkRoutingInformation}
    NextToken: string
end

local record ListCoreNetworksInput
    MaxResults: number
    NextToken: string
end

local record ListCoreNetworksOutput
    CoreNetworks: {CoreNetworkSummary}
    NextToken: string
end

local record ListOrganizationServiceAccessStatusInput
    MaxResults: number
    NextToken: string
end

local record ListOrganizationServiceAccessStatusOutput
    OrganizationStatus: OrganizationStatus
    NextToken: string
end

local record ListPeeringsInput
    CoreNetworkId: string
    PeeringType: string
    EdgeLocation: string
    State: string
    MaxResults: number
    NextToken: string
end

local record ListPeeringsOutput
    Peerings: {Peering}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    TagList: {Tag}
end

local record PutAttachmentRoutingPolicyLabelInput
    CoreNetworkId: string
    AttachmentId: string
    RoutingPolicyLabel: string
    ClientToken: string
end

local record PutAttachmentRoutingPolicyLabelOutput
    CoreNetworkId: string
    AttachmentId: string
    RoutingPolicyLabel: string
end

local record PutCoreNetworkPolicyInput
    CoreNetworkId: string
    PolicyDocument: string
    Description: string
    LatestVersionId: number
    ClientToken: string
end

local record PutCoreNetworkPolicyOutput
    CoreNetworkPolicy: CoreNetworkPolicy
end

local record PutResourcePolicyInput
    PolicyDocument: string
    ResourceArn: string
end

local record PutResourcePolicyOutput
end

local record RegisterTransitGatewayInput
    GlobalNetworkId: string
    TransitGatewayArn: string
end

local record RegisterTransitGatewayOutput
    TransitGatewayRegistration: TransitGatewayRegistration
end

local record RejectAttachmentInput
    AttachmentId: string
end

local record RejectAttachmentOutput
    Attachment: Attachment
end

local record RemoveAttachmentRoutingPolicyLabelInput
    CoreNetworkId: string
    AttachmentId: string
end

local record RemoveAttachmentRoutingPolicyLabelOutput
    CoreNetworkId: string
    AttachmentId: string
    RoutingPolicyLabel: string
end

local record RestoreCoreNetworkPolicyVersionInput
    CoreNetworkId: string
    PolicyVersionId: number
end

local record RestoreCoreNetworkPolicyVersionOutput
    CoreNetworkPolicy: CoreNetworkPolicy
end

local record StartOrganizationServiceAccessUpdateInput
    Action: string
end

local record StartOrganizationServiceAccessUpdateOutput
    OrganizationStatus: OrganizationStatus
end

local record StartRouteAnalysisInput
    GlobalNetworkId: string
    Source: RouteAnalysisEndpointOptionsSpecification
    Destination: RouteAnalysisEndpointOptionsSpecification
    IncludeReturnPath: boolean
    UseMiddleboxes: boolean
end

local record StartRouteAnalysisOutput
    RouteAnalysis: RouteAnalysis
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateConnectionInput
    GlobalNetworkId: string
    ConnectionId: string
    LinkId: string
    ConnectedLinkId: string
    Description: string
end

local record UpdateConnectionOutput
    Connection: Connection
end

local record UpdateCoreNetworkInput
    CoreNetworkId: string
    Description: string
end

local record UpdateCoreNetworkOutput
    CoreNetwork: CoreNetwork
end

local record UpdateDeviceInput
    GlobalNetworkId: string
    DeviceId: string
    AWSLocation: AWSLocation
    Description: string
    Type: string
    Vendor: string
    Model: string
    SerialNumber: string
    Location: Location
    SiteId: string
end

local record UpdateDeviceOutput
    Device: Device
end

local record UpdateDirectConnectGatewayAttachmentInput
    AttachmentId: string
    EdgeLocations: {string}
end

local record UpdateDirectConnectGatewayAttachmentOutput
    DirectConnectGatewayAttachment: DirectConnectGatewayAttachment
end

local record UpdateGlobalNetworkInput
    GlobalNetworkId: string
    Description: string
end

local record UpdateGlobalNetworkOutput
    GlobalNetwork: GlobalNetwork
end

local record UpdateLinkInput
    GlobalNetworkId: string
    LinkId: string
    Description: string
    Type: string
    Bandwidth: Bandwidth
    Provider: string
end

local record UpdateLinkOutput
    Link: Link
end

local record UpdateNetworkResourceMetadataInput
    GlobalNetworkId: string
    ResourceArn: string
    Metadata: {string : string}
end

local record UpdateNetworkResourceMetadataOutput
    ResourceArn: string
    Metadata: {string : string}
end

local record UpdateSiteInput
    GlobalNetworkId: string
    SiteId: string
    Description: string
    Location: Location
end

local record UpdateSiteOutput
    Site: Site
end

local record UpdateVpcAttachmentInput
    AttachmentId: string
    AddSubnetArns: {string}
    RemoveSubnetArns: {string}
    Options: VpcOptions
end

local record UpdateVpcAttachmentOutput
    VpcAttachment: VpcAttachment
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record CoreNetworkPolicyException
    Message: string
    Errors: {CoreNetworkPolicyError}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record CoreNetworkPolicyException
    Message: string
    Errors: {CoreNetworkPolicyError}
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    LimitCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
    Context: {string : string}
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local type AttachmentState = "REJECTED" | "PENDING_ATTACHMENT_ACCEPTANCE" | "CREATING" | "FAILED" | "AVAILABLE" | "UPDATING" | "PENDING_NETWORK_UPDATE" | "PENDING_TAG_ACCEPTANCE" | "DELETING"

local type AttachmentType = "CONNECT" | "SITE_TO_SITE_VPN" | "VPC" | "DIRECT_CONNECT_GATEWAY" | "TRANSIT_GATEWAY_ROUTE_TABLE"

local type CoreNetworkPolicyAlias = "LIVE" | "LATEST"

local type PeeringState = "CREATING" | "FAILED" | "AVAILABLE" | "DELETING"

local type PeeringType = "TRANSIT_GATEWAY"

local type RouteTableType = "TRANSIT_GATEWAY_ROUTE_TABLE" | "CORE_NETWORK_SEGMENT" | "NETWORK_FUNCTION_GROUP"

local record M
    AcceptAttachmentInput: AcceptAttachmentInput
    AcceptAttachmentOutput: AcceptAttachmentOutput
    AssociateConnectPeerInput: AssociateConnectPeerInput
    AssociateConnectPeerOutput: AssociateConnectPeerOutput
    AssociateCustomerGatewayInput: AssociateCustomerGatewayInput
    AssociateCustomerGatewayOutput: AssociateCustomerGatewayOutput
    AssociateLinkInput: AssociateLinkInput
    AssociateLinkOutput: AssociateLinkOutput
    AssociateTransitGatewayConnectPeerInput: AssociateTransitGatewayConnectPeerInput
    AssociateTransitGatewayConnectPeerOutput: AssociateTransitGatewayConnectPeerOutput
    CreateConnectAttachmentInput: CreateConnectAttachmentInput
    CreateConnectAttachmentOutput: CreateConnectAttachmentOutput
    CreateConnectionInput: CreateConnectionInput
    CreateConnectionOutput: CreateConnectionOutput
    CreateConnectPeerInput: CreateConnectPeerInput
    CreateConnectPeerOutput: CreateConnectPeerOutput
    CreateCoreNetworkInput: CreateCoreNetworkInput
    CreateCoreNetworkOutput: CreateCoreNetworkOutput
    CreateCoreNetworkPrefixListAssociationInput: CreateCoreNetworkPrefixListAssociationInput
    CreateCoreNetworkPrefixListAssociationOutput: CreateCoreNetworkPrefixListAssociationOutput
    CreateDeviceInput: CreateDeviceInput
    CreateDeviceOutput: CreateDeviceOutput
    CreateDirectConnectGatewayAttachmentInput: CreateDirectConnectGatewayAttachmentInput
    CreateDirectConnectGatewayAttachmentOutput: CreateDirectConnectGatewayAttachmentOutput
    CreateGlobalNetworkInput: CreateGlobalNetworkInput
    CreateGlobalNetworkOutput: CreateGlobalNetworkOutput
    CreateLinkInput: CreateLinkInput
    CreateLinkOutput: CreateLinkOutput
    CreateSiteInput: CreateSiteInput
    CreateSiteOutput: CreateSiteOutput
    CreateSiteToSiteVpnAttachmentInput: CreateSiteToSiteVpnAttachmentInput
    CreateSiteToSiteVpnAttachmentOutput: CreateSiteToSiteVpnAttachmentOutput
    CreateTransitGatewayPeeringInput: CreateTransitGatewayPeeringInput
    CreateTransitGatewayPeeringOutput: CreateTransitGatewayPeeringOutput
    CreateTransitGatewayRouteTableAttachmentInput: CreateTransitGatewayRouteTableAttachmentInput
    CreateTransitGatewayRouteTableAttachmentOutput: CreateTransitGatewayRouteTableAttachmentOutput
    CreateVpcAttachmentInput: CreateVpcAttachmentInput
    CreateVpcAttachmentOutput: CreateVpcAttachmentOutput
    DeleteAttachmentInput: DeleteAttachmentInput
    DeleteAttachmentOutput: DeleteAttachmentOutput
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteConnectPeerInput: DeleteConnectPeerInput
    DeleteConnectPeerOutput: DeleteConnectPeerOutput
    DeleteCoreNetworkInput: DeleteCoreNetworkInput
    DeleteCoreNetworkOutput: DeleteCoreNetworkOutput
    DeleteCoreNetworkPolicyVersionInput: DeleteCoreNetworkPolicyVersionInput
    DeleteCoreNetworkPolicyVersionOutput: DeleteCoreNetworkPolicyVersionOutput
    DeleteCoreNetworkPrefixListAssociationInput: DeleteCoreNetworkPrefixListAssociationInput
    DeleteCoreNetworkPrefixListAssociationOutput: DeleteCoreNetworkPrefixListAssociationOutput
    DeleteDeviceInput: DeleteDeviceInput
    DeleteDeviceOutput: DeleteDeviceOutput
    DeleteGlobalNetworkInput: DeleteGlobalNetworkInput
    DeleteGlobalNetworkOutput: DeleteGlobalNetworkOutput
    DeleteLinkInput: DeleteLinkInput
    DeleteLinkOutput: DeleteLinkOutput
    DeletePeeringInput: DeletePeeringInput
    DeletePeeringOutput: DeletePeeringOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteSiteInput: DeleteSiteInput
    DeleteSiteOutput: DeleteSiteOutput
    DeregisterTransitGatewayInput: DeregisterTransitGatewayInput
    DeregisterTransitGatewayOutput: DeregisterTransitGatewayOutput
    DescribeGlobalNetworksInput: DescribeGlobalNetworksInput
    DescribeGlobalNetworksOutput: DescribeGlobalNetworksOutput
    DisassociateConnectPeerInput: DisassociateConnectPeerInput
    DisassociateConnectPeerOutput: DisassociateConnectPeerOutput
    DisassociateCustomerGatewayInput: DisassociateCustomerGatewayInput
    DisassociateCustomerGatewayOutput: DisassociateCustomerGatewayOutput
    DisassociateLinkInput: DisassociateLinkInput
    DisassociateLinkOutput: DisassociateLinkOutput
    DisassociateTransitGatewayConnectPeerInput: DisassociateTransitGatewayConnectPeerInput
    DisassociateTransitGatewayConnectPeerOutput: DisassociateTransitGatewayConnectPeerOutput
    ExecuteCoreNetworkChangeSetInput: ExecuteCoreNetworkChangeSetInput
    ExecuteCoreNetworkChangeSetOutput: ExecuteCoreNetworkChangeSetOutput
    GetConnectAttachmentInput: GetConnectAttachmentInput
    GetConnectAttachmentOutput: GetConnectAttachmentOutput
    GetConnectionsInput: GetConnectionsInput
    GetConnectionsOutput: GetConnectionsOutput
    GetConnectPeerInput: GetConnectPeerInput
    GetConnectPeerOutput: GetConnectPeerOutput
    GetConnectPeerAssociationsInput: GetConnectPeerAssociationsInput
    GetConnectPeerAssociationsOutput: GetConnectPeerAssociationsOutput
    GetCoreNetworkInput: GetCoreNetworkInput
    GetCoreNetworkOutput: GetCoreNetworkOutput
    GetCoreNetworkChangeEventsInput: GetCoreNetworkChangeEventsInput
    GetCoreNetworkChangeEventsOutput: GetCoreNetworkChangeEventsOutput
    GetCoreNetworkChangeSetInput: GetCoreNetworkChangeSetInput
    GetCoreNetworkChangeSetOutput: GetCoreNetworkChangeSetOutput
    GetCoreNetworkPolicyInput: GetCoreNetworkPolicyInput
    GetCoreNetworkPolicyOutput: GetCoreNetworkPolicyOutput
    GetCustomerGatewayAssociationsInput: GetCustomerGatewayAssociationsInput
    GetCustomerGatewayAssociationsOutput: GetCustomerGatewayAssociationsOutput
    GetDevicesInput: GetDevicesInput
    GetDevicesOutput: GetDevicesOutput
    GetDirectConnectGatewayAttachmentInput: GetDirectConnectGatewayAttachmentInput
    GetDirectConnectGatewayAttachmentOutput: GetDirectConnectGatewayAttachmentOutput
    GetLinkAssociationsInput: GetLinkAssociationsInput
    GetLinkAssociationsOutput: GetLinkAssociationsOutput
    GetLinksInput: GetLinksInput
    GetLinksOutput: GetLinksOutput
    GetNetworkResourceCountsInput: GetNetworkResourceCountsInput
    GetNetworkResourceCountsOutput: GetNetworkResourceCountsOutput
    GetNetworkResourceRelationshipsInput: GetNetworkResourceRelationshipsInput
    GetNetworkResourceRelationshipsOutput: GetNetworkResourceRelationshipsOutput
    GetNetworkResourcesInput: GetNetworkResourcesInput
    GetNetworkResourcesOutput: GetNetworkResourcesOutput
    GetNetworkRoutesInput: GetNetworkRoutesInput
    GetNetworkRoutesOutput: GetNetworkRoutesOutput
    GetNetworkTelemetryInput: GetNetworkTelemetryInput
    GetNetworkTelemetryOutput: GetNetworkTelemetryOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetRouteAnalysisInput: GetRouteAnalysisInput
    GetRouteAnalysisOutput: GetRouteAnalysisOutput
    GetSitesInput: GetSitesInput
    GetSitesOutput: GetSitesOutput
    GetSiteToSiteVpnAttachmentInput: GetSiteToSiteVpnAttachmentInput
    GetSiteToSiteVpnAttachmentOutput: GetSiteToSiteVpnAttachmentOutput
    GetTransitGatewayConnectPeerAssociationsInput: GetTransitGatewayConnectPeerAssociationsInput
    GetTransitGatewayConnectPeerAssociationsOutput: GetTransitGatewayConnectPeerAssociationsOutput
    GetTransitGatewayPeeringInput: GetTransitGatewayPeeringInput
    GetTransitGatewayPeeringOutput: GetTransitGatewayPeeringOutput
    GetTransitGatewayRegistrationsInput: GetTransitGatewayRegistrationsInput
    GetTransitGatewayRegistrationsOutput: GetTransitGatewayRegistrationsOutput
    GetTransitGatewayRouteTableAttachmentInput: GetTransitGatewayRouteTableAttachmentInput
    GetTransitGatewayRouteTableAttachmentOutput: GetTransitGatewayRouteTableAttachmentOutput
    GetVpcAttachmentInput: GetVpcAttachmentInput
    GetVpcAttachmentOutput: GetVpcAttachmentOutput
    ListAttachmentRoutingPolicyAssociationsInput: ListAttachmentRoutingPolicyAssociationsInput
    ListAttachmentRoutingPolicyAssociationsOutput: ListAttachmentRoutingPolicyAssociationsOutput
    ListAttachmentsInput: ListAttachmentsInput
    ListAttachmentsOutput: ListAttachmentsOutput
    ListConnectPeersInput: ListConnectPeersInput
    ListConnectPeersOutput: ListConnectPeersOutput
    ListCoreNetworkPolicyVersionsInput: ListCoreNetworkPolicyVersionsInput
    ListCoreNetworkPolicyVersionsOutput: ListCoreNetworkPolicyVersionsOutput
    ListCoreNetworkPrefixListAssociationsInput: ListCoreNetworkPrefixListAssociationsInput
    ListCoreNetworkPrefixListAssociationsOutput: ListCoreNetworkPrefixListAssociationsOutput
    ListCoreNetworkRoutingInformationInput: ListCoreNetworkRoutingInformationInput
    ListCoreNetworkRoutingInformationOutput: ListCoreNetworkRoutingInformationOutput
    ListCoreNetworksInput: ListCoreNetworksInput
    ListCoreNetworksOutput: ListCoreNetworksOutput
    ListOrganizationServiceAccessStatusInput: ListOrganizationServiceAccessStatusInput
    ListOrganizationServiceAccessStatusOutput: ListOrganizationServiceAccessStatusOutput
    ListPeeringsInput: ListPeeringsInput
    ListPeeringsOutput: ListPeeringsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutAttachmentRoutingPolicyLabelInput: PutAttachmentRoutingPolicyLabelInput
    PutAttachmentRoutingPolicyLabelOutput: PutAttachmentRoutingPolicyLabelOutput
    PutCoreNetworkPolicyInput: PutCoreNetworkPolicyInput
    PutCoreNetworkPolicyOutput: PutCoreNetworkPolicyOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RegisterTransitGatewayInput: RegisterTransitGatewayInput
    RegisterTransitGatewayOutput: RegisterTransitGatewayOutput
    RejectAttachmentInput: RejectAttachmentInput
    RejectAttachmentOutput: RejectAttachmentOutput
    RemoveAttachmentRoutingPolicyLabelInput: RemoveAttachmentRoutingPolicyLabelInput
    RemoveAttachmentRoutingPolicyLabelOutput: RemoveAttachmentRoutingPolicyLabelOutput
    RestoreCoreNetworkPolicyVersionInput: RestoreCoreNetworkPolicyVersionInput
    RestoreCoreNetworkPolicyVersionOutput: RestoreCoreNetworkPolicyVersionOutput
    StartOrganizationServiceAccessUpdateInput: StartOrganizationServiceAccessUpdateInput
    StartOrganizationServiceAccessUpdateOutput: StartOrganizationServiceAccessUpdateOutput
    StartRouteAnalysisInput: StartRouteAnalysisInput
    StartRouteAnalysisOutput: StartRouteAnalysisOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConnectionInput: UpdateConnectionInput
    UpdateConnectionOutput: UpdateConnectionOutput
    UpdateCoreNetworkInput: UpdateCoreNetworkInput
    UpdateCoreNetworkOutput: UpdateCoreNetworkOutput
    UpdateDeviceInput: UpdateDeviceInput
    UpdateDeviceOutput: UpdateDeviceOutput
    UpdateDirectConnectGatewayAttachmentInput: UpdateDirectConnectGatewayAttachmentInput
    UpdateDirectConnectGatewayAttachmentOutput: UpdateDirectConnectGatewayAttachmentOutput
    UpdateGlobalNetworkInput: UpdateGlobalNetworkInput
    UpdateGlobalNetworkOutput: UpdateGlobalNetworkOutput
    UpdateLinkInput: UpdateLinkInput
    UpdateLinkOutput: UpdateLinkOutput
    UpdateNetworkResourceMetadataInput: UpdateNetworkResourceMetadataInput
    UpdateNetworkResourceMetadataOutput: UpdateNetworkResourceMetadataOutput
    UpdateSiteInput: UpdateSiteInput
    UpdateSiteOutput: UpdateSiteOutput
    UpdateVpcAttachmentInput: UpdateVpcAttachmentInput
    UpdateVpcAttachmentOutput: UpdateVpcAttachmentOutput
end

return M
