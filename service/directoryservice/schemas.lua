local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.directoryservice"

local M = {}

M.IpRoutes = schema.new({ type = "list", list_member = M.IpRoute })

M.Tags = schema.new({ type = "list", list_member = M.Tag })

M.Attributes = schema.new({ type = "list", list_member = M.Attribute })

M.DnsIpAddrs = schema.new({ type = "list", list_member = prelude.String })

M.DnsIpv6Addrs = schema.new({ type = "list", list_member = prelude.String })

M.AssessmentReports = schema.new({ type = "list", list_member = M.AssessmentReport })

M.ClientAuthenticationSettingsInfo = schema.new({ type = "list", list_member = M.ClientAuthenticationSettingInfo })

M.RemoteDomainNames = schema.new({ type = "list", list_member = prelude.String })

M.ConditionalForwarders = schema.new({ type = "list", list_member = M.ConditionalForwarder })

M.DirectoryIds = schema.new({ type = "list", list_member = prelude.String })

M.DirectoryDescriptions = schema.new({ type = "list", list_member = M.DirectoryDescription })

M.DomainControllerIds = schema.new({ type = "list", list_member = prelude.String })

M.DomainControllers = schema.new({ type = "list", list_member = M.DomainController })

M.TopicNames = schema.new({ type = "list", list_member = prelude.String })

M.EventTopics = schema.new({ type = "list", list_member = M.EventTopic })

M.LDAPSSettingsInfo = schema.new({ type = "list", list_member = M.LDAPSSettingInfo })

M.RegionsDescription = schema.new({ type = "list", list_member = M.RegionDescription })

M.SettingEntries = schema.new({ type = "list", list_member = M.SettingEntry })

M.SharedDirectories = schema.new({ type = "list", list_member = M.SharedDirectory })

M.SnapshotIds = schema.new({ type = "list", list_member = prelude.String })

M.Snapshots = schema.new({ type = "list", list_member = M.Snapshot })

M.TrustIds = schema.new({ type = "list", list_member = prelude.String })

M.Trusts = schema.new({ type = "list", list_member = M.Trust })

M.UpdateActivities = schema.new({ type = "list", list_member = M.UpdateInfoEntry })

M.Assessments = schema.new({ type = "list", list_member = M.AssessmentSummary })

M.CertificatesInfo = schema.new({ type = "list", list_member = M.CertificateInfo })

M.IpRoutesInfo = schema.new({ type = "list", list_member = M.IpRouteInfo })

M.LogSubscriptions = schema.new({ type = "list", list_member = M.LogSubscription })

M.SchemaExtensionsInfo = schema.new({ type = "list", list_member = M.SchemaExtensionInfo })

M.CidrIps = schema.new({ type = "list", list_member = prelude.String })

M.CidrIpv6s = schema.new({ type = "list", list_member = prelude.String })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.Settings = schema.new({ type = "list", list_member = M.Setting })

M.SubnetIds = schema.new({ type = "list", list_member = prelude.String })

M.CustomerDnsIps = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.AssessmentInstanceIds = schema.new({ type = "list", list_member = prelude.String })

M.HybridUpdateInfoEntries = schema.new({ type = "list", list_member = M.HybridUpdateInfoEntry })

M.Servers = schema.new({ type = "list", list_member = prelude.String })

M.AssessmentValidations = schema.new({ type = "list", list_member = M.AssessmentValidation })

M.DirectoryConfigurationSettingRequestDetailedStatus = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AvailabilityZones = schema.new({ type = "list", list_member = prelude.String })

M.IpAddrs = schema.new({ type = "list", list_member = prelude.String })

M.IpV6Addrs = schema.new({ type = "list", list_member = prelude.String })

M.AdditionalRegions = schema.new({ type = "list", list_member = prelude.String })

M.AcceptSharedDirectoryInput = schema.new({
    id = id.from(_N, "AcceptSharedDirectoryRequest"),
    type = "structure",
    members = {
        SharedDirectoryId = schema.new({
            id = id.from(_N, "AcceptSharedDirectoryInput", "SharedDirectoryId"),
            type = "string",
            name = "SharedDirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SharedDirectory = schema.new({
    id = id.from(_N, "SharedDirectory"),
    type = "structure",
    members = {
        OwnerAccountId = schema.new({
            id = id.from(_N, "SharedDirectory", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        OwnerDirectoryId = schema.new({
            id = id.from(_N, "SharedDirectory", "OwnerDirectoryId"),
            type = "string",
            name = "OwnerDirectoryId",
            target_id = prelude.String.id,
        }),
        ShareMethod = schema.new({
            id = id.from(_N, "SharedDirectory", "ShareMethod"),
            type = "string",
            name = "ShareMethod",
            target_id = prelude.String.id,
        }),
        SharedAccountId = schema.new({
            id = id.from(_N, "SharedDirectory", "SharedAccountId"),
            type = "string",
            name = "SharedAccountId",
            target_id = prelude.String.id,
        }),
        SharedDirectoryId = schema.new({
            id = id.from(_N, "SharedDirectory", "SharedDirectoryId"),
            type = "string",
            name = "SharedDirectoryId",
            target_id = prelude.String.id,
        }),
        ShareStatus = schema.new({
            id = id.from(_N, "SharedDirectory", "ShareStatus"),
            type = "string",
            name = "ShareStatus",
            target_id = prelude.String.id,
        }),
        ShareNotes = schema.new({
            id = id.from(_N, "SharedDirectory", "ShareNotes"),
            type = "string",
            name = "ShareNotes",
            target_id = prelude.String.id,
        }),
        CreatedDateTime = schema.new({
            id = id.from(_N, "SharedDirectory", "CreatedDateTime"),
            type = "timestamp",
            name = "CreatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "SharedDirectory", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AcceptSharedDirectoryOutput = schema.new({
    id = id.from(_N, "AcceptSharedDirectoryResult"),
    type = "structure",
    members = {
        SharedDirectory = schema.new({
            id = id.from(_N, "AcceptSharedDirectoryOutput", "SharedDirectory"),
            type = "structure",
            name = "SharedDirectory",
            target_id = id.from(_N, "SharedDirectory"),
            target = M.SharedDirectory,
        }),
    },
})

M.ClientException = schema.new({
    id = id.from(_N, "ClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ClientException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ClientException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryAlreadySharedException = schema.new({
    id = id.from(_N, "DirectoryAlreadySharedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryAlreadySharedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DirectoryAlreadySharedException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityDoesNotExistException = schema.new({
    id = id.from(_N, "EntityDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityDoesNotExistException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "EntityDoesNotExistException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
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
        }),
        RequestId = schema.new({
            id = id.from(_N, "InvalidParameterException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceException = schema.new({
    id = id.from(_N, "ServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ServiceException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
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
        }),
        RequestId = schema.new({
            id = id.from(_N, "AccessDeniedException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ADAssessmentLimitExceededException = schema.new({
    id = id.from(_N, "ADAssessmentLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ADAssessmentLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ADAssessmentLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.IpRoute = schema.new({
    id = id.from(_N, "IpRoute"),
    type = "structure",
    members = {
        CidrIp = schema.new({
            id = id.from(_N, "IpRoute", "CidrIp"),
            type = "string",
            name = "CidrIp",
            target_id = prelude.String.id,
        }),
        CidrIpv6 = schema.new({
            id = id.from(_N, "IpRoute", "CidrIpv6"),
            type = "string",
            name = "CidrIpv6",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "IpRoute", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.AddIpRoutesInput = schema.new({
    id = id.from(_N, "AddIpRoutesRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "AddIpRoutesInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpRoutes = schema.new({
            id = id.from(_N, "AddIpRoutesInput", "IpRoutes"),
            type = "list",
            name = "IpRoutes",
            target_id = prelude.Document.id,
            list_member = M.IpRoute,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateSecurityGroupForDirectoryControllers = schema.new({
            id = id.from(_N, "AddIpRoutesInput", "UpdateSecurityGroupForDirectoryControllers"),
            type = "boolean",
            name = "UpdateSecurityGroupForDirectoryControllers",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AddIpRoutesOutput = schema.new({
    id = id.from(_N, "AddIpRoutesResult"),
    type = "structure",
})

M.DirectoryUnavailableException = schema.new({
    id = id.from(_N, "DirectoryUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DirectoryUnavailableException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityAlreadyExistsException = schema.new({
    id = id.from(_N, "EntityAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "EntityAlreadyExistsException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.IpRouteLimitExceededException = schema.new({
    id = id.from(_N, "IpRouteLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IpRouteLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "IpRouteLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryVpcSettings = schema.new({
    id = id.from(_N, "DirectoryVpcSettings"),
    type = "structure",
    members = {
        VpcId = schema.new({
            id = id.from(_N, "DirectoryVpcSettings", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "DirectoryVpcSettings", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddRegionInput = schema.new({
    id = id.from(_N, "AddRegionRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "AddRegionInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionName = schema.new({
            id = id.from(_N, "AddRegionInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VPCSettings = schema.new({
            id = id.from(_N, "AddRegionInput", "VPCSettings"),
            type = "structure",
            name = "VPCSettings",
            target_id = id.from(_N, "DirectoryVpcSettings"),
            target = M.DirectoryVpcSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddRegionOutput = schema.new({
    id = id.from(_N, "AddRegionResult"),
    type = "structure",
})

M.DirectoryAlreadyInRegionException = schema.new({
    id = id.from(_N, "DirectoryAlreadyInRegionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryAlreadyInRegionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DirectoryAlreadyInRegionException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryDoesNotExistException = schema.new({
    id = id.from(_N, "DirectoryDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryDoesNotExistException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DirectoryDoesNotExistException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.RegionLimitExceededException = schema.new({
    id = id.from(_N, "RegionLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RegionLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "RegionLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedOperationException = schema.new({
    id = id.from(_N, "UnsupportedOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "UnsupportedOperationException", "RequestId"),
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

M.AddTagsToResourceInput = schema.new({
    id = id.from(_N, "AddTagsToResourceRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "Tags"),
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

M.AddTagsToResourceOutput = schema.new({
    id = id.from(_N, "AddTagsToResourceResult"),
    type = "structure",
})

M.TagLimitExceededException = schema.new({
    id = id.from(_N, "TagLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TagLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "TagLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.Assessment = schema.new({
    id = id.from(_N, "Assessment"),
    type = "structure",
    members = {
        AssessmentId = schema.new({
            id = id.from(_N, "Assessment", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "Assessment", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        DnsName = schema.new({
            id = id.from(_N, "Assessment", "DnsName"),
            type = "string",
            name = "DnsName",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "Assessment", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateDateTime = schema.new({
            id = id.from(_N, "Assessment", "LastUpdateDateTime"),
            type = "timestamp",
            name = "LastUpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Assessment", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusCode = schema.new({
            id = id.from(_N, "Assessment", "StatusCode"),
            type = "string",
            name = "StatusCode",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "Assessment", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        CustomerDnsIps = schema.new({
            id = id.from(_N, "Assessment", "CustomerDnsIps"),
            type = "list",
            name = "CustomerDnsIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        VpcId = schema.new({
            id = id.from(_N, "Assessment", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "Assessment", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "Assessment", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SelfManagedInstanceIds = schema.new({
            id = id.from(_N, "Assessment", "SelfManagedInstanceIds"),
            type = "list",
            name = "SelfManagedInstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ReportType = schema.new({
            id = id.from(_N, "Assessment", "ReportType"),
            type = "string",
            name = "ReportType",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "Assessment", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.AssessmentConfiguration = schema.new({
    id = id.from(_N, "AssessmentConfiguration"),
    type = "structure",
    members = {
        CustomerDnsIps = schema.new({
            id = id.from(_N, "AssessmentConfiguration", "CustomerDnsIps"),
            type = "list",
            name = "CustomerDnsIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DnsName = schema.new({
            id = id.from(_N, "AssessmentConfiguration", "DnsName"),
            type = "string",
            name = "DnsName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcSettings = schema.new({
            id = id.from(_N, "AssessmentConfiguration", "VpcSettings"),
            type = "structure",
            name = "VpcSettings",
            target_id = id.from(_N, "DirectoryVpcSettings"),
            target = M.DirectoryVpcSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceIds = schema.new({
            id = id.from(_N, "AssessmentConfiguration", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "AssessmentConfiguration", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AssessmentValidation = schema.new({
    id = id.from(_N, "AssessmentValidation"),
    type = "structure",
    members = {
        Category = schema.new({
            id = id.from(_N, "AssessmentValidation", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "AssessmentValidation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AssessmentValidation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusCode = schema.new({
            id = id.from(_N, "AssessmentValidation", "StatusCode"),
            type = "string",
            name = "StatusCode",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "AssessmentValidation", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "AssessmentValidation", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateDateTime = schema.new({
            id = id.from(_N, "AssessmentValidation", "LastUpdateDateTime"),
            type = "timestamp",
            name = "LastUpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssessmentReport = schema.new({
    id = id.from(_N, "AssessmentReport"),
    type = "structure",
    members = {
        DomainControllerIp = schema.new({
            id = id.from(_N, "AssessmentReport", "DomainControllerIp"),
            type = "string",
            name = "DomainControllerIp",
            target_id = prelude.String.id,
        }),
        Validations = schema.new({
            id = id.from(_N, "AssessmentReport", "Validations"),
            type = "list",
            name = "Validations",
            target_id = prelude.Document.id,
            list_member = M.AssessmentValidation,
        }),
    },
})

M.AssessmentSummary = schema.new({
    id = id.from(_N, "AssessmentSummary"),
    type = "structure",
    members = {
        AssessmentId = schema.new({
            id = id.from(_N, "AssessmentSummary", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "AssessmentSummary", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        DnsName = schema.new({
            id = id.from(_N, "AssessmentSummary", "DnsName"),
            type = "string",
            name = "DnsName",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "AssessmentSummary", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateDateTime = schema.new({
            id = id.from(_N, "AssessmentSummary", "LastUpdateDateTime"),
            type = "timestamp",
            name = "LastUpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AssessmentSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CustomerDnsIps = schema.new({
            id = id.from(_N, "AssessmentSummary", "CustomerDnsIps"),
            type = "list",
            name = "CustomerDnsIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ReportType = schema.new({
            id = id.from(_N, "AssessmentSummary", "ReportType"),
            type = "string",
            name = "ReportType",
            target_id = prelude.String.id,
        }),
    },
})

M.Attribute = schema.new({
    id = id.from(_N, "Attribute"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Attribute", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Attribute", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthenticationFailedException = schema.new({
    id = id.from(_N, "AuthenticationFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AuthenticationFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "AuthenticationFailedException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelSchemaExtensionInput = schema.new({
    id = id.from(_N, "CancelSchemaExtensionRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CancelSchemaExtensionInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SchemaExtensionId = schema.new({
            id = id.from(_N, "CancelSchemaExtensionInput", "SchemaExtensionId"),
            type = "string",
            name = "SchemaExtensionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelSchemaExtensionOutput = schema.new({
    id = id.from(_N, "CancelSchemaExtensionResult"),
    type = "structure",
})

M.ClientCertAuthSettings = schema.new({
    id = id.from(_N, "ClientCertAuthSettings"),
    type = "structure",
    members = {
        OCSPUrl = schema.new({
            id = id.from(_N, "ClientCertAuthSettings", "OCSPUrl"),
            type = "string",
            name = "OCSPUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        CertificateId = schema.new({
            id = id.from(_N, "Certificate", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Certificate", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateReason = schema.new({
            id = id.from(_N, "Certificate", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
        }),
        CommonName = schema.new({
            id = id.from(_N, "Certificate", "CommonName"),
            type = "string",
            name = "CommonName",
            target_id = prelude.String.id,
        }),
        RegisteredDateTime = schema.new({
            id = id.from(_N, "Certificate", "RegisteredDateTime"),
            type = "timestamp",
            name = "RegisteredDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ExpiryDateTime = schema.new({
            id = id.from(_N, "Certificate", "ExpiryDateTime"),
            type = "timestamp",
            name = "ExpiryDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Certificate", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ClientCertAuthSettings = schema.new({
            id = id.from(_N, "Certificate", "ClientCertAuthSettings"),
            type = "structure",
            name = "ClientCertAuthSettings",
            target_id = id.from(_N, "ClientCertAuthSettings"),
            target = M.ClientCertAuthSettings,
        }),
    },
})

M.CertificateAlreadyExistsException = schema.new({
    id = id.from(_N, "CertificateAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CertificateAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "CertificateAlreadyExistsException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CertificateDoesNotExistException = schema.new({
    id = id.from(_N, "CertificateDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CertificateDoesNotExistException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "CertificateDoesNotExistException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CertificateInfo = schema.new({
    id = id.from(_N, "CertificateInfo"),
    type = "structure",
    members = {
        CertificateId = schema.new({
            id = id.from(_N, "CertificateInfo", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
        }),
        CommonName = schema.new({
            id = id.from(_N, "CertificateInfo", "CommonName"),
            type = "string",
            name = "CommonName",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "CertificateInfo", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        ExpiryDateTime = schema.new({
            id = id.from(_N, "CertificateInfo", "ExpiryDateTime"),
            type = "timestamp",
            name = "ExpiryDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Type = schema.new({
            id = id.from(_N, "CertificateInfo", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.CertificateInUseException = schema.new({
    id = id.from(_N, "CertificateInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CertificateInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "CertificateInUseException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CertificateLimitExceededException = schema.new({
    id = id.from(_N, "CertificateLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CertificateLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "CertificateLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ClientAuthenticationSettingInfo = schema.new({
    id = id.from(_N, "ClientAuthenticationSettingInfo"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ClientAuthenticationSettingInfo", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ClientAuthenticationSettingInfo", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "ClientAuthenticationSettingInfo", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Computer = schema.new({
    id = id.from(_N, "Computer"),
    type = "structure",
    members = {
        ComputerId = schema.new({
            id = id.from(_N, "Computer", "ComputerId"),
            type = "string",
            name = "ComputerId",
            target_id = prelude.String.id,
        }),
        ComputerName = schema.new({
            id = id.from(_N, "Computer", "ComputerName"),
            type = "string",
            name = "ComputerName",
            target_id = prelude.String.id,
        }),
        ComputerAttributes = schema.new({
            id = id.from(_N, "Computer", "ComputerAttributes"),
            type = "list",
            name = "ComputerAttributes",
            target_id = prelude.Document.id,
            list_member = M.Attribute,
        }),
    },
})

M.ConditionalForwarder = schema.new({
    id = id.from(_N, "ConditionalForwarder"),
    type = "structure",
    members = {
        RemoteDomainName = schema.new({
            id = id.from(_N, "ConditionalForwarder", "RemoteDomainName"),
            type = "string",
            name = "RemoteDomainName",
            target_id = prelude.String.id,
        }),
        DnsIpAddrs = schema.new({
            id = id.from(_N, "ConditionalForwarder", "DnsIpAddrs"),
            type = "list",
            name = "DnsIpAddrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DnsIpv6Addrs = schema.new({
            id = id.from(_N, "ConditionalForwarder", "DnsIpv6Addrs"),
            type = "list",
            name = "DnsIpv6Addrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ReplicationScope = schema.new({
            id = id.from(_N, "ConditionalForwarder", "ReplicationScope"),
            type = "string",
            name = "ReplicationScope",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryConnectSettings = schema.new({
    id = id.from(_N, "DirectoryConnectSettings"),
    type = "structure",
    members = {
        VpcId = schema.new({
            id = id.from(_N, "DirectoryConnectSettings", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "DirectoryConnectSettings", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomerDnsIps = schema.new({
            id = id.from(_N, "DirectoryConnectSettings", "CustomerDnsIps"),
            type = "list",
            name = "CustomerDnsIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
        CustomerDnsIpsV6 = schema.new({
            id = id.from(_N, "DirectoryConnectSettings", "CustomerDnsIpsV6"),
            type = "list",
            name = "CustomerDnsIpsV6",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CustomerUserName = schema.new({
            id = id.from(_N, "DirectoryConnectSettings", "CustomerUserName"),
            type = "string",
            name = "CustomerUserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectDirectoryInput = schema.new({
    id = id.from(_N, "ConnectDirectoryRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortName = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "ShortName"),
            type = "string",
            name = "ShortName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Size = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "Size"),
            type = "string",
            name = "Size",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectSettings = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "ConnectSettings"),
            type = "structure",
            name = "ConnectSettings",
            target_id = id.from(_N, "DirectoryConnectSettings"),
            target = M.DirectoryConnectSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ConnectDirectoryInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectDirectoryOutput = schema.new({
    id = id.from(_N, "ConnectDirectoryResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ConnectDirectoryOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryLimitExceededException = schema.new({
    id = id.from(_N, "DirectoryLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DirectoryLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAliasInput = schema.new({
    id = id.from(_N, "CreateAliasRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateAliasInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Alias = schema.new({
            id = id.from(_N, "CreateAliasInput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAliasOutput = schema.new({
    id = id.from(_N, "CreateAliasResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateAliasOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        Alias = schema.new({
            id = id.from(_N, "CreateAliasOutput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateComputerInput = schema.new({
    id = id.from(_N, "CreateComputerRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateComputerInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComputerName = schema.new({
            id = id.from(_N, "CreateComputerInput", "ComputerName"),
            type = "string",
            name = "ComputerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "CreateComputerInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationalUnitDistinguishedName = schema.new({
            id = id.from(_N, "CreateComputerInput", "OrganizationalUnitDistinguishedName"),
            type = "string",
            name = "OrganizationalUnitDistinguishedName",
            target_id = prelude.String.id,
        }),
        ComputerAttributes = schema.new({
            id = id.from(_N, "CreateComputerInput", "ComputerAttributes"),
            type = "list",
            name = "ComputerAttributes",
            target_id = prelude.Document.id,
            list_member = M.Attribute,
        }),
    },
})

M.CreateComputerOutput = schema.new({
    id = id.from(_N, "CreateComputerResult"),
    type = "structure",
    members = {
        Computer = schema.new({
            id = id.from(_N, "CreateComputerOutput", "Computer"),
            type = "structure",
            name = "Computer",
            target_id = id.from(_N, "Computer"),
            target = M.Computer,
        }),
    },
})

M.CreateConditionalForwarderInput = schema.new({
    id = id.from(_N, "CreateConditionalForwarderRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateConditionalForwarderInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RemoteDomainName = schema.new({
            id = id.from(_N, "CreateConditionalForwarderInput", "RemoteDomainName"),
            type = "string",
            name = "RemoteDomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DnsIpAddrs = schema.new({
            id = id.from(_N, "CreateConditionalForwarderInput", "DnsIpAddrs"),
            type = "list",
            name = "DnsIpAddrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
        DnsIpv6Addrs = schema.new({
            id = id.from(_N, "CreateConditionalForwarderInput", "DnsIpv6Addrs"),
            type = "list",
            name = "DnsIpv6Addrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateConditionalForwarderOutput = schema.new({
    id = id.from(_N, "CreateConditionalForwarderResult"),
    type = "structure",
})

M.CreateDirectoryInput = schema.new({
    id = id.from(_N, "CreateDirectoryRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortName = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "ShortName"),
            type = "string",
            name = "ShortName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Size = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "Size"),
            type = "string",
            name = "Size",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcSettings = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "VpcSettings"),
            type = "structure",
            name = "VpcSettings",
            target_id = id.from(_N, "DirectoryVpcSettings"),
            target = M.DirectoryVpcSettings,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateDirectoryInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDirectoryOutput = schema.new({
    id = id.from(_N, "CreateDirectoryResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateDirectoryOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHybridADInput = schema.new({
    id = id.from(_N, "CreateHybridADRequest"),
    type = "structure",
    members = {
        SecretArn = schema.new({
            id = id.from(_N, "CreateHybridADInput", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssessmentId = schema.new({
            id = id.from(_N, "CreateHybridADInput", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateHybridADInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateHybridADOutput = schema.new({
    id = id.from(_N, "CreateHybridADResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateHybridADOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLogSubscriptionInput = schema.new({
    id = id.from(_N, "CreateLogSubscriptionRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateLogSubscriptionInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogGroupName = schema.new({
            id = id.from(_N, "CreateLogSubscriptionInput", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLogSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateLogSubscriptionResult"),
    type = "structure",
})

M.InsufficientPermissionsException = schema.new({
    id = id.from(_N, "InsufficientPermissionsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InsufficientPermissionsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InsufficientPermissionsException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMicrosoftADInput = schema.new({
    id = id.from(_N, "CreateMicrosoftADRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortName = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "ShortName"),
            type = "string",
            name = "ShortName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        VpcSettings = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "VpcSettings"),
            type = "structure",
            name = "VpcSettings",
            target_id = id.from(_N, "DirectoryVpcSettings"),
            target = M.DirectoryVpcSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Edition = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "Edition"),
            type = "string",
            name = "Edition",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateMicrosoftADInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMicrosoftADOutput = schema.new({
    id = id.from(_N, "CreateMicrosoftADResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateMicrosoftADOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSnapshotInput = schema.new({
    id = id.from(_N, "CreateSnapshotRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSnapshotOutput = schema.new({
    id = id.from(_N, "CreateSnapshotResult"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "CreateSnapshotOutput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
    },
})

M.SnapshotLimitExceededException = schema.new({
    id = id.from(_N, "SnapshotLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "SnapshotLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "SnapshotLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrustInput = schema.new({
    id = id.from(_N, "CreateTrustRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateTrustInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RemoteDomainName = schema.new({
            id = id.from(_N, "CreateTrustInput", "RemoteDomainName"),
            type = "string",
            name = "RemoteDomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustPassword = schema.new({
            id = id.from(_N, "CreateTrustInput", "TrustPassword"),
            type = "string",
            name = "TrustPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustDirection = schema.new({
            id = id.from(_N, "CreateTrustInput", "TrustDirection"),
            type = "string",
            name = "TrustDirection",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustType = schema.new({
            id = id.from(_N, "CreateTrustInput", "TrustType"),
            type = "string",
            name = "TrustType",
            target_id = prelude.String.id,
        }),
        ConditionalForwarderIpAddrs = schema.new({
            id = id.from(_N, "CreateTrustInput", "ConditionalForwarderIpAddrs"),
            type = "list",
            name = "ConditionalForwarderIpAddrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ConditionalForwarderIpv6Addrs = schema.new({
            id = id.from(_N, "CreateTrustInput", "ConditionalForwarderIpv6Addrs"),
            type = "list",
            name = "ConditionalForwarderIpv6Addrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SelectiveAuth = schema.new({
            id = id.from(_N, "CreateTrustInput", "SelectiveAuth"),
            type = "string",
            name = "SelectiveAuth",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrustOutput = schema.new({
    id = id.from(_N, "CreateTrustResult"),
    type = "structure",
    members = {
        TrustId = schema.new({
            id = id.from(_N, "CreateTrustOutput", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteADAssessmentInput = schema.new({
    id = id.from(_N, "DeleteADAssessmentRequest"),
    type = "structure",
    members = {
        AssessmentId = schema.new({
            id = id.from(_N, "DeleteADAssessmentInput", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteADAssessmentOutput = schema.new({
    id = id.from(_N, "DeleteADAssessmentResult"),
    type = "structure",
    members = {
        AssessmentId = schema.new({
            id = id.from(_N, "DeleteADAssessmentOutput", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConditionalForwarderInput = schema.new({
    id = id.from(_N, "DeleteConditionalForwarderRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DeleteConditionalForwarderInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RemoteDomainName = schema.new({
            id = id.from(_N, "DeleteConditionalForwarderInput", "RemoteDomainName"),
            type = "string",
            name = "RemoteDomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConditionalForwarderOutput = schema.new({
    id = id.from(_N, "DeleteConditionalForwarderResult"),
    type = "structure",
})

M.DeleteDirectoryInput = schema.new({
    id = id.from(_N, "DeleteDirectoryRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DeleteDirectoryInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDirectoryOutput = schema.new({
    id = id.from(_N, "DeleteDirectoryResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DeleteDirectoryOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteLogSubscriptionInput = schema.new({
    id = id.from(_N, "DeleteLogSubscriptionRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DeleteLogSubscriptionInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLogSubscriptionOutput = schema.new({
    id = id.from(_N, "DeleteLogSubscriptionResult"),
    type = "structure",
})

M.DeleteSnapshotInput = schema.new({
    id = id.from(_N, "DeleteSnapshotRequest"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "DeleteSnapshotInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteSnapshotResult"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "DeleteSnapshotOutput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTrustInput = schema.new({
    id = id.from(_N, "DeleteTrustRequest"),
    type = "structure",
    members = {
        TrustId = schema.new({
            id = id.from(_N, "DeleteTrustInput", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeleteAssociatedConditionalForwarder = schema.new({
            id = id.from(_N, "DeleteTrustInput", "DeleteAssociatedConditionalForwarder"),
            type = "boolean",
            name = "DeleteAssociatedConditionalForwarder",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteTrustOutput = schema.new({
    id = id.from(_N, "DeleteTrustResult"),
    type = "structure",
    members = {
        TrustId = schema.new({
            id = id.from(_N, "DeleteTrustOutput", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregisterCertificateInput = schema.new({
    id = id.from(_N, "DeregisterCertificateRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DeregisterCertificateInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateId = schema.new({
            id = id.from(_N, "DeregisterCertificateInput", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterCertificateOutput = schema.new({
    id = id.from(_N, "DeregisterCertificateResult"),
    type = "structure",
})

M.DeregisterEventTopicInput = schema.new({
    id = id.from(_N, "DeregisterEventTopicRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DeregisterEventTopicInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "DeregisterEventTopicInput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterEventTopicOutput = schema.new({
    id = id.from(_N, "DeregisterEventTopicResult"),
    type = "structure",
})

M.DescribeADAssessmentInput = schema.new({
    id = id.from(_N, "DescribeADAssessmentRequest"),
    type = "structure",
    members = {
        AssessmentId = schema.new({
            id = id.from(_N, "DescribeADAssessmentInput", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeADAssessmentOutput = schema.new({
    id = id.from(_N, "DescribeADAssessmentResult"),
    type = "structure",
    members = {
        Assessment = schema.new({
            id = id.from(_N, "DescribeADAssessmentOutput", "Assessment"),
            type = "structure",
            name = "Assessment",
            target_id = id.from(_N, "Assessment"),
            target = M.Assessment,
        }),
        AssessmentReports = schema.new({
            id = id.from(_N, "DescribeADAssessmentOutput", "AssessmentReports"),
            type = "list",
            name = "AssessmentReports",
            target_id = prelude.Document.id,
            list_member = M.AssessmentReport,
        }),
    },
})

M.DescribeCAEnrollmentPolicyInput = schema.new({
    id = id.from(_N, "DescribeCAEnrollmentPolicyRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeCAEnrollmentPolicyInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCAEnrollmentPolicyOutput = schema.new({
    id = id.from(_N, "DescribeCAEnrollmentPolicyResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeCAEnrollmentPolicyOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        PcaConnectorArn = schema.new({
            id = id.from(_N, "DescribeCAEnrollmentPolicyOutput", "PcaConnectorArn"),
            type = "string",
            name = "PcaConnectorArn",
            target_id = prelude.String.id,
        }),
        CaEnrollmentPolicyStatus = schema.new({
            id = id.from(_N, "DescribeCAEnrollmentPolicyOutput", "CaEnrollmentPolicyStatus"),
            type = "string",
            name = "CaEnrollmentPolicyStatus",
            target_id = prelude.String.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "DescribeCAEnrollmentPolicyOutput", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        CaEnrollmentPolicyStatusReason = schema.new({
            id = id.from(_N, "DescribeCAEnrollmentPolicyOutput", "CaEnrollmentPolicyStatusReason"),
            type = "string",
            name = "CaEnrollmentPolicyStatusReason",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCertificateInput = schema.new({
    id = id.from(_N, "DescribeCertificateRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeCertificateInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateId = schema.new({
            id = id.from(_N, "DescribeCertificateInput", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCertificateOutput = schema.new({
    id = id.from(_N, "DescribeCertificateResult"),
    type = "structure",
    members = {
        Certificate = schema.new({
            id = id.from(_N, "DescribeCertificateOutput", "Certificate"),
            type = "structure",
            name = "Certificate",
            target_id = id.from(_N, "Certificate"),
            target = M.Certificate,
        }),
    },
})

M.DescribeClientAuthenticationSettingsInput = schema.new({
    id = id.from(_N, "DescribeClientAuthenticationSettingsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeClientAuthenticationSettingsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeClientAuthenticationSettingsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeClientAuthenticationSettingsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeClientAuthenticationSettingsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeClientAuthenticationSettingsOutput = schema.new({
    id = id.from(_N, "DescribeClientAuthenticationSettingsResult"),
    type = "structure",
    members = {
        ClientAuthenticationSettingsInfo = schema.new({
            id = id.from(_N, "DescribeClientAuthenticationSettingsOutput", "ClientAuthenticationSettingsInfo"),
            type = "list",
            name = "ClientAuthenticationSettingsInfo",
            target_id = prelude.Document.id,
            list_member = M.ClientAuthenticationSettingInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeClientAuthenticationSettingsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConditionalForwardersInput = schema.new({
    id = id.from(_N, "DescribeConditionalForwardersRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeConditionalForwardersInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RemoteDomainNames = schema.new({
            id = id.from(_N, "DescribeConditionalForwardersInput", "RemoteDomainNames"),
            type = "list",
            name = "RemoteDomainNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeConditionalForwardersOutput = schema.new({
    id = id.from(_N, "DescribeConditionalForwardersResult"),
    type = "structure",
    members = {
        ConditionalForwarders = schema.new({
            id = id.from(_N, "DescribeConditionalForwardersOutput", "ConditionalForwarders"),
            type = "list",
            name = "ConditionalForwarders",
            target_id = prelude.Document.id,
            list_member = M.ConditionalForwarder,
        }),
    },
})

M.DescribeDirectoriesInput = schema.new({
    id = id.from(_N, "DescribeDirectoriesRequest"),
    type = "structure",
    members = {
        DirectoryIds = schema.new({
            id = id.from(_N, "DescribeDirectoriesInput", "DirectoryIds"),
            type = "list",
            name = "DirectoryIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeDirectoriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeDirectoriesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DirectoryConnectSettingsDescription = schema.new({
    id = id.from(_N, "DirectoryConnectSettingsDescription"),
    type = "structure",
    members = {
        VpcId = schema.new({
            id = id.from(_N, "DirectoryConnectSettingsDescription", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "DirectoryConnectSettingsDescription", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CustomerUserName = schema.new({
            id = id.from(_N, "DirectoryConnectSettingsDescription", "CustomerUserName"),
            type = "string",
            name = "CustomerUserName",
            target_id = prelude.String.id,
        }),
        SecurityGroupId = schema.new({
            id = id.from(_N, "DirectoryConnectSettingsDescription", "SecurityGroupId"),
            type = "string",
            name = "SecurityGroupId",
            target_id = prelude.String.id,
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "DirectoryConnectSettingsDescription", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ConnectIps = schema.new({
            id = id.from(_N, "DirectoryConnectSettingsDescription", "ConnectIps"),
            type = "list",
            name = "ConnectIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ConnectIpsV6 = schema.new({
            id = id.from(_N, "DirectoryConnectSettingsDescription", "ConnectIpsV6"),
            type = "list",
            name = "ConnectIpsV6",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.HybridSettingsDescription = schema.new({
    id = id.from(_N, "HybridSettingsDescription"),
    type = "structure",
    members = {
        SelfManagedDnsIpAddrs = schema.new({
            id = id.from(_N, "HybridSettingsDescription", "SelfManagedDnsIpAddrs"),
            type = "list",
            name = "SelfManagedDnsIpAddrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SelfManagedInstanceIds = schema.new({
            id = id.from(_N, "HybridSettingsDescription", "SelfManagedInstanceIds"),
            type = "list",
            name = "SelfManagedInstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RadiusSettings = schema.new({
    id = id.from(_N, "RadiusSettings"),
    type = "structure",
    members = {
        RadiusServers = schema.new({
            id = id.from(_N, "RadiusSettings", "RadiusServers"),
            type = "list",
            name = "RadiusServers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RadiusServersIpv6 = schema.new({
            id = id.from(_N, "RadiusSettings", "RadiusServersIpv6"),
            type = "list",
            name = "RadiusServersIpv6",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RadiusPort = schema.new({
            id = id.from(_N, "RadiusSettings", "RadiusPort"),
            type = "integer",
            name = "RadiusPort",
            target_id = prelude.Integer.id,
        }),
        RadiusTimeout = schema.new({
            id = id.from(_N, "RadiusSettings", "RadiusTimeout"),
            type = "integer",
            name = "RadiusTimeout",
            target_id = prelude.Integer.id,
        }),
        RadiusRetries = schema.new({
            id = id.from(_N, "RadiusSettings", "RadiusRetries"),
            type = "integer",
            name = "RadiusRetries",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SharedSecret = schema.new({
            id = id.from(_N, "RadiusSettings", "SharedSecret"),
            type = "string",
            name = "SharedSecret",
            target_id = prelude.String.id,
        }),
        AuthenticationProtocol = schema.new({
            id = id.from(_N, "RadiusSettings", "AuthenticationProtocol"),
            type = "string",
            name = "AuthenticationProtocol",
            target_id = prelude.String.id,
        }),
        DisplayLabel = schema.new({
            id = id.from(_N, "RadiusSettings", "DisplayLabel"),
            type = "string",
            name = "DisplayLabel",
            target_id = prelude.String.id,
        }),
        UseSameUsername = schema.new({
            id = id.from(_N, "RadiusSettings", "UseSameUsername"),
            type = "boolean",
            name = "UseSameUsername",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DirectoryVpcSettingsDescription = schema.new({
    id = id.from(_N, "DirectoryVpcSettingsDescription"),
    type = "structure",
    members = {
        VpcId = schema.new({
            id = id.from(_N, "DirectoryVpcSettingsDescription", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "DirectoryVpcSettingsDescription", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SecurityGroupId = schema.new({
            id = id.from(_N, "DirectoryVpcSettingsDescription", "SecurityGroupId"),
            type = "string",
            name = "SecurityGroupId",
            target_id = prelude.String.id,
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "DirectoryVpcSettingsDescription", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OwnerDirectoryDescription = schema.new({
    id = id.from(_N, "OwnerDirectoryDescription"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        DnsIpAddrs = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "DnsIpAddrs"),
            type = "list",
            name = "DnsIpAddrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DnsIpv6Addrs = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "DnsIpv6Addrs"),
            type = "list",
            name = "DnsIpv6Addrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        VpcSettings = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "VpcSettings"),
            type = "structure",
            name = "VpcSettings",
            target_id = id.from(_N, "DirectoryVpcSettingsDescription"),
            target = M.DirectoryVpcSettingsDescription,
        }),
        RadiusSettings = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "RadiusSettings"),
            type = "structure",
            name = "RadiusSettings",
            target_id = id.from(_N, "RadiusSettings"),
            target = M.RadiusSettings,
        }),
        RadiusStatus = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "RadiusStatus"),
            type = "string",
            name = "RadiusStatus",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "OwnerDirectoryDescription", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.RegionsInfo = schema.new({
    id = id.from(_N, "RegionsInfo"),
    type = "structure",
    members = {
        PrimaryRegion = schema.new({
            id = id.from(_N, "RegionsInfo", "PrimaryRegion"),
            type = "string",
            name = "PrimaryRegion",
            target_id = prelude.String.id,
        }),
        AdditionalRegions = schema.new({
            id = id.from(_N, "RegionsInfo", "AdditionalRegions"),
            type = "list",
            name = "AdditionalRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DirectoryDescription = schema.new({
    id = id.from(_N, "DirectoryDescription"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DirectoryDescription", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DirectoryDescription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ShortName = schema.new({
            id = id.from(_N, "DirectoryDescription", "ShortName"),
            type = "string",
            name = "ShortName",
            target_id = prelude.String.id,
        }),
        Size = schema.new({
            id = id.from(_N, "DirectoryDescription", "Size"),
            type = "string",
            name = "Size",
            target_id = prelude.String.id,
        }),
        Edition = schema.new({
            id = id.from(_N, "DirectoryDescription", "Edition"),
            type = "string",
            name = "Edition",
            target_id = prelude.String.id,
        }),
        Alias = schema.new({
            id = id.from(_N, "DirectoryDescription", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
        }),
        AccessUrl = schema.new({
            id = id.from(_N, "DirectoryDescription", "AccessUrl"),
            type = "string",
            name = "AccessUrl",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DirectoryDescription", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DnsIpAddrs = schema.new({
            id = id.from(_N, "DirectoryDescription", "DnsIpAddrs"),
            type = "list",
            name = "DnsIpAddrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DnsIpv6Addrs = schema.new({
            id = id.from(_N, "DirectoryDescription", "DnsIpv6Addrs"),
            type = "list",
            name = "DnsIpv6Addrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Stage = schema.new({
            id = id.from(_N, "DirectoryDescription", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
        }),
        ShareStatus = schema.new({
            id = id.from(_N, "DirectoryDescription", "ShareStatus"),
            type = "string",
            name = "ShareStatus",
            target_id = prelude.String.id,
        }),
        ShareMethod = schema.new({
            id = id.from(_N, "DirectoryDescription", "ShareMethod"),
            type = "string",
            name = "ShareMethod",
            target_id = prelude.String.id,
        }),
        ShareNotes = schema.new({
            id = id.from(_N, "DirectoryDescription", "ShareNotes"),
            type = "string",
            name = "ShareNotes",
            target_id = prelude.String.id,
        }),
        LaunchTime = schema.new({
            id = id.from(_N, "DirectoryDescription", "LaunchTime"),
            type = "timestamp",
            name = "LaunchTime",
            target_id = prelude.Timestamp.id,
        }),
        StageLastUpdatedDateTime = schema.new({
            id = id.from(_N, "DirectoryDescription", "StageLastUpdatedDateTime"),
            type = "timestamp",
            name = "StageLastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DirectoryDescription", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        VpcSettings = schema.new({
            id = id.from(_N, "DirectoryDescription", "VpcSettings"),
            type = "structure",
            name = "VpcSettings",
            target_id = id.from(_N, "DirectoryVpcSettingsDescription"),
            target = M.DirectoryVpcSettingsDescription,
        }),
        ConnectSettings = schema.new({
            id = id.from(_N, "DirectoryDescription", "ConnectSettings"),
            type = "structure",
            name = "ConnectSettings",
            target_id = id.from(_N, "DirectoryConnectSettingsDescription"),
            target = M.DirectoryConnectSettingsDescription,
        }),
        RadiusSettings = schema.new({
            id = id.from(_N, "DirectoryDescription", "RadiusSettings"),
            type = "structure",
            name = "RadiusSettings",
            target_id = id.from(_N, "RadiusSettings"),
            target = M.RadiusSettings,
        }),
        RadiusStatus = schema.new({
            id = id.from(_N, "DirectoryDescription", "RadiusStatus"),
            type = "string",
            name = "RadiusStatus",
            target_id = prelude.String.id,
        }),
        StageReason = schema.new({
            id = id.from(_N, "DirectoryDescription", "StageReason"),
            type = "string",
            name = "StageReason",
            target_id = prelude.String.id,
        }),
        SsoEnabled = schema.new({
            id = id.from(_N, "DirectoryDescription", "SsoEnabled"),
            type = "boolean",
            name = "SsoEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DesiredNumberOfDomainControllers = schema.new({
            id = id.from(_N, "DirectoryDescription", "DesiredNumberOfDomainControllers"),
            type = "integer",
            name = "DesiredNumberOfDomainControllers",
            target_id = prelude.Integer.id,
        }),
        OwnerDirectoryDescription = schema.new({
            id = id.from(_N, "DirectoryDescription", "OwnerDirectoryDescription"),
            type = "structure",
            name = "OwnerDirectoryDescription",
            target_id = id.from(_N, "OwnerDirectoryDescription"),
            target = M.OwnerDirectoryDescription,
        }),
        RegionsInfo = schema.new({
            id = id.from(_N, "DirectoryDescription", "RegionsInfo"),
            type = "structure",
            name = "RegionsInfo",
            target_id = id.from(_N, "RegionsInfo"),
            target = M.RegionsInfo,
        }),
        OsVersion = schema.new({
            id = id.from(_N, "DirectoryDescription", "OsVersion"),
            type = "string",
            name = "OsVersion",
            target_id = prelude.String.id,
        }),
        HybridSettings = schema.new({
            id = id.from(_N, "DirectoryDescription", "HybridSettings"),
            type = "structure",
            name = "HybridSettings",
            target_id = id.from(_N, "HybridSettingsDescription"),
            target = M.HybridSettingsDescription,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "DirectoryDescription", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectoriesOutput = schema.new({
    id = id.from(_N, "DescribeDirectoriesResult"),
    type = "structure",
    members = {
        DirectoryDescriptions = schema.new({
            id = id.from(_N, "DescribeDirectoriesOutput", "DirectoryDescriptions"),
            type = "list",
            name = "DirectoryDescriptions",
            target_id = prelude.Document.id,
            list_member = M.DirectoryDescription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeDirectoriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
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
        RequestId = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDirectoryDataAccessInput = schema.new({
    id = id.from(_N, "DescribeDirectoryDataAccessRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeDirectoryDataAccessInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDirectoryDataAccessOutput = schema.new({
    id = id.from(_N, "DescribeDirectoryDataAccessResult"),
    type = "structure",
    members = {
        DataAccessStatus = schema.new({
            id = id.from(_N, "DescribeDirectoryDataAccessOutput", "DataAccessStatus"),
            type = "string",
            name = "DataAccessStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDomainControllersInput = schema.new({
    id = id.from(_N, "DescribeDomainControllersRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeDomainControllersInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainControllerIds = schema.new({
            id = id.from(_N, "DescribeDomainControllersInput", "DomainControllerIds"),
            type = "list",
            name = "DomainControllerIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeDomainControllersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeDomainControllersInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DomainController = schema.new({
    id = id.from(_N, "DomainController"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DomainController", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        DomainControllerId = schema.new({
            id = id.from(_N, "DomainController", "DomainControllerId"),
            type = "string",
            name = "DomainControllerId",
            target_id = prelude.String.id,
        }),
        DnsIpAddr = schema.new({
            id = id.from(_N, "DomainController", "DnsIpAddr"),
            type = "string",
            name = "DnsIpAddr",
            target_id = prelude.String.id,
        }),
        DnsIpv6Addr = schema.new({
            id = id.from(_N, "DomainController", "DnsIpv6Addr"),
            type = "string",
            name = "DnsIpv6Addr",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "DomainController", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "DomainController", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "DomainController", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DomainController", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "DomainController", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        LaunchTime = schema.new({
            id = id.from(_N, "DomainController", "LaunchTime"),
            type = "timestamp",
            name = "LaunchTime",
            target_id = prelude.Timestamp.id,
        }),
        StatusLastUpdatedDateTime = schema.new({
            id = id.from(_N, "DomainController", "StatusLastUpdatedDateTime"),
            type = "timestamp",
            name = "StatusLastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeDomainControllersOutput = schema.new({
    id = id.from(_N, "DescribeDomainControllersResult"),
    type = "structure",
    members = {
        DomainControllers = schema.new({
            id = id.from(_N, "DescribeDomainControllersOutput", "DomainControllers"),
            type = "list",
            name = "DomainControllers",
            target_id = prelude.Document.id,
            list_member = M.DomainController,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeDomainControllersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEventTopicsInput = schema.new({
    id = id.from(_N, "DescribeEventTopicsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeEventTopicsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        TopicNames = schema.new({
            id = id.from(_N, "DescribeEventTopicsInput", "TopicNames"),
            type = "list",
            name = "TopicNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EventTopic = schema.new({
    id = id.from(_N, "EventTopic"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "EventTopic", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        TopicName = schema.new({
            id = id.from(_N, "EventTopic", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
        }),
        TopicArn = schema.new({
            id = id.from(_N, "EventTopic", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
        }),
        CreatedDateTime = schema.new({
            id = id.from(_N, "EventTopic", "CreatedDateTime"),
            type = "timestamp",
            name = "CreatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "EventTopic", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEventTopicsOutput = schema.new({
    id = id.from(_N, "DescribeEventTopicsResult"),
    type = "structure",
    members = {
        EventTopics = schema.new({
            id = id.from(_N, "DescribeEventTopicsOutput", "EventTopics"),
            type = "list",
            name = "EventTopics",
            target_id = prelude.Document.id,
            list_member = M.EventTopic,
        }),
    },
})

M.DescribeHybridADUpdateInput = schema.new({
    id = id.from(_N, "DescribeHybridADUpdateRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeHybridADUpdateInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateType = schema.new({
            id = id.from(_N, "DescribeHybridADUpdateInput", "UpdateType"),
            type = "string",
            name = "UpdateType",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeHybridADUpdateInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.HybridUpdateValue = schema.new({
    id = id.from(_N, "HybridUpdateValue"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "HybridUpdateValue", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DnsIps = schema.new({
            id = id.from(_N, "HybridUpdateValue", "DnsIps"),
            type = "list",
            name = "DnsIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.HybridUpdateInfoEntry = schema.new({
    id = id.from(_N, "HybridUpdateInfoEntry"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        InitiatedBy = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "InitiatedBy"),
            type = "string",
            name = "InitiatedBy",
            target_id = prelude.String.id,
        }),
        NewValue = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "NewValue"),
            type = "structure",
            name = "NewValue",
            target_id = id.from(_N, "HybridUpdateValue"),
            target = M.HybridUpdateValue,
        }),
        PreviousValue = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "PreviousValue"),
            type = "structure",
            name = "PreviousValue",
            target_id = id.from(_N, "HybridUpdateValue"),
            target = M.HybridUpdateValue,
        }),
        StartTime = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        AssessmentId = schema.new({
            id = id.from(_N, "HybridUpdateInfoEntry", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.HybridUpdateActivities = schema.new({
    id = id.from(_N, "HybridUpdateActivities"),
    type = "structure",
    members = {
        SelfManagedInstances = schema.new({
            id = id.from(_N, "HybridUpdateActivities", "SelfManagedInstances"),
            type = "list",
            name = "SelfManagedInstances",
            target_id = prelude.Document.id,
            list_member = M.HybridUpdateInfoEntry,
        }),
        HybridAdministratorAccount = schema.new({
            id = id.from(_N, "HybridUpdateActivities", "HybridAdministratorAccount"),
            type = "list",
            name = "HybridAdministratorAccount",
            target_id = prelude.Document.id,
            list_member = M.HybridUpdateInfoEntry,
        }),
    },
})

M.DescribeHybridADUpdateOutput = schema.new({
    id = id.from(_N, "DescribeHybridADUpdateResult"),
    type = "structure",
    members = {
        UpdateActivities = schema.new({
            id = id.from(_N, "DescribeHybridADUpdateOutput", "UpdateActivities"),
            type = "structure",
            name = "UpdateActivities",
            target_id = id.from(_N, "HybridUpdateActivities"),
            target = M.HybridUpdateActivities,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeHybridADUpdateOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLDAPSSettingsInput = schema.new({
    id = id.from(_N, "DescribeLDAPSSettingsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeLDAPSSettingsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeLDAPSSettingsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLDAPSSettingsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeLDAPSSettingsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LDAPSSettingInfo = schema.new({
    id = id.from(_N, "LDAPSSettingInfo"),
    type = "structure",
    members = {
        LDAPSStatus = schema.new({
            id = id.from(_N, "LDAPSSettingInfo", "LDAPSStatus"),
            type = "string",
            name = "LDAPSStatus",
            target_id = prelude.String.id,
        }),
        LDAPSStatusReason = schema.new({
            id = id.from(_N, "LDAPSSettingInfo", "LDAPSStatusReason"),
            type = "string",
            name = "LDAPSStatusReason",
            target_id = prelude.String.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "LDAPSSettingInfo", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeLDAPSSettingsOutput = schema.new({
    id = id.from(_N, "DescribeLDAPSSettingsResult"),
    type = "structure",
    members = {
        LDAPSSettingsInfo = schema.new({
            id = id.from(_N, "DescribeLDAPSSettingsOutput", "LDAPSSettingsInfo"),
            type = "list",
            name = "LDAPSSettingsInfo",
            target_id = prelude.Document.id,
            list_member = M.LDAPSSettingInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLDAPSSettingsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRegionsInput = schema.new({
    id = id.from(_N, "DescribeRegionsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeRegionsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionName = schema.new({
            id = id.from(_N, "DescribeRegionsInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegionDescription = schema.new({
    id = id.from(_N, "RegionDescription"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "RegionDescription", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        RegionName = schema.new({
            id = id.from(_N, "RegionDescription", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        RegionType = schema.new({
            id = id.from(_N, "RegionDescription", "RegionType"),
            type = "string",
            name = "RegionType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RegionDescription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        VpcSettings = schema.new({
            id = id.from(_N, "RegionDescription", "VpcSettings"),
            type = "structure",
            name = "VpcSettings",
            target_id = id.from(_N, "DirectoryVpcSettings"),
            target = M.DirectoryVpcSettings,
        }),
        DesiredNumberOfDomainControllers = schema.new({
            id = id.from(_N, "RegionDescription", "DesiredNumberOfDomainControllers"),
            type = "integer",
            name = "DesiredNumberOfDomainControllers",
            target_id = prelude.Integer.id,
        }),
        LaunchTime = schema.new({
            id = id.from(_N, "RegionDescription", "LaunchTime"),
            type = "timestamp",
            name = "LaunchTime",
            target_id = prelude.Timestamp.id,
        }),
        StatusLastUpdatedDateTime = schema.new({
            id = id.from(_N, "RegionDescription", "StatusLastUpdatedDateTime"),
            type = "timestamp",
            name = "StatusLastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "RegionDescription", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeRegionsOutput = schema.new({
    id = id.from(_N, "DescribeRegionsResult"),
    type = "structure",
    members = {
        RegionsDescription = schema.new({
            id = id.from(_N, "DescribeRegionsOutput", "RegionsDescription"),
            type = "list",
            name = "RegionsDescription",
            target_id = prelude.Document.id,
            list_member = M.RegionDescription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSettingsInput = schema.new({
    id = id.from(_N, "DescribeSettingsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeSettingsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeSettingsInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSettingsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SettingEntry = schema.new({
    id = id.from(_N, "SettingEntry"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "SettingEntry", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "SettingEntry", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        AllowedValues = schema.new({
            id = id.from(_N, "SettingEntry", "AllowedValues"),
            type = "string",
            name = "AllowedValues",
            target_id = prelude.String.id,
        }),
        AppliedValue = schema.new({
            id = id.from(_N, "SettingEntry", "AppliedValue"),
            type = "string",
            name = "AppliedValue",
            target_id = prelude.String.id,
        }),
        RequestedValue = schema.new({
            id = id.from(_N, "SettingEntry", "RequestedValue"),
            type = "string",
            name = "RequestedValue",
            target_id = prelude.String.id,
        }),
        RequestStatus = schema.new({
            id = id.from(_N, "SettingEntry", "RequestStatus"),
            type = "string",
            name = "RequestStatus",
            target_id = prelude.String.id,
        }),
        RequestDetailedStatus = schema.new({
            id = id.from(_N, "SettingEntry", "RequestDetailedStatus"),
            type = "map",
            name = "RequestDetailedStatus",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        RequestStatusMessage = schema.new({
            id = id.from(_N, "SettingEntry", "RequestStatusMessage"),
            type = "string",
            name = "RequestStatusMessage",
            target_id = prelude.String.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "SettingEntry", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastRequestedDateTime = schema.new({
            id = id.from(_N, "SettingEntry", "LastRequestedDateTime"),
            type = "timestamp",
            name = "LastRequestedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        DataType = schema.new({
            id = id.from(_N, "SettingEntry", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSettingsOutput = schema.new({
    id = id.from(_N, "DescribeSettingsResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeSettingsOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        SettingEntries = schema.new({
            id = id.from(_N, "DescribeSettingsOutput", "SettingEntries"),
            type = "list",
            name = "SettingEntries",
            target_id = prelude.Document.id,
            list_member = M.SettingEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSettingsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSharedDirectoriesInput = schema.new({
    id = id.from(_N, "DescribeSharedDirectoriesRequest"),
    type = "structure",
    members = {
        OwnerDirectoryId = schema.new({
            id = id.from(_N, "DescribeSharedDirectoriesInput", "OwnerDirectoryId"),
            type = "string",
            name = "OwnerDirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SharedDirectoryIds = schema.new({
            id = id.from(_N, "DescribeSharedDirectoriesInput", "SharedDirectoryIds"),
            type = "list",
            name = "SharedDirectoryIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSharedDirectoriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeSharedDirectoriesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeSharedDirectoriesOutput = schema.new({
    id = id.from(_N, "DescribeSharedDirectoriesResult"),
    type = "structure",
    members = {
        SharedDirectories = schema.new({
            id = id.from(_N, "DescribeSharedDirectoriesOutput", "SharedDirectories"),
            type = "list",
            name = "SharedDirectories",
            target_id = prelude.Document.id,
            list_member = M.SharedDirectory,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSharedDirectoriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSnapshotsInput = schema.new({
    id = id.from(_N, "DescribeSnapshotsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        SnapshotIds = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "SnapshotIds"),
            type = "list",
            name = "SnapshotIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Snapshot = schema.new({
    id = id.from(_N, "Snapshot"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "Snapshot", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "Snapshot", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Snapshot", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Snapshot", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Snapshot", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "Snapshot", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeSnapshotsOutput = schema.new({
    id = id.from(_N, "DescribeSnapshotsResult"),
    type = "structure",
    members = {
        Snapshots = schema.new({
            id = id.from(_N, "DescribeSnapshotsOutput", "Snapshots"),
            type = "list",
            name = "Snapshots",
            target_id = prelude.Document.id,
            list_member = M.Snapshot,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSnapshotsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTrustsInput = schema.new({
    id = id.from(_N, "DescribeTrustsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeTrustsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        TrustIds = schema.new({
            id = id.from(_N, "DescribeTrustsInput", "TrustIds"),
            type = "list",
            name = "TrustIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTrustsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeTrustsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Trust = schema.new({
    id = id.from(_N, "Trust"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "Trust", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        TrustId = schema.new({
            id = id.from(_N, "Trust", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
        }),
        RemoteDomainName = schema.new({
            id = id.from(_N, "Trust", "RemoteDomainName"),
            type = "string",
            name = "RemoteDomainName",
            target_id = prelude.String.id,
        }),
        TrustType = schema.new({
            id = id.from(_N, "Trust", "TrustType"),
            type = "string",
            name = "TrustType",
            target_id = prelude.String.id,
        }),
        TrustDirection = schema.new({
            id = id.from(_N, "Trust", "TrustDirection"),
            type = "string",
            name = "TrustDirection",
            target_id = prelude.String.id,
        }),
        TrustState = schema.new({
            id = id.from(_N, "Trust", "TrustState"),
            type = "string",
            name = "TrustState",
            target_id = prelude.String.id,
        }),
        CreatedDateTime = schema.new({
            id = id.from(_N, "Trust", "CreatedDateTime"),
            type = "timestamp",
            name = "CreatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "Trust", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        StateLastUpdatedDateTime = schema.new({
            id = id.from(_N, "Trust", "StateLastUpdatedDateTime"),
            type = "timestamp",
            name = "StateLastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        TrustStateReason = schema.new({
            id = id.from(_N, "Trust", "TrustStateReason"),
            type = "string",
            name = "TrustStateReason",
            target_id = prelude.String.id,
        }),
        SelectiveAuth = schema.new({
            id = id.from(_N, "Trust", "SelectiveAuth"),
            type = "string",
            name = "SelectiveAuth",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTrustsOutput = schema.new({
    id = id.from(_N, "DescribeTrustsResult"),
    type = "structure",
    members = {
        Trusts = schema.new({
            id = id.from(_N, "DescribeTrustsOutput", "Trusts"),
            type = "list",
            name = "Trusts",
            target_id = prelude.Document.id,
            list_member = M.Trust,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTrustsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeUpdateDirectoryInput = schema.new({
    id = id.from(_N, "DescribeUpdateDirectoryRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeUpdateDirectoryInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateType = schema.new({
            id = id.from(_N, "DescribeUpdateDirectoryInput", "UpdateType"),
            type = "string",
            name = "UpdateType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionName = schema.new({
            id = id.from(_N, "DescribeUpdateDirectoryInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeUpdateDirectoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OSUpdateSettings = schema.new({
    id = id.from(_N, "OSUpdateSettings"),
    type = "structure",
    members = {
        OSVersion = schema.new({
            id = id.from(_N, "OSUpdateSettings", "OSVersion"),
            type = "string",
            name = "OSVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateValue = schema.new({
    id = id.from(_N, "UpdateValue"),
    type = "structure",
    members = {
        OSUpdateSettings = schema.new({
            id = id.from(_N, "UpdateValue", "OSUpdateSettings"),
            type = "structure",
            name = "OSUpdateSettings",
            target_id = id.from(_N, "OSUpdateSettings"),
            target = M.OSUpdateSettings,
        }),
    },
})

M.UpdateInfoEntry = schema.new({
    id = id.from(_N, "UpdateInfoEntry"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        InitiatedBy = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "InitiatedBy"),
            type = "string",
            name = "InitiatedBy",
            target_id = prelude.String.id,
        }),
        NewValue = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "NewValue"),
            type = "structure",
            name = "NewValue",
            target_id = id.from(_N, "UpdateValue"),
            target = M.UpdateValue,
        }),
        PreviousValue = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "PreviousValue"),
            type = "structure",
            name = "PreviousValue",
            target_id = id.from(_N, "UpdateValue"),
            target = M.UpdateValue,
        }),
        StartTime = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedDateTime = schema.new({
            id = id.from(_N, "UpdateInfoEntry", "LastUpdatedDateTime"),
            type = "timestamp",
            name = "LastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeUpdateDirectoryOutput = schema.new({
    id = id.from(_N, "DescribeUpdateDirectoryResult"),
    type = "structure",
    members = {
        UpdateActivities = schema.new({
            id = id.from(_N, "DescribeUpdateDirectoryOutput", "UpdateActivities"),
            type = "list",
            name = "UpdateActivities",
            target_id = prelude.Document.id,
            list_member = M.UpdateInfoEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeUpdateDirectoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryInDesiredStateException = schema.new({
    id = id.from(_N, "DirectoryInDesiredStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryInDesiredStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DirectoryInDesiredStateException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryLimits = schema.new({
    id = id.from(_N, "DirectoryLimits"),
    type = "structure",
    members = {
        CloudOnlyDirectoriesLimit = schema.new({
            id = id.from(_N, "DirectoryLimits", "CloudOnlyDirectoriesLimit"),
            type = "integer",
            name = "CloudOnlyDirectoriesLimit",
            target_id = prelude.Integer.id,
        }),
        CloudOnlyDirectoriesCurrentCount = schema.new({
            id = id.from(_N, "DirectoryLimits", "CloudOnlyDirectoriesCurrentCount"),
            type = "integer",
            name = "CloudOnlyDirectoriesCurrentCount",
            target_id = prelude.Integer.id,
        }),
        CloudOnlyDirectoriesLimitReached = schema.new({
            id = id.from(_N, "DirectoryLimits", "CloudOnlyDirectoriesLimitReached"),
            type = "boolean",
            name = "CloudOnlyDirectoriesLimitReached",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CloudOnlyMicrosoftADLimit = schema.new({
            id = id.from(_N, "DirectoryLimits", "CloudOnlyMicrosoftADLimit"),
            type = "integer",
            name = "CloudOnlyMicrosoftADLimit",
            target_id = prelude.Integer.id,
        }),
        CloudOnlyMicrosoftADCurrentCount = schema.new({
            id = id.from(_N, "DirectoryLimits", "CloudOnlyMicrosoftADCurrentCount"),
            type = "integer",
            name = "CloudOnlyMicrosoftADCurrentCount",
            target_id = prelude.Integer.id,
        }),
        CloudOnlyMicrosoftADLimitReached = schema.new({
            id = id.from(_N, "DirectoryLimits", "CloudOnlyMicrosoftADLimitReached"),
            type = "boolean",
            name = "CloudOnlyMicrosoftADLimitReached",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ConnectedDirectoriesLimit = schema.new({
            id = id.from(_N, "DirectoryLimits", "ConnectedDirectoriesLimit"),
            type = "integer",
            name = "ConnectedDirectoriesLimit",
            target_id = prelude.Integer.id,
        }),
        ConnectedDirectoriesCurrentCount = schema.new({
            id = id.from(_N, "DirectoryLimits", "ConnectedDirectoriesCurrentCount"),
            type = "integer",
            name = "ConnectedDirectoriesCurrentCount",
            target_id = prelude.Integer.id,
        }),
        ConnectedDirectoriesLimitReached = schema.new({
            id = id.from(_N, "DirectoryLimits", "ConnectedDirectoriesLimitReached"),
            type = "boolean",
            name = "ConnectedDirectoriesLimitReached",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DirectoryNotSharedException = schema.new({
    id = id.from(_N, "DirectoryNotSharedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryNotSharedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DirectoryNotSharedException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableAlreadyInProgressException = schema.new({
    id = id.from(_N, "DisableAlreadyInProgressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DisableAlreadyInProgressException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DisableAlreadyInProgressException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableCAEnrollmentPolicyInput = schema.new({
    id = id.from(_N, "DisableCAEnrollmentPolicyRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DisableCAEnrollmentPolicyInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableCAEnrollmentPolicyOutput = schema.new({
    id = id.from(_N, "DisableCAEnrollmentPolicyResult"),
    type = "structure",
})

M.DisableClientAuthenticationInput = schema.new({
    id = id.from(_N, "DisableClientAuthenticationRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DisableClientAuthenticationInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DisableClientAuthenticationInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableClientAuthenticationOutput = schema.new({
    id = id.from(_N, "DisableClientAuthenticationResult"),
    type = "structure",
})

M.InvalidClientAuthStatusException = schema.new({
    id = id.from(_N, "InvalidClientAuthStatusException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidClientAuthStatusException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InvalidClientAuthStatusException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableDirectoryDataAccessInput = schema.new({
    id = id.from(_N, "DisableDirectoryDataAccessRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DisableDirectoryDataAccessInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableDirectoryDataAccessOutput = schema.new({
    id = id.from(_N, "DisableDirectoryDataAccessResult"),
    type = "structure",
})

M.DisableLDAPSInput = schema.new({
    id = id.from(_N, "DisableLDAPSRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DisableLDAPSInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DisableLDAPSInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableLDAPSOutput = schema.new({
    id = id.from(_N, "DisableLDAPSResult"),
    type = "structure",
})

M.InvalidLDAPSStatusException = schema.new({
    id = id.from(_N, "InvalidLDAPSStatusException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidLDAPSStatusException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InvalidLDAPSStatusException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableRadiusInput = schema.new({
    id = id.from(_N, "DisableRadiusRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DisableRadiusInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableRadiusOutput = schema.new({
    id = id.from(_N, "DisableRadiusResult"),
    type = "structure",
})

M.DisableSsoInput = schema.new({
    id = id.from(_N, "DisableSsoRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "DisableSsoInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "DisableSsoInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "DisableSsoInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableSsoOutput = schema.new({
    id = id.from(_N, "DisableSsoResult"),
    type = "structure",
})

M.EnableAlreadyInProgressException = schema.new({
    id = id.from(_N, "EnableAlreadyInProgressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EnableAlreadyInProgressException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "EnableAlreadyInProgressException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.EnableCAEnrollmentPolicyInput = schema.new({
    id = id.from(_N, "EnableCAEnrollmentPolicyRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "EnableCAEnrollmentPolicyInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PcaConnectorArn = schema.new({
            id = id.from(_N, "EnableCAEnrollmentPolicyInput", "PcaConnectorArn"),
            type = "string",
            name = "PcaConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableCAEnrollmentPolicyOutput = schema.new({
    id = id.from(_N, "EnableCAEnrollmentPolicyResult"),
    type = "structure",
})

M.EnableClientAuthenticationInput = schema.new({
    id = id.from(_N, "EnableClientAuthenticationRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "EnableClientAuthenticationInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "EnableClientAuthenticationInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableClientAuthenticationOutput = schema.new({
    id = id.from(_N, "EnableClientAuthenticationResult"),
    type = "structure",
})

M.NoAvailableCertificateException = schema.new({
    id = id.from(_N, "NoAvailableCertificateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoAvailableCertificateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "NoAvailableCertificateException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.EnableDirectoryDataAccessInput = schema.new({
    id = id.from(_N, "EnableDirectoryDataAccessRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "EnableDirectoryDataAccessInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableDirectoryDataAccessOutput = schema.new({
    id = id.from(_N, "EnableDirectoryDataAccessResult"),
    type = "structure",
})

M.EnableLDAPSInput = schema.new({
    id = id.from(_N, "EnableLDAPSRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "EnableLDAPSInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "EnableLDAPSInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableLDAPSOutput = schema.new({
    id = id.from(_N, "EnableLDAPSResult"),
    type = "structure",
})

M.EnableRadiusInput = schema.new({
    id = id.from(_N, "EnableRadiusRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "EnableRadiusInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RadiusSettings = schema.new({
            id = id.from(_N, "EnableRadiusInput", "RadiusSettings"),
            type = "structure",
            name = "RadiusSettings",
            target_id = id.from(_N, "RadiusSettings"),
            target = M.RadiusSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableRadiusOutput = schema.new({
    id = id.from(_N, "EnableRadiusResult"),
    type = "structure",
})

M.EnableSsoInput = schema.new({
    id = id.from(_N, "EnableSsoRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "EnableSsoInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "EnableSsoInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "EnableSsoInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
    },
})

M.EnableSsoOutput = schema.new({
    id = id.from(_N, "EnableSsoResult"),
    type = "structure",
})

M.GetDirectoryLimitsInput = schema.new({
    id = id.from(_N, "GetDirectoryLimitsRequest"),
    type = "structure",
})

M.GetDirectoryLimitsOutput = schema.new({
    id = id.from(_N, "GetDirectoryLimitsResult"),
    type = "structure",
    members = {
        DirectoryLimits = schema.new({
            id = id.from(_N, "GetDirectoryLimitsOutput", "DirectoryLimits"),
            type = "structure",
            name = "DirectoryLimits",
            target_id = id.from(_N, "DirectoryLimits"),
            target = M.DirectoryLimits,
        }),
    },
})

M.GetSnapshotLimitsInput = schema.new({
    id = id.from(_N, "GetSnapshotLimitsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "GetSnapshotLimitsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SnapshotLimits = schema.new({
    id = id.from(_N, "SnapshotLimits"),
    type = "structure",
    members = {
        ManualSnapshotsLimit = schema.new({
            id = id.from(_N, "SnapshotLimits", "ManualSnapshotsLimit"),
            type = "integer",
            name = "ManualSnapshotsLimit",
            target_id = prelude.Integer.id,
        }),
        ManualSnapshotsCurrentCount = schema.new({
            id = id.from(_N, "SnapshotLimits", "ManualSnapshotsCurrentCount"),
            type = "integer",
            name = "ManualSnapshotsCurrentCount",
            target_id = prelude.Integer.id,
        }),
        ManualSnapshotsLimitReached = schema.new({
            id = id.from(_N, "SnapshotLimits", "ManualSnapshotsLimitReached"),
            type = "boolean",
            name = "ManualSnapshotsLimitReached",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetSnapshotLimitsOutput = schema.new({
    id = id.from(_N, "GetSnapshotLimitsResult"),
    type = "structure",
    members = {
        SnapshotLimits = schema.new({
            id = id.from(_N, "GetSnapshotLimitsOutput", "SnapshotLimits"),
            type = "structure",
            name = "SnapshotLimits",
            target_id = id.from(_N, "SnapshotLimits"),
            target = M.SnapshotLimits,
        }),
    },
})

M.ListADAssessmentsInput = schema.new({
    id = id.from(_N, "ListADAssessmentsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ListADAssessmentsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListADAssessmentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListADAssessmentsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListADAssessmentsOutput = schema.new({
    id = id.from(_N, "ListADAssessmentsResult"),
    type = "structure",
    members = {
        Assessments = schema.new({
            id = id.from(_N, "ListADAssessmentsOutput", "Assessments"),
            type = "list",
            name = "Assessments",
            target_id = prelude.Document.id,
            list_member = M.AssessmentSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListADAssessmentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCertificatesInput = schema.new({
    id = id.from(_N, "ListCertificatesRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ListCertificatesInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCertificatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListCertificatesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListCertificatesOutput = schema.new({
    id = id.from(_N, "ListCertificatesResult"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCertificatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        CertificatesInfo = schema.new({
            id = id.from(_N, "ListCertificatesOutput", "CertificatesInfo"),
            type = "list",
            name = "CertificatesInfo",
            target_id = prelude.Document.id,
            list_member = M.CertificateInfo,
        }),
    },
})

M.ListIpRoutesInput = schema.new({
    id = id.from(_N, "ListIpRoutesRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ListIpRoutesInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListIpRoutesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListIpRoutesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.IpRouteInfo = schema.new({
    id = id.from(_N, "IpRouteInfo"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "IpRouteInfo", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        CidrIp = schema.new({
            id = id.from(_N, "IpRouteInfo", "CidrIp"),
            type = "string",
            name = "CidrIp",
            target_id = prelude.String.id,
        }),
        CidrIpv6 = schema.new({
            id = id.from(_N, "IpRouteInfo", "CidrIpv6"),
            type = "string",
            name = "CidrIpv6",
            target_id = prelude.String.id,
        }),
        IpRouteStatusMsg = schema.new({
            id = id.from(_N, "IpRouteInfo", "IpRouteStatusMsg"),
            type = "string",
            name = "IpRouteStatusMsg",
            target_id = prelude.String.id,
        }),
        AddedDateTime = schema.new({
            id = id.from(_N, "IpRouteInfo", "AddedDateTime"),
            type = "timestamp",
            name = "AddedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        IpRouteStatusReason = schema.new({
            id = id.from(_N, "IpRouteInfo", "IpRouteStatusReason"),
            type = "string",
            name = "IpRouteStatusReason",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "IpRouteInfo", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIpRoutesOutput = schema.new({
    id = id.from(_N, "ListIpRoutesResult"),
    type = "structure",
    members = {
        IpRoutesInfo = schema.new({
            id = id.from(_N, "ListIpRoutesOutput", "IpRoutesInfo"),
            type = "list",
            name = "IpRoutesInfo",
            target_id = prelude.Document.id,
            list_member = M.IpRouteInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListIpRoutesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLogSubscriptionsInput = schema.new({
    id = id.from(_N, "ListLogSubscriptionsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ListLogSubscriptionsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLogSubscriptionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListLogSubscriptionsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LogSubscription = schema.new({
    id = id.from(_N, "LogSubscription"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "LogSubscription", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        LogGroupName = schema.new({
            id = id.from(_N, "LogSubscription", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
        }),
        SubscriptionCreatedDateTime = schema.new({
            id = id.from(_N, "LogSubscription", "SubscriptionCreatedDateTime"),
            type = "timestamp",
            name = "SubscriptionCreatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListLogSubscriptionsOutput = schema.new({
    id = id.from(_N, "ListLogSubscriptionsResult"),
    type = "structure",
    members = {
        LogSubscriptions = schema.new({
            id = id.from(_N, "ListLogSubscriptionsOutput", "LogSubscriptions"),
            type = "list",
            name = "LogSubscriptions",
            target_id = prelude.Document.id,
            list_member = M.LogSubscription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLogSubscriptionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSchemaExtensionsInput = schema.new({
    id = id.from(_N, "ListSchemaExtensionsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ListSchemaExtensionsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchemaExtensionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListSchemaExtensionsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SchemaExtensionInfo = schema.new({
    id = id.from(_N, "SchemaExtensionInfo"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "SchemaExtensionInfo", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        SchemaExtensionId = schema.new({
            id = id.from(_N, "SchemaExtensionInfo", "SchemaExtensionId"),
            type = "string",
            name = "SchemaExtensionId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "SchemaExtensionInfo", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SchemaExtensionStatus = schema.new({
            id = id.from(_N, "SchemaExtensionInfo", "SchemaExtensionStatus"),
            type = "string",
            name = "SchemaExtensionStatus",
            target_id = prelude.String.id,
        }),
        SchemaExtensionStatusReason = schema.new({
            id = id.from(_N, "SchemaExtensionInfo", "SchemaExtensionStatusReason"),
            type = "string",
            name = "SchemaExtensionStatusReason",
            target_id = prelude.String.id,
        }),
        StartDateTime = schema.new({
            id = id.from(_N, "SchemaExtensionInfo", "StartDateTime"),
            type = "timestamp",
            name = "StartDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "SchemaExtensionInfo", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSchemaExtensionsOutput = schema.new({
    id = id.from(_N, "ListSchemaExtensionsResult"),
    type = "structure",
    members = {
        SchemaExtensionsInfo = schema.new({
            id = id.from(_N, "ListSchemaExtensionsOutput", "SchemaExtensionsInfo"),
            type = "list",
            name = "SchemaExtensionsInfo",
            target_id = prelude.Document.id,
            list_member = M.SchemaExtensionInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchemaExtensionsOutput", "NextToken"),
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
        ResourceId = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResult"),
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

M.InvalidCertificateException = schema.new({
    id = id.from(_N, "InvalidCertificateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidCertificateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InvalidCertificateException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterCertificateInput = schema.new({
    id = id.from(_N, "RegisterCertificateRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "RegisterCertificateInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateData = schema.new({
            id = id.from(_N, "RegisterCertificateInput", "CertificateData"),
            type = "string",
            name = "CertificateData",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "RegisterCertificateInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ClientCertAuthSettings = schema.new({
            id = id.from(_N, "RegisterCertificateInput", "ClientCertAuthSettings"),
            type = "structure",
            name = "ClientCertAuthSettings",
            target_id = id.from(_N, "ClientCertAuthSettings"),
            target = M.ClientCertAuthSettings,
        }),
    },
})

M.RegisterCertificateOutput = schema.new({
    id = id.from(_N, "RegisterCertificateResult"),
    type = "structure",
    members = {
        CertificateId = schema.new({
            id = id.from(_N, "RegisterCertificateOutput", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterEventTopicInput = schema.new({
    id = id.from(_N, "RegisterEventTopicRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "RegisterEventTopicInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TopicName = schema.new({
            id = id.from(_N, "RegisterEventTopicInput", "TopicName"),
            type = "string",
            name = "TopicName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterEventTopicOutput = schema.new({
    id = id.from(_N, "RegisterEventTopicResult"),
    type = "structure",
})

M.RejectSharedDirectoryInput = schema.new({
    id = id.from(_N, "RejectSharedDirectoryRequest"),
    type = "structure",
    members = {
        SharedDirectoryId = schema.new({
            id = id.from(_N, "RejectSharedDirectoryInput", "SharedDirectoryId"),
            type = "string",
            name = "SharedDirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RejectSharedDirectoryOutput = schema.new({
    id = id.from(_N, "RejectSharedDirectoryResult"),
    type = "structure",
    members = {
        SharedDirectoryId = schema.new({
            id = id.from(_N, "RejectSharedDirectoryOutput", "SharedDirectoryId"),
            type = "string",
            name = "SharedDirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveIpRoutesInput = schema.new({
    id = id.from(_N, "RemoveIpRoutesRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "RemoveIpRoutesInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CidrIps = schema.new({
            id = id.from(_N, "RemoveIpRoutesInput", "CidrIps"),
            type = "list",
            name = "CidrIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
        CidrIpv6s = schema.new({
            id = id.from(_N, "RemoveIpRoutesInput", "CidrIpv6s"),
            type = "list",
            name = "CidrIpv6s",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RemoveIpRoutesOutput = schema.new({
    id = id.from(_N, "RemoveIpRoutesResult"),
    type = "structure",
})

M.RemoveRegionInput = schema.new({
    id = id.from(_N, "RemoveRegionRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "RemoveRegionInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveRegionOutput = schema.new({
    id = id.from(_N, "RemoveRegionResult"),
    type = "structure",
})

M.RemoveTagsFromResourceInput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceRequest"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "TagKeys"),
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

M.RemoveTagsFromResourceOutput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceResult"),
    type = "structure",
})

M.InvalidPasswordException = schema.new({
    id = id.from(_N, "InvalidPasswordException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidPasswordException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InvalidPasswordException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResetUserPasswordInput = schema.new({
    id = id.from(_N, "ResetUserPasswordRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ResetUserPasswordInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "ResetUserPasswordInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewPassword = schema.new({
            id = id.from(_N, "ResetUserPasswordInput", "NewPassword"),
            type = "string",
            name = "NewPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResetUserPasswordOutput = schema.new({
    id = id.from(_N, "ResetUserPasswordResult"),
    type = "structure",
})

M.UserDoesNotExistException = schema.new({
    id = id.from(_N, "UserDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UserDoesNotExistException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "UserDoesNotExistException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreFromSnapshotInput = schema.new({
    id = id.from(_N, "RestoreFromSnapshotRequest"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "RestoreFromSnapshotInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RestoreFromSnapshotOutput = schema.new({
    id = id.from(_N, "RestoreFromSnapshotResult"),
    type = "structure",
})

M.InvalidTargetException = schema.new({
    id = id.from(_N, "InvalidTargetException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTargetException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InvalidTargetException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.OrganizationsException = schema.new({
    id = id.from(_N, "OrganizationsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OrganizationsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "OrganizationsException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.ShareTarget = schema.new({
    id = id.from(_N, "ShareTarget"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ShareTarget", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ShareTarget", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ShareDirectoryInput = schema.new({
    id = id.from(_N, "ShareDirectoryRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "ShareDirectoryInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShareNotes = schema.new({
            id = id.from(_N, "ShareDirectoryInput", "ShareNotes"),
            type = "string",
            name = "ShareNotes",
            target_id = prelude.String.id,
        }),
        ShareTarget = schema.new({
            id = id.from(_N, "ShareDirectoryInput", "ShareTarget"),
            type = "structure",
            name = "ShareTarget",
            target_id = id.from(_N, "ShareTarget"),
            target = M.ShareTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShareMethod = schema.new({
            id = id.from(_N, "ShareDirectoryInput", "ShareMethod"),
            type = "string",
            name = "ShareMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ShareDirectoryOutput = schema.new({
    id = id.from(_N, "ShareDirectoryResult"),
    type = "structure",
    members = {
        SharedDirectoryId = schema.new({
            id = id.from(_N, "ShareDirectoryOutput", "SharedDirectoryId"),
            type = "string",
            name = "SharedDirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.ShareLimitExceededException = schema.new({
    id = id.from(_N, "ShareLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ShareLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "ShareLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartADAssessmentInput = schema.new({
    id = id.from(_N, "StartADAssessmentRequest"),
    type = "structure",
    members = {
        AssessmentConfiguration = schema.new({
            id = id.from(_N, "StartADAssessmentInput", "AssessmentConfiguration"),
            type = "structure",
            name = "AssessmentConfiguration",
            target_id = id.from(_N, "AssessmentConfiguration"),
            target = M.AssessmentConfiguration,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "StartADAssessmentInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartADAssessmentOutput = schema.new({
    id = id.from(_N, "StartADAssessmentResult"),
    type = "structure",
    members = {
        AssessmentId = schema.new({
            id = id.from(_N, "StartADAssessmentOutput", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSchemaExtensionInput = schema.new({
    id = id.from(_N, "StartSchemaExtensionRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "StartSchemaExtensionInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateSnapshotBeforeSchemaExtension = schema.new({
            id = id.from(_N, "StartSchemaExtensionInput", "CreateSnapshotBeforeSchemaExtension"),
            type = "boolean",
            name = "CreateSnapshotBeforeSchemaExtension",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        LdifContent = schema.new({
            id = id.from(_N, "StartSchemaExtensionInput", "LdifContent"),
            type = "string",
            name = "LdifContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "StartSchemaExtensionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartSchemaExtensionOutput = schema.new({
    id = id.from(_N, "StartSchemaExtensionResult"),
    type = "structure",
    members = {
        SchemaExtensionId = schema.new({
            id = id.from(_N, "StartSchemaExtensionOutput", "SchemaExtensionId"),
            type = "string",
            name = "SchemaExtensionId",
            target_id = prelude.String.id,
        }),
    },
})

M.UnshareTarget = schema.new({
    id = id.from(_N, "UnshareTarget"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UnshareTarget", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "UnshareTarget", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnshareDirectoryInput = schema.new({
    id = id.from(_N, "UnshareDirectoryRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UnshareDirectoryInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UnshareTarget = schema.new({
            id = id.from(_N, "UnshareDirectoryInput", "UnshareTarget"),
            type = "structure",
            name = "UnshareTarget",
            target_id = id.from(_N, "UnshareTarget"),
            target = M.UnshareTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnshareDirectoryOutput = schema.new({
    id = id.from(_N, "UnshareDirectoryResult"),
    type = "structure",
    members = {
        SharedDirectoryId = schema.new({
            id = id.from(_N, "UnshareDirectoryOutput", "SharedDirectoryId"),
            type = "string",
            name = "SharedDirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConditionalForwarderInput = schema.new({
    id = id.from(_N, "UpdateConditionalForwarderRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateConditionalForwarderInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RemoteDomainName = schema.new({
            id = id.from(_N, "UpdateConditionalForwarderInput", "RemoteDomainName"),
            type = "string",
            name = "RemoteDomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DnsIpAddrs = schema.new({
            id = id.from(_N, "UpdateConditionalForwarderInput", "DnsIpAddrs"),
            type = "list",
            name = "DnsIpAddrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
        DnsIpv6Addrs = schema.new({
            id = id.from(_N, "UpdateConditionalForwarderInput", "DnsIpv6Addrs"),
            type = "list",
            name = "DnsIpv6Addrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateConditionalForwarderOutput = schema.new({
    id = id.from(_N, "UpdateConditionalForwarderResult"),
    type = "structure",
})

M.DirectorySizeUpdateSettings = schema.new({
    id = id.from(_N, "DirectorySizeUpdateSettings"),
    type = "structure",
    members = {
        DirectorySize = schema.new({
            id = id.from(_N, "DirectorySizeUpdateSettings", "DirectorySize"),
            type = "string",
            name = "DirectorySize",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkUpdateSettings = schema.new({
    id = id.from(_N, "NetworkUpdateSettings"),
    type = "structure",
    members = {
        NetworkType = schema.new({
            id = id.from(_N, "NetworkUpdateSettings", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        CustomerDnsIpsV6 = schema.new({
            id = id.from(_N, "NetworkUpdateSettings", "CustomerDnsIpsV6"),
            type = "list",
            name = "CustomerDnsIpsV6",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateDirectorySetupInput = schema.new({
    id = id.from(_N, "UpdateDirectorySetupRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateDirectorySetupInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateType = schema.new({
            id = id.from(_N, "UpdateDirectorySetupInput", "UpdateType"),
            type = "string",
            name = "UpdateType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OSUpdateSettings = schema.new({
            id = id.from(_N, "UpdateDirectorySetupInput", "OSUpdateSettings"),
            type = "structure",
            name = "OSUpdateSettings",
            target_id = id.from(_N, "OSUpdateSettings"),
            target = M.OSUpdateSettings,
        }),
        DirectorySizeUpdateSettings = schema.new({
            id = id.from(_N, "UpdateDirectorySetupInput", "DirectorySizeUpdateSettings"),
            type = "structure",
            name = "DirectorySizeUpdateSettings",
            target_id = id.from(_N, "DirectorySizeUpdateSettings"),
            target = M.DirectorySizeUpdateSettings,
        }),
        NetworkUpdateSettings = schema.new({
            id = id.from(_N, "UpdateDirectorySetupInput", "NetworkUpdateSettings"),
            type = "structure",
            name = "NetworkUpdateSettings",
            target_id = id.from(_N, "NetworkUpdateSettings"),
            target = M.NetworkUpdateSettings,
        }),
        CreateSnapshotBeforeUpdate = schema.new({
            id = id.from(_N, "UpdateDirectorySetupInput", "CreateSnapshotBeforeUpdate"),
            type = "boolean",
            name = "CreateSnapshotBeforeUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.UpdateDirectorySetupOutput = schema.new({
    id = id.from(_N, "UpdateDirectorySetupResult"),
    type = "structure",
})

M.HybridAdministratorAccountUpdate = schema.new({
    id = id.from(_N, "HybridAdministratorAccountUpdate"),
    type = "structure",
    members = {
        SecretArn = schema.new({
            id = id.from(_N, "HybridAdministratorAccountUpdate", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HybridCustomerInstancesSettings = schema.new({
    id = id.from(_N, "HybridCustomerInstancesSettings"),
    type = "structure",
    members = {
        CustomerDnsIps = schema.new({
            id = id.from(_N, "HybridCustomerInstancesSettings", "CustomerDnsIps"),
            type = "list",
            name = "CustomerDnsIps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceIds = schema.new({
            id = id.from(_N, "HybridCustomerInstancesSettings", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateHybridADInput = schema.new({
    id = id.from(_N, "UpdateHybridADRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateHybridADInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HybridAdministratorAccountUpdate = schema.new({
            id = id.from(_N, "UpdateHybridADInput", "HybridAdministratorAccountUpdate"),
            type = "structure",
            name = "HybridAdministratorAccountUpdate",
            target_id = id.from(_N, "HybridAdministratorAccountUpdate"),
            target = M.HybridAdministratorAccountUpdate,
        }),
        SelfManagedInstancesSettings = schema.new({
            id = id.from(_N, "UpdateHybridADInput", "SelfManagedInstancesSettings"),
            type = "structure",
            name = "SelfManagedInstancesSettings",
            target_id = id.from(_N, "HybridCustomerInstancesSettings"),
            target = M.HybridCustomerInstancesSettings,
        }),
    },
})

M.UpdateHybridADOutput = schema.new({
    id = id.from(_N, "UpdateHybridADResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateHybridADOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        AssessmentId = schema.new({
            id = id.from(_N, "UpdateHybridADOutput", "AssessmentId"),
            type = "string",
            name = "AssessmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.DomainControllerLimitExceededException = schema.new({
    id = id.from(_N, "DomainControllerLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DomainControllerLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "DomainControllerLimitExceededException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateNumberOfDomainControllersInput = schema.new({
    id = id.from(_N, "UpdateNumberOfDomainControllersRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateNumberOfDomainControllersInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DesiredNumber = schema.new({
            id = id.from(_N, "UpdateNumberOfDomainControllersInput", "DesiredNumber"),
            type = "integer",
            name = "DesiredNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateNumberOfDomainControllersOutput = schema.new({
    id = id.from(_N, "UpdateNumberOfDomainControllersResult"),
    type = "structure",
})

M.UpdateRadiusInput = schema.new({
    id = id.from(_N, "UpdateRadiusRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateRadiusInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RadiusSettings = schema.new({
            id = id.from(_N, "UpdateRadiusInput", "RadiusSettings"),
            type = "structure",
            name = "RadiusSettings",
            target_id = id.from(_N, "RadiusSettings"),
            target = M.RadiusSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRadiusOutput = schema.new({
    id = id.from(_N, "UpdateRadiusResult"),
    type = "structure",
})

M.IncompatibleSettingsException = schema.new({
    id = id.from(_N, "IncompatibleSettingsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IncompatibleSettingsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "IncompatibleSettingsException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedSettingsException = schema.new({
    id = id.from(_N, "UnsupportedSettingsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedSettingsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "UnsupportedSettingsException", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.Setting = schema.new({
    id = id.from(_N, "Setting"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Setting", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Setting", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSettingsInput = schema.new({
    id = id.from(_N, "UpdateSettingsRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Settings = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "Settings"),
            type = "list",
            name = "Settings",
            target_id = prelude.Document.id,
            list_member = M.Setting,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSettingsOutput = schema.new({
    id = id.from(_N, "UpdateSettingsResult"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "UpdateSettingsOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTrustInput = schema.new({
    id = id.from(_N, "UpdateTrustRequest"),
    type = "structure",
    members = {
        TrustId = schema.new({
            id = id.from(_N, "UpdateTrustInput", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectiveAuth = schema.new({
            id = id.from(_N, "UpdateTrustInput", "SelectiveAuth"),
            type = "string",
            name = "SelectiveAuth",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTrustOutput = schema.new({
    id = id.from(_N, "UpdateTrustResult"),
    type = "structure",
    members = {
        RequestId = schema.new({
            id = id.from(_N, "UpdateTrustOutput", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
        }),
        TrustId = schema.new({
            id = id.from(_N, "UpdateTrustOutput", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
        }),
    },
})

M.VerifyTrustInput = schema.new({
    id = id.from(_N, "VerifyTrustRequest"),
    type = "structure",
    members = {
        TrustId = schema.new({
            id = id.from(_N, "VerifyTrustInput", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VerifyTrustOutput = schema.new({
    id = id.from(_N, "VerifyTrustResult"),
    type = "structure",
    members = {
        TrustId = schema.new({
            id = id.from(_N, "VerifyTrustOutput", "TrustId"),
            type = "string",
            name = "TrustId",
            target_id = prelude.String.id,
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
