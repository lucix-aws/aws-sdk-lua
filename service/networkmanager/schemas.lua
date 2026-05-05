local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.networkmanager"

local M = {}

M.AcceptAttachmentInput = schema.new({
    id = id.from(_N, "AcceptAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "AcceptAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.AttachmentError = schema.new({
    id = id.from(_N, "AttachmentError"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "AttachmentError", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "AttachmentError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "AttachmentError", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "AttachmentError", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.ProposedNetworkFunctionGroupChange = schema.new({
    id = id.from(_N, "ProposedNetworkFunctionGroupChange"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ProposedNetworkFunctionGroupChange", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AttachmentPolicyRuleNumber = schema.new({
            id = id.from(_N, "ProposedNetworkFunctionGroupChange", "AttachmentPolicyRuleNumber"),
            type = "integer",
            name = "AttachmentPolicyRuleNumber",
            target_id = prelude.Integer.id,
        }),
        NetworkFunctionGroupName = schema.new({
            id = id.from(_N, "ProposedNetworkFunctionGroupChange", "NetworkFunctionGroupName"),
            type = "string",
            name = "NetworkFunctionGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ProposedSegmentChange = schema.new({
    id = id.from(_N, "ProposedSegmentChange"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ProposedSegmentChange", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AttachmentPolicyRuleNumber = schema.new({
            id = id.from(_N, "ProposedSegmentChange", "AttachmentPolicyRuleNumber"),
            type = "integer",
            name = "AttachmentPolicyRuleNumber",
            target_id = prelude.Integer.id,
        }),
        SegmentName = schema.new({
            id = id.from(_N, "ProposedSegmentChange", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
        }),
    },
})

M.Attachment = schema.new({
    id = id.from(_N, "Attachment"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "Attachment", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        CoreNetworkArn = schema.new({
            id = id.from(_N, "Attachment", "CoreNetworkArn"),
            type = "string",
            name = "CoreNetworkArn",
            target_id = prelude.String.id,
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "Attachment", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "Attachment", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        AttachmentType = schema.new({
            id = id.from(_N, "Attachment", "AttachmentType"),
            type = "string",
            name = "AttachmentType",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Attachment", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "Attachment", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
        EdgeLocations = schema.new({
            id = id.from(_N, "Attachment", "EdgeLocations"),
            type = "list",
            name = "EdgeLocations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Attachment", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        AttachmentPolicyRuleNumber = schema.new({
            id = id.from(_N, "Attachment", "AttachmentPolicyRuleNumber"),
            type = "integer",
            name = "AttachmentPolicyRuleNumber",
            target_id = prelude.Integer.id,
        }),
        SegmentName = schema.new({
            id = id.from(_N, "Attachment", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
        }),
        NetworkFunctionGroupName = schema.new({
            id = id.from(_N, "Attachment", "NetworkFunctionGroupName"),
            type = "string",
            name = "NetworkFunctionGroupName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Attachment", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ProposedSegmentChange = schema.new({
            id = id.from(_N, "Attachment", "ProposedSegmentChange"),
            type = "structure",
            name = "ProposedSegmentChange",
            target_id = id.from(_N, "ProposedSegmentChange"),
            target = M.ProposedSegmentChange,
        }),
        ProposedNetworkFunctionGroupChange = schema.new({
            id = id.from(_N, "Attachment", "ProposedNetworkFunctionGroupChange"),
            type = "structure",
            name = "ProposedNetworkFunctionGroupChange",
            target_id = id.from(_N, "ProposedNetworkFunctionGroupChange"),
            target = M.ProposedNetworkFunctionGroupChange,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Attachment", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "Attachment", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        LastModificationErrors = schema.new({
            id = id.from(_N, "Attachment", "LastModificationErrors"),
            type = "list",
            name = "LastModificationErrors",
            target_id = prelude.Document.id,
            list_member = M.AttachmentError,
        }),
    },
})

M.AcceptAttachmentOutput = schema.new({
    id = id.from(_N, "AcceptAttachmentResponse"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "AcceptAttachmentOutput", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
    },
})

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Context = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Fields = schema.new({
            id = id.from(_N, "ValidationException", "Fields"),
            type = "list",
            name = "Fields",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.AccountStatus = schema.new({
    id = id.from(_N, "AccountStatus"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "AccountStatus", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        SLRDeploymentStatus = schema.new({
            id = id.from(_N, "AccountStatus", "SLRDeploymentStatus"),
            type = "string",
            name = "SLRDeploymentStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateConnectPeerInput = schema.new({
    id = id.from(_N, "AssociateConnectPeerRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "AssociateConnectPeerInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectPeerId = schema.new({
            id = id.from(_N, "AssociateConnectPeerInput", "ConnectPeerId"),
            type = "string",
            name = "ConnectPeerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "AssociateConnectPeerInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "AssociateConnectPeerInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectPeerAssociation = schema.new({
    id = id.from(_N, "ConnectPeerAssociation"),
    type = "structure",
    members = {
        ConnectPeerId = schema.new({
            id = id.from(_N, "ConnectPeerAssociation", "ConnectPeerId"),
            type = "string",
            name = "ConnectPeerId",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "ConnectPeerAssociation", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "ConnectPeerAssociation", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        LinkId = schema.new({
            id = id.from(_N, "ConnectPeerAssociation", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ConnectPeerAssociation", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateConnectPeerOutput = schema.new({
    id = id.from(_N, "AssociateConnectPeerResponse"),
    type = "structure",
    members = {
        ConnectPeerAssociation = schema.new({
            id = id.from(_N, "AssociateConnectPeerOutput", "ConnectPeerAssociation"),
            type = "structure",
            name = "ConnectPeerAssociation",
            target_id = id.from(_N, "ConnectPeerAssociation"),
            target = M.ConnectPeerAssociation,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        LimitCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "LimitCode"),
            type = "string",
            name = "LimitCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateCustomerGatewayInput = schema.new({
    id = id.from(_N, "AssociateCustomerGatewayRequest"),
    type = "structure",
    members = {
        CustomerGatewayArn = schema.new({
            id = id.from(_N, "AssociateCustomerGatewayInput", "CustomerGatewayArn"),
            type = "string",
            name = "CustomerGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "AssociateCustomerGatewayInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "AssociateCustomerGatewayInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "AssociateCustomerGatewayInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomerGatewayAssociation = schema.new({
    id = id.from(_N, "CustomerGatewayAssociation"),
    type = "structure",
    members = {
        CustomerGatewayArn = schema.new({
            id = id.from(_N, "CustomerGatewayAssociation", "CustomerGatewayArn"),
            type = "string",
            name = "CustomerGatewayArn",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CustomerGatewayAssociation", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "CustomerGatewayAssociation", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        LinkId = schema.new({
            id = id.from(_N, "CustomerGatewayAssociation", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "CustomerGatewayAssociation", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateCustomerGatewayOutput = schema.new({
    id = id.from(_N, "AssociateCustomerGatewayResponse"),
    type = "structure",
    members = {
        CustomerGatewayAssociation = schema.new({
            id = id.from(_N, "AssociateCustomerGatewayOutput", "CustomerGatewayAssociation"),
            type = "structure",
            name = "CustomerGatewayAssociation",
            target_id = id.from(_N, "CustomerGatewayAssociation"),
            target = M.CustomerGatewayAssociation,
        }),
    },
})

M.AssociateLinkInput = schema.new({
    id = id.from(_N, "AssociateLinkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "AssociateLinkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "AssociateLinkInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "AssociateLinkInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LinkAssociation = schema.new({
    id = id.from(_N, "LinkAssociation"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "LinkAssociation", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "LinkAssociation", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        LinkId = schema.new({
            id = id.from(_N, "LinkAssociation", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        LinkAssociationState = schema.new({
            id = id.from(_N, "LinkAssociation", "LinkAssociationState"),
            type = "string",
            name = "LinkAssociationState",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateLinkOutput = schema.new({
    id = id.from(_N, "AssociateLinkResponse"),
    type = "structure",
    members = {
        LinkAssociation = schema.new({
            id = id.from(_N, "AssociateLinkOutput", "LinkAssociation"),
            type = "structure",
            name = "LinkAssociation",
            target_id = id.from(_N, "LinkAssociation"),
            target = M.LinkAssociation,
        }),
    },
})

M.AssociateTransitGatewayConnectPeerInput = schema.new({
    id = id.from(_N, "AssociateTransitGatewayConnectPeerRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "AssociateTransitGatewayConnectPeerInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TransitGatewayConnectPeerArn = schema.new({
            id = id.from(_N, "AssociateTransitGatewayConnectPeerInput", "TransitGatewayConnectPeerArn"),
            type = "string",
            name = "TransitGatewayConnectPeerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "AssociateTransitGatewayConnectPeerInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "AssociateTransitGatewayConnectPeerInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
    },
})

M.TransitGatewayConnectPeerAssociation = schema.new({
    id = id.from(_N, "TransitGatewayConnectPeerAssociation"),
    type = "structure",
    members = {
        TransitGatewayConnectPeerArn = schema.new({
            id = id.from(_N, "TransitGatewayConnectPeerAssociation", "TransitGatewayConnectPeerArn"),
            type = "string",
            name = "TransitGatewayConnectPeerArn",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "TransitGatewayConnectPeerAssociation", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "TransitGatewayConnectPeerAssociation", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        LinkId = schema.new({
            id = id.from(_N, "TransitGatewayConnectPeerAssociation", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "TransitGatewayConnectPeerAssociation", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateTransitGatewayConnectPeerOutput = schema.new({
    id = id.from(_N, "AssociateTransitGatewayConnectPeerResponse"),
    type = "structure",
    members = {
        TransitGatewayConnectPeerAssociation = schema.new({
            id = id.from(_N, "AssociateTransitGatewayConnectPeerOutput", "TransitGatewayConnectPeerAssociation"),
            type = "structure",
            name = "TransitGatewayConnectPeerAssociation",
            target_id = id.from(_N, "TransitGatewayConnectPeerAssociation"),
            target = M.TransitGatewayConnectPeerAssociation,
        }),
    },
})

M.AttachmentRoutingPolicyAssociationSummary = schema.new({
    id = id.from(_N, "AttachmentRoutingPolicyAssociationSummary"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "AttachmentRoutingPolicyAssociationSummary", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        PendingRoutingPolicies = schema.new({
            id = id.from(_N, "AttachmentRoutingPolicyAssociationSummary", "PendingRoutingPolicies"),
            type = "list",
            name = "PendingRoutingPolicies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AssociatedRoutingPolicies = schema.new({
            id = id.from(_N, "AttachmentRoutingPolicyAssociationSummary", "AssociatedRoutingPolicies"),
            type = "list",
            name = "AssociatedRoutingPolicies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "AttachmentRoutingPolicyAssociationSummary", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.AWSLocation = schema.new({
    id = id.from(_N, "AWSLocation"),
    type = "structure",
    members = {
        Zone = schema.new({
            id = id.from(_N, "AWSLocation", "Zone"),
            type = "string",
            name = "Zone",
            target_id = prelude.String.id,
        }),
        SubnetArn = schema.new({
            id = id.from(_N, "AWSLocation", "SubnetArn"),
            type = "string",
            name = "SubnetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Bandwidth = schema.new({
    id = id.from(_N, "Bandwidth"),
    type = "structure",
    members = {
        UploadSpeed = schema.new({
            id = id.from(_N, "Bandwidth", "UploadSpeed"),
            type = "integer",
            name = "UploadSpeed",
            target_id = prelude.Integer.id,
        }),
        DownloadSpeed = schema.new({
            id = id.from(_N, "Bandwidth", "DownloadSpeed"),
            type = "integer",
            name = "DownloadSpeed",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BgpOptions = schema.new({
    id = id.from(_N, "BgpOptions"),
    type = "structure",
    members = {
        PeerAsn = schema.new({
            id = id.from(_N, "BgpOptions", "PeerAsn"),
            type = "long",
            name = "PeerAsn",
            target_id = prelude.Long.id,
        }),
    },
})

M.ConnectAttachmentOptions = schema.new({
    id = id.from(_N, "ConnectAttachmentOptions"),
    type = "structure",
    members = {
        Protocol = schema.new({
            id = id.from(_N, "ConnectAttachmentOptions", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectAttachment = schema.new({
    id = id.from(_N, "ConnectAttachment"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "ConnectAttachment", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
        TransportAttachmentId = schema.new({
            id = id.from(_N, "ConnectAttachment", "TransportAttachmentId"),
            type = "string",
            name = "TransportAttachmentId",
            target_id = prelude.String.id,
        }),
        Options = schema.new({
            id = id.from(_N, "ConnectAttachment", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "ConnectAttachmentOptions"),
            target = M.ConnectAttachmentOptions,
        }),
    },
})

M.Connection = schema.new({
    id = id.from(_N, "Connection"),
    type = "structure",
    members = {
        ConnectionId = schema.new({
            id = id.from(_N, "Connection", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
        }),
        ConnectionArn = schema.new({
            id = id.from(_N, "Connection", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "Connection", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "Connection", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        ConnectedDeviceId = schema.new({
            id = id.from(_N, "Connection", "ConnectedDeviceId"),
            type = "string",
            name = "ConnectedDeviceId",
            target_id = prelude.String.id,
        }),
        LinkId = schema.new({
            id = id.from(_N, "Connection", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        ConnectedLinkId = schema.new({
            id = id.from(_N, "Connection", "ConnectedLinkId"),
            type = "string",
            name = "ConnectedLinkId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Connection", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Connection", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        State = schema.new({
            id = id.from(_N, "Connection", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Connection", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ConnectionHealth = schema.new({
    id = id.from(_N, "ConnectionHealth"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ConnectionHealth", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ConnectionHealth", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "ConnectionHealth", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ConnectPeerBgpConfiguration = schema.new({
    id = id.from(_N, "ConnectPeerBgpConfiguration"),
    type = "structure",
    members = {
        CoreNetworkAsn = schema.new({
            id = id.from(_N, "ConnectPeerBgpConfiguration", "CoreNetworkAsn"),
            type = "long",
            name = "CoreNetworkAsn",
            target_id = prelude.Long.id,
        }),
        PeerAsn = schema.new({
            id = id.from(_N, "ConnectPeerBgpConfiguration", "PeerAsn"),
            type = "long",
            name = "PeerAsn",
            target_id = prelude.Long.id,
        }),
        CoreNetworkAddress = schema.new({
            id = id.from(_N, "ConnectPeerBgpConfiguration", "CoreNetworkAddress"),
            type = "string",
            name = "CoreNetworkAddress",
            target_id = prelude.String.id,
        }),
        PeerAddress = schema.new({
            id = id.from(_N, "ConnectPeerBgpConfiguration", "PeerAddress"),
            type = "string",
            name = "PeerAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectPeerConfiguration = schema.new({
    id = id.from(_N, "ConnectPeerConfiguration"),
    type = "structure",
    members = {
        CoreNetworkAddress = schema.new({
            id = id.from(_N, "ConnectPeerConfiguration", "CoreNetworkAddress"),
            type = "string",
            name = "CoreNetworkAddress",
            target_id = prelude.String.id,
        }),
        PeerAddress = schema.new({
            id = id.from(_N, "ConnectPeerConfiguration", "PeerAddress"),
            type = "string",
            name = "PeerAddress",
            target_id = prelude.String.id,
        }),
        InsideCidrBlocks = schema.new({
            id = id.from(_N, "ConnectPeerConfiguration", "InsideCidrBlocks"),
            type = "list",
            name = "InsideCidrBlocks",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Protocol = schema.new({
            id = id.from(_N, "ConnectPeerConfiguration", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
        BgpConfigurations = schema.new({
            id = id.from(_N, "ConnectPeerConfiguration", "BgpConfigurations"),
            type = "list",
            name = "BgpConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ConnectPeerBgpConfiguration,
        }),
    },
})

M.ConnectPeerError = schema.new({
    id = id.from(_N, "ConnectPeerError"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "ConnectPeerError", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ConnectPeerError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "ConnectPeerError", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ConnectPeerError", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectPeer = schema.new({
    id = id.from(_N, "ConnectPeer"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ConnectPeer", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        ConnectAttachmentId = schema.new({
            id = id.from(_N, "ConnectPeer", "ConnectAttachmentId"),
            type = "string",
            name = "ConnectAttachmentId",
            target_id = prelude.String.id,
        }),
        ConnectPeerId = schema.new({
            id = id.from(_N, "ConnectPeer", "ConnectPeerId"),
            type = "string",
            name = "ConnectPeerId",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "ConnectPeer", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ConnectPeer", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ConnectPeer", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Configuration = schema.new({
            id = id.from(_N, "ConnectPeer", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ConnectPeerConfiguration"),
            target = M.ConnectPeerConfiguration,
        }),
        Tags = schema.new({
            id = id.from(_N, "ConnectPeer", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        SubnetArn = schema.new({
            id = id.from(_N, "ConnectPeer", "SubnetArn"),
            type = "string",
            name = "SubnetArn",
            target_id = prelude.String.id,
        }),
        LastModificationErrors = schema.new({
            id = id.from(_N, "ConnectPeer", "LastModificationErrors"),
            type = "list",
            name = "LastModificationErrors",
            target_id = prelude.Document.id,
            list_member = M.ConnectPeerError,
        }),
    },
})

M.ConnectPeerSummary = schema.new({
    id = id.from(_N, "ConnectPeerSummary"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        ConnectAttachmentId = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "ConnectAttachmentId"),
            type = "string",
            name = "ConnectAttachmentId",
            target_id = prelude.String.id,
        }),
        ConnectPeerId = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "ConnectPeerId"),
            type = "string",
            name = "ConnectPeerId",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
        ConnectPeerState = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "ConnectPeerState"),
            type = "string",
            name = "ConnectPeerState",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        SubnetArn = schema.new({
            id = id.from(_N, "ConnectPeerSummary", "SubnetArn"),
            type = "string",
            name = "SubnetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CoreNetworkEdge = schema.new({
    id = id.from(_N, "CoreNetworkEdge"),
    type = "structure",
    members = {
        EdgeLocation = schema.new({
            id = id.from(_N, "CoreNetworkEdge", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
        Asn = schema.new({
            id = id.from(_N, "CoreNetworkEdge", "Asn"),
            type = "long",
            name = "Asn",
            target_id = prelude.Long.id,
        }),
        InsideCidrBlocks = schema.new({
            id = id.from(_N, "CoreNetworkEdge", "InsideCidrBlocks"),
            type = "list",
            name = "InsideCidrBlocks",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ServiceInsertionSegments = schema.new({
    id = id.from(_N, "ServiceInsertionSegments"),
    type = "structure",
    members = {
        SendVia = schema.new({
            id = id.from(_N, "ServiceInsertionSegments", "SendVia"),
            type = "list",
            name = "SendVia",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SendTo = schema.new({
            id = id.from(_N, "ServiceInsertionSegments", "SendTo"),
            type = "list",
            name = "SendTo",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CoreNetworkNetworkFunctionGroup = schema.new({
    id = id.from(_N, "CoreNetworkNetworkFunctionGroup"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CoreNetworkNetworkFunctionGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        EdgeLocations = schema.new({
            id = id.from(_N, "CoreNetworkNetworkFunctionGroup", "EdgeLocations"),
            type = "list",
            name = "EdgeLocations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Segments = schema.new({
            id = id.from(_N, "CoreNetworkNetworkFunctionGroup", "Segments"),
            type = "structure",
            name = "Segments",
            target_id = id.from(_N, "ServiceInsertionSegments"),
            target = M.ServiceInsertionSegments,
        }),
    },
})

M.CoreNetworkSegment = schema.new({
    id = id.from(_N, "CoreNetworkSegment"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CoreNetworkSegment", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        EdgeLocations = schema.new({
            id = id.from(_N, "CoreNetworkSegment", "EdgeLocations"),
            type = "list",
            name = "EdgeLocations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SharedSegments = schema.new({
            id = id.from(_N, "CoreNetworkSegment", "SharedSegments"),
            type = "list",
            name = "SharedSegments",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CoreNetwork = schema.new({
    id = id.from(_N, "CoreNetwork"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CoreNetwork", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        CoreNetworkId = schema.new({
            id = id.from(_N, "CoreNetwork", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        CoreNetworkArn = schema.new({
            id = id.from(_N, "CoreNetwork", "CoreNetworkArn"),
            type = "string",
            name = "CoreNetworkArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CoreNetwork", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CoreNetwork", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        State = schema.new({
            id = id.from(_N, "CoreNetwork", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Segments = schema.new({
            id = id.from(_N, "CoreNetwork", "Segments"),
            type = "list",
            name = "Segments",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkSegment,
        }),
        NetworkFunctionGroups = schema.new({
            id = id.from(_N, "CoreNetwork", "NetworkFunctionGroups"),
            type = "list",
            name = "NetworkFunctionGroups",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkNetworkFunctionGroup,
        }),
        Edges = schema.new({
            id = id.from(_N, "CoreNetwork", "Edges"),
            type = "list",
            name = "Edges",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkEdge,
        }),
        Tags = schema.new({
            id = id.from(_N, "CoreNetwork", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.RoutingPolicyAssociationDetail = schema.new({
    id = id.from(_N, "RoutingPolicyAssociationDetail"),
    type = "structure",
    members = {
        RoutingPolicyNames = schema.new({
            id = id.from(_N, "RoutingPolicyAssociationDetail", "RoutingPolicyNames"),
            type = "list",
            name = "RoutingPolicyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SharedSegments = schema.new({
            id = id.from(_N, "RoutingPolicyAssociationDetail", "SharedSegments"),
            type = "list",
            name = "SharedSegments",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.NetworkFunctionGroup = schema.new({
    id = id.from(_N, "NetworkFunctionGroup"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "NetworkFunctionGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.EdgeOverride = schema.new({
    id = id.from(_N, "EdgeOverride"),
    type = "structure",
    members = {
        EdgeSets = schema.new({
            id = id.from(_N, "EdgeOverride", "EdgeSets"),
            type = "list",
            name = "EdgeSets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "list", list_member = prelude.String }),
        }),
        UseEdge = schema.new({
            id = id.from(_N, "EdgeOverride", "UseEdge"),
            type = "string",
            name = "UseEdge",
            target_id = prelude.String.id,
        }),
    },
})

M.Via = schema.new({
    id = id.from(_N, "Via"),
    type = "structure",
    members = {
        NetworkFunctionGroups = schema.new({
            id = id.from(_N, "Via", "NetworkFunctionGroups"),
            type = "list",
            name = "NetworkFunctionGroups",
            target_id = prelude.Document.id,
            list_member = M.NetworkFunctionGroup,
        }),
        WithEdgeOverrides = schema.new({
            id = id.from(_N, "Via", "WithEdgeOverrides"),
            type = "list",
            name = "WithEdgeOverrides",
            target_id = prelude.Document.id,
            list_member = M.EdgeOverride,
        }),
    },
})

M.WhenSentTo = schema.new({
    id = id.from(_N, "WhenSentTo"),
    type = "structure",
    members = {
        WhenSentToSegmentsList = schema.new({
            id = id.from(_N, "WhenSentTo", "WhenSentToSegmentsList"),
            type = "list",
            name = "WhenSentToSegmentsList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ServiceInsertionAction = schema.new({
    id = id.from(_N, "ServiceInsertionAction"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "ServiceInsertionAction", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "ServiceInsertionAction", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        WhenSentTo = schema.new({
            id = id.from(_N, "ServiceInsertionAction", "WhenSentTo"),
            type = "structure",
            name = "WhenSentTo",
            target_id = id.from(_N, "WhenSentTo"),
            target = M.WhenSentTo,
        }),
        Via = schema.new({
            id = id.from(_N, "ServiceInsertionAction", "Via"),
            type = "structure",
            name = "Via",
            target_id = id.from(_N, "Via"),
            target = M.Via,
        }),
    },
})

M.CoreNetworkChangeValues = schema.new({
    id = id.from(_N, "CoreNetworkChangeValues"),
    type = "structure",
    members = {
        SegmentName = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
        }),
        NetworkFunctionGroupName = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "NetworkFunctionGroupName"),
            type = "string",
            name = "NetworkFunctionGroupName",
            target_id = prelude.String.id,
        }),
        EdgeLocations = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "EdgeLocations"),
            type = "list",
            name = "EdgeLocations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Asn = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "Asn"),
            type = "long",
            name = "Asn",
            target_id = prelude.Long.id,
        }),
        Cidr = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "Cidr"),
            type = "string",
            name = "Cidr",
            target_id = prelude.String.id,
        }),
        DestinationIdentifier = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "DestinationIdentifier"),
            type = "string",
            name = "DestinationIdentifier",
            target_id = prelude.String.id,
        }),
        InsideCidrBlocks = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "InsideCidrBlocks"),
            type = "list",
            name = "InsideCidrBlocks",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SharedSegments = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "SharedSegments"),
            type = "list",
            name = "SharedSegments",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServiceInsertionActions = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "ServiceInsertionActions"),
            type = "list",
            name = "ServiceInsertionActions",
            target_id = prelude.Document.id,
            list_member = M.ServiceInsertionAction,
        }),
        VpnEcmpSupport = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "VpnEcmpSupport"),
            type = "boolean",
            name = "VpnEcmpSupport",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DnsSupport = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "DnsSupport"),
            type = "boolean",
            name = "DnsSupport",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        SecurityGroupReferencingSupport = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "SecurityGroupReferencingSupport"),
            type = "boolean",
            name = "SecurityGroupReferencingSupport",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RoutingPolicyDirection = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "RoutingPolicyDirection"),
            type = "string",
            name = "RoutingPolicyDirection",
            target_id = prelude.String.id,
        }),
        RoutingPolicy = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "RoutingPolicy"),
            type = "string",
            name = "RoutingPolicy",
            target_id = prelude.String.id,
        }),
        PeerEdgeLocations = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "PeerEdgeLocations"),
            type = "list",
            name = "PeerEdgeLocations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        RoutingPolicyAssociationDetails = schema.new({
            id = id.from(_N, "CoreNetworkChangeValues", "RoutingPolicyAssociationDetails"),
            type = "list",
            name = "RoutingPolicyAssociationDetails",
            target_id = prelude.Document.id,
            list_member = M.RoutingPolicyAssociationDetail,
        }),
    },
})

M.CoreNetworkChange = schema.new({
    id = id.from(_N, "CoreNetworkChange"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "CoreNetworkChange", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Action = schema.new({
            id = id.from(_N, "CoreNetworkChange", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        Identifier = schema.new({
            id = id.from(_N, "CoreNetworkChange", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
        }),
        PreviousValues = schema.new({
            id = id.from(_N, "CoreNetworkChange", "PreviousValues"),
            type = "structure",
            name = "PreviousValues",
            target_id = id.from(_N, "CoreNetworkChangeValues"),
            target = M.CoreNetworkChangeValues,
        }),
        NewValues = schema.new({
            id = id.from(_N, "CoreNetworkChange", "NewValues"),
            type = "structure",
            name = "NewValues",
            target_id = id.from(_N, "CoreNetworkChangeValues"),
            target = M.CoreNetworkChangeValues,
        }),
        IdentifierPath = schema.new({
            id = id.from(_N, "CoreNetworkChange", "IdentifierPath"),
            type = "string",
            name = "IdentifierPath",
            target_id = prelude.String.id,
        }),
    },
})

M.CoreNetworkChangeEventValues = schema.new({
    id = id.from(_N, "CoreNetworkChangeEventValues"),
    type = "structure",
    members = {
        EdgeLocation = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
        PeerEdgeLocation = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "PeerEdgeLocation"),
            type = "string",
            name = "PeerEdgeLocation",
            target_id = prelude.String.id,
        }),
        RoutingPolicyDirection = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "RoutingPolicyDirection"),
            type = "string",
            name = "RoutingPolicyDirection",
            target_id = prelude.String.id,
        }),
        SegmentName = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
        }),
        NetworkFunctionGroupName = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "NetworkFunctionGroupName"),
            type = "string",
            name = "NetworkFunctionGroupName",
            target_id = prelude.String.id,
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        Cidr = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "Cidr"),
            type = "string",
            name = "Cidr",
            target_id = prelude.String.id,
        }),
        RoutingPolicyAssociationDetails = schema.new({
            id = id.from(_N, "CoreNetworkChangeEventValues", "RoutingPolicyAssociationDetails"),
            type = "list",
            name = "RoutingPolicyAssociationDetails",
            target_id = prelude.Document.id,
            list_member = M.RoutingPolicyAssociationDetail,
        }),
    },
})

M.CoreNetworkChangeEvent = schema.new({
    id = id.from(_N, "CoreNetworkChangeEvent"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "CoreNetworkChangeEvent", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Action = schema.new({
            id = id.from(_N, "CoreNetworkChangeEvent", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        IdentifierPath = schema.new({
            id = id.from(_N, "CoreNetworkChangeEvent", "IdentifierPath"),
            type = "string",
            name = "IdentifierPath",
            target_id = prelude.String.id,
        }),
        EventTime = schema.new({
            id = id.from(_N, "CoreNetworkChangeEvent", "EventTime"),
            type = "timestamp",
            name = "EventTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CoreNetworkChangeEvent", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "CoreNetworkChangeEvent", "Values"),
            type = "structure",
            name = "Values",
            target_id = id.from(_N, "CoreNetworkChangeEventValues"),
            target = M.CoreNetworkChangeEventValues,
        }),
    },
})

M.CoreNetworkNetworkFunctionGroupIdentifier = schema.new({
    id = id.from(_N, "CoreNetworkNetworkFunctionGroupIdentifier"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CoreNetworkNetworkFunctionGroupIdentifier", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        NetworkFunctionGroupName = schema.new({
            id = id.from(_N, "CoreNetworkNetworkFunctionGroupIdentifier", "NetworkFunctionGroupName"),
            type = "string",
            name = "NetworkFunctionGroupName",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "CoreNetworkNetworkFunctionGroupIdentifier", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.CoreNetworkPolicyError = schema.new({
    id = id.from(_N, "CoreNetworkPolicyError"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "CoreNetworkPolicyError", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "CoreNetworkPolicyError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Path = schema.new({
            id = id.from(_N, "CoreNetworkPolicyError", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
    },
})

M.CoreNetworkPolicy = schema.new({
    id = id.from(_N, "CoreNetworkPolicy"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
        }),
        Alias = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        ChangeSetState = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "ChangeSetState"),
            type = "string",
            name = "ChangeSetState",
            target_id = prelude.String.id,
        }),
        PolicyErrors = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "PolicyErrors"),
            type = "list",
            name = "PolicyErrors",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkPolicyError,
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "CoreNetworkPolicy", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
    },
})

M.CoreNetworkPolicyException = schema.new({
    id = id.from(_N, "CoreNetworkPolicyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CoreNetworkPolicyException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Errors = schema.new({
            id = id.from(_N, "CoreNetworkPolicyException", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkPolicyError,
        }),
    },
})

M.CoreNetworkPolicyVersion = schema.new({
    id = id.from(_N, "CoreNetworkPolicyVersion"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CoreNetworkPolicyVersion", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "CoreNetworkPolicyVersion", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
        }),
        Alias = schema.new({
            id = id.from(_N, "CoreNetworkPolicyVersion", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CoreNetworkPolicyVersion", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CoreNetworkPolicyVersion", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        ChangeSetState = schema.new({
            id = id.from(_N, "CoreNetworkPolicyVersion", "ChangeSetState"),
            type = "string",
            name = "ChangeSetState",
            target_id = prelude.String.id,
        }),
    },
})

M.RoutingInformationNextHop = schema.new({
    id = id.from(_N, "RoutingInformationNextHop"),
    type = "structure",
    members = {
        IpAddress = schema.new({
            id = id.from(_N, "RoutingInformationNextHop", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        CoreNetworkAttachmentId = schema.new({
            id = id.from(_N, "RoutingInformationNextHop", "CoreNetworkAttachmentId"),
            type = "string",
            name = "CoreNetworkAttachmentId",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "RoutingInformationNextHop", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "RoutingInformationNextHop", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        SegmentName = schema.new({
            id = id.from(_N, "RoutingInformationNextHop", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "RoutingInformationNextHop", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.CoreNetworkRoutingInformation = schema.new({
    id = id.from(_N, "CoreNetworkRoutingInformation"),
    type = "structure",
    members = {
        Prefix = schema.new({
            id = id.from(_N, "CoreNetworkRoutingInformation", "Prefix"),
            type = "string",
            name = "Prefix",
            target_id = prelude.String.id,
        }),
        NextHop = schema.new({
            id = id.from(_N, "CoreNetworkRoutingInformation", "NextHop"),
            type = "structure",
            name = "NextHop",
            target_id = id.from(_N, "RoutingInformationNextHop"),
            target = M.RoutingInformationNextHop,
        }),
        LocalPreference = schema.new({
            id = id.from(_N, "CoreNetworkRoutingInformation", "LocalPreference"),
            type = "string",
            name = "LocalPreference",
            target_id = prelude.String.id,
        }),
        Med = schema.new({
            id = id.from(_N, "CoreNetworkRoutingInformation", "Med"),
            type = "string",
            name = "Med",
            target_id = prelude.String.id,
        }),
        AsPath = schema.new({
            id = id.from(_N, "CoreNetworkRoutingInformation", "AsPath"),
            type = "list",
            name = "AsPath",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Communities = schema.new({
            id = id.from(_N, "CoreNetworkRoutingInformation", "Communities"),
            type = "list",
            name = "Communities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CoreNetworkSegmentEdgeIdentifier = schema.new({
    id = id.from(_N, "CoreNetworkSegmentEdgeIdentifier"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CoreNetworkSegmentEdgeIdentifier", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        SegmentName = schema.new({
            id = id.from(_N, "CoreNetworkSegmentEdgeIdentifier", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "CoreNetworkSegmentEdgeIdentifier", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.CoreNetworkSummary = schema.new({
    id = id.from(_N, "CoreNetworkSummary"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CoreNetworkSummary", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        CoreNetworkArn = schema.new({
            id = id.from(_N, "CoreNetworkSummary", "CoreNetworkArn"),
            type = "string",
            name = "CoreNetworkArn",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CoreNetworkSummary", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "CoreNetworkSummary", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "CoreNetworkSummary", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CoreNetworkSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CoreNetworkSummary", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateConnectAttachmentInput = schema.new({
    id = id.from(_N, "CreateConnectAttachmentRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CreateConnectAttachmentInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "CreateConnectAttachmentInput", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TransportAttachmentId = schema.new({
            id = id.from(_N, "CreateConnectAttachmentInput", "TransportAttachmentId"),
            type = "string",
            name = "TransportAttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "CreateConnectAttachmentInput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
        Options = schema.new({
            id = id.from(_N, "CreateConnectAttachmentInput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "ConnectAttachmentOptions"),
            target = M.ConnectAttachmentOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectAttachmentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateConnectAttachmentInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateConnectAttachmentOutput = schema.new({
    id = id.from(_N, "CreateConnectAttachmentResponse"),
    type = "structure",
    members = {
        ConnectAttachment = schema.new({
            id = id.from(_N, "CreateConnectAttachmentOutput", "ConnectAttachment"),
            type = "structure",
            name = "ConnectAttachment",
            target_id = id.from(_N, "ConnectAttachment"),
            target = M.ConnectAttachment,
        }),
    },
})

M.CreateConnectionInput = schema.new({
    id = id.from(_N, "CreateConnectionRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CreateConnectionInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "CreateConnectionInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectedDeviceId = schema.new({
            id = id.from(_N, "CreateConnectionInput", "ConnectedDeviceId"),
            type = "string",
            name = "ConnectedDeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "CreateConnectionInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        ConnectedLinkId = schema.new({
            id = id.from(_N, "CreateConnectionInput", "ConnectedLinkId"),
            type = "string",
            name = "ConnectedLinkId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateConnectionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateConnectionOutput = schema.new({
    id = id.from(_N, "CreateConnectionResponse"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.CreateConnectPeerInput = schema.new({
    id = id.from(_N, "CreateConnectPeerRequest"),
    type = "structure",
    members = {
        ConnectAttachmentId = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "ConnectAttachmentId"),
            type = "string",
            name = "ConnectAttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CoreNetworkAddress = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "CoreNetworkAddress"),
            type = "string",
            name = "CoreNetworkAddress",
            target_id = prelude.String.id,
        }),
        PeerAddress = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "PeerAddress"),
            type = "string",
            name = "PeerAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BgpOptions = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "BgpOptions"),
            type = "structure",
            name = "BgpOptions",
            target_id = id.from(_N, "BgpOptions"),
            target = M.BgpOptions,
        }),
        InsideCidrBlocks = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "InsideCidrBlocks"),
            type = "list",
            name = "InsideCidrBlocks",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        SubnetArn = schema.new({
            id = id.from(_N, "CreateConnectPeerInput", "SubnetArn"),
            type = "string",
            name = "SubnetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectPeerOutput = schema.new({
    id = id.from(_N, "CreateConnectPeerResponse"),
    type = "structure",
    members = {
        ConnectPeer = schema.new({
            id = id.from(_N, "CreateConnectPeerOutput", "ConnectPeer"),
            type = "structure",
            name = "ConnectPeer",
            target_id = id.from(_N, "ConnectPeer"),
            target = M.ConnectPeer,
        }),
    },
})

M.CreateCoreNetworkInput = schema.new({
    id = id.from(_N, "CreateCoreNetworkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CreateCoreNetworkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateCoreNetworkInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCoreNetworkInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "CreateCoreNetworkInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateCoreNetworkInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateCoreNetworkOutput = schema.new({
    id = id.from(_N, "CreateCoreNetworkResponse"),
    type = "structure",
    members = {
        CoreNetwork = schema.new({
            id = id.from(_N, "CreateCoreNetworkOutput", "CoreNetwork"),
            type = "structure",
            name = "CoreNetwork",
            target_id = id.from(_N, "CoreNetwork"),
            target = M.CoreNetwork,
        }),
    },
})

M.CreateCoreNetworkPrefixListAssociationInput = schema.new({
    id = id.from(_N, "CreateCoreNetworkPrefixListAssociationRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CreateCoreNetworkPrefixListAssociationInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrefixListArn = schema.new({
            id = id.from(_N, "CreateCoreNetworkPrefixListAssociationInput", "PrefixListArn"),
            type = "string",
            name = "PrefixListArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrefixListAlias = schema.new({
            id = id.from(_N, "CreateCoreNetworkPrefixListAssociationInput", "PrefixListAlias"),
            type = "string",
            name = "PrefixListAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateCoreNetworkPrefixListAssociationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateCoreNetworkPrefixListAssociationOutput = schema.new({
    id = id.from(_N, "CreateCoreNetworkPrefixListAssociationResponse"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CreateCoreNetworkPrefixListAssociationOutput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        PrefixListArn = schema.new({
            id = id.from(_N, "CreateCoreNetworkPrefixListAssociationOutput", "PrefixListArn"),
            type = "string",
            name = "PrefixListArn",
            target_id = prelude.String.id,
        }),
        PrefixListAlias = schema.new({
            id = id.from(_N, "CreateCoreNetworkPrefixListAssociationOutput", "PrefixListAlias"),
            type = "string",
            name = "PrefixListAlias",
            target_id = prelude.String.id,
        }),
    },
})

M.Location = schema.new({
    id = id.from(_N, "Location"),
    type = "structure",
    members = {
        Address = schema.new({
            id = id.from(_N, "Location", "Address"),
            type = "string",
            name = "Address",
            target_id = prelude.String.id,
        }),
        Latitude = schema.new({
            id = id.from(_N, "Location", "Latitude"),
            type = "string",
            name = "Latitude",
            target_id = prelude.String.id,
        }),
        Longitude = schema.new({
            id = id.from(_N, "Location", "Longitude"),
            type = "string",
            name = "Longitude",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDeviceInput = schema.new({
    id = id.from(_N, "CreateDeviceRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CreateDeviceInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AWSLocation = schema.new({
            id = id.from(_N, "CreateDeviceInput", "AWSLocation"),
            type = "structure",
            name = "AWSLocation",
            target_id = id.from(_N, "AWSLocation"),
            target = M.AWSLocation,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDeviceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "CreateDeviceInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Vendor = schema.new({
            id = id.from(_N, "CreateDeviceInput", "Vendor"),
            type = "string",
            name = "Vendor",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "CreateDeviceInput", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "CreateDeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        Location = schema.new({
            id = id.from(_N, "CreateDeviceInput", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        SiteId = schema.new({
            id = id.from(_N, "CreateDeviceInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDeviceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Device = schema.new({
    id = id.from(_N, "Device"),
    type = "structure",
    members = {
        DeviceId = schema.new({
            id = id.from(_N, "Device", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        DeviceArn = schema.new({
            id = id.from(_N, "Device", "DeviceArn"),
            type = "string",
            name = "DeviceArn",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "Device", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        AWSLocation = schema.new({
            id = id.from(_N, "Device", "AWSLocation"),
            type = "structure",
            name = "AWSLocation",
            target_id = id.from(_N, "AWSLocation"),
            target = M.AWSLocation,
        }),
        Description = schema.new({
            id = id.from(_N, "Device", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Device", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Vendor = schema.new({
            id = id.from(_N, "Device", "Vendor"),
            type = "string",
            name = "Vendor",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "Device", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "Device", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        Location = schema.new({
            id = id.from(_N, "Device", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        SiteId = schema.new({
            id = id.from(_N, "Device", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Device", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        State = schema.new({
            id = id.from(_N, "Device", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Device", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDeviceOutput = schema.new({
    id = id.from(_N, "CreateDeviceResponse"),
    type = "structure",
    members = {
        Device = schema.new({
            id = id.from(_N, "CreateDeviceOutput", "Device"),
            type = "structure",
            name = "Device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
    },
})

M.CreateDirectConnectGatewayAttachmentInput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayAttachmentRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAttachmentInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DirectConnectGatewayArn = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAttachmentInput", "DirectConnectGatewayArn"),
            type = "string",
            name = "DirectConnectGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAttachmentInput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
        EdgeLocations = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAttachmentInput", "EdgeLocations"),
            type = "list",
            name = "EdgeLocations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAttachmentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAttachmentInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DirectConnectGatewayAttachment = schema.new({
    id = id.from(_N, "DirectConnectGatewayAttachment"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
        DirectConnectGatewayArn = schema.new({
            id = id.from(_N, "DirectConnectGatewayAttachment", "DirectConnectGatewayArn"),
            type = "string",
            name = "DirectConnectGatewayArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDirectConnectGatewayAttachmentOutput = schema.new({
    id = id.from(_N, "CreateDirectConnectGatewayAttachmentResponse"),
    type = "structure",
    members = {
        DirectConnectGatewayAttachment = schema.new({
            id = id.from(_N, "CreateDirectConnectGatewayAttachmentOutput", "DirectConnectGatewayAttachment"),
            type = "structure",
            name = "DirectConnectGatewayAttachment",
            target_id = id.from(_N, "DirectConnectGatewayAttachment"),
            target = M.DirectConnectGatewayAttachment,
        }),
    },
})

M.CreateGlobalNetworkInput = schema.new({
    id = id.from(_N, "CreateGlobalNetworkRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateGlobalNetworkInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateGlobalNetworkInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.GlobalNetwork = schema.new({
    id = id.from(_N, "GlobalNetwork"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GlobalNetwork", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        GlobalNetworkArn = schema.new({
            id = id.from(_N, "GlobalNetwork", "GlobalNetworkArn"),
            type = "string",
            name = "GlobalNetworkArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GlobalNetwork", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GlobalNetwork", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        State = schema.new({
            id = id.from(_N, "GlobalNetwork", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GlobalNetwork", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateGlobalNetworkOutput = schema.new({
    id = id.from(_N, "CreateGlobalNetworkResponse"),
    type = "structure",
    members = {
        GlobalNetwork = schema.new({
            id = id.from(_N, "CreateGlobalNetworkOutput", "GlobalNetwork"),
            type = "structure",
            name = "GlobalNetwork",
            target_id = id.from(_N, "GlobalNetwork"),
            target = M.GlobalNetwork,
        }),
    },
})

M.CreateLinkInput = schema.new({
    id = id.from(_N, "CreateLinkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CreateLinkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateLinkInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "CreateLinkInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Bandwidth = schema.new({
            id = id.from(_N, "CreateLinkInput", "Bandwidth"),
            type = "structure",
            name = "Bandwidth",
            target_id = id.from(_N, "Bandwidth"),
            target = M.Bandwidth,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Provider = schema.new({
            id = id.from(_N, "CreateLinkInput", "Provider"),
            type = "string",
            name = "Provider",
            target_id = prelude.String.id,
        }),
        SiteId = schema.new({
            id = id.from(_N, "CreateLinkInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLinkInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Link = schema.new({
    id = id.from(_N, "Link"),
    type = "structure",
    members = {
        LinkId = schema.new({
            id = id.from(_N, "Link", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        LinkArn = schema.new({
            id = id.from(_N, "Link", "LinkArn"),
            type = "string",
            name = "LinkArn",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "Link", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        SiteId = schema.new({
            id = id.from(_N, "Link", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Link", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Link", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Bandwidth = schema.new({
            id = id.from(_N, "Link", "Bandwidth"),
            type = "structure",
            name = "Bandwidth",
            target_id = id.from(_N, "Bandwidth"),
            target = M.Bandwidth,
        }),
        Provider = schema.new({
            id = id.from(_N, "Link", "Provider"),
            type = "string",
            name = "Provider",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Link", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        State = schema.new({
            id = id.from(_N, "Link", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Link", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateLinkOutput = schema.new({
    id = id.from(_N, "CreateLinkResponse"),
    type = "structure",
    members = {
        Link = schema.new({
            id = id.from(_N, "CreateLinkOutput", "Link"),
            type = "structure",
            name = "Link",
            target_id = id.from(_N, "Link"),
            target = M.Link,
        }),
    },
})

M.CreateSiteInput = schema.new({
    id = id.from(_N, "CreateSiteRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "CreateSiteInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateSiteInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Location = schema.new({
            id = id.from(_N, "CreateSiteInput", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSiteInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Site = schema.new({
    id = id.from(_N, "Site"),
    type = "structure",
    members = {
        SiteId = schema.new({
            id = id.from(_N, "Site", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
        SiteArn = schema.new({
            id = id.from(_N, "Site", "SiteArn"),
            type = "string",
            name = "SiteArn",
            target_id = prelude.String.id,
        }),
        GlobalNetworkId = schema.new({
            id = id.from(_N, "Site", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Site", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Location = schema.new({
            id = id.from(_N, "Site", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Site", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        State = schema.new({
            id = id.from(_N, "Site", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Site", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateSiteOutput = schema.new({
    id = id.from(_N, "CreateSiteResponse"),
    type = "structure",
    members = {
        Site = schema.new({
            id = id.from(_N, "CreateSiteOutput", "Site"),
            type = "structure",
            name = "Site",
            target_id = id.from(_N, "Site"),
            target = M.Site,
        }),
    },
})

M.CreateSiteToSiteVpnAttachmentInput = schema.new({
    id = id.from(_N, "CreateSiteToSiteVpnAttachmentRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CreateSiteToSiteVpnAttachmentInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpnConnectionArn = schema.new({
            id = id.from(_N, "CreateSiteToSiteVpnAttachmentInput", "VpnConnectionArn"),
            type = "string",
            name = "VpnConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "CreateSiteToSiteVpnAttachmentInput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSiteToSiteVpnAttachmentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateSiteToSiteVpnAttachmentInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.SiteToSiteVpnAttachment = schema.new({
    id = id.from(_N, "SiteToSiteVpnAttachment"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "SiteToSiteVpnAttachment", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
        VpnConnectionArn = schema.new({
            id = id.from(_N, "SiteToSiteVpnAttachment", "VpnConnectionArn"),
            type = "string",
            name = "VpnConnectionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSiteToSiteVpnAttachmentOutput = schema.new({
    id = id.from(_N, "CreateSiteToSiteVpnAttachmentResponse"),
    type = "structure",
    members = {
        SiteToSiteVpnAttachment = schema.new({
            id = id.from(_N, "CreateSiteToSiteVpnAttachmentOutput", "SiteToSiteVpnAttachment"),
            type = "structure",
            name = "SiteToSiteVpnAttachment",
            target_id = id.from(_N, "SiteToSiteVpnAttachment"),
            target = M.SiteToSiteVpnAttachment,
        }),
    },
})

M.CreateTransitGatewayPeeringInput = schema.new({
    id = id.from(_N, "CreateTransitGatewayPeeringRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CreateTransitGatewayPeeringInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TransitGatewayArn = schema.new({
            id = id.from(_N, "CreateTransitGatewayPeeringInput", "TransitGatewayArn"),
            type = "string",
            name = "TransitGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTransitGatewayPeeringInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateTransitGatewayPeeringInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.PermissionsErrorContext = schema.new({
    id = id.from(_N, "PermissionsErrorContext"),
    type = "structure",
    members = {
        MissingPermission = schema.new({
            id = id.from(_N, "PermissionsErrorContext", "MissingPermission"),
            type = "string",
            name = "MissingPermission",
            target_id = prelude.String.id,
        }),
    },
})

M.PeeringError = schema.new({
    id = id.from(_N, "PeeringError"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "PeeringError", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "PeeringError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "PeeringError", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "PeeringError", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        MissingPermissionsContext = schema.new({
            id = id.from(_N, "PeeringError", "MissingPermissionsContext"),
            type = "structure",
            name = "MissingPermissionsContext",
            target_id = id.from(_N, "PermissionsErrorContext"),
            target = M.PermissionsErrorContext,
        }),
    },
})

M.Peering = schema.new({
    id = id.from(_N, "Peering"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "Peering", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        CoreNetworkArn = schema.new({
            id = id.from(_N, "Peering", "CoreNetworkArn"),
            type = "string",
            name = "CoreNetworkArn",
            target_id = prelude.String.id,
        }),
        PeeringId = schema.new({
            id = id.from(_N, "Peering", "PeeringId"),
            type = "string",
            name = "PeeringId",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "Peering", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        PeeringType = schema.new({
            id = id.from(_N, "Peering", "PeeringType"),
            type = "string",
            name = "PeeringType",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Peering", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "Peering", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Peering", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Peering", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Peering", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        LastModificationErrors = schema.new({
            id = id.from(_N, "Peering", "LastModificationErrors"),
            type = "list",
            name = "LastModificationErrors",
            target_id = prelude.Document.id,
            list_member = M.PeeringError,
        }),
    },
})

M.TransitGatewayPeering = schema.new({
    id = id.from(_N, "TransitGatewayPeering"),
    type = "structure",
    members = {
        Peering = schema.new({
            id = id.from(_N, "TransitGatewayPeering", "Peering"),
            type = "structure",
            name = "Peering",
            target_id = id.from(_N, "Peering"),
            target = M.Peering,
        }),
        TransitGatewayArn = schema.new({
            id = id.from(_N, "TransitGatewayPeering", "TransitGatewayArn"),
            type = "string",
            name = "TransitGatewayArn",
            target_id = prelude.String.id,
        }),
        TransitGatewayPeeringAttachmentId = schema.new({
            id = id.from(_N, "TransitGatewayPeering", "TransitGatewayPeeringAttachmentId"),
            type = "string",
            name = "TransitGatewayPeeringAttachmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTransitGatewayPeeringOutput = schema.new({
    id = id.from(_N, "CreateTransitGatewayPeeringResponse"),
    type = "structure",
    members = {
        TransitGatewayPeering = schema.new({
            id = id.from(_N, "CreateTransitGatewayPeeringOutput", "TransitGatewayPeering"),
            type = "structure",
            name = "TransitGatewayPeering",
            target_id = id.from(_N, "TransitGatewayPeering"),
            target = M.TransitGatewayPeering,
        }),
    },
})

M.CreateTransitGatewayRouteTableAttachmentInput = schema.new({
    id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentRequest"),
    type = "structure",
    members = {
        PeeringId = schema.new({
            id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentInput", "PeeringId"),
            type = "string",
            name = "PeeringId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TransitGatewayRouteTableArn = schema.new({
            id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentInput", "TransitGatewayRouteTableArn"),
            type = "string",
            name = "TransitGatewayRouteTableArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentInput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.TransitGatewayRouteTableAttachment = schema.new({
    id = id.from(_N, "TransitGatewayRouteTableAttachment"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "TransitGatewayRouteTableAttachment", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
        PeeringId = schema.new({
            id = id.from(_N, "TransitGatewayRouteTableAttachment", "PeeringId"),
            type = "string",
            name = "PeeringId",
            target_id = prelude.String.id,
        }),
        TransitGatewayRouteTableArn = schema.new({
            id = id.from(_N, "TransitGatewayRouteTableAttachment", "TransitGatewayRouteTableArn"),
            type = "string",
            name = "TransitGatewayRouteTableArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTransitGatewayRouteTableAttachmentOutput = schema.new({
    id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentResponse"),
    type = "structure",
    members = {
        TransitGatewayRouteTableAttachment = schema.new({
            id = id.from(_N, "CreateTransitGatewayRouteTableAttachmentOutput", "TransitGatewayRouteTableAttachment"),
            type = "structure",
            name = "TransitGatewayRouteTableAttachment",
            target_id = id.from(_N, "TransitGatewayRouteTableAttachment"),
            target = M.TransitGatewayRouteTableAttachment,
        }),
    },
})

M.VpcOptions = schema.new({
    id = id.from(_N, "VpcOptions"),
    type = "structure",
    members = {
        Ipv6Support = schema.new({
            id = id.from(_N, "VpcOptions", "Ipv6Support"),
            type = "boolean",
            name = "Ipv6Support",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ApplianceModeSupport = schema.new({
            id = id.from(_N, "VpcOptions", "ApplianceModeSupport"),
            type = "boolean",
            name = "ApplianceModeSupport",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DnsSupport = schema.new({
            id = id.from(_N, "VpcOptions", "DnsSupport"),
            type = "boolean",
            name = "DnsSupport",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        SecurityGroupReferencingSupport = schema.new({
            id = id.from(_N, "VpcOptions", "SecurityGroupReferencingSupport"),
            type = "boolean",
            name = "SecurityGroupReferencingSupport",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateVpcAttachmentInput = schema.new({
    id = id.from(_N, "CreateVpcAttachmentRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "CreateVpcAttachmentInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcArn = schema.new({
            id = id.from(_N, "CreateVpcAttachmentInput", "VpcArn"),
            type = "string",
            name = "VpcArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetArns = schema.new({
            id = id.from(_N, "CreateVpcAttachmentInput", "SubnetArns"),
            type = "list",
            name = "SubnetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Options = schema.new({
            id = id.from(_N, "CreateVpcAttachmentInput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "VpcOptions"),
            target = M.VpcOptions,
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "CreateVpcAttachmentInput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVpcAttachmentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateVpcAttachmentInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.VpcAttachment = schema.new({
    id = id.from(_N, "VpcAttachment"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "VpcAttachment", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
        SubnetArns = schema.new({
            id = id.from(_N, "VpcAttachment", "SubnetArns"),
            type = "list",
            name = "SubnetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Options = schema.new({
            id = id.from(_N, "VpcAttachment", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "VpcOptions"),
            target = M.VpcOptions,
        }),
    },
})

M.CreateVpcAttachmentOutput = schema.new({
    id = id.from(_N, "CreateVpcAttachmentResponse"),
    type = "structure",
    members = {
        VpcAttachment = schema.new({
            id = id.from(_N, "CreateVpcAttachmentOutput", "VpcAttachment"),
            type = "structure",
            name = "VpcAttachment",
            target_id = id.from(_N, "VpcAttachment"),
            target = M.VpcAttachment,
        }),
    },
})

M.DeleteAttachmentInput = schema.new({
    id = id.from(_N, "DeleteAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "DeleteAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAttachmentOutput = schema.new({
    id = id.from(_N, "DeleteAttachmentResponse"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "DeleteAttachmentOutput", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
    },
})

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectionId = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "DeleteConnectionResponse"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.DeleteConnectPeerInput = schema.new({
    id = id.from(_N, "DeleteConnectPeerRequest"),
    type = "structure",
    members = {
        ConnectPeerId = schema.new({
            id = id.from(_N, "DeleteConnectPeerInput", "ConnectPeerId"),
            type = "string",
            name = "ConnectPeerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConnectPeerOutput = schema.new({
    id = id.from(_N, "DeleteConnectPeerResponse"),
    type = "structure",
    members = {
        ConnectPeer = schema.new({
            id = id.from(_N, "DeleteConnectPeerOutput", "ConnectPeer"),
            type = "structure",
            name = "ConnectPeer",
            target_id = id.from(_N, "ConnectPeer"),
            target = M.ConnectPeer,
        }),
    },
})

M.DeleteCoreNetworkInput = schema.new({
    id = id.from(_N, "DeleteCoreNetworkRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "DeleteCoreNetworkInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCoreNetworkOutput = schema.new({
    id = id.from(_N, "DeleteCoreNetworkResponse"),
    type = "structure",
    members = {
        CoreNetwork = schema.new({
            id = id.from(_N, "DeleteCoreNetworkOutput", "CoreNetwork"),
            type = "structure",
            name = "CoreNetwork",
            target_id = id.from(_N, "CoreNetwork"),
            target = M.CoreNetwork,
        }),
    },
})

M.DeleteCoreNetworkPolicyVersionInput = schema.new({
    id = id.from(_N, "DeleteCoreNetworkPolicyVersionRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "DeleteCoreNetworkPolicyVersionInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "DeleteCoreNetworkPolicyVersionInput", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCoreNetworkPolicyVersionOutput = schema.new({
    id = id.from(_N, "DeleteCoreNetworkPolicyVersionResponse"),
    type = "structure",
    members = {
        CoreNetworkPolicy = schema.new({
            id = id.from(_N, "DeleteCoreNetworkPolicyVersionOutput", "CoreNetworkPolicy"),
            type = "structure",
            name = "CoreNetworkPolicy",
            target_id = id.from(_N, "CoreNetworkPolicy"),
            target = M.CoreNetworkPolicy,
        }),
    },
})

M.DeleteCoreNetworkPrefixListAssociationInput = schema.new({
    id = id.from(_N, "DeleteCoreNetworkPrefixListAssociationRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "DeleteCoreNetworkPrefixListAssociationInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PrefixListArn = schema.new({
            id = id.from(_N, "DeleteCoreNetworkPrefixListAssociationInput", "PrefixListArn"),
            type = "string",
            name = "PrefixListArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCoreNetworkPrefixListAssociationOutput = schema.new({
    id = id.from(_N, "DeleteCoreNetworkPrefixListAssociationResponse"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "DeleteCoreNetworkPrefixListAssociationOutput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        PrefixListArn = schema.new({
            id = id.from(_N, "DeleteCoreNetworkPrefixListAssociationOutput", "PrefixListArn"),
            type = "string",
            name = "PrefixListArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDeviceInput = schema.new({
    id = id.from(_N, "DeleteDeviceRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DeleteDeviceInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "DeleteDeviceInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDeviceOutput = schema.new({
    id = id.from(_N, "DeleteDeviceResponse"),
    type = "structure",
    members = {
        Device = schema.new({
            id = id.from(_N, "DeleteDeviceOutput", "Device"),
            type = "structure",
            name = "Device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
    },
})

M.DeleteGlobalNetworkInput = schema.new({
    id = id.from(_N, "DeleteGlobalNetworkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DeleteGlobalNetworkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGlobalNetworkOutput = schema.new({
    id = id.from(_N, "DeleteGlobalNetworkResponse"),
    type = "structure",
    members = {
        GlobalNetwork = schema.new({
            id = id.from(_N, "DeleteGlobalNetworkOutput", "GlobalNetwork"),
            type = "structure",
            name = "GlobalNetwork",
            target_id = id.from(_N, "GlobalNetwork"),
            target = M.GlobalNetwork,
        }),
    },
})

M.DeleteLinkInput = schema.new({
    id = id.from(_N, "DeleteLinkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DeleteLinkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "DeleteLinkInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteLinkOutput = schema.new({
    id = id.from(_N, "DeleteLinkResponse"),
    type = "structure",
    members = {
        Link = schema.new({
            id = id.from(_N, "DeleteLinkOutput", "Link"),
            type = "structure",
            name = "Link",
            target_id = id.from(_N, "Link"),
            target = M.Link,
        }),
    },
})

M.DeletePeeringInput = schema.new({
    id = id.from(_N, "DeletePeeringRequest"),
    type = "structure",
    members = {
        PeeringId = schema.new({
            id = id.from(_N, "DeletePeeringInput", "PeeringId"),
            type = "string",
            name = "PeeringId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePeeringOutput = schema.new({
    id = id.from(_N, "DeletePeeringResponse"),
    type = "structure",
    members = {
        Peering = schema.new({
            id = id.from(_N, "DeletePeeringOutput", "Peering"),
            type = "structure",
            name = "Peering",
            target_id = id.from(_N, "Peering"),
            target = M.Peering,
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyResponse"),
    type = "structure",
})

M.DeleteSiteInput = schema.new({
    id = id.from(_N, "DeleteSiteRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DeleteSiteInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SiteId = schema.new({
            id = id.from(_N, "DeleteSiteInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSiteOutput = schema.new({
    id = id.from(_N, "DeleteSiteResponse"),
    type = "structure",
    members = {
        Site = schema.new({
            id = id.from(_N, "DeleteSiteOutput", "Site"),
            type = "structure",
            name = "Site",
            target_id = id.from(_N, "Site"),
            target = M.Site,
        }),
    },
})

M.DeregisterTransitGatewayInput = schema.new({
    id = id.from(_N, "DeregisterTransitGatewayRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DeregisterTransitGatewayInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TransitGatewayArn = schema.new({
            id = id.from(_N, "DeregisterTransitGatewayInput", "TransitGatewayArn"),
            type = "string",
            name = "TransitGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TransitGatewayRegistrationStateReason = schema.new({
    id = id.from(_N, "TransitGatewayRegistrationStateReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "TransitGatewayRegistrationStateReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "TransitGatewayRegistrationStateReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TransitGatewayRegistration = schema.new({
    id = id.from(_N, "TransitGatewayRegistration"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "TransitGatewayRegistration", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        TransitGatewayArn = schema.new({
            id = id.from(_N, "TransitGatewayRegistration", "TransitGatewayArn"),
            type = "string",
            name = "TransitGatewayArn",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "TransitGatewayRegistration", "State"),
            type = "structure",
            name = "State",
            target_id = id.from(_N, "TransitGatewayRegistrationStateReason"),
            target = M.TransitGatewayRegistrationStateReason,
        }),
    },
})

M.DeregisterTransitGatewayOutput = schema.new({
    id = id.from(_N, "DeregisterTransitGatewayResponse"),
    type = "structure",
    members = {
        TransitGatewayRegistration = schema.new({
            id = id.from(_N, "DeregisterTransitGatewayOutput", "TransitGatewayRegistration"),
            type = "structure",
            name = "TransitGatewayRegistration",
            target_id = id.from(_N, "TransitGatewayRegistration"),
            target = M.TransitGatewayRegistration,
        }),
    },
})

M.DescribeGlobalNetworksInput = schema.new({
    id = id.from(_N, "DescribeGlobalNetworksRequest"),
    type = "structure",
    members = {
        GlobalNetworkIds = schema.new({
            id = id.from(_N, "DescribeGlobalNetworksInput", "GlobalNetworkIds"),
            type = "list",
            name = "GlobalNetworkIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "globalNetworkIds" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeGlobalNetworksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeGlobalNetworksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.DescribeGlobalNetworksOutput = schema.new({
    id = id.from(_N, "DescribeGlobalNetworksResponse"),
    type = "structure",
    members = {
        GlobalNetworks = schema.new({
            id = id.from(_N, "DescribeGlobalNetworksOutput", "GlobalNetworks"),
            type = "list",
            name = "GlobalNetworks",
            target_id = prelude.Document.id,
            list_member = M.GlobalNetwork,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeGlobalNetworksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateConnectPeerInput = schema.new({
    id = id.from(_N, "DisassociateConnectPeerRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DisassociateConnectPeerInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectPeerId = schema.new({
            id = id.from(_N, "DisassociateConnectPeerInput", "ConnectPeerId"),
            type = "string",
            name = "ConnectPeerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateConnectPeerOutput = schema.new({
    id = id.from(_N, "DisassociateConnectPeerResponse"),
    type = "structure",
    members = {
        ConnectPeerAssociation = schema.new({
            id = id.from(_N, "DisassociateConnectPeerOutput", "ConnectPeerAssociation"),
            type = "structure",
            name = "ConnectPeerAssociation",
            target_id = id.from(_N, "ConnectPeerAssociation"),
            target = M.ConnectPeerAssociation,
        }),
    },
})

M.DisassociateCustomerGatewayInput = schema.new({
    id = id.from(_N, "DisassociateCustomerGatewayRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DisassociateCustomerGatewayInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CustomerGatewayArn = schema.new({
            id = id.from(_N, "DisassociateCustomerGatewayInput", "CustomerGatewayArn"),
            type = "string",
            name = "CustomerGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateCustomerGatewayOutput = schema.new({
    id = id.from(_N, "DisassociateCustomerGatewayResponse"),
    type = "structure",
    members = {
        CustomerGatewayAssociation = schema.new({
            id = id.from(_N, "DisassociateCustomerGatewayOutput", "CustomerGatewayAssociation"),
            type = "structure",
            name = "CustomerGatewayAssociation",
            target_id = id.from(_N, "CustomerGatewayAssociation"),
            target = M.CustomerGatewayAssociation,
        }),
    },
})

M.DisassociateLinkInput = schema.new({
    id = id.from(_N, "DisassociateLinkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DisassociateLinkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "DisassociateLinkInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "deviceId" },
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "DisassociateLinkInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "linkId" },
            },
        }),
    },
})

M.DisassociateLinkOutput = schema.new({
    id = id.from(_N, "DisassociateLinkResponse"),
    type = "structure",
    members = {
        LinkAssociation = schema.new({
            id = id.from(_N, "DisassociateLinkOutput", "LinkAssociation"),
            type = "structure",
            name = "LinkAssociation",
            target_id = id.from(_N, "LinkAssociation"),
            target = M.LinkAssociation,
        }),
    },
})

M.DisassociateTransitGatewayConnectPeerInput = schema.new({
    id = id.from(_N, "DisassociateTransitGatewayConnectPeerRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "DisassociateTransitGatewayConnectPeerInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TransitGatewayConnectPeerArn = schema.new({
            id = id.from(_N, "DisassociateTransitGatewayConnectPeerInput", "TransitGatewayConnectPeerArn"),
            type = "string",
            name = "TransitGatewayConnectPeerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateTransitGatewayConnectPeerOutput = schema.new({
    id = id.from(_N, "DisassociateTransitGatewayConnectPeerResponse"),
    type = "structure",
    members = {
        TransitGatewayConnectPeerAssociation = schema.new({
            id = id.from(_N, "DisassociateTransitGatewayConnectPeerOutput", "TransitGatewayConnectPeerAssociation"),
            type = "structure",
            name = "TransitGatewayConnectPeerAssociation",
            target_id = id.from(_N, "TransitGatewayConnectPeerAssociation"),
            target = M.TransitGatewayConnectPeerAssociation,
        }),
    },
})

M.ExecuteCoreNetworkChangeSetInput = schema.new({
    id = id.from(_N, "ExecuteCoreNetworkChangeSetRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ExecuteCoreNetworkChangeSetInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "ExecuteCoreNetworkChangeSetInput", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ExecuteCoreNetworkChangeSetOutput = schema.new({
    id = id.from(_N, "ExecuteCoreNetworkChangeSetResponse"),
    type = "structure",
})

M.GetConnectAttachmentInput = schema.new({
    id = id.from(_N, "GetConnectAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "GetConnectAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectAttachmentOutput = schema.new({
    id = id.from(_N, "GetConnectAttachmentResponse"),
    type = "structure",
    members = {
        ConnectAttachment = schema.new({
            id = id.from(_N, "GetConnectAttachmentOutput", "ConnectAttachment"),
            type = "structure",
            name = "ConnectAttachment",
            target_id = id.from(_N, "ConnectAttachment"),
            target = M.ConnectAttachment,
        }),
    },
})

M.GetConnectionsInput = schema.new({
    id = id.from(_N, "GetConnectionsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetConnectionsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectionIds = schema.new({
            id = id.from(_N, "GetConnectionsInput", "ConnectionIds"),
            type = "list",
            name = "ConnectionIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "connectionIds" },
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "GetConnectionsInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "deviceId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetConnectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetConnectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetConnectionsOutput = schema.new({
    id = id.from(_N, "GetConnectionsResponse"),
    type = "structure",
    members = {
        Connections = schema.new({
            id = id.from(_N, "GetConnectionsOutput", "Connections"),
            type = "list",
            name = "Connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetConnectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetConnectPeerInput = schema.new({
    id = id.from(_N, "GetConnectPeerRequest"),
    type = "structure",
    members = {
        ConnectPeerId = schema.new({
            id = id.from(_N, "GetConnectPeerInput", "ConnectPeerId"),
            type = "string",
            name = "ConnectPeerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectPeerOutput = schema.new({
    id = id.from(_N, "GetConnectPeerResponse"),
    type = "structure",
    members = {
        ConnectPeer = schema.new({
            id = id.from(_N, "GetConnectPeerOutput", "ConnectPeer"),
            type = "structure",
            name = "ConnectPeer",
            target_id = id.from(_N, "ConnectPeer"),
            target = M.ConnectPeer,
        }),
    },
})

M.GetConnectPeerAssociationsInput = schema.new({
    id = id.from(_N, "GetConnectPeerAssociationsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetConnectPeerAssociationsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectPeerIds = schema.new({
            id = id.from(_N, "GetConnectPeerAssociationsInput", "ConnectPeerIds"),
            type = "list",
            name = "ConnectPeerIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "connectPeerIds" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetConnectPeerAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetConnectPeerAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetConnectPeerAssociationsOutput = schema.new({
    id = id.from(_N, "GetConnectPeerAssociationsResponse"),
    type = "structure",
    members = {
        ConnectPeerAssociations = schema.new({
            id = id.from(_N, "GetConnectPeerAssociationsOutput", "ConnectPeerAssociations"),
            type = "list",
            name = "ConnectPeerAssociations",
            target_id = prelude.Document.id,
            list_member = M.ConnectPeerAssociation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetConnectPeerAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCoreNetworkInput = schema.new({
    id = id.from(_N, "GetCoreNetworkRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "GetCoreNetworkInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCoreNetworkOutput = schema.new({
    id = id.from(_N, "GetCoreNetworkResponse"),
    type = "structure",
    members = {
        CoreNetwork = schema.new({
            id = id.from(_N, "GetCoreNetworkOutput", "CoreNetwork"),
            type = "structure",
            name = "CoreNetwork",
            target_id = id.from(_N, "CoreNetwork"),
            target = M.CoreNetwork,
        }),
    },
})

M.GetCoreNetworkChangeEventsInput = schema.new({
    id = id.from(_N, "GetCoreNetworkChangeEventsRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeEventsInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeEventsInput", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeEventsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeEventsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetCoreNetworkChangeEventsOutput = schema.new({
    id = id.from(_N, "GetCoreNetworkChangeEventsResponse"),
    type = "structure",
    members = {
        CoreNetworkChangeEvents = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeEventsOutput", "CoreNetworkChangeEvents"),
            type = "list",
            name = "CoreNetworkChangeEvents",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkChangeEvent,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeEventsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCoreNetworkChangeSetInput = schema.new({
    id = id.from(_N, "GetCoreNetworkChangeSetRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeSetInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeSetInput", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeSetInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeSetInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetCoreNetworkChangeSetOutput = schema.new({
    id = id.from(_N, "GetCoreNetworkChangeSetResponse"),
    type = "structure",
    members = {
        CoreNetworkChanges = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeSetOutput", "CoreNetworkChanges"),
            type = "list",
            name = "CoreNetworkChanges",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkChange,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCoreNetworkChangeSetOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCoreNetworkPolicyInput = schema.new({
    id = id.from(_N, "GetCoreNetworkPolicyRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "GetCoreNetworkPolicyInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "GetCoreNetworkPolicyInput", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "policyVersionId" },
            },
        }),
        Alias = schema.new({
            id = id.from(_N, "GetCoreNetworkPolicyInput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "alias" },
            },
        }),
    },
})

M.GetCoreNetworkPolicyOutput = schema.new({
    id = id.from(_N, "GetCoreNetworkPolicyResponse"),
    type = "structure",
    members = {
        CoreNetworkPolicy = schema.new({
            id = id.from(_N, "GetCoreNetworkPolicyOutput", "CoreNetworkPolicy"),
            type = "structure",
            name = "CoreNetworkPolicy",
            target_id = id.from(_N, "CoreNetworkPolicy"),
            target = M.CoreNetworkPolicy,
        }),
    },
})

M.GetCustomerGatewayAssociationsInput = schema.new({
    id = id.from(_N, "GetCustomerGatewayAssociationsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetCustomerGatewayAssociationsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CustomerGatewayArns = schema.new({
            id = id.from(_N, "GetCustomerGatewayAssociationsInput", "CustomerGatewayArns"),
            type = "list",
            name = "CustomerGatewayArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "customerGatewayArns" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetCustomerGatewayAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCustomerGatewayAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetCustomerGatewayAssociationsOutput = schema.new({
    id = id.from(_N, "GetCustomerGatewayAssociationsResponse"),
    type = "structure",
    members = {
        CustomerGatewayAssociations = schema.new({
            id = id.from(_N, "GetCustomerGatewayAssociationsOutput", "CustomerGatewayAssociations"),
            type = "list",
            name = "CustomerGatewayAssociations",
            target_id = prelude.Document.id,
            list_member = M.CustomerGatewayAssociation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCustomerGatewayAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDevicesInput = schema.new({
    id = id.from(_N, "GetDevicesRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetDevicesInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceIds = schema.new({
            id = id.from(_N, "GetDevicesInput", "DeviceIds"),
            type = "list",
            name = "DeviceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "deviceIds" },
            },
        }),
        SiteId = schema.new({
            id = id.from(_N, "GetDevicesInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "siteId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetDevicesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetDevicesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetDevicesOutput = schema.new({
    id = id.from(_N, "GetDevicesResponse"),
    type = "structure",
    members = {
        Devices = schema.new({
            id = id.from(_N, "GetDevicesOutput", "Devices"),
            type = "list",
            name = "Devices",
            target_id = prelude.Document.id,
            list_member = M.Device,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetDevicesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDirectConnectGatewayAttachmentInput = schema.new({
    id = id.from(_N, "GetDirectConnectGatewayAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "GetDirectConnectGatewayAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDirectConnectGatewayAttachmentOutput = schema.new({
    id = id.from(_N, "GetDirectConnectGatewayAttachmentResponse"),
    type = "structure",
    members = {
        DirectConnectGatewayAttachment = schema.new({
            id = id.from(_N, "GetDirectConnectGatewayAttachmentOutput", "DirectConnectGatewayAttachment"),
            type = "structure",
            name = "DirectConnectGatewayAttachment",
            target_id = id.from(_N, "DirectConnectGatewayAttachment"),
            target = M.DirectConnectGatewayAttachment,
        }),
    },
})

M.GetLinkAssociationsInput = schema.new({
    id = id.from(_N, "GetLinkAssociationsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetLinkAssociationsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "GetLinkAssociationsInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "deviceId" },
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "GetLinkAssociationsInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "linkId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetLinkAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetLinkAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetLinkAssociationsOutput = schema.new({
    id = id.from(_N, "GetLinkAssociationsResponse"),
    type = "structure",
    members = {
        LinkAssociations = schema.new({
            id = id.from(_N, "GetLinkAssociationsOutput", "LinkAssociations"),
            type = "list",
            name = "LinkAssociations",
            target_id = prelude.Document.id,
            list_member = M.LinkAssociation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetLinkAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLinksInput = schema.new({
    id = id.from(_N, "GetLinksRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetLinksInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LinkIds = schema.new({
            id = id.from(_N, "GetLinksInput", "LinkIds"),
            type = "list",
            name = "LinkIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "linkIds" },
            },
        }),
        SiteId = schema.new({
            id = id.from(_N, "GetLinksInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "siteId" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "GetLinksInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        Provider = schema.new({
            id = id.from(_N, "GetLinksInput", "Provider"),
            type = "string",
            name = "Provider",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "provider" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetLinksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetLinksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetLinksOutput = schema.new({
    id = id.from(_N, "GetLinksResponse"),
    type = "structure",
    members = {
        Links = schema.new({
            id = id.from(_N, "GetLinksOutput", "Links"),
            type = "list",
            name = "Links",
            target_id = prelude.Document.id,
            list_member = M.Link,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetLinksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetNetworkResourceCountsInput = schema.new({
    id = id.from(_N, "GetNetworkResourceCountsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetNetworkResourceCountsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetNetworkResourceCountsInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetNetworkResourceCountsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkResourceCountsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.NetworkResourceCount = schema.new({
    id = id.from(_N, "NetworkResourceCount"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "NetworkResourceCount", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Count = schema.new({
            id = id.from(_N, "NetworkResourceCount", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetNetworkResourceCountsOutput = schema.new({
    id = id.from(_N, "GetNetworkResourceCountsResponse"),
    type = "structure",
    members = {
        NetworkResourceCounts = schema.new({
            id = id.from(_N, "GetNetworkResourceCountsOutput", "NetworkResourceCounts"),
            type = "list",
            name = "NetworkResourceCounts",
            target_id = prelude.Document.id,
            list_member = M.NetworkResourceCount,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkResourceCountsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetNetworkResourceRelationshipsInput = schema.new({
    id = id.from(_N, "GetNetworkResourceRelationshipsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CoreNetworkId = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "coreNetworkId" },
            },
        }),
        RegisteredGatewayArn = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "RegisteredGatewayArn"),
            type = "string",
            name = "RegisteredGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "registeredGatewayArn" },
            },
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "awsRegion" },
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "accountId" },
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.Relationship = schema.new({
    id = id.from(_N, "Relationship"),
    type = "structure",
    members = {
        From = schema.new({
            id = id.from(_N, "Relationship", "From"),
            type = "string",
            name = "From",
            target_id = prelude.String.id,
        }),
        To = schema.new({
            id = id.from(_N, "Relationship", "To"),
            type = "string",
            name = "To",
            target_id = prelude.String.id,
        }),
    },
})

M.GetNetworkResourceRelationshipsOutput = schema.new({
    id = id.from(_N, "GetNetworkResourceRelationshipsResponse"),
    type = "structure",
    members = {
        Relationships = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsOutput", "Relationships"),
            type = "list",
            name = "Relationships",
            target_id = prelude.Document.id,
            list_member = M.Relationship,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkResourceRelationshipsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetNetworkResourcesInput = schema.new({
    id = id.from(_N, "GetNetworkResourcesRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CoreNetworkId = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "coreNetworkId" },
            },
        }),
        RegisteredGatewayArn = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "RegisteredGatewayArn"),
            type = "string",
            name = "RegisteredGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "registeredGatewayArn" },
            },
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "awsRegion" },
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "accountId" },
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.NetworkResource = schema.new({
    id = id.from(_N, "NetworkResource"),
    type = "structure",
    members = {
        RegisteredGatewayArn = schema.new({
            id = id.from(_N, "NetworkResource", "RegisteredGatewayArn"),
            type = "string",
            name = "RegisteredGatewayArn",
            target_id = prelude.String.id,
        }),
        CoreNetworkId = schema.new({
            id = id.from(_N, "NetworkResource", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "NetworkResource", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "NetworkResource", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "NetworkResource", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "NetworkResource", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "NetworkResource", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "NetworkResource", "Definition"),
            type = "string",
            name = "Definition",
            target_id = prelude.String.id,
        }),
        DefinitionTimestamp = schema.new({
            id = id.from(_N, "NetworkResource", "DefinitionTimestamp"),
            type = "timestamp",
            name = "DefinitionTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "NetworkResource", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Metadata = schema.new({
            id = id.from(_N, "NetworkResource", "Metadata"),
            type = "map",
            name = "Metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetNetworkResourcesOutput = schema.new({
    id = id.from(_N, "GetNetworkResourcesResponse"),
    type = "structure",
    members = {
        NetworkResources = schema.new({
            id = id.from(_N, "GetNetworkResourcesOutput", "NetworkResources"),
            type = "list",
            name = "NetworkResources",
            target_id = prelude.Document.id,
            list_member = M.NetworkResource,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteTableIdentifier = schema.new({
    id = id.from(_N, "RouteTableIdentifier"),
    type = "structure",
    members = {
        TransitGatewayRouteTableArn = schema.new({
            id = id.from(_N, "RouteTableIdentifier", "TransitGatewayRouteTableArn"),
            type = "string",
            name = "TransitGatewayRouteTableArn",
            target_id = prelude.String.id,
        }),
        CoreNetworkSegmentEdge = schema.new({
            id = id.from(_N, "RouteTableIdentifier", "CoreNetworkSegmentEdge"),
            type = "structure",
            name = "CoreNetworkSegmentEdge",
            target_id = id.from(_N, "CoreNetworkSegmentEdgeIdentifier"),
            target = M.CoreNetworkSegmentEdgeIdentifier,
        }),
        CoreNetworkNetworkFunctionGroup = schema.new({
            id = id.from(_N, "RouteTableIdentifier", "CoreNetworkNetworkFunctionGroup"),
            type = "structure",
            name = "CoreNetworkNetworkFunctionGroup",
            target_id = id.from(_N, "CoreNetworkNetworkFunctionGroupIdentifier"),
            target = M.CoreNetworkNetworkFunctionGroupIdentifier,
        }),
    },
})

M.GetNetworkRoutesInput = schema.new({
    id = id.from(_N, "GetNetworkRoutesRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RouteTableIdentifier = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "RouteTableIdentifier"),
            type = "structure",
            name = "RouteTableIdentifier",
            target_id = id.from(_N, "RouteTableIdentifier"),
            target = M.RouteTableIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExactCidrMatches = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "ExactCidrMatches"),
            type = "list",
            name = "ExactCidrMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LongestPrefixMatches = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "LongestPrefixMatches"),
            type = "list",
            name = "LongestPrefixMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SubnetOfMatches = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "SubnetOfMatches"),
            type = "list",
            name = "SubnetOfMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SupernetOfMatches = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "SupernetOfMatches"),
            type = "list",
            name = "SupernetOfMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PrefixListIds = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "PrefixListIds"),
            type = "list",
            name = "PrefixListIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        States = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "States"),
            type = "list",
            name = "States",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Types = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "Types"),
            type = "list",
            name = "Types",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DestinationFilters = schema.new({
            id = id.from(_N, "GetNetworkRoutesInput", "DestinationFilters"),
            type = "map",
            name = "DestinationFilters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.NetworkRouteDestination = schema.new({
    id = id.from(_N, "NetworkRouteDestination"),
    type = "structure",
    members = {
        CoreNetworkAttachmentId = schema.new({
            id = id.from(_N, "NetworkRouteDestination", "CoreNetworkAttachmentId"),
            type = "string",
            name = "CoreNetworkAttachmentId",
            target_id = prelude.String.id,
        }),
        TransitGatewayAttachmentId = schema.new({
            id = id.from(_N, "NetworkRouteDestination", "TransitGatewayAttachmentId"),
            type = "string",
            name = "TransitGatewayAttachmentId",
            target_id = prelude.String.id,
        }),
        SegmentName = schema.new({
            id = id.from(_N, "NetworkRouteDestination", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
        }),
        NetworkFunctionGroupName = schema.new({
            id = id.from(_N, "NetworkRouteDestination", "NetworkFunctionGroupName"),
            type = "string",
            name = "NetworkFunctionGroupName",
            target_id = prelude.String.id,
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "NetworkRouteDestination", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "NetworkRouteDestination", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "NetworkRouteDestination", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkRoute = schema.new({
    id = id.from(_N, "NetworkRoute"),
    type = "structure",
    members = {
        DestinationCidrBlock = schema.new({
            id = id.from(_N, "NetworkRoute", "DestinationCidrBlock"),
            type = "string",
            name = "DestinationCidrBlock",
            target_id = prelude.String.id,
        }),
        Destinations = schema.new({
            id = id.from(_N, "NetworkRoute", "Destinations"),
            type = "list",
            name = "Destinations",
            target_id = prelude.Document.id,
            list_member = M.NetworkRouteDestination,
        }),
        PrefixListId = schema.new({
            id = id.from(_N, "NetworkRoute", "PrefixListId"),
            type = "string",
            name = "PrefixListId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "NetworkRoute", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "NetworkRoute", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.GetNetworkRoutesOutput = schema.new({
    id = id.from(_N, "GetNetworkRoutesResponse"),
    type = "structure",
    members = {
        RouteTableArn = schema.new({
            id = id.from(_N, "GetNetworkRoutesOutput", "RouteTableArn"),
            type = "string",
            name = "RouteTableArn",
            target_id = prelude.String.id,
        }),
        CoreNetworkSegmentEdge = schema.new({
            id = id.from(_N, "GetNetworkRoutesOutput", "CoreNetworkSegmentEdge"),
            type = "structure",
            name = "CoreNetworkSegmentEdge",
            target_id = id.from(_N, "CoreNetworkSegmentEdgeIdentifier"),
            target = M.CoreNetworkSegmentEdgeIdentifier,
        }),
        RouteTableType = schema.new({
            id = id.from(_N, "GetNetworkRoutesOutput", "RouteTableType"),
            type = "string",
            name = "RouteTableType",
            target_id = prelude.String.id,
        }),
        RouteTableTimestamp = schema.new({
            id = id.from(_N, "GetNetworkRoutesOutput", "RouteTableTimestamp"),
            type = "timestamp",
            name = "RouteTableTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        NetworkRoutes = schema.new({
            id = id.from(_N, "GetNetworkRoutesOutput", "NetworkRoutes"),
            type = "list",
            name = "NetworkRoutes",
            target_id = prelude.Document.id,
            list_member = M.NetworkRoute,
        }),
    },
})

M.GetNetworkTelemetryInput = schema.new({
    id = id.from(_N, "GetNetworkTelemetryRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CoreNetworkId = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "coreNetworkId" },
            },
        }),
        RegisteredGatewayArn = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "RegisteredGatewayArn"),
            type = "string",
            name = "RegisteredGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "registeredGatewayArn" },
            },
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "awsRegion" },
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "accountId" },
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkTelemetryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.NetworkTelemetry = schema.new({
    id = id.from(_N, "NetworkTelemetry"),
    type = "structure",
    members = {
        RegisteredGatewayArn = schema.new({
            id = id.from(_N, "NetworkTelemetry", "RegisteredGatewayArn"),
            type = "string",
            name = "RegisteredGatewayArn",
            target_id = prelude.String.id,
        }),
        CoreNetworkId = schema.new({
            id = id.from(_N, "NetworkTelemetry", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "NetworkTelemetry", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "NetworkTelemetry", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "NetworkTelemetry", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "NetworkTelemetry", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "NetworkTelemetry", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Address = schema.new({
            id = id.from(_N, "NetworkTelemetry", "Address"),
            type = "string",
            name = "Address",
            target_id = prelude.String.id,
        }),
        Health = schema.new({
            id = id.from(_N, "NetworkTelemetry", "Health"),
            type = "structure",
            name = "Health",
            target_id = id.from(_N, "ConnectionHealth"),
            target = M.ConnectionHealth,
        }),
    },
})

M.GetNetworkTelemetryOutput = schema.new({
    id = id.from(_N, "GetNetworkTelemetryResponse"),
    type = "structure",
    members = {
        NetworkTelemetry = schema.new({
            id = id.from(_N, "GetNetworkTelemetryOutput", "NetworkTelemetry"),
            type = "list",
            name = "NetworkTelemetry",
            target_id = prelude.Document.id,
            list_member = M.NetworkTelemetry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetNetworkTelemetryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyResponse"),
    type = "structure",
    members = {
        PolicyDocument = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
    },
})

M.GetRouteAnalysisInput = schema.new({
    id = id.from(_N, "GetRouteAnalysisRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetRouteAnalysisInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RouteAnalysisId = schema.new({
            id = id.from(_N, "GetRouteAnalysisInput", "RouteAnalysisId"),
            type = "string",
            name = "RouteAnalysisId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RouteAnalysisEndpointOptions = schema.new({
    id = id.from(_N, "RouteAnalysisEndpointOptions"),
    type = "structure",
    members = {
        TransitGatewayAttachmentArn = schema.new({
            id = id.from(_N, "RouteAnalysisEndpointOptions", "TransitGatewayAttachmentArn"),
            type = "string",
            name = "TransitGatewayAttachmentArn",
            target_id = prelude.String.id,
        }),
        TransitGatewayArn = schema.new({
            id = id.from(_N, "RouteAnalysisEndpointOptions", "TransitGatewayArn"),
            type = "string",
            name = "TransitGatewayArn",
            target_id = prelude.String.id,
        }),
        IpAddress = schema.new({
            id = id.from(_N, "RouteAnalysisEndpointOptions", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteAnalysisCompletion = schema.new({
    id = id.from(_N, "RouteAnalysisCompletion"),
    type = "structure",
    members = {
        ResultCode = schema.new({
            id = id.from(_N, "RouteAnalysisCompletion", "ResultCode"),
            type = "string",
            name = "ResultCode",
            target_id = prelude.String.id,
        }),
        ReasonCode = schema.new({
            id = id.from(_N, "RouteAnalysisCompletion", "ReasonCode"),
            type = "string",
            name = "ReasonCode",
            target_id = prelude.String.id,
        }),
        ReasonContext = schema.new({
            id = id.from(_N, "RouteAnalysisCompletion", "ReasonContext"),
            type = "map",
            name = "ReasonContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.NetworkResourceSummary = schema.new({
    id = id.from(_N, "NetworkResourceSummary"),
    type = "structure",
    members = {
        RegisteredGatewayArn = schema.new({
            id = id.from(_N, "NetworkResourceSummary", "RegisteredGatewayArn"),
            type = "string",
            name = "RegisteredGatewayArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "NetworkResourceSummary", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "NetworkResourceSummary", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "NetworkResourceSummary", "Definition"),
            type = "string",
            name = "Definition",
            target_id = prelude.String.id,
        }),
        NameTag = schema.new({
            id = id.from(_N, "NetworkResourceSummary", "NameTag"),
            type = "string",
            name = "NameTag",
            target_id = prelude.String.id,
        }),
        IsMiddlebox = schema.new({
            id = id.from(_N, "NetworkResourceSummary", "IsMiddlebox"),
            type = "boolean",
            name = "IsMiddlebox",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PathComponent = schema.new({
    id = id.from(_N, "PathComponent"),
    type = "structure",
    members = {
        Sequence = schema.new({
            id = id.from(_N, "PathComponent", "Sequence"),
            type = "integer",
            name = "Sequence",
            target_id = prelude.Integer.id,
        }),
        Resource = schema.new({
            id = id.from(_N, "PathComponent", "Resource"),
            type = "structure",
            name = "Resource",
            target_id = id.from(_N, "NetworkResourceSummary"),
            target = M.NetworkResourceSummary,
        }),
        DestinationCidrBlock = schema.new({
            id = id.from(_N, "PathComponent", "DestinationCidrBlock"),
            type = "string",
            name = "DestinationCidrBlock",
            target_id = prelude.String.id,
        }),
    },
})

M.RouteAnalysisPath = schema.new({
    id = id.from(_N, "RouteAnalysisPath"),
    type = "structure",
    members = {
        CompletionStatus = schema.new({
            id = id.from(_N, "RouteAnalysisPath", "CompletionStatus"),
            type = "structure",
            name = "CompletionStatus",
            target_id = id.from(_N, "RouteAnalysisCompletion"),
            target = M.RouteAnalysisCompletion,
        }),
        Path = schema.new({
            id = id.from(_N, "RouteAnalysisPath", "Path"),
            type = "list",
            name = "Path",
            target_id = prelude.Document.id,
            list_member = M.PathComponent,
        }),
    },
})

M.RouteAnalysis = schema.new({
    id = id.from(_N, "RouteAnalysis"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "RouteAnalysis", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "RouteAnalysis", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        RouteAnalysisId = schema.new({
            id = id.from(_N, "RouteAnalysis", "RouteAnalysisId"),
            type = "string",
            name = "RouteAnalysisId",
            target_id = prelude.String.id,
        }),
        StartTimestamp = schema.new({
            id = id.from(_N, "RouteAnalysis", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RouteAnalysis", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "RouteAnalysis", "Source"),
            type = "structure",
            name = "Source",
            target_id = id.from(_N, "RouteAnalysisEndpointOptions"),
            target = M.RouteAnalysisEndpointOptions,
        }),
        Destination = schema.new({
            id = id.from(_N, "RouteAnalysis", "Destination"),
            type = "structure",
            name = "Destination",
            target_id = id.from(_N, "RouteAnalysisEndpointOptions"),
            target = M.RouteAnalysisEndpointOptions,
        }),
        IncludeReturnPath = schema.new({
            id = id.from(_N, "RouteAnalysis", "IncludeReturnPath"),
            type = "boolean",
            name = "IncludeReturnPath",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        UseMiddleboxes = schema.new({
            id = id.from(_N, "RouteAnalysis", "UseMiddleboxes"),
            type = "boolean",
            name = "UseMiddleboxes",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ForwardPath = schema.new({
            id = id.from(_N, "RouteAnalysis", "ForwardPath"),
            type = "structure",
            name = "ForwardPath",
            target_id = id.from(_N, "RouteAnalysisPath"),
            target = M.RouteAnalysisPath,
        }),
        ReturnPath = schema.new({
            id = id.from(_N, "RouteAnalysis", "ReturnPath"),
            type = "structure",
            name = "ReturnPath",
            target_id = id.from(_N, "RouteAnalysisPath"),
            target = M.RouteAnalysisPath,
        }),
    },
})

M.GetRouteAnalysisOutput = schema.new({
    id = id.from(_N, "GetRouteAnalysisResponse"),
    type = "structure",
    members = {
        RouteAnalysis = schema.new({
            id = id.from(_N, "GetRouteAnalysisOutput", "RouteAnalysis"),
            type = "structure",
            name = "RouteAnalysis",
            target_id = id.from(_N, "RouteAnalysis"),
            target = M.RouteAnalysis,
        }),
    },
})

M.GetSitesInput = schema.new({
    id = id.from(_N, "GetSitesRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetSitesInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SiteIds = schema.new({
            id = id.from(_N, "GetSitesInput", "SiteIds"),
            type = "list",
            name = "SiteIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "siteIds" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetSitesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetSitesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetSitesOutput = schema.new({
    id = id.from(_N, "GetSitesResponse"),
    type = "structure",
    members = {
        Sites = schema.new({
            id = id.from(_N, "GetSitesOutput", "Sites"),
            type = "list",
            name = "Sites",
            target_id = prelude.Document.id,
            list_member = M.Site,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetSitesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSiteToSiteVpnAttachmentInput = schema.new({
    id = id.from(_N, "GetSiteToSiteVpnAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "GetSiteToSiteVpnAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSiteToSiteVpnAttachmentOutput = schema.new({
    id = id.from(_N, "GetSiteToSiteVpnAttachmentResponse"),
    type = "structure",
    members = {
        SiteToSiteVpnAttachment = schema.new({
            id = id.from(_N, "GetSiteToSiteVpnAttachmentOutput", "SiteToSiteVpnAttachment"),
            type = "structure",
            name = "SiteToSiteVpnAttachment",
            target_id = id.from(_N, "SiteToSiteVpnAttachment"),
            target = M.SiteToSiteVpnAttachment,
        }),
    },
})

M.GetTransitGatewayConnectPeerAssociationsInput = schema.new({
    id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TransitGatewayConnectPeerArns = schema.new({
            id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsInput", "TransitGatewayConnectPeerArns"),
            type = "list",
            name = "TransitGatewayConnectPeerArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "transitGatewayConnectPeerArns" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetTransitGatewayConnectPeerAssociationsOutput = schema.new({
    id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsResponse"),
    type = "structure",
    members = {
        TransitGatewayConnectPeerAssociations = schema.new({
            id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsOutput", "TransitGatewayConnectPeerAssociations"),
            type = "list",
            name = "TransitGatewayConnectPeerAssociations",
            target_id = prelude.Document.id,
            list_member = M.TransitGatewayConnectPeerAssociation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetTransitGatewayConnectPeerAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetTransitGatewayPeeringInput = schema.new({
    id = id.from(_N, "GetTransitGatewayPeeringRequest"),
    type = "structure",
    members = {
        PeeringId = schema.new({
            id = id.from(_N, "GetTransitGatewayPeeringInput", "PeeringId"),
            type = "string",
            name = "PeeringId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTransitGatewayPeeringOutput = schema.new({
    id = id.from(_N, "GetTransitGatewayPeeringResponse"),
    type = "structure",
    members = {
        TransitGatewayPeering = schema.new({
            id = id.from(_N, "GetTransitGatewayPeeringOutput", "TransitGatewayPeering"),
            type = "structure",
            name = "TransitGatewayPeering",
            target_id = id.from(_N, "TransitGatewayPeering"),
            target = M.TransitGatewayPeering,
        }),
    },
})

M.GetTransitGatewayRegistrationsInput = schema.new({
    id = id.from(_N, "GetTransitGatewayRegistrationsRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "GetTransitGatewayRegistrationsInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TransitGatewayArns = schema.new({
            id = id.from(_N, "GetTransitGatewayRegistrationsInput", "TransitGatewayArns"),
            type = "list",
            name = "TransitGatewayArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "transitGatewayArns" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetTransitGatewayRegistrationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetTransitGatewayRegistrationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GetTransitGatewayRegistrationsOutput = schema.new({
    id = id.from(_N, "GetTransitGatewayRegistrationsResponse"),
    type = "structure",
    members = {
        TransitGatewayRegistrations = schema.new({
            id = id.from(_N, "GetTransitGatewayRegistrationsOutput", "TransitGatewayRegistrations"),
            type = "list",
            name = "TransitGatewayRegistrations",
            target_id = prelude.Document.id,
            list_member = M.TransitGatewayRegistration,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetTransitGatewayRegistrationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetTransitGatewayRouteTableAttachmentInput = schema.new({
    id = id.from(_N, "GetTransitGatewayRouteTableAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "GetTransitGatewayRouteTableAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTransitGatewayRouteTableAttachmentOutput = schema.new({
    id = id.from(_N, "GetTransitGatewayRouteTableAttachmentResponse"),
    type = "structure",
    members = {
        TransitGatewayRouteTableAttachment = schema.new({
            id = id.from(_N, "GetTransitGatewayRouteTableAttachmentOutput", "TransitGatewayRouteTableAttachment"),
            type = "structure",
            name = "TransitGatewayRouteTableAttachment",
            target_id = id.from(_N, "TransitGatewayRouteTableAttachment"),
            target = M.TransitGatewayRouteTableAttachment,
        }),
    },
})

M.GetVpcAttachmentInput = schema.new({
    id = id.from(_N, "GetVpcAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "GetVpcAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetVpcAttachmentOutput = schema.new({
    id = id.from(_N, "GetVpcAttachmentResponse"),
    type = "structure",
    members = {
        VpcAttachment = schema.new({
            id = id.from(_N, "GetVpcAttachmentOutput", "VpcAttachment"),
            type = "structure",
            name = "VpcAttachment",
            target_id = id.from(_N, "VpcAttachment"),
            target = M.VpcAttachment,
        }),
    },
})

M.ListAttachmentRoutingPolicyAssociationsInput = schema.new({
    id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "attachmentId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAttachmentRoutingPolicyAssociationsOutput = schema.new({
    id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsResponse"),
    type = "structure",
    members = {
        AttachmentRoutingPolicyAssociations = schema.new({
            id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsOutput", "AttachmentRoutingPolicyAssociations"),
            type = "list",
            name = "AttachmentRoutingPolicyAssociations",
            target_id = prelude.Document.id,
            list_member = M.AttachmentRoutingPolicyAssociationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttachmentRoutingPolicyAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAttachmentsInput = schema.new({
    id = id.from(_N, "ListAttachmentsRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "coreNetworkId" },
            },
        }),
        AttachmentType = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "AttachmentType"),
            type = "string",
            name = "AttachmentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "attachmentType" },
            },
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "edgeLocation" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "state" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAttachmentsOutput = schema.new({
    id = id.from(_N, "ListAttachmentsResponse"),
    type = "structure",
    members = {
        Attachments = schema.new({
            id = id.from(_N, "ListAttachmentsOutput", "Attachments"),
            type = "list",
            name = "Attachments",
            target_id = prelude.Document.id,
            list_member = M.Attachment,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAttachmentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectPeersInput = schema.new({
    id = id.from(_N, "ListConnectPeersRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ListConnectPeersInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "coreNetworkId" },
            },
        }),
        ConnectAttachmentId = schema.new({
            id = id.from(_N, "ListConnectPeersInput", "ConnectAttachmentId"),
            type = "string",
            name = "ConnectAttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "connectAttachmentId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConnectPeersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectPeersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConnectPeersOutput = schema.new({
    id = id.from(_N, "ListConnectPeersResponse"),
    type = "structure",
    members = {
        ConnectPeers = schema.new({
            id = id.from(_N, "ListConnectPeersOutput", "ConnectPeers"),
            type = "list",
            name = "ConnectPeers",
            target_id = prelude.Document.id,
            list_member = M.ConnectPeerSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectPeersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCoreNetworkPolicyVersionsInput = schema.new({
    id = id.from(_N, "ListCoreNetworkPolicyVersionsRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ListCoreNetworkPolicyVersionsInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCoreNetworkPolicyVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworkPolicyVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListCoreNetworkPolicyVersionsOutput = schema.new({
    id = id.from(_N, "ListCoreNetworkPolicyVersionsResponse"),
    type = "structure",
    members = {
        CoreNetworkPolicyVersions = schema.new({
            id = id.from(_N, "ListCoreNetworkPolicyVersionsOutput", "CoreNetworkPolicyVersions"),
            type = "list",
            name = "CoreNetworkPolicyVersions",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkPolicyVersion,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworkPolicyVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCoreNetworkPrefixListAssociationsInput = schema.new({
    id = id.from(_N, "ListCoreNetworkPrefixListAssociationsRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ListCoreNetworkPrefixListAssociationsInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PrefixListArn = schema.new({
            id = id.from(_N, "ListCoreNetworkPrefixListAssociationsInput", "PrefixListArn"),
            type = "string",
            name = "PrefixListArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "prefixListArn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCoreNetworkPrefixListAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworkPrefixListAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.PrefixListAssociation = schema.new({
    id = id.from(_N, "PrefixListAssociation"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "PrefixListAssociation", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        PrefixListArn = schema.new({
            id = id.from(_N, "PrefixListAssociation", "PrefixListArn"),
            type = "string",
            name = "PrefixListArn",
            target_id = prelude.String.id,
        }),
        PrefixListAlias = schema.new({
            id = id.from(_N, "PrefixListAssociation", "PrefixListAlias"),
            type = "string",
            name = "PrefixListAlias",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCoreNetworkPrefixListAssociationsOutput = schema.new({
    id = id.from(_N, "ListCoreNetworkPrefixListAssociationsResponse"),
    type = "structure",
    members = {
        PrefixListAssociations = schema.new({
            id = id.from(_N, "ListCoreNetworkPrefixListAssociationsOutput", "PrefixListAssociations"),
            type = "list",
            name = "PrefixListAssociations",
            target_id = prelude.Document.id,
            list_member = M.PrefixListAssociation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworkPrefixListAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCoreNetworkRoutingInformationInput = schema.new({
    id = id.from(_N, "ListCoreNetworkRoutingInformationRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SegmentName = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "SegmentName"),
            type = "string",
            name = "SegmentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextHopFilters = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "NextHopFilters"),
            type = "map",
            name = "NextHopFilters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        LocalPreferenceMatches = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "LocalPreferenceMatches"),
            type = "list",
            name = "LocalPreferenceMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ExactAsPathMatches = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "ExactAsPathMatches"),
            type = "list",
            name = "ExactAsPathMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MedMatches = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "MedMatches"),
            type = "list",
            name = "MedMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CommunityMatches = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "CommunityMatches"),
            type = "list",
            name = "CommunityMatches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListCoreNetworkRoutingInformationOutput = schema.new({
    id = id.from(_N, "ListCoreNetworkRoutingInformationResponse"),
    type = "structure",
    members = {
        CoreNetworkRoutingInformation = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationOutput", "CoreNetworkRoutingInformation"),
            type = "list",
            name = "CoreNetworkRoutingInformation",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkRoutingInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworkRoutingInformationOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCoreNetworksInput = schema.new({
    id = id.from(_N, "ListCoreNetworksRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListCoreNetworksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListCoreNetworksOutput = schema.new({
    id = id.from(_N, "ListCoreNetworksResponse"),
    type = "structure",
    members = {
        CoreNetworks = schema.new({
            id = id.from(_N, "ListCoreNetworksOutput", "CoreNetworks"),
            type = "list",
            name = "CoreNetworks",
            target_id = prelude.Document.id,
            list_member = M.CoreNetworkSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreNetworksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOrganizationServiceAccessStatusInput = schema.new({
    id = id.from(_N, "ListOrganizationServiceAccessStatusRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListOrganizationServiceAccessStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOrganizationServiceAccessStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.OrganizationStatus = schema.new({
    id = id.from(_N, "OrganizationStatus"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "OrganizationStatus", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        OrganizationAwsServiceAccessStatus = schema.new({
            id = id.from(_N, "OrganizationStatus", "OrganizationAwsServiceAccessStatus"),
            type = "string",
            name = "OrganizationAwsServiceAccessStatus",
            target_id = prelude.String.id,
        }),
        SLRDeploymentStatus = schema.new({
            id = id.from(_N, "OrganizationStatus", "SLRDeploymentStatus"),
            type = "string",
            name = "SLRDeploymentStatus",
            target_id = prelude.String.id,
        }),
        AccountStatusList = schema.new({
            id = id.from(_N, "OrganizationStatus", "AccountStatusList"),
            type = "list",
            name = "AccountStatusList",
            target_id = prelude.Document.id,
            list_member = M.AccountStatus,
            traits = {
                [traits.XML_NAME] = { name = "OrganizationStatus" },
            },
        }),
    },
})

M.ListOrganizationServiceAccessStatusOutput = schema.new({
    id = id.from(_N, "ListOrganizationServiceAccessStatusResponse"),
    type = "structure",
    members = {
        OrganizationStatus = schema.new({
            id = id.from(_N, "ListOrganizationServiceAccessStatusOutput", "OrganizationStatus"),
            type = "structure",
            name = "OrganizationStatus",
            target_id = id.from(_N, "OrganizationStatus"),
            target = M.OrganizationStatus,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOrganizationServiceAccessStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPeeringsInput = schema.new({
    id = id.from(_N, "ListPeeringsRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "ListPeeringsInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "coreNetworkId" },
            },
        }),
        PeeringType = schema.new({
            id = id.from(_N, "ListPeeringsInput", "PeeringType"),
            type = "string",
            name = "PeeringType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "peeringType" },
            },
        }),
        EdgeLocation = schema.new({
            id = id.from(_N, "ListPeeringsInput", "EdgeLocation"),
            type = "string",
            name = "EdgeLocation",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "edgeLocation" },
            },
        }),
        State = schema.new({
            id = id.from(_N, "ListPeeringsInput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "state" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPeeringsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPeeringsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListPeeringsOutput = schema.new({
    id = id.from(_N, "ListPeeringsResponse"),
    type = "structure",
    members = {
        Peerings = schema.new({
            id = id.from(_N, "ListPeeringsOutput", "Peerings"),
            type = "list",
            name = "Peerings",
            target_id = prelude.Document.id,
            list_member = M.Peering,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPeeringsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutAttachmentRoutingPolicyLabelInput = schema.new({
    id = id.from(_N, "PutAttachmentRoutingPolicyLabelRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "PutAttachmentRoutingPolicyLabelInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "PutAttachmentRoutingPolicyLabelInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "PutAttachmentRoutingPolicyLabelInput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "PutAttachmentRoutingPolicyLabelInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.PutAttachmentRoutingPolicyLabelOutput = schema.new({
    id = id.from(_N, "PutAttachmentRoutingPolicyLabelResponse"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "PutAttachmentRoutingPolicyLabelOutput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "PutAttachmentRoutingPolicyLabelOutput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "PutAttachmentRoutingPolicyLabelOutput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.PutCoreNetworkPolicyInput = schema.new({
    id = id.from(_N, "PutCoreNetworkPolicyRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "PutCoreNetworkPolicyInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "PutCoreNetworkPolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "PutCoreNetworkPolicyInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LatestVersionId = schema.new({
            id = id.from(_N, "PutCoreNetworkPolicyInput", "LatestVersionId"),
            type = "integer",
            name = "LatestVersionId",
            target_id = prelude.Integer.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "PutCoreNetworkPolicyInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.PutCoreNetworkPolicyOutput = schema.new({
    id = id.from(_N, "PutCoreNetworkPolicyResponse"),
    type = "structure",
    members = {
        CoreNetworkPolicy = schema.new({
            id = id.from(_N, "PutCoreNetworkPolicyOutput", "CoreNetworkPolicy"),
            type = "structure",
            name = "CoreNetworkPolicy",
            target_id = id.from(_N, "CoreNetworkPolicy"),
            target = M.CoreNetworkPolicy,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        PolicyDocument = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResponse"),
    type = "structure",
})

M.RegisterTransitGatewayInput = schema.new({
    id = id.from(_N, "RegisterTransitGatewayRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "RegisterTransitGatewayInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TransitGatewayArn = schema.new({
            id = id.from(_N, "RegisterTransitGatewayInput", "TransitGatewayArn"),
            type = "string",
            name = "TransitGatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterTransitGatewayOutput = schema.new({
    id = id.from(_N, "RegisterTransitGatewayResponse"),
    type = "structure",
    members = {
        TransitGatewayRegistration = schema.new({
            id = id.from(_N, "RegisterTransitGatewayOutput", "TransitGatewayRegistration"),
            type = "structure",
            name = "TransitGatewayRegistration",
            target_id = id.from(_N, "TransitGatewayRegistration"),
            target = M.TransitGatewayRegistration,
        }),
    },
})

M.RejectAttachmentInput = schema.new({
    id = id.from(_N, "RejectAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "RejectAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RejectAttachmentOutput = schema.new({
    id = id.from(_N, "RejectAttachmentResponse"),
    type = "structure",
    members = {
        Attachment = schema.new({
            id = id.from(_N, "RejectAttachmentOutput", "Attachment"),
            type = "structure",
            name = "Attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
    },
})

M.RemoveAttachmentRoutingPolicyLabelInput = schema.new({
    id = id.from(_N, "RemoveAttachmentRoutingPolicyLabelRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "RemoveAttachmentRoutingPolicyLabelInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "RemoveAttachmentRoutingPolicyLabelInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RemoveAttachmentRoutingPolicyLabelOutput = schema.new({
    id = id.from(_N, "RemoveAttachmentRoutingPolicyLabelResponse"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "RemoveAttachmentRoutingPolicyLabelOutput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
        }),
        AttachmentId = schema.new({
            id = id.from(_N, "RemoveAttachmentRoutingPolicyLabelOutput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
        }),
        RoutingPolicyLabel = schema.new({
            id = id.from(_N, "RemoveAttachmentRoutingPolicyLabelOutput", "RoutingPolicyLabel"),
            type = "string",
            name = "RoutingPolicyLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreCoreNetworkPolicyVersionInput = schema.new({
    id = id.from(_N, "RestoreCoreNetworkPolicyVersionRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "RestoreCoreNetworkPolicyVersionInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PolicyVersionId = schema.new({
            id = id.from(_N, "RestoreCoreNetworkPolicyVersionInput", "PolicyVersionId"),
            type = "integer",
            name = "PolicyVersionId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RestoreCoreNetworkPolicyVersionOutput = schema.new({
    id = id.from(_N, "RestoreCoreNetworkPolicyVersionResponse"),
    type = "structure",
    members = {
        CoreNetworkPolicy = schema.new({
            id = id.from(_N, "RestoreCoreNetworkPolicyVersionOutput", "CoreNetworkPolicy"),
            type = "structure",
            name = "CoreNetworkPolicy",
            target_id = id.from(_N, "CoreNetworkPolicy"),
            target = M.CoreNetworkPolicy,
        }),
    },
})

M.StartOrganizationServiceAccessUpdateInput = schema.new({
    id = id.from(_N, "StartOrganizationServiceAccessUpdateRequest"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "StartOrganizationServiceAccessUpdateInput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartOrganizationServiceAccessUpdateOutput = schema.new({
    id = id.from(_N, "StartOrganizationServiceAccessUpdateResponse"),
    type = "structure",
    members = {
        OrganizationStatus = schema.new({
            id = id.from(_N, "StartOrganizationServiceAccessUpdateOutput", "OrganizationStatus"),
            type = "structure",
            name = "OrganizationStatus",
            target_id = id.from(_N, "OrganizationStatus"),
            target = M.OrganizationStatus,
        }),
    },
})

M.RouteAnalysisEndpointOptionsSpecification = schema.new({
    id = id.from(_N, "RouteAnalysisEndpointOptionsSpecification"),
    type = "structure",
    members = {
        TransitGatewayAttachmentArn = schema.new({
            id = id.from(_N, "RouteAnalysisEndpointOptionsSpecification", "TransitGatewayAttachmentArn"),
            type = "string",
            name = "TransitGatewayAttachmentArn",
            target_id = prelude.String.id,
        }),
        IpAddress = schema.new({
            id = id.from(_N, "RouteAnalysisEndpointOptionsSpecification", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.StartRouteAnalysisInput = schema.new({
    id = id.from(_N, "StartRouteAnalysisRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "StartRouteAnalysisInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Source = schema.new({
            id = id.from(_N, "StartRouteAnalysisInput", "Source"),
            type = "structure",
            name = "Source",
            target_id = id.from(_N, "RouteAnalysisEndpointOptionsSpecification"),
            target = M.RouteAnalysisEndpointOptionsSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Destination = schema.new({
            id = id.from(_N, "StartRouteAnalysisInput", "Destination"),
            type = "structure",
            name = "Destination",
            target_id = id.from(_N, "RouteAnalysisEndpointOptionsSpecification"),
            target = M.RouteAnalysisEndpointOptionsSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncludeReturnPath = schema.new({
            id = id.from(_N, "StartRouteAnalysisInput", "IncludeReturnPath"),
            type = "boolean",
            name = "IncludeReturnPath",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        UseMiddleboxes = schema.new({
            id = id.from(_N, "StartRouteAnalysisInput", "UseMiddleboxes"),
            type = "boolean",
            name = "UseMiddleboxes",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.StartRouteAnalysisOutput = schema.new({
    id = id.from(_N, "StartRouteAnalysisResponse"),
    type = "structure",
    members = {
        RouteAnalysis = schema.new({
            id = id.from(_N, "StartRouteAnalysisOutput", "RouteAnalysis"),
            type = "structure",
            name = "RouteAnalysis",
            target_id = id.from(_N, "RouteAnalysis"),
            target = M.RouteAnalysis,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateConnectionInput = schema.new({
    id = id.from(_N, "UpdateConnectionRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectionId = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
        }),
        ConnectedLinkId = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "ConnectedLinkId"),
            type = "string",
            name = "ConnectedLinkId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectionOutput = schema.new({
    id = id.from(_N, "UpdateConnectionResponse"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.UpdateCoreNetworkInput = schema.new({
    id = id.from(_N, "UpdateCoreNetworkRequest"),
    type = "structure",
    members = {
        CoreNetworkId = schema.new({
            id = id.from(_N, "UpdateCoreNetworkInput", "CoreNetworkId"),
            type = "string",
            name = "CoreNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateCoreNetworkInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCoreNetworkOutput = schema.new({
    id = id.from(_N, "UpdateCoreNetworkResponse"),
    type = "structure",
    members = {
        CoreNetwork = schema.new({
            id = id.from(_N, "UpdateCoreNetworkOutput", "CoreNetwork"),
            type = "structure",
            name = "CoreNetwork",
            target_id = id.from(_N, "CoreNetwork"),
            target = M.CoreNetwork,
        }),
    },
})

M.UpdateDeviceInput = schema.new({
    id = id.from(_N, "UpdateDeviceRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AWSLocation = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "AWSLocation"),
            type = "structure",
            name = "AWSLocation",
            target_id = id.from(_N, "AWSLocation"),
            target = M.AWSLocation,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Vendor = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "Vendor"),
            type = "string",
            name = "Vendor",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        Location = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        SiteId = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDeviceOutput = schema.new({
    id = id.from(_N, "UpdateDeviceResponse"),
    type = "structure",
    members = {
        Device = schema.new({
            id = id.from(_N, "UpdateDeviceOutput", "Device"),
            type = "structure",
            name = "Device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
    },
})

M.UpdateDirectConnectGatewayAttachmentInput = schema.new({
    id = id.from(_N, "UpdateDirectConnectGatewayAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EdgeLocations = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayAttachmentInput", "EdgeLocations"),
            type = "list",
            name = "EdgeLocations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateDirectConnectGatewayAttachmentOutput = schema.new({
    id = id.from(_N, "UpdateDirectConnectGatewayAttachmentResponse"),
    type = "structure",
    members = {
        DirectConnectGatewayAttachment = schema.new({
            id = id.from(_N, "UpdateDirectConnectGatewayAttachmentOutput", "DirectConnectGatewayAttachment"),
            type = "structure",
            name = "DirectConnectGatewayAttachment",
            target_id = id.from(_N, "DirectConnectGatewayAttachment"),
            target = M.DirectConnectGatewayAttachment,
        }),
    },
})

M.UpdateGlobalNetworkInput = schema.new({
    id = id.from(_N, "UpdateGlobalNetworkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "UpdateGlobalNetworkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateGlobalNetworkInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGlobalNetworkOutput = schema.new({
    id = id.from(_N, "UpdateGlobalNetworkResponse"),
    type = "structure",
    members = {
        GlobalNetwork = schema.new({
            id = id.from(_N, "UpdateGlobalNetworkOutput", "GlobalNetwork"),
            type = "structure",
            name = "GlobalNetwork",
            target_id = id.from(_N, "GlobalNetwork"),
            target = M.GlobalNetwork,
        }),
    },
})

M.UpdateLinkInput = schema.new({
    id = id.from(_N, "UpdateLinkRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "UpdateLinkInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LinkId = schema.new({
            id = id.from(_N, "UpdateLinkInput", "LinkId"),
            type = "string",
            name = "LinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateLinkInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateLinkInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Bandwidth = schema.new({
            id = id.from(_N, "UpdateLinkInput", "Bandwidth"),
            type = "structure",
            name = "Bandwidth",
            target_id = id.from(_N, "Bandwidth"),
            target = M.Bandwidth,
        }),
        Provider = schema.new({
            id = id.from(_N, "UpdateLinkInput", "Provider"),
            type = "string",
            name = "Provider",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLinkOutput = schema.new({
    id = id.from(_N, "UpdateLinkResponse"),
    type = "structure",
    members = {
        Link = schema.new({
            id = id.from(_N, "UpdateLinkOutput", "Link"),
            type = "structure",
            name = "Link",
            target_id = id.from(_N, "Link"),
            target = M.Link,
        }),
    },
})

M.UpdateNetworkResourceMetadataInput = schema.new({
    id = id.from(_N, "UpdateNetworkResourceMetadataRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "UpdateNetworkResourceMetadataInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "UpdateNetworkResourceMetadataInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Metadata = schema.new({
            id = id.from(_N, "UpdateNetworkResourceMetadataInput", "Metadata"),
            type = "map",
            name = "Metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateNetworkResourceMetadataOutput = schema.new({
    id = id.from(_N, "UpdateNetworkResourceMetadataResponse"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UpdateNetworkResourceMetadataOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "UpdateNetworkResourceMetadataOutput", "Metadata"),
            type = "map",
            name = "Metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateSiteInput = schema.new({
    id = id.from(_N, "UpdateSiteRequest"),
    type = "structure",
    members = {
        GlobalNetworkId = schema.new({
            id = id.from(_N, "UpdateSiteInput", "GlobalNetworkId"),
            type = "string",
            name = "GlobalNetworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SiteId = schema.new({
            id = id.from(_N, "UpdateSiteInput", "SiteId"),
            type = "string",
            name = "SiteId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateSiteInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Location = schema.new({
            id = id.from(_N, "UpdateSiteInput", "Location"),
            type = "structure",
            name = "Location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
    },
})

M.UpdateSiteOutput = schema.new({
    id = id.from(_N, "UpdateSiteResponse"),
    type = "structure",
    members = {
        Site = schema.new({
            id = id.from(_N, "UpdateSiteOutput", "Site"),
            type = "structure",
            name = "Site",
            target_id = id.from(_N, "Site"),
            target = M.Site,
        }),
    },
})

M.UpdateVpcAttachmentInput = schema.new({
    id = id.from(_N, "UpdateVpcAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentId = schema.new({
            id = id.from(_N, "UpdateVpcAttachmentInput", "AttachmentId"),
            type = "string",
            name = "AttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AddSubnetArns = schema.new({
            id = id.from(_N, "UpdateVpcAttachmentInput", "AddSubnetArns"),
            type = "list",
            name = "AddSubnetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RemoveSubnetArns = schema.new({
            id = id.from(_N, "UpdateVpcAttachmentInput", "RemoveSubnetArns"),
            type = "list",
            name = "RemoveSubnetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Options = schema.new({
            id = id.from(_N, "UpdateVpcAttachmentInput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "VpcOptions"),
            target = M.VpcOptions,
        }),
    },
})

M.UpdateVpcAttachmentOutput = schema.new({
    id = id.from(_N, "UpdateVpcAttachmentResponse"),
    type = "structure",
    members = {
        VpcAttachment = schema.new({
            id = id.from(_N, "UpdateVpcAttachmentOutput", "VpcAttachment"),
            type = "structure",
            name = "VpcAttachment",
            target_id = id.from(_N, "VpcAttachment"),
            target = M.VpcAttachment,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
