local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.route53resolver"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.IpAddressesRequest = schema.new({ type = "list", list_member = M.IpAddressRequest })

M.ProtocolList = schema.new({ type = "list", list_member = prelude.String })

M.TargetList = schema.new({ type = "list", list_member = M.TargetAddress })

M.FirewallConfigList = schema.new({ type = "list", list_member = M.FirewallConfig })

M.FirewallDomainListMetadataList = schema.new({ type = "list", list_member = M.FirewallDomainListMetadata })

M.FirewallDomains = schema.new({ type = "list", list_member = prelude.String })

M.FirewallRuleGroupAssociations = schema.new({ type = "list", list_member = M.FirewallRuleGroupAssociation })

M.FirewallRuleGroupMetadataList = schema.new({ type = "list", list_member = M.FirewallRuleGroupMetadata })

M.FirewallRules = schema.new({ type = "list", list_member = M.FirewallRule })

M.OutpostResolverList = schema.new({ type = "list", list_member = M.OutpostResolver })

M.ResolverConfigList = schema.new({ type = "list", list_member = M.ResolverConfig })

M.Filters = schema.new({ type = "list", list_member = M.Filter })

M.ResolverDnssecConfigList = schema.new({ type = "list", list_member = M.ResolverDnssecConfig })

M.IpAddressesResponse = schema.new({ type = "list", list_member = M.IpAddressResponse })

M.ResolverEndpoints = schema.new({ type = "list", list_member = M.ResolverEndpoint })

M.ResolverQueryLogConfigAssociationList = schema.new({ type = "list", list_member = M.ResolverQueryLogConfigAssociation })

M.ResolverQueryLogConfigList = schema.new({ type = "list", list_member = M.ResolverQueryLogConfig })

M.ResolverRuleAssociations = schema.new({ type = "list", list_member = M.ResolverRuleAssociation })

M.ResolverRules = schema.new({ type = "list", list_member = M.ResolverRule })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.UpdateIpAddresses = schema.new({ type = "list", list_member = M.UpdateIpAddress })

M.FilterValues = schema.new({ type = "list", list_member = prelude.String })

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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateFirewallRuleGroupInput = schema.new({
    id = id.from(_N, "AssociateFirewallRuleGroupRequest"),
    type = "structure",
    members = {
        CreatorRequestId = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcId = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupInput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Priority = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MutationProtection = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupInput", "MutationProtection"),
            type = "string",
            name = "MutationProtection",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.FirewallRuleGroupAssociation = schema.new({
    id = id.from(_N, "FirewallRuleGroupAssociation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        MutationProtection = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "MutationProtection"),
            type = "string",
            name = "MutationProtection",
            target_id = prelude.String.id,
        }),
        ManagedOwnerName = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "ManagedOwnerName"),
            type = "string",
            name = "ManagedOwnerName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "FirewallRuleGroupAssociation", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateFirewallRuleGroupOutput = schema.new({
    id = id.from(_N, "AssociateFirewallRuleGroupResponse"),
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = schema.new({
            id = id.from(_N, "AssociateFirewallRuleGroupOutput", "FirewallRuleGroupAssociation"),
            type = "structure",
            name = "FirewallRuleGroupAssociation",
            target_id = id.from(_N, "FirewallRuleGroupAssociation"),
            target = M.FirewallRuleGroupAssociation,
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
        }),
    },
})

M.InternalServiceErrorException = schema.new({
    id = id.from(_N, "InternalServiceErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServiceErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "LimitExceededException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
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
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
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
        }),
    },
})

M.IpAddressUpdate = schema.new({
    id = id.from(_N, "IpAddressUpdate"),
    type = "structure",
    members = {
        IpId = schema.new({
            id = id.from(_N, "IpAddressUpdate", "IpId"),
            type = "string",
            name = "IpId",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "IpAddressUpdate", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        Ip = schema.new({
            id = id.from(_N, "IpAddressUpdate", "Ip"),
            type = "string",
            name = "Ip",
            target_id = prelude.String.id,
        }),
        Ipv6 = schema.new({
            id = id.from(_N, "IpAddressUpdate", "Ipv6"),
            type = "string",
            name = "Ipv6",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateResolverEndpointIpAddressInput = schema.new({
    id = id.from(_N, "AssociateResolverEndpointIpAddressRequest"),
    type = "structure",
    members = {
        ResolverEndpointId = schema.new({
            id = id.from(_N, "AssociateResolverEndpointIpAddressInput", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "AssociateResolverEndpointIpAddressInput", "IpAddress"),
            type = "structure",
            name = "IpAddress",
            target_id = id.from(_N, "IpAddressUpdate"),
            target = M.IpAddressUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolverEndpoint = schema.new({
    id = id.from(_N, "ResolverEndpoint"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResolverEndpoint", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "ResolverEndpoint", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ResolverEndpoint", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResolverEndpoint", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "ResolverEndpoint", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Direction = schema.new({
            id = id.from(_N, "ResolverEndpoint", "Direction"),
            type = "string",
            name = "Direction",
            target_id = prelude.String.id,
        }),
        IpAddressCount = schema.new({
            id = id.from(_N, "ResolverEndpoint", "IpAddressCount"),
            type = "integer",
            name = "IpAddressCount",
            target_id = prelude.Integer.id,
        }),
        HostVPCId = schema.new({
            id = id.from(_N, "ResolverEndpoint", "HostVPCId"),
            type = "string",
            name = "HostVPCId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ResolverEndpoint", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ResolverEndpoint", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ResolverEndpoint", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "ResolverEndpoint", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "ResolverEndpoint", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
        PreferredInstanceType = schema.new({
            id = id.from(_N, "ResolverEndpoint", "PreferredInstanceType"),
            type = "string",
            name = "PreferredInstanceType",
            target_id = prelude.String.id,
        }),
        ResolverEndpointType = schema.new({
            id = id.from(_N, "ResolverEndpoint", "ResolverEndpointType"),
            type = "string",
            name = "ResolverEndpointType",
            target_id = prelude.String.id,
        }),
        Protocols = schema.new({
            id = id.from(_N, "ResolverEndpoint", "Protocols"),
            type = "list",
            name = "Protocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RniEnhancedMetricsEnabled = schema.new({
            id = id.from(_N, "ResolverEndpoint", "RniEnhancedMetricsEnabled"),
            type = "boolean",
            name = "RniEnhancedMetricsEnabled",
            target_id = prelude.Boolean.id,
        }),
        TargetNameServerMetricsEnabled = schema.new({
            id = id.from(_N, "ResolverEndpoint", "TargetNameServerMetricsEnabled"),
            type = "boolean",
            name = "TargetNameServerMetricsEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AssociateResolverEndpointIpAddressOutput = schema.new({
    id = id.from(_N, "AssociateResolverEndpointIpAddressResponse"),
    type = "structure",
    members = {
        ResolverEndpoint = schema.new({
            id = id.from(_N, "AssociateResolverEndpointIpAddressOutput", "ResolverEndpoint"),
            type = "structure",
            name = "ResolverEndpoint",
            target_id = id.from(_N, "ResolverEndpoint"),
            target = M.ResolverEndpoint,
        }),
    },
})

M.InvalidParameterException = schema.new({
    id = id.from(_N, "InvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidParameterException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldName = schema.new({
            id = id.from(_N, "InvalidParameterException", "FieldName"),
            type = "string",
            name = "FieldName",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceExistsException = schema.new({
    id = id.from(_N, "ResourceExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceExistsException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateResolverQueryLogConfigInput = schema.new({
    id = id.from(_N, "AssociateResolverQueryLogConfigRequest"),
    type = "structure",
    members = {
        ResolverQueryLogConfigId = schema.new({
            id = id.from(_N, "AssociateResolverQueryLogConfigInput", "ResolverQueryLogConfigId"),
            type = "string",
            name = "ResolverQueryLogConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "AssociateResolverQueryLogConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolverQueryLogConfigAssociation = schema.new({
    id = id.from(_N, "ResolverQueryLogConfigAssociation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResolverQueryLogConfigAssociation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ResolverQueryLogConfigId = schema.new({
            id = id.from(_N, "ResolverQueryLogConfigAssociation", "ResolverQueryLogConfigId"),
            type = "string",
            name = "ResolverQueryLogConfigId",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResolverQueryLogConfigAssociation", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ResolverQueryLogConfigAssociation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Error = schema.new({
            id = id.from(_N, "ResolverQueryLogConfigAssociation", "Error"),
            type = "string",
            name = "Error",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "ResolverQueryLogConfigAssociation", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ResolverQueryLogConfigAssociation", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateResolverQueryLogConfigOutput = schema.new({
    id = id.from(_N, "AssociateResolverQueryLogConfigResponse"),
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociation = schema.new({
            id = id.from(_N, "AssociateResolverQueryLogConfigOutput", "ResolverQueryLogConfigAssociation"),
            type = "structure",
            name = "ResolverQueryLogConfigAssociation",
            target_id = id.from(_N, "ResolverQueryLogConfigAssociation"),
            target = M.ResolverQueryLogConfigAssociation,
        }),
    },
})

M.AssociateResolverRuleInput = schema.new({
    id = id.from(_N, "AssociateResolverRuleRequest"),
    type = "structure",
    members = {
        ResolverRuleId = schema.new({
            id = id.from(_N, "AssociateResolverRuleInput", "ResolverRuleId"),
            type = "string",
            name = "ResolverRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "AssociateResolverRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VPCId = schema.new({
            id = id.from(_N, "AssociateResolverRuleInput", "VPCId"),
            type = "string",
            name = "VPCId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolverRuleAssociation = schema.new({
    id = id.from(_N, "ResolverRuleAssociation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResolverRuleAssociation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ResolverRuleId = schema.new({
            id = id.from(_N, "ResolverRuleAssociation", "ResolverRuleId"),
            type = "string",
            name = "ResolverRuleId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResolverRuleAssociation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VPCId = schema.new({
            id = id.from(_N, "ResolverRuleAssociation", "VPCId"),
            type = "string",
            name = "VPCId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ResolverRuleAssociation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ResolverRuleAssociation", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateResolverRuleOutput = schema.new({
    id = id.from(_N, "AssociateResolverRuleResponse"),
    type = "structure",
    members = {
        ResolverRuleAssociation = schema.new({
            id = id.from(_N, "AssociateResolverRuleOutput", "ResolverRuleAssociation"),
            type = "structure",
            name = "ResolverRuleAssociation",
            target_id = id.from(_N, "ResolverRuleAssociation"),
            target = M.ResolverRuleAssociation,
        }),
    },
})

M.ResourceUnavailableException = schema.new({
    id = id.from(_N, "ResourceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceUnavailableException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFirewallDomainListInput = schema.new({
    id = id.from(_N, "CreateFirewallDomainListRequest"),
    type = "structure",
    members = {
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.FirewallDomainList = schema.new({
    id = id.from(_N, "FirewallDomainList"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FirewallDomainList", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "FirewallDomainList", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FirewallDomainList", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DomainCount = schema.new({
            id = id.from(_N, "FirewallDomainList", "DomainCount"),
            type = "integer",
            name = "DomainCount",
            target_id = prelude.Integer.id,
        }),
        Status = schema.new({
            id = id.from(_N, "FirewallDomainList", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "FirewallDomainList", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        ManagedOwnerName = schema.new({
            id = id.from(_N, "FirewallDomainList", "ManagedOwnerName"),
            type = "string",
            name = "ManagedOwnerName",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "FirewallDomainList", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FirewallDomainList", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "FirewallDomainList", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFirewallDomainListOutput = schema.new({
    id = id.from(_N, "CreateFirewallDomainListResponse"),
    type = "structure",
    members = {
        FirewallDomainList = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "FirewallDomainList"),
            type = "structure",
            name = "FirewallDomainList",
            target_id = id.from(_N, "FirewallDomainList"),
            target = M.FirewallDomainList,
        }),
    },
})

M.CreateFirewallRuleInput = schema.new({
    id = id.from(_N, "CreateFirewallRuleRequest"),
    type = "structure",
    members = {
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FirewallDomainListId = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BlockResponse = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "BlockResponse"),
            type = "string",
            name = "BlockResponse",
            target_id = prelude.String.id,
        }),
        BlockOverrideDomain = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "BlockOverrideDomain"),
            type = "string",
            name = "BlockOverrideDomain",
            target_id = prelude.String.id,
        }),
        BlockOverrideDnsType = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "BlockOverrideDnsType"),
            type = "string",
            name = "BlockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        BlockOverrideTtl = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "BlockOverrideTtl"),
            type = "integer",
            name = "BlockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FirewallDomainRedirectionAction = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "FirewallDomainRedirectionAction"),
            type = "string",
            name = "FirewallDomainRedirectionAction",
            target_id = prelude.String.id,
        }),
        Qtype = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "Qtype"),
            type = "string",
            name = "Qtype",
            target_id = prelude.String.id,
        }),
        DnsThreatProtection = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "DnsThreatProtection"),
            type = "string",
            name = "DnsThreatProtection",
            target_id = prelude.String.id,
        }),
        ConfidenceThreshold = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "ConfidenceThreshold"),
            type = "string",
            name = "ConfidenceThreshold",
            target_id = prelude.String.id,
        }),
    },
})

M.FirewallRule = schema.new({
    id = id.from(_N, "FirewallRule"),
    type = "structure",
    members = {
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "FirewallRule", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
        }),
        FirewallDomainListId = schema.new({
            id = id.from(_N, "FirewallRule", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
        }),
        FirewallThreatProtectionId = schema.new({
            id = id.from(_N, "FirewallRule", "FirewallThreatProtectionId"),
            type = "string",
            name = "FirewallThreatProtectionId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FirewallRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "FirewallRule", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        Action = schema.new({
            id = id.from(_N, "FirewallRule", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        BlockResponse = schema.new({
            id = id.from(_N, "FirewallRule", "BlockResponse"),
            type = "string",
            name = "BlockResponse",
            target_id = prelude.String.id,
        }),
        BlockOverrideDomain = schema.new({
            id = id.from(_N, "FirewallRule", "BlockOverrideDomain"),
            type = "string",
            name = "BlockOverrideDomain",
            target_id = prelude.String.id,
        }),
        BlockOverrideDnsType = schema.new({
            id = id.from(_N, "FirewallRule", "BlockOverrideDnsType"),
            type = "string",
            name = "BlockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        BlockOverrideTtl = schema.new({
            id = id.from(_N, "FirewallRule", "BlockOverrideTtl"),
            type = "integer",
            name = "BlockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "FirewallRule", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FirewallRule", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "FirewallRule", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
        FirewallDomainRedirectionAction = schema.new({
            id = id.from(_N, "FirewallRule", "FirewallDomainRedirectionAction"),
            type = "string",
            name = "FirewallDomainRedirectionAction",
            target_id = prelude.String.id,
        }),
        Qtype = schema.new({
            id = id.from(_N, "FirewallRule", "Qtype"),
            type = "string",
            name = "Qtype",
            target_id = prelude.String.id,
        }),
        DnsThreatProtection = schema.new({
            id = id.from(_N, "FirewallRule", "DnsThreatProtection"),
            type = "string",
            name = "DnsThreatProtection",
            target_id = prelude.String.id,
        }),
        ConfidenceThreshold = schema.new({
            id = id.from(_N, "FirewallRule", "ConfidenceThreshold"),
            type = "string",
            name = "ConfidenceThreshold",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFirewallRuleOutput = schema.new({
    id = id.from(_N, "CreateFirewallRuleResponse"),
    type = "structure",
    members = {
        FirewallRule = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "FirewallRule"),
            type = "structure",
            name = "FirewallRule",
            target_id = id.from(_N, "FirewallRule"),
            target = M.FirewallRule,
        }),
    },
})

M.CreateFirewallRuleGroupInput = schema.new({
    id = id.from(_N, "CreateFirewallRuleGroupRequest"),
    type = "structure",
    members = {
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateFirewallRuleGroupInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateFirewallRuleGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateFirewallRuleGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.FirewallRuleGroup = schema.new({
    id = id.from(_N, "FirewallRuleGroup"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        RuleCount = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "RuleCount"),
            type = "integer",
            name = "RuleCount",
            target_id = prelude.Integer.id,
        }),
        Status = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        ShareStatus = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "ShareStatus"),
            type = "string",
            name = "ShareStatus",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "FirewallRuleGroup", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFirewallRuleGroupOutput = schema.new({
    id = id.from(_N, "CreateFirewallRuleGroupResponse"),
    type = "structure",
    members = {
        FirewallRuleGroup = schema.new({
            id = id.from(_N, "CreateFirewallRuleGroupOutput", "FirewallRuleGroup"),
            type = "structure",
            name = "FirewallRuleGroup",
            target_id = id.from(_N, "FirewallRuleGroup"),
            target = M.FirewallRuleGroup,
        }),
    },
})

M.CreateOutpostResolverInput = schema.new({
    id = id.from(_N, "CreateOutpostResolverRequest"),
    type = "structure",
    members = {
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateOutpostResolverInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateOutpostResolverInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "CreateOutpostResolverInput", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
        }),
        PreferredInstanceType = schema.new({
            id = id.from(_N, "CreateOutpostResolverInput", "PreferredInstanceType"),
            type = "string",
            name = "PreferredInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "CreateOutpostResolverInput", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOutpostResolverInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.OutpostResolver = schema.new({
    id = id.from(_N, "OutpostResolver"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "OutpostResolver", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "OutpostResolver", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "OutpostResolver", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "OutpostResolver", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "OutpostResolver", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "OutpostResolver", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
        }),
        PreferredInstanceType = schema.new({
            id = id.from(_N, "OutpostResolver", "PreferredInstanceType"),
            type = "string",
            name = "PreferredInstanceType",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "OutpostResolver", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "OutpostResolver", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "OutpostResolver", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "OutpostResolver", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOutpostResolverOutput = schema.new({
    id = id.from(_N, "CreateOutpostResolverResponse"),
    type = "structure",
    members = {
        OutpostResolver = schema.new({
            id = id.from(_N, "CreateOutpostResolverOutput", "OutpostResolver"),
            type = "structure",
            name = "OutpostResolver",
            target_id = id.from(_N, "OutpostResolver"),
            target = M.OutpostResolver,
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
        }),
    },
})

M.IpAddressRequest = schema.new({
    id = id.from(_N, "IpAddressRequest"),
    type = "structure",
    members = {
        SubnetId = schema.new({
            id = id.from(_N, "IpAddressRequest", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Ip = schema.new({
            id = id.from(_N, "IpAddressRequest", "Ip"),
            type = "string",
            name = "Ip",
            target_id = prelude.String.id,
        }),
        Ipv6 = schema.new({
            id = id.from(_N, "IpAddressRequest", "Ipv6"),
            type = "string",
            name = "Ipv6",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResolverEndpointInput = schema.new({
    id = id.from(_N, "CreateResolverEndpointRequest"),
    type = "structure",
    members = {
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Direction = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "Direction"),
            type = "string",
            name = "Direction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddresses = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "IpAddresses"),
            type = "list",
            name = "IpAddresses",
            target_id = prelude.Document.id,
            list_member = M.IpAddressRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
        PreferredInstanceType = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "PreferredInstanceType"),
            type = "string",
            name = "PreferredInstanceType",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ResolverEndpointType = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "ResolverEndpointType"),
            type = "string",
            name = "ResolverEndpointType",
            target_id = prelude.String.id,
        }),
        Protocols = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "Protocols"),
            type = "list",
            name = "Protocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RniEnhancedMetricsEnabled = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "RniEnhancedMetricsEnabled"),
            type = "boolean",
            name = "RniEnhancedMetricsEnabled",
            target_id = prelude.Boolean.id,
        }),
        TargetNameServerMetricsEnabled = schema.new({
            id = id.from(_N, "CreateResolverEndpointInput", "TargetNameServerMetricsEnabled"),
            type = "boolean",
            name = "TargetNameServerMetricsEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateResolverEndpointOutput = schema.new({
    id = id.from(_N, "CreateResolverEndpointResponse"),
    type = "structure",
    members = {
        ResolverEndpoint = schema.new({
            id = id.from(_N, "CreateResolverEndpointOutput", "ResolverEndpoint"),
            type = "structure",
            name = "ResolverEndpoint",
            target_id = id.from(_N, "ResolverEndpoint"),
            target = M.ResolverEndpoint,
        }),
    },
})

M.CreateResolverQueryLogConfigInput = schema.new({
    id = id.from(_N, "CreateResolverQueryLogConfigRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateResolverQueryLogConfigInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationArn = schema.new({
            id = id.from(_N, "CreateResolverQueryLogConfigInput", "DestinationArn"),
            type = "string",
            name = "DestinationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateResolverQueryLogConfigInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateResolverQueryLogConfigInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ResolverQueryLogConfig = schema.new({
    id = id.from(_N, "ResolverQueryLogConfig"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ShareStatus = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "ShareStatus"),
            type = "string",
            name = "ShareStatus",
            target_id = prelude.String.id,
        }),
        AssociationCount = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "AssociationCount"),
            type = "integer",
            name = "AssociationCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DestinationArn = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "DestinationArn"),
            type = "string",
            name = "DestinationArn",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ResolverQueryLogConfig", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResolverQueryLogConfigOutput = schema.new({
    id = id.from(_N, "CreateResolverQueryLogConfigResponse"),
    type = "structure",
    members = {
        ResolverQueryLogConfig = schema.new({
            id = id.from(_N, "CreateResolverQueryLogConfigOutput", "ResolverQueryLogConfig"),
            type = "structure",
            name = "ResolverQueryLogConfig",
            target_id = id.from(_N, "ResolverQueryLogConfig"),
            target = M.ResolverQueryLogConfig,
        }),
    },
})

M.TargetAddress = schema.new({
    id = id.from(_N, "TargetAddress"),
    type = "structure",
    members = {
        Ip = schema.new({
            id = id.from(_N, "TargetAddress", "Ip"),
            type = "string",
            name = "Ip",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "TargetAddress", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        Ipv6 = schema.new({
            id = id.from(_N, "TargetAddress", "Ipv6"),
            type = "string",
            name = "Ipv6",
            target_id = prelude.String.id,
        }),
        Protocol = schema.new({
            id = id.from(_N, "TargetAddress", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
        ServerNameIndication = schema.new({
            id = id.from(_N, "TargetAddress", "ServerNameIndication"),
            type = "string",
            name = "ServerNameIndication",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResolverRuleInput = schema.new({
    id = id.from(_N, "CreateResolverRuleRequest"),
    type = "structure",
    members = {
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        RuleType = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "RuleType"),
            type = "string",
            name = "RuleType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
        TargetIps = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "TargetIps"),
            type = "list",
            name = "TargetIps",
            target_id = prelude.Document.id,
            list_member = M.TargetAddress,
        }),
        ResolverEndpointId = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        DelegationRecord = schema.new({
            id = id.from(_N, "CreateResolverRuleInput", "DelegationRecord"),
            type = "string",
            name = "DelegationRecord",
            target_id = prelude.String.id,
        }),
    },
})

M.ResolverRule = schema.new({
    id = id.from(_N, "ResolverRule"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResolverRule", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "ResolverRule", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ResolverRule", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        DomainName = schema.new({
            id = id.from(_N, "ResolverRule", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ResolverRule", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ResolverRule", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        RuleType = schema.new({
            id = id.from(_N, "ResolverRule", "RuleType"),
            type = "string",
            name = "RuleType",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResolverRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        TargetIps = schema.new({
            id = id.from(_N, "ResolverRule", "TargetIps"),
            type = "list",
            name = "TargetIps",
            target_id = prelude.Document.id,
            list_member = M.TargetAddress,
        }),
        ResolverEndpointId = schema.new({
            id = id.from(_N, "ResolverRule", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "ResolverRule", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        ShareStatus = schema.new({
            id = id.from(_N, "ResolverRule", "ShareStatus"),
            type = "string",
            name = "ShareStatus",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ResolverRule", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "ResolverRule", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
        DelegationRecord = schema.new({
            id = id.from(_N, "ResolverRule", "DelegationRecord"),
            type = "string",
            name = "DelegationRecord",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResolverRuleOutput = schema.new({
    id = id.from(_N, "CreateResolverRuleResponse"),
    type = "structure",
    members = {
        ResolverRule = schema.new({
            id = id.from(_N, "CreateResolverRuleOutput", "ResolverRule"),
            type = "structure",
            name = "ResolverRule",
            target_id = id.from(_N, "ResolverRule"),
            target = M.ResolverRule,
        }),
    },
})

M.DeleteFirewallDomainListInput = schema.new({
    id = id.from(_N, "DeleteFirewallDomainListRequest"),
    type = "structure",
    members = {
        FirewallDomainListId = schema.new({
            id = id.from(_N, "DeleteFirewallDomainListInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFirewallDomainListOutput = schema.new({
    id = id.from(_N, "DeleteFirewallDomainListResponse"),
    type = "structure",
    members = {
        FirewallDomainList = schema.new({
            id = id.from(_N, "DeleteFirewallDomainListOutput", "FirewallDomainList"),
            type = "structure",
            name = "FirewallDomainList",
            target_id = id.from(_N, "FirewallDomainList"),
            target = M.FirewallDomainList,
        }),
    },
})

M.DeleteFirewallRuleInput = schema.new({
    id = id.from(_N, "DeleteFirewallRuleRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "DeleteFirewallRuleInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FirewallDomainListId = schema.new({
            id = id.from(_N, "DeleteFirewallRuleInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
        }),
        FirewallThreatProtectionId = schema.new({
            id = id.from(_N, "DeleteFirewallRuleInput", "FirewallThreatProtectionId"),
            type = "string",
            name = "FirewallThreatProtectionId",
            target_id = prelude.String.id,
        }),
        Qtype = schema.new({
            id = id.from(_N, "DeleteFirewallRuleInput", "Qtype"),
            type = "string",
            name = "Qtype",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFirewallRuleOutput = schema.new({
    id = id.from(_N, "DeleteFirewallRuleResponse"),
    type = "structure",
    members = {
        FirewallRule = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "FirewallRule"),
            type = "structure",
            name = "FirewallRule",
            target_id = id.from(_N, "FirewallRule"),
            target = M.FirewallRule,
        }),
    },
})

M.DeleteFirewallRuleGroupInput = schema.new({
    id = id.from(_N, "DeleteFirewallRuleGroupRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "DeleteFirewallRuleGroupInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFirewallRuleGroupOutput = schema.new({
    id = id.from(_N, "DeleteFirewallRuleGroupResponse"),
    type = "structure",
    members = {
        FirewallRuleGroup = schema.new({
            id = id.from(_N, "DeleteFirewallRuleGroupOutput", "FirewallRuleGroup"),
            type = "structure",
            name = "FirewallRuleGroup",
            target_id = id.from(_N, "FirewallRuleGroup"),
            target = M.FirewallRuleGroup,
        }),
    },
})

M.DeleteOutpostResolverInput = schema.new({
    id = id.from(_N, "DeleteOutpostResolverRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteOutpostResolverInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOutpostResolverOutput = schema.new({
    id = id.from(_N, "DeleteOutpostResolverResponse"),
    type = "structure",
    members = {
        OutpostResolver = schema.new({
            id = id.from(_N, "DeleteOutpostResolverOutput", "OutpostResolver"),
            type = "structure",
            name = "OutpostResolver",
            target_id = id.from(_N, "OutpostResolver"),
            target = M.OutpostResolver,
        }),
    },
})

M.DeleteResolverEndpointInput = schema.new({
    id = id.from(_N, "DeleteResolverEndpointRequest"),
    type = "structure",
    members = {
        ResolverEndpointId = schema.new({
            id = id.from(_N, "DeleteResolverEndpointInput", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResolverEndpointOutput = schema.new({
    id = id.from(_N, "DeleteResolverEndpointResponse"),
    type = "structure",
    members = {
        ResolverEndpoint = schema.new({
            id = id.from(_N, "DeleteResolverEndpointOutput", "ResolverEndpoint"),
            type = "structure",
            name = "ResolverEndpoint",
            target_id = id.from(_N, "ResolverEndpoint"),
            target = M.ResolverEndpoint,
        }),
    },
})

M.DeleteResolverQueryLogConfigInput = schema.new({
    id = id.from(_N, "DeleteResolverQueryLogConfigRequest"),
    type = "structure",
    members = {
        ResolverQueryLogConfigId = schema.new({
            id = id.from(_N, "DeleteResolverQueryLogConfigInput", "ResolverQueryLogConfigId"),
            type = "string",
            name = "ResolverQueryLogConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResolverQueryLogConfigOutput = schema.new({
    id = id.from(_N, "DeleteResolverQueryLogConfigResponse"),
    type = "structure",
    members = {
        ResolverQueryLogConfig = schema.new({
            id = id.from(_N, "DeleteResolverQueryLogConfigOutput", "ResolverQueryLogConfig"),
            type = "structure",
            name = "ResolverQueryLogConfig",
            target_id = id.from(_N, "ResolverQueryLogConfig"),
            target = M.ResolverQueryLogConfig,
        }),
    },
})

M.DeleteResolverRuleInput = schema.new({
    id = id.from(_N, "DeleteResolverRuleRequest"),
    type = "structure",
    members = {
        ResolverRuleId = schema.new({
            id = id.from(_N, "DeleteResolverRuleInput", "ResolverRuleId"),
            type = "string",
            name = "ResolverRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResolverRuleOutput = schema.new({
    id = id.from(_N, "DeleteResolverRuleResponse"),
    type = "structure",
    members = {
        ResolverRule = schema.new({
            id = id.from(_N, "DeleteResolverRuleOutput", "ResolverRule"),
            type = "structure",
            name = "ResolverRule",
            target_id = id.from(_N, "ResolverRule"),
            target = M.ResolverRule,
        }),
    },
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceInUseException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateFirewallRuleGroupInput = schema.new({
    id = id.from(_N, "DisassociateFirewallRuleGroupRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupAssociationId = schema.new({
            id = id.from(_N, "DisassociateFirewallRuleGroupInput", "FirewallRuleGroupAssociationId"),
            type = "string",
            name = "FirewallRuleGroupAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateFirewallRuleGroupOutput = schema.new({
    id = id.from(_N, "DisassociateFirewallRuleGroupResponse"),
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = schema.new({
            id = id.from(_N, "DisassociateFirewallRuleGroupOutput", "FirewallRuleGroupAssociation"),
            type = "structure",
            name = "FirewallRuleGroupAssociation",
            target_id = id.from(_N, "FirewallRuleGroupAssociation"),
            target = M.FirewallRuleGroupAssociation,
        }),
    },
})

M.DisassociateResolverEndpointIpAddressInput = schema.new({
    id = id.from(_N, "DisassociateResolverEndpointIpAddressRequest"),
    type = "structure",
    members = {
        ResolverEndpointId = schema.new({
            id = id.from(_N, "DisassociateResolverEndpointIpAddressInput", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "DisassociateResolverEndpointIpAddressInput", "IpAddress"),
            type = "structure",
            name = "IpAddress",
            target_id = id.from(_N, "IpAddressUpdate"),
            target = M.IpAddressUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateResolverEndpointIpAddressOutput = schema.new({
    id = id.from(_N, "DisassociateResolverEndpointIpAddressResponse"),
    type = "structure",
    members = {
        ResolverEndpoint = schema.new({
            id = id.from(_N, "DisassociateResolverEndpointIpAddressOutput", "ResolverEndpoint"),
            type = "structure",
            name = "ResolverEndpoint",
            target_id = id.from(_N, "ResolverEndpoint"),
            target = M.ResolverEndpoint,
        }),
    },
})

M.DisassociateResolverQueryLogConfigInput = schema.new({
    id = id.from(_N, "DisassociateResolverQueryLogConfigRequest"),
    type = "structure",
    members = {
        ResolverQueryLogConfigId = schema.new({
            id = id.from(_N, "DisassociateResolverQueryLogConfigInput", "ResolverQueryLogConfigId"),
            type = "string",
            name = "ResolverQueryLogConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DisassociateResolverQueryLogConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateResolverQueryLogConfigOutput = schema.new({
    id = id.from(_N, "DisassociateResolverQueryLogConfigResponse"),
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociation = schema.new({
            id = id.from(_N, "DisassociateResolverQueryLogConfigOutput", "ResolverQueryLogConfigAssociation"),
            type = "structure",
            name = "ResolverQueryLogConfigAssociation",
            target_id = id.from(_N, "ResolverQueryLogConfigAssociation"),
            target = M.ResolverQueryLogConfigAssociation,
        }),
    },
})

M.DisassociateResolverRuleInput = schema.new({
    id = id.from(_N, "DisassociateResolverRuleRequest"),
    type = "structure",
    members = {
        VPCId = schema.new({
            id = id.from(_N, "DisassociateResolverRuleInput", "VPCId"),
            type = "string",
            name = "VPCId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResolverRuleId = schema.new({
            id = id.from(_N, "DisassociateResolverRuleInput", "ResolverRuleId"),
            type = "string",
            name = "ResolverRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateResolverRuleOutput = schema.new({
    id = id.from(_N, "DisassociateResolverRuleResponse"),
    type = "structure",
    members = {
        ResolverRuleAssociation = schema.new({
            id = id.from(_N, "DisassociateResolverRuleOutput", "ResolverRuleAssociation"),
            type = "structure",
            name = "ResolverRuleAssociation",
            target_id = id.from(_N, "ResolverRuleAssociation"),
            target = M.ResolverRuleAssociation,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "Filter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.FirewallConfig = schema.new({
    id = id.from(_N, "FirewallConfig"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FirewallConfig", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "FirewallConfig", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "FirewallConfig", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        FirewallFailOpen = schema.new({
            id = id.from(_N, "FirewallConfig", "FirewallFailOpen"),
            type = "string",
            name = "FirewallFailOpen",
            target_id = prelude.String.id,
        }),
    },
})

M.FirewallDomainListMetadata = schema.new({
    id = id.from(_N, "FirewallDomainListMetadata"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FirewallDomainListMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "FirewallDomainListMetadata", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FirewallDomainListMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "FirewallDomainListMetadata", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        ManagedOwnerName = schema.new({
            id = id.from(_N, "FirewallDomainListMetadata", "ManagedOwnerName"),
            type = "string",
            name = "ManagedOwnerName",
            target_id = prelude.String.id,
        }),
    },
})

M.FirewallRuleGroupMetadata = schema.new({
    id = id.from(_N, "FirewallRuleGroupMetadata"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FirewallRuleGroupMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "FirewallRuleGroupMetadata", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FirewallRuleGroupMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "FirewallRuleGroupMetadata", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "FirewallRuleGroupMetadata", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
        }),
        ShareStatus = schema.new({
            id = id.from(_N, "FirewallRuleGroupMetadata", "ShareStatus"),
            type = "string",
            name = "ShareStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetFirewallConfigInput = schema.new({
    id = id.from(_N, "GetFirewallConfigRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "GetFirewallConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFirewallConfigOutput = schema.new({
    id = id.from(_N, "GetFirewallConfigResponse"),
    type = "structure",
    members = {
        FirewallConfig = schema.new({
            id = id.from(_N, "GetFirewallConfigOutput", "FirewallConfig"),
            type = "structure",
            name = "FirewallConfig",
            target_id = id.from(_N, "FirewallConfig"),
            target = M.FirewallConfig,
        }),
    },
})

M.GetFirewallDomainListInput = schema.new({
    id = id.from(_N, "GetFirewallDomainListRequest"),
    type = "structure",
    members = {
        FirewallDomainListId = schema.new({
            id = id.from(_N, "GetFirewallDomainListInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFirewallDomainListOutput = schema.new({
    id = id.from(_N, "GetFirewallDomainListResponse"),
    type = "structure",
    members = {
        FirewallDomainList = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "FirewallDomainList"),
            type = "structure",
            name = "FirewallDomainList",
            target_id = id.from(_N, "FirewallDomainList"),
            target = M.FirewallDomainList,
        }),
    },
})

M.GetFirewallRuleGroupInput = schema.new({
    id = id.from(_N, "GetFirewallRuleGroupRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "GetFirewallRuleGroupInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFirewallRuleGroupOutput = schema.new({
    id = id.from(_N, "GetFirewallRuleGroupResponse"),
    type = "structure",
    members = {
        FirewallRuleGroup = schema.new({
            id = id.from(_N, "GetFirewallRuleGroupOutput", "FirewallRuleGroup"),
            type = "structure",
            name = "FirewallRuleGroup",
            target_id = id.from(_N, "FirewallRuleGroup"),
            target = M.FirewallRuleGroup,
        }),
    },
})

M.GetFirewallRuleGroupAssociationInput = schema.new({
    id = id.from(_N, "GetFirewallRuleGroupAssociationRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupAssociationId = schema.new({
            id = id.from(_N, "GetFirewallRuleGroupAssociationInput", "FirewallRuleGroupAssociationId"),
            type = "string",
            name = "FirewallRuleGroupAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFirewallRuleGroupAssociationOutput = schema.new({
    id = id.from(_N, "GetFirewallRuleGroupAssociationResponse"),
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = schema.new({
            id = id.from(_N, "GetFirewallRuleGroupAssociationOutput", "FirewallRuleGroupAssociation"),
            type = "structure",
            name = "FirewallRuleGroupAssociation",
            target_id = id.from(_N, "FirewallRuleGroupAssociation"),
            target = M.FirewallRuleGroupAssociation,
        }),
    },
})

M.GetFirewallRuleGroupPolicyInput = schema.new({
    id = id.from(_N, "GetFirewallRuleGroupPolicyRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetFirewallRuleGroupPolicyInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFirewallRuleGroupPolicyOutput = schema.new({
    id = id.from(_N, "GetFirewallRuleGroupPolicyResponse"),
    type = "structure",
    members = {
        FirewallRuleGroupPolicy = schema.new({
            id = id.from(_N, "GetFirewallRuleGroupPolicyOutput", "FirewallRuleGroupPolicy"),
            type = "string",
            name = "FirewallRuleGroupPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOutpostResolverInput = schema.new({
    id = id.from(_N, "GetOutpostResolverRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetOutpostResolverInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetOutpostResolverOutput = schema.new({
    id = id.from(_N, "GetOutpostResolverResponse"),
    type = "structure",
    members = {
        OutpostResolver = schema.new({
            id = id.from(_N, "GetOutpostResolverOutput", "OutpostResolver"),
            type = "structure",
            name = "OutpostResolver",
            target_id = id.from(_N, "OutpostResolver"),
            target = M.OutpostResolver,
        }),
    },
})

M.GetResolverConfigInput = schema.new({
    id = id.from(_N, "GetResolverConfigRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "GetResolverConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolverConfig = schema.new({
    id = id.from(_N, "ResolverConfig"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResolverConfig", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResolverConfig", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "ResolverConfig", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        AutodefinedReverse = schema.new({
            id = id.from(_N, "ResolverConfig", "AutodefinedReverse"),
            type = "string",
            name = "AutodefinedReverse",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResolverConfigOutput = schema.new({
    id = id.from(_N, "GetResolverConfigResponse"),
    type = "structure",
    members = {
        ResolverConfig = schema.new({
            id = id.from(_N, "GetResolverConfigOutput", "ResolverConfig"),
            type = "structure",
            name = "ResolverConfig",
            target_id = id.from(_N, "ResolverConfig"),
            target = M.ResolverConfig,
        }),
    },
})

M.GetResolverDnssecConfigInput = schema.new({
    id = id.from(_N, "GetResolverDnssecConfigRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "GetResolverDnssecConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolverDnssecConfig = schema.new({
    id = id.from(_N, "ResolverDnssecConfig"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResolverDnssecConfig", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "ResolverDnssecConfig", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResolverDnssecConfig", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ValidationStatus = schema.new({
            id = id.from(_N, "ResolverDnssecConfig", "ValidationStatus"),
            type = "string",
            name = "ValidationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResolverDnssecConfigOutput = schema.new({
    id = id.from(_N, "GetResolverDnssecConfigResponse"),
    type = "structure",
    members = {
        ResolverDNSSECConfig = schema.new({
            id = id.from(_N, "GetResolverDnssecConfigOutput", "ResolverDNSSECConfig"),
            type = "structure",
            name = "ResolverDNSSECConfig",
            target_id = id.from(_N, "ResolverDnssecConfig"),
            target = M.ResolverDnssecConfig,
        }),
    },
})

M.GetResolverEndpointInput = schema.new({
    id = id.from(_N, "GetResolverEndpointRequest"),
    type = "structure",
    members = {
        ResolverEndpointId = schema.new({
            id = id.from(_N, "GetResolverEndpointInput", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResolverEndpointOutput = schema.new({
    id = id.from(_N, "GetResolverEndpointResponse"),
    type = "structure",
    members = {
        ResolverEndpoint = schema.new({
            id = id.from(_N, "GetResolverEndpointOutput", "ResolverEndpoint"),
            type = "structure",
            name = "ResolverEndpoint",
            target_id = id.from(_N, "ResolverEndpoint"),
            target = M.ResolverEndpoint,
        }),
    },
})

M.GetResolverQueryLogConfigInput = schema.new({
    id = id.from(_N, "GetResolverQueryLogConfigRequest"),
    type = "structure",
    members = {
        ResolverQueryLogConfigId = schema.new({
            id = id.from(_N, "GetResolverQueryLogConfigInput", "ResolverQueryLogConfigId"),
            type = "string",
            name = "ResolverQueryLogConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResolverQueryLogConfigOutput = schema.new({
    id = id.from(_N, "GetResolverQueryLogConfigResponse"),
    type = "structure",
    members = {
        ResolverQueryLogConfig = schema.new({
            id = id.from(_N, "GetResolverQueryLogConfigOutput", "ResolverQueryLogConfig"),
            type = "structure",
            name = "ResolverQueryLogConfig",
            target_id = id.from(_N, "ResolverQueryLogConfig"),
            target = M.ResolverQueryLogConfig,
        }),
    },
})

M.GetResolverQueryLogConfigAssociationInput = schema.new({
    id = id.from(_N, "GetResolverQueryLogConfigAssociationRequest"),
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociationId = schema.new({
            id = id.from(_N, "GetResolverQueryLogConfigAssociationInput", "ResolverQueryLogConfigAssociationId"),
            type = "string",
            name = "ResolverQueryLogConfigAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResolverQueryLogConfigAssociationOutput = schema.new({
    id = id.from(_N, "GetResolverQueryLogConfigAssociationResponse"),
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociation = schema.new({
            id = id.from(_N, "GetResolverQueryLogConfigAssociationOutput", "ResolverQueryLogConfigAssociation"),
            type = "structure",
            name = "ResolverQueryLogConfigAssociation",
            target_id = id.from(_N, "ResolverQueryLogConfigAssociation"),
            target = M.ResolverQueryLogConfigAssociation,
        }),
    },
})

M.GetResolverQueryLogConfigPolicyInput = schema.new({
    id = id.from(_N, "GetResolverQueryLogConfigPolicyRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetResolverQueryLogConfigPolicyInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResolverQueryLogConfigPolicyOutput = schema.new({
    id = id.from(_N, "GetResolverQueryLogConfigPolicyResponse"),
    type = "structure",
    members = {
        ResolverQueryLogConfigPolicy = schema.new({
            id = id.from(_N, "GetResolverQueryLogConfigPolicyOutput", "ResolverQueryLogConfigPolicy"),
            type = "string",
            name = "ResolverQueryLogConfigPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.UnknownResourceException = schema.new({
    id = id.from(_N, "UnknownResourceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnknownResourceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResolverRuleInput = schema.new({
    id = id.from(_N, "GetResolverRuleRequest"),
    type = "structure",
    members = {
        ResolverRuleId = schema.new({
            id = id.from(_N, "GetResolverRuleInput", "ResolverRuleId"),
            type = "string",
            name = "ResolverRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResolverRuleOutput = schema.new({
    id = id.from(_N, "GetResolverRuleResponse"),
    type = "structure",
    members = {
        ResolverRule = schema.new({
            id = id.from(_N, "GetResolverRuleOutput", "ResolverRule"),
            type = "structure",
            name = "ResolverRule",
            target_id = id.from(_N, "ResolverRule"),
            target = M.ResolverRule,
        }),
    },
})

M.GetResolverRuleAssociationInput = schema.new({
    id = id.from(_N, "GetResolverRuleAssociationRequest"),
    type = "structure",
    members = {
        ResolverRuleAssociationId = schema.new({
            id = id.from(_N, "GetResolverRuleAssociationInput", "ResolverRuleAssociationId"),
            type = "string",
            name = "ResolverRuleAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResolverRuleAssociationOutput = schema.new({
    id = id.from(_N, "GetResolverRuleAssociationResponse"),
    type = "structure",
    members = {
        ResolverRuleAssociation = schema.new({
            id = id.from(_N, "GetResolverRuleAssociationOutput", "ResolverRuleAssociation"),
            type = "structure",
            name = "ResolverRuleAssociation",
            target_id = id.from(_N, "ResolverRuleAssociation"),
            target = M.ResolverRuleAssociation,
        }),
    },
})

M.GetResolverRulePolicyInput = schema.new({
    id = id.from(_N, "GetResolverRulePolicyRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetResolverRulePolicyInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResolverRulePolicyOutput = schema.new({
    id = id.from(_N, "GetResolverRulePolicyResponse"),
    type = "structure",
    members = {
        ResolverRulePolicy = schema.new({
            id = id.from(_N, "GetResolverRulePolicyOutput", "ResolverRulePolicy"),
            type = "string",
            name = "ResolverRulePolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportFirewallDomainsInput = schema.new({
    id = id.from(_N, "ImportFirewallDomainsRequest"),
    type = "structure",
    members = {
        FirewallDomainListId = schema.new({
            id = id.from(_N, "ImportFirewallDomainsInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operation = schema.new({
            id = id.from(_N, "ImportFirewallDomainsInput", "Operation"),
            type = "string",
            name = "Operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainFileUrl = schema.new({
            id = id.from(_N, "ImportFirewallDomainsInput", "DomainFileUrl"),
            type = "string",
            name = "DomainFileUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportFirewallDomainsOutput = schema.new({
    id = id.from(_N, "ImportFirewallDomainsResponse"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ImportFirewallDomainsOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ImportFirewallDomainsOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ImportFirewallDomainsOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ImportFirewallDomainsOutput", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPolicyDocument = schema.new({
    id = id.from(_N, "InvalidPolicyDocument"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidPolicyDocument", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTagException = schema.new({
    id = id.from(_N, "InvalidTagException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTagException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.IpAddressResponse = schema.new({
    id = id.from(_N, "IpAddressResponse"),
    type = "structure",
    members = {
        IpId = schema.new({
            id = id.from(_N, "IpAddressResponse", "IpId"),
            type = "string",
            name = "IpId",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "IpAddressResponse", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        Ip = schema.new({
            id = id.from(_N, "IpAddressResponse", "Ip"),
            type = "string",
            name = "Ip",
            target_id = prelude.String.id,
        }),
        Ipv6 = schema.new({
            id = id.from(_N, "IpAddressResponse", "Ipv6"),
            type = "string",
            name = "Ipv6",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "IpAddressResponse", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "IpAddressResponse", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "IpAddressResponse", "CreationTime"),
            type = "string",
            name = "CreationTime",
            target_id = prelude.String.id,
        }),
        ModificationTime = schema.new({
            id = id.from(_N, "IpAddressResponse", "ModificationTime"),
            type = "string",
            name = "ModificationTime",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFirewallConfigsInput = schema.new({
    id = id.from(_N, "ListFirewallConfigsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListFirewallConfigsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallConfigsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFirewallConfigsOutput = schema.new({
    id = id.from(_N, "ListFirewallConfigsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallConfigsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        FirewallConfigs = schema.new({
            id = id.from(_N, "ListFirewallConfigsOutput", "FirewallConfigs"),
            type = "list",
            name = "FirewallConfigs",
            target_id = prelude.Document.id,
            list_member = M.FirewallConfig,
        }),
    },
})

M.ListFirewallDomainListsInput = schema.new({
    id = id.from(_N, "ListFirewallDomainListsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListFirewallDomainListsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainListsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFirewallDomainListsOutput = schema.new({
    id = id.from(_N, "ListFirewallDomainListsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainListsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        FirewallDomainLists = schema.new({
            id = id.from(_N, "ListFirewallDomainListsOutput", "FirewallDomainLists"),
            type = "list",
            name = "FirewallDomainLists",
            target_id = prelude.Document.id,
            list_member = M.FirewallDomainListMetadata,
        }),
    },
})

M.ListFirewallDomainsInput = schema.new({
    id = id.from(_N, "ListFirewallDomainsRequest"),
    type = "structure",
    members = {
        FirewallDomainListId = schema.new({
            id = id.from(_N, "ListFirewallDomainsInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFirewallDomainsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFirewallDomainsOutput = schema.new({
    id = id.from(_N, "ListFirewallDomainsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Domains = schema.new({
            id = id.from(_N, "ListFirewallDomainsOutput", "Domains"),
            type = "list",
            name = "Domains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListFirewallRuleGroupAssociationsInput = schema.new({
    id = id.from(_N, "ListFirewallRuleGroupAssociationsRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsInput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFirewallRuleGroupAssociationsOutput = schema.new({
    id = id.from(_N, "ListFirewallRuleGroupAssociationsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        FirewallRuleGroupAssociations = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupAssociationsOutput", "FirewallRuleGroupAssociations"),
            type = "list",
            name = "FirewallRuleGroupAssociations",
            target_id = prelude.Document.id,
            list_member = M.FirewallRuleGroupAssociation,
        }),
    },
})

M.ListFirewallRuleGroupsInput = schema.new({
    id = id.from(_N, "ListFirewallRuleGroupsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFirewallRuleGroupsOutput = schema.new({
    id = id.from(_N, "ListFirewallRuleGroupsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        FirewallRuleGroups = schema.new({
            id = id.from(_N, "ListFirewallRuleGroupsOutput", "FirewallRuleGroups"),
            type = "list",
            name = "FirewallRuleGroups",
            target_id = prelude.Document.id,
            list_member = M.FirewallRuleGroupMetadata,
        }),
    },
})

M.ListFirewallRulesInput = schema.new({
    id = id.from(_N, "ListFirewallRulesRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Priority = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        Action = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFirewallRulesOutput = schema.new({
    id = id.from(_N, "ListFirewallRulesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFirewallRulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        FirewallRules = schema.new({
            id = id.from(_N, "ListFirewallRulesOutput", "FirewallRules"),
            type = "list",
            name = "FirewallRules",
            target_id = prelude.Document.id,
            list_member = M.FirewallRule,
        }),
    },
})

M.ListOutpostResolversInput = schema.new({
    id = id.from(_N, "ListOutpostResolversRequest"),
    type = "structure",
    members = {
        OutpostArn = schema.new({
            id = id.from(_N, "ListOutpostResolversInput", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOutpostResolversInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOutpostResolversInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOutpostResolversOutput = schema.new({
    id = id.from(_N, "ListOutpostResolversResponse"),
    type = "structure",
    members = {
        OutpostResolvers = schema.new({
            id = id.from(_N, "ListOutpostResolversOutput", "OutpostResolvers"),
            type = "list",
            name = "OutpostResolvers",
            target_id = prelude.Document.id,
            list_member = M.OutpostResolver,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOutpostResolversOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResolverConfigsInput = schema.new({
    id = id.from(_N, "ListResolverConfigsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverConfigsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverConfigsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResolverConfigsOutput = schema.new({
    id = id.from(_N, "ListResolverConfigsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverConfigsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ResolverConfigs = schema.new({
            id = id.from(_N, "ListResolverConfigsOutput", "ResolverConfigs"),
            type = "list",
            name = "ResolverConfigs",
            target_id = prelude.Document.id,
            list_member = M.ResolverConfig,
        }),
    },
})

M.ListResolverDnssecConfigsInput = schema.new({
    id = id.from(_N, "ListResolverDnssecConfigsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverDnssecConfigsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverDnssecConfigsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListResolverDnssecConfigsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.ListResolverDnssecConfigsOutput = schema.new({
    id = id.from(_N, "ListResolverDnssecConfigsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverDnssecConfigsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ResolverDnssecConfigs = schema.new({
            id = id.from(_N, "ListResolverDnssecConfigsOutput", "ResolverDnssecConfigs"),
            type = "list",
            name = "ResolverDnssecConfigs",
            target_id = prelude.Document.id,
            list_member = M.ResolverDnssecConfig,
        }),
    },
})

M.ListResolverEndpointIpAddressesInput = schema.new({
    id = id.from(_N, "ListResolverEndpointIpAddressesRequest"),
    type = "structure",
    members = {
        ResolverEndpointId = schema.new({
            id = id.from(_N, "ListResolverEndpointIpAddressesInput", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverEndpointIpAddressesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverEndpointIpAddressesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResolverEndpointIpAddressesOutput = schema.new({
    id = id.from(_N, "ListResolverEndpointIpAddressesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverEndpointIpAddressesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverEndpointIpAddressesOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        IpAddresses = schema.new({
            id = id.from(_N, "ListResolverEndpointIpAddressesOutput", "IpAddresses"),
            type = "list",
            name = "IpAddresses",
            target_id = prelude.Document.id,
            list_member = M.IpAddressResponse,
        }),
    },
})

M.ListResolverEndpointsInput = schema.new({
    id = id.from(_N, "ListResolverEndpointsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverEndpointsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverEndpointsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListResolverEndpointsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.ListResolverEndpointsOutput = schema.new({
    id = id.from(_N, "ListResolverEndpointsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverEndpointsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverEndpointsOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        ResolverEndpoints = schema.new({
            id = id.from(_N, "ListResolverEndpointsOutput", "ResolverEndpoints"),
            type = "list",
            name = "ResolverEndpoints",
            target_id = prelude.Document.id,
            list_member = M.ResolverEndpoint,
        }),
    },
})

M.ListResolverQueryLogConfigAssociationsInput = schema.new({
    id = id.from(_N, "ListResolverQueryLogConfigAssociationsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        SortBy = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResolverQueryLogConfigAssociationsOutput = schema.new({
    id = id.from(_N, "ListResolverQueryLogConfigAssociationsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        TotalCount = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsOutput", "TotalCount"),
            type = "integer",
            name = "TotalCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TotalFilteredCount = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsOutput", "TotalFilteredCount"),
            type = "integer",
            name = "TotalFilteredCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ResolverQueryLogConfigAssociations = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigAssociationsOutput", "ResolverQueryLogConfigAssociations"),
            type = "list",
            name = "ResolverQueryLogConfigAssociations",
            target_id = prelude.Document.id,
            list_member = M.ResolverQueryLogConfigAssociation,
        }),
    },
})

M.ListResolverQueryLogConfigsInput = schema.new({
    id = id.from(_N, "ListResolverQueryLogConfigsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        SortBy = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResolverQueryLogConfigsOutput = schema.new({
    id = id.from(_N, "ListResolverQueryLogConfigsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        TotalCount = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsOutput", "TotalCount"),
            type = "integer",
            name = "TotalCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TotalFilteredCount = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsOutput", "TotalFilteredCount"),
            type = "integer",
            name = "TotalFilteredCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ResolverQueryLogConfigs = schema.new({
            id = id.from(_N, "ListResolverQueryLogConfigsOutput", "ResolverQueryLogConfigs"),
            type = "list",
            name = "ResolverQueryLogConfigs",
            target_id = prelude.Document.id,
            list_member = M.ResolverQueryLogConfig,
        }),
    },
})

M.ListResolverRuleAssociationsInput = schema.new({
    id = id.from(_N, "ListResolverRuleAssociationsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverRuleAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverRuleAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListResolverRuleAssociationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.ListResolverRuleAssociationsOutput = schema.new({
    id = id.from(_N, "ListResolverRuleAssociationsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverRuleAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverRuleAssociationsOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        ResolverRuleAssociations = schema.new({
            id = id.from(_N, "ListResolverRuleAssociationsOutput", "ResolverRuleAssociations"),
            type = "list",
            name = "ResolverRuleAssociations",
            target_id = prelude.Document.id,
            list_member = M.ResolverRuleAssociation,
        }),
    },
})

M.ListResolverRulesInput = schema.new({
    id = id.from(_N, "ListResolverRulesRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverRulesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResolverRulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListResolverRulesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.ListResolverRulesOutput = schema.new({
    id = id.from(_N, "ListResolverRulesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResolverRulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResolverRulesOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        ResolverRules = schema.new({
            id = id.from(_N, "ListResolverRulesOutput", "ResolverRules"),
            type = "list",
            name = "ResolverRules",
            target_id = prelude.Document.id,
            list_member = M.ResolverRule,
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
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutFirewallRuleGroupPolicyInput = schema.new({
    id = id.from(_N, "PutFirewallRuleGroupPolicyRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "PutFirewallRuleGroupPolicyInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FirewallRuleGroupPolicy = schema.new({
            id = id.from(_N, "PutFirewallRuleGroupPolicyInput", "FirewallRuleGroupPolicy"),
            type = "string",
            name = "FirewallRuleGroupPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutFirewallRuleGroupPolicyOutput = schema.new({
    id = id.from(_N, "PutFirewallRuleGroupPolicyResponse"),
    type = "structure",
    members = {
        ReturnValue = schema.new({
            id = id.from(_N, "PutFirewallRuleGroupPolicyOutput", "ReturnValue"),
            type = "boolean",
            name = "ReturnValue",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PutResolverQueryLogConfigPolicyInput = schema.new({
    id = id.from(_N, "PutResolverQueryLogConfigPolicyRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "PutResolverQueryLogConfigPolicyInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResolverQueryLogConfigPolicy = schema.new({
            id = id.from(_N, "PutResolverQueryLogConfigPolicyInput", "ResolverQueryLogConfigPolicy"),
            type = "string",
            name = "ResolverQueryLogConfigPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResolverQueryLogConfigPolicyOutput = schema.new({
    id = id.from(_N, "PutResolverQueryLogConfigPolicyResponse"),
    type = "structure",
    members = {
        ReturnValue = schema.new({
            id = id.from(_N, "PutResolverQueryLogConfigPolicyOutput", "ReturnValue"),
            type = "boolean",
            name = "ReturnValue",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PutResolverRulePolicyInput = schema.new({
    id = id.from(_N, "PutResolverRulePolicyRequest"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "PutResolverRulePolicyInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResolverRulePolicy = schema.new({
            id = id.from(_N, "PutResolverRulePolicyInput", "ResolverRulePolicy"),
            type = "string",
            name = "ResolverRulePolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResolverRulePolicyOutput = schema.new({
    id = id.from(_N, "PutResolverRulePolicyResponse"),
    type = "structure",
    members = {
        ReturnValue = schema.new({
            id = id.from(_N, "PutResolverRulePolicyOutput", "ReturnValue"),
            type = "boolean",
            name = "ReturnValue",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ResolverRuleConfig = schema.new({
    id = id.from(_N, "ResolverRuleConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ResolverRuleConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        TargetIps = schema.new({
            id = id.from(_N, "ResolverRuleConfig", "TargetIps"),
            type = "list",
            name = "TargetIps",
            target_id = prelude.Document.id,
            list_member = M.TargetAddress,
        }),
        ResolverEndpointId = schema.new({
            id = id.from(_N, "ResolverRuleConfig", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
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
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateFirewallConfigInput = schema.new({
    id = id.from(_N, "UpdateFirewallConfigRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "UpdateFirewallConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FirewallFailOpen = schema.new({
            id = id.from(_N, "UpdateFirewallConfigInput", "FirewallFailOpen"),
            type = "string",
            name = "FirewallFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateFirewallConfigOutput = schema.new({
    id = id.from(_N, "UpdateFirewallConfigResponse"),
    type = "structure",
    members = {
        FirewallConfig = schema.new({
            id = id.from(_N, "UpdateFirewallConfigOutput", "FirewallConfig"),
            type = "structure",
            name = "FirewallConfig",
            target_id = id.from(_N, "FirewallConfig"),
            target = M.FirewallConfig,
        }),
    },
})

M.UpdateFirewallDomainsInput = schema.new({
    id = id.from(_N, "UpdateFirewallDomainsRequest"),
    type = "structure",
    members = {
        FirewallDomainListId = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operation = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsInput", "Operation"),
            type = "string",
            name = "Operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Domains = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsInput", "Domains"),
            type = "list",
            name = "Domains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateFirewallDomainsOutput = schema.new({
    id = id.from(_N, "UpdateFirewallDomainsResponse"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsOutput", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFirewallRuleInput = schema.new({
    id = id.from(_N, "UpdateFirewallRuleRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupId = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "FirewallRuleGroupId"),
            type = "string",
            name = "FirewallRuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FirewallDomainListId = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "FirewallDomainListId"),
            type = "string",
            name = "FirewallDomainListId",
            target_id = prelude.String.id,
        }),
        FirewallThreatProtectionId = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "FirewallThreatProtectionId"),
            type = "string",
            name = "FirewallThreatProtectionId",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        Action = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        BlockResponse = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "BlockResponse"),
            type = "string",
            name = "BlockResponse",
            target_id = prelude.String.id,
        }),
        BlockOverrideDomain = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "BlockOverrideDomain"),
            type = "string",
            name = "BlockOverrideDomain",
            target_id = prelude.String.id,
        }),
        BlockOverrideDnsType = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "BlockOverrideDnsType"),
            type = "string",
            name = "BlockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        BlockOverrideTtl = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "BlockOverrideTtl"),
            type = "integer",
            name = "BlockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        FirewallDomainRedirectionAction = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "FirewallDomainRedirectionAction"),
            type = "string",
            name = "FirewallDomainRedirectionAction",
            target_id = prelude.String.id,
        }),
        Qtype = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "Qtype"),
            type = "string",
            name = "Qtype",
            target_id = prelude.String.id,
        }),
        DnsThreatProtection = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "DnsThreatProtection"),
            type = "string",
            name = "DnsThreatProtection",
            target_id = prelude.String.id,
        }),
        ConfidenceThreshold = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "ConfidenceThreshold"),
            type = "string",
            name = "ConfidenceThreshold",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFirewallRuleOutput = schema.new({
    id = id.from(_N, "UpdateFirewallRuleResponse"),
    type = "structure",
    members = {
        FirewallRule = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "FirewallRule"),
            type = "structure",
            name = "FirewallRule",
            target_id = id.from(_N, "FirewallRule"),
            target = M.FirewallRule,
        }),
    },
})

M.UpdateFirewallRuleGroupAssociationInput = schema.new({
    id = id.from(_N, "UpdateFirewallRuleGroupAssociationRequest"),
    type = "structure",
    members = {
        FirewallRuleGroupAssociationId = schema.new({
            id = id.from(_N, "UpdateFirewallRuleGroupAssociationInput", "FirewallRuleGroupAssociationId"),
            type = "string",
            name = "FirewallRuleGroupAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Priority = schema.new({
            id = id.from(_N, "UpdateFirewallRuleGroupAssociationInput", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        MutationProtection = schema.new({
            id = id.from(_N, "UpdateFirewallRuleGroupAssociationInput", "MutationProtection"),
            type = "string",
            name = "MutationProtection",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateFirewallRuleGroupAssociationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFirewallRuleGroupAssociationOutput = schema.new({
    id = id.from(_N, "UpdateFirewallRuleGroupAssociationResponse"),
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = schema.new({
            id = id.from(_N, "UpdateFirewallRuleGroupAssociationOutput", "FirewallRuleGroupAssociation"),
            type = "structure",
            name = "FirewallRuleGroupAssociation",
            target_id = id.from(_N, "FirewallRuleGroupAssociation"),
            target = M.FirewallRuleGroupAssociation,
        }),
    },
})

M.UpdateOutpostResolverInput = schema.new({
    id = id.from(_N, "UpdateOutpostResolverRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateOutpostResolverInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateOutpostResolverInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "UpdateOutpostResolverInput", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
        }),
        PreferredInstanceType = schema.new({
            id = id.from(_N, "UpdateOutpostResolverInput", "PreferredInstanceType"),
            type = "string",
            name = "PreferredInstanceType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOutpostResolverOutput = schema.new({
    id = id.from(_N, "UpdateOutpostResolverResponse"),
    type = "structure",
    members = {
        OutpostResolver = schema.new({
            id = id.from(_N, "UpdateOutpostResolverOutput", "OutpostResolver"),
            type = "structure",
            name = "OutpostResolver",
            target_id = id.from(_N, "OutpostResolver"),
            target = M.OutpostResolver,
        }),
    },
})

M.UpdateResolverConfigInput = schema.new({
    id = id.from(_N, "UpdateResolverConfigRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "UpdateResolverConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutodefinedReverseFlag = schema.new({
            id = id.from(_N, "UpdateResolverConfigInput", "AutodefinedReverseFlag"),
            type = "string",
            name = "AutodefinedReverseFlag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResolverConfigOutput = schema.new({
    id = id.from(_N, "UpdateResolverConfigResponse"),
    type = "structure",
    members = {
        ResolverConfig = schema.new({
            id = id.from(_N, "UpdateResolverConfigOutput", "ResolverConfig"),
            type = "structure",
            name = "ResolverConfig",
            target_id = id.from(_N, "ResolverConfig"),
            target = M.ResolverConfig,
        }),
    },
})

M.UpdateResolverDnssecConfigInput = schema.new({
    id = id.from(_N, "UpdateResolverDnssecConfigRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "UpdateResolverDnssecConfigInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Validation = schema.new({
            id = id.from(_N, "UpdateResolverDnssecConfigInput", "Validation"),
            type = "string",
            name = "Validation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResolverDnssecConfigOutput = schema.new({
    id = id.from(_N, "UpdateResolverDnssecConfigResponse"),
    type = "structure",
    members = {
        ResolverDNSSECConfig = schema.new({
            id = id.from(_N, "UpdateResolverDnssecConfigOutput", "ResolverDNSSECConfig"),
            type = "structure",
            name = "ResolverDNSSECConfig",
            target_id = id.from(_N, "ResolverDnssecConfig"),
            target = M.ResolverDnssecConfig,
        }),
    },
})

M.UpdateIpAddress = schema.new({
    id = id.from(_N, "UpdateIpAddress"),
    type = "structure",
    members = {
        IpId = schema.new({
            id = id.from(_N, "UpdateIpAddress", "IpId"),
            type = "string",
            name = "IpId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Ipv6 = schema.new({
            id = id.from(_N, "UpdateIpAddress", "Ipv6"),
            type = "string",
            name = "Ipv6",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResolverEndpointInput = schema.new({
    id = id.from(_N, "UpdateResolverEndpointRequest"),
    type = "structure",
    members = {
        ResolverEndpointId = schema.new({
            id = id.from(_N, "UpdateResolverEndpointInput", "ResolverEndpointId"),
            type = "string",
            name = "ResolverEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateResolverEndpointInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ResolverEndpointType = schema.new({
            id = id.from(_N, "UpdateResolverEndpointInput", "ResolverEndpointType"),
            type = "string",
            name = "ResolverEndpointType",
            target_id = prelude.String.id,
        }),
        UpdateIpAddresses = schema.new({
            id = id.from(_N, "UpdateResolverEndpointInput", "UpdateIpAddresses"),
            type = "list",
            name = "UpdateIpAddresses",
            target_id = prelude.Document.id,
            list_member = M.UpdateIpAddress,
        }),
        Protocols = schema.new({
            id = id.from(_N, "UpdateResolverEndpointInput", "Protocols"),
            type = "list",
            name = "Protocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RniEnhancedMetricsEnabled = schema.new({
            id = id.from(_N, "UpdateResolverEndpointInput", "RniEnhancedMetricsEnabled"),
            type = "boolean",
            name = "RniEnhancedMetricsEnabled",
            target_id = prelude.Boolean.id,
        }),
        TargetNameServerMetricsEnabled = schema.new({
            id = id.from(_N, "UpdateResolverEndpointInput", "TargetNameServerMetricsEnabled"),
            type = "boolean",
            name = "TargetNameServerMetricsEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateResolverEndpointOutput = schema.new({
    id = id.from(_N, "UpdateResolverEndpointResponse"),
    type = "structure",
    members = {
        ResolverEndpoint = schema.new({
            id = id.from(_N, "UpdateResolverEndpointOutput", "ResolverEndpoint"),
            type = "structure",
            name = "ResolverEndpoint",
            target_id = id.from(_N, "ResolverEndpoint"),
            target = M.ResolverEndpoint,
        }),
    },
})

M.UpdateResolverRuleInput = schema.new({
    id = id.from(_N, "UpdateResolverRuleRequest"),
    type = "structure",
    members = {
        ResolverRuleId = schema.new({
            id = id.from(_N, "UpdateResolverRuleInput", "ResolverRuleId"),
            type = "string",
            name = "ResolverRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Config = schema.new({
            id = id.from(_N, "UpdateResolverRuleInput", "Config"),
            type = "structure",
            name = "Config",
            target_id = id.from(_N, "ResolverRuleConfig"),
            target = M.ResolverRuleConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResolverRuleOutput = schema.new({
    id = id.from(_N, "UpdateResolverRuleResponse"),
    type = "structure",
    members = {
        ResolverRule = schema.new({
            id = id.from(_N, "UpdateResolverRuleOutput", "ResolverRule"),
            type = "structure",
            name = "ResolverRule",
            target_id = id.from(_N, "ResolverRule"),
            target = M.ResolverRule,
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
