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
            member = M.RouteFilterPrefix,
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
        associatedGateway = M.AssociatedGateway,
        associationId = {
            type = "string",
        },
        allowedPrefixesToDirectConnectGateway = {
            type = "list",
            member = M.RouteFilterPrefix,
        },
        associatedCoreNetwork = M.AssociatedCoreNetwork,
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
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
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
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        mtu = {
            type = "integer",
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
            member = M.Tag,
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
        newPrivateVirtualInterfaceAllocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NewPrivateVirtualInterfaceAllocation }),
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        amazonSideAsn = {
            type = "long",
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
            type = "integer",
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
            member = M.RouteFilterPrefix,
        },
        bgpPeers = {
            type = "list",
            member = M.BGPPeer,
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
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
            member = M.RouteFilterPrefix,
        },
        tags = {
            type = "list",
            member = M.Tag,
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
        newPublicVirtualInterfaceAllocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NewPublicVirtualInterfaceAllocation }),
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        amazonSideAsn = {
            type = "long",
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
            type = "integer",
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
            member = M.RouteFilterPrefix,
        },
        bgpPeers = {
            type = "list",
            member = M.BGPPeer,
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        mtu = {
            type = "integer",
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
            member = M.Tag,
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
        newTransitVirtualInterfaceAllocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NewTransitVirtualInterfaceAllocation }),
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        amazonSideAsn = {
            type = "long",
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
            type = "integer",
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
            member = M.RouteFilterPrefix,
        },
        bgpPeers = {
            type = "list",
            member = M.BGPPeer,
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
            member = M.Tag,
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

M.AllocateTransitVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterface = M.VirtualInterface,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
            member = M.MacSecKey,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        amazonSideAsn = {
            type = "long",
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
            type = "integer",
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
            member = M.RouteFilterPrefix,
        },
        bgpPeers = {
            type = "list",
            member = M.BGPPeer,
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
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
        newBGPPeer = M.NewBGPPeer,
    },
}

M.CreateBGPPeerOutput = {
    type = "structure",
    members = {
        virtualInterface = M.VirtualInterface,
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
            member = M.Tag,
        },
        amazonSideAsn = {
            type = "long",
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
            type = "long",
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
            member = M.Tag,
        },
    },
}

M.CreateDirectConnectGatewayOutput = {
    type = "structure",
    members = {
        directConnectGateway = M.DirectConnectGateway,
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
            member = M.RouteFilterPrefix,
        },
        virtualGatewayId = {
            type = "string",
        },
    },
}

M.CreateDirectConnectGatewayAssociationOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
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
            member = M.RouteFilterPrefix,
        },
        removeAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member = M.RouteFilterPrefix,
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
        associatedGateway = M.AssociatedGateway,
        existingAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member = M.RouteFilterPrefix,
        },
        requestedAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member = M.RouteFilterPrefix,
        },
    },
}

M.CreateDirectConnectGatewayAssociationProposalOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociationProposal = M.DirectConnectGatewayAssociationProposal,
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
            member = M.Tag,
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
            member = M.Tag,
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
            member = M.MacSecKey,
        },
    },
}

M.CreateLagInput = {
    type = "structure",
    members = {
        numberOfConnections = {
            type = "integer",
            traits = {
                default = 0,
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
            member = M.Tag,
        },
        childConnectionTags = {
            type = "list",
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Connection,
        },
        allowsHostedConnections = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            member = M.MacSecKey,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        mtu = {
            type = "integer",
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
            member = M.Tag,
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
        newPrivateVirtualInterface = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NewPrivateVirtualInterface }),
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        amazonSideAsn = {
            type = "long",
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
            type = "integer",
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
            member = M.RouteFilterPrefix,
        },
        bgpPeers = {
            type = "list",
            member = M.BGPPeer,
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
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
            member = M.RouteFilterPrefix,
        },
        tags = {
            type = "list",
            member = M.Tag,
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
        newPublicVirtualInterface = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NewPublicVirtualInterface }),
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        amazonSideAsn = {
            type = "long",
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
            type = "integer",
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
            member = M.RouteFilterPrefix,
        },
        bgpPeers = {
            type = "list",
            member = M.BGPPeer,
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        mtu = {
            type = "integer",
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
            member = M.Tag,
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
        newTransitVirtualInterface = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NewTransitVirtualInterface }),
    },
}

M.CreateTransitVirtualInterfaceOutput = {
    type = "structure",
    members = {
        virtualInterface = M.VirtualInterface,
    },
}

M.DeleteBGPPeerInput = {
    type = "structure",
    members = {
        virtualInterfaceId = {
            type = "string",
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
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
        virtualInterface = M.VirtualInterface,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
        directConnectGateway = M.DirectConnectGateway,
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
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
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
        directConnectGatewayAssociationProposal = M.DirectConnectGatewayAssociationProposal,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Connection,
        },
        allowsHostedConnections = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            member = M.MacSecKey,
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
        loa = M.Loa,
    },
}

M.DescribeConnectionsInput = {
    type = "structure",
    members = {
        connectionId = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
            member = M.Connection,
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
            member = M.Connection,
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
            member = M.CustomerAgreement,
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
            type = "integer",
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
            member = M.DirectConnectGatewayAssociationProposal,
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
            type = "integer",
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
            member = M.DirectConnectGatewayAssociation,
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
            type = "integer",
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
            member = M.DirectConnectGatewayAttachment,
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
            type = "integer",
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
            member = M.DirectConnectGateway,
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
            type = "integer",
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
            member = M.Connection,
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
        loa = M.Loa,
    },
}

M.DescribeInterconnectsInput = {
    type = "structure",
    members = {
        interconnectId = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
            member = M.Tag,
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
            member = M.MacSecKey,
        },
    },
}

M.DescribeInterconnectsOutput = {
    type = "structure",
    members = {
        interconnects = {
            type = "list",
            member = M.Interconnect,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Connection,
        },
        allowsHostedConnections = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            member = M.MacSecKey,
        },
    },
}

M.DescribeLagsOutput = {
    type = "structure",
    members = {
        lags = {
            type = "list",
            member = M.Lag,
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
            member = { type = "string" },
        },
        availableProviders = {
            type = "list",
            member = { type = "string" },
        },
        availableMacSecPortSpeeds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeLocationsOutput = {
    type = "structure",
    members = {
        locations = {
            type = "list",
            member = M.Location,
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
        router = M.RouterType,
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
            member = { type = "string" },
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
            member = M.Tag,
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        resourceTags = {
            type = "list",
            member = M.ResourceTag,
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
            member = M.VirtualGateway,
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
            type = "integer",
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
            member = M.VirtualInterface,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
            member = M.MacSecKey,
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
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        testDurationInMinutes = {
            type = "integer",
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
            member = M.VirtualInterfaceTestHistory,
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
            member = { type = "string" },
        },
        testDurationInMinutes = {
            type = "integer",
        },
    },
}

M.StartBgpFailoverTestOutput = {
    type = "structure",
    members = {
        virtualInterfaceTest = M.VirtualInterfaceTestHistory,
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
        virtualInterfaceTest = M.VirtualInterfaceTestHistory,
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
            member = M.Tag,
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.MacSecKey,
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
        directConnectGateway = M.DirectConnectGateway,
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
            member = M.RouteFilterPrefix,
        },
        removeAllowedPrefixesToDirectConnectGateway = {
            type = "list",
            member = M.RouteFilterPrefix,
        },
    },
}

M.UpdateDirectConnectGatewayAssociationOutput = {
    type = "structure",
    members = {
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Connection,
        },
        allowsHostedConnections = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        jumboFrameCapable = {
            type = "boolean",
        },
        hasLogicalRedundancy = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            member = M.MacSecKey,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        asnLong = {
            type = "long",
        },
        amazonSideAsn = {
            type = "long",
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
            type = "integer",
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
            member = M.RouteFilterPrefix,
        },
        bgpPeers = {
            type = "list",
            member = M.BGPPeer,
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
            member = M.Tag,
        },
        siteLinkEnabled = {
            type = "boolean",
        },
    },
}

return M
