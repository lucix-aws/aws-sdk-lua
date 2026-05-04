local M = {}

M.RouteFilterPrefix = {
    type = "structure",
    members = {
        cidr = {
            type = "string",
        },
    },
}

M.AcceptDirectConnectGatewayAssociationProposalInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        proposalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedGatewayOwnerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        overrideAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociatedCoreNetwork = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        attachmentId = {
            type = "string",
        },
    },
}

M.GatewayType = {
    VirtualPrivateGateway = "virtualPrivateGateway",
    TransitGateway = "transitGateway",
}

M.AssociatedGateway = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        region = {
            type = "string",
        },
    },
}

M.DirectConnectGatewayAssociationState = {
    associating = "associating",
    associated = "associated",
    disassociating = "disassociating",
    disassociated = "disassociated",
    updating = "updating",
}

M.DirectConnectGatewayAssociation = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
        },
        directConnectGatewayOwnerAccount = {
            type = "string",
        },
        associationState = {
            type = "string",
        },
        stateChangeError = {
            type = "string",
        },
        associatedGateway = {
            type = "structure",
        },
        associationId = {
            type = "string",
        },
        allowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
        associatedCoreNetwork = {
            type = "structure",
        },
        virtualGatewayId = {
            type = "string",
        },
        virtualGatewayRegion = {
            type = "string",
        },
        virtualGatewayOwnerAccount = {
            type = "string",
        },
    },
}

M.AcceptDirectConnectGatewayAssociationProposalOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociation = {
            type = "structure",
        },
    },
}

M.DirectConnectClientException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DirectConnectServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddressFamily = {
    IPv4 = "ipv4",
    IPv6 = "ipv6",
}

M.CustomerAgreement = {
    type = "structure",
    members = {
        agreementName = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.AllocateConnectionOnInterconnectInput = {
    type = "structure",
    members = {
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interconnectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlan = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionState = {
    ordering = "ordering",
    requested = "requested",
    pending = "pending",
    available = "available",
    down = "down",
    deleting = "deleting",
    deleted = "deleted",
    rejected = "rejected",
    unknown = "unknown",
}

M.HasLogicalRedundancy = {
    Unknown = "unknown",
    Yes = "yes",
    No = "no",
}

M.MacSecKey = {
    type = "structure",
    members = {
        secretARN = {
            type = "string",
        },
        ckn = {
            type = "string",
        },
        state = {
            type = "string",
        },
        startOn = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.AllocateConnectionOnInterconnectOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.AllocateHostedConnectionInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlan = {
            type = "number",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AllocateHostedConnectionOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.DuplicateTagKeysException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NewPrivateVirtualInterfaceAllocation = {
    type = "structure",
    members = {
        virtualInterfaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlan = {
            type = "number",
            traits = {
                required = true,
            },
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        mtu = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AllocatePrivateVirtualInterfaceInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newPrivateVirtualInterfaceAllocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BGPPeerState = {
    Verifying = "verifying",
    Pending = "pending",
    Available = "available",
    Deleting = "deleting",
    Deleted = "deleted",
}

M.BGPStatus = {
    Up = "up",
    Down = "down",
    Unknown = "unknown",
}

M.BGPPeer = {
    type = "structure",
    members = {
        bgpPeerId = {
            type = "string",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        bgpPeerState = {
            type = "string",
        },
        bgpStatus = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
    },
}

M.VirtualInterfaceState = {
    confirming = "confirming",
    verifying = "verifying",
    pending = "pending",
    available = "available",
    down = "down",
    testing = "testing",
    deleting = "deleting",
    deleted = "deleted",
    rejected = "rejected",
    unknown = "unknown",
}

M.AllocatePrivateVirtualInterfaceOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        location = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        virtualInterfaceType = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        amazonSideAsn = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualInterfaceState = {
            type = "string",
        },
        customerRouterConfig = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        bgpPeers = {
            type = "list",
            member_type = "structure",
        },
        region = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

M.NewPublicVirtualInterfaceAllocation = {
    type = "structure",
    members = {
        virtualInterfaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlan = {
            type = "number",
            traits = {
                required = true,
            },
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AllocatePublicVirtualInterfaceInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newPublicVirtualInterfaceAllocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AllocatePublicVirtualInterfaceOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        location = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        virtualInterfaceType = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        amazonSideAsn = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualInterfaceState = {
            type = "string",
        },
        customerRouterConfig = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        bgpPeers = {
            type = "list",
            member_type = "structure",
        },
        region = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

M.NewTransitVirtualInterfaceAllocation = {
    type = "structure",
    members = {
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        mtu = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AllocateTransitVirtualInterfaceInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newTransitVirtualInterfaceAllocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualInterface = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        location = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        virtualInterfaceType = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        amazonSideAsn = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualInterfaceState = {
            type = "string",
        },
        customerRouterConfig = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        bgpPeers = {
            type = "list",
            member_type = "structure",
        },
        region = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

M.AllocateTransitVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterface = {
            type = "structure",
        },
    },
}

M.AssociateConnectionWithLagInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lagId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateConnectionWithLagOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.AssociateHostedConnectionInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentConnectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateHostedConnectionOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.AssociateMacSecKeyInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretARN = {
            type = "string",
        },
        ckn = {
            type = "string",
        },
        cak = {
            type = "string",
        },
    },
}

M.AssociateMacSecKeyOutput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociateVirtualInterfaceInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateVirtualInterfaceOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        location = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        virtualInterfaceType = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        amazonSideAsn = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualInterfaceState = {
            type = "string",
        },
        customerRouterConfig = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        bgpPeers = {
            type = "list",
            member_type = "structure",
        },
        region = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

M.ConfirmConnectionInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfirmConnectionOutput = {
    type = "structure",
    members = {
        connectionState = {
            type = "string",
        },
    },
}

M.ConfirmCustomerAgreementInput = {
    type = "structure",
    members = {
        agreementName = {
            type = "string",
        },
    },
}

M.ConfirmCustomerAgreementOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ConfirmPrivateVirtualInterfaceInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
    },
}

M.ConfirmPrivateVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterfaceState = {
            type = "string",
        },
    },
}

M.ConfirmPublicVirtualInterfaceInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfirmPublicVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterfaceState = {
            type = "string",
        },
    },
}

M.ConfirmTransitVirtualInterfaceInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        directConnectGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfirmTransitVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterfaceState = {
            type = "string",
        },
    },
}

M.Connection = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.NewBGPPeer = {
    type = "structure",
    members = {
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
    },
}

M.CreateBGPPeerInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
        },
        newBGPPeer = {
            type = "structure",
        },
    },
}

M.CreateBGPPeerOutput = {
    type = "structure",
    members = {
        virtualInterface = {
            type = "structure",
        },
    },
}

M.CreateConnectionInput = {
    type = "structure",
    members = {
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lagId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        requestMACSec = {
            type = "boolean",
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.CreateDirectConnectGatewayInput = {
    type = "structure",
    members = {
        directConnectGatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        amazonSideAsn = {
            type = "number",
        },
    },
}

M.DirectConnectGatewayState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.DirectConnectGateway = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
        },
        directConnectGatewayName = {
            type = "string",
        },
        amazonSideAsn = {
            type = "number",
        },
        ownerAccount = {
            type = "string",
        },
        directConnectGatewayState = {
            type = "string",
        },
        stateChangeError = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateDirectConnectGatewayOutput = {
    type = "structure",
    members = {
        directConnectGateway = {
            type = "structure",
        },
    },
}

M.CreateDirectConnectGatewayAssociationInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayId = {
            type = "string",
        },
        addAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
        virtualGatewayId = {
            type = "string",
        },
    },
}

M.CreateDirectConnectGatewayAssociationOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociation = {
            type = "structure",
        },
    },
}

M.CreateDirectConnectGatewayAssociationProposalInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        directConnectGatewayOwnerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
        removeAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DirectConnectGatewayAssociationProposalState = {
    requested = "requested",
    accepted = "accepted",
    deleted = "deleted",
}

M.DirectConnectGatewayAssociationProposal = {
    type = "structure",
    members = {
        proposalId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        directConnectGatewayOwnerAccount = {
            type = "string",
        },
        proposalState = {
            type = "string",
        },
        associatedGateway = {
            type = "structure",
        },
        existingAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
        requestedAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateDirectConnectGatewayAssociationProposalOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociationProposal = {
            type = "structure",
        },
    },
}

M.CreateInterconnectInput = {
    type = "structure",
    members = {
        interconnectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lagId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        requestMACSec = {
            type = "boolean",
        },
    },
}

M.InterconnectState = {
    requested = "requested",
    pending = "pending",
    available = "available",
    down = "down",
    deleting = "deleting",
    deleted = "deleted",
    unknown = "unknown",
}

M.CreateInterconnectOutput = {
    type = "structure",
    members = {
        interconnectId = {
            type = "string",
        },
        interconnectName = {
            type = "string",
        },
        interconnectState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateLagInput = {
    type = "structure",
    members = {
        numberOfConnections = {
            type = "number",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionsBandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lagName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        childConnectionTags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        requestMACSec = {
            type = "boolean",
        },
    },
}

M.LagState = {
    requested = "requested",
    pending = "pending",
    available = "available",
    down = "down",
    deleting = "deleting",
    deleted = "deleted",
    unknown = "unknown",
}

M.CreateLagOutput = {
    type = "structure",
    members = {
        connectionsBandwidth = {
            type = "string",
        },
        numberOfConnections = {
            type = "number",
        },
        lagId = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        lagName = {
            type = "string",
        },
        lagState = {
            type = "string",
        },
        location = {
            type = "string",
        },
        region = {
            type = "string",
        },
        minimumLinks = {
            type = "number",
        },
        awsDevice = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        connections = {
            type = "list",
            member_type = "structure",
        },
        allowsHostedConnections = {
            type = "boolean",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NewPrivateVirtualInterface = {
    type = "structure",
    members = {
        virtualInterfaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlan = {
            type = "number",
            traits = {
                required = true,
            },
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        mtu = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        enableSiteLink = {
            type = "boolean",
        },
    },
}

M.CreatePrivateVirtualInterfaceInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newPrivateVirtualInterface = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePrivateVirtualInterfaceOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        location = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        virtualInterfaceType = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        amazonSideAsn = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualInterfaceState = {
            type = "string",
        },
        customerRouterConfig = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        bgpPeers = {
            type = "list",
            member_type = "structure",
        },
        region = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

M.NewPublicVirtualInterface = {
    type = "structure",
    members = {
        virtualInterfaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vlan = {
            type = "number",
            traits = {
                required = true,
            },
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreatePublicVirtualInterfaceInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newPublicVirtualInterface = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePublicVirtualInterfaceOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        location = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        virtualInterfaceType = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        amazonSideAsn = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualInterfaceState = {
            type = "string",
        },
        customerRouterConfig = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        bgpPeers = {
            type = "list",
            member_type = "structure",
        },
        region = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

M.NewTransitVirtualInterface = {
    type = "structure",
    members = {
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        mtu = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        enableSiteLink = {
            type = "boolean",
        },
    },
}

M.CreateTransitVirtualInterfaceInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newTransitVirtualInterface = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTransitVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterface = {
            type = "structure",
        },
    },
}

M.DeleteBGPPeerInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        customerAddress = {
            type = "string",
        },
        bgpPeerId = {
            type = "string",
        },
    },
}

M.DeleteBGPPeerOutput = {
    type = "structure",
    members = {
        virtualInterface = {
            type = "structure",
        },
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.DeleteDirectConnectGatewayInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDirectConnectGatewayOutput = {
    type = "structure",
    members = {
        directConnectGateway = {
            type = "structure",
        },
    },
}

M.DeleteDirectConnectGatewayAssociationInput = {
    type = "structure",
    members = {
        associationId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        virtualGatewayId = {
            type = "string",
        },
    },
}

M.DeleteDirectConnectGatewayAssociationOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociation = {
            type = "structure",
        },
    },
}

M.DeleteDirectConnectGatewayAssociationProposalInput = {
    type = "structure",
    members = {
        proposalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDirectConnectGatewayAssociationProposalOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociationProposal = {
            type = "structure",
        },
    },
}

M.DeleteInterconnectInput = {
    type = "structure",
    members = {
        interconnectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInterconnectOutput = {
    type = "structure",
    members = {
        interconnectState = {
            type = "string",
        },
    },
}

M.DeleteLagInput = {
    type = "structure",
    members = {
        lagId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLagOutput = {
    type = "structure",
    members = {
        connectionsBandwidth = {
            type = "string",
        },
        numberOfConnections = {
            type = "number",
        },
        lagId = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        lagName = {
            type = "string",
        },
        lagState = {
            type = "string",
        },
        location = {
            type = "string",
        },
        region = {
            type = "string",
        },
        minimumLinks = {
            type = "number",
        },
        awsDevice = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        connections = {
            type = "list",
            member_type = "structure",
        },
        allowsHostedConnections = {
            type = "boolean",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteVirtualInterfaceInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterfaceState = {
            type = "string",
        },
    },
}

M.LoaContentType = {
    PDF = "application/pdf",
}

M.DescribeConnectionLoaInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerName = {
            type = "string",
        },
        loaContentType = {
            type = "string",
        },
    },
}

M.Loa = {
    type = "structure",
    members = {
        loaContent = {
            type = "blob",
        },
        loaContentType = {
            type = "string",
        },
    },
}

M.DescribeConnectionLoaOutput = {
    type = "structure",
    members = {
        loa = {
            type = "structure",
        },
    },
}

M.DescribeConnectionsInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectionsOutput = {
    type = "structure",
    members = {
        connections = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectionsOnInterconnectInput = {
    type = "structure",
    members = {
        interconnectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConnectionsOnInterconnectOutput = {
    type = "structure",
    members = {
        connections = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeCustomerMetadataInput = {
    type = "structure",
}

M.NniPartnerType = {
    V1 = "v1",
    V2 = "v2",
    NonPartner = "nonPartner",
}

M.DescribeCustomerMetadataOutput = {
    type = "structure",
    members = {
        agreements = {
            type = "list",
            member_type = "structure",
        },
        nniPartnerType = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewayAssociationProposalsInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
        },
        proposalId = {
            type = "string",
        },
        associatedGatewayId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewayAssociationProposalsOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociationProposals = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewayAssociationsInput = {
    type = "structure",
    members = {
        associationId = {
            type = "string",
        },
        associatedGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        virtualGatewayId = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewayAssociationsOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewayAttachmentsInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DirectConnectGatewayAttachmentState = {
    attaching = "attaching",
    attached = "attached",
    detaching = "detaching",
    detached = "detached",
}

M.DirectConnectGatewayAttachmentType = {
    TransitVirtualInterface = "TransitVirtualInterface",
    PrivateVirtualInterface = "PrivateVirtualInterface",
}

M.DirectConnectGatewayAttachment = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        virtualInterfaceRegion = {
            type = "string",
        },
        virtualInterfaceOwnerAccount = {
            type = "string",
        },
        attachmentState = {
            type = "string",
        },
        attachmentType = {
            type = "string",
        },
        stateChangeError = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewayAttachmentsOutput = {
    type = "structure",
    members = {
        directConnectGatewayAttachments = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewaysInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectConnectGatewaysOutput = {
    type = "structure",
    members = {
        directConnectGateways = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeHostedConnectionsInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeHostedConnectionsOutput = {
    type = "structure",
    members = {
        connections = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeInterconnectLoaInput = {
    type = "structure",
    members = {
        interconnectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerName = {
            type = "string",
        },
        loaContentType = {
            type = "string",
        },
    },
}

M.DescribeInterconnectLoaOutput = {
    type = "structure",
    members = {
        loa = {
            type = "structure",
        },
    },
}

M.DescribeInterconnectsInput = {
    type = "structure",
    members = {
        interconnectId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Interconnect = {
    type = "structure",
    members = {
        interconnectId = {
            type = "string",
        },
        interconnectName = {
            type = "string",
        },
        interconnectState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeInterconnectsOutput = {
    type = "structure",
    members = {
        interconnects = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLagsInput = {
    type = "structure",
    members = {
        lagId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Lag = {
    type = "structure",
    members = {
        connectionsBandwidth = {
            type = "string",
        },
        numberOfConnections = {
            type = "number",
        },
        lagId = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        lagName = {
            type = "string",
        },
        lagState = {
            type = "string",
        },
        location = {
            type = "string",
        },
        region = {
            type = "string",
        },
        minimumLinks = {
            type = "number",
        },
        awsDevice = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        connections = {
            type = "list",
            member_type = "structure",
        },
        allowsHostedConnections = {
            type = "boolean",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeLagsOutput = {
    type = "structure",
    members = {
        lags = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLoaInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerName = {
            type = "string",
        },
        loaContentType = {
            type = "string",
        },
    },
}

M.DescribeLoaOutput = {
    type = "structure",
    members = {
        loaContent = {
            type = "blob",
        },
        loaContentType = {
            type = "string",
        },
    },
}

M.DescribeLocationsInput = {
    type = "structure",
}

M.Location = {
    type = "structure",
    members = {
        locationCode = {
            type = "string",
        },
        locationName = {
            type = "string",
        },
        region = {
            type = "string",
        },
        availablePortSpeeds = {
            type = "list",
            member_type = "string",
        },
        availableProviders = {
            type = "list",
            member_type = "string",
        },
        availableMacSecPortSpeeds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeLocationsOutput = {
    type = "structure",
    members = {
        locations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeRouterConfigurationInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        routerTypeIdentifier = {
            type = "string",
        },
    },
}

M.RouterType = {
    type = "structure",
    members = {
        vendor = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        software = {
            type = "string",
        },
        xsltTemplateName = {
            type = "string",
        },
        xsltTemplateNameForMacSec = {
            type = "string",
        },
        routerTypeIdentifier = {
            type = "string",
        },
    },
}

M.DescribeRouterConfigurationOutput = {
    type = "structure",
    members = {
        customerRouterConfig = {
            type = "string",
        },
        router = {
            type = "structure",
        },
        virtualInterfaceId = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    members = {
        resourceArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceTag = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeVirtualGatewaysInput = {
    type = "structure",
}

M.VirtualGateway = {
    type = "structure",
    members = {
        virtualGatewayId = {
            type = "string",
        },
        virtualGatewayState = {
            type = "string",
        },
    },
}

M.DescribeVirtualGatewaysOutput = {
    type = "structure",
    members = {
        virtualGateways = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeVirtualInterfacesInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeVirtualInterfacesOutput = {
    type = "structure",
    members = {
        virtualInterfaces = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DisassociateConnectionFromLagInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lagId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateConnectionFromLagOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.DisassociateMacSecKeyInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMacSecKeyOutput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListVirtualInterfaceTestHistoryInput = {
    type = "structure",
    members = {
        testId = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        bgpPeers = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.VirtualInterfaceTestHistory = {
    type = "structure",
    members = {
        testId = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        bgpPeers = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        testDurationInMinutes = {
            type = "number",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ListVirtualInterfaceTestHistoryOutput = {
    type = "structure",
    members = {
        virtualInterfaceTestHistory = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartBgpFailoverTestInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bgpPeers = {
            type = "list",
            member_type = "string",
        },
        testDurationInMinutes = {
            type = "number",
        },
    },
}

M.StartBgpFailoverTestOutput = {
    type = "structure",
    members = {
        virtualInterfaceTest = {
            type = "structure",
        },
    },
}

M.StopBgpFailoverTestInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopBgpFailoverTestOutput = {
    type = "structure",
    members = {
        virtualInterfaceTest = {
            type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateConnectionInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionName = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        connectionName = {
            type = "string",
        },
        connectionState = {
            type = "string",
        },
        region = {
            type = "string",
        },
        location = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        partnerName = {
            type = "string",
        },
        loaIssueTime = {
            type = "timestamp",
        },
        lagId = {
            type = "string",
        },
        awsDevice = {
            type = "string",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        portEncryptionStatus = {
            type = "string",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
        partnerInterconnectMacSecCapable = {
            type = "boolean",
        },
    },
}

M.UpdateDirectConnectGatewayInput = {
    type = "structure",
    members = {
        directConnectGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newDirectConnectGatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDirectConnectGatewayOutput = {
    type = "structure",
    members = {
        directConnectGateway = {
            type = "structure",
        },
    },
}

M.UpdateDirectConnectGatewayAssociationInput = {
    type = "structure",
    members = {
        associationId = {
            type = "string",
        },
        addAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
        removeAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateDirectConnectGatewayAssociationOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociation = {
            type = "structure",
        },
    },
}

M.UpdateLagInput = {
    type = "structure",
    members = {
        lagId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lagName = {
            type = "string",
        },
        minimumLinks = {
            type = "number",
        },
        encryptionMode = {
            type = "string",
        },
    },
}

M.UpdateLagOutput = {
    type = "structure",
    members = {
        connectionsBandwidth = {
            type = "string",
        },
        numberOfConnections = {
            type = "number",
        },
        lagId = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        lagName = {
            type = "string",
        },
        lagState = {
            type = "string",
        },
        location = {
            type = "string",
        },
        region = {
            type = "string",
        },
        minimumLinks = {
            type = "number",
        },
        awsDevice = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        connections = {
            type = "list",
            member_type = "structure",
        },
        allowsHostedConnections = {
            type = "boolean",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        providerName = {
            type = "string",
        },
        macSecCapable = {
            type = "boolean",
        },
        encryptionMode = {
            type = "string",
        },
        macSecKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateVirtualInterfaceAttributesInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mtu = {
            type = "number",
        },
        enableSiteLink = {
            type = "boolean",
        },
        virtualInterfaceName = {
            type = "string",
        },
    },
}

M.UpdateVirtualInterfaceAttributesOutput = {
    type = "structure",
    members = {
        ownerAccount = {
            type = "string",
        },
        virtualInterfaceId = {
            type = "string",
        },
        location = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        virtualInterfaceType = {
            type = "string",
        },
        virtualInterfaceName = {
            type = "string",
        },
        vlan = {
            type = "number",
        },
        asn = {
            type = "number",
        },
        asnLong = {
            type = "number",
        },
        amazonSideAsn = {
            type = "number",
        },
        authKey = {
            type = "string",
        },
        amazonAddress = {
            type = "string",
        },
        customerAddress = {
            type = "string",
        },
        addressFamily = {
            type = "string",
        },
        virtualInterfaceState = {
            type = "string",
        },
        customerRouterConfig = {
            type = "string",
        },
        mtu = {
            type = "number",
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        virtualGatewayId = {
            type = "string",
        },
        directConnectGatewayId = {
            type = "string",
        },
        routeFilterPrefixes = {
            type = "list",
            member_type = "structure",
        },
        bgpPeers = {
            type = "list",
            member_type = "structure",
        },
        region = {
            type = "string",
        },
        awsDeviceV2 = {
            type = "string",
        },
        awsLogicalDeviceId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

return M
