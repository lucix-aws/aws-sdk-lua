local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.directconnect"

local M = {}

M.RouteFilterPrefix = schema.new({
    id = id.from(_N, "RouteFilterPrefix"),
    type = "structure",
    members = {
        cidr = schema.new({
            id = id.from(_N, "RouteFilterPrefix", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
        }),
    },
})

M.AcceptDirectConnectGatewayAssociationProposalInput = schema.new({
    id = id.from(_N, "AcceptDirectConnectGatewayAssociationProposalInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "AcceptDirectConnectGatewayAssociationProposalInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        proposalId = schema.new({
            id = id.from(_N, "AcceptDirectConnectGatewayAssociationProposalInput", "proposalId"),
            type = "string",
            name = "proposalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associatedGatewayOwnerAccount = schema.new({
            id = id.from(_N, "AcceptDirectConnectGatewayAssociationProposalInput", "associatedGatewayOwnerAccount"),
            type = "string",
            name = "associatedGatewayOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        overrideAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "AcceptDirectConnectGatewayAssociationProposalInput", "overrideAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "overrideAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
    },
})

M.AssociatedCoreNetwork = schema.new({
    id = id.from(_N, "AssociatedCoreNetwork"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssociatedCoreNetwork", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "AssociatedCoreNetwork", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        attachmentId = schema.new({
            id = id.from(_N, "AssociatedCoreNetwork", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociatedGateway = schema.new({
    id = id.from(_N, "AssociatedGateway"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssociatedGateway", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssociatedGateway", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "AssociatedGateway", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "AssociatedGateway", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectConnectGatewayAssociation = schema.new({
    id = id.from(_N, "DirectConnectGatewayAssociation"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayOwnerAccount = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "directConnectGatewayOwnerAccount"),
            type = "string",
            name = "directConnectGatewayOwnerAccount",
            target_id = prelude.String.id,
        }),
        associationState = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "associationState"),
            type = "string",
            name = "associationState",
            target_id = prelude.String.id,
        }),
        stateChangeError = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "stateChangeError"),
            type = "string",
            name = "stateChangeError",
            target_id = prelude.String.id,
        }),
        associatedGateway = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "associatedGateway"),
            type = "structure",
            name = "associatedGateway",
            target_id = id.from(_N, "AssociatedGateway"),
            target = M.AssociatedGateway,
        }),
        associationId = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        allowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "allowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "allowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        associatedCoreNetwork = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "associatedCoreNetwork"),
            type = "structure",
            name = "associatedCoreNetwork",
            target_id = id.from(_N, "AssociatedCoreNetwork"),
            target = M.AssociatedCoreNetwork,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        virtualGatewayRegion = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "virtualGatewayRegion"),
            type = "string",
            name = "virtualGatewayRegion",
            target_id = prelude.String.id,
        }),
        virtualGatewayOwnerAccount = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociation", "virtualGatewayOwnerAccount"),
            type = "string",
            name = "virtualGatewayOwnerAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.AcceptDirectConnectGatewayAssociationProposalOutput = schema.new({
    id = id.from(_N, "AcceptDirectConnectGatewayAssociationProposalOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociation = schema.new({
            id = id.from(_N, "AcceptDirectConnectGatewayAssociationProposalOutput", "directConnectGatewayAssociation"),
            type = "structure",
            name = "directConnectGatewayAssociation",
            target_id = id.from(_N, "DirectConnectGatewayAssociation"),
            target = M.DirectConnectGatewayAssociation,
        }),
    },
})

M.DirectConnectClientException = schema.new({
    id = id.from(_N, "DirectConnectClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DirectConnectClientException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectConnectServerException = schema.new({
    id = id.from(_N, "DirectConnectServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DirectConnectServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomerAgreement = schema.new({
    id = id.from(_N, "CustomerAgreement"),
    type = "structure",
    members = {
        agreementName = schema.new({
            id = id.from(_N, "CustomerAgreement", "agreementName"),
            type = "string",
            name = "agreementName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CustomerAgreement", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.AllocateConnectionOnInterconnectInput = schema.new({
    id = id.from(_N, "AllocateConnectionOnInterconnectInput"),
    type = "structure",
    members = {
        bandwidth = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectInput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionName = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectInput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectInput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interconnectId = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectInput", "interconnectId"),
            type = "string",
            name = "interconnectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vlan = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectInput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.MacSecKey = schema.new({
    id = id.from(_N, "MacSecKey"),
    type = "structure",
    members = {
        secretARN = schema.new({
            id = id.from(_N, "MacSecKey", "secretARN"),
            type = "string",
            name = "secretARN",
            target_id = prelude.String.id,
        }),
        ckn = schema.new({
            id = id.from(_N, "MacSecKey", "ckn"),
            type = "string",
            name = "ckn",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "MacSecKey", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        startOn = schema.new({
            id = id.from(_N, "MacSecKey", "startOn"),
            type = "string",
            name = "startOn",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.AllocateConnectionOnInterconnectOutput = schema.new({
    id = id.from(_N, "AllocateConnectionOnInterconnectOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "AllocateConnectionOnInterconnectOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AllocateHostedConnectionInput = schema.new({
    id = id.from(_N, "AllocateHostedConnectionInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AllocateHostedConnectionInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "AllocateHostedConnectionInput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bandwidth = schema.new({
            id = id.from(_N, "AllocateHostedConnectionInput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionName = schema.new({
            id = id.from(_N, "AllocateHostedConnectionInput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vlan = schema.new({
            id = id.from(_N, "AllocateHostedConnectionInput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "AllocateHostedConnectionInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AllocateHostedConnectionOutput = schema.new({
    id = id.from(_N, "AllocateHostedConnectionOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "AllocateHostedConnectionOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DuplicateTagKeysException = schema.new({
    id = id.from(_N, "DuplicateTagKeysException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DuplicateTagKeysException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTagsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NewPrivateVirtualInterfaceAllocation = schema.new({
    id = id.from(_N, "NewPrivateVirtualInterfaceAllocation"),
    type = "structure",
    members = {
        virtualInterfaceName = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vlan = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterfaceAllocation", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AllocatePrivateVirtualInterfaceInput = schema.new({
    id = id.from(_N, "AllocatePrivateVirtualInterfaceInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceInput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newPrivateVirtualInterfaceAllocation = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceInput", "newPrivateVirtualInterfaceAllocation"),
            type = "structure",
            name = "newPrivateVirtualInterfaceAllocation",
            target_id = id.from(_N, "NewPrivateVirtualInterfaceAllocation"),
            target = M.NewPrivateVirtualInterfaceAllocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BGPPeer = schema.new({
    id = id.from(_N, "BGPPeer"),
    type = "structure",
    members = {
        bgpPeerId = schema.new({
            id = id.from(_N, "BGPPeer", "bgpPeerId"),
            type = "string",
            name = "bgpPeerId",
            target_id = prelude.String.id,
        }),
        asn = schema.new({
            id = id.from(_N, "BGPPeer", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "BGPPeer", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "BGPPeer", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "BGPPeer", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "BGPPeer", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "BGPPeer", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        bgpPeerState = schema.new({
            id = id.from(_N, "BGPPeer", "bgpPeerState"),
            type = "string",
            name = "bgpPeerState",
            target_id = prelude.String.id,
        }),
        bgpStatus = schema.new({
            id = id.from(_N, "BGPPeer", "bgpStatus"),
            type = "string",
            name = "bgpStatus",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "BGPPeer", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "BGPPeer", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
    },
})

M.AllocatePrivateVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceType = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "virtualInterfaceType"),
            type = "string",
            name = "virtualInterfaceType",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualInterfaceState = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
        customerRouterConfig = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = M.BGPPeer,
        }),
        region = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        siteLinkEnabled = schema.new({
            id = id.from(_N, "AllocatePrivateVirtualInterfaceOutput", "siteLinkEnabled"),
            type = "boolean",
            name = "siteLinkEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.NewPublicVirtualInterfaceAllocation = schema.new({
    id = id.from(_N, "NewPublicVirtualInterfaceAllocation"),
    type = "structure",
    members = {
        virtualInterfaceName = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vlan = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        tags = schema.new({
            id = id.from(_N, "NewPublicVirtualInterfaceAllocation", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AllocatePublicVirtualInterfaceInput = schema.new({
    id = id.from(_N, "AllocatePublicVirtualInterfaceInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceInput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newPublicVirtualInterfaceAllocation = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceInput", "newPublicVirtualInterfaceAllocation"),
            type = "structure",
            name = "newPublicVirtualInterfaceAllocation",
            target_id = id.from(_N, "NewPublicVirtualInterfaceAllocation"),
            target = M.NewPublicVirtualInterfaceAllocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AllocatePublicVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "AllocatePublicVirtualInterfaceOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceType = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "virtualInterfaceType"),
            type = "string",
            name = "virtualInterfaceType",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualInterfaceState = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
        customerRouterConfig = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = M.BGPPeer,
        }),
        region = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        siteLinkEnabled = schema.new({
            id = id.from(_N, "AllocatePublicVirtualInterfaceOutput", "siteLinkEnabled"),
            type = "boolean",
            name = "siteLinkEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.NewTransitVirtualInterfaceAllocation = schema.new({
    id = id.from(_N, "NewTransitVirtualInterfaceAllocation"),
    type = "structure",
    members = {
        virtualInterfaceName = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "NewTransitVirtualInterfaceAllocation", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AllocateTransitVirtualInterfaceInput = schema.new({
    id = id.from(_N, "AllocateTransitVirtualInterfaceInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AllocateTransitVirtualInterfaceInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "AllocateTransitVirtualInterfaceInput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newTransitVirtualInterfaceAllocation = schema.new({
            id = id.from(_N, "AllocateTransitVirtualInterfaceInput", "newTransitVirtualInterfaceAllocation"),
            type = "structure",
            name = "newTransitVirtualInterfaceAllocation",
            target_id = id.from(_N, "NewTransitVirtualInterfaceAllocation"),
            target = M.NewTransitVirtualInterfaceAllocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VirtualInterface = schema.new({
    id = id.from(_N, "VirtualInterface"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "VirtualInterface", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "VirtualInterface", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "VirtualInterface", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "VirtualInterface", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceType = schema.new({
            id = id.from(_N, "VirtualInterface", "virtualInterfaceType"),
            type = "string",
            name = "virtualInterfaceType",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "VirtualInterface", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "VirtualInterface", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "VirtualInterface", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "VirtualInterface", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "VirtualInterface", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "VirtualInterface", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "VirtualInterface", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "VirtualInterface", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "VirtualInterface", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualInterfaceState = schema.new({
            id = id.from(_N, "VirtualInterface", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
        customerRouterConfig = schema.new({
            id = id.from(_N, "VirtualInterface", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "VirtualInterface", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "VirtualInterface", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "VirtualInterface", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "VirtualInterface", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "VirtualInterface", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "VirtualInterface", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = M.BGPPeer,
        }),
        region = schema.new({
            id = id.from(_N, "VirtualInterface", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "VirtualInterface", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "VirtualInterface", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "VirtualInterface", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        siteLinkEnabled = schema.new({
            id = id.from(_N, "VirtualInterface", "siteLinkEnabled"),
            type = "boolean",
            name = "siteLinkEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AllocateTransitVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "AllocateTransitVirtualInterfaceOutput"),
    type = "structure",
    members = {
        virtualInterface = schema.new({
            id = id.from(_N, "AllocateTransitVirtualInterfaceOutput", "virtualInterface"),
            type = "structure",
            name = "virtualInterface",
            target_id = id.from(_N, "VirtualInterface"),
            target = M.VirtualInterface,
        }),
    },
})

M.AssociateConnectionWithLagInput = schema.new({
    id = id.from(_N, "AssociateConnectionWithLagInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagInput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateConnectionWithLagOutput = schema.new({
    id = id.from(_N, "AssociateConnectionWithLagOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "AssociateConnectionWithLagOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AssociateHostedConnectionInput = schema.new({
    id = id.from(_N, "AssociateHostedConnectionInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AssociateHostedConnectionInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parentConnectionId = schema.new({
            id = id.from(_N, "AssociateHostedConnectionInput", "parentConnectionId"),
            type = "string",
            name = "parentConnectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateHostedConnectionOutput = schema.new({
    id = id.from(_N, "AssociateHostedConnectionOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "AssociateHostedConnectionOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AssociateMacSecKeyInput = schema.new({
    id = id.from(_N, "AssociateMacSecKeyInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AssociateMacSecKeyInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secretARN = schema.new({
            id = id.from(_N, "AssociateMacSecKeyInput", "secretARN"),
            type = "string",
            name = "secretARN",
            target_id = prelude.String.id,
        }),
        ckn = schema.new({
            id = id.from(_N, "AssociateMacSecKeyInput", "ckn"),
            type = "string",
            name = "ckn",
            target_id = prelude.String.id,
        }),
        cak = schema.new({
            id = id.from(_N, "AssociateMacSecKeyInput", "cak"),
            type = "string",
            name = "cak",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateMacSecKeyOutput = schema.new({
    id = id.from(_N, "AssociateMacSecKeyOutput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "AssociateMacSecKeyOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "AssociateMacSecKeyOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.AssociateVirtualInterfaceInput = schema.new({
    id = id.from(_N, "AssociateVirtualInterfaceInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionId = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "AssociateVirtualInterfaceOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceType = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "virtualInterfaceType"),
            type = "string",
            name = "virtualInterfaceType",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualInterfaceState = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
        customerRouterConfig = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = M.BGPPeer,
        }),
        region = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        siteLinkEnabled = schema.new({
            id = id.from(_N, "AssociateVirtualInterfaceOutput", "siteLinkEnabled"),
            type = "boolean",
            name = "siteLinkEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ConfirmConnectionInput = schema.new({
    id = id.from(_N, "ConfirmConnectionInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "ConfirmConnectionInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfirmConnectionOutput = schema.new({
    id = id.from(_N, "ConfirmConnectionOutput"),
    type = "structure",
    members = {
        connectionState = schema.new({
            id = id.from(_N, "ConfirmConnectionOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfirmCustomerAgreementInput = schema.new({
    id = id.from(_N, "ConfirmCustomerAgreementInput"),
    type = "structure",
    members = {
        agreementName = schema.new({
            id = id.from(_N, "ConfirmCustomerAgreementInput", "agreementName"),
            type = "string",
            name = "agreementName",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfirmCustomerAgreementOutput = schema.new({
    id = id.from(_N, "ConfirmCustomerAgreementOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ConfirmCustomerAgreementOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfirmPrivateVirtualInterfaceInput = schema.new({
    id = id.from(_N, "ConfirmPrivateVirtualInterfaceInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "ConfirmPrivateVirtualInterfaceInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "ConfirmPrivateVirtualInterfaceInput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "ConfirmPrivateVirtualInterfaceInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfirmPrivateVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "ConfirmPrivateVirtualInterfaceOutput"),
    type = "structure",
    members = {
        virtualInterfaceState = schema.new({
            id = id.from(_N, "ConfirmPrivateVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfirmPublicVirtualInterfaceInput = schema.new({
    id = id.from(_N, "ConfirmPublicVirtualInterfaceInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "ConfirmPublicVirtualInterfaceInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfirmPublicVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "ConfirmPublicVirtualInterfaceOutput"),
    type = "structure",
    members = {
        virtualInterfaceState = schema.new({
            id = id.from(_N, "ConfirmPublicVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfirmTransitVirtualInterfaceInput = schema.new({
    id = id.from(_N, "ConfirmTransitVirtualInterfaceInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "ConfirmTransitVirtualInterfaceInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "ConfirmTransitVirtualInterfaceInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfirmTransitVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "ConfirmTransitVirtualInterfaceOutput"),
    type = "structure",
    members = {
        virtualInterfaceState = schema.new({
            id = id.from(_N, "ConfirmTransitVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
    },
})

M.Connection = schema.new({
    id = id.from(_N, "Connection"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "Connection", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "Connection", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "Connection", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "Connection", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "Connection", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "Connection", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "Connection", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "Connection", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "Connection", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "Connection", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "Connection", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "Connection", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "Connection", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "Connection", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "Connection", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "Connection", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Connection", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "Connection", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "Connection", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "Connection", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "Connection", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "Connection", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "Connection", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.NewBGPPeer = schema.new({
    id = id.from(_N, "NewBGPPeer"),
    type = "structure",
    members = {
        asn = schema.new({
            id = id.from(_N, "NewBGPPeer", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "NewBGPPeer", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "NewBGPPeer", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "NewBGPPeer", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "NewBGPPeer", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "NewBGPPeer", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateBGPPeerInput = schema.new({
    id = id.from(_N, "CreateBGPPeerInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "CreateBGPPeerInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        newBGPPeer = schema.new({
            id = id.from(_N, "CreateBGPPeerInput", "newBGPPeer"),
            type = "structure",
            name = "newBGPPeer",
            target_id = id.from(_N, "NewBGPPeer"),
            target = M.NewBGPPeer,
        }),
    },
})

M.CreateBGPPeerOutput = schema.new({
    id = id.from(_N, "CreateBGPPeerOutput"),
    type = "structure",
    members = {
        virtualInterface = schema.new({
            id = id.from(_N, "CreateBGPPeerOutput", "virtualInterface"),
            type = "structure",
            name = "virtualInterface",
            target_id = id.from(_N, "VirtualInterface"),
            target = M.VirtualInterface,
        }),
    },
})

M.CreateConnectionInput = schema.new({
    id = id.from(_N, "CreateConnectionInput"),
    type = "structure",
    members = {
        location = schema.new({
            id = id.from(_N, "CreateConnectionInput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bandwidth = schema.new({
            id = id.from(_N, "CreateConnectionInput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionName = schema.new({
            id = id.from(_N, "CreateConnectionInput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "CreateConnectionInput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConnectionInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "CreateConnectionInput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        requestMACSec = schema.new({
            id = id.from(_N, "CreateConnectionInput", "requestMACSec"),
            type = "boolean",
            name = "requestMACSec",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateConnectionOutput = schema.new({
    id = id.from(_N, "CreateConnectionOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateDirectConnectGatewayInput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayInput"),
    type = "structure",
    members = {
        directConnectGatewayName = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayInput", "directConnectGatewayName"),
            type = "string",
            name = "directConnectGatewayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayInput", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
    },
})

M.DirectConnectGateway = schema.new({
    id = id.from(_N, "DirectConnectGateway"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DirectConnectGateway", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayName = schema.new({
            id = id.from(_N, "DirectConnectGateway", "directConnectGatewayName"),
            type = "string",
            name = "directConnectGatewayName",
            target_id = prelude.String.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "DirectConnectGateway", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "DirectConnectGateway", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        directConnectGatewayState = schema.new({
            id = id.from(_N, "DirectConnectGateway", "directConnectGatewayState"),
            type = "string",
            name = "directConnectGatewayState",
            target_id = prelude.String.id,
        }),
        stateChangeError = schema.new({
            id = id.from(_N, "DirectConnectGateway", "stateChangeError"),
            type = "string",
            name = "stateChangeError",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DirectConnectGateway", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDirectConnectGatewayOutput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayOutput"),
    type = "structure",
    members = {
        directConnectGateway = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayOutput", "directConnectGateway"),
            type = "structure",
            name = "directConnectGateway",
            target_id = id.from(_N, "DirectConnectGateway"),
            target = M.DirectConnectGateway,
        }),
    },
})

M.CreateDirectConnectGatewayAssociationInput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayAssociationInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
        }),
        addAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationInput", "addAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "addAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationInput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDirectConnectGatewayAssociationOutput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayAssociationOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociation = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationOutput", "directConnectGatewayAssociation"),
            type = "structure",
            name = "directConnectGatewayAssociation",
            target_id = id.from(_N, "DirectConnectGatewayAssociation"),
            target = M.DirectConnectGatewayAssociation,
        }),
    },
})

M.CreateDirectConnectGatewayAssociationProposalInput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        directConnectGatewayOwnerAccount = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalInput", "directConnectGatewayOwnerAccount"),
            type = "string",
            name = "directConnectGatewayOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        addAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalInput", "addAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "addAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        removeAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalInput", "removeAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "removeAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
    },
})

M.DirectConnectGatewayAssociationProposal = schema.new({
    id = id.from(_N, "DirectConnectGatewayAssociationProposal"),
    type = "structure",
    members = {
        proposalId = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociationProposal", "proposalId"),
            type = "string",
            name = "proposalId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociationProposal", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayOwnerAccount = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociationProposal", "directConnectGatewayOwnerAccount"),
            type = "string",
            name = "directConnectGatewayOwnerAccount",
            target_id = prelude.String.id,
        }),
        proposalState = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociationProposal", "proposalState"),
            type = "string",
            name = "proposalState",
            target_id = prelude.String.id,
        }),
        associatedGateway = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociationProposal", "associatedGateway"),
            type = "structure",
            name = "associatedGateway",
            target_id = id.from(_N, "AssociatedGateway"),
            target = M.AssociatedGateway,
        }),
        existingAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociationProposal", "existingAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "existingAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        requestedAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "DirectConnectGatewayAssociationProposal", "requestedAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "requestedAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
    },
})

M.CreateDirectConnectGatewayAssociationProposalOutput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociationProposal = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAssociationProposalOutput", "directConnectGatewayAssociationProposal"),
            type = "structure",
            name = "directConnectGatewayAssociationProposal",
            target_id = id.from(_N, "DirectConnectGatewayAssociationProposal"),
            target = M.DirectConnectGatewayAssociationProposal,
        }),
    },
})

M.CreateInterconnectInput = schema.new({
    id = id.from(_N, "CreateInterconnectInput"),
    type = "structure",
    members = {
        interconnectName = schema.new({
            id = id.from(_N, "CreateInterconnectInput", "interconnectName"),
            type = "string",
            name = "interconnectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bandwidth = schema.new({
            id = id.from(_N, "CreateInterconnectInput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "CreateInterconnectInput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "CreateInterconnectInput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateInterconnectInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "CreateInterconnectInput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        requestMACSec = schema.new({
            id = id.from(_N, "CreateInterconnectInput", "requestMACSec"),
            type = "boolean",
            name = "requestMACSec",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateInterconnectOutput = schema.new({
    id = id.from(_N, "CreateInterconnectOutput"),
    type = "structure",
    members = {
        interconnectId = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "interconnectId"),
            type = "string",
            name = "interconnectId",
            target_id = prelude.String.id,
        }),
        interconnectName = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "interconnectName"),
            type = "string",
            name = "interconnectName",
            target_id = prelude.String.id,
        }),
        interconnectState = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "interconnectState"),
            type = "string",
            name = "interconnectState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "CreateInterconnectOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.CreateLagInput = schema.new({
    id = id.from(_N, "CreateLagInput"),
    type = "structure",
    members = {
        numberOfConnections = schema.new({
            id = id.from(_N, "CreateLagInput", "numberOfConnections"),
            type = "integer",
            name = "numberOfConnections",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        location = schema.new({
            id = id.from(_N, "CreateLagInput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionsBandwidth = schema.new({
            id = id.from(_N, "CreateLagInput", "connectionsBandwidth"),
            type = "string",
            name = "connectionsBandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lagName = schema.new({
            id = id.from(_N, "CreateLagInput", "lagName"),
            type = "string",
            name = "lagName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionId = schema.new({
            id = id.from(_N, "CreateLagInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLagInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        childConnectionTags = schema.new({
            id = id.from(_N, "CreateLagInput", "childConnectionTags"),
            type = "list",
            name = "childConnectionTags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "CreateLagInput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        requestMACSec = schema.new({
            id = id.from(_N, "CreateLagInput", "requestMACSec"),
            type = "boolean",
            name = "requestMACSec",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateLagOutput = schema.new({
    id = id.from(_N, "CreateLagOutput"),
    type = "structure",
    members = {
        connectionsBandwidth = schema.new({
            id = id.from(_N, "CreateLagOutput", "connectionsBandwidth"),
            type = "string",
            name = "connectionsBandwidth",
            target_id = prelude.String.id,
        }),
        numberOfConnections = schema.new({
            id = id.from(_N, "CreateLagOutput", "numberOfConnections"),
            type = "integer",
            name = "numberOfConnections",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "CreateLagOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "CreateLagOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        lagName = schema.new({
            id = id.from(_N, "CreateLagOutput", "lagName"),
            type = "string",
            name = "lagName",
            target_id = prelude.String.id,
        }),
        lagState = schema.new({
            id = id.from(_N, "CreateLagOutput", "lagState"),
            type = "string",
            name = "lagState",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CreateLagOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "CreateLagOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        minimumLinks = schema.new({
            id = id.from(_N, "CreateLagOutput", "minimumLinks"),
            type = "integer",
            name = "minimumLinks",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        awsDevice = schema.new({
            id = id.from(_N, "CreateLagOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "CreateLagOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "CreateLagOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        connections = schema.new({
            id = id.from(_N, "CreateLagOutput", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        allowsHostedConnections = schema.new({
            id = id.from(_N, "CreateLagOutput", "allowsHostedConnections"),
            type = "boolean",
            name = "allowsHostedConnections",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "CreateLagOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "CreateLagOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLagOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "CreateLagOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "CreateLagOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "CreateLagOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "CreateLagOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.NewPrivateVirtualInterface = schema.new({
    id = id.from(_N, "NewPrivateVirtualInterface"),
    type = "structure",
    members = {
        virtualInterfaceName = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vlan = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        enableSiteLink = schema.new({
            id = id.from(_N, "NewPrivateVirtualInterface", "enableSiteLink"),
            type = "boolean",
            name = "enableSiteLink",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreatePrivateVirtualInterfaceInput = schema.new({
    id = id.from(_N, "CreatePrivateVirtualInterfaceInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newPrivateVirtualInterface = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceInput", "newPrivateVirtualInterface"),
            type = "structure",
            name = "newPrivateVirtualInterface",
            target_id = id.from(_N, "NewPrivateVirtualInterface"),
            target = M.NewPrivateVirtualInterface,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePrivateVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "CreatePrivateVirtualInterfaceOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceType = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "virtualInterfaceType"),
            type = "string",
            name = "virtualInterfaceType",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualInterfaceState = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
        customerRouterConfig = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = M.BGPPeer,
        }),
        region = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        siteLinkEnabled = schema.new({
            id = id.from(_N, "CreatePrivateVirtualInterfaceOutput", "siteLinkEnabled"),
            type = "boolean",
            name = "siteLinkEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.NewPublicVirtualInterface = schema.new({
    id = id.from(_N, "NewPublicVirtualInterface"),
    type = "structure",
    members = {
        virtualInterfaceName = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vlan = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        tags = schema.new({
            id = id.from(_N, "NewPublicVirtualInterface", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreatePublicVirtualInterfaceInput = schema.new({
    id = id.from(_N, "CreatePublicVirtualInterfaceInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newPublicVirtualInterface = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceInput", "newPublicVirtualInterface"),
            type = "structure",
            name = "newPublicVirtualInterface",
            target_id = id.from(_N, "NewPublicVirtualInterface"),
            target = M.NewPublicVirtualInterface,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePublicVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "CreatePublicVirtualInterfaceOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceType = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "virtualInterfaceType"),
            type = "string",
            name = "virtualInterfaceType",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualInterfaceState = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
        customerRouterConfig = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = M.BGPPeer,
        }),
        region = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        siteLinkEnabled = schema.new({
            id = id.from(_N, "CreatePublicVirtualInterfaceOutput", "siteLinkEnabled"),
            type = "boolean",
            name = "siteLinkEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.NewTransitVirtualInterface = schema.new({
    id = id.from(_N, "NewTransitVirtualInterface"),
    type = "structure",
    members = {
        virtualInterfaceName = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        enableSiteLink = schema.new({
            id = id.from(_N, "NewTransitVirtualInterface", "enableSiteLink"),
            type = "boolean",
            name = "enableSiteLink",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateTransitVirtualInterfaceInput = schema.new({
    id = id.from(_N, "CreateTransitVirtualInterfaceInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "CreateTransitVirtualInterfaceInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newTransitVirtualInterface = schema.new({
            id = id.from(_N, "CreateTransitVirtualInterfaceInput", "newTransitVirtualInterface"),
            type = "structure",
            name = "newTransitVirtualInterface",
            target_id = id.from(_N, "NewTransitVirtualInterface"),
            target = M.NewTransitVirtualInterface,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTransitVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "CreateTransitVirtualInterfaceOutput"),
    type = "structure",
    members = {
        virtualInterface = schema.new({
            id = id.from(_N, "CreateTransitVirtualInterfaceOutput", "virtualInterface"),
            type = "structure",
            name = "virtualInterface",
            target_id = id.from(_N, "VirtualInterface"),
            target = M.VirtualInterface,
        }),
    },
})

M.DeleteBGPPeerInput = schema.new({
    id = id.from(_N, "DeleteBGPPeerInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "DeleteBGPPeerInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        asn = schema.new({
            id = id.from(_N, "DeleteBGPPeerInput", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "DeleteBGPPeerInput", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "DeleteBGPPeerInput", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        bgpPeerId = schema.new({
            id = id.from(_N, "DeleteBGPPeerInput", "bgpPeerId"),
            type = "string",
            name = "bgpPeerId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteBGPPeerOutput = schema.new({
    id = id.from(_N, "DeleteBGPPeerOutput"),
    type = "structure",
    members = {
        virtualInterface = schema.new({
            id = id.from(_N, "DeleteBGPPeerOutput", "virtualInterface"),
            type = "structure",
            name = "virtualInterface",
            target_id = id.from(_N, "VirtualInterface"),
            target = M.VirtualInterface,
        }),
    },
})

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "DeleteConnectionOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteDirectConnectGatewayInput = schema.new({
    id = id.from(_N, "DeleteDirectConnectGatewayInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDirectConnectGatewayOutput = schema.new({
    id = id.from(_N, "DeleteDirectConnectGatewayOutput"),
    type = "structure",
    members = {
        directConnectGateway = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayOutput", "directConnectGateway"),
            type = "structure",
            name = "directConnectGateway",
            target_id = id.from(_N, "DirectConnectGateway"),
            target = M.DirectConnectGateway,
        }),
    },
})

M.DeleteDirectConnectGatewayAssociationInput = schema.new({
    id = id.from(_N, "DeleteDirectConnectGatewayAssociationInput"),
    type = "structure",
    members = {
        associationId = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayAssociationInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayAssociationInput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDirectConnectGatewayAssociationOutput = schema.new({
    id = id.from(_N, "DeleteDirectConnectGatewayAssociationOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociation = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayAssociationOutput", "directConnectGatewayAssociation"),
            type = "structure",
            name = "directConnectGatewayAssociation",
            target_id = id.from(_N, "DirectConnectGatewayAssociation"),
            target = M.DirectConnectGatewayAssociation,
        }),
    },
})

M.DeleteDirectConnectGatewayAssociationProposalInput = schema.new({
    id = id.from(_N, "DeleteDirectConnectGatewayAssociationProposalInput"),
    type = "structure",
    members = {
        proposalId = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayAssociationProposalInput", "proposalId"),
            type = "string",
            name = "proposalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDirectConnectGatewayAssociationProposalOutput = schema.new({
    id = id.from(_N, "DeleteDirectConnectGatewayAssociationProposalOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociationProposal = schema.new({
            id = id.from(_N, "DeleteDirectConnectGatewayAssociationProposalOutput", "directConnectGatewayAssociationProposal"),
            type = "structure",
            name = "directConnectGatewayAssociationProposal",
            target_id = id.from(_N, "DirectConnectGatewayAssociationProposal"),
            target = M.DirectConnectGatewayAssociationProposal,
        }),
    },
})

M.DeleteInterconnectInput = schema.new({
    id = id.from(_N, "DeleteInterconnectInput"),
    type = "structure",
    members = {
        interconnectId = schema.new({
            id = id.from(_N, "DeleteInterconnectInput", "interconnectId"),
            type = "string",
            name = "interconnectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInterconnectOutput = schema.new({
    id = id.from(_N, "DeleteInterconnectOutput"),
    type = "structure",
    members = {
        interconnectState = schema.new({
            id = id.from(_N, "DeleteInterconnectOutput", "interconnectState"),
            type = "string",
            name = "interconnectState",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteLagInput = schema.new({
    id = id.from(_N, "DeleteLagInput"),
    type = "structure",
    members = {
        lagId = schema.new({
            id = id.from(_N, "DeleteLagInput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLagOutput = schema.new({
    id = id.from(_N, "DeleteLagOutput"),
    type = "structure",
    members = {
        connectionsBandwidth = schema.new({
            id = id.from(_N, "DeleteLagOutput", "connectionsBandwidth"),
            type = "string",
            name = "connectionsBandwidth",
            target_id = prelude.String.id,
        }),
        numberOfConnections = schema.new({
            id = id.from(_N, "DeleteLagOutput", "numberOfConnections"),
            type = "integer",
            name = "numberOfConnections",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "DeleteLagOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "DeleteLagOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        lagName = schema.new({
            id = id.from(_N, "DeleteLagOutput", "lagName"),
            type = "string",
            name = "lagName",
            target_id = prelude.String.id,
        }),
        lagState = schema.new({
            id = id.from(_N, "DeleteLagOutput", "lagState"),
            type = "string",
            name = "lagState",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "DeleteLagOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "DeleteLagOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        minimumLinks = schema.new({
            id = id.from(_N, "DeleteLagOutput", "minimumLinks"),
            type = "integer",
            name = "minimumLinks",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        awsDevice = schema.new({
            id = id.from(_N, "DeleteLagOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "DeleteLagOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "DeleteLagOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        connections = schema.new({
            id = id.from(_N, "DeleteLagOutput", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        allowsHostedConnections = schema.new({
            id = id.from(_N, "DeleteLagOutput", "allowsHostedConnections"),
            type = "boolean",
            name = "allowsHostedConnections",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "DeleteLagOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "DeleteLagOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DeleteLagOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "DeleteLagOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "DeleteLagOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "DeleteLagOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "DeleteLagOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.DeleteVirtualInterfaceInput = schema.new({
    id = id.from(_N, "DeleteVirtualInterfaceInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "DeleteVirtualInterfaceInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVirtualInterfaceOutput = schema.new({
    id = id.from(_N, "DeleteVirtualInterfaceOutput"),
    type = "structure",
    members = {
        virtualInterfaceState = schema.new({
            id = id.from(_N, "DeleteVirtualInterfaceOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectionLoaInput = schema.new({
    id = id.from(_N, "DescribeConnectionLoaInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DescribeConnectionLoaInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerName = schema.new({
            id = id.from(_N, "DescribeConnectionLoaInput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        loaContentType = schema.new({
            id = id.from(_N, "DescribeConnectionLoaInput", "loaContentType"),
            type = "string",
            name = "loaContentType",
            target_id = prelude.String.id,
        }),
    },
})

M.Loa = schema.new({
    id = id.from(_N, "Loa"),
    type = "structure",
    members = {
        loaContent = schema.new({
            id = id.from(_N, "Loa", "loaContent"),
            type = "blob",
            name = "loaContent",
            target_id = prelude.Blob.id,
        }),
        loaContentType = schema.new({
            id = id.from(_N, "Loa", "loaContentType"),
            type = "string",
            name = "loaContentType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectionLoaOutput = schema.new({
    id = id.from(_N, "DescribeConnectionLoaOutput"),
    type = "structure",
    members = {
        loa = schema.new({
            id = id.from(_N, "DescribeConnectionLoaOutput", "loa"),
            type = "structure",
            name = "loa",
            target_id = id.from(_N, "Loa"),
            target = M.Loa,
        }),
    },
})

M.DescribeConnectionsInput = schema.new({
    id = id.from(_N, "DescribeConnectionsInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DescribeConnectionsInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeConnectionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeConnectionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectionsOutput = schema.new({
    id = id.from(_N, "DescribeConnectionsOutput"),
    type = "structure",
    members = {
        connections = schema.new({
            id = id.from(_N, "DescribeConnectionsOutput", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeConnectionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectionsOnInterconnectInput = schema.new({
    id = id.from(_N, "DescribeConnectionsOnInterconnectInput"),
    type = "structure",
    members = {
        interconnectId = schema.new({
            id = id.from(_N, "DescribeConnectionsOnInterconnectInput", "interconnectId"),
            type = "string",
            name = "interconnectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeConnectionsOnInterconnectOutput = schema.new({
    id = id.from(_N, "DescribeConnectionsOnInterconnectOutput"),
    type = "structure",
    members = {
        connections = schema.new({
            id = id.from(_N, "DescribeConnectionsOnInterconnectOutput", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeConnectionsOnInterconnectOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCustomerMetadataInput = schema.new({
    id = id.from(_N, "DescribeCustomerMetadataInput"),
    type = "structure",
})

M.DescribeCustomerMetadataOutput = schema.new({
    id = id.from(_N, "DescribeCustomerMetadataOutput"),
    type = "structure",
    members = {
        agreements = schema.new({
            id = id.from(_N, "DescribeCustomerMetadataOutput", "agreements"),
            type = "list",
            name = "agreements",
            target_id = prelude.Document.id,
            list_member = M.CustomerAgreement,
        }),
        nniPartnerType = schema.new({
            id = id.from(_N, "DescribeCustomerMetadataOutput", "nniPartnerType"),
            type = "string",
            name = "nniPartnerType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewayAssociationProposalsInput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        proposalId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsInput", "proposalId"),
            type = "string",
            name = "proposalId",
            target_id = prelude.String.id,
        }),
        associatedGatewayId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsInput", "associatedGatewayId"),
            type = "string",
            name = "associatedGatewayId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewayAssociationProposalsOutput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociationProposals = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsOutput", "directConnectGatewayAssociationProposals"),
            type = "list",
            name = "directConnectGatewayAssociationProposals",
            target_id = prelude.Document.id,
            list_member = M.DirectConnectGatewayAssociationProposal,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationProposalsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewayAssociationsInput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewayAssociationsInput"),
    type = "structure",
    members = {
        associationId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        associatedGatewayId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsInput", "associatedGatewayId"),
            type = "string",
            name = "associatedGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsInput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewayAssociationsOutput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewayAssociationsOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociations = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsOutput", "directConnectGatewayAssociations"),
            type = "list",
            name = "directConnectGatewayAssociations",
            target_id = prelude.Document.id,
            list_member = M.DirectConnectGatewayAssociation,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAssociationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewayAttachmentsInput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectConnectGatewayAttachment = schema.new({
    id = id.from(_N, "DirectConnectGatewayAttachment"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceRegion = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "virtualInterfaceRegion"),
            type = "string",
            name = "virtualInterfaceRegion",
            target_id = prelude.String.id,
        }),
        virtualInterfaceOwnerAccount = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "virtualInterfaceOwnerAccount"),
            type = "string",
            name = "virtualInterfaceOwnerAccount",
            target_id = prelude.String.id,
        }),
        attachmentState = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "attachmentState"),
            type = "string",
            name = "attachmentState",
            target_id = prelude.String.id,
        }),
        attachmentType = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "attachmentType"),
            type = "string",
            name = "attachmentType",
            target_id = prelude.String.id,
        }),
        stateChangeError = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "stateChangeError"),
            type = "string",
            name = "stateChangeError",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewayAttachmentsOutput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsOutput"),
    type = "structure",
    members = {
        directConnectGatewayAttachments = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsOutput", "directConnectGatewayAttachments"),
            type = "list",
            name = "directConnectGatewayAttachments",
            target_id = prelude.Document.id,
            list_member = M.DirectConnectGatewayAttachment,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewayAttachmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewaysInput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewaysInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewaysInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewaysInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewaysInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectConnectGatewaysOutput = schema.new({
    id = id.from(_N, "DescribeDirectConnectGatewaysOutput"),
    type = "structure",
    members = {
        directConnectGateways = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewaysOutput", "directConnectGateways"),
            type = "list",
            name = "directConnectGateways",
            target_id = prelude.Document.id,
            list_member = M.DirectConnectGateway,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeDirectConnectGatewaysOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeHostedConnectionsInput = schema.new({
    id = id.from(_N, "DescribeHostedConnectionsInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DescribeHostedConnectionsInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeHostedConnectionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeHostedConnectionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeHostedConnectionsOutput = schema.new({
    id = id.from(_N, "DescribeHostedConnectionsOutput"),
    type = "structure",
    members = {
        connections = schema.new({
            id = id.from(_N, "DescribeHostedConnectionsOutput", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeHostedConnectionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInterconnectLoaInput = schema.new({
    id = id.from(_N, "DescribeInterconnectLoaInput"),
    type = "structure",
    members = {
        interconnectId = schema.new({
            id = id.from(_N, "DescribeInterconnectLoaInput", "interconnectId"),
            type = "string",
            name = "interconnectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerName = schema.new({
            id = id.from(_N, "DescribeInterconnectLoaInput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        loaContentType = schema.new({
            id = id.from(_N, "DescribeInterconnectLoaInput", "loaContentType"),
            type = "string",
            name = "loaContentType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInterconnectLoaOutput = schema.new({
    id = id.from(_N, "DescribeInterconnectLoaOutput"),
    type = "structure",
    members = {
        loa = schema.new({
            id = id.from(_N, "DescribeInterconnectLoaOutput", "loa"),
            type = "structure",
            name = "loa",
            target_id = id.from(_N, "Loa"),
            target = M.Loa,
        }),
    },
})

M.DescribeInterconnectsInput = schema.new({
    id = id.from(_N, "DescribeInterconnectsInput"),
    type = "structure",
    members = {
        interconnectId = schema.new({
            id = id.from(_N, "DescribeInterconnectsInput", "interconnectId"),
            type = "string",
            name = "interconnectId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeInterconnectsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeInterconnectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Interconnect = schema.new({
    id = id.from(_N, "Interconnect"),
    type = "structure",
    members = {
        interconnectId = schema.new({
            id = id.from(_N, "Interconnect", "interconnectId"),
            type = "string",
            name = "interconnectId",
            target_id = prelude.String.id,
        }),
        interconnectName = schema.new({
            id = id.from(_N, "Interconnect", "interconnectName"),
            type = "string",
            name = "interconnectName",
            target_id = prelude.String.id,
        }),
        interconnectState = schema.new({
            id = id.from(_N, "Interconnect", "interconnectState"),
            type = "string",
            name = "interconnectState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "Interconnect", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "Interconnect", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "Interconnect", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "Interconnect", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "Interconnect", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "Interconnect", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "Interconnect", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "Interconnect", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "Interconnect", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "Interconnect", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Interconnect", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "Interconnect", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "Interconnect", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "Interconnect", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "Interconnect", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "Interconnect", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.DescribeInterconnectsOutput = schema.new({
    id = id.from(_N, "DescribeInterconnectsOutput"),
    type = "structure",
    members = {
        interconnects = schema.new({
            id = id.from(_N, "DescribeInterconnectsOutput", "interconnects"),
            type = "list",
            name = "interconnects",
            target_id = prelude.Document.id,
            list_member = M.Interconnect,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeInterconnectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLagsInput = schema.new({
    id = id.from(_N, "DescribeLagsInput"),
    type = "structure",
    members = {
        lagId = schema.new({
            id = id.from(_N, "DescribeLagsInput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeLagsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeLagsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Lag = schema.new({
    id = id.from(_N, "Lag"),
    type = "structure",
    members = {
        connectionsBandwidth = schema.new({
            id = id.from(_N, "Lag", "connectionsBandwidth"),
            type = "string",
            name = "connectionsBandwidth",
            target_id = prelude.String.id,
        }),
        numberOfConnections = schema.new({
            id = id.from(_N, "Lag", "numberOfConnections"),
            type = "integer",
            name = "numberOfConnections",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "Lag", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "Lag", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        lagName = schema.new({
            id = id.from(_N, "Lag", "lagName"),
            type = "string",
            name = "lagName",
            target_id = prelude.String.id,
        }),
        lagState = schema.new({
            id = id.from(_N, "Lag", "lagState"),
            type = "string",
            name = "lagState",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "Lag", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "Lag", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        minimumLinks = schema.new({
            id = id.from(_N, "Lag", "minimumLinks"),
            type = "integer",
            name = "minimumLinks",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        awsDevice = schema.new({
            id = id.from(_N, "Lag", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "Lag", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "Lag", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        connections = schema.new({
            id = id.from(_N, "Lag", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        allowsHostedConnections = schema.new({
            id = id.from(_N, "Lag", "allowsHostedConnections"),
            type = "boolean",
            name = "allowsHostedConnections",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "Lag", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "Lag", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Lag", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "Lag", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "Lag", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "Lag", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "Lag", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.DescribeLagsOutput = schema.new({
    id = id.from(_N, "DescribeLagsOutput"),
    type = "structure",
    members = {
        lags = schema.new({
            id = id.from(_N, "DescribeLagsOutput", "lags"),
            type = "list",
            name = "lags",
            target_id = prelude.Document.id,
            list_member = M.Lag,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeLagsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLoaInput = schema.new({
    id = id.from(_N, "DescribeLoaInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DescribeLoaInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerName = schema.new({
            id = id.from(_N, "DescribeLoaInput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        loaContentType = schema.new({
            id = id.from(_N, "DescribeLoaInput", "loaContentType"),
            type = "string",
            name = "loaContentType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLoaOutput = schema.new({
    id = id.from(_N, "DescribeLoaOutput"),
    type = "structure",
    members = {
        loaContent = schema.new({
            id = id.from(_N, "DescribeLoaOutput", "loaContent"),
            type = "blob",
            name = "loaContent",
            target_id = prelude.Blob.id,
        }),
        loaContentType = schema.new({
            id = id.from(_N, "DescribeLoaOutput", "loaContentType"),
            type = "string",
            name = "loaContentType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLocationsInput = schema.new({
    id = id.from(_N, "DescribeLocationsInput"),
    type = "structure",
})

M.Location = schema.new({
    id = id.from(_N, "Location"),
    type = "structure",
    members = {
        locationCode = schema.new({
            id = id.from(_N, "Location", "locationCode"),
            type = "string",
            name = "locationCode",
            target_id = prelude.String.id,
        }),
        locationName = schema.new({
            id = id.from(_N, "Location", "locationName"),
            type = "string",
            name = "locationName",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "Location", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        availablePortSpeeds = schema.new({
            id = id.from(_N, "Location", "availablePortSpeeds"),
            type = "list",
            name = "availablePortSpeeds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        availableProviders = schema.new({
            id = id.from(_N, "Location", "availableProviders"),
            type = "list",
            name = "availableProviders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        availableMacSecPortSpeeds = schema.new({
            id = id.from(_N, "Location", "availableMacSecPortSpeeds"),
            type = "list",
            name = "availableMacSecPortSpeeds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeLocationsOutput = schema.new({
    id = id.from(_N, "DescribeLocationsOutput"),
    type = "structure",
    members = {
        locations = schema.new({
            id = id.from(_N, "DescribeLocationsOutput", "locations"),
            type = "list",
            name = "locations",
            target_id = prelude.Document.id,
            list_member = M.Location,
        }),
    },
})

M.DescribeRouterConfigurationInput = schema.new({
    id = id.from(_N, "DescribeRouterConfigurationInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "DescribeRouterConfigurationInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        routerTypeIdentifier = schema.new({
            id = id.from(_N, "DescribeRouterConfigurationInput", "routerTypeIdentifier"),
            type = "string",
            name = "routerTypeIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.RouterType = schema.new({
    id = id.from(_N, "RouterType"),
    type = "structure",
    members = {
        vendor = schema.new({
            id = id.from(_N, "RouterType", "vendor"),
            type = "string",
            name = "vendor",
            target_id = prelude.String.id,
        }),
        platform = schema.new({
            id = id.from(_N, "RouterType", "platform"),
            type = "string",
            name = "platform",
            target_id = prelude.String.id,
        }),
        software = schema.new({
            id = id.from(_N, "RouterType", "software"),
            type = "string",
            name = "software",
            target_id = prelude.String.id,
        }),
        xsltTemplateName = schema.new({
            id = id.from(_N, "RouterType", "xsltTemplateName"),
            type = "string",
            name = "xsltTemplateName",
            target_id = prelude.String.id,
        }),
        xsltTemplateNameForMacSec = schema.new({
            id = id.from(_N, "RouterType", "xsltTemplateNameForMacSec"),
            type = "string",
            name = "xsltTemplateNameForMacSec",
            target_id = prelude.String.id,
        }),
        routerTypeIdentifier = schema.new({
            id = id.from(_N, "RouterType", "routerTypeIdentifier"),
            type = "string",
            name = "routerTypeIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRouterConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeRouterConfigurationOutput"),
    type = "structure",
    members = {
        customerRouterConfig = schema.new({
            id = id.from(_N, "DescribeRouterConfigurationOutput", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        router = schema.new({
            id = id.from(_N, "DescribeRouterConfigurationOutput", "router"),
            type = "structure",
            name = "router",
            target_id = id.from(_N, "RouterType"),
            target = M.RouterType,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "DescribeRouterConfigurationOutput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "DescribeRouterConfigurationOutput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTagsInput = schema.new({
    id = id.from(_N, "DescribeTagsInput"),
    type = "structure",
    members = {
        resourceArns = schema.new({
            id = id.from(_N, "DescribeTagsInput", "resourceArns"),
            type = "list",
            name = "resourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceTag = schema.new({
    id = id.from(_N, "ResourceTag"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ResourceTag", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ResourceTag", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.DescribeTagsOutput = schema.new({
    id = id.from(_N, "DescribeTagsOutput"),
    type = "structure",
    members = {
        resourceTags = schema.new({
            id = id.from(_N, "DescribeTagsOutput", "resourceTags"),
            type = "list",
            name = "resourceTags",
            target_id = prelude.Document.id,
            list_member = M.ResourceTag,
        }),
    },
})

M.DescribeVirtualGatewaysInput = schema.new({
    id = id.from(_N, "DescribeVirtualGatewaysInput"),
    type = "structure",
})

M.VirtualGateway = schema.new({
    id = id.from(_N, "VirtualGateway"),
    type = "structure",
    members = {
        virtualGatewayId = schema.new({
            id = id.from(_N, "VirtualGateway", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        virtualGatewayState = schema.new({
            id = id.from(_N, "VirtualGateway", "virtualGatewayState"),
            type = "string",
            name = "virtualGatewayState",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeVirtualGatewaysOutput = schema.new({
    id = id.from(_N, "DescribeVirtualGatewaysOutput"),
    type = "structure",
    members = {
        virtualGateways = schema.new({
            id = id.from(_N, "DescribeVirtualGatewaysOutput", "virtualGateways"),
            type = "list",
            name = "virtualGateways",
            target_id = prelude.Document.id,
            list_member = M.VirtualGateway,
        }),
    },
})

M.DescribeVirtualInterfacesInput = schema.new({
    id = id.from(_N, "DescribeVirtualInterfacesInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DescribeVirtualInterfacesInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "DescribeVirtualInterfacesInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeVirtualInterfacesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeVirtualInterfacesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeVirtualInterfacesOutput = schema.new({
    id = id.from(_N, "DescribeVirtualInterfacesOutput"),
    type = "structure",
    members = {
        virtualInterfaces = schema.new({
            id = id.from(_N, "DescribeVirtualInterfacesOutput", "virtualInterfaces"),
            type = "list",
            name = "virtualInterfaces",
            target_id = prelude.Document.id,
            list_member = M.VirtualInterface,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeVirtualInterfacesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateConnectionFromLagInput = schema.new({
    id = id.from(_N, "DisassociateConnectionFromLagInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagInput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateConnectionFromLagOutput = schema.new({
    id = id.from(_N, "DisassociateConnectionFromLagOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "DisassociateConnectionFromLagOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DisassociateMacSecKeyInput = schema.new({
    id = id.from(_N, "DisassociateMacSecKeyInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DisassociateMacSecKeyInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secretARN = schema.new({
            id = id.from(_N, "DisassociateMacSecKeyInput", "secretARN"),
            type = "string",
            name = "secretARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateMacSecKeyOutput = schema.new({
    id = id.from(_N, "DisassociateMacSecKeyOutput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "DisassociateMacSecKeyOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "DisassociateMacSecKeyOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.ListVirtualInterfaceTestHistoryInput = schema.new({
    id = id.from(_N, "ListVirtualInterfaceTestHistoryInput"),
    type = "structure",
    members = {
        testId = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryInput", "testId"),
            type = "string",
            name = "testId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryInput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.VirtualInterfaceTestHistory = schema.new({
    id = id.from(_N, "VirtualInterfaceTestHistory"),
    type = "structure",
    members = {
        testId = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "testId"),
            type = "string",
            name = "testId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        testDurationInMinutes = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "testDurationInMinutes"),
            type = "integer",
            name = "testDurationInMinutes",
            target_id = prelude.Integer.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "VirtualInterfaceTestHistory", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListVirtualInterfaceTestHistoryOutput = schema.new({
    id = id.from(_N, "ListVirtualInterfaceTestHistoryOutput"),
    type = "structure",
    members = {
        virtualInterfaceTestHistory = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryOutput", "virtualInterfaceTestHistory"),
            type = "list",
            name = "virtualInterfaceTestHistory",
            target_id = prelude.Document.id,
            list_member = M.VirtualInterfaceTestHistory,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVirtualInterfaceTestHistoryOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartBgpFailoverTestInput = schema.new({
    id = id.from(_N, "StartBgpFailoverTestInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "StartBgpFailoverTestInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "StartBgpFailoverTestInput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        testDurationInMinutes = schema.new({
            id = id.from(_N, "StartBgpFailoverTestInput", "testDurationInMinutes"),
            type = "integer",
            name = "testDurationInMinutes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StartBgpFailoverTestOutput = schema.new({
    id = id.from(_N, "StartBgpFailoverTestOutput"),
    type = "structure",
    members = {
        virtualInterfaceTest = schema.new({
            id = id.from(_N, "StartBgpFailoverTestOutput", "virtualInterfaceTest"),
            type = "structure",
            name = "virtualInterfaceTest",
            target_id = id.from(_N, "VirtualInterfaceTestHistory"),
            target = M.VirtualInterfaceTestHistory,
        }),
    },
})

M.StopBgpFailoverTestInput = schema.new({
    id = id.from(_N, "StopBgpFailoverTestInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "StopBgpFailoverTestInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopBgpFailoverTestOutput = schema.new({
    id = id.from(_N, "StopBgpFailoverTestOutput"),
    type = "structure",
    members = {
        virtualInterfaceTest = schema.new({
            id = id.from(_N, "StopBgpFailoverTestOutput", "virtualInterfaceTest"),
            type = "structure",
            name = "virtualInterfaceTest",
            target_id = id.from(_N, "VirtualInterfaceTestHistory"),
            target = M.VirtualInterfaceTestHistory,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateConnectionInput = schema.new({
    id = id.from(_N, "UpdateConnectionInput"),
    type = "structure",
    members = {
        connectionId = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionName = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectionOutput = schema.new({
    id = id.from(_N, "UpdateConnectionOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        connectionName = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "connectionName"),
            type = "string",
            name = "connectionName",
            target_id = prelude.String.id,
        }),
        connectionState = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "connectionState"),
            type = "string",
            name = "connectionState",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        partnerName = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "partnerName"),
            type = "string",
            name = "partnerName",
            target_id = prelude.String.id,
        }),
        loaIssueTime = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "loaIssueTime"),
            type = "timestamp",
            name = "loaIssueTime",
            target_id = prelude.Timestamp.id,
        }),
        lagId = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        awsDevice = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        portEncryptionStatus = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "portEncryptionStatus"),
            type = "string",
            name = "portEncryptionStatus",
            target_id = prelude.String.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
        partnerInterconnectMacSecCapable = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "partnerInterconnectMacSecCapable"),
            type = "boolean",
            name = "partnerInterconnectMacSecCapable",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateDirectConnectGatewayInput = schema.new({
    id = id.from(_N, "UpdateDirectConnectGatewayInput"),
    type = "structure",
    members = {
        directConnectGatewayId = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayInput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newDirectConnectGatewayName = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayInput", "newDirectConnectGatewayName"),
            type = "string",
            name = "newDirectConnectGatewayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDirectConnectGatewayOutput = schema.new({
    id = id.from(_N, "UpdateDirectConnectGatewayOutput"),
    type = "structure",
    members = {
        directConnectGateway = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayOutput", "directConnectGateway"),
            type = "structure",
            name = "directConnectGateway",
            target_id = id.from(_N, "DirectConnectGateway"),
            target = M.DirectConnectGateway,
        }),
    },
})

M.UpdateDirectConnectGatewayAssociationInput = schema.new({
    id = id.from(_N, "UpdateDirectConnectGatewayAssociationInput"),
    type = "structure",
    members = {
        associationId = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        addAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayAssociationInput", "addAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "addAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        removeAllowedPrefixesToDirectConnectGateway = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayAssociationInput", "removeAllowedPrefixesToDirectConnectGateway"),
            type = "list",
            name = "removeAllowedPrefixesToDirectConnectGateway",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
    },
})

M.UpdateDirectConnectGatewayAssociationOutput = schema.new({
    id = id.from(_N, "UpdateDirectConnectGatewayAssociationOutput"),
    type = "structure",
    members = {
        directConnectGatewayAssociation = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayAssociationOutput", "directConnectGatewayAssociation"),
            type = "structure",
            name = "directConnectGatewayAssociation",
            target_id = id.from(_N, "DirectConnectGatewayAssociation"),
            target = M.DirectConnectGatewayAssociation,
        }),
    },
})

M.UpdateLagInput = schema.new({
    id = id.from(_N, "UpdateLagInput"),
    type = "structure",
    members = {
        lagId = schema.new({
            id = id.from(_N, "UpdateLagInput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lagName = schema.new({
            id = id.from(_N, "UpdateLagInput", "lagName"),
            type = "string",
            name = "lagName",
            target_id = prelude.String.id,
        }),
        minimumLinks = schema.new({
            id = id.from(_N, "UpdateLagInput", "minimumLinks"),
            type = "integer",
            name = "minimumLinks",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "UpdateLagInput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLagOutput = schema.new({
    id = id.from(_N, "UpdateLagOutput"),
    type = "structure",
    members = {
        connectionsBandwidth = schema.new({
            id = id.from(_N, "UpdateLagOutput", "connectionsBandwidth"),
            type = "string",
            name = "connectionsBandwidth",
            target_id = prelude.String.id,
        }),
        numberOfConnections = schema.new({
            id = id.from(_N, "UpdateLagOutput", "numberOfConnections"),
            type = "integer",
            name = "numberOfConnections",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lagId = schema.new({
            id = id.from(_N, "UpdateLagOutput", "lagId"),
            type = "string",
            name = "lagId",
            target_id = prelude.String.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "UpdateLagOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        lagName = schema.new({
            id = id.from(_N, "UpdateLagOutput", "lagName"),
            type = "string",
            name = "lagName",
            target_id = prelude.String.id,
        }),
        lagState = schema.new({
            id = id.from(_N, "UpdateLagOutput", "lagState"),
            type = "string",
            name = "lagState",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "UpdateLagOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "UpdateLagOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        minimumLinks = schema.new({
            id = id.from(_N, "UpdateLagOutput", "minimumLinks"),
            type = "integer",
            name = "minimumLinks",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        awsDevice = schema.new({
            id = id.from(_N, "UpdateLagOutput", "awsDevice"),
            type = "string",
            name = "awsDevice",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "UpdateLagOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "UpdateLagOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        connections = schema.new({
            id = id.from(_N, "UpdateLagOutput", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        allowsHostedConnections = schema.new({
            id = id.from(_N, "UpdateLagOutput", "allowsHostedConnections"),
            type = "boolean",
            name = "allowsHostedConnections",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "UpdateLagOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        hasLogicalRedundancy = schema.new({
            id = id.from(_N, "UpdateLagOutput", "hasLogicalRedundancy"),
            type = "string",
            name = "hasLogicalRedundancy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateLagOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        providerName = schema.new({
            id = id.from(_N, "UpdateLagOutput", "providerName"),
            type = "string",
            name = "providerName",
            target_id = prelude.String.id,
        }),
        macSecCapable = schema.new({
            id = id.from(_N, "UpdateLagOutput", "macSecCapable"),
            type = "boolean",
            name = "macSecCapable",
            target_id = prelude.Boolean.id,
        }),
        encryptionMode = schema.new({
            id = id.from(_N, "UpdateLagOutput", "encryptionMode"),
            type = "string",
            name = "encryptionMode",
            target_id = prelude.String.id,
        }),
        macSecKeys = schema.new({
            id = id.from(_N, "UpdateLagOutput", "macSecKeys"),
            type = "list",
            name = "macSecKeys",
            target_id = prelude.Document.id,
            list_member = M.MacSecKey,
        }),
    },
})

M.UpdateVirtualInterfaceAttributesInput = schema.new({
    id = id.from(_N, "UpdateVirtualInterfaceAttributesInput"),
    type = "structure",
    members = {
        virtualInterfaceId = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesInput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mtu = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesInput", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        enableSiteLink = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesInput", "enableSiteLink"),
            type = "boolean",
            name = "enableSiteLink",
            target_id = prelude.Boolean.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesInput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateVirtualInterfaceAttributesOutput = schema.new({
    id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput"),
    type = "structure",
    members = {
        ownerAccount = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
        }),
        virtualInterfaceId = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "virtualInterfaceId"),
            type = "string",
            name = "virtualInterfaceId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        virtualInterfaceType = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "virtualInterfaceType"),
            type = "string",
            name = "virtualInterfaceType",
            target_id = prelude.String.id,
        }),
        virtualInterfaceName = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "virtualInterfaceName"),
            type = "string",
            name = "virtualInterfaceName",
            target_id = prelude.String.id,
        }),
        vlan = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "vlan"),
            type = "integer",
            name = "vlan",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asn = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "asn"),
            type = "integer",
            name = "asn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        asnLong = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "asnLong"),
            type = "long",
            name = "asnLong",
            target_id = prelude.Long.id,
        }),
        amazonSideAsn = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "amazonSideAsn"),
            type = "long",
            name = "amazonSideAsn",
            target_id = prelude.Long.id,
        }),
        authKey = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "authKey"),
            type = "string",
            name = "authKey",
            target_id = prelude.String.id,
        }),
        amazonAddress = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "amazonAddress"),
            type = "string",
            name = "amazonAddress",
            target_id = prelude.String.id,
        }),
        customerAddress = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "customerAddress"),
            type = "string",
            name = "customerAddress",
            target_id = prelude.String.id,
        }),
        addressFamily = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "addressFamily"),
            type = "string",
            name = "addressFamily",
            target_id = prelude.String.id,
        }),
        virtualInterfaceState = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "virtualInterfaceState"),
            type = "string",
            name = "virtualInterfaceState",
            target_id = prelude.String.id,
        }),
        customerRouterConfig = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "customerRouterConfig"),
            type = "string",
            name = "customerRouterConfig",
            target_id = prelude.String.id,
        }),
        mtu = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "mtu"),
            type = "integer",
            name = "mtu",
            target_id = prelude.Integer.id,
        }),
        jumboFrameCapable = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "jumboFrameCapable"),
            type = "boolean",
            name = "jumboFrameCapable",
            target_id = prelude.Boolean.id,
        }),
        virtualGatewayId = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "virtualGatewayId"),
            type = "string",
            name = "virtualGatewayId",
            target_id = prelude.String.id,
        }),
        directConnectGatewayId = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "directConnectGatewayId"),
            type = "string",
            name = "directConnectGatewayId",
            target_id = prelude.String.id,
        }),
        routeFilterPrefixes = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "routeFilterPrefixes"),
            type = "list",
            name = "routeFilterPrefixes",
            target_id = prelude.Document.id,
            list_member = M.RouteFilterPrefix,
        }),
        bgpPeers = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "bgpPeers"),
            type = "list",
            name = "bgpPeers",
            target_id = prelude.Document.id,
            list_member = M.BGPPeer,
        }),
        region = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        awsDeviceV2 = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "awsDeviceV2"),
            type = "string",
            name = "awsDeviceV2",
            target_id = prelude.String.id,
        }),
        awsLogicalDeviceId = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "awsLogicalDeviceId"),
            type = "string",
            name = "awsLogicalDeviceId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        siteLinkEnabled = schema.new({
            id = id.from(_N, "UpdateVirtualInterfaceAttributesOutput", "siteLinkEnabled"),
            type = "boolean",
            name = "siteLinkEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

return M
