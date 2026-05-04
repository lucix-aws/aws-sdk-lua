local M = {}

M.RouteFilterPrefix = {
    type = "structure",
    id = "RouteFilterPrefix",
    members = {
        cidr = {
            type = "string",
        },
    },
}

M.AcceptDirectConnectGatewayAssociationProposalInput = {
    type = "structure",
    id = "AcceptDirectConnectGatewayAssociationProposalInput",
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
    id = "AssociatedCoreNetwork",
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
    id = "AssociatedGateway",
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
    id = "DirectConnectGatewayAssociation",
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
    id = "AcceptDirectConnectGatewayAssociationProposalOutput",
    members = {
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
    },
}

M.DirectConnectClientException = {
    type = "structure",
    id = "DirectConnectClientException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DirectConnectServerException = {
    type = "structure",
    id = "DirectConnectServerException",
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
    id = "CustomerAgreement",
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
    id = "AllocateConnectionOnInterconnectInput",
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
    id = "MacSecKey",
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
    id = "Tag",
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
    id = "AllocateConnectionOnInterconnectOutput",
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
    id = "AllocateHostedConnectionInput",
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
    id = "AllocateHostedConnectionOutput",
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
    id = "DuplicateTagKeysException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NewPrivateVirtualInterfaceAllocation = {
    type = "structure",
    id = "NewPrivateVirtualInterfaceAllocation",
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
    id = "AllocatePrivateVirtualInterfaceInput",
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
    id = "BGPPeer",
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
    id = "AllocatePrivateVirtualInterfaceOutput",
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
    id = "NewPublicVirtualInterfaceAllocation",
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
    id = "AllocatePublicVirtualInterfaceInput",
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
    id = "AllocatePublicVirtualInterfaceOutput",
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
    id = "NewTransitVirtualInterfaceAllocation",
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
    id = "AllocateTransitVirtualInterfaceInput",
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
    id = "VirtualInterface",
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
    id = "AllocateTransitVirtualInterfaceOutput",
    members = {
        virtualInterface = M.VirtualInterface,
    },
}

M.AssociateConnectionWithLagInput = {
    type = "structure",
    id = "AssociateConnectionWithLagInput",
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
    id = "AssociateConnectionWithLagOutput",
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
    id = "AssociateHostedConnectionInput",
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
    id = "AssociateHostedConnectionOutput",
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
    id = "AssociateMacSecKeyInput",
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
    id = "AssociateMacSecKeyOutput",
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
    id = "AssociateVirtualInterfaceInput",
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
    id = "AssociateVirtualInterfaceOutput",
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
    id = "ConfirmConnectionInput",
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
    id = "ConfirmConnectionOutput",
    members = {
        connectionState = {
            type = "string",
        },
    },
}

M.ConfirmCustomerAgreementInput = {
    type = "structure",
    id = "ConfirmCustomerAgreementInput",
    members = {
        agreementName = {
            type = "string",
        },
    },
}

M.ConfirmCustomerAgreementOutput = {
    type = "structure",
    id = "ConfirmCustomerAgreementOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ConfirmPrivateVirtualInterfaceInput = {
    type = "structure",
    id = "ConfirmPrivateVirtualInterfaceInput",
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
    id = "ConfirmPrivateVirtualInterfaceOutput",
    members = {
        virtualInterfaceState = {
            type = "string",
        },
    },
}

M.ConfirmPublicVirtualInterfaceInput = {
    type = "structure",
    id = "ConfirmPublicVirtualInterfaceInput",
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
    id = "ConfirmPublicVirtualInterfaceOutput",
    members = {
        virtualInterfaceState = {
            type = "string",
        },
    },
}

M.ConfirmTransitVirtualInterfaceInput = {
    type = "structure",
    id = "ConfirmTransitVirtualInterfaceInput",
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
    id = "ConfirmTransitVirtualInterfaceOutput",
    members = {
        virtualInterfaceState = {
            type = "string",
        },
    },
}

M.Connection = {
    type = "structure",
    id = "Connection",
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
    id = "NewBGPPeer",
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
    id = "CreateBGPPeerInput",
    members = {
        virtualInterfaceId = {
            type = "string",
        },
        newBGPPeer = M.NewBGPPeer,
    },
}

M.CreateBGPPeerOutput = {
    type = "structure",
    id = "CreateBGPPeerOutput",
    members = {
        virtualInterface = M.VirtualInterface,
    },
}

M.CreateConnectionInput = {
    type = "structure",
    id = "CreateConnectionInput",
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
    id = "CreateConnectionOutput",
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
    id = "CreateDirectConnectGatewayInput",
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
    id = "DirectConnectGateway",
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
    id = "CreateDirectConnectGatewayOutput",
    members = {
        directConnectGateway = M.DirectConnectGateway,
    },
}

M.CreateDirectConnectGatewayAssociationInput = {
    type = "structure",
    id = "CreateDirectConnectGatewayAssociationInput",
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
    id = "CreateDirectConnectGatewayAssociationOutput",
    members = {
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
    },
}

M.CreateDirectConnectGatewayAssociationProposalInput = {
    type = "structure",
    id = "CreateDirectConnectGatewayAssociationProposalInput",
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
    id = "DirectConnectGatewayAssociationProposal",
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
    id = "CreateDirectConnectGatewayAssociationProposalOutput",
    members = {
        directConnectGatewayAssociationProposal = M.DirectConnectGatewayAssociationProposal,
    },
}

M.CreateInterconnectInput = {
    type = "structure",
    id = "CreateInterconnectInput",
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
    id = "CreateInterconnectOutput",
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
    id = "CreateLagInput",
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
    id = "CreateLagOutput",
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
    id = "NewPrivateVirtualInterface",
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
    id = "CreatePrivateVirtualInterfaceInput",
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
    id = "CreatePrivateVirtualInterfaceOutput",
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
    id = "NewPublicVirtualInterface",
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
    id = "CreatePublicVirtualInterfaceInput",
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
    id = "CreatePublicVirtualInterfaceOutput",
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
    id = "NewTransitVirtualInterface",
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
    id = "CreateTransitVirtualInterfaceInput",
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
    id = "CreateTransitVirtualInterfaceOutput",
    members = {
        virtualInterface = M.VirtualInterface,
    },
}

M.DeleteBGPPeerInput = {
    type = "structure",
    id = "DeleteBGPPeerInput",
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
    id = "DeleteBGPPeerOutput",
    members = {
        virtualInterface = M.VirtualInterface,
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
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
    id = "DeleteConnectionOutput",
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
    id = "DeleteDirectConnectGatewayInput",
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
    id = "DeleteDirectConnectGatewayOutput",
    members = {
        directConnectGateway = M.DirectConnectGateway,
    },
}

M.DeleteDirectConnectGatewayAssociationInput = {
    type = "structure",
    id = "DeleteDirectConnectGatewayAssociationInput",
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
    id = "DeleteDirectConnectGatewayAssociationOutput",
    members = {
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
    },
}

M.DeleteDirectConnectGatewayAssociationProposalInput = {
    type = "structure",
    id = "DeleteDirectConnectGatewayAssociationProposalInput",
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
    id = "DeleteDirectConnectGatewayAssociationProposalOutput",
    members = {
        directConnectGatewayAssociationProposal = M.DirectConnectGatewayAssociationProposal,
    },
}

M.DeleteInterconnectInput = {
    type = "structure",
    id = "DeleteInterconnectInput",
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
    id = "DeleteInterconnectOutput",
    members = {
        interconnectState = {
            type = "string",
        },
    },
}

M.DeleteLagInput = {
    type = "structure",
    id = "DeleteLagInput",
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
    id = "DeleteLagOutput",
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
    id = "DeleteVirtualInterfaceInput",
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
    id = "DeleteVirtualInterfaceOutput",
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
    id = "DescribeConnectionLoaInput",
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
    id = "Loa",
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
    id = "DescribeConnectionLoaOutput",
    members = {
        loa = M.Loa,
    },
}

M.DescribeConnectionsInput = {
    type = "structure",
    id = "DescribeConnectionsInput",
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
    id = "DescribeConnectionsOutput",
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
    id = "DescribeConnectionsOnInterconnectInput",
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
    id = "DescribeConnectionsOnInterconnectOutput",
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
    id = "DescribeCustomerMetadataInput",
}

M.NniPartnerType = {
    V1 = "v1",
    V2 = "v2",
    NonPartner = "nonPartner",
}

M.DescribeCustomerMetadataOutput = {
    type = "structure",
    id = "DescribeCustomerMetadataOutput",
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
    id = "DescribeDirectConnectGatewayAssociationProposalsInput",
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
    id = "DescribeDirectConnectGatewayAssociationProposalsOutput",
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
    id = "DescribeDirectConnectGatewayAssociationsInput",
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
    id = "DescribeDirectConnectGatewayAssociationsOutput",
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
    id = "DescribeDirectConnectGatewayAttachmentsInput",
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
    id = "DirectConnectGatewayAttachment",
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
    id = "DescribeDirectConnectGatewayAttachmentsOutput",
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
    id = "DescribeDirectConnectGatewaysInput",
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
    id = "DescribeDirectConnectGatewaysOutput",
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
    id = "DescribeHostedConnectionsInput",
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
    id = "DescribeHostedConnectionsOutput",
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
    id = "DescribeInterconnectLoaInput",
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
    id = "DescribeInterconnectLoaOutput",
    members = {
        loa = M.Loa,
    },
}

M.DescribeInterconnectsInput = {
    type = "structure",
    id = "DescribeInterconnectsInput",
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
    id = "Interconnect",
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
    id = "DescribeInterconnectsOutput",
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
    id = "DescribeLagsInput",
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
    id = "Lag",
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
    id = "DescribeLagsOutput",
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
    id = "DescribeLoaInput",
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
    id = "DescribeLoaOutput",
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
    id = "DescribeLocationsInput",
}

M.Location = {
    type = "structure",
    id = "Location",
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
    id = "DescribeLocationsOutput",
    members = {
        locations = {
            type = "list",
            member = M.Location,
        },
    },
}

M.DescribeRouterConfigurationInput = {
    type = "structure",
    id = "DescribeRouterConfigurationInput",
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
    id = "RouterType",
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
    id = "DescribeRouterConfigurationOutput",
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
    id = "DescribeTagsInput",
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
    id = "ResourceTag",
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
    id = "DescribeTagsOutput",
    members = {
        resourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.DescribeVirtualGatewaysInput = {
    type = "structure",
    id = "DescribeVirtualGatewaysInput",
}

M.VirtualGateway = {
    type = "structure",
    id = "VirtualGateway",
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
    id = "DescribeVirtualGatewaysOutput",
    members = {
        virtualGateways = {
            type = "list",
            member = M.VirtualGateway,
        },
    },
}

M.DescribeVirtualInterfacesInput = {
    type = "structure",
    id = "DescribeVirtualInterfacesInput",
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
    id = "DescribeVirtualInterfacesOutput",
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
    id = "DisassociateConnectionFromLagInput",
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
    id = "DisassociateConnectionFromLagOutput",
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
    id = "DisassociateMacSecKeyInput",
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
    id = "DisassociateMacSecKeyOutput",
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
    id = "ListVirtualInterfaceTestHistoryInput",
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
    id = "VirtualInterfaceTestHistory",
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
    id = "ListVirtualInterfaceTestHistoryOutput",
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
    id = "StartBgpFailoverTestInput",
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
    id = "StartBgpFailoverTestOutput",
    members = {
        virtualInterfaceTest = M.VirtualInterfaceTestHistory,
    },
}

M.StopBgpFailoverTestInput = {
    type = "structure",
    id = "StopBgpFailoverTestInput",
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
    id = "StopBgpFailoverTestOutput",
    members = {
        virtualInterfaceTest = M.VirtualInterfaceTestHistory,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateConnectionInput = {
    type = "structure",
    id = "UpdateConnectionInput",
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
    id = "UpdateConnectionOutput",
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
    id = "UpdateDirectConnectGatewayInput",
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
    id = "UpdateDirectConnectGatewayOutput",
    members = {
        directConnectGateway = M.DirectConnectGateway,
    },
}

M.UpdateDirectConnectGatewayAssociationInput = {
    type = "structure",
    id = "UpdateDirectConnectGatewayAssociationInput",
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
    id = "UpdateDirectConnectGatewayAssociationOutput",
    members = {
        directConnectGatewayAssociation = M.DirectConnectGatewayAssociation,
    },
}

M.UpdateLagInput = {
    type = "structure",
    id = "UpdateLagInput",
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
    id = "UpdateLagOutput",
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
    id = "UpdateVirtualInterfaceAttributesInput",
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
    id = "UpdateVirtualInterfaceAttributesOutput",
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
