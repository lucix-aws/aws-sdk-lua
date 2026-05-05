local record AcceptDirectConnectGatewayAssociationProposalInput
    directConnectGatewayId: string
    proposalId: string
    associatedGatewayOwnerAccount: string
    overrideAllowedPrefixesToDirectConnectGateway: {RouteFilterPrefix}
end

local record AcceptDirectConnectGatewayAssociationProposalOutput
    directConnectGatewayAssociation: DirectConnectGatewayAssociation
end

local record AllocateConnectionOnInterconnectInput
    bandwidth: string
    connectionName: string
    ownerAccount: string
    interconnectId: string
    vlan: number
end

local record AllocateConnectionOnInterconnectOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record AllocateHostedConnectionInput
    connectionId: string
    ownerAccount: string
    bandwidth: string
    connectionName: string
    vlan: number
    tags: {Tag}
end

local record AllocateHostedConnectionOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record AllocatePrivateVirtualInterfaceInput
    connectionId: string
    ownerAccount: string
    newPrivateVirtualInterfaceAllocation: NewPrivateVirtualInterfaceAllocation
end

local record AllocatePrivateVirtualInterfaceOutput
    ownerAccount: string
    virtualInterfaceId: string
    location: string
    connectionId: string
    virtualInterfaceType: string
    virtualInterfaceName: string
    vlan: number
    asn: number
    asnLong: number
    amazonSideAsn: number
    authKey: string
    amazonAddress: string
    customerAddress: string
    addressFamily: string
    virtualInterfaceState: string
    customerRouterConfig: string
    mtu: number
    jumboFrameCapable: boolean
    virtualGatewayId: string
    directConnectGatewayId: string
    routeFilterPrefixes: {RouteFilterPrefix}
    bgpPeers: {BGPPeer}
    region: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    tags: {Tag}
    siteLinkEnabled: boolean
end

local record AllocatePublicVirtualInterfaceInput
    connectionId: string
    ownerAccount: string
    newPublicVirtualInterfaceAllocation: NewPublicVirtualInterfaceAllocation
end

local record AllocatePublicVirtualInterfaceOutput
    ownerAccount: string
    virtualInterfaceId: string
    location: string
    connectionId: string
    virtualInterfaceType: string
    virtualInterfaceName: string
    vlan: number
    asn: number
    asnLong: number
    amazonSideAsn: number
    authKey: string
    amazonAddress: string
    customerAddress: string
    addressFamily: string
    virtualInterfaceState: string
    customerRouterConfig: string
    mtu: number
    jumboFrameCapable: boolean
    virtualGatewayId: string
    directConnectGatewayId: string
    routeFilterPrefixes: {RouteFilterPrefix}
    bgpPeers: {BGPPeer}
    region: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    tags: {Tag}
    siteLinkEnabled: boolean
end

local record AllocateTransitVirtualInterfaceInput
    connectionId: string
    ownerAccount: string
    newTransitVirtualInterfaceAllocation: NewTransitVirtualInterfaceAllocation
end

local record AllocateTransitVirtualInterfaceOutput
    virtualInterface: VirtualInterface
end

local record AssociateConnectionWithLagInput
    connectionId: string
    lagId: string
end

local record AssociateConnectionWithLagOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record AssociateHostedConnectionInput
    connectionId: string
    parentConnectionId: string
end

local record AssociateHostedConnectionOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record AssociateMacSecKeyInput
    connectionId: string
    secretARN: string
    ckn: string
    cak: string
end

local record AssociateMacSecKeyOutput
    connectionId: string
    macSecKeys: {MacSecKey}
end

local record AssociateVirtualInterfaceInput
    virtualInterfaceId: string
    connectionId: string
end

local record AssociateVirtualInterfaceOutput
    ownerAccount: string
    virtualInterfaceId: string
    location: string
    connectionId: string
    virtualInterfaceType: string
    virtualInterfaceName: string
    vlan: number
    asn: number
    asnLong: number
    amazonSideAsn: number
    authKey: string
    amazonAddress: string
    customerAddress: string
    addressFamily: string
    virtualInterfaceState: string
    customerRouterConfig: string
    mtu: number
    jumboFrameCapable: boolean
    virtualGatewayId: string
    directConnectGatewayId: string
    routeFilterPrefixes: {RouteFilterPrefix}
    bgpPeers: {BGPPeer}
    region: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    tags: {Tag}
    siteLinkEnabled: boolean
end

local record ConfirmConnectionInput
    connectionId: string
end

local record ConfirmConnectionOutput
    connectionState: string
end

local record ConfirmCustomerAgreementInput
    agreementName: string
end

local record ConfirmCustomerAgreementOutput
    status: string
end

local record ConfirmPrivateVirtualInterfaceInput
    virtualInterfaceId: string
    virtualGatewayId: string
    directConnectGatewayId: string
end

local record ConfirmPrivateVirtualInterfaceOutput
    virtualInterfaceState: string
end

local record ConfirmPublicVirtualInterfaceInput
    virtualInterfaceId: string
end

local record ConfirmPublicVirtualInterfaceOutput
    virtualInterfaceState: string
end

local record ConfirmTransitVirtualInterfaceInput
    virtualInterfaceId: string
    directConnectGatewayId: string
end

local record ConfirmTransitVirtualInterfaceOutput
    virtualInterfaceState: string
end

local record CreateBGPPeerInput
    virtualInterfaceId: string
    newBGPPeer: NewBGPPeer
end

local record CreateBGPPeerOutput
    virtualInterface: VirtualInterface
end

local record CreateConnectionInput
    location: string
    bandwidth: string
    connectionName: string
    lagId: string
    tags: {Tag}
    providerName: string
    requestMACSec: boolean
end

local record CreateConnectionOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record CreateDirectConnectGatewayInput
    directConnectGatewayName: string
    tags: {Tag}
    amazonSideAsn: number
end

local record CreateDirectConnectGatewayOutput
    directConnectGateway: DirectConnectGateway
end

local record CreateDirectConnectGatewayAssociationInput
    directConnectGatewayId: string
    gatewayId: string
    addAllowedPrefixesToDirectConnectGateway: {RouteFilterPrefix}
    virtualGatewayId: string
end

local record CreateDirectConnectGatewayAssociationOutput
    directConnectGatewayAssociation: DirectConnectGatewayAssociation
end

local record CreateDirectConnectGatewayAssociationProposalInput
    directConnectGatewayId: string
    directConnectGatewayOwnerAccount: string
    gatewayId: string
    addAllowedPrefixesToDirectConnectGateway: {RouteFilterPrefix}
    removeAllowedPrefixesToDirectConnectGateway: {RouteFilterPrefix}
end

local record CreateDirectConnectGatewayAssociationProposalOutput
    directConnectGatewayAssociationProposal: DirectConnectGatewayAssociationProposal
end

local record CreateInterconnectInput
    interconnectName: string
    bandwidth: string
    location: string
    lagId: string
    tags: {Tag}
    providerName: string
    requestMACSec: boolean
end

local record CreateInterconnectOutput
    interconnectId: string
    interconnectName: string
    interconnectState: string
    region: string
    location: string
    bandwidth: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
end

local record CreateLagInput
    numberOfConnections: number
    location: string
    connectionsBandwidth: string
    lagName: string
    connectionId: string
    tags: {Tag}
    childConnectionTags: {Tag}
    providerName: string
    requestMACSec: boolean
end

local record CreateLagOutput
    connectionsBandwidth: string
    numberOfConnections: number
    lagId: string
    ownerAccount: string
    lagName: string
    lagState: string
    location: string
    region: string
    minimumLinks: number
    awsDevice: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    connections: {Connection}
    allowsHostedConnections: boolean
    jumboFrameCapable: boolean
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    encryptionMode: string
    macSecKeys: {MacSecKey}
end

local record CreatePrivateVirtualInterfaceInput
    connectionId: string
    newPrivateVirtualInterface: NewPrivateVirtualInterface
end

local record CreatePrivateVirtualInterfaceOutput
    ownerAccount: string
    virtualInterfaceId: string
    location: string
    connectionId: string
    virtualInterfaceType: string
    virtualInterfaceName: string
    vlan: number
    asn: number
    asnLong: number
    amazonSideAsn: number
    authKey: string
    amazonAddress: string
    customerAddress: string
    addressFamily: string
    virtualInterfaceState: string
    customerRouterConfig: string
    mtu: number
    jumboFrameCapable: boolean
    virtualGatewayId: string
    directConnectGatewayId: string
    routeFilterPrefixes: {RouteFilterPrefix}
    bgpPeers: {BGPPeer}
    region: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    tags: {Tag}
    siteLinkEnabled: boolean
end

local record CreatePublicVirtualInterfaceInput
    connectionId: string
    newPublicVirtualInterface: NewPublicVirtualInterface
end

local record CreatePublicVirtualInterfaceOutput
    ownerAccount: string
    virtualInterfaceId: string
    location: string
    connectionId: string
    virtualInterfaceType: string
    virtualInterfaceName: string
    vlan: number
    asn: number
    asnLong: number
    amazonSideAsn: number
    authKey: string
    amazonAddress: string
    customerAddress: string
    addressFamily: string
    virtualInterfaceState: string
    customerRouterConfig: string
    mtu: number
    jumboFrameCapable: boolean
    virtualGatewayId: string
    directConnectGatewayId: string
    routeFilterPrefixes: {RouteFilterPrefix}
    bgpPeers: {BGPPeer}
    region: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    tags: {Tag}
    siteLinkEnabled: boolean
end

local record CreateTransitVirtualInterfaceInput
    connectionId: string
    newTransitVirtualInterface: NewTransitVirtualInterface
end

local record CreateTransitVirtualInterfaceOutput
    virtualInterface: VirtualInterface
end

local record DeleteBGPPeerInput
    virtualInterfaceId: string
    asn: number
    asnLong: number
    customerAddress: string
    bgpPeerId: string
end

local record DeleteBGPPeerOutput
    virtualInterface: VirtualInterface
end

local record DeleteConnectionInput
    connectionId: string
end

local record DeleteConnectionOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record DeleteDirectConnectGatewayInput
    directConnectGatewayId: string
end

local record DeleteDirectConnectGatewayOutput
    directConnectGateway: DirectConnectGateway
end

local record DeleteDirectConnectGatewayAssociationInput
    associationId: string
    directConnectGatewayId: string
    virtualGatewayId: string
end

local record DeleteDirectConnectGatewayAssociationOutput
    directConnectGatewayAssociation: DirectConnectGatewayAssociation
end

local record DeleteDirectConnectGatewayAssociationProposalInput
    proposalId: string
end

local record DeleteDirectConnectGatewayAssociationProposalOutput
    directConnectGatewayAssociationProposal: DirectConnectGatewayAssociationProposal
end

local record DeleteInterconnectInput
    interconnectId: string
end

local record DeleteInterconnectOutput
    interconnectState: string
end

local record DeleteLagInput
    lagId: string
end

local record DeleteLagOutput
    connectionsBandwidth: string
    numberOfConnections: number
    lagId: string
    ownerAccount: string
    lagName: string
    lagState: string
    location: string
    region: string
    minimumLinks: number
    awsDevice: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    connections: {Connection}
    allowsHostedConnections: boolean
    jumboFrameCapable: boolean
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    encryptionMode: string
    macSecKeys: {MacSecKey}
end

local record DeleteVirtualInterfaceInput
    virtualInterfaceId: string
end

local record DeleteVirtualInterfaceOutput
    virtualInterfaceState: string
end

local record DescribeConnectionLoaInput
    connectionId: string
    providerName: string
    loaContentType: string
end

local record DescribeConnectionLoaOutput
    loa: Loa
end

local record DescribeConnectionsInput
    connectionId: string
    maxResults: number
    nextToken: string
end

local record DescribeConnectionsOutput
    connections: {Connection}
    nextToken: string
end

local record DescribeConnectionsOnInterconnectInput
    interconnectId: string
end

local record DescribeConnectionsOnInterconnectOutput
    connections: {Connection}
    nextToken: string
end

local record DescribeCustomerMetadataInput
end

local record DescribeCustomerMetadataOutput
    agreements: {CustomerAgreement}
    nniPartnerType: string
end

local record DescribeDirectConnectGatewayAssociationProposalsInput
    directConnectGatewayId: string
    proposalId: string
    associatedGatewayId: string
    maxResults: number
    nextToken: string
end

local record DescribeDirectConnectGatewayAssociationProposalsOutput
    directConnectGatewayAssociationProposals: {DirectConnectGatewayAssociationProposal}
    nextToken: string
end

local record DescribeDirectConnectGatewayAssociationsInput
    associationId: string
    associatedGatewayId: string
    directConnectGatewayId: string
    maxResults: number
    nextToken: string
    virtualGatewayId: string
end

local record DescribeDirectConnectGatewayAssociationsOutput
    directConnectGatewayAssociations: {DirectConnectGatewayAssociation}
    nextToken: string
end

local record DescribeDirectConnectGatewayAttachmentsInput
    directConnectGatewayId: string
    virtualInterfaceId: string
    maxResults: number
    nextToken: string
end

local record DescribeDirectConnectGatewayAttachmentsOutput
    directConnectGatewayAttachments: {DirectConnectGatewayAttachment}
    nextToken: string
end

local record DescribeDirectConnectGatewaysInput
    directConnectGatewayId: string
    maxResults: number
    nextToken: string
end

local record DescribeDirectConnectGatewaysOutput
    directConnectGateways: {DirectConnectGateway}
    nextToken: string
end

local record DescribeHostedConnectionsInput
    connectionId: string
    maxResults: number
    nextToken: string
end

local record DescribeHostedConnectionsOutput
    connections: {Connection}
    nextToken: string
end

local record DescribeInterconnectLoaInput
    interconnectId: string
    providerName: string
    loaContentType: string
end

local record DescribeInterconnectLoaOutput
    loa: Loa
end

local record DescribeInterconnectsInput
    interconnectId: string
    maxResults: number
    nextToken: string
end

local record DescribeInterconnectsOutput
    interconnects: {Interconnect}
    nextToken: string
end

local record DescribeLagsInput
    lagId: string
    maxResults: number
    nextToken: string
end

local record DescribeLagsOutput
    lags: {Lag}
    nextToken: string
end

local record DescribeLoaInput
    connectionId: string
    providerName: string
    loaContentType: string
end

local record DescribeLoaOutput
    loaContent: string
    loaContentType: string
end

local record DescribeLocationsInput
end

local record DescribeLocationsOutput
    locations: {Location}
end

local record DescribeRouterConfigurationInput
    virtualInterfaceId: string
    routerTypeIdentifier: string
end

local record DescribeRouterConfigurationOutput
    customerRouterConfig: string
    router: RouterType
    virtualInterfaceId: string
    virtualInterfaceName: string
end

local record DescribeTagsInput
    resourceArns: {string}
end

local record DescribeTagsOutput
    resourceTags: {ResourceTag}
end

local record DescribeVirtualGatewaysInput
end

local record DescribeVirtualGatewaysOutput
    virtualGateways: {VirtualGateway}
end

local record DescribeVirtualInterfacesInput
    connectionId: string
    virtualInterfaceId: string
    maxResults: number
    nextToken: string
end

local record DescribeVirtualInterfacesOutput
    virtualInterfaces: {VirtualInterface}
    nextToken: string
end

local record DisassociateConnectionFromLagInput
    connectionId: string
    lagId: string
end

local record DisassociateConnectionFromLagOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record DisassociateMacSecKeyInput
    connectionId: string
    secretARN: string
end

local record DisassociateMacSecKeyOutput
    connectionId: string
    macSecKeys: {MacSecKey}
end

local record ListVirtualInterfaceTestHistoryInput
    testId: string
    virtualInterfaceId: string
    bgpPeers: {string}
    status: string
    maxResults: number
    nextToken: string
end

local record ListVirtualInterfaceTestHistoryOutput
    virtualInterfaceTestHistory: {VirtualInterfaceTestHistory}
    nextToken: string
end

local record StartBgpFailoverTestInput
    virtualInterfaceId: string
    bgpPeers: {string}
    testDurationInMinutes: number
end

local record StartBgpFailoverTestOutput
    virtualInterfaceTest: VirtualInterfaceTestHistory
end

local record StopBgpFailoverTestInput
    virtualInterfaceId: string
end

local record StopBgpFailoverTestOutput
    virtualInterfaceTest: VirtualInterfaceTestHistory
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateConnectionInput
    connectionId: string
    connectionName: string
    encryptionMode: string
end

local record UpdateConnectionOutput
    ownerAccount: string
    connectionId: string
    connectionName: string
    connectionState: string
    region: string
    location: string
    bandwidth: string
    vlan: number
    partnerName: string
    loaIssueTime: number
    lagId: string
    awsDevice: string
    jumboFrameCapable: boolean
    awsDeviceV2: string
    awsLogicalDeviceId: string
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    portEncryptionStatus: string
    encryptionMode: string
    macSecKeys: {MacSecKey}
    partnerInterconnectMacSecCapable: boolean
end

local record UpdateDirectConnectGatewayInput
    directConnectGatewayId: string
    newDirectConnectGatewayName: string
end

local record UpdateDirectConnectGatewayOutput
    directConnectGateway: DirectConnectGateway
end

local record UpdateDirectConnectGatewayAssociationInput
    associationId: string
    addAllowedPrefixesToDirectConnectGateway: {RouteFilterPrefix}
    removeAllowedPrefixesToDirectConnectGateway: {RouteFilterPrefix}
end

local record UpdateDirectConnectGatewayAssociationOutput
    directConnectGatewayAssociation: DirectConnectGatewayAssociation
end

local record UpdateLagInput
    lagId: string
    lagName: string
    minimumLinks: number
    encryptionMode: string
end

local record UpdateLagOutput
    connectionsBandwidth: string
    numberOfConnections: number
    lagId: string
    ownerAccount: string
    lagName: string
    lagState: string
    location: string
    region: string
    minimumLinks: number
    awsDevice: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    connections: {Connection}
    allowsHostedConnections: boolean
    jumboFrameCapable: boolean
    hasLogicalRedundancy: string
    tags: {Tag}
    providerName: string
    macSecCapable: boolean
    encryptionMode: string
    macSecKeys: {MacSecKey}
end

local record UpdateVirtualInterfaceAttributesInput
    virtualInterfaceId: string
    mtu: number
    enableSiteLink: boolean
    virtualInterfaceName: string
end

local record UpdateVirtualInterfaceAttributesOutput
    ownerAccount: string
    virtualInterfaceId: string
    location: string
    connectionId: string
    virtualInterfaceType: string
    virtualInterfaceName: string
    vlan: number
    asn: number
    asnLong: number
    amazonSideAsn: number
    authKey: string
    amazonAddress: string
    customerAddress: string
    addressFamily: string
    virtualInterfaceState: string
    customerRouterConfig: string
    mtu: number
    jumboFrameCapable: boolean
    virtualGatewayId: string
    directConnectGatewayId: string
    routeFilterPrefixes: {RouteFilterPrefix}
    bgpPeers: {BGPPeer}
    region: string
    awsDeviceV2: string
    awsLogicalDeviceId: string
    tags: {Tag}
    siteLinkEnabled: boolean
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DuplicateTagKeysException
    message: string
end

local record TooManyTagsException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local record DirectConnectClientException
    message: string
end

local record DirectConnectServerException
    message: string
end

local type NniPartnerType = "v1" | "v2" | "nonPartner"

local type InterconnectState = "requested" | "pending" | "available" | "down" | "deleting" | "deleted" | "unknown"

local type VirtualInterfaceState = "confirming" | "verifying" | "pending" | "available" | "down" | "testing" | "deleting" | "deleted" | "rejected" | "unknown"

local type LagState = "requested" | "pending" | "available" | "down" | "deleting" | "deleted" | "unknown"

local type AddressFamily = "ipv4" | "ipv6"

local type ConnectionState = "ordering" | "requested" | "pending" | "available" | "down" | "deleting" | "deleted" | "rejected" | "unknown"

local type HasLogicalRedundancy = "unknown" | "yes" | "no"

local type LoaContentType = "application/pdf"

local record M
    AcceptDirectConnectGatewayAssociationProposalInput: AcceptDirectConnectGatewayAssociationProposalInput
    AcceptDirectConnectGatewayAssociationProposalOutput: AcceptDirectConnectGatewayAssociationProposalOutput
    AllocateConnectionOnInterconnectInput: AllocateConnectionOnInterconnectInput
    AllocateConnectionOnInterconnectOutput: AllocateConnectionOnInterconnectOutput
    AllocateHostedConnectionInput: AllocateHostedConnectionInput
    AllocateHostedConnectionOutput: AllocateHostedConnectionOutput
    AllocatePrivateVirtualInterfaceInput: AllocatePrivateVirtualInterfaceInput
    AllocatePrivateVirtualInterfaceOutput: AllocatePrivateVirtualInterfaceOutput
    AllocatePublicVirtualInterfaceInput: AllocatePublicVirtualInterfaceInput
    AllocatePublicVirtualInterfaceOutput: AllocatePublicVirtualInterfaceOutput
    AllocateTransitVirtualInterfaceInput: AllocateTransitVirtualInterfaceInput
    AllocateTransitVirtualInterfaceOutput: AllocateTransitVirtualInterfaceOutput
    AssociateConnectionWithLagInput: AssociateConnectionWithLagInput
    AssociateConnectionWithLagOutput: AssociateConnectionWithLagOutput
    AssociateHostedConnectionInput: AssociateHostedConnectionInput
    AssociateHostedConnectionOutput: AssociateHostedConnectionOutput
    AssociateMacSecKeyInput: AssociateMacSecKeyInput
    AssociateMacSecKeyOutput: AssociateMacSecKeyOutput
    AssociateVirtualInterfaceInput: AssociateVirtualInterfaceInput
    AssociateVirtualInterfaceOutput: AssociateVirtualInterfaceOutput
    ConfirmConnectionInput: ConfirmConnectionInput
    ConfirmConnectionOutput: ConfirmConnectionOutput
    ConfirmCustomerAgreementInput: ConfirmCustomerAgreementInput
    ConfirmCustomerAgreementOutput: ConfirmCustomerAgreementOutput
    ConfirmPrivateVirtualInterfaceInput: ConfirmPrivateVirtualInterfaceInput
    ConfirmPrivateVirtualInterfaceOutput: ConfirmPrivateVirtualInterfaceOutput
    ConfirmPublicVirtualInterfaceInput: ConfirmPublicVirtualInterfaceInput
    ConfirmPublicVirtualInterfaceOutput: ConfirmPublicVirtualInterfaceOutput
    ConfirmTransitVirtualInterfaceInput: ConfirmTransitVirtualInterfaceInput
    ConfirmTransitVirtualInterfaceOutput: ConfirmTransitVirtualInterfaceOutput
    CreateBGPPeerInput: CreateBGPPeerInput
    CreateBGPPeerOutput: CreateBGPPeerOutput
    CreateConnectionInput: CreateConnectionInput
    CreateConnectionOutput: CreateConnectionOutput
    CreateDirectConnectGatewayInput: CreateDirectConnectGatewayInput
    CreateDirectConnectGatewayOutput: CreateDirectConnectGatewayOutput
    CreateDirectConnectGatewayAssociationInput: CreateDirectConnectGatewayAssociationInput
    CreateDirectConnectGatewayAssociationOutput: CreateDirectConnectGatewayAssociationOutput
    CreateDirectConnectGatewayAssociationProposalInput: CreateDirectConnectGatewayAssociationProposalInput
    CreateDirectConnectGatewayAssociationProposalOutput: CreateDirectConnectGatewayAssociationProposalOutput
    CreateInterconnectInput: CreateInterconnectInput
    CreateInterconnectOutput: CreateInterconnectOutput
    CreateLagInput: CreateLagInput
    CreateLagOutput: CreateLagOutput
    CreatePrivateVirtualInterfaceInput: CreatePrivateVirtualInterfaceInput
    CreatePrivateVirtualInterfaceOutput: CreatePrivateVirtualInterfaceOutput
    CreatePublicVirtualInterfaceInput: CreatePublicVirtualInterfaceInput
    CreatePublicVirtualInterfaceOutput: CreatePublicVirtualInterfaceOutput
    CreateTransitVirtualInterfaceInput: CreateTransitVirtualInterfaceInput
    CreateTransitVirtualInterfaceOutput: CreateTransitVirtualInterfaceOutput
    DeleteBGPPeerInput: DeleteBGPPeerInput
    DeleteBGPPeerOutput: DeleteBGPPeerOutput
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteDirectConnectGatewayInput: DeleteDirectConnectGatewayInput
    DeleteDirectConnectGatewayOutput: DeleteDirectConnectGatewayOutput
    DeleteDirectConnectGatewayAssociationInput: DeleteDirectConnectGatewayAssociationInput
    DeleteDirectConnectGatewayAssociationOutput: DeleteDirectConnectGatewayAssociationOutput
    DeleteDirectConnectGatewayAssociationProposalInput: DeleteDirectConnectGatewayAssociationProposalInput
    DeleteDirectConnectGatewayAssociationProposalOutput: DeleteDirectConnectGatewayAssociationProposalOutput
    DeleteInterconnectInput: DeleteInterconnectInput
    DeleteInterconnectOutput: DeleteInterconnectOutput
    DeleteLagInput: DeleteLagInput
    DeleteLagOutput: DeleteLagOutput
    DeleteVirtualInterfaceInput: DeleteVirtualInterfaceInput
    DeleteVirtualInterfaceOutput: DeleteVirtualInterfaceOutput
    DescribeConnectionLoaInput: DescribeConnectionLoaInput
    DescribeConnectionLoaOutput: DescribeConnectionLoaOutput
    DescribeConnectionsInput: DescribeConnectionsInput
    DescribeConnectionsOutput: DescribeConnectionsOutput
    DescribeConnectionsOnInterconnectInput: DescribeConnectionsOnInterconnectInput
    DescribeConnectionsOnInterconnectOutput: DescribeConnectionsOnInterconnectOutput
    DescribeCustomerMetadataInput: DescribeCustomerMetadataInput
    DescribeCustomerMetadataOutput: DescribeCustomerMetadataOutput
    DescribeDirectConnectGatewayAssociationProposalsInput: DescribeDirectConnectGatewayAssociationProposalsInput
    DescribeDirectConnectGatewayAssociationProposalsOutput: DescribeDirectConnectGatewayAssociationProposalsOutput
    DescribeDirectConnectGatewayAssociationsInput: DescribeDirectConnectGatewayAssociationsInput
    DescribeDirectConnectGatewayAssociationsOutput: DescribeDirectConnectGatewayAssociationsOutput
    DescribeDirectConnectGatewayAttachmentsInput: DescribeDirectConnectGatewayAttachmentsInput
    DescribeDirectConnectGatewayAttachmentsOutput: DescribeDirectConnectGatewayAttachmentsOutput
    DescribeDirectConnectGatewaysInput: DescribeDirectConnectGatewaysInput
    DescribeDirectConnectGatewaysOutput: DescribeDirectConnectGatewaysOutput
    DescribeHostedConnectionsInput: DescribeHostedConnectionsInput
    DescribeHostedConnectionsOutput: DescribeHostedConnectionsOutput
    DescribeInterconnectLoaInput: DescribeInterconnectLoaInput
    DescribeInterconnectLoaOutput: DescribeInterconnectLoaOutput
    DescribeInterconnectsInput: DescribeInterconnectsInput
    DescribeInterconnectsOutput: DescribeInterconnectsOutput
    DescribeLagsInput: DescribeLagsInput
    DescribeLagsOutput: DescribeLagsOutput
    DescribeLoaInput: DescribeLoaInput
    DescribeLoaOutput: DescribeLoaOutput
    DescribeLocationsInput: DescribeLocationsInput
    DescribeLocationsOutput: DescribeLocationsOutput
    DescribeRouterConfigurationInput: DescribeRouterConfigurationInput
    DescribeRouterConfigurationOutput: DescribeRouterConfigurationOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DescribeVirtualGatewaysInput: DescribeVirtualGatewaysInput
    DescribeVirtualGatewaysOutput: DescribeVirtualGatewaysOutput
    DescribeVirtualInterfacesInput: DescribeVirtualInterfacesInput
    DescribeVirtualInterfacesOutput: DescribeVirtualInterfacesOutput
    DisassociateConnectionFromLagInput: DisassociateConnectionFromLagInput
    DisassociateConnectionFromLagOutput: DisassociateConnectionFromLagOutput
    DisassociateMacSecKeyInput: DisassociateMacSecKeyInput
    DisassociateMacSecKeyOutput: DisassociateMacSecKeyOutput
    ListVirtualInterfaceTestHistoryInput: ListVirtualInterfaceTestHistoryInput
    ListVirtualInterfaceTestHistoryOutput: ListVirtualInterfaceTestHistoryOutput
    StartBgpFailoverTestInput: StartBgpFailoverTestInput
    StartBgpFailoverTestOutput: StartBgpFailoverTestOutput
    StopBgpFailoverTestInput: StopBgpFailoverTestInput
    StopBgpFailoverTestOutput: StopBgpFailoverTestOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConnectionInput: UpdateConnectionInput
    UpdateConnectionOutput: UpdateConnectionOutput
    UpdateDirectConnectGatewayInput: UpdateDirectConnectGatewayInput
    UpdateDirectConnectGatewayOutput: UpdateDirectConnectGatewayOutput
    UpdateDirectConnectGatewayAssociationInput: UpdateDirectConnectGatewayAssociationInput
    UpdateDirectConnectGatewayAssociationOutput: UpdateDirectConnectGatewayAssociationOutput
    UpdateLagInput: UpdateLagInput
    UpdateLagOutput: UpdateLagOutput
    UpdateVirtualInterfaceAttributesInput: UpdateVirtualInterfaceAttributesInput
    UpdateVirtualInterfaceAttributesOutput: UpdateVirtualInterfaceAttributesOutput
end

return M
