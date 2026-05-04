local types = require("directconnect.types")

local record Client
    acceptDirectConnectGatewayAssociationProposal: function(Client, types.AcceptDirectConnectGatewayAssociationProposalInput): types.AcceptDirectConnectGatewayAssociationProposalOutput, table
    allocateConnectionOnInterconnect: function(Client, types.AllocateConnectionOnInterconnectInput): types.AllocateConnectionOnInterconnectOutput, table
    allocateHostedConnection: function(Client, types.AllocateHostedConnectionInput): types.AllocateHostedConnectionOutput, table
    allocatePrivateVirtualInterface: function(Client, types.AllocatePrivateVirtualInterfaceInput): types.AllocatePrivateVirtualInterfaceOutput, table
    allocatePublicVirtualInterface: function(Client, types.AllocatePublicVirtualInterfaceInput): types.AllocatePublicVirtualInterfaceOutput, table
    allocateTransitVirtualInterface: function(Client, types.AllocateTransitVirtualInterfaceInput): types.AllocateTransitVirtualInterfaceOutput, table
    associateConnectionWithLag: function(Client, types.AssociateConnectionWithLagInput): types.AssociateConnectionWithLagOutput, table
    associateHostedConnection: function(Client, types.AssociateHostedConnectionInput): types.AssociateHostedConnectionOutput, table
    associateMacSecKey: function(Client, types.AssociateMacSecKeyInput): types.AssociateMacSecKeyOutput, table
    associateVirtualInterface: function(Client, types.AssociateVirtualInterfaceInput): types.AssociateVirtualInterfaceOutput, table
    confirmConnection: function(Client, types.ConfirmConnectionInput): types.ConfirmConnectionOutput, table
    confirmCustomerAgreement: function(Client, types.ConfirmCustomerAgreementInput): types.ConfirmCustomerAgreementOutput, table
    confirmPrivateVirtualInterface: function(Client, types.ConfirmPrivateVirtualInterfaceInput): types.ConfirmPrivateVirtualInterfaceOutput, table
    confirmPublicVirtualInterface: function(Client, types.ConfirmPublicVirtualInterfaceInput): types.ConfirmPublicVirtualInterfaceOutput, table
    confirmTransitVirtualInterface: function(Client, types.ConfirmTransitVirtualInterfaceInput): types.ConfirmTransitVirtualInterfaceOutput, table
    createBGPPeer: function(Client, types.CreateBGPPeerInput): types.CreateBGPPeerOutput, table
    createConnection: function(Client, types.CreateConnectionInput): types.CreateConnectionOutput, table
    createDirectConnectGateway: function(Client, types.CreateDirectConnectGatewayInput): types.CreateDirectConnectGatewayOutput, table
    createDirectConnectGatewayAssociation: function(Client, types.CreateDirectConnectGatewayAssociationInput): types.CreateDirectConnectGatewayAssociationOutput, table
    createDirectConnectGatewayAssociationProposal: function(Client, types.CreateDirectConnectGatewayAssociationProposalInput): types.CreateDirectConnectGatewayAssociationProposalOutput, table
    createInterconnect: function(Client, types.CreateInterconnectInput): types.CreateInterconnectOutput, table
    createLag: function(Client, types.CreateLagInput): types.CreateLagOutput, table
    createPrivateVirtualInterface: function(Client, types.CreatePrivateVirtualInterfaceInput): types.CreatePrivateVirtualInterfaceOutput, table
    createPublicVirtualInterface: function(Client, types.CreatePublicVirtualInterfaceInput): types.CreatePublicVirtualInterfaceOutput, table
    createTransitVirtualInterface: function(Client, types.CreateTransitVirtualInterfaceInput): types.CreateTransitVirtualInterfaceOutput, table
    deleteBGPPeer: function(Client, types.DeleteBGPPeerInput): types.DeleteBGPPeerOutput, table
    deleteConnection: function(Client, types.DeleteConnectionInput): types.DeleteConnectionOutput, table
    deleteDirectConnectGateway: function(Client, types.DeleteDirectConnectGatewayInput): types.DeleteDirectConnectGatewayOutput, table
    deleteDirectConnectGatewayAssociation: function(Client, types.DeleteDirectConnectGatewayAssociationInput): types.DeleteDirectConnectGatewayAssociationOutput, table
    deleteDirectConnectGatewayAssociationProposal: function(Client, types.DeleteDirectConnectGatewayAssociationProposalInput): types.DeleteDirectConnectGatewayAssociationProposalOutput, table
    deleteInterconnect: function(Client, types.DeleteInterconnectInput): types.DeleteInterconnectOutput, table
    deleteLag: function(Client, types.DeleteLagInput): types.DeleteLagOutput, table
    deleteVirtualInterface: function(Client, types.DeleteVirtualInterfaceInput): types.DeleteVirtualInterfaceOutput, table
    describeConnectionLoa: function(Client, types.DescribeConnectionLoaInput): types.DescribeConnectionLoaOutput, table
    describeConnections: function(Client, types.DescribeConnectionsInput): types.DescribeConnectionsOutput, table
    describeConnectionsOnInterconnect: function(Client, types.DescribeConnectionsOnInterconnectInput): types.DescribeConnectionsOnInterconnectOutput, table
    describeCustomerMetadata: function(Client, types.DescribeCustomerMetadataInput): types.DescribeCustomerMetadataOutput, table
    describeDirectConnectGatewayAssociationProposals: function(Client, types.DescribeDirectConnectGatewayAssociationProposalsInput): types.DescribeDirectConnectGatewayAssociationProposalsOutput, table
    describeDirectConnectGatewayAssociations: function(Client, types.DescribeDirectConnectGatewayAssociationsInput): types.DescribeDirectConnectGatewayAssociationsOutput, table
    describeDirectConnectGatewayAttachments: function(Client, types.DescribeDirectConnectGatewayAttachmentsInput): types.DescribeDirectConnectGatewayAttachmentsOutput, table
    describeDirectConnectGateways: function(Client, types.DescribeDirectConnectGatewaysInput): types.DescribeDirectConnectGatewaysOutput, table
    describeHostedConnections: function(Client, types.DescribeHostedConnectionsInput): types.DescribeHostedConnectionsOutput, table
    describeInterconnectLoa: function(Client, types.DescribeInterconnectLoaInput): types.DescribeInterconnectLoaOutput, table
    describeInterconnects: function(Client, types.DescribeInterconnectsInput): types.DescribeInterconnectsOutput, table
    describeLags: function(Client, types.DescribeLagsInput): types.DescribeLagsOutput, table
    describeLoa: function(Client, types.DescribeLoaInput): types.DescribeLoaOutput, table
    describeLocations: function(Client, types.DescribeLocationsInput): types.DescribeLocationsOutput, table
    describeRouterConfiguration: function(Client, types.DescribeRouterConfigurationInput): types.DescribeRouterConfigurationOutput, table
    describeTags: function(Client, types.DescribeTagsInput): types.DescribeTagsOutput, table
    describeVirtualGateways: function(Client, types.DescribeVirtualGatewaysInput): types.DescribeVirtualGatewaysOutput, table
    describeVirtualInterfaces: function(Client, types.DescribeVirtualInterfacesInput): types.DescribeVirtualInterfacesOutput, table
    disassociateConnectionFromLag: function(Client, types.DisassociateConnectionFromLagInput): types.DisassociateConnectionFromLagOutput, table
    disassociateMacSecKey: function(Client, types.DisassociateMacSecKeyInput): types.DisassociateMacSecKeyOutput, table
    listVirtualInterfaceTestHistory: function(Client, types.ListVirtualInterfaceTestHistoryInput): types.ListVirtualInterfaceTestHistoryOutput, table
    startBgpFailoverTest: function(Client, types.StartBgpFailoverTestInput): types.StartBgpFailoverTestOutput, table
    stopBgpFailoverTest: function(Client, types.StopBgpFailoverTestInput): types.StopBgpFailoverTestOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateConnection: function(Client, types.UpdateConnectionInput): types.UpdateConnectionOutput, table
    updateDirectConnectGateway: function(Client, types.UpdateDirectConnectGatewayInput): types.UpdateDirectConnectGatewayOutput, table
    updateDirectConnectGatewayAssociation: function(Client, types.UpdateDirectConnectGatewayAssociationInput): types.UpdateDirectConnectGatewayAssociationOutput, table
    updateLag: function(Client, types.UpdateLagInput): types.UpdateLagOutput, table
    updateVirtualInterfaceAttributes: function(Client, types.UpdateVirtualInterfaceAttributesInput): types.UpdateVirtualInterfaceAttributesOutput, table
end

local record M
    new: function(table): Client
end

return M
