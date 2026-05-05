local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloudfront"

local M = {}

M.IpamCidrConfigList = schema.new({ type = "list", list_member = M.IpamCidrConfig })

M.DomainList = schema.new({ type = "list", list_member = M.DomainItem })

M.Parameters = schema.new({ type = "list", list_member = M.Parameter })

M.EndPointList = schema.new({ type = "list", list_member = M.EndPoint })

M.FieldList = schema.new({ type = "list", list_member = prelude.String })

M.ConnectionFunctionSummaryList = schema.new({ type = "list", list_member = M.ConnectionFunctionSummary })

M.ConnectionGroupSummaryList = schema.new({ type = "list", list_member = M.ConnectionGroupSummary })

M.DistributionTenantList = schema.new({ type = "list", list_member = M.DistributionTenantSummary })

M.DomainConflictsList = schema.new({ type = "list", list_member = M.DomainConflict })

M.TrustStoreList = schema.new({ type = "list", list_member = M.TrustStoreSummary })

M.DnsConfigurationList = schema.new({ type = "list", list_member = M.DnsConfiguration })

M.AliasICPRecordals = schema.new({ type = "list", list_member = M.AliasICPRecordal })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.AnycastIps = schema.new({ type = "list", list_member = prelude.String })

M.DomainResultList = schema.new({ type = "list", list_member = M.DomainResult })

M.PublicKeyIdList = schema.new({ type = "list", list_member = prelude.String })

M.ValidationTokenDetailList = schema.new({ type = "list", list_member = M.ValidationTokenDetail })

M.AnycastIpListSummaries = schema.new({ type = "list", list_member = M.AnycastIpListSummary })

M.CachePolicySummaryList = schema.new({ type = "list", list_member = M.CachePolicySummary })

M.CloudFrontOriginAccessIdentitySummaryList = schema.new({ type = "list", list_member = M.CloudFrontOriginAccessIdentitySummary })

M.ConflictingAliases = schema.new({ type = "list", list_member = M.ConflictingAlias })

M.ContinuousDeploymentPolicySummaryList = schema.new({ type = "list", list_member = M.ContinuousDeploymentPolicySummary })

M.DistributionSummaryList = schema.new({ type = "list", list_member = M.DistributionSummary })

M.DistributionIdListSummary = schema.new({ type = "list", list_member = prelude.String })

M.DistributionIdOwnerItemList = schema.new({ type = "list", list_member = M.DistributionIdOwner })

M.FieldLevelEncryptionSummaryList = schema.new({ type = "list", list_member = M.FieldLevelEncryptionSummary })

M.FieldLevelEncryptionProfileSummaryList = schema.new({ type = "list", list_member = M.FieldLevelEncryptionProfileSummary })

M.FunctionSummaryList = schema.new({ type = "list", list_member = M.FunctionSummary })

M.InvalidationSummaryList = schema.new({ type = "list", list_member = M.InvalidationSummary })

M.KeyGroupSummaryList = schema.new({ type = "list", list_member = M.KeyGroupSummary })

M.KeyValueStoreSummaryList = schema.new({ type = "list", list_member = M.KeyValueStore })

M.OriginAccessControlSummaryList = schema.new({ type = "list", list_member = M.OriginAccessControlSummary })

M.OriginRequestPolicySummaryList = schema.new({ type = "list", list_member = M.OriginRequestPolicySummary })

M.PublicKeySummaryList = schema.new({ type = "list", list_member = M.PublicKeySummary })

M.RealtimeLogConfigList = schema.new({ type = "list", list_member = M.RealtimeLogConfig })

M.ResponseHeadersPolicySummaryList = schema.new({ type = "list", list_member = M.ResponseHeadersPolicySummary })

M.StreamingDistributionSummaryList = schema.new({ type = "list", list_member = M.StreamingDistributionSummary })

M.VpcOriginSummaryList = schema.new({ type = "list", list_member = M.VpcOriginSummary })

M.FunctionExecutionLogList = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.SignerList = schema.new({ type = "list", list_member = M.Signer })

M.KGKeyPairIdsList = schema.new({ type = "list", list_member = M.KGKeyPairIds })

M.KeyValueStoreAssociationList = schema.new({ type = "list", list_member = M.KeyValueStoreAssociation })

M.StagingDistributionDnsNameList = schema.new({ type = "list", list_member = prelude.String })

M.AliasList = schema.new({ type = "list", list_member = prelude.String })

M.OriginList = schema.new({ type = "list", list_member = M.Origin })

M.OriginGroupList = schema.new({ type = "list", list_member = M.OriginGroup })

M.CacheBehaviorList = schema.new({ type = "list", list_member = M.CacheBehavior })

M.CustomErrorResponseList = schema.new({ type = "list", list_member = M.CustomErrorResponse })

M.ParameterDefinitions = schema.new({ type = "list", list_member = M.ParameterDefinition })

M.LocationList = schema.new({ type = "list", list_member = prelude.String })

M.EncryptionEntityList = schema.new({ type = "list", list_member = M.EncryptionEntity })

M.PathList = schema.new({ type = "list", list_member = prelude.String })

M.ResponseHeadersPolicyCustomHeaderList = schema.new({ type = "list", list_member = M.ResponseHeadersPolicyCustomHeader })

M.ResponseHeadersPolicyRemoveHeaderList = schema.new({ type = "list", list_member = M.ResponseHeadersPolicyRemoveHeader })

M.AwsAccountNumberList = schema.new({ type = "list", list_member = prelude.String })

M.SslProtocolsList = schema.new({ type = "list", list_member = prelude.String })

M.TrustedKeyGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.MethodsList = schema.new({ type = "list", list_member = prelude.String })

M.LambdaFunctionAssociationList = schema.new({ type = "list", list_member = M.LambdaFunctionAssociation })

M.FunctionAssociationList = schema.new({ type = "list", list_member = M.FunctionAssociation })

M.QueryArgProfileList = schema.new({ type = "list", list_member = M.QueryArgProfile })

M.ContentTypeProfileList = schema.new({ type = "list", list_member = M.ContentTypeProfile })

M.HeaderList = schema.new({ type = "list", list_member = prelude.String })

M.CookieNameList = schema.new({ type = "list", list_member = prelude.String })

M.QueryStringNamesList = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlAllowOriginsList = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlAllowHeadersList = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlAllowMethodsList = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlExposeHeadersList = schema.new({ type = "list", list_member = prelude.String })

M.QueryStringCacheKeysList = schema.new({ type = "list", list_member = prelude.String })

M.KeyPairIdList = schema.new({ type = "list", list_member = prelude.String })

M.OriginCustomHeadersList = schema.new({ type = "list", list_member = M.OriginCustomHeader })

M.OriginGroupMemberList = schema.new({ type = "list", list_member = M.OriginGroupMember })

M.FieldPatternList = schema.new({ type = "list", list_member = prelude.String })

M.StatusCodeList = schema.new({ type = "list", list_member = prelude.Integer })

M.AccessDenied = schema.new({
    id = id.from(_N, "AccessDenied"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDenied", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.KeyPairIds = schema.new({
    id = id.from(_N, "KeyPairIds"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "KeyPairIds", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "KeyPairIds", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "KeyPairId" } } }),
        }),
    },
})

M.KGKeyPairIds = schema.new({
    id = id.from(_N, "KGKeyPairIds"),
    type = "structure",
    members = {
        KeyGroupId = schema.new({
            id = id.from(_N, "KGKeyPairIds", "KeyGroupId"),
            type = "string",
            name = "KeyGroupId",
            target_id = prelude.String.id,
        }),
        KeyPairIds = schema.new({
            id = id.from(_N, "KGKeyPairIds", "KeyPairIds"),
            type = "structure",
            name = "KeyPairIds",
            target_id = id.from(_N, "KeyPairIds"),
            target = M.KeyPairIds,
        }),
    },
})

M.ActiveTrustedKeyGroups = schema.new({
    id = id.from(_N, "ActiveTrustedKeyGroups"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ActiveTrustedKeyGroups", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "ActiveTrustedKeyGroups", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ActiveTrustedKeyGroups", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.KGKeyPairIds, traits = { [traits.XML_NAME] = { name = "KeyGroup" } } }),
        }),
    },
})

M.Signer = schema.new({
    id = id.from(_N, "Signer"),
    type = "structure",
    members = {
        AwsAccountNumber = schema.new({
            id = id.from(_N, "Signer", "AwsAccountNumber"),
            type = "string",
            name = "AwsAccountNumber",
            target_id = prelude.String.id,
        }),
        KeyPairIds = schema.new({
            id = id.from(_N, "Signer", "KeyPairIds"),
            type = "structure",
            name = "KeyPairIds",
            target_id = id.from(_N, "KeyPairIds"),
            target = M.KeyPairIds,
        }),
    },
})

M.ActiveTrustedSigners = schema.new({
    id = id.from(_N, "ActiveTrustedSigners"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ActiveTrustedSigners", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "ActiveTrustedSigners", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ActiveTrustedSigners", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Signer, traits = { [traits.XML_NAME] = { name = "Signer" } } }),
        }),
    },
})

M.Aliases = schema.new({
    id = id.from(_N, "Aliases"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "Aliases", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "Aliases", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CNAME" } } }),
        }),
    },
})

M.AliasICPRecordal = schema.new({
    id = id.from(_N, "AliasICPRecordal"),
    type = "structure",
    members = {
        CNAME = schema.new({
            id = id.from(_N, "AliasICPRecordal", "CNAME"),
            type = "string",
            name = "CNAME",
            target_id = prelude.String.id,
        }),
        ICPRecordalStatus = schema.new({
            id = id.from(_N, "AliasICPRecordal", "ICPRecordalStatus"),
            type = "string",
            name = "ICPRecordalStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.CachedMethods = schema.new({
    id = id.from(_N, "CachedMethods"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "CachedMethods", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "CachedMethods", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Method" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AllowedMethods = schema.new({
    id = id.from(_N, "AllowedMethods"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "AllowedMethods", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "AllowedMethods", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Method" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CachedMethods = schema.new({
            id = id.from(_N, "AllowedMethods", "CachedMethods"),
            type = "structure",
            name = "CachedMethods",
            target_id = id.from(_N, "CachedMethods"),
            target = M.CachedMethods,
        }),
    },
})

M.IpamCidrConfig = schema.new({
    id = id.from(_N, "IpamCidrConfig"),
    type = "structure",
    members = {
        Cidr = schema.new({
            id = id.from(_N, "IpamCidrConfig", "Cidr"),
            type = "string",
            name = "Cidr",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpamPoolArn = schema.new({
            id = id.from(_N, "IpamCidrConfig", "IpamPoolArn"),
            type = "string",
            name = "IpamPoolArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnycastIp = schema.new({
            id = id.from(_N, "IpamCidrConfig", "AnycastIp"),
            type = "string",
            name = "AnycastIp",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "IpamCidrConfig", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.IpamConfig = schema.new({
    id = id.from(_N, "IpamConfig"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "IpamConfig", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpamCidrConfigs = schema.new({
            id = id.from(_N, "IpamConfig", "IpamCidrConfigs"),
            type = "list",
            name = "IpamCidrConfigs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.IpamCidrConfig, traits = { [traits.XML_NAME] = { name = "IpamCidrConfig" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AnycastIpList = schema.new({
    id = id.from(_N, "AnycastIpList"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AnycastIpList", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "AnycastIpList", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AnycastIpList", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "AnycastIpList", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddressType = schema.new({
            id = id.from(_N, "AnycastIpList", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
        IpamConfig = schema.new({
            id = id.from(_N, "AnycastIpList", "IpamConfig"),
            type = "structure",
            name = "IpamConfig",
            target_id = id.from(_N, "IpamConfig"),
            target = M.IpamConfig,
        }),
        AnycastIps = schema.new({
            id = id.from(_N, "AnycastIpList", "AnycastIps"),
            type = "list",
            name = "AnycastIps",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AnycastIp" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpCount = schema.new({
            id = id.from(_N, "AnycastIpList", "IpCount"),
            type = "integer",
            name = "IpCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "AnycastIpList", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AnycastIpListSummary = schema.new({
    id = id.from(_N, "AnycastIpListSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpCount = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "IpCount"),
            type = "integer",
            name = "IpCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddressType = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
        }),
        IpamConfig = schema.new({
            id = id.from(_N, "AnycastIpListSummary", "IpamConfig"),
            type = "structure",
            name = "IpamConfig",
            target_id = id.from(_N, "IpamConfig"),
            target = M.IpamConfig,
        }),
    },
})

M.AnycastIpListCollection = schema.new({
    id = id.from(_N, "AnycastIpListCollection"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "AnycastIpListCollection", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AnycastIpListSummary, traits = { [traits.XML_NAME] = { name = "AnycastIpListSummary" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "AnycastIpListCollection", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "AnycastIpListCollection", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "AnycastIpListCollection", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "AnycastIpListCollection", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "AnycastIpListCollection", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateAliasInput = schema.new({
    id = id.from(_N, "AssociateAliasRequest"),
    type = "structure",
    members = {
        TargetDistributionId = schema.new({
            id = id.from(_N, "AssociateAliasInput", "TargetDistributionId"),
            type = "string",
            name = "TargetDistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Alias = schema.new({
            id = id.from(_N, "AssociateAliasInput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "Alias" },
            },
        }),
    },
})

M.AssociateAliasOutput = prelude.Unit

M.IllegalUpdate = schema.new({
    id = id.from(_N, "IllegalUpdate"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IllegalUpdate", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidArgument = schema.new({
    id = id.from(_N, "InvalidArgument"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidArgument", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchDistribution = schema.new({
    id = id.from(_N, "NoSuchDistribution"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchDistribution", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionCNAMEs = schema.new({
    id = id.from(_N, "TooManyDistributionCNAMEs"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionCNAMEs", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateDistributionTenantWebACLInput = schema.new({
    id = id.from(_N, "AssociateDistributionTenantWebACLRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateDistributionTenantWebACLInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WebACLArn = schema.new({
            id = id.from(_N, "AssociateDistributionTenantWebACLInput", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "AssociateDistributionTenantWebACLInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.AssociateDistributionTenantWebACLOutput = schema.new({
    id = id.from(_N, "AssociateDistributionTenantWebACLResult"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateDistributionTenantWebACLOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        WebACLArn = schema.new({
            id = id.from(_N, "AssociateDistributionTenantWebACLOutput", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "AssociateDistributionTenantWebACLOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.EntityLimitExceeded = schema.new({
    id = id.from(_N, "EntityLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityNotFound = schema.new({
    id = id.from(_N, "EntityNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidIfMatchVersion = schema.new({
    id = id.from(_N, "InvalidIfMatchVersion"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidIfMatchVersion", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.PreconditionFailed = schema.new({
    id = id.from(_N, "PreconditionFailed"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PreconditionFailed", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateDistributionWebACLInput = schema.new({
    id = id.from(_N, "AssociateDistributionWebACLRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateDistributionWebACLInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WebACLArn = schema.new({
            id = id.from(_N, "AssociateDistributionWebACLInput", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "AssociateDistributionWebACLInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.AssociateDistributionWebACLOutput = schema.new({
    id = id.from(_N, "AssociateDistributionWebACLResult"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateDistributionWebACLOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        WebACLArn = schema.new({
            id = id.from(_N, "AssociateDistributionWebACLOutput", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "AssociateDistributionWebACLOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.BatchTooLarge = schema.new({
    id = id.from(_N, "BatchTooLarge"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "BatchTooLarge", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CaCertificatesBundleS3Location = schema.new({
    id = id.from(_N, "CaCertificatesBundleS3Location"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "CaCertificatesBundleS3Location", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Key = schema.new({
            id = id.from(_N, "CaCertificatesBundleS3Location", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Region = schema.new({
            id = id.from(_N, "CaCertificatesBundleS3Location", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "CaCertificatesBundleS3Location", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.CaCertificatesBundleSource = schema.new({
    id = id.from(_N, "CaCertificatesBundleSource"),
    type = "union",
    members = {
        CaCertificatesBundleS3Location = schema.new({
            id = id.from(_N, "CaCertificatesBundleSource", "CaCertificatesBundleS3Location"),
            type = "structure",
            name = "CaCertificatesBundleS3Location",
            target_id = id.from(_N, "CaCertificatesBundleS3Location"),
            target = M.CaCertificatesBundleS3Location,
        }),
    },
})

M.CookieNames = schema.new({
    id = id.from(_N, "CookieNames"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "CookieNames", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "CookieNames", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Name" } } }),
        }),
    },
})

M.CookiePreference = schema.new({
    id = id.from(_N, "CookiePreference"),
    type = "structure",
    members = {
        Forward = schema.new({
            id = id.from(_N, "CookiePreference", "Forward"),
            type = "string",
            name = "Forward",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WhitelistedNames = schema.new({
            id = id.from(_N, "CookiePreference", "WhitelistedNames"),
            type = "structure",
            name = "WhitelistedNames",
            target_id = id.from(_N, "CookieNames"),
            target = M.CookieNames,
        }),
    },
})

M.Headers = schema.new({
    id = id.from(_N, "Headers"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "Headers", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "Headers", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Name" } } }),
        }),
    },
})

M.QueryStringCacheKeys = schema.new({
    id = id.from(_N, "QueryStringCacheKeys"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "QueryStringCacheKeys", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "QueryStringCacheKeys", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Name" } } }),
        }),
    },
})

M.ForwardedValues = schema.new({
    id = id.from(_N, "ForwardedValues"),
    type = "structure",
    members = {
        QueryString = schema.new({
            id = id.from(_N, "ForwardedValues", "QueryString"),
            type = "boolean",
            name = "QueryString",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Cookies = schema.new({
            id = id.from(_N, "ForwardedValues", "Cookies"),
            type = "structure",
            name = "Cookies",
            target_id = id.from(_N, "CookiePreference"),
            target = M.CookiePreference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Headers = schema.new({
            id = id.from(_N, "ForwardedValues", "Headers"),
            type = "structure",
            name = "Headers",
            target_id = id.from(_N, "Headers"),
            target = M.Headers,
        }),
        QueryStringCacheKeys = schema.new({
            id = id.from(_N, "ForwardedValues", "QueryStringCacheKeys"),
            type = "structure",
            name = "QueryStringCacheKeys",
            target_id = id.from(_N, "QueryStringCacheKeys"),
            target = M.QueryStringCacheKeys,
        }),
    },
})

M.FunctionAssociation = schema.new({
    id = id.from(_N, "FunctionAssociation"),
    type = "structure",
    members = {
        FunctionARN = schema.new({
            id = id.from(_N, "FunctionAssociation", "FunctionARN"),
            type = "string",
            name = "FunctionARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventType = schema.new({
            id = id.from(_N, "FunctionAssociation", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FunctionAssociations = schema.new({
    id = id.from(_N, "FunctionAssociations"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "FunctionAssociations", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "FunctionAssociations", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.FunctionAssociation, traits = { [traits.XML_NAME] = { name = "FunctionAssociation" } } }),
        }),
    },
})

M.GrpcConfig = schema.new({
    id = id.from(_N, "GrpcConfig"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "GrpcConfig", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LambdaFunctionAssociation = schema.new({
    id = id.from(_N, "LambdaFunctionAssociation"),
    type = "structure",
    members = {
        LambdaFunctionARN = schema.new({
            id = id.from(_N, "LambdaFunctionAssociation", "LambdaFunctionARN"),
            type = "string",
            name = "LambdaFunctionARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventType = schema.new({
            id = id.from(_N, "LambdaFunctionAssociation", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncludeBody = schema.new({
            id = id.from(_N, "LambdaFunctionAssociation", "IncludeBody"),
            type = "boolean",
            name = "IncludeBody",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.LambdaFunctionAssociations = schema.new({
    id = id.from(_N, "LambdaFunctionAssociations"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "LambdaFunctionAssociations", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "LambdaFunctionAssociations", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.LambdaFunctionAssociation, traits = { [traits.XML_NAME] = { name = "LambdaFunctionAssociation" } } }),
        }),
    },
})

M.TrustedKeyGroups = schema.new({
    id = id.from(_N, "TrustedKeyGroups"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "TrustedKeyGroups", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "TrustedKeyGroups", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "TrustedKeyGroups", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "KeyGroup" } } }),
        }),
    },
})

M.TrustedSigners = schema.new({
    id = id.from(_N, "TrustedSigners"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "TrustedSigners", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "TrustedSigners", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "TrustedSigners", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AwsAccountNumber" } } }),
        }),
    },
})

M.CacheBehavior = schema.new({
    id = id.from(_N, "CacheBehavior"),
    type = "structure",
    members = {
        PathPattern = schema.new({
            id = id.from(_N, "CacheBehavior", "PathPattern"),
            type = "string",
            name = "PathPattern",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetOriginId = schema.new({
            id = id.from(_N, "CacheBehavior", "TargetOriginId"),
            type = "string",
            name = "TargetOriginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustedSigners = schema.new({
            id = id.from(_N, "CacheBehavior", "TrustedSigners"),
            type = "structure",
            name = "TrustedSigners",
            target_id = id.from(_N, "TrustedSigners"),
            target = M.TrustedSigners,
        }),
        TrustedKeyGroups = schema.new({
            id = id.from(_N, "CacheBehavior", "TrustedKeyGroups"),
            type = "structure",
            name = "TrustedKeyGroups",
            target_id = id.from(_N, "TrustedKeyGroups"),
            target = M.TrustedKeyGroups,
        }),
        ViewerProtocolPolicy = schema.new({
            id = id.from(_N, "CacheBehavior", "ViewerProtocolPolicy"),
            type = "string",
            name = "ViewerProtocolPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllowedMethods = schema.new({
            id = id.from(_N, "CacheBehavior", "AllowedMethods"),
            type = "structure",
            name = "AllowedMethods",
            target_id = id.from(_N, "AllowedMethods"),
            target = M.AllowedMethods,
        }),
        SmoothStreaming = schema.new({
            id = id.from(_N, "CacheBehavior", "SmoothStreaming"),
            type = "boolean",
            name = "SmoothStreaming",
            target_id = prelude.Boolean.id,
        }),
        Compress = schema.new({
            id = id.from(_N, "CacheBehavior", "Compress"),
            type = "boolean",
            name = "Compress",
            target_id = prelude.Boolean.id,
        }),
        LambdaFunctionAssociations = schema.new({
            id = id.from(_N, "CacheBehavior", "LambdaFunctionAssociations"),
            type = "structure",
            name = "LambdaFunctionAssociations",
            target_id = id.from(_N, "LambdaFunctionAssociations"),
            target = M.LambdaFunctionAssociations,
        }),
        FunctionAssociations = schema.new({
            id = id.from(_N, "CacheBehavior", "FunctionAssociations"),
            type = "structure",
            name = "FunctionAssociations",
            target_id = id.from(_N, "FunctionAssociations"),
            target = M.FunctionAssociations,
        }),
        FieldLevelEncryptionId = schema.new({
            id = id.from(_N, "CacheBehavior", "FieldLevelEncryptionId"),
            type = "string",
            name = "FieldLevelEncryptionId",
            target_id = prelude.String.id,
        }),
        RealtimeLogConfigArn = schema.new({
            id = id.from(_N, "CacheBehavior", "RealtimeLogConfigArn"),
            type = "string",
            name = "RealtimeLogConfigArn",
            target_id = prelude.String.id,
        }),
        CachePolicyId = schema.new({
            id = id.from(_N, "CacheBehavior", "CachePolicyId"),
            type = "string",
            name = "CachePolicyId",
            target_id = prelude.String.id,
        }),
        OriginRequestPolicyId = schema.new({
            id = id.from(_N, "CacheBehavior", "OriginRequestPolicyId"),
            type = "string",
            name = "OriginRequestPolicyId",
            target_id = prelude.String.id,
        }),
        ResponseHeadersPolicyId = schema.new({
            id = id.from(_N, "CacheBehavior", "ResponseHeadersPolicyId"),
            type = "string",
            name = "ResponseHeadersPolicyId",
            target_id = prelude.String.id,
        }),
        GrpcConfig = schema.new({
            id = id.from(_N, "CacheBehavior", "GrpcConfig"),
            type = "structure",
            name = "GrpcConfig",
            target_id = id.from(_N, "GrpcConfig"),
            target = M.GrpcConfig,
        }),
        ForwardedValues = schema.new({
            id = id.from(_N, "CacheBehavior", "ForwardedValues"),
            type = "structure",
            name = "ForwardedValues",
            target_id = id.from(_N, "ForwardedValues"),
            target = M.ForwardedValues,
        }),
        MinTTL = schema.new({
            id = id.from(_N, "CacheBehavior", "MinTTL"),
            type = "long",
            name = "MinTTL",
            target_id = prelude.Long.id,
        }),
        DefaultTTL = schema.new({
            id = id.from(_N, "CacheBehavior", "DefaultTTL"),
            type = "long",
            name = "DefaultTTL",
            target_id = prelude.Long.id,
        }),
        MaxTTL = schema.new({
            id = id.from(_N, "CacheBehavior", "MaxTTL"),
            type = "long",
            name = "MaxTTL",
            target_id = prelude.Long.id,
        }),
    },
})

M.CacheBehaviors = schema.new({
    id = id.from(_N, "CacheBehaviors"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "CacheBehaviors", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "CacheBehaviors", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheBehavior, traits = { [traits.XML_NAME] = { name = "CacheBehavior" } } }),
        }),
    },
})

M.CachePolicyCookiesConfig = schema.new({
    id = id.from(_N, "CachePolicyCookiesConfig"),
    type = "structure",
    members = {
        CookieBehavior = schema.new({
            id = id.from(_N, "CachePolicyCookiesConfig", "CookieBehavior"),
            type = "string",
            name = "CookieBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Cookies = schema.new({
            id = id.from(_N, "CachePolicyCookiesConfig", "Cookies"),
            type = "structure",
            name = "Cookies",
            target_id = id.from(_N, "CookieNames"),
            target = M.CookieNames,
        }),
    },
})

M.CachePolicyHeadersConfig = schema.new({
    id = id.from(_N, "CachePolicyHeadersConfig"),
    type = "structure",
    members = {
        HeaderBehavior = schema.new({
            id = id.from(_N, "CachePolicyHeadersConfig", "HeaderBehavior"),
            type = "string",
            name = "HeaderBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Headers = schema.new({
            id = id.from(_N, "CachePolicyHeadersConfig", "Headers"),
            type = "structure",
            name = "Headers",
            target_id = id.from(_N, "Headers"),
            target = M.Headers,
        }),
    },
})

M.QueryStringNames = schema.new({
    id = id.from(_N, "QueryStringNames"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "QueryStringNames", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "QueryStringNames", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Name" } } }),
        }),
    },
})

M.CachePolicyQueryStringsConfig = schema.new({
    id = id.from(_N, "CachePolicyQueryStringsConfig"),
    type = "structure",
    members = {
        QueryStringBehavior = schema.new({
            id = id.from(_N, "CachePolicyQueryStringsConfig", "QueryStringBehavior"),
            type = "string",
            name = "QueryStringBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QueryStrings = schema.new({
            id = id.from(_N, "CachePolicyQueryStringsConfig", "QueryStrings"),
            type = "structure",
            name = "QueryStrings",
            target_id = id.from(_N, "QueryStringNames"),
            target = M.QueryStringNames,
        }),
    },
})

M.ParametersInCacheKeyAndForwardedToOrigin = schema.new({
    id = id.from(_N, "ParametersInCacheKeyAndForwardedToOrigin"),
    type = "structure",
    members = {
        EnableAcceptEncodingGzip = schema.new({
            id = id.from(_N, "ParametersInCacheKeyAndForwardedToOrigin", "EnableAcceptEncodingGzip"),
            type = "boolean",
            name = "EnableAcceptEncodingGzip",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableAcceptEncodingBrotli = schema.new({
            id = id.from(_N, "ParametersInCacheKeyAndForwardedToOrigin", "EnableAcceptEncodingBrotli"),
            type = "boolean",
            name = "EnableAcceptEncodingBrotli",
            target_id = prelude.Boolean.id,
        }),
        HeadersConfig = schema.new({
            id = id.from(_N, "ParametersInCacheKeyAndForwardedToOrigin", "HeadersConfig"),
            type = "structure",
            name = "HeadersConfig",
            target_id = id.from(_N, "CachePolicyHeadersConfig"),
            target = M.CachePolicyHeadersConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CookiesConfig = schema.new({
            id = id.from(_N, "ParametersInCacheKeyAndForwardedToOrigin", "CookiesConfig"),
            type = "structure",
            name = "CookiesConfig",
            target_id = id.from(_N, "CachePolicyCookiesConfig"),
            target = M.CachePolicyCookiesConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QueryStringsConfig = schema.new({
            id = id.from(_N, "ParametersInCacheKeyAndForwardedToOrigin", "QueryStringsConfig"),
            type = "structure",
            name = "QueryStringsConfig",
            target_id = id.from(_N, "CachePolicyQueryStringsConfig"),
            target = M.CachePolicyQueryStringsConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CachePolicyConfig = schema.new({
    id = id.from(_N, "CachePolicyConfig"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "CachePolicyConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CachePolicyConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultTTL = schema.new({
            id = id.from(_N, "CachePolicyConfig", "DefaultTTL"),
            type = "long",
            name = "DefaultTTL",
            target_id = prelude.Long.id,
        }),
        MaxTTL = schema.new({
            id = id.from(_N, "CachePolicyConfig", "MaxTTL"),
            type = "long",
            name = "MaxTTL",
            target_id = prelude.Long.id,
        }),
        MinTTL = schema.new({
            id = id.from(_N, "CachePolicyConfig", "MinTTL"),
            type = "long",
            name = "MinTTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParametersInCacheKeyAndForwardedToOrigin = schema.new({
            id = id.from(_N, "CachePolicyConfig", "ParametersInCacheKeyAndForwardedToOrigin"),
            type = "structure",
            name = "ParametersInCacheKeyAndForwardedToOrigin",
            target_id = id.from(_N, "ParametersInCacheKeyAndForwardedToOrigin"),
            target = M.ParametersInCacheKeyAndForwardedToOrigin,
        }),
    },
})

M.CachePolicy = schema.new({
    id = id.from(_N, "CachePolicy"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CachePolicy", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "CachePolicy", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CachePolicyConfig = schema.new({
            id = id.from(_N, "CachePolicy", "CachePolicyConfig"),
            type = "structure",
            name = "CachePolicyConfig",
            target_id = id.from(_N, "CachePolicyConfig"),
            target = M.CachePolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CachePolicyAlreadyExists = schema.new({
    id = id.from(_N, "CachePolicyAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CachePolicyAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CachePolicyInUse = schema.new({
    id = id.from(_N, "CachePolicyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CachePolicyInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CachePolicySummary = schema.new({
    id = id.from(_N, "CachePolicySummary"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "CachePolicySummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CachePolicy = schema.new({
            id = id.from(_N, "CachePolicySummary", "CachePolicy"),
            type = "structure",
            name = "CachePolicy",
            target_id = id.from(_N, "CachePolicy"),
            target = M.CachePolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CachePolicyList = schema.new({
    id = id.from(_N, "CachePolicyList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "CachePolicyList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "CachePolicyList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "CachePolicyList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "CachePolicyList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CachePolicySummary, traits = { [traits.XML_NAME] = { name = "CachePolicySummary" } } }),
        }),
    },
})

M.CacheTagConfig = schema.new({
    id = id.from(_N, "CacheTagConfig"),
    type = "structure",
    members = {
        HeaderName = schema.new({
            id = id.from(_N, "CacheTagConfig", "HeaderName"),
            type = "string",
            name = "HeaderName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CannotChangeImmutablePublicKeyFields = schema.new({
    id = id.from(_N, "CannotChangeImmutablePublicKeyFields"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CannotChangeImmutablePublicKeyFields", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CannotDeleteEntityWhileInUse = schema.new({
    id = id.from(_N, "CannotDeleteEntityWhileInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CannotDeleteEntityWhileInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CannotUpdateEntityWhileInUse = schema.new({
    id = id.from(_N, "CannotUpdateEntityWhileInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CannotUpdateEntityWhileInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Certificate", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CNAMEAlreadyExists = schema.new({
    id = id.from(_N, "CNAMEAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CNAMEAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyDistributionInput = schema.new({
    id = id.from(_N, "CopyDistributionRequest"),
    type = "structure",
    members = {
        PrimaryDistributionId = schema.new({
            id = id.from(_N, "CopyDistributionInput", "PrimaryDistributionId"),
            type = "string",
            name = "PrimaryDistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Staging = schema.new({
            id = id.from(_N, "CopyDistributionInput", "Staging"),
            type = "boolean",
            name = "Staging",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Staging" },
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "CopyDistributionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        CallerReference = schema.new({
            id = id.from(_N, "CopyDistributionInput", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "CopyDistributionInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ConnectionFunctionAssociation = schema.new({
    id = id.from(_N, "ConnectionFunctionAssociation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ConnectionFunctionAssociation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomErrorResponse = schema.new({
    id = id.from(_N, "CustomErrorResponse"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "CustomErrorResponse", "ErrorCode"),
            type = "integer",
            name = "ErrorCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResponsePagePath = schema.new({
            id = id.from(_N, "CustomErrorResponse", "ResponsePagePath"),
            type = "string",
            name = "ResponsePagePath",
            target_id = prelude.String.id,
        }),
        ResponseCode = schema.new({
            id = id.from(_N, "CustomErrorResponse", "ResponseCode"),
            type = "string",
            name = "ResponseCode",
            target_id = prelude.String.id,
        }),
        ErrorCachingMinTTL = schema.new({
            id = id.from(_N, "CustomErrorResponse", "ErrorCachingMinTTL"),
            type = "long",
            name = "ErrorCachingMinTTL",
            target_id = prelude.Long.id,
        }),
    },
})

M.CustomErrorResponses = schema.new({
    id = id.from(_N, "CustomErrorResponses"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "CustomErrorResponses", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "CustomErrorResponses", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CustomErrorResponse, traits = { [traits.XML_NAME] = { name = "CustomErrorResponse" } } }),
        }),
    },
})

M.DefaultCacheBehavior = schema.new({
    id = id.from(_N, "DefaultCacheBehavior"),
    type = "structure",
    members = {
        TargetOriginId = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "TargetOriginId"),
            type = "string",
            name = "TargetOriginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustedSigners = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "TrustedSigners"),
            type = "structure",
            name = "TrustedSigners",
            target_id = id.from(_N, "TrustedSigners"),
            target = M.TrustedSigners,
        }),
        TrustedKeyGroups = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "TrustedKeyGroups"),
            type = "structure",
            name = "TrustedKeyGroups",
            target_id = id.from(_N, "TrustedKeyGroups"),
            target = M.TrustedKeyGroups,
        }),
        ViewerProtocolPolicy = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "ViewerProtocolPolicy"),
            type = "string",
            name = "ViewerProtocolPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllowedMethods = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "AllowedMethods"),
            type = "structure",
            name = "AllowedMethods",
            target_id = id.from(_N, "AllowedMethods"),
            target = M.AllowedMethods,
        }),
        SmoothStreaming = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "SmoothStreaming"),
            type = "boolean",
            name = "SmoothStreaming",
            target_id = prelude.Boolean.id,
        }),
        Compress = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "Compress"),
            type = "boolean",
            name = "Compress",
            target_id = prelude.Boolean.id,
        }),
        LambdaFunctionAssociations = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "LambdaFunctionAssociations"),
            type = "structure",
            name = "LambdaFunctionAssociations",
            target_id = id.from(_N, "LambdaFunctionAssociations"),
            target = M.LambdaFunctionAssociations,
        }),
        FunctionAssociations = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "FunctionAssociations"),
            type = "structure",
            name = "FunctionAssociations",
            target_id = id.from(_N, "FunctionAssociations"),
            target = M.FunctionAssociations,
        }),
        FieldLevelEncryptionId = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "FieldLevelEncryptionId"),
            type = "string",
            name = "FieldLevelEncryptionId",
            target_id = prelude.String.id,
        }),
        RealtimeLogConfigArn = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "RealtimeLogConfigArn"),
            type = "string",
            name = "RealtimeLogConfigArn",
            target_id = prelude.String.id,
        }),
        CachePolicyId = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "CachePolicyId"),
            type = "string",
            name = "CachePolicyId",
            target_id = prelude.String.id,
        }),
        OriginRequestPolicyId = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "OriginRequestPolicyId"),
            type = "string",
            name = "OriginRequestPolicyId",
            target_id = prelude.String.id,
        }),
        ResponseHeadersPolicyId = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "ResponseHeadersPolicyId"),
            type = "string",
            name = "ResponseHeadersPolicyId",
            target_id = prelude.String.id,
        }),
        GrpcConfig = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "GrpcConfig"),
            type = "structure",
            name = "GrpcConfig",
            target_id = id.from(_N, "GrpcConfig"),
            target = M.GrpcConfig,
        }),
        ForwardedValues = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "ForwardedValues"),
            type = "structure",
            name = "ForwardedValues",
            target_id = id.from(_N, "ForwardedValues"),
            target = M.ForwardedValues,
        }),
        MinTTL = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "MinTTL"),
            type = "long",
            name = "MinTTL",
            target_id = prelude.Long.id,
        }),
        DefaultTTL = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "DefaultTTL"),
            type = "long",
            name = "DefaultTTL",
            target_id = prelude.Long.id,
        }),
        MaxTTL = schema.new({
            id = id.from(_N, "DefaultCacheBehavior", "MaxTTL"),
            type = "long",
            name = "MaxTTL",
            target_id = prelude.Long.id,
        }),
    },
})

M.LoggingConfig = schema.new({
    id = id.from(_N, "LoggingConfig"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "LoggingConfig", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        IncludeCookies = schema.new({
            id = id.from(_N, "LoggingConfig", "IncludeCookies"),
            type = "boolean",
            name = "IncludeCookies",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Bucket = schema.new({
            id = id.from(_N, "LoggingConfig", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        Prefix = schema.new({
            id = id.from(_N, "LoggingConfig", "Prefix"),
            type = "string",
            name = "Prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
    },
})

M.StatusCodes = schema.new({
    id = id.from(_N, "StatusCodes"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "StatusCodes", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "StatusCodes", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "integer", target = prelude.Integer, traits = { [traits.XML_NAME] = { name = "StatusCode" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OriginGroupFailoverCriteria = schema.new({
    id = id.from(_N, "OriginGroupFailoverCriteria"),
    type = "structure",
    members = {
        StatusCodes = schema.new({
            id = id.from(_N, "OriginGroupFailoverCriteria", "StatusCodes"),
            type = "structure",
            name = "StatusCodes",
            target_id = id.from(_N, "StatusCodes"),
            target = M.StatusCodes,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OriginGroupMember = schema.new({
    id = id.from(_N, "OriginGroupMember"),
    type = "structure",
    members = {
        OriginId = schema.new({
            id = id.from(_N, "OriginGroupMember", "OriginId"),
            type = "string",
            name = "OriginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OriginGroupMembers = schema.new({
    id = id.from(_N, "OriginGroupMembers"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "OriginGroupMembers", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "OriginGroupMembers", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OriginGroupMember, traits = { [traits.XML_NAME] = { name = "OriginGroupMember" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OriginGroup = schema.new({
    id = id.from(_N, "OriginGroup"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "OriginGroup", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FailoverCriteria = schema.new({
            id = id.from(_N, "OriginGroup", "FailoverCriteria"),
            type = "structure",
            name = "FailoverCriteria",
            target_id = id.from(_N, "OriginGroupFailoverCriteria"),
            target = M.OriginGroupFailoverCriteria,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Members = schema.new({
            id = id.from(_N, "OriginGroup", "Members"),
            type = "structure",
            name = "Members",
            target_id = id.from(_N, "OriginGroupMembers"),
            target = M.OriginGroupMembers,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectionCriteria = schema.new({
            id = id.from(_N, "OriginGroup", "SelectionCriteria"),
            type = "string",
            name = "SelectionCriteria",
            target_id = prelude.String.id,
        }),
    },
})

M.OriginGroups = schema.new({
    id = id.from(_N, "OriginGroups"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "OriginGroups", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "OriginGroups", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OriginGroup, traits = { [traits.XML_NAME] = { name = "OriginGroup" } } }),
        }),
    },
})

M.OriginCustomHeader = schema.new({
    id = id.from(_N, "OriginCustomHeader"),
    type = "structure",
    members = {
        HeaderName = schema.new({
            id = id.from(_N, "OriginCustomHeader", "HeaderName"),
            type = "string",
            name = "HeaderName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HeaderValue = schema.new({
            id = id.from(_N, "OriginCustomHeader", "HeaderValue"),
            type = "string",
            name = "HeaderValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomHeaders = schema.new({
    id = id.from(_N, "CustomHeaders"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "CustomHeaders", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "CustomHeaders", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OriginCustomHeader, traits = { [traits.XML_NAME] = { name = "OriginCustomHeader" } } }),
        }),
    },
})

M.OriginMtlsConfig = schema.new({
    id = id.from(_N, "OriginMtlsConfig"),
    type = "structure",
    members = {
        ClientCertificateArn = schema.new({
            id = id.from(_N, "OriginMtlsConfig", "ClientCertificateArn"),
            type = "string",
            name = "ClientCertificateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OriginSslProtocols = schema.new({
    id = id.from(_N, "OriginSslProtocols"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "OriginSslProtocols", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "OriginSslProtocols", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SslProtocol" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomOriginConfig = schema.new({
    id = id.from(_N, "CustomOriginConfig"),
    type = "structure",
    members = {
        HTTPPort = schema.new({
            id = id.from(_N, "CustomOriginConfig", "HTTPPort"),
            type = "integer",
            name = "HTTPPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HTTPSPort = schema.new({
            id = id.from(_N, "CustomOriginConfig", "HTTPSPort"),
            type = "integer",
            name = "HTTPSPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginProtocolPolicy = schema.new({
            id = id.from(_N, "CustomOriginConfig", "OriginProtocolPolicy"),
            type = "string",
            name = "OriginProtocolPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginSslProtocols = schema.new({
            id = id.from(_N, "CustomOriginConfig", "OriginSslProtocols"),
            type = "structure",
            name = "OriginSslProtocols",
            target_id = id.from(_N, "OriginSslProtocols"),
            target = M.OriginSslProtocols,
        }),
        OriginReadTimeout = schema.new({
            id = id.from(_N, "CustomOriginConfig", "OriginReadTimeout"),
            type = "integer",
            name = "OriginReadTimeout",
            target_id = prelude.Integer.id,
        }),
        OriginKeepaliveTimeout = schema.new({
            id = id.from(_N, "CustomOriginConfig", "OriginKeepaliveTimeout"),
            type = "integer",
            name = "OriginKeepaliveTimeout",
            target_id = prelude.Integer.id,
        }),
        IpAddressType = schema.new({
            id = id.from(_N, "CustomOriginConfig", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
        OriginMtlsConfig = schema.new({
            id = id.from(_N, "CustomOriginConfig", "OriginMtlsConfig"),
            type = "structure",
            name = "OriginMtlsConfig",
            target_id = id.from(_N, "OriginMtlsConfig"),
            target = M.OriginMtlsConfig,
        }),
    },
})

M.OriginShield = schema.new({
    id = id.from(_N, "OriginShield"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "OriginShield", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginShieldRegion = schema.new({
            id = id.from(_N, "OriginShield", "OriginShieldRegion"),
            type = "string",
            name = "OriginShieldRegion",
            target_id = prelude.String.id,
        }),
    },
})

M.S3OriginConfig = schema.new({
    id = id.from(_N, "S3OriginConfig"),
    type = "structure",
    members = {
        OriginAccessIdentity = schema.new({
            id = id.from(_N, "S3OriginConfig", "OriginAccessIdentity"),
            type = "string",
            name = "OriginAccessIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "" },
            },
        }),
        OriginReadTimeout = schema.new({
            id = id.from(_N, "S3OriginConfig", "OriginReadTimeout"),
            type = "integer",
            name = "OriginReadTimeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.VpcOriginConfig = schema.new({
    id = id.from(_N, "VpcOriginConfig"),
    type = "structure",
    members = {
        VpcOriginId = schema.new({
            id = id.from(_N, "VpcOriginConfig", "VpcOriginId"),
            type = "string",
            name = "VpcOriginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "VpcOriginConfig", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        OriginReadTimeout = schema.new({
            id = id.from(_N, "VpcOriginConfig", "OriginReadTimeout"),
            type = "integer",
            name = "OriginReadTimeout",
            target_id = prelude.Integer.id,
        }),
        OriginKeepaliveTimeout = schema.new({
            id = id.from(_N, "VpcOriginConfig", "OriginKeepaliveTimeout"),
            type = "integer",
            name = "OriginKeepaliveTimeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Origin = schema.new({
    id = id.from(_N, "Origin"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Origin", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "Origin", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginPath = schema.new({
            id = id.from(_N, "Origin", "OriginPath"),
            type = "string",
            name = "OriginPath",
            target_id = prelude.String.id,
        }),
        CustomHeaders = schema.new({
            id = id.from(_N, "Origin", "CustomHeaders"),
            type = "structure",
            name = "CustomHeaders",
            target_id = id.from(_N, "CustomHeaders"),
            target = M.CustomHeaders,
        }),
        S3OriginConfig = schema.new({
            id = id.from(_N, "Origin", "S3OriginConfig"),
            type = "structure",
            name = "S3OriginConfig",
            target_id = id.from(_N, "S3OriginConfig"),
            target = M.S3OriginConfig,
        }),
        CustomOriginConfig = schema.new({
            id = id.from(_N, "Origin", "CustomOriginConfig"),
            type = "structure",
            name = "CustomOriginConfig",
            target_id = id.from(_N, "CustomOriginConfig"),
            target = M.CustomOriginConfig,
        }),
        VpcOriginConfig = schema.new({
            id = id.from(_N, "Origin", "VpcOriginConfig"),
            type = "structure",
            name = "VpcOriginConfig",
            target_id = id.from(_N, "VpcOriginConfig"),
            target = M.VpcOriginConfig,
        }),
        ConnectionAttempts = schema.new({
            id = id.from(_N, "Origin", "ConnectionAttempts"),
            type = "integer",
            name = "ConnectionAttempts",
            target_id = prelude.Integer.id,
        }),
        ConnectionTimeout = schema.new({
            id = id.from(_N, "Origin", "ConnectionTimeout"),
            type = "integer",
            name = "ConnectionTimeout",
            target_id = prelude.Integer.id,
        }),
        ResponseCompletionTimeout = schema.new({
            id = id.from(_N, "Origin", "ResponseCompletionTimeout"),
            type = "integer",
            name = "ResponseCompletionTimeout",
            target_id = prelude.Integer.id,
        }),
        OriginShield = schema.new({
            id = id.from(_N, "Origin", "OriginShield"),
            type = "structure",
            name = "OriginShield",
            target_id = id.from(_N, "OriginShield"),
            target = M.OriginShield,
        }),
        OriginAccessControlId = schema.new({
            id = id.from(_N, "Origin", "OriginAccessControlId"),
            type = "string",
            name = "OriginAccessControlId",
            target_id = prelude.String.id,
        }),
    },
})

M.Origins = schema.new({
    id = id.from(_N, "Origins"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "Origins", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "Origins", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Origin, traits = { [traits.XML_NAME] = { name = "Origin" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GeoRestriction = schema.new({
    id = id.from(_N, "GeoRestriction"),
    type = "structure",
    members = {
        RestrictionType = schema.new({
            id = id.from(_N, "GeoRestriction", "RestrictionType"),
            type = "string",
            name = "RestrictionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "GeoRestriction", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "GeoRestriction", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Location" } } }),
        }),
    },
})

M.Restrictions = schema.new({
    id = id.from(_N, "Restrictions"),
    type = "structure",
    members = {
        GeoRestriction = schema.new({
            id = id.from(_N, "Restrictions", "GeoRestriction"),
            type = "structure",
            name = "GeoRestriction",
            target_id = id.from(_N, "GeoRestriction"),
            target = M.GeoRestriction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StringSchemaConfig = schema.new({
    id = id.from(_N, "StringSchemaConfig"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "StringSchemaConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        DefaultValue = schema.new({
            id = id.from(_N, "StringSchemaConfig", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        Required = schema.new({
            id = id.from(_N, "StringSchemaConfig", "Required"),
            type = "boolean",
            name = "Required",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ParameterDefinitionSchema = schema.new({
    id = id.from(_N, "ParameterDefinitionSchema"),
    type = "structure",
    members = {
        StringSchema = schema.new({
            id = id.from(_N, "ParameterDefinitionSchema", "StringSchema"),
            type = "structure",
            name = "StringSchema",
            target_id = id.from(_N, "StringSchemaConfig"),
            target = M.StringSchemaConfig,
        }),
    },
})

M.ParameterDefinition = schema.new({
    id = id.from(_N, "ParameterDefinition"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ParameterDefinition", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "ParameterDefinition", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "ParameterDefinitionSchema"),
            target = M.ParameterDefinitionSchema,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TenantConfig = schema.new({
    id = id.from(_N, "TenantConfig"),
    type = "structure",
    members = {
        ParameterDefinitions = schema.new({
            id = id.from(_N, "TenantConfig", "ParameterDefinitions"),
            type = "list",
            name = "ParameterDefinitions",
            target_id = prelude.Document.id,
            list_member = M.ParameterDefinition,
        }),
    },
})

M.ViewerCertificate = schema.new({
    id = id.from(_N, "ViewerCertificate"),
    type = "structure",
    members = {
        CloudFrontDefaultCertificate = schema.new({
            id = id.from(_N, "ViewerCertificate", "CloudFrontDefaultCertificate"),
            type = "boolean",
            name = "CloudFrontDefaultCertificate",
            target_id = prelude.Boolean.id,
        }),
        IAMCertificateId = schema.new({
            id = id.from(_N, "ViewerCertificate", "IAMCertificateId"),
            type = "string",
            name = "IAMCertificateId",
            target_id = prelude.String.id,
        }),
        ACMCertificateArn = schema.new({
            id = id.from(_N, "ViewerCertificate", "ACMCertificateArn"),
            type = "string",
            name = "ACMCertificateArn",
            target_id = prelude.String.id,
        }),
        SSLSupportMethod = schema.new({
            id = id.from(_N, "ViewerCertificate", "SSLSupportMethod"),
            type = "string",
            name = "SSLSupportMethod",
            target_id = prelude.String.id,
        }),
        MinimumProtocolVersion = schema.new({
            id = id.from(_N, "ViewerCertificate", "MinimumProtocolVersion"),
            type = "string",
            name = "MinimumProtocolVersion",
            target_id = prelude.String.id,
        }),
        Certificate = schema.new({
            id = id.from(_N, "ViewerCertificate", "Certificate"),
            type = "string",
            name = "Certificate",
            target_id = prelude.String.id,
        }),
        CertificateSource = schema.new({
            id = id.from(_N, "ViewerCertificate", "CertificateSource"),
            type = "string",
            name = "CertificateSource",
            target_id = prelude.String.id,
        }),
    },
})

M.TrustStoreConfig = schema.new({
    id = id.from(_N, "TrustStoreConfig"),
    type = "structure",
    members = {
        TrustStoreId = schema.new({
            id = id.from(_N, "TrustStoreConfig", "TrustStoreId"),
            type = "string",
            name = "TrustStoreId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdvertiseTrustStoreCaNames = schema.new({
            id = id.from(_N, "TrustStoreConfig", "AdvertiseTrustStoreCaNames"),
            type = "boolean",
            name = "AdvertiseTrustStoreCaNames",
            target_id = prelude.Boolean.id,
        }),
        IgnoreCertificateExpiry = schema.new({
            id = id.from(_N, "TrustStoreConfig", "IgnoreCertificateExpiry"),
            type = "boolean",
            name = "IgnoreCertificateExpiry",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ViewerMtlsConfig = schema.new({
    id = id.from(_N, "ViewerMtlsConfig"),
    type = "structure",
    members = {
        Mode = schema.new({
            id = id.from(_N, "ViewerMtlsConfig", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "required" },
            },
        }),
        TrustStoreConfig = schema.new({
            id = id.from(_N, "ViewerMtlsConfig", "TrustStoreConfig"),
            type = "structure",
            name = "TrustStoreConfig",
            target_id = id.from(_N, "TrustStoreConfig"),
            target = M.TrustStoreConfig,
        }),
    },
})

M.DistributionConfig = schema.new({
    id = id.from(_N, "DistributionConfig"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "DistributionConfig", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aliases = schema.new({
            id = id.from(_N, "DistributionConfig", "Aliases"),
            type = "structure",
            name = "Aliases",
            target_id = id.from(_N, "Aliases"),
            target = M.Aliases,
        }),
        DefaultRootObject = schema.new({
            id = id.from(_N, "DistributionConfig", "DefaultRootObject"),
            type = "string",
            name = "DefaultRootObject",
            target_id = prelude.String.id,
        }),
        Origins = schema.new({
            id = id.from(_N, "DistributionConfig", "Origins"),
            type = "structure",
            name = "Origins",
            target_id = id.from(_N, "Origins"),
            target = M.Origins,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginGroups = schema.new({
            id = id.from(_N, "DistributionConfig", "OriginGroups"),
            type = "structure",
            name = "OriginGroups",
            target_id = id.from(_N, "OriginGroups"),
            target = M.OriginGroups,
        }),
        DefaultCacheBehavior = schema.new({
            id = id.from(_N, "DistributionConfig", "DefaultCacheBehavior"),
            type = "structure",
            name = "DefaultCacheBehavior",
            target_id = id.from(_N, "DefaultCacheBehavior"),
            target = M.DefaultCacheBehavior,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CacheBehaviors = schema.new({
            id = id.from(_N, "DistributionConfig", "CacheBehaviors"),
            type = "structure",
            name = "CacheBehaviors",
            target_id = id.from(_N, "CacheBehaviors"),
            target = M.CacheBehaviors,
        }),
        CustomErrorResponses = schema.new({
            id = id.from(_N, "DistributionConfig", "CustomErrorResponses"),
            type = "structure",
            name = "CustomErrorResponses",
            target_id = id.from(_N, "CustomErrorResponses"),
            target = M.CustomErrorResponses,
        }),
        Comment = schema.new({
            id = id.from(_N, "DistributionConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Logging = schema.new({
            id = id.from(_N, "DistributionConfig", "Logging"),
            type = "structure",
            name = "Logging",
            target_id = id.from(_N, "LoggingConfig"),
            target = M.LoggingConfig,
        }),
        PriceClass = schema.new({
            id = id.from(_N, "DistributionConfig", "PriceClass"),
            type = "string",
            name = "PriceClass",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "DistributionConfig", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ViewerCertificate = schema.new({
            id = id.from(_N, "DistributionConfig", "ViewerCertificate"),
            type = "structure",
            name = "ViewerCertificate",
            target_id = id.from(_N, "ViewerCertificate"),
            target = M.ViewerCertificate,
        }),
        Restrictions = schema.new({
            id = id.from(_N, "DistributionConfig", "Restrictions"),
            type = "structure",
            name = "Restrictions",
            target_id = id.from(_N, "Restrictions"),
            target = M.Restrictions,
        }),
        WebACLId = schema.new({
            id = id.from(_N, "DistributionConfig", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
        }),
        HttpVersion = schema.new({
            id = id.from(_N, "DistributionConfig", "HttpVersion"),
            type = "string",
            name = "HttpVersion",
            target_id = prelude.String.id,
        }),
        IsIPV6Enabled = schema.new({
            id = id.from(_N, "DistributionConfig", "IsIPV6Enabled"),
            type = "boolean",
            name = "IsIPV6Enabled",
            target_id = prelude.Boolean.id,
        }),
        ContinuousDeploymentPolicyId = schema.new({
            id = id.from(_N, "DistributionConfig", "ContinuousDeploymentPolicyId"),
            type = "string",
            name = "ContinuousDeploymentPolicyId",
            target_id = prelude.String.id,
        }),
        Staging = schema.new({
            id = id.from(_N, "DistributionConfig", "Staging"),
            type = "boolean",
            name = "Staging",
            target_id = prelude.Boolean.id,
        }),
        AnycastIpListId = schema.new({
            id = id.from(_N, "DistributionConfig", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
        }),
        TenantConfig = schema.new({
            id = id.from(_N, "DistributionConfig", "TenantConfig"),
            type = "structure",
            name = "TenantConfig",
            target_id = id.from(_N, "TenantConfig"),
            target = M.TenantConfig,
        }),
        ConnectionMode = schema.new({
            id = id.from(_N, "DistributionConfig", "ConnectionMode"),
            type = "string",
            name = "ConnectionMode",
            target_id = prelude.String.id,
        }),
        ViewerMtlsConfig = schema.new({
            id = id.from(_N, "DistributionConfig", "ViewerMtlsConfig"),
            type = "structure",
            name = "ViewerMtlsConfig",
            target_id = id.from(_N, "ViewerMtlsConfig"),
            target = M.ViewerMtlsConfig,
        }),
        ConnectionFunctionAssociation = schema.new({
            id = id.from(_N, "DistributionConfig", "ConnectionFunctionAssociation"),
            type = "structure",
            name = "ConnectionFunctionAssociation",
            target_id = id.from(_N, "ConnectionFunctionAssociation"),
            target = M.ConnectionFunctionAssociation,
        }),
        CacheTagConfig = schema.new({
            id = id.from(_N, "DistributionConfig", "CacheTagConfig"),
            type = "structure",
            name = "CacheTagConfig",
            target_id = id.from(_N, "CacheTagConfig"),
            target = M.CacheTagConfig,
        }),
    },
})

M.Distribution = schema.new({
    id = id.from(_N, "Distribution"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Distribution", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ARN = schema.new({
            id = id.from(_N, "Distribution", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "Distribution", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "Distribution", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InProgressInvalidationBatches = schema.new({
            id = id.from(_N, "Distribution", "InProgressInvalidationBatches"),
            type = "integer",
            name = "InProgressInvalidationBatches",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "Distribution", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActiveTrustedSigners = schema.new({
            id = id.from(_N, "Distribution", "ActiveTrustedSigners"),
            type = "structure",
            name = "ActiveTrustedSigners",
            target_id = id.from(_N, "ActiveTrustedSigners"),
            target = M.ActiveTrustedSigners,
        }),
        ActiveTrustedKeyGroups = schema.new({
            id = id.from(_N, "Distribution", "ActiveTrustedKeyGroups"),
            type = "structure",
            name = "ActiveTrustedKeyGroups",
            target_id = id.from(_N, "ActiveTrustedKeyGroups"),
            target = M.ActiveTrustedKeyGroups,
        }),
        DistributionConfig = schema.new({
            id = id.from(_N, "Distribution", "DistributionConfig"),
            type = "structure",
            name = "DistributionConfig",
            target_id = id.from(_N, "DistributionConfig"),
            target = M.DistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AliasICPRecordals = schema.new({
            id = id.from(_N, "Distribution", "AliasICPRecordals"),
            type = "list",
            name = "AliasICPRecordals",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AliasICPRecordal, traits = { [traits.XML_NAME] = { name = "AliasICPRecordal" } } }),
        }),
    },
})

M.CopyDistributionOutput = schema.new({
    id = id.from(_N, "CopyDistributionResult"),
    type = "structure",
    members = {
        Distribution = schema.new({
            id = id.from(_N, "CopyDistributionOutput", "Distribution"),
            type = "structure",
            name = "Distribution",
            target_id = id.from(_N, "Distribution"),
            target = M.Distribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CopyDistributionOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CopyDistributionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DistributionAlreadyExists = schema.new({
    id = id.from(_N, "DistributionAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DistributionAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = schema.new({
    id = id.from(_N, "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InconsistentQuantities = schema.new({
    id = id.from(_N, "InconsistentQuantities"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InconsistentQuantities", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDefaultRootObject = schema.new({
    id = id.from(_N, "InvalidDefaultRootObject"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDefaultRootObject", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidErrorCode = schema.new({
    id = id.from(_N, "InvalidErrorCode"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidErrorCode", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidForwardCookies = schema.new({
    id = id.from(_N, "InvalidForwardCookies"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidForwardCookies", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFunctionAssociation = schema.new({
    id = id.from(_N, "InvalidFunctionAssociation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidFunctionAssociation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidGeoRestrictionParameter = schema.new({
    id = id.from(_N, "InvalidGeoRestrictionParameter"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidGeoRestrictionParameter", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidHeadersForS3Origin = schema.new({
    id = id.from(_N, "InvalidHeadersForS3Origin"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidHeadersForS3Origin", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidLambdaFunctionAssociation = schema.new({
    id = id.from(_N, "InvalidLambdaFunctionAssociation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidLambdaFunctionAssociation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidLocationCode = schema.new({
    id = id.from(_N, "InvalidLocationCode"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidLocationCode", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidMinimumProtocolVersion = schema.new({
    id = id.from(_N, "InvalidMinimumProtocolVersion"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidMinimumProtocolVersion", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOrigin = schema.new({
    id = id.from(_N, "InvalidOrigin"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOrigin", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOriginAccessControl = schema.new({
    id = id.from(_N, "InvalidOriginAccessControl"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOriginAccessControl", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOriginAccessIdentity = schema.new({
    id = id.from(_N, "InvalidOriginAccessIdentity"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOriginAccessIdentity", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOriginKeepaliveTimeout = schema.new({
    id = id.from(_N, "InvalidOriginKeepaliveTimeout"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOriginKeepaliveTimeout", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOriginReadTimeout = schema.new({
    id = id.from(_N, "InvalidOriginReadTimeout"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOriginReadTimeout", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidProtocolSettings = schema.new({
    id = id.from(_N, "InvalidProtocolSettings"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidProtocolSettings", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidQueryStringParameters = schema.new({
    id = id.from(_N, "InvalidQueryStringParameters"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidQueryStringParameters", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRelativePath = schema.new({
    id = id.from(_N, "InvalidRelativePath"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRelativePath", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequiredProtocol = schema.new({
    id = id.from(_N, "InvalidRequiredProtocol"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRequiredProtocol", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidResponseCode = schema.new({
    id = id.from(_N, "InvalidResponseCode"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidResponseCode", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTTLOrder = schema.new({
    id = id.from(_N, "InvalidTTLOrder"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTTLOrder", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidViewerCertificate = schema.new({
    id = id.from(_N, "InvalidViewerCertificate"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidViewerCertificate", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidWebACLId = schema.new({
    id = id.from(_N, "InvalidWebACLId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidWebACLId", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MissingBody = schema.new({
    id = id.from(_N, "MissingBody"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MissingBody", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchCachePolicy = schema.new({
    id = id.from(_N, "NoSuchCachePolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchCachePolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchFieldLevelEncryptionConfig = schema.new({
    id = id.from(_N, "NoSuchFieldLevelEncryptionConfig"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchFieldLevelEncryptionConfig", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchOrigin = schema.new({
    id = id.from(_N, "NoSuchOrigin"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchOrigin", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchOriginRequestPolicy = schema.new({
    id = id.from(_N, "NoSuchOriginRequestPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchOriginRequestPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchRealtimeLogConfig = schema.new({
    id = id.from(_N, "NoSuchRealtimeLogConfig"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchRealtimeLogConfig", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchResponseHeadersPolicy = schema.new({
    id = id.from(_N, "NoSuchResponseHeadersPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchResponseHeadersPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.RealtimeLogConfigOwnerMismatch = schema.new({
    id = id.from(_N, "RealtimeLogConfigOwnerMismatch"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RealtimeLogConfigOwnerMismatch", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyCacheBehaviors = schema.new({
    id = id.from(_N, "TooManyCacheBehaviors"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCacheBehaviors", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyCertificates = schema.new({
    id = id.from(_N, "TooManyCertificates"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCertificates", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyCookieNamesInWhiteList = schema.new({
    id = id.from(_N, "TooManyCookieNamesInWhiteList"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCookieNamesInWhiteList", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributions = schema.new({
    id = id.from(_N, "TooManyDistributions"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributions", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsAssociatedToCachePolicy = schema.new({
    id = id.from(_N, "TooManyDistributionsAssociatedToCachePolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsAssociatedToCachePolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsAssociatedToFieldLevelEncryptionConfig = schema.new({
    id = id.from(_N, "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsAssociatedToKeyGroup = schema.new({
    id = id.from(_N, "TooManyDistributionsAssociatedToKeyGroup"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsAssociatedToKeyGroup", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsAssociatedToOriginAccessControl = schema.new({
    id = id.from(_N, "TooManyDistributionsAssociatedToOriginAccessControl"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsAssociatedToOriginAccessControl", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsAssociatedToOriginRequestPolicy = schema.new({
    id = id.from(_N, "TooManyDistributionsAssociatedToOriginRequestPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsAssociatedToOriginRequestPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsAssociatedToResponseHeadersPolicy = schema.new({
    id = id.from(_N, "TooManyDistributionsAssociatedToResponseHeadersPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsAssociatedToResponseHeadersPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsWithFunctionAssociations = schema.new({
    id = id.from(_N, "TooManyDistributionsWithFunctionAssociations"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsWithFunctionAssociations", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsWithLambdaAssociations = schema.new({
    id = id.from(_N, "TooManyDistributionsWithLambdaAssociations"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsWithLambdaAssociations", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyDistributionsWithSingleFunctionARN = schema.new({
    id = id.from(_N, "TooManyDistributionsWithSingleFunctionARN"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyDistributionsWithSingleFunctionARN", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFunctionAssociations = schema.new({
    id = id.from(_N, "TooManyFunctionAssociations"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFunctionAssociations", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyHeadersInForwardedValues = schema.new({
    id = id.from(_N, "TooManyHeadersInForwardedValues"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyHeadersInForwardedValues", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyKeyGroupsAssociatedToDistribution = schema.new({
    id = id.from(_N, "TooManyKeyGroupsAssociatedToDistribution"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyKeyGroupsAssociatedToDistribution", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyLambdaFunctionAssociations = schema.new({
    id = id.from(_N, "TooManyLambdaFunctionAssociations"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyLambdaFunctionAssociations", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyOriginCustomHeaders = schema.new({
    id = id.from(_N, "TooManyOriginCustomHeaders"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyOriginCustomHeaders", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyOriginGroupsPerDistribution = schema.new({
    id = id.from(_N, "TooManyOriginGroupsPerDistribution"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyOriginGroupsPerDistribution", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyOrigins = schema.new({
    id = id.from(_N, "TooManyOrigins"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyOrigins", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyQueryStringParameters = schema.new({
    id = id.from(_N, "TooManyQueryStringParameters"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyQueryStringParameters", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyTrustedSigners = schema.new({
    id = id.from(_N, "TooManyTrustedSigners"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTrustedSigners", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TrustedKeyGroupDoesNotExist = schema.new({
    id = id.from(_N, "TrustedKeyGroupDoesNotExist"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TrustedKeyGroupDoesNotExist", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TrustedSignerDoesNotExist = schema.new({
    id = id.from(_N, "TrustedSignerDoesNotExist"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TrustedSignerDoesNotExist", "Message"),
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
        }),
    },
})

M.Tags = schema.new({
    id = id.from(_N, "Tags"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "Tags", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateAnycastIpListInput = schema.new({
    id = id.from(_N, "CreateAnycastIpListRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateAnycastIpListInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpCount = schema.new({
            id = id.from(_N, "CreateAnycastIpListInput", "IpCount"),
            type = "integer",
            name = "IpCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAnycastIpListInput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
        IpAddressType = schema.new({
            id = id.from(_N, "CreateAnycastIpListInput", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
        IpamCidrConfigs = schema.new({
            id = id.from(_N, "CreateAnycastIpListInput", "IpamCidrConfigs"),
            type = "list",
            name = "IpamCidrConfigs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.IpamCidrConfig, traits = { [traits.XML_NAME] = { name = "IpamCidrConfig" } } }),
        }),
    },
})

M.CreateAnycastIpListOutput = schema.new({
    id = id.from(_N, "CreateAnycastIpListResult"),
    type = "structure",
    members = {
        AnycastIpList = schema.new({
            id = id.from(_N, "CreateAnycastIpListOutput", "AnycastIpList"),
            type = "structure",
            name = "AnycastIpList",
            target_id = id.from(_N, "AnycastIpList"),
            target = M.AnycastIpList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateAnycastIpListOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.EntityAlreadyExists = schema.new({
    id = id.from(_N, "EntityAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTagging = schema.new({
    id = id.from(_N, "InvalidTagging"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTagging", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedOperation = schema.new({
    id = id.from(_N, "UnsupportedOperation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedOperation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCachePolicyInput = schema.new({
    id = id.from(_N, "CreateCachePolicyRequest"),
    type = "structure",
    members = {
        CachePolicyConfig = schema.new({
            id = id.from(_N, "CreateCachePolicyInput", "CachePolicyConfig"),
            type = "structure",
            name = "CachePolicyConfig",
            target_id = id.from(_N, "CachePolicyConfig"),
            target = M.CachePolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "CachePolicyConfig" },
            },
        }),
    },
})

M.CreateCachePolicyOutput = schema.new({
    id = id.from(_N, "CreateCachePolicyResult"),
    type = "structure",
    members = {
        CachePolicy = schema.new({
            id = id.from(_N, "CreateCachePolicyOutput", "CachePolicy"),
            type = "structure",
            name = "CachePolicy",
            target_id = id.from(_N, "CachePolicy"),
            target = M.CachePolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateCachePolicyOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateCachePolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.TooManyCachePolicies = schema.new({
    id = id.from(_N, "TooManyCachePolicies"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCachePolicies", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyCookiesInCachePolicy = schema.new({
    id = id.from(_N, "TooManyCookiesInCachePolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCookiesInCachePolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyHeadersInCachePolicy = schema.new({
    id = id.from(_N, "TooManyHeadersInCachePolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyHeadersInCachePolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyQueryStringsInCachePolicy = schema.new({
    id = id.from(_N, "TooManyQueryStringsInCachePolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyQueryStringsInCachePolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudFrontOriginAccessIdentityAlreadyExists = schema.new({
    id = id.from(_N, "CloudFrontOriginAccessIdentityAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudFrontOriginAccessIdentityConfig = schema.new({
    id = id.from(_N, "CloudFrontOriginAccessIdentityConfig"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityConfig", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCloudFrontOriginAccessIdentityInput = schema.new({
    id = id.from(_N, "CreateCloudFrontOriginAccessIdentityRequest"),
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityConfig = schema.new({
            id = id.from(_N, "CreateCloudFrontOriginAccessIdentityInput", "CloudFrontOriginAccessIdentityConfig"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentityConfig",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentityConfig"),
            target = M.CloudFrontOriginAccessIdentityConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "CloudFrontOriginAccessIdentityConfig" },
            },
        }),
    },
})

M.CloudFrontOriginAccessIdentity = schema.new({
    id = id.from(_N, "CloudFrontOriginAccessIdentity"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentity", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3CanonicalUserId = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentity", "S3CanonicalUserId"),
            type = "string",
            name = "S3CanonicalUserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudFrontOriginAccessIdentityConfig = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentity", "CloudFrontOriginAccessIdentityConfig"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentityConfig",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentityConfig"),
            target = M.CloudFrontOriginAccessIdentityConfig,
        }),
    },
})

M.CreateCloudFrontOriginAccessIdentityOutput = schema.new({
    id = id.from(_N, "CreateCloudFrontOriginAccessIdentityResult"),
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentity = schema.new({
            id = id.from(_N, "CreateCloudFrontOriginAccessIdentityOutput", "CloudFrontOriginAccessIdentity"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentity",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentity"),
            target = M.CloudFrontOriginAccessIdentity,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateCloudFrontOriginAccessIdentityOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateCloudFrontOriginAccessIdentityOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.TooManyCloudFrontOriginAccessIdentities = schema.new({
    id = id.from(_N, "TooManyCloudFrontOriginAccessIdentities"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCloudFrontOriginAccessIdentities", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.KeyValueStoreAssociation = schema.new({
    id = id.from(_N, "KeyValueStoreAssociation"),
    type = "structure",
    members = {
        KeyValueStoreARN = schema.new({
            id = id.from(_N, "KeyValueStoreAssociation", "KeyValueStoreARN"),
            type = "string",
            name = "KeyValueStoreARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeyValueStoreAssociations = schema.new({
    id = id.from(_N, "KeyValueStoreAssociations"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "KeyValueStoreAssociations", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "KeyValueStoreAssociations", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.KeyValueStoreAssociation, traits = { [traits.XML_NAME] = { name = "KeyValueStoreAssociation" } } }),
        }),
    },
})

M.FunctionConfig = schema.new({
    id = id.from(_N, "FunctionConfig"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "FunctionConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Runtime = schema.new({
            id = id.from(_N, "FunctionConfig", "Runtime"),
            type = "string",
            name = "Runtime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeyValueStoreAssociations = schema.new({
            id = id.from(_N, "FunctionConfig", "KeyValueStoreAssociations"),
            type = "structure",
            name = "KeyValueStoreAssociations",
            target_id = id.from(_N, "KeyValueStoreAssociations"),
            target = M.KeyValueStoreAssociations,
        }),
    },
})

M.CreateConnectionFunctionInput = schema.new({
    id = id.from(_N, "CreateConnectionFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateConnectionFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionFunctionConfig = schema.new({
            id = id.from(_N, "CreateConnectionFunctionInput", "ConnectionFunctionConfig"),
            type = "structure",
            name = "ConnectionFunctionConfig",
            target_id = id.from(_N, "FunctionConfig"),
            target = M.FunctionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionFunctionCode = schema.new({
            id = id.from(_N, "CreateConnectionFunctionInput", "ConnectionFunctionCode"),
            type = "blob",
            name = "ConnectionFunctionCode",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectionFunctionInput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
    },
})

M.ConnectionFunctionSummary = schema.new({
    id = id.from(_N, "ConnectionFunctionSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionFunctionConfig = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "ConnectionFunctionConfig"),
            type = "structure",
            name = "ConnectionFunctionConfig",
            target_id = id.from(_N, "FunctionConfig"),
            target = M.FunctionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionFunctionArn = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "ConnectionFunctionArn"),
            type = "string",
            name = "ConnectionFunctionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "ConnectionFunctionSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateConnectionFunctionOutput = schema.new({
    id = id.from(_N, "CreateConnectionFunctionResult"),
    type = "structure",
    members = {
        ConnectionFunctionSummary = schema.new({
            id = id.from(_N, "CreateConnectionFunctionOutput", "ConnectionFunctionSummary"),
            type = "structure",
            name = "ConnectionFunctionSummary",
            target_id = id.from(_N, "ConnectionFunctionSummary"),
            target = M.ConnectionFunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateConnectionFunctionOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateConnectionFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.EntitySizeLimitExceeded = schema.new({
    id = id.from(_N, "EntitySizeLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntitySizeLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectionGroupInput = schema.new({
    id = id.from(_N, "CreateConnectionGroupRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateConnectionGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Ipv6Enabled = schema.new({
            id = id.from(_N, "CreateConnectionGroupInput", "Ipv6Enabled"),
            type = "boolean",
            name = "Ipv6Enabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectionGroupInput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
        AnycastIpListId = schema.new({
            id = id.from(_N, "CreateConnectionGroupInput", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "CreateConnectionGroupInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ConnectionGroup = schema.new({
    id = id.from(_N, "ConnectionGroup"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ConnectionGroup", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ConnectionGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ConnectionGroup", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ConnectionGroup", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "ConnectionGroup", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ConnectionGroup", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
        Ipv6Enabled = schema.new({
            id = id.from(_N, "ConnectionGroup", "Ipv6Enabled"),
            type = "boolean",
            name = "Ipv6Enabled",
            target_id = prelude.Boolean.id,
        }),
        RoutingEndpoint = schema.new({
            id = id.from(_N, "ConnectionGroup", "RoutingEndpoint"),
            type = "string",
            name = "RoutingEndpoint",
            target_id = prelude.String.id,
        }),
        AnycastIpListId = schema.new({
            id = id.from(_N, "ConnectionGroup", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ConnectionGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "ConnectionGroup", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        IsDefault = schema.new({
            id = id.from(_N, "ConnectionGroup", "IsDefault"),
            type = "boolean",
            name = "IsDefault",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateConnectionGroupOutput = schema.new({
    id = id.from(_N, "CreateConnectionGroupResult"),
    type = "structure",
    members = {
        ConnectionGroup = schema.new({
            id = id.from(_N, "CreateConnectionGroupOutput", "ConnectionGroup"),
            type = "structure",
            name = "ConnectionGroup",
            target_id = id.from(_N, "ConnectionGroup"),
            target = M.ConnectionGroup,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateConnectionGroupOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.ContinuousDeploymentPolicyAlreadyExists = schema.new({
    id = id.from(_N, "ContinuousDeploymentPolicyAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StagingDistributionDnsNames = schema.new({
    id = id.from(_N, "StagingDistributionDnsNames"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "StagingDistributionDnsNames", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "StagingDistributionDnsNames", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "DnsName" } } }),
        }),
    },
})

M.ContinuousDeploymentSingleHeaderConfig = schema.new({
    id = id.from(_N, "ContinuousDeploymentSingleHeaderConfig"),
    type = "structure",
    members = {
        Header = schema.new({
            id = id.from(_N, "ContinuousDeploymentSingleHeaderConfig", "Header"),
            type = "string",
            name = "Header",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ContinuousDeploymentSingleHeaderConfig", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SessionStickinessConfig = schema.new({
    id = id.from(_N, "SessionStickinessConfig"),
    type = "structure",
    members = {
        IdleTTL = schema.new({
            id = id.from(_N, "SessionStickinessConfig", "IdleTTL"),
            type = "integer",
            name = "IdleTTL",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaximumTTL = schema.new({
            id = id.from(_N, "SessionStickinessConfig", "MaximumTTL"),
            type = "integer",
            name = "MaximumTTL",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContinuousDeploymentSingleWeightConfig = schema.new({
    id = id.from(_N, "ContinuousDeploymentSingleWeightConfig"),
    type = "structure",
    members = {
        Weight = schema.new({
            id = id.from(_N, "ContinuousDeploymentSingleWeightConfig", "Weight"),
            type = "float",
            name = "Weight",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SessionStickinessConfig = schema.new({
            id = id.from(_N, "ContinuousDeploymentSingleWeightConfig", "SessionStickinessConfig"),
            type = "structure",
            name = "SessionStickinessConfig",
            target_id = id.from(_N, "SessionStickinessConfig"),
            target = M.SessionStickinessConfig,
        }),
    },
})

M.TrafficConfig = schema.new({
    id = id.from(_N, "TrafficConfig"),
    type = "structure",
    members = {
        SingleWeightConfig = schema.new({
            id = id.from(_N, "TrafficConfig", "SingleWeightConfig"),
            type = "structure",
            name = "SingleWeightConfig",
            target_id = id.from(_N, "ContinuousDeploymentSingleWeightConfig"),
            target = M.ContinuousDeploymentSingleWeightConfig,
        }),
        SingleHeaderConfig = schema.new({
            id = id.from(_N, "TrafficConfig", "SingleHeaderConfig"),
            type = "structure",
            name = "SingleHeaderConfig",
            target_id = id.from(_N, "ContinuousDeploymentSingleHeaderConfig"),
            target = M.ContinuousDeploymentSingleHeaderConfig,
        }),
        Type = schema.new({
            id = id.from(_N, "TrafficConfig", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContinuousDeploymentPolicyConfig = schema.new({
    id = id.from(_N, "ContinuousDeploymentPolicyConfig"),
    type = "structure",
    members = {
        StagingDistributionDnsNames = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyConfig", "StagingDistributionDnsNames"),
            type = "structure",
            name = "StagingDistributionDnsNames",
            target_id = id.from(_N, "StagingDistributionDnsNames"),
            target = M.StagingDistributionDnsNames,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyConfig", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficConfig = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyConfig", "TrafficConfig"),
            type = "structure",
            name = "TrafficConfig",
            target_id = id.from(_N, "TrafficConfig"),
            target = M.TrafficConfig,
        }),
    },
})

M.CreateContinuousDeploymentPolicyInput = schema.new({
    id = id.from(_N, "CreateContinuousDeploymentPolicyRequest"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = schema.new({
            id = id.from(_N, "CreateContinuousDeploymentPolicyInput", "ContinuousDeploymentPolicyConfig"),
            type = "structure",
            name = "ContinuousDeploymentPolicyConfig",
            target_id = id.from(_N, "ContinuousDeploymentPolicyConfig"),
            target = M.ContinuousDeploymentPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "ContinuousDeploymentPolicyConfig" },
            },
        }),
    },
})

M.ContinuousDeploymentPolicy = schema.new({
    id = id.from(_N, "ContinuousDeploymentPolicy"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicy", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicy", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContinuousDeploymentPolicyConfig = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicy", "ContinuousDeploymentPolicyConfig"),
            type = "structure",
            name = "ContinuousDeploymentPolicyConfig",
            target_id = id.from(_N, "ContinuousDeploymentPolicyConfig"),
            target = M.ContinuousDeploymentPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateContinuousDeploymentPolicyOutput = schema.new({
    id = id.from(_N, "CreateContinuousDeploymentPolicyResult"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = schema.new({
            id = id.from(_N, "CreateContinuousDeploymentPolicyOutput", "ContinuousDeploymentPolicy"),
            type = "structure",
            name = "ContinuousDeploymentPolicy",
            target_id = id.from(_N, "ContinuousDeploymentPolicy"),
            target = M.ContinuousDeploymentPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateContinuousDeploymentPolicyOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateContinuousDeploymentPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.StagingDistributionInUse = schema.new({
    id = id.from(_N, "StagingDistributionInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "StagingDistributionInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyContinuousDeploymentPolicies = schema.new({
    id = id.from(_N, "TooManyContinuousDeploymentPolicies"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyContinuousDeploymentPolicies", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ContinuousDeploymentPolicyInUse = schema.new({
    id = id.from(_N, "ContinuousDeploymentPolicyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDistributionInput = schema.new({
    id = id.from(_N, "CreateDistributionRequest"),
    type = "structure",
    members = {
        DistributionConfig = schema.new({
            id = id.from(_N, "CreateDistributionInput", "DistributionConfig"),
            type = "structure",
            name = "DistributionConfig",
            target_id = id.from(_N, "DistributionConfig"),
            target = M.DistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "DistributionConfig" },
            },
        }),
    },
})

M.CreateDistributionOutput = schema.new({
    id = id.from(_N, "CreateDistributionResult"),
    type = "structure",
    members = {
        Distribution = schema.new({
            id = id.from(_N, "CreateDistributionOutput", "Distribution"),
            type = "structure",
            name = "Distribution",
            target_id = id.from(_N, "Distribution"),
            target = M.Distribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateDistributionOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateDistributionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.IllegalOriginAccessConfiguration = schema.new({
    id = id.from(_N, "IllegalOriginAccessConfiguration"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IllegalOriginAccessConfiguration", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDomainNameForOriginAccessControl = schema.new({
    id = id.from(_N, "InvalidDomainNameForOriginAccessControl"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidDomainNameForOriginAccessControl", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchContinuousDeploymentPolicy = schema.new({
    id = id.from(_N, "NoSuchContinuousDeploymentPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchContinuousDeploymentPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GeoRestrictionCustomization = schema.new({
    id = id.from(_N, "GeoRestrictionCustomization"),
    type = "structure",
    members = {
        RestrictionType = schema.new({
            id = id.from(_N, "GeoRestrictionCustomization", "RestrictionType"),
            type = "string",
            name = "RestrictionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Locations = schema.new({
            id = id.from(_N, "GeoRestrictionCustomization", "Locations"),
            type = "list",
            name = "Locations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Location" } } }),
        }),
    },
})

M.WebAclCustomization = schema.new({
    id = id.from(_N, "WebAclCustomization"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "WebAclCustomization", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "WebAclCustomization", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.Customizations = schema.new({
    id = id.from(_N, "Customizations"),
    type = "structure",
    members = {
        WebAcl = schema.new({
            id = id.from(_N, "Customizations", "WebAcl"),
            type = "structure",
            name = "WebAcl",
            target_id = id.from(_N, "WebAclCustomization"),
            target = M.WebAclCustomization,
        }),
        Certificate = schema.new({
            id = id.from(_N, "Customizations", "Certificate"),
            type = "structure",
            name = "Certificate",
            target_id = id.from(_N, "Certificate"),
            target = M.Certificate,
        }),
        GeoRestrictions = schema.new({
            id = id.from(_N, "Customizations", "GeoRestrictions"),
            type = "structure",
            name = "GeoRestrictions",
            target_id = id.from(_N, "GeoRestrictionCustomization"),
            target = M.GeoRestrictionCustomization,
        }),
    },
})

M.DomainItem = schema.new({
    id = id.from(_N, "DomainItem"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "DomainItem", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ManagedCertificateRequest = schema.new({
    id = id.from(_N, "ManagedCertificateRequest"),
    type = "structure",
    members = {
        ValidationTokenHost = schema.new({
            id = id.from(_N, "ManagedCertificateRequest", "ValidationTokenHost"),
            type = "string",
            name = "ValidationTokenHost",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrimaryDomainName = schema.new({
            id = id.from(_N, "ManagedCertificateRequest", "PrimaryDomainName"),
            type = "string",
            name = "PrimaryDomainName",
            target_id = prelude.String.id,
        }),
        CertificateTransparencyLoggingPreference = schema.new({
            id = id.from(_N, "ManagedCertificateRequest", "CertificateTransparencyLoggingPreference"),
            type = "string",
            name = "CertificateTransparencyLoggingPreference",
            target_id = prelude.String.id,
        }),
    },
})

M.Parameter = schema.new({
    id = id.from(_N, "Parameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Parameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Parameter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDistributionTenantInput = schema.new({
    id = id.from(_N, "CreateDistributionTenantRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Domains = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "Domains"),
            type = "list",
            name = "Domains",
            target_id = prelude.Document.id,
            list_member = M.DomainItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
        Customizations = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "Customizations"),
            type = "structure",
            name = "Customizations",
            target_id = id.from(_N, "Customizations"),
            target = M.Customizations,
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.Parameter,
        }),
        ConnectionGroupId = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "ConnectionGroupId"),
            type = "string",
            name = "ConnectionGroupId",
            target_id = prelude.String.id,
        }),
        ManagedCertificateRequest = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "ManagedCertificateRequest"),
            type = "structure",
            name = "ManagedCertificateRequest",
            target_id = id.from(_N, "ManagedCertificateRequest"),
            target = M.ManagedCertificateRequest,
        }),
        Enabled = schema.new({
            id = id.from(_N, "CreateDistributionTenantInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DomainResult = schema.new({
    id = id.from(_N, "DomainResult"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "DomainResult", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DomainResult", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.DistributionTenant = schema.new({
    id = id.from(_N, "DistributionTenant"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DistributionTenant", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        DistributionId = schema.new({
            id = id.from(_N, "DistributionTenant", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DistributionTenant", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "DistributionTenant", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Domains = schema.new({
            id = id.from(_N, "DistributionTenant", "Domains"),
            type = "list",
            name = "Domains",
            target_id = prelude.Document.id,
            list_member = M.DomainResult,
        }),
        Tags = schema.new({
            id = id.from(_N, "DistributionTenant", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
        Customizations = schema.new({
            id = id.from(_N, "DistributionTenant", "Customizations"),
            type = "structure",
            name = "Customizations",
            target_id = id.from(_N, "Customizations"),
            target = M.Customizations,
        }),
        Parameters = schema.new({
            id = id.from(_N, "DistributionTenant", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.Parameter,
        }),
        ConnectionGroupId = schema.new({
            id = id.from(_N, "DistributionTenant", "ConnectionGroupId"),
            type = "string",
            name = "ConnectionGroupId",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "DistributionTenant", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DistributionTenant", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "DistributionTenant", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DistributionTenant", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDistributionTenantOutput = schema.new({
    id = id.from(_N, "CreateDistributionTenantResult"),
    type = "structure",
    members = {
        DistributionTenant = schema.new({
            id = id.from(_N, "CreateDistributionTenantOutput", "DistributionTenant"),
            type = "structure",
            name = "DistributionTenant",
            target_id = id.from(_N, "DistributionTenant"),
            target = M.DistributionTenant,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateDistributionTenantOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.InvalidAssociation = schema.new({
    id = id.from(_N, "InvalidAssociation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidAssociation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DistributionConfigWithTags = schema.new({
    id = id.from(_N, "DistributionConfigWithTags"),
    type = "structure",
    members = {
        DistributionConfig = schema.new({
            id = id.from(_N, "DistributionConfigWithTags", "DistributionConfig"),
            type = "structure",
            name = "DistributionConfig",
            target_id = id.from(_N, "DistributionConfig"),
            target = M.DistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "DistributionConfigWithTags", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDistributionWithTagsInput = schema.new({
    id = id.from(_N, "CreateDistributionWithTagsRequest"),
    type = "structure",
    members = {
        DistributionConfigWithTags = schema.new({
            id = id.from(_N, "CreateDistributionWithTagsInput", "DistributionConfigWithTags"),
            type = "structure",
            name = "DistributionConfigWithTags",
            target_id = id.from(_N, "DistributionConfigWithTags"),
            target = M.DistributionConfigWithTags,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "DistributionConfigWithTags" },
            },
        }),
    },
})

M.CreateDistributionWithTagsOutput = schema.new({
    id = id.from(_N, "CreateDistributionWithTagsResult"),
    type = "structure",
    members = {
        Distribution = schema.new({
            id = id.from(_N, "CreateDistributionWithTagsOutput", "Distribution"),
            type = "structure",
            name = "Distribution",
            target_id = id.from(_N, "Distribution"),
            target = M.Distribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateDistributionWithTagsOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateDistributionWithTagsOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.ContentTypeProfile = schema.new({
    id = id.from(_N, "ContentTypeProfile"),
    type = "structure",
    members = {
        Format = schema.new({
            id = id.from(_N, "ContentTypeProfile", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProfileId = schema.new({
            id = id.from(_N, "ContentTypeProfile", "ProfileId"),
            type = "string",
            name = "ProfileId",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "ContentTypeProfile", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContentTypeProfiles = schema.new({
    id = id.from(_N, "ContentTypeProfiles"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "ContentTypeProfiles", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ContentTypeProfiles", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ContentTypeProfile, traits = { [traits.XML_NAME] = { name = "ContentTypeProfile" } } }),
        }),
    },
})

M.ContentTypeProfileConfig = schema.new({
    id = id.from(_N, "ContentTypeProfileConfig"),
    type = "structure",
    members = {
        ForwardWhenContentTypeIsUnknown = schema.new({
            id = id.from(_N, "ContentTypeProfileConfig", "ForwardWhenContentTypeIsUnknown"),
            type = "boolean",
            name = "ForwardWhenContentTypeIsUnknown",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContentTypeProfiles = schema.new({
            id = id.from(_N, "ContentTypeProfileConfig", "ContentTypeProfiles"),
            type = "structure",
            name = "ContentTypeProfiles",
            target_id = id.from(_N, "ContentTypeProfiles"),
            target = M.ContentTypeProfiles,
        }),
    },
})

M.QueryArgProfile = schema.new({
    id = id.from(_N, "QueryArgProfile"),
    type = "structure",
    members = {
        QueryArg = schema.new({
            id = id.from(_N, "QueryArgProfile", "QueryArg"),
            type = "string",
            name = "QueryArg",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProfileId = schema.new({
            id = id.from(_N, "QueryArgProfile", "ProfileId"),
            type = "string",
            name = "ProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.QueryArgProfiles = schema.new({
    id = id.from(_N, "QueryArgProfiles"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "QueryArgProfiles", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "QueryArgProfiles", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.QueryArgProfile, traits = { [traits.XML_NAME] = { name = "QueryArgProfile" } } }),
        }),
    },
})

M.QueryArgProfileConfig = schema.new({
    id = id.from(_N, "QueryArgProfileConfig"),
    type = "structure",
    members = {
        ForwardWhenQueryArgProfileIsUnknown = schema.new({
            id = id.from(_N, "QueryArgProfileConfig", "ForwardWhenQueryArgProfileIsUnknown"),
            type = "boolean",
            name = "ForwardWhenQueryArgProfileIsUnknown",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QueryArgProfiles = schema.new({
            id = id.from(_N, "QueryArgProfileConfig", "QueryArgProfiles"),
            type = "structure",
            name = "QueryArgProfiles",
            target_id = id.from(_N, "QueryArgProfiles"),
            target = M.QueryArgProfiles,
        }),
    },
})

M.FieldLevelEncryptionConfig = schema.new({
    id = id.from(_N, "FieldLevelEncryptionConfig"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "FieldLevelEncryptionConfig", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "FieldLevelEncryptionConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        QueryArgProfileConfig = schema.new({
            id = id.from(_N, "FieldLevelEncryptionConfig", "QueryArgProfileConfig"),
            type = "structure",
            name = "QueryArgProfileConfig",
            target_id = id.from(_N, "QueryArgProfileConfig"),
            target = M.QueryArgProfileConfig,
        }),
        ContentTypeProfileConfig = schema.new({
            id = id.from(_N, "FieldLevelEncryptionConfig", "ContentTypeProfileConfig"),
            type = "structure",
            name = "ContentTypeProfileConfig",
            target_id = id.from(_N, "ContentTypeProfileConfig"),
            target = M.ContentTypeProfileConfig,
        }),
    },
})

M.CreateFieldLevelEncryptionConfigInput = schema.new({
    id = id.from(_N, "CreateFieldLevelEncryptionConfigRequest"),
    type = "structure",
    members = {
        FieldLevelEncryptionConfig = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionConfigInput", "FieldLevelEncryptionConfig"),
            type = "structure",
            name = "FieldLevelEncryptionConfig",
            target_id = id.from(_N, "FieldLevelEncryptionConfig"),
            target = M.FieldLevelEncryptionConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "FieldLevelEncryptionConfig" },
            },
        }),
    },
})

M.FieldLevelEncryption = schema.new({
    id = id.from(_N, "FieldLevelEncryption"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FieldLevelEncryption", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "FieldLevelEncryption", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldLevelEncryptionConfig = schema.new({
            id = id.from(_N, "FieldLevelEncryption", "FieldLevelEncryptionConfig"),
            type = "structure",
            name = "FieldLevelEncryptionConfig",
            target_id = id.from(_N, "FieldLevelEncryptionConfig"),
            target = M.FieldLevelEncryptionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateFieldLevelEncryptionConfigOutput = schema.new({
    id = id.from(_N, "CreateFieldLevelEncryptionConfigResult"),
    type = "structure",
    members = {
        FieldLevelEncryption = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionConfigOutput", "FieldLevelEncryption"),
            type = "structure",
            name = "FieldLevelEncryption",
            target_id = id.from(_N, "FieldLevelEncryption"),
            target = M.FieldLevelEncryption,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionConfigOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.FieldLevelEncryptionConfigAlreadyExists = schema.new({
    id = id.from(_N, "FieldLevelEncryptionConfigAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FieldLevelEncryptionConfigAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchFieldLevelEncryptionProfile = schema.new({
    id = id.from(_N, "NoSuchFieldLevelEncryptionProfile"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchFieldLevelEncryptionProfile", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.QueryArgProfileEmpty = schema.new({
    id = id.from(_N, "QueryArgProfileEmpty"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "QueryArgProfileEmpty", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFieldLevelEncryptionConfigs = schema.new({
    id = id.from(_N, "TooManyFieldLevelEncryptionConfigs"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFieldLevelEncryptionConfigs", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFieldLevelEncryptionContentTypeProfiles = schema.new({
    id = id.from(_N, "TooManyFieldLevelEncryptionContentTypeProfiles"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFieldLevelEncryptionContentTypeProfiles", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFieldLevelEncryptionQueryArgProfiles = schema.new({
    id = id.from(_N, "TooManyFieldLevelEncryptionQueryArgProfiles"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFieldLevelEncryptionQueryArgProfiles", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.FieldPatterns = schema.new({
    id = id.from(_N, "FieldPatterns"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "FieldPatterns", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "FieldPatterns", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "FieldPattern" } } }),
        }),
    },
})

M.EncryptionEntity = schema.new({
    id = id.from(_N, "EncryptionEntity"),
    type = "structure",
    members = {
        PublicKeyId = schema.new({
            id = id.from(_N, "EncryptionEntity", "PublicKeyId"),
            type = "string",
            name = "PublicKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderId = schema.new({
            id = id.from(_N, "EncryptionEntity", "ProviderId"),
            type = "string",
            name = "ProviderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldPatterns = schema.new({
            id = id.from(_N, "EncryptionEntity", "FieldPatterns"),
            type = "structure",
            name = "FieldPatterns",
            target_id = id.from(_N, "FieldPatterns"),
            target = M.FieldPatterns,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EncryptionEntities = schema.new({
    id = id.from(_N, "EncryptionEntities"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "EncryptionEntities", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "EncryptionEntities", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.EncryptionEntity, traits = { [traits.XML_NAME] = { name = "EncryptionEntity" } } }),
        }),
    },
})

M.FieldLevelEncryptionProfileConfig = schema.new({
    id = id.from(_N, "FieldLevelEncryptionProfileConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CallerReference = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileConfig", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        EncryptionEntities = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileConfig", "EncryptionEntities"),
            type = "structure",
            name = "EncryptionEntities",
            target_id = id.from(_N, "EncryptionEntities"),
            target = M.EncryptionEntities,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateFieldLevelEncryptionProfileInput = schema.new({
    id = id.from(_N, "CreateFieldLevelEncryptionProfileRequest"),
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionProfileInput", "FieldLevelEncryptionProfileConfig"),
            type = "structure",
            name = "FieldLevelEncryptionProfileConfig",
            target_id = id.from(_N, "FieldLevelEncryptionProfileConfig"),
            target = M.FieldLevelEncryptionProfileConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "FieldLevelEncryptionProfileConfig" },
            },
        }),
    },
})

M.FieldLevelEncryptionProfile = schema.new({
    id = id.from(_N, "FieldLevelEncryptionProfile"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfile", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfile", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldLevelEncryptionProfileConfig = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfile", "FieldLevelEncryptionProfileConfig"),
            type = "structure",
            name = "FieldLevelEncryptionProfileConfig",
            target_id = id.from(_N, "FieldLevelEncryptionProfileConfig"),
            target = M.FieldLevelEncryptionProfileConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateFieldLevelEncryptionProfileOutput = schema.new({
    id = id.from(_N, "CreateFieldLevelEncryptionProfileResult"),
    type = "structure",
    members = {
        FieldLevelEncryptionProfile = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionProfileOutput", "FieldLevelEncryptionProfile"),
            type = "structure",
            name = "FieldLevelEncryptionProfile",
            target_id = id.from(_N, "FieldLevelEncryptionProfile"),
            target = M.FieldLevelEncryptionProfile,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionProfileOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateFieldLevelEncryptionProfileOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.FieldLevelEncryptionProfileAlreadyExists = schema.new({
    id = id.from(_N, "FieldLevelEncryptionProfileAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.FieldLevelEncryptionProfileSizeExceeded = schema.new({
    id = id.from(_N, "FieldLevelEncryptionProfileSizeExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileSizeExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchPublicKey = schema.new({
    id = id.from(_N, "NoSuchPublicKey"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchPublicKey", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFieldLevelEncryptionEncryptionEntities = schema.new({
    id = id.from(_N, "TooManyFieldLevelEncryptionEncryptionEntities"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFieldLevelEncryptionEncryptionEntities", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFieldLevelEncryptionFieldPatterns = schema.new({
    id = id.from(_N, "TooManyFieldLevelEncryptionFieldPatterns"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFieldLevelEncryptionFieldPatterns", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFieldLevelEncryptionProfiles = schema.new({
    id = id.from(_N, "TooManyFieldLevelEncryptionProfiles"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFieldLevelEncryptionProfiles", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFunctionInput = schema.new({
    id = id.from(_N, "CreateFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FunctionConfig = schema.new({
            id = id.from(_N, "CreateFunctionInput", "FunctionConfig"),
            type = "structure",
            name = "FunctionConfig",
            target_id = id.from(_N, "FunctionConfig"),
            target = M.FunctionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FunctionCode = schema.new({
            id = id.from(_N, "CreateFunctionInput", "FunctionCode"),
            type = "blob",
            name = "FunctionCode",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FunctionMetadata = schema.new({
    id = id.from(_N, "FunctionMetadata"),
    type = "structure",
    members = {
        FunctionARN = schema.new({
            id = id.from(_N, "FunctionMetadata", "FunctionARN"),
            type = "string",
            name = "FunctionARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "FunctionMetadata", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "FunctionMetadata", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "FunctionMetadata", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FunctionSummary = schema.new({
    id = id.from(_N, "FunctionSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "FunctionSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "FunctionSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        FunctionConfig = schema.new({
            id = id.from(_N, "FunctionSummary", "FunctionConfig"),
            type = "structure",
            name = "FunctionConfig",
            target_id = id.from(_N, "FunctionConfig"),
            target = M.FunctionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FunctionMetadata = schema.new({
            id = id.from(_N, "FunctionSummary", "FunctionMetadata"),
            type = "structure",
            name = "FunctionMetadata",
            target_id = id.from(_N, "FunctionMetadata"),
            target = M.FunctionMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateFunctionOutput = schema.new({
    id = id.from(_N, "CreateFunctionResult"),
    type = "structure",
    members = {
        FunctionSummary = schema.new({
            id = id.from(_N, "CreateFunctionOutput", "FunctionSummary"),
            type = "structure",
            name = "FunctionSummary",
            target_id = id.from(_N, "FunctionSummary"),
            target = M.FunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateFunctionOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.FunctionAlreadyExists = schema.new({
    id = id.from(_N, "FunctionAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FunctionAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.FunctionSizeLimitExceeded = schema.new({
    id = id.from(_N, "FunctionSizeLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FunctionSizeLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyFunctions = schema.new({
    id = id.from(_N, "TooManyFunctions"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyFunctions", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Paths = schema.new({
    id = id.from(_N, "Paths"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "Paths", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "Paths", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Path" } } }),
        }),
    },
})

M.InvalidationBatch = schema.new({
    id = id.from(_N, "InvalidationBatch"),
    type = "structure",
    members = {
        Paths = schema.new({
            id = id.from(_N, "InvalidationBatch", "Paths"),
            type = "structure",
            name = "Paths",
            target_id = id.from(_N, "Paths"),
            target = M.Paths,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CallerReference = schema.new({
            id = id.from(_N, "InvalidationBatch", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateInvalidationInput = schema.new({
    id = id.from(_N, "CreateInvalidationRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "CreateInvalidationInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        InvalidationBatch = schema.new({
            id = id.from(_N, "CreateInvalidationInput", "InvalidationBatch"),
            type = "structure",
            name = "InvalidationBatch",
            target_id = id.from(_N, "InvalidationBatch"),
            target = M.InvalidationBatch,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "InvalidationBatch" },
            },
        }),
    },
})

M.Invalidation = schema.new({
    id = id.from(_N, "Invalidation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Invalidation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "Invalidation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateTime = schema.new({
            id = id.from(_N, "Invalidation", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InvalidationBatch = schema.new({
            id = id.from(_N, "Invalidation", "InvalidationBatch"),
            type = "structure",
            name = "InvalidationBatch",
            target_id = id.from(_N, "InvalidationBatch"),
            target = M.InvalidationBatch,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateInvalidationOutput = schema.new({
    id = id.from(_N, "CreateInvalidationResult"),
    type = "structure",
    members = {
        Location = schema.new({
            id = id.from(_N, "CreateInvalidationOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        Invalidation = schema.new({
            id = id.from(_N, "CreateInvalidationOutput", "Invalidation"),
            type = "structure",
            name = "Invalidation",
            target_id = id.from(_N, "Invalidation"),
            target = M.Invalidation,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.TooManyInvalidationsInProgress = schema.new({
    id = id.from(_N, "TooManyInvalidationsInProgress"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyInvalidationsInProgress", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateInvalidationForDistributionTenantInput = schema.new({
    id = id.from(_N, "CreateInvalidationForDistributionTenantRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateInvalidationForDistributionTenantInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        InvalidationBatch = schema.new({
            id = id.from(_N, "CreateInvalidationForDistributionTenantInput", "InvalidationBatch"),
            type = "structure",
            name = "InvalidationBatch",
            target_id = id.from(_N, "InvalidationBatch"),
            target = M.InvalidationBatch,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "InvalidationBatch" },
            },
        }),
    },
})

M.CreateInvalidationForDistributionTenantOutput = schema.new({
    id = id.from(_N, "CreateInvalidationForDistributionTenantResult"),
    type = "structure",
    members = {
        Location = schema.new({
            id = id.from(_N, "CreateInvalidationForDistributionTenantOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        Invalidation = schema.new({
            id = id.from(_N, "CreateInvalidationForDistributionTenantOutput", "Invalidation"),
            type = "structure",
            name = "Invalidation",
            target_id = id.from(_N, "Invalidation"),
            target = M.Invalidation,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.KeyGroupConfig = schema.new({
    id = id.from(_N, "KeyGroupConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "KeyGroupConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "KeyGroupConfig", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PublicKey" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "KeyGroupConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKeyGroupInput = schema.new({
    id = id.from(_N, "CreateKeyGroupRequest"),
    type = "structure",
    members = {
        KeyGroupConfig = schema.new({
            id = id.from(_N, "CreateKeyGroupInput", "KeyGroupConfig"),
            type = "structure",
            name = "KeyGroupConfig",
            target_id = id.from(_N, "KeyGroupConfig"),
            target = M.KeyGroupConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "KeyGroupConfig" },
            },
        }),
    },
})

M.KeyGroup = schema.new({
    id = id.from(_N, "KeyGroup"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "KeyGroup", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "KeyGroup", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeyGroupConfig = schema.new({
            id = id.from(_N, "KeyGroup", "KeyGroupConfig"),
            type = "structure",
            name = "KeyGroupConfig",
            target_id = id.from(_N, "KeyGroupConfig"),
            target = M.KeyGroupConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateKeyGroupOutput = schema.new({
    id = id.from(_N, "CreateKeyGroupResult"),
    type = "structure",
    members = {
        KeyGroup = schema.new({
            id = id.from(_N, "CreateKeyGroupOutput", "KeyGroup"),
            type = "structure",
            name = "KeyGroup",
            target_id = id.from(_N, "KeyGroup"),
            target = M.KeyGroup,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateKeyGroupOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateKeyGroupOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.KeyGroupAlreadyExists = schema.new({
    id = id.from(_N, "KeyGroupAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "KeyGroupAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyKeyGroups = schema.new({
    id = id.from(_N, "TooManyKeyGroups"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyKeyGroups", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyPublicKeysInKeyGroup = schema.new({
    id = id.from(_N, "TooManyPublicKeysInKeyGroup"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyPublicKeysInKeyGroup", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportSource = schema.new({
    id = id.from(_N, "ImportSource"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "ImportSource", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceARN = schema.new({
            id = id.from(_N, "ImportSource", "SourceARN"),
            type = "string",
            name = "SourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateKeyValueStoreInput = schema.new({
    id = id.from(_N, "CreateKeyValueStoreRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateKeyValueStoreInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "CreateKeyValueStoreInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        ImportSource = schema.new({
            id = id.from(_N, "CreateKeyValueStoreInput", "ImportSource"),
            type = "structure",
            name = "ImportSource",
            target_id = id.from(_N, "ImportSource"),
            target = M.ImportSource,
        }),
    },
})

M.KeyValueStore = schema.new({
    id = id.from(_N, "KeyValueStore"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "KeyValueStore", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "KeyValueStore", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "KeyValueStore", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ARN = schema.new({
            id = id.from(_N, "KeyValueStore", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "KeyValueStore", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "KeyValueStore", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateKeyValueStoreOutput = schema.new({
    id = id.from(_N, "CreateKeyValueStoreResult"),
    type = "structure",
    members = {
        KeyValueStore = schema.new({
            id = id.from(_N, "CreateKeyValueStoreOutput", "KeyValueStore"),
            type = "structure",
            name = "KeyValueStore",
            target_id = id.from(_N, "KeyValueStore"),
            target = M.KeyValueStore,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateKeyValueStoreOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateKeyValueStoreOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.RealtimeMetricsSubscriptionConfig = schema.new({
    id = id.from(_N, "RealtimeMetricsSubscriptionConfig"),
    type = "structure",
    members = {
        RealtimeMetricsSubscriptionStatus = schema.new({
            id = id.from(_N, "RealtimeMetricsSubscriptionConfig", "RealtimeMetricsSubscriptionStatus"),
            type = "string",
            name = "RealtimeMetricsSubscriptionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MonitoringSubscription = schema.new({
    id = id.from(_N, "MonitoringSubscription"),
    type = "structure",
    members = {
        RealtimeMetricsSubscriptionConfig = schema.new({
            id = id.from(_N, "MonitoringSubscription", "RealtimeMetricsSubscriptionConfig"),
            type = "structure",
            name = "RealtimeMetricsSubscriptionConfig",
            target_id = id.from(_N, "RealtimeMetricsSubscriptionConfig"),
            target = M.RealtimeMetricsSubscriptionConfig,
        }),
    },
})

M.CreateMonitoringSubscriptionInput = schema.new({
    id = id.from(_N, "CreateMonitoringSubscriptionRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "CreateMonitoringSubscriptionInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MonitoringSubscription = schema.new({
            id = id.from(_N, "CreateMonitoringSubscriptionInput", "MonitoringSubscription"),
            type = "structure",
            name = "MonitoringSubscription",
            target_id = id.from(_N, "MonitoringSubscription"),
            target = M.MonitoringSubscription,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "MonitoringSubscription" },
            },
        }),
    },
})

M.CreateMonitoringSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateMonitoringSubscriptionResult"),
    type = "structure",
    members = {
        MonitoringSubscription = schema.new({
            id = id.from(_N, "CreateMonitoringSubscriptionOutput", "MonitoringSubscription"),
            type = "structure",
            name = "MonitoringSubscription",
            target_id = id.from(_N, "MonitoringSubscription"),
            target = M.MonitoringSubscription,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.MonitoringSubscriptionAlreadyExists = schema.new({
    id = id.from(_N, "MonitoringSubscriptionAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MonitoringSubscriptionAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OriginAccessControlConfig = schema.new({
    id = id.from(_N, "OriginAccessControlConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "OriginAccessControlConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "OriginAccessControlConfig", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SigningProtocol = schema.new({
            id = id.from(_N, "OriginAccessControlConfig", "SigningProtocol"),
            type = "string",
            name = "SigningProtocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SigningBehavior = schema.new({
            id = id.from(_N, "OriginAccessControlConfig", "SigningBehavior"),
            type = "string",
            name = "SigningBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginAccessControlOriginType = schema.new({
            id = id.from(_N, "OriginAccessControlConfig", "OriginAccessControlOriginType"),
            type = "string",
            name = "OriginAccessControlOriginType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOriginAccessControlInput = schema.new({
    id = id.from(_N, "CreateOriginAccessControlRequest"),
    type = "structure",
    members = {
        OriginAccessControlConfig = schema.new({
            id = id.from(_N, "CreateOriginAccessControlInput", "OriginAccessControlConfig"),
            type = "structure",
            name = "OriginAccessControlConfig",
            target_id = id.from(_N, "OriginAccessControlConfig"),
            target = M.OriginAccessControlConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "OriginAccessControlConfig" },
            },
        }),
    },
})

M.OriginAccessControl = schema.new({
    id = id.from(_N, "OriginAccessControl"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "OriginAccessControl", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginAccessControlConfig = schema.new({
            id = id.from(_N, "OriginAccessControl", "OriginAccessControlConfig"),
            type = "structure",
            name = "OriginAccessControlConfig",
            target_id = id.from(_N, "OriginAccessControlConfig"),
            target = M.OriginAccessControlConfig,
        }),
    },
})

M.CreateOriginAccessControlOutput = schema.new({
    id = id.from(_N, "CreateOriginAccessControlResult"),
    type = "structure",
    members = {
        OriginAccessControl = schema.new({
            id = id.from(_N, "CreateOriginAccessControlOutput", "OriginAccessControl"),
            type = "structure",
            name = "OriginAccessControl",
            target_id = id.from(_N, "OriginAccessControl"),
            target = M.OriginAccessControl,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateOriginAccessControlOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateOriginAccessControlOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.OriginAccessControlAlreadyExists = schema.new({
    id = id.from(_N, "OriginAccessControlAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OriginAccessControlAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyOriginAccessControls = schema.new({
    id = id.from(_N, "TooManyOriginAccessControls"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyOriginAccessControls", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OriginRequestPolicyCookiesConfig = schema.new({
    id = id.from(_N, "OriginRequestPolicyCookiesConfig"),
    type = "structure",
    members = {
        CookieBehavior = schema.new({
            id = id.from(_N, "OriginRequestPolicyCookiesConfig", "CookieBehavior"),
            type = "string",
            name = "CookieBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Cookies = schema.new({
            id = id.from(_N, "OriginRequestPolicyCookiesConfig", "Cookies"),
            type = "structure",
            name = "Cookies",
            target_id = id.from(_N, "CookieNames"),
            target = M.CookieNames,
        }),
    },
})

M.OriginRequestPolicyHeadersConfig = schema.new({
    id = id.from(_N, "OriginRequestPolicyHeadersConfig"),
    type = "structure",
    members = {
        HeaderBehavior = schema.new({
            id = id.from(_N, "OriginRequestPolicyHeadersConfig", "HeaderBehavior"),
            type = "string",
            name = "HeaderBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Headers = schema.new({
            id = id.from(_N, "OriginRequestPolicyHeadersConfig", "Headers"),
            type = "structure",
            name = "Headers",
            target_id = id.from(_N, "Headers"),
            target = M.Headers,
        }),
    },
})

M.OriginRequestPolicyQueryStringsConfig = schema.new({
    id = id.from(_N, "OriginRequestPolicyQueryStringsConfig"),
    type = "structure",
    members = {
        QueryStringBehavior = schema.new({
            id = id.from(_N, "OriginRequestPolicyQueryStringsConfig", "QueryStringBehavior"),
            type = "string",
            name = "QueryStringBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QueryStrings = schema.new({
            id = id.from(_N, "OriginRequestPolicyQueryStringsConfig", "QueryStrings"),
            type = "structure",
            name = "QueryStrings",
            target_id = id.from(_N, "QueryStringNames"),
            target = M.QueryStringNames,
        }),
    },
})

M.OriginRequestPolicyConfig = schema.new({
    id = id.from(_N, "OriginRequestPolicyConfig"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "OriginRequestPolicyConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "OriginRequestPolicyConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HeadersConfig = schema.new({
            id = id.from(_N, "OriginRequestPolicyConfig", "HeadersConfig"),
            type = "structure",
            name = "HeadersConfig",
            target_id = id.from(_N, "OriginRequestPolicyHeadersConfig"),
            target = M.OriginRequestPolicyHeadersConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CookiesConfig = schema.new({
            id = id.from(_N, "OriginRequestPolicyConfig", "CookiesConfig"),
            type = "structure",
            name = "CookiesConfig",
            target_id = id.from(_N, "OriginRequestPolicyCookiesConfig"),
            target = M.OriginRequestPolicyCookiesConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QueryStringsConfig = schema.new({
            id = id.from(_N, "OriginRequestPolicyConfig", "QueryStringsConfig"),
            type = "structure",
            name = "QueryStringsConfig",
            target_id = id.from(_N, "OriginRequestPolicyQueryStringsConfig"),
            target = M.OriginRequestPolicyQueryStringsConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOriginRequestPolicyInput = schema.new({
    id = id.from(_N, "CreateOriginRequestPolicyRequest"),
    type = "structure",
    members = {
        OriginRequestPolicyConfig = schema.new({
            id = id.from(_N, "CreateOriginRequestPolicyInput", "OriginRequestPolicyConfig"),
            type = "structure",
            name = "OriginRequestPolicyConfig",
            target_id = id.from(_N, "OriginRequestPolicyConfig"),
            target = M.OriginRequestPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "OriginRequestPolicyConfig" },
            },
        }),
    },
})

M.OriginRequestPolicy = schema.new({
    id = id.from(_N, "OriginRequestPolicy"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "OriginRequestPolicy", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "OriginRequestPolicy", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginRequestPolicyConfig = schema.new({
            id = id.from(_N, "OriginRequestPolicy", "OriginRequestPolicyConfig"),
            type = "structure",
            name = "OriginRequestPolicyConfig",
            target_id = id.from(_N, "OriginRequestPolicyConfig"),
            target = M.OriginRequestPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOriginRequestPolicyOutput = schema.new({
    id = id.from(_N, "CreateOriginRequestPolicyResult"),
    type = "structure",
    members = {
        OriginRequestPolicy = schema.new({
            id = id.from(_N, "CreateOriginRequestPolicyOutput", "OriginRequestPolicy"),
            type = "structure",
            name = "OriginRequestPolicy",
            target_id = id.from(_N, "OriginRequestPolicy"),
            target = M.OriginRequestPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateOriginRequestPolicyOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateOriginRequestPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.OriginRequestPolicyAlreadyExists = schema.new({
    id = id.from(_N, "OriginRequestPolicyAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OriginRequestPolicyAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyCookiesInOriginRequestPolicy = schema.new({
    id = id.from(_N, "TooManyCookiesInOriginRequestPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCookiesInOriginRequestPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyHeadersInOriginRequestPolicy = schema.new({
    id = id.from(_N, "TooManyHeadersInOriginRequestPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyHeadersInOriginRequestPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyOriginRequestPolicies = schema.new({
    id = id.from(_N, "TooManyOriginRequestPolicies"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyOriginRequestPolicies", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyQueryStringsInOriginRequestPolicy = schema.new({
    id = id.from(_N, "TooManyQueryStringsInOriginRequestPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyQueryStringsInOriginRequestPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.PublicKeyConfig = schema.new({
    id = id.from(_N, "PublicKeyConfig"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "PublicKeyConfig", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "PublicKeyConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncodedKey = schema.new({
            id = id.from(_N, "PublicKeyConfig", "EncodedKey"),
            type = "string",
            name = "EncodedKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "PublicKeyConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePublicKeyInput = schema.new({
    id = id.from(_N, "CreatePublicKeyRequest"),
    type = "structure",
    members = {
        PublicKeyConfig = schema.new({
            id = id.from(_N, "CreatePublicKeyInput", "PublicKeyConfig"),
            type = "structure",
            name = "PublicKeyConfig",
            target_id = id.from(_N, "PublicKeyConfig"),
            target = M.PublicKeyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "PublicKeyConfig" },
            },
        }),
    },
})

M.PublicKey = schema.new({
    id = id.from(_N, "PublicKey"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "PublicKey", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "PublicKey", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PublicKeyConfig = schema.new({
            id = id.from(_N, "PublicKey", "PublicKeyConfig"),
            type = "structure",
            name = "PublicKeyConfig",
            target_id = id.from(_N, "PublicKeyConfig"),
            target = M.PublicKeyConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePublicKeyOutput = schema.new({
    id = id.from(_N, "CreatePublicKeyResult"),
    type = "structure",
    members = {
        PublicKey = schema.new({
            id = id.from(_N, "CreatePublicKeyOutput", "PublicKey"),
            type = "structure",
            name = "PublicKey",
            target_id = id.from(_N, "PublicKey"),
            target = M.PublicKey,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreatePublicKeyOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreatePublicKeyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.PublicKeyAlreadyExists = schema.new({
    id = id.from(_N, "PublicKeyAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PublicKeyAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyPublicKeys = schema.new({
    id = id.from(_N, "TooManyPublicKeys"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyPublicKeys", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisStreamConfig = schema.new({
    id = id.from(_N, "KinesisStreamConfig"),
    type = "structure",
    members = {
        RoleARN = schema.new({
            id = id.from(_N, "KinesisStreamConfig", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StreamARN = schema.new({
            id = id.from(_N, "KinesisStreamConfig", "StreamARN"),
            type = "string",
            name = "StreamARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EndPoint = schema.new({
    id = id.from(_N, "EndPoint"),
    type = "structure",
    members = {
        StreamType = schema.new({
            id = id.from(_N, "EndPoint", "StreamType"),
            type = "string",
            name = "StreamType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KinesisStreamConfig = schema.new({
            id = id.from(_N, "EndPoint", "KinesisStreamConfig"),
            type = "structure",
            name = "KinesisStreamConfig",
            target_id = id.from(_N, "KinesisStreamConfig"),
            target = M.KinesisStreamConfig,
        }),
    },
})

M.CreateRealtimeLogConfigInput = schema.new({
    id = id.from(_N, "CreateRealtimeLogConfigRequest"),
    type = "structure",
    members = {
        EndPoints = schema.new({
            id = id.from(_N, "CreateRealtimeLogConfigInput", "EndPoints"),
            type = "list",
            name = "EndPoints",
            target_id = prelude.Document.id,
            list_member = M.EndPoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "CreateRealtimeLogConfigInput", "Fields"),
            type = "list",
            name = "Fields",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Field" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateRealtimeLogConfigInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SamplingRate = schema.new({
            id = id.from(_N, "CreateRealtimeLogConfigInput", "SamplingRate"),
            type = "long",
            name = "SamplingRate",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RealtimeLogConfig = schema.new({
    id = id.from(_N, "RealtimeLogConfig"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "RealtimeLogConfig", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RealtimeLogConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SamplingRate = schema.new({
            id = id.from(_N, "RealtimeLogConfig", "SamplingRate"),
            type = "long",
            name = "SamplingRate",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndPoints = schema.new({
            id = id.from(_N, "RealtimeLogConfig", "EndPoints"),
            type = "list",
            name = "EndPoints",
            target_id = prelude.Document.id,
            list_member = M.EndPoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "RealtimeLogConfig", "Fields"),
            type = "list",
            name = "Fields",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Field" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRealtimeLogConfigOutput = schema.new({
    id = id.from(_N, "CreateRealtimeLogConfigResult"),
    type = "structure",
    members = {
        RealtimeLogConfig = schema.new({
            id = id.from(_N, "CreateRealtimeLogConfigOutput", "RealtimeLogConfig"),
            type = "structure",
            name = "RealtimeLogConfig",
            target_id = id.from(_N, "RealtimeLogConfig"),
            target = M.RealtimeLogConfig,
        }),
    },
})

M.RealtimeLogConfigAlreadyExists = schema.new({
    id = id.from(_N, "RealtimeLogConfigAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RealtimeLogConfigAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRealtimeLogConfigs = schema.new({
    id = id.from(_N, "TooManyRealtimeLogConfigs"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyRealtimeLogConfigs", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResponseHeadersPolicyAccessControlAllowHeaders = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowHeaders"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowHeaders", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowHeaders", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Header" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyAccessControlAllowMethods = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowMethods"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowMethods", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowMethods", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Method" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyAccessControlAllowOrigins = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowOrigins"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowOrigins", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowOrigins", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Origin" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyAccessControlExposeHeaders = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyAccessControlExposeHeaders"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlExposeHeaders", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAccessControlExposeHeaders", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Header" } } }),
        }),
    },
})

M.ResponseHeadersPolicyCorsConfig = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyCorsConfig"),
    type = "structure",
    members = {
        AccessControlAllowOrigins = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCorsConfig", "AccessControlAllowOrigins"),
            type = "structure",
            name = "AccessControlAllowOrigins",
            target_id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowOrigins"),
            target = M.ResponseHeadersPolicyAccessControlAllowOrigins,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessControlAllowHeaders = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCorsConfig", "AccessControlAllowHeaders"),
            type = "structure",
            name = "AccessControlAllowHeaders",
            target_id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowHeaders"),
            target = M.ResponseHeadersPolicyAccessControlAllowHeaders,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessControlAllowMethods = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCorsConfig", "AccessControlAllowMethods"),
            type = "structure",
            name = "AccessControlAllowMethods",
            target_id = id.from(_N, "ResponseHeadersPolicyAccessControlAllowMethods"),
            target = M.ResponseHeadersPolicyAccessControlAllowMethods,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessControlAllowCredentials = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCorsConfig", "AccessControlAllowCredentials"),
            type = "boolean",
            name = "AccessControlAllowCredentials",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessControlExposeHeaders = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCorsConfig", "AccessControlExposeHeaders"),
            type = "structure",
            name = "AccessControlExposeHeaders",
            target_id = id.from(_N, "ResponseHeadersPolicyAccessControlExposeHeaders"),
            target = M.ResponseHeadersPolicyAccessControlExposeHeaders,
        }),
        AccessControlMaxAgeSec = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCorsConfig", "AccessControlMaxAgeSec"),
            type = "integer",
            name = "AccessControlMaxAgeSec",
            target_id = prelude.Integer.id,
        }),
        OriginOverride = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCorsConfig", "OriginOverride"),
            type = "boolean",
            name = "OriginOverride",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyCustomHeader = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyCustomHeader"),
    type = "structure",
    members = {
        Header = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCustomHeader", "Header"),
            type = "string",
            name = "Header",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCustomHeader", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Override = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCustomHeader", "Override"),
            type = "boolean",
            name = "Override",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyCustomHeadersConfig = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyCustomHeadersConfig"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCustomHeadersConfig", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyCustomHeadersConfig", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResponseHeadersPolicyCustomHeader, traits = { [traits.XML_NAME] = { name = "ResponseHeadersPolicyCustomHeader" } } }),
        }),
    },
})

M.ResponseHeadersPolicyRemoveHeader = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyRemoveHeader"),
    type = "structure",
    members = {
        Header = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyRemoveHeader", "Header"),
            type = "string",
            name = "Header",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyRemoveHeadersConfig = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyRemoveHeadersConfig"),
    type = "structure",
    members = {
        Quantity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyRemoveHeadersConfig", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyRemoveHeadersConfig", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResponseHeadersPolicyRemoveHeader, traits = { [traits.XML_NAME] = { name = "ResponseHeadersPolicyRemoveHeader" } } }),
        }),
    },
})

M.ResponseHeadersPolicyContentSecurityPolicy = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyContentSecurityPolicy"),
    type = "structure",
    members = {
        Override = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyContentSecurityPolicy", "Override"),
            type = "boolean",
            name = "Override",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContentSecurityPolicy = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyContentSecurityPolicy", "ContentSecurityPolicy"),
            type = "string",
            name = "ContentSecurityPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyContentTypeOptions = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyContentTypeOptions"),
    type = "structure",
    members = {
        Override = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyContentTypeOptions", "Override"),
            type = "boolean",
            name = "Override",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyFrameOptions = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyFrameOptions"),
    type = "structure",
    members = {
        Override = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyFrameOptions", "Override"),
            type = "boolean",
            name = "Override",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FrameOption = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyFrameOptions", "FrameOption"),
            type = "string",
            name = "FrameOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyReferrerPolicy = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyReferrerPolicy"),
    type = "structure",
    members = {
        Override = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyReferrerPolicy", "Override"),
            type = "boolean",
            name = "Override",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReferrerPolicy = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyReferrerPolicy", "ReferrerPolicy"),
            type = "string",
            name = "ReferrerPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyStrictTransportSecurity = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyStrictTransportSecurity"),
    type = "structure",
    members = {
        Override = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyStrictTransportSecurity", "Override"),
            type = "boolean",
            name = "Override",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncludeSubdomains = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyStrictTransportSecurity", "IncludeSubdomains"),
            type = "boolean",
            name = "IncludeSubdomains",
            target_id = prelude.Boolean.id,
        }),
        Preload = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyStrictTransportSecurity", "Preload"),
            type = "boolean",
            name = "Preload",
            target_id = prelude.Boolean.id,
        }),
        AccessControlMaxAgeSec = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyStrictTransportSecurity", "AccessControlMaxAgeSec"),
            type = "integer",
            name = "AccessControlMaxAgeSec",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyXSSProtection = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyXSSProtection"),
    type = "structure",
    members = {
        Override = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyXSSProtection", "Override"),
            type = "boolean",
            name = "Override",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protection = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyXSSProtection", "Protection"),
            type = "boolean",
            name = "Protection",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ModeBlock = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyXSSProtection", "ModeBlock"),
            type = "boolean",
            name = "ModeBlock",
            target_id = prelude.Boolean.id,
        }),
        ReportUri = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyXSSProtection", "ReportUri"),
            type = "string",
            name = "ReportUri",
            target_id = prelude.String.id,
        }),
    },
})

M.ResponseHeadersPolicySecurityHeadersConfig = schema.new({
    id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig"),
    type = "structure",
    members = {
        XSSProtection = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig", "XSSProtection"),
            type = "structure",
            name = "XSSProtection",
            target_id = id.from(_N, "ResponseHeadersPolicyXSSProtection"),
            target = M.ResponseHeadersPolicyXSSProtection,
        }),
        FrameOptions = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig", "FrameOptions"),
            type = "structure",
            name = "FrameOptions",
            target_id = id.from(_N, "ResponseHeadersPolicyFrameOptions"),
            target = M.ResponseHeadersPolicyFrameOptions,
        }),
        ReferrerPolicy = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig", "ReferrerPolicy"),
            type = "structure",
            name = "ReferrerPolicy",
            target_id = id.from(_N, "ResponseHeadersPolicyReferrerPolicy"),
            target = M.ResponseHeadersPolicyReferrerPolicy,
        }),
        ContentSecurityPolicy = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig", "ContentSecurityPolicy"),
            type = "structure",
            name = "ContentSecurityPolicy",
            target_id = id.from(_N, "ResponseHeadersPolicyContentSecurityPolicy"),
            target = M.ResponseHeadersPolicyContentSecurityPolicy,
        }),
        ContentTypeOptions = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig", "ContentTypeOptions"),
            type = "structure",
            name = "ContentTypeOptions",
            target_id = id.from(_N, "ResponseHeadersPolicyContentTypeOptions"),
            target = M.ResponseHeadersPolicyContentTypeOptions,
        }),
        StrictTransportSecurity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig", "StrictTransportSecurity"),
            type = "structure",
            name = "StrictTransportSecurity",
            target_id = id.from(_N, "ResponseHeadersPolicyStrictTransportSecurity"),
            target = M.ResponseHeadersPolicyStrictTransportSecurity,
        }),
    },
})

M.ResponseHeadersPolicyServerTimingHeadersConfig = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyServerTimingHeadersConfig"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyServerTimingHeadersConfig", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SamplingRate = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyServerTimingHeadersConfig", "SamplingRate"),
            type = "double",
            name = "SamplingRate",
            target_id = prelude.Double.id,
        }),
    },
})

M.ResponseHeadersPolicyConfig = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyConfig"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CorsConfig = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyConfig", "CorsConfig"),
            type = "structure",
            name = "CorsConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyCorsConfig"),
            target = M.ResponseHeadersPolicyCorsConfig,
        }),
        SecurityHeadersConfig = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyConfig", "SecurityHeadersConfig"),
            type = "structure",
            name = "SecurityHeadersConfig",
            target_id = id.from(_N, "ResponseHeadersPolicySecurityHeadersConfig"),
            target = M.ResponseHeadersPolicySecurityHeadersConfig,
        }),
        ServerTimingHeadersConfig = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyConfig", "ServerTimingHeadersConfig"),
            type = "structure",
            name = "ServerTimingHeadersConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyServerTimingHeadersConfig"),
            target = M.ResponseHeadersPolicyServerTimingHeadersConfig,
        }),
        CustomHeadersConfig = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyConfig", "CustomHeadersConfig"),
            type = "structure",
            name = "CustomHeadersConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyCustomHeadersConfig"),
            target = M.ResponseHeadersPolicyCustomHeadersConfig,
        }),
        RemoveHeadersConfig = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyConfig", "RemoveHeadersConfig"),
            type = "structure",
            name = "RemoveHeadersConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyRemoveHeadersConfig"),
            target = M.ResponseHeadersPolicyRemoveHeadersConfig,
        }),
    },
})

M.CreateResponseHeadersPolicyInput = schema.new({
    id = id.from(_N, "CreateResponseHeadersPolicyRequest"),
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = schema.new({
            id = id.from(_N, "CreateResponseHeadersPolicyInput", "ResponseHeadersPolicyConfig"),
            type = "structure",
            name = "ResponseHeadersPolicyConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyConfig"),
            target = M.ResponseHeadersPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "ResponseHeadersPolicyConfig" },
            },
        }),
    },
})

M.ResponseHeadersPolicy = schema.new({
    id = id.from(_N, "ResponseHeadersPolicy"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResponseHeadersPolicy", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "ResponseHeadersPolicy", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResponseHeadersPolicyConfig = schema.new({
            id = id.from(_N, "ResponseHeadersPolicy", "ResponseHeadersPolicyConfig"),
            type = "structure",
            name = "ResponseHeadersPolicyConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyConfig"),
            target = M.ResponseHeadersPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateResponseHeadersPolicyOutput = schema.new({
    id = id.from(_N, "CreateResponseHeadersPolicyResult"),
    type = "structure",
    members = {
        ResponseHeadersPolicy = schema.new({
            id = id.from(_N, "CreateResponseHeadersPolicyOutput", "ResponseHeadersPolicy"),
            type = "structure",
            name = "ResponseHeadersPolicy",
            target_id = id.from(_N, "ResponseHeadersPolicy"),
            target = M.ResponseHeadersPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateResponseHeadersPolicyOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateResponseHeadersPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.ResponseHeadersPolicyAlreadyExists = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooLongCSPInResponseHeadersPolicy = schema.new({
    id = id.from(_N, "TooLongCSPInResponseHeadersPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooLongCSPInResponseHeadersPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyCustomHeadersInResponseHeadersPolicy = schema.new({
    id = id.from(_N, "TooManyCustomHeadersInResponseHeadersPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyCustomHeadersInResponseHeadersPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRemoveHeadersInResponseHeadersPolicy = schema.new({
    id = id.from(_N, "TooManyRemoveHeadersInResponseHeadersPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyRemoveHeadersInResponseHeadersPolicy", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyResponseHeadersPolicies = schema.new({
    id = id.from(_N, "TooManyResponseHeadersPolicies"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyResponseHeadersPolicies", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StreamingLoggingConfig = schema.new({
    id = id.from(_N, "StreamingLoggingConfig"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "StreamingLoggingConfig", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Bucket = schema.new({
            id = id.from(_N, "StreamingLoggingConfig", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Prefix = schema.new({
            id = id.from(_N, "StreamingLoggingConfig", "Prefix"),
            type = "string",
            name = "Prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Origin = schema.new({
    id = id.from(_N, "S3Origin"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "S3Origin", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginAccessIdentity = schema.new({
            id = id.from(_N, "S3Origin", "OriginAccessIdentity"),
            type = "string",
            name = "OriginAccessIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StreamingDistributionConfig = schema.new({
    id = id.from(_N, "StreamingDistributionConfig"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Origin = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "S3Origin"),
            type = "structure",
            name = "S3Origin",
            target_id = id.from(_N, "S3Origin"),
            target = M.S3Origin,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aliases = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "Aliases"),
            type = "structure",
            name = "Aliases",
            target_id = id.from(_N, "Aliases"),
            target = M.Aliases,
        }),
        Comment = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Logging = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "Logging"),
            type = "structure",
            name = "Logging",
            target_id = id.from(_N, "StreamingLoggingConfig"),
            target = M.StreamingLoggingConfig,
        }),
        TrustedSigners = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "TrustedSigners"),
            type = "structure",
            name = "TrustedSigners",
            target_id = id.from(_N, "TrustedSigners"),
            target = M.TrustedSigners,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PriceClass = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "PriceClass"),
            type = "string",
            name = "PriceClass",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "StreamingDistributionConfig", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateStreamingDistributionInput = schema.new({
    id = id.from(_N, "CreateStreamingDistributionRequest"),
    type = "structure",
    members = {
        StreamingDistributionConfig = schema.new({
            id = id.from(_N, "CreateStreamingDistributionInput", "StreamingDistributionConfig"),
            type = "structure",
            name = "StreamingDistributionConfig",
            target_id = id.from(_N, "StreamingDistributionConfig"),
            target = M.StreamingDistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "StreamingDistributionConfig" },
            },
        }),
    },
})

M.StreamingDistribution = schema.new({
    id = id.from(_N, "StreamingDistribution"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StreamingDistribution", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ARN = schema.new({
            id = id.from(_N, "StreamingDistribution", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "StreamingDistribution", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "StreamingDistribution", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        DomainName = schema.new({
            id = id.from(_N, "StreamingDistribution", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActiveTrustedSigners = schema.new({
            id = id.from(_N, "StreamingDistribution", "ActiveTrustedSigners"),
            type = "structure",
            name = "ActiveTrustedSigners",
            target_id = id.from(_N, "ActiveTrustedSigners"),
            target = M.ActiveTrustedSigners,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StreamingDistributionConfig = schema.new({
            id = id.from(_N, "StreamingDistribution", "StreamingDistributionConfig"),
            type = "structure",
            name = "StreamingDistributionConfig",
            target_id = id.from(_N, "StreamingDistributionConfig"),
            target = M.StreamingDistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateStreamingDistributionOutput = schema.new({
    id = id.from(_N, "CreateStreamingDistributionResult"),
    type = "structure",
    members = {
        StreamingDistribution = schema.new({
            id = id.from(_N, "CreateStreamingDistributionOutput", "StreamingDistribution"),
            type = "structure",
            name = "StreamingDistribution",
            target_id = id.from(_N, "StreamingDistribution"),
            target = M.StreamingDistribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateStreamingDistributionOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateStreamingDistributionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.StreamingDistributionAlreadyExists = schema.new({
    id = id.from(_N, "StreamingDistributionAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "StreamingDistributionAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyStreamingDistributionCNAMEs = schema.new({
    id = id.from(_N, "TooManyStreamingDistributionCNAMEs"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyStreamingDistributionCNAMEs", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyStreamingDistributions = schema.new({
    id = id.from(_N, "TooManyStreamingDistributions"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyStreamingDistributions", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StreamingDistributionConfigWithTags = schema.new({
    id = id.from(_N, "StreamingDistributionConfigWithTags"),
    type = "structure",
    members = {
        StreamingDistributionConfig = schema.new({
            id = id.from(_N, "StreamingDistributionConfigWithTags", "StreamingDistributionConfig"),
            type = "structure",
            name = "StreamingDistributionConfig",
            target_id = id.from(_N, "StreamingDistributionConfig"),
            target = M.StreamingDistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StreamingDistributionConfigWithTags", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateStreamingDistributionWithTagsInput = schema.new({
    id = id.from(_N, "CreateStreamingDistributionWithTagsRequest"),
    type = "structure",
    members = {
        StreamingDistributionConfigWithTags = schema.new({
            id = id.from(_N, "CreateStreamingDistributionWithTagsInput", "StreamingDistributionConfigWithTags"),
            type = "structure",
            name = "StreamingDistributionConfigWithTags",
            target_id = id.from(_N, "StreamingDistributionConfigWithTags"),
            target = M.StreamingDistributionConfigWithTags,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "StreamingDistributionConfigWithTags" },
            },
        }),
    },
})

M.CreateStreamingDistributionWithTagsOutput = schema.new({
    id = id.from(_N, "CreateStreamingDistributionWithTagsResult"),
    type = "structure",
    members = {
        StreamingDistribution = schema.new({
            id = id.from(_N, "CreateStreamingDistributionWithTagsOutput", "StreamingDistribution"),
            type = "structure",
            name = "StreamingDistribution",
            target_id = id.from(_N, "StreamingDistribution"),
            target = M.StreamingDistribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateStreamingDistributionWithTagsOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateStreamingDistributionWithTagsOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.CreateTrustStoreInput = schema.new({
    id = id.from(_N, "CreateTrustStoreRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateTrustStoreInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CaCertificatesBundleSource = schema.new({
            id = id.from(_N, "CreateTrustStoreInput", "CaCertificatesBundleSource"),
            type = "union",
            name = "CaCertificatesBundleSource",
            target_id = id.from(_N, "CaCertificatesBundleSource"),
            target = M.CaCertificatesBundleSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTrustStoreInput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
    },
})

M.TrustStore = schema.new({
    id = id.from(_N, "TrustStore"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TrustStore", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "TrustStore", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "TrustStore", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "TrustStore", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        NumberOfCaCertificates = schema.new({
            id = id.from(_N, "TrustStore", "NumberOfCaCertificates"),
            type = "integer",
            name = "NumberOfCaCertificates",
            target_id = prelude.Integer.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "TrustStore", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "TrustStore", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrustStoreOutput = schema.new({
    id = id.from(_N, "CreateTrustStoreResult"),
    type = "structure",
    members = {
        TrustStore = schema.new({
            id = id.from(_N, "CreateTrustStoreOutput", "TrustStore"),
            type = "structure",
            name = "TrustStore",
            target_id = id.from(_N, "TrustStore"),
            target = M.TrustStore,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateTrustStoreOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.VpcOriginEndpointConfig = schema.new({
    id = id.from(_N, "VpcOriginEndpointConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "VpcOriginEndpointConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "VpcOriginEndpointConfig", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HTTPPort = schema.new({
            id = id.from(_N, "VpcOriginEndpointConfig", "HTTPPort"),
            type = "integer",
            name = "HTTPPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HTTPSPort = schema.new({
            id = id.from(_N, "VpcOriginEndpointConfig", "HTTPSPort"),
            type = "integer",
            name = "HTTPSPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginProtocolPolicy = schema.new({
            id = id.from(_N, "VpcOriginEndpointConfig", "OriginProtocolPolicy"),
            type = "string",
            name = "OriginProtocolPolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginSslProtocols = schema.new({
            id = id.from(_N, "VpcOriginEndpointConfig", "OriginSslProtocols"),
            type = "structure",
            name = "OriginSslProtocols",
            target_id = id.from(_N, "OriginSslProtocols"),
            target = M.OriginSslProtocols,
        }),
    },
})

M.CreateVpcOriginInput = schema.new({
    id = id.from(_N, "CreateVpcOriginRequest"),
    type = "structure",
    members = {
        VpcOriginEndpointConfig = schema.new({
            id = id.from(_N, "CreateVpcOriginInput", "VpcOriginEndpointConfig"),
            type = "structure",
            name = "VpcOriginEndpointConfig",
            target_id = id.from(_N, "VpcOriginEndpointConfig"),
            target = M.VpcOriginEndpointConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVpcOriginInput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
        }),
    },
})

M.VpcOrigin = schema.new({
    id = id.from(_N, "VpcOrigin"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "VpcOrigin", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "VpcOrigin", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "VpcOrigin", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "VpcOrigin", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "VpcOrigin", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "VpcOrigin", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcOriginEndpointConfig = schema.new({
            id = id.from(_N, "VpcOrigin", "VpcOriginEndpointConfig"),
            type = "structure",
            name = "VpcOriginEndpointConfig",
            target_id = id.from(_N, "VpcOriginEndpointConfig"),
            target = M.VpcOriginEndpointConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateVpcOriginOutput = schema.new({
    id = id.from(_N, "CreateVpcOriginResult"),
    type = "structure",
    members = {
        VpcOrigin = schema.new({
            id = id.from(_N, "CreateVpcOriginOutput", "VpcOrigin"),
            type = "structure",
            name = "VpcOrigin",
            target_id = id.from(_N, "VpcOrigin"),
            target = M.VpcOrigin,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateVpcOriginOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "CreateVpcOriginOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DeleteAnycastIpListInput = schema.new({
    id = id.from(_N, "DeleteAnycastIpListRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteAnycastIpListInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteAnycastIpListInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteAnycastIpListOutput = prelude.Unit

M.IllegalDelete = schema.new({
    id = id.from(_N, "IllegalDelete"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IllegalDelete", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCachePolicyInput = schema.new({
    id = id.from(_N, "DeleteCachePolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteCachePolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteCachePolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteCachePolicyOutput = prelude.Unit

M.CloudFrontOriginAccessIdentityInUse = schema.new({
    id = id.from(_N, "CloudFrontOriginAccessIdentityInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCloudFrontOriginAccessIdentityInput = schema.new({
    id = id.from(_N, "DeleteCloudFrontOriginAccessIdentityRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteCloudFrontOriginAccessIdentityInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteCloudFrontOriginAccessIdentityInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteCloudFrontOriginAccessIdentityOutput = prelude.Unit

M.NoSuchCloudFrontOriginAccessIdentity = schema.new({
    id = id.from(_N, "NoSuchCloudFrontOriginAccessIdentity"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchCloudFrontOriginAccessIdentity", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConnectionFunctionInput = schema.new({
    id = id.from(_N, "DeleteConnectionFunctionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteConnectionFunctionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteConnectionFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteConnectionFunctionOutput = prelude.Unit

M.DeleteConnectionGroupInput = schema.new({
    id = id.from(_N, "DeleteConnectionGroupRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteConnectionGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteConnectionGroupInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteConnectionGroupOutput = prelude.Unit

M.ResourceNotDisabled = schema.new({
    id = id.from(_N, "ResourceNotDisabled"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotDisabled", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteContinuousDeploymentPolicyInput = schema.new({
    id = id.from(_N, "DeleteContinuousDeploymentPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteContinuousDeploymentPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteContinuousDeploymentPolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteContinuousDeploymentPolicyOutput = prelude.Unit

M.DeleteDistributionInput = schema.new({
    id = id.from(_N, "DeleteDistributionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteDistributionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteDistributionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteDistributionOutput = prelude.Unit

M.DistributionNotDisabled = schema.new({
    id = id.from(_N, "DistributionNotDisabled"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DistributionNotDisabled", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceInUse = schema.new({
    id = id.from(_N, "ResourceInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDistributionTenantInput = schema.new({
    id = id.from(_N, "DeleteDistributionTenantRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteDistributionTenantInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteDistributionTenantInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteDistributionTenantOutput = prelude.Unit

M.DeleteFieldLevelEncryptionConfigInput = schema.new({
    id = id.from(_N, "DeleteFieldLevelEncryptionConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteFieldLevelEncryptionConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteFieldLevelEncryptionConfigInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteFieldLevelEncryptionConfigOutput = prelude.Unit

M.FieldLevelEncryptionConfigInUse = schema.new({
    id = id.from(_N, "FieldLevelEncryptionConfigInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FieldLevelEncryptionConfigInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFieldLevelEncryptionProfileInput = schema.new({
    id = id.from(_N, "DeleteFieldLevelEncryptionProfileRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteFieldLevelEncryptionProfileInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteFieldLevelEncryptionProfileInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteFieldLevelEncryptionProfileOutput = prelude.Unit

M.FieldLevelEncryptionProfileInUse = schema.new({
    id = id.from(_N, "FieldLevelEncryptionProfileInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFunctionInput = schema.new({
    id = id.from(_N, "DeleteFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteFunctionOutput = prelude.Unit

M.FunctionInUse = schema.new({
    id = id.from(_N, "FunctionInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FunctionInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchFunctionExists = schema.new({
    id = id.from(_N, "NoSuchFunctionExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchFunctionExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteKeyGroupInput = schema.new({
    id = id.from(_N, "DeleteKeyGroupRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteKeyGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteKeyGroupInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteKeyGroupOutput = prelude.Unit

M.NoSuchResource = schema.new({
    id = id.from(_N, "NoSuchResource"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchResource", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteKeyValueStoreInput = schema.new({
    id = id.from(_N, "DeleteKeyValueStoreRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteKeyValueStoreInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteKeyValueStoreInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteKeyValueStoreOutput = prelude.Unit

M.DeleteMonitoringSubscriptionInput = schema.new({
    id = id.from(_N, "DeleteMonitoringSubscriptionRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "DeleteMonitoringSubscriptionInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMonitoringSubscriptionOutput = schema.new({
    id = id.from(_N, "DeleteMonitoringSubscriptionResult"),
    type = "structure",
})

M.NoSuchMonitoringSubscription = schema.new({
    id = id.from(_N, "NoSuchMonitoringSubscription"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchMonitoringSubscription", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteOriginAccessControlInput = schema.new({
    id = id.from(_N, "DeleteOriginAccessControlRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteOriginAccessControlInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteOriginAccessControlInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteOriginAccessControlOutput = prelude.Unit

M.NoSuchOriginAccessControl = schema.new({
    id = id.from(_N, "NoSuchOriginAccessControl"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchOriginAccessControl", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OriginAccessControlInUse = schema.new({
    id = id.from(_N, "OriginAccessControlInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OriginAccessControlInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteOriginRequestPolicyInput = schema.new({
    id = id.from(_N, "DeleteOriginRequestPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteOriginRequestPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteOriginRequestPolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteOriginRequestPolicyOutput = prelude.Unit

M.OriginRequestPolicyInUse = schema.new({
    id = id.from(_N, "OriginRequestPolicyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OriginRequestPolicyInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeletePublicKeyInput = schema.new({
    id = id.from(_N, "DeletePublicKeyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeletePublicKeyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeletePublicKeyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeletePublicKeyOutput = prelude.Unit

M.PublicKeyInUse = schema.new({
    id = id.from(_N, "PublicKeyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PublicKeyInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRealtimeLogConfigInput = schema.new({
    id = id.from(_N, "DeleteRealtimeLogConfigRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteRealtimeLogConfigInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "DeleteRealtimeLogConfigInput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRealtimeLogConfigOutput = prelude.Unit

M.RealtimeLogConfigInUse = schema.new({
    id = id.from(_N, "RealtimeLogConfigInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RealtimeLogConfigInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = prelude.Unit

M.DeleteResponseHeadersPolicyInput = schema.new({
    id = id.from(_N, "DeleteResponseHeadersPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteResponseHeadersPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteResponseHeadersPolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteResponseHeadersPolicyOutput = prelude.Unit

M.ResponseHeadersPolicyInUse = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteStreamingDistributionInput = schema.new({
    id = id.from(_N, "DeleteStreamingDistributionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteStreamingDistributionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteStreamingDistributionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteStreamingDistributionOutput = prelude.Unit

M.NoSuchStreamingDistribution = schema.new({
    id = id.from(_N, "NoSuchStreamingDistribution"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchStreamingDistribution", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StreamingDistributionNotDisabled = schema.new({
    id = id.from(_N, "StreamingDistributionNotDisabled"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "StreamingDistributionNotDisabled", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTrustStoreInput = schema.new({
    id = id.from(_N, "DeleteTrustStoreRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteTrustStoreInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteTrustStoreInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteTrustStoreOutput = prelude.Unit

M.DeleteVpcOriginInput = schema.new({
    id = id.from(_N, "DeleteVpcOriginRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteVpcOriginInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteVpcOriginInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteVpcOriginOutput = schema.new({
    id = id.from(_N, "DeleteVpcOriginResult"),
    type = "structure",
    members = {
        VpcOrigin = schema.new({
            id = id.from(_N, "DeleteVpcOriginOutput", "VpcOrigin"),
            type = "structure",
            name = "VpcOrigin",
            target_id = id.from(_N, "VpcOrigin"),
            target = M.VpcOrigin,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DeleteVpcOriginOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DescribeConnectionFunctionInput = schema.new({
    id = id.from(_N, "DescribeConnectionFunctionRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DescribeConnectionFunctionInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "DescribeConnectionFunctionInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Stage" },
            },
        }),
    },
})

M.DescribeConnectionFunctionOutput = schema.new({
    id = id.from(_N, "DescribeConnectionFunctionResult"),
    type = "structure",
    members = {
        ConnectionFunctionSummary = schema.new({
            id = id.from(_N, "DescribeConnectionFunctionOutput", "ConnectionFunctionSummary"),
            type = "structure",
            name = "ConnectionFunctionSummary",
            target_id = id.from(_N, "ConnectionFunctionSummary"),
            target = M.ConnectionFunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DescribeConnectionFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DescribeFunctionInput = schema.new({
    id = id.from(_N, "DescribeFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "DescribeFunctionInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Stage" },
            },
        }),
    },
})

M.DescribeFunctionOutput = schema.new({
    id = id.from(_N, "DescribeFunctionResult"),
    type = "structure",
    members = {
        FunctionSummary = schema.new({
            id = id.from(_N, "DescribeFunctionOutput", "FunctionSummary"),
            type = "structure",
            name = "FunctionSummary",
            target_id = id.from(_N, "FunctionSummary"),
            target = M.FunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DescribeFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DescribeKeyValueStoreInput = schema.new({
    id = id.from(_N, "DescribeKeyValueStoreRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeKeyValueStoreOutput = schema.new({
    id = id.from(_N, "DescribeKeyValueStoreResult"),
    type = "structure",
    members = {
        KeyValueStore = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "KeyValueStore"),
            type = "structure",
            name = "KeyValueStore",
            target_id = id.from(_N, "KeyValueStore"),
            target = M.KeyValueStore,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DisassociateDistributionTenantWebACLInput = schema.new({
    id = id.from(_N, "DisassociateDistributionTenantWebACLRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateDistributionTenantWebACLInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DisassociateDistributionTenantWebACLInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DisassociateDistributionTenantWebACLOutput = schema.new({
    id = id.from(_N, "DisassociateDistributionTenantWebACLResult"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateDistributionTenantWebACLOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "DisassociateDistributionTenantWebACLOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DisassociateDistributionWebACLInput = schema.new({
    id = id.from(_N, "DisassociateDistributionWebACLRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateDistributionWebACLInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DisassociateDistributionWebACLInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DisassociateDistributionWebACLOutput = schema.new({
    id = id.from(_N, "DisassociateDistributionWebACLResult"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateDistributionWebACLOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "DisassociateDistributionWebACLOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetAnycastIpListInput = schema.new({
    id = id.from(_N, "GetAnycastIpListRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetAnycastIpListInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAnycastIpListOutput = schema.new({
    id = id.from(_N, "GetAnycastIpListResult"),
    type = "structure",
    members = {
        AnycastIpList = schema.new({
            id = id.from(_N, "GetAnycastIpListOutput", "AnycastIpList"),
            type = "structure",
            name = "AnycastIpList",
            target_id = id.from(_N, "AnycastIpList"),
            target = M.AnycastIpList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetAnycastIpListOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetCachePolicyInput = schema.new({
    id = id.from(_N, "GetCachePolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetCachePolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCachePolicyOutput = schema.new({
    id = id.from(_N, "GetCachePolicyResult"),
    type = "structure",
    members = {
        CachePolicy = schema.new({
            id = id.from(_N, "GetCachePolicyOutput", "CachePolicy"),
            type = "structure",
            name = "CachePolicy",
            target_id = id.from(_N, "CachePolicy"),
            target = M.CachePolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetCachePolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetCachePolicyConfigInput = schema.new({
    id = id.from(_N, "GetCachePolicyConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetCachePolicyConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCachePolicyConfigOutput = schema.new({
    id = id.from(_N, "GetCachePolicyConfigResult"),
    type = "structure",
    members = {
        CachePolicyConfig = schema.new({
            id = id.from(_N, "GetCachePolicyConfigOutput", "CachePolicyConfig"),
            type = "structure",
            name = "CachePolicyConfig",
            target_id = id.from(_N, "CachePolicyConfig"),
            target = M.CachePolicyConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetCachePolicyConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetCloudFrontOriginAccessIdentityInput = schema.new({
    id = id.from(_N, "GetCloudFrontOriginAccessIdentityRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetCloudFrontOriginAccessIdentityInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCloudFrontOriginAccessIdentityOutput = schema.new({
    id = id.from(_N, "GetCloudFrontOriginAccessIdentityResult"),
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentity = schema.new({
            id = id.from(_N, "GetCloudFrontOriginAccessIdentityOutput", "CloudFrontOriginAccessIdentity"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentity",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentity"),
            target = M.CloudFrontOriginAccessIdentity,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetCloudFrontOriginAccessIdentityOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetCloudFrontOriginAccessIdentityConfigInput = schema.new({
    id = id.from(_N, "GetCloudFrontOriginAccessIdentityConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetCloudFrontOriginAccessIdentityConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCloudFrontOriginAccessIdentityConfigOutput = schema.new({
    id = id.from(_N, "GetCloudFrontOriginAccessIdentityConfigResult"),
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityConfig = schema.new({
            id = id.from(_N, "GetCloudFrontOriginAccessIdentityConfigOutput", "CloudFrontOriginAccessIdentityConfig"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentityConfig",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentityConfig"),
            target = M.CloudFrontOriginAccessIdentityConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetCloudFrontOriginAccessIdentityConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetConnectionFunctionInput = schema.new({
    id = id.from(_N, "GetConnectionFunctionRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetConnectionFunctionInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "GetConnectionFunctionInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Stage" },
            },
        }),
    },
})

M.GetConnectionFunctionOutput = schema.new({
    id = id.from(_N, "GetConnectionFunctionResult"),
    type = "structure",
    members = {
        ConnectionFunctionCode = schema.new({
            id = id.from(_N, "GetConnectionFunctionOutput", "ConnectionFunctionCode"),
            type = "blob",
            name = "ConnectionFunctionCode",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetConnectionFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "GetConnectionFunctionOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
    },
})

M.GetConnectionGroupInput = schema.new({
    id = id.from(_N, "GetConnectionGroupRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetConnectionGroupInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectionGroupOutput = schema.new({
    id = id.from(_N, "GetConnectionGroupResult"),
    type = "structure",
    members = {
        ConnectionGroup = schema.new({
            id = id.from(_N, "GetConnectionGroupOutput", "ConnectionGroup"),
            type = "structure",
            name = "ConnectionGroup",
            target_id = id.from(_N, "ConnectionGroup"),
            target = M.ConnectionGroup,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetConnectionGroupOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetConnectionGroupByRoutingEndpointInput = schema.new({
    id = id.from(_N, "GetConnectionGroupByRoutingEndpointRequest"),
    type = "structure",
    members = {
        RoutingEndpoint = schema.new({
            id = id.from(_N, "GetConnectionGroupByRoutingEndpointInput", "RoutingEndpoint"),
            type = "string",
            name = "RoutingEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "RoutingEndpoint" },
            },
        }),
    },
})

M.GetConnectionGroupByRoutingEndpointOutput = schema.new({
    id = id.from(_N, "GetConnectionGroupByRoutingEndpointResult"),
    type = "structure",
    members = {
        ConnectionGroup = schema.new({
            id = id.from(_N, "GetConnectionGroupByRoutingEndpointOutput", "ConnectionGroup"),
            type = "structure",
            name = "ConnectionGroup",
            target_id = id.from(_N, "ConnectionGroup"),
            target = M.ConnectionGroup,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetConnectionGroupByRoutingEndpointOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetContinuousDeploymentPolicyInput = schema.new({
    id = id.from(_N, "GetContinuousDeploymentPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetContinuousDeploymentPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetContinuousDeploymentPolicyOutput = schema.new({
    id = id.from(_N, "GetContinuousDeploymentPolicyResult"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = schema.new({
            id = id.from(_N, "GetContinuousDeploymentPolicyOutput", "ContinuousDeploymentPolicy"),
            type = "structure",
            name = "ContinuousDeploymentPolicy",
            target_id = id.from(_N, "ContinuousDeploymentPolicy"),
            target = M.ContinuousDeploymentPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetContinuousDeploymentPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetContinuousDeploymentPolicyConfigInput = schema.new({
    id = id.from(_N, "GetContinuousDeploymentPolicyConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetContinuousDeploymentPolicyConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetContinuousDeploymentPolicyConfigOutput = schema.new({
    id = id.from(_N, "GetContinuousDeploymentPolicyConfigResult"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = schema.new({
            id = id.from(_N, "GetContinuousDeploymentPolicyConfigOutput", "ContinuousDeploymentPolicyConfig"),
            type = "structure",
            name = "ContinuousDeploymentPolicyConfig",
            target_id = id.from(_N, "ContinuousDeploymentPolicyConfig"),
            target = M.ContinuousDeploymentPolicyConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetContinuousDeploymentPolicyConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetDistributionInput = schema.new({
    id = id.from(_N, "GetDistributionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetDistributionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDistributionOutput = schema.new({
    id = id.from(_N, "GetDistributionResult"),
    type = "structure",
    members = {
        Distribution = schema.new({
            id = id.from(_N, "GetDistributionOutput", "Distribution"),
            type = "structure",
            name = "Distribution",
            target_id = id.from(_N, "Distribution"),
            target = M.Distribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetDistributionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetDistributionConfigInput = schema.new({
    id = id.from(_N, "GetDistributionConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetDistributionConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDistributionConfigOutput = schema.new({
    id = id.from(_N, "GetDistributionConfigResult"),
    type = "structure",
    members = {
        DistributionConfig = schema.new({
            id = id.from(_N, "GetDistributionConfigOutput", "DistributionConfig"),
            type = "structure",
            name = "DistributionConfig",
            target_id = id.from(_N, "DistributionConfig"),
            target = M.DistributionConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetDistributionConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetDistributionTenantInput = schema.new({
    id = id.from(_N, "GetDistributionTenantRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetDistributionTenantInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDistributionTenantOutput = schema.new({
    id = id.from(_N, "GetDistributionTenantResult"),
    type = "structure",
    members = {
        DistributionTenant = schema.new({
            id = id.from(_N, "GetDistributionTenantOutput", "DistributionTenant"),
            type = "structure",
            name = "DistributionTenant",
            target_id = id.from(_N, "DistributionTenant"),
            target = M.DistributionTenant,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetDistributionTenantOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetDistributionTenantByDomainInput = schema.new({
    id = id.from(_N, "GetDistributionTenantByDomainRequest"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "GetDistributionTenantByDomainInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "domain" },
            },
        }),
    },
})

M.GetDistributionTenantByDomainOutput = schema.new({
    id = id.from(_N, "GetDistributionTenantByDomainResult"),
    type = "structure",
    members = {
        DistributionTenant = schema.new({
            id = id.from(_N, "GetDistributionTenantByDomainOutput", "DistributionTenant"),
            type = "structure",
            name = "DistributionTenant",
            target_id = id.from(_N, "DistributionTenant"),
            target = M.DistributionTenant,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetDistributionTenantByDomainOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetFieldLevelEncryptionInput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFieldLevelEncryptionOutput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionResult"),
    type = "structure",
    members = {
        FieldLevelEncryption = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionOutput", "FieldLevelEncryption"),
            type = "structure",
            name = "FieldLevelEncryption",
            target_id = id.from(_N, "FieldLevelEncryption"),
            target = M.FieldLevelEncryption,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetFieldLevelEncryptionConfigInput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFieldLevelEncryptionConfigOutput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionConfigResult"),
    type = "structure",
    members = {
        FieldLevelEncryptionConfig = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionConfigOutput", "FieldLevelEncryptionConfig"),
            type = "structure",
            name = "FieldLevelEncryptionConfig",
            target_id = id.from(_N, "FieldLevelEncryptionConfig"),
            target = M.FieldLevelEncryptionConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetFieldLevelEncryptionProfileInput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionProfileRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionProfileInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFieldLevelEncryptionProfileOutput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionProfileResult"),
    type = "structure",
    members = {
        FieldLevelEncryptionProfile = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionProfileOutput", "FieldLevelEncryptionProfile"),
            type = "structure",
            name = "FieldLevelEncryptionProfile",
            target_id = id.from(_N, "FieldLevelEncryptionProfile"),
            target = M.FieldLevelEncryptionProfile,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionProfileOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetFieldLevelEncryptionProfileConfigInput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionProfileConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionProfileConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFieldLevelEncryptionProfileConfigOutput = schema.new({
    id = id.from(_N, "GetFieldLevelEncryptionProfileConfigResult"),
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionProfileConfigOutput", "FieldLevelEncryptionProfileConfig"),
            type = "structure",
            name = "FieldLevelEncryptionProfileConfig",
            target_id = id.from(_N, "FieldLevelEncryptionProfileConfig"),
            target = M.FieldLevelEncryptionProfileConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetFieldLevelEncryptionProfileConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetFunctionInput = schema.new({
    id = id.from(_N, "GetFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "GetFunctionInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Stage" },
            },
        }),
    },
})

M.GetFunctionOutput = schema.new({
    id = id.from(_N, "GetFunctionResult"),
    type = "structure",
    members = {
        FunctionCode = schema.new({
            id = id.from(_N, "GetFunctionOutput", "FunctionCode"),
            type = "blob",
            name = "FunctionCode",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "GetFunctionOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
    },
})

M.GetInvalidationInput = schema.new({
    id = id.from(_N, "GetInvalidationRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "GetInvalidationInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "GetInvalidationInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetInvalidationOutput = schema.new({
    id = id.from(_N, "GetInvalidationResult"),
    type = "structure",
    members = {
        Invalidation = schema.new({
            id = id.from(_N, "GetInvalidationOutput", "Invalidation"),
            type = "structure",
            name = "Invalidation",
            target_id = id.from(_N, "Invalidation"),
            target = M.Invalidation,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.NoSuchInvalidation = schema.new({
    id = id.from(_N, "NoSuchInvalidation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchInvalidation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInvalidationForDistributionTenantInput = schema.new({
    id = id.from(_N, "GetInvalidationForDistributionTenantRequest"),
    type = "structure",
    members = {
        DistributionTenantId = schema.new({
            id = id.from(_N, "GetInvalidationForDistributionTenantInput", "DistributionTenantId"),
            type = "string",
            name = "DistributionTenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "GetInvalidationForDistributionTenantInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetInvalidationForDistributionTenantOutput = schema.new({
    id = id.from(_N, "GetInvalidationForDistributionTenantResult"),
    type = "structure",
    members = {
        Invalidation = schema.new({
            id = id.from(_N, "GetInvalidationForDistributionTenantOutput", "Invalidation"),
            type = "structure",
            name = "Invalidation",
            target_id = id.from(_N, "Invalidation"),
            target = M.Invalidation,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetKeyGroupInput = schema.new({
    id = id.from(_N, "GetKeyGroupRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetKeyGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKeyGroupOutput = schema.new({
    id = id.from(_N, "GetKeyGroupResult"),
    type = "structure",
    members = {
        KeyGroup = schema.new({
            id = id.from(_N, "GetKeyGroupOutput", "KeyGroup"),
            type = "structure",
            name = "KeyGroup",
            target_id = id.from(_N, "KeyGroup"),
            target = M.KeyGroup,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetKeyGroupOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetKeyGroupConfigInput = schema.new({
    id = id.from(_N, "GetKeyGroupConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetKeyGroupConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKeyGroupConfigOutput = schema.new({
    id = id.from(_N, "GetKeyGroupConfigResult"),
    type = "structure",
    members = {
        KeyGroupConfig = schema.new({
            id = id.from(_N, "GetKeyGroupConfigOutput", "KeyGroupConfig"),
            type = "structure",
            name = "KeyGroupConfig",
            target_id = id.from(_N, "KeyGroupConfig"),
            target = M.KeyGroupConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetKeyGroupConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetManagedCertificateDetailsInput = schema.new({
    id = id.from(_N, "GetManagedCertificateDetailsRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetManagedCertificateDetailsInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ValidationTokenDetail = schema.new({
    id = id.from(_N, "ValidationTokenDetail"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "ValidationTokenDetail", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RedirectTo = schema.new({
            id = id.from(_N, "ValidationTokenDetail", "RedirectTo"),
            type = "string",
            name = "RedirectTo",
            target_id = prelude.String.id,
        }),
        RedirectFrom = schema.new({
            id = id.from(_N, "ValidationTokenDetail", "RedirectFrom"),
            type = "string",
            name = "RedirectFrom",
            target_id = prelude.String.id,
        }),
    },
})

M.ManagedCertificateDetails = schema.new({
    id = id.from(_N, "ManagedCertificateDetails"),
    type = "structure",
    members = {
        CertificateArn = schema.new({
            id = id.from(_N, "ManagedCertificateDetails", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        CertificateStatus = schema.new({
            id = id.from(_N, "ManagedCertificateDetails", "CertificateStatus"),
            type = "string",
            name = "CertificateStatus",
            target_id = prelude.String.id,
        }),
        ValidationTokenHost = schema.new({
            id = id.from(_N, "ManagedCertificateDetails", "ValidationTokenHost"),
            type = "string",
            name = "ValidationTokenHost",
            target_id = prelude.String.id,
        }),
        ValidationTokenDetails = schema.new({
            id = id.from(_N, "ManagedCertificateDetails", "ValidationTokenDetails"),
            type = "list",
            name = "ValidationTokenDetails",
            target_id = prelude.Document.id,
            list_member = M.ValidationTokenDetail,
        }),
    },
})

M.GetManagedCertificateDetailsOutput = schema.new({
    id = id.from(_N, "GetManagedCertificateDetailsResult"),
    type = "structure",
    members = {
        ManagedCertificateDetails = schema.new({
            id = id.from(_N, "GetManagedCertificateDetailsOutput", "ManagedCertificateDetails"),
            type = "structure",
            name = "ManagedCertificateDetails",
            target_id = id.from(_N, "ManagedCertificateDetails"),
            target = M.ManagedCertificateDetails,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetMonitoringSubscriptionInput = schema.new({
    id = id.from(_N, "GetMonitoringSubscriptionRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "GetMonitoringSubscriptionInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMonitoringSubscriptionOutput = schema.new({
    id = id.from(_N, "GetMonitoringSubscriptionResult"),
    type = "structure",
    members = {
        MonitoringSubscription = schema.new({
            id = id.from(_N, "GetMonitoringSubscriptionOutput", "MonitoringSubscription"),
            type = "structure",
            name = "MonitoringSubscription",
            target_id = id.from(_N, "MonitoringSubscription"),
            target = M.MonitoringSubscription,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetOriginAccessControlInput = schema.new({
    id = id.from(_N, "GetOriginAccessControlRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetOriginAccessControlInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOriginAccessControlOutput = schema.new({
    id = id.from(_N, "GetOriginAccessControlResult"),
    type = "structure",
    members = {
        OriginAccessControl = schema.new({
            id = id.from(_N, "GetOriginAccessControlOutput", "OriginAccessControl"),
            type = "structure",
            name = "OriginAccessControl",
            target_id = id.from(_N, "OriginAccessControl"),
            target = M.OriginAccessControl,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetOriginAccessControlOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetOriginAccessControlConfigInput = schema.new({
    id = id.from(_N, "GetOriginAccessControlConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetOriginAccessControlConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOriginAccessControlConfigOutput = schema.new({
    id = id.from(_N, "GetOriginAccessControlConfigResult"),
    type = "structure",
    members = {
        OriginAccessControlConfig = schema.new({
            id = id.from(_N, "GetOriginAccessControlConfigOutput", "OriginAccessControlConfig"),
            type = "structure",
            name = "OriginAccessControlConfig",
            target_id = id.from(_N, "OriginAccessControlConfig"),
            target = M.OriginAccessControlConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetOriginAccessControlConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetOriginRequestPolicyInput = schema.new({
    id = id.from(_N, "GetOriginRequestPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetOriginRequestPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOriginRequestPolicyOutput = schema.new({
    id = id.from(_N, "GetOriginRequestPolicyResult"),
    type = "structure",
    members = {
        OriginRequestPolicy = schema.new({
            id = id.from(_N, "GetOriginRequestPolicyOutput", "OriginRequestPolicy"),
            type = "structure",
            name = "OriginRequestPolicy",
            target_id = id.from(_N, "OriginRequestPolicy"),
            target = M.OriginRequestPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetOriginRequestPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetOriginRequestPolicyConfigInput = schema.new({
    id = id.from(_N, "GetOriginRequestPolicyConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetOriginRequestPolicyConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOriginRequestPolicyConfigOutput = schema.new({
    id = id.from(_N, "GetOriginRequestPolicyConfigResult"),
    type = "structure",
    members = {
        OriginRequestPolicyConfig = schema.new({
            id = id.from(_N, "GetOriginRequestPolicyConfigOutput", "OriginRequestPolicyConfig"),
            type = "structure",
            name = "OriginRequestPolicyConfig",
            target_id = id.from(_N, "OriginRequestPolicyConfig"),
            target = M.OriginRequestPolicyConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetOriginRequestPolicyConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetPublicKeyInput = schema.new({
    id = id.from(_N, "GetPublicKeyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetPublicKeyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPublicKeyOutput = schema.new({
    id = id.from(_N, "GetPublicKeyResult"),
    type = "structure",
    members = {
        PublicKey = schema.new({
            id = id.from(_N, "GetPublicKeyOutput", "PublicKey"),
            type = "structure",
            name = "PublicKey",
            target_id = id.from(_N, "PublicKey"),
            target = M.PublicKey,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetPublicKeyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetPublicKeyConfigInput = schema.new({
    id = id.from(_N, "GetPublicKeyConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetPublicKeyConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPublicKeyConfigOutput = schema.new({
    id = id.from(_N, "GetPublicKeyConfigResult"),
    type = "structure",
    members = {
        PublicKeyConfig = schema.new({
            id = id.from(_N, "GetPublicKeyConfigOutput", "PublicKeyConfig"),
            type = "structure",
            name = "PublicKeyConfig",
            target_id = id.from(_N, "PublicKeyConfig"),
            target = M.PublicKeyConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetPublicKeyConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetRealtimeLogConfigInput = schema.new({
    id = id.from(_N, "GetRealtimeLogConfigRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetRealtimeLogConfigInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "GetRealtimeLogConfigInput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRealtimeLogConfigOutput = schema.new({
    id = id.from(_N, "GetRealtimeLogConfigResult"),
    type = "structure",
    members = {
        RealtimeLogConfig = schema.new({
            id = id.from(_N, "GetRealtimeLogConfigOutput", "RealtimeLogConfig"),
            type = "structure",
            name = "RealtimeLogConfig",
            target_id = id.from(_N, "RealtimeLogConfig"),
            target = M.RealtimeLogConfig,
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
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyResult"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResponseHeadersPolicyInput = schema.new({
    id = id.from(_N, "GetResponseHeadersPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetResponseHeadersPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResponseHeadersPolicyOutput = schema.new({
    id = id.from(_N, "GetResponseHeadersPolicyResult"),
    type = "structure",
    members = {
        ResponseHeadersPolicy = schema.new({
            id = id.from(_N, "GetResponseHeadersPolicyOutput", "ResponseHeadersPolicy"),
            type = "structure",
            name = "ResponseHeadersPolicy",
            target_id = id.from(_N, "ResponseHeadersPolicy"),
            target = M.ResponseHeadersPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetResponseHeadersPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetResponseHeadersPolicyConfigInput = schema.new({
    id = id.from(_N, "GetResponseHeadersPolicyConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetResponseHeadersPolicyConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResponseHeadersPolicyConfigOutput = schema.new({
    id = id.from(_N, "GetResponseHeadersPolicyConfigResult"),
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = schema.new({
            id = id.from(_N, "GetResponseHeadersPolicyConfigOutput", "ResponseHeadersPolicyConfig"),
            type = "structure",
            name = "ResponseHeadersPolicyConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyConfig"),
            target = M.ResponseHeadersPolicyConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetResponseHeadersPolicyConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetStreamingDistributionInput = schema.new({
    id = id.from(_N, "GetStreamingDistributionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetStreamingDistributionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetStreamingDistributionOutput = schema.new({
    id = id.from(_N, "GetStreamingDistributionResult"),
    type = "structure",
    members = {
        StreamingDistribution = schema.new({
            id = id.from(_N, "GetStreamingDistributionOutput", "StreamingDistribution"),
            type = "structure",
            name = "StreamingDistribution",
            target_id = id.from(_N, "StreamingDistribution"),
            target = M.StreamingDistribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetStreamingDistributionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetStreamingDistributionConfigInput = schema.new({
    id = id.from(_N, "GetStreamingDistributionConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetStreamingDistributionConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetStreamingDistributionConfigOutput = schema.new({
    id = id.from(_N, "GetStreamingDistributionConfigResult"),
    type = "structure",
    members = {
        StreamingDistributionConfig = schema.new({
            id = id.from(_N, "GetStreamingDistributionConfigOutput", "StreamingDistributionConfig"),
            type = "structure",
            name = "StreamingDistributionConfig",
            target_id = id.from(_N, "StreamingDistributionConfig"),
            target = M.StreamingDistributionConfig,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetStreamingDistributionConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetTrustStoreInput = schema.new({
    id = id.from(_N, "GetTrustStoreRequest"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetTrustStoreInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTrustStoreOutput = schema.new({
    id = id.from(_N, "GetTrustStoreResult"),
    type = "structure",
    members = {
        TrustStore = schema.new({
            id = id.from(_N, "GetTrustStoreOutput", "TrustStore"),
            type = "structure",
            name = "TrustStore",
            target_id = id.from(_N, "TrustStore"),
            target = M.TrustStore,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetTrustStoreOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.GetVpcOriginInput = schema.new({
    id = id.from(_N, "GetVpcOriginRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetVpcOriginInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetVpcOriginOutput = schema.new({
    id = id.from(_N, "GetVpcOriginResult"),
    type = "structure",
    members = {
        VpcOrigin = schema.new({
            id = id.from(_N, "GetVpcOriginOutput", "VpcOrigin"),
            type = "structure",
            name = "VpcOrigin",
            target_id = id.from(_N, "VpcOrigin"),
            target = M.VpcOrigin,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetVpcOriginOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.ListAnycastIpListsInput = schema.new({
    id = id.from(_N, "ListAnycastIpListsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListAnycastIpListsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListAnycastIpListsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.ListAnycastIpListsOutput = schema.new({
    id = id.from(_N, "ListAnycastIpListsResult"),
    type = "structure",
    members = {
        AnycastIpLists = schema.new({
            id = id.from(_N, "ListAnycastIpListsOutput", "AnycastIpLists"),
            type = "structure",
            name = "AnycastIpLists",
            target_id = id.from(_N, "AnycastIpListCollection"),
            target = M.AnycastIpListCollection,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "AnycastIpListCollection" },
            },
        }),
    },
})

M.ListCachePoliciesInput = schema.new({
    id = id.from(_N, "ListCachePoliciesRequest"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListCachePoliciesInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Type" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListCachePoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListCachePoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.ListCachePoliciesOutput = schema.new({
    id = id.from(_N, "ListCachePoliciesResult"),
    type = "structure",
    members = {
        CachePolicyList = schema.new({
            id = id.from(_N, "ListCachePoliciesOutput", "CachePolicyList"),
            type = "structure",
            name = "CachePolicyList",
            target_id = id.from(_N, "CachePolicyList"),
            target = M.CachePolicyList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListCloudFrontOriginAccessIdentitiesInput = schema.new({
    id = id.from(_N, "ListCloudFrontOriginAccessIdentitiesRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListCloudFrontOriginAccessIdentitiesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListCloudFrontOriginAccessIdentitiesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.CloudFrontOriginAccessIdentitySummary = schema.new({
    id = id.from(_N, "CloudFrontOriginAccessIdentitySummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentitySummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3CanonicalUserId = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentitySummary", "S3CanonicalUserId"),
            type = "string",
            name = "S3CanonicalUserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentitySummary", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudFrontOriginAccessIdentityList = schema.new({
    id = id.from(_N, "CloudFrontOriginAccessIdentityList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "CloudFrontOriginAccessIdentityList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CloudFrontOriginAccessIdentitySummary, traits = { [traits.XML_NAME] = { name = "CloudFrontOriginAccessIdentitySummary" } } }),
        }),
    },
})

M.ListCloudFrontOriginAccessIdentitiesOutput = schema.new({
    id = id.from(_N, "ListCloudFrontOriginAccessIdentitiesResult"),
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityList = schema.new({
            id = id.from(_N, "ListCloudFrontOriginAccessIdentitiesOutput", "CloudFrontOriginAccessIdentityList"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentityList",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentityList"),
            target = M.CloudFrontOriginAccessIdentityList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListConflictingAliasesInput = schema.new({
    id = id.from(_N, "ListConflictingAliasesRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "ListConflictingAliasesInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "DistributionId" },
            },
        }),
        Alias = schema.new({
            id = id.from(_N, "ListConflictingAliasesInput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "Alias" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListConflictingAliasesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListConflictingAliasesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.ConflictingAlias = schema.new({
    id = id.from(_N, "ConflictingAlias"),
    type = "structure",
    members = {
        Alias = schema.new({
            id = id.from(_N, "ConflictingAlias", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
        }),
        DistributionId = schema.new({
            id = id.from(_N, "ConflictingAlias", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "ConflictingAlias", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictingAliasesList = schema.new({
    id = id.from(_N, "ConflictingAliasesList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ConflictingAliasesList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ConflictingAliasesList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Quantity = schema.new({
            id = id.from(_N, "ConflictingAliasesList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
        }),
        Items = schema.new({
            id = id.from(_N, "ConflictingAliasesList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ConflictingAlias, traits = { [traits.XML_NAME] = { name = "ConflictingAlias" } } }),
        }),
    },
})

M.ListConflictingAliasesOutput = schema.new({
    id = id.from(_N, "ListConflictingAliasesResult"),
    type = "structure",
    members = {
        ConflictingAliasesList = schema.new({
            id = id.from(_N, "ListConflictingAliasesOutput", "ConflictingAliasesList"),
            type = "structure",
            name = "ConflictingAliasesList",
            target_id = id.from(_N, "ConflictingAliasesList"),
            target = M.ConflictingAliasesList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListConnectionFunctionsInput = schema.new({
    id = id.from(_N, "ListConnectionFunctionsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListConnectionFunctionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListConnectionFunctionsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Stage = schema.new({
            id = id.from(_N, "ListConnectionFunctionsInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectionFunctionsOutput = schema.new({
    id = id.from(_N, "ListConnectionFunctionsResult"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListConnectionFunctionsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        ConnectionFunctions = schema.new({
            id = id.from(_N, "ListConnectionFunctionsOutput", "ConnectionFunctions"),
            type = "list",
            name = "ConnectionFunctions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ConnectionFunctionSummary, traits = { [traits.XML_NAME] = { name = "ConnectionFunctionSummary" } } }),
        }),
    },
})

M.ConnectionGroupAssociationFilter = schema.new({
    id = id.from(_N, "ConnectionGroupAssociationFilter"),
    type = "structure",
    members = {
        AnycastIpListId = schema.new({
            id = id.from(_N, "ConnectionGroupAssociationFilter", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectionGroupsInput = schema.new({
    id = id.from(_N, "ListConnectionGroupsRequest"),
    type = "structure",
    members = {
        AssociationFilter = schema.new({
            id = id.from(_N, "ListConnectionGroupsInput", "AssociationFilter"),
            type = "structure",
            name = "AssociationFilter",
            target_id = id.from(_N, "ConnectionGroupAssociationFilter"),
            target = M.ConnectionGroupAssociationFilter,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListConnectionGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListConnectionGroupsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ConnectionGroupSummary = schema.new({
    id = id.from(_N, "ConnectionGroupSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoutingEndpoint = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "RoutingEndpoint"),
            type = "string",
            name = "RoutingEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnycastIpListId = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        IsDefault = schema.new({
            id = id.from(_N, "ConnectionGroupSummary", "IsDefault"),
            type = "boolean",
            name = "IsDefault",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ListConnectionGroupsOutput = schema.new({
    id = id.from(_N, "ListConnectionGroupsResult"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListConnectionGroupsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        ConnectionGroups = schema.new({
            id = id.from(_N, "ListConnectionGroupsOutput", "ConnectionGroups"),
            type = "list",
            name = "ConnectionGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ConnectionGroupSummary, traits = { [traits.XML_NAME] = { name = "ConnectionGroupSummary" } } }),
        }),
    },
})

M.ListContinuousDeploymentPoliciesInput = schema.new({
    id = id.from(_N, "ListContinuousDeploymentPoliciesRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListContinuousDeploymentPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListContinuousDeploymentPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.ContinuousDeploymentPolicySummary = schema.new({
    id = id.from(_N, "ContinuousDeploymentPolicySummary"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicySummary", "ContinuousDeploymentPolicy"),
            type = "structure",
            name = "ContinuousDeploymentPolicy",
            target_id = id.from(_N, "ContinuousDeploymentPolicy"),
            target = M.ContinuousDeploymentPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContinuousDeploymentPolicyList = schema.new({
    id = id.from(_N, "ContinuousDeploymentPolicyList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ContinuousDeploymentPolicyList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ContinuousDeploymentPolicySummary, traits = { [traits.XML_NAME] = { name = "ContinuousDeploymentPolicySummary" } } }),
        }),
    },
})

M.ListContinuousDeploymentPoliciesOutput = schema.new({
    id = id.from(_N, "ListContinuousDeploymentPoliciesResult"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicyList = schema.new({
            id = id.from(_N, "ListContinuousDeploymentPoliciesOutput", "ContinuousDeploymentPolicyList"),
            type = "structure",
            name = "ContinuousDeploymentPolicyList",
            target_id = id.from(_N, "ContinuousDeploymentPolicyList"),
            target = M.ContinuousDeploymentPolicyList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsInput = schema.new({
    id = id.from(_N, "ListDistributionsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.DistributionSummary = schema.new({
    id = id.from(_N, "DistributionSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DistributionSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ARN = schema.new({
            id = id.from(_N, "DistributionSummary", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DistributionSummary", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DistributionSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DistributionSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "DistributionSummary", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aliases = schema.new({
            id = id.from(_N, "DistributionSummary", "Aliases"),
            type = "structure",
            name = "Aliases",
            target_id = id.from(_N, "Aliases"),
            target = M.Aliases,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Origins = schema.new({
            id = id.from(_N, "DistributionSummary", "Origins"),
            type = "structure",
            name = "Origins",
            target_id = id.from(_N, "Origins"),
            target = M.Origins,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginGroups = schema.new({
            id = id.from(_N, "DistributionSummary", "OriginGroups"),
            type = "structure",
            name = "OriginGroups",
            target_id = id.from(_N, "OriginGroups"),
            target = M.OriginGroups,
        }),
        DefaultCacheBehavior = schema.new({
            id = id.from(_N, "DistributionSummary", "DefaultCacheBehavior"),
            type = "structure",
            name = "DefaultCacheBehavior",
            target_id = id.from(_N, "DefaultCacheBehavior"),
            target = M.DefaultCacheBehavior,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CacheBehaviors = schema.new({
            id = id.from(_N, "DistributionSummary", "CacheBehaviors"),
            type = "structure",
            name = "CacheBehaviors",
            target_id = id.from(_N, "CacheBehaviors"),
            target = M.CacheBehaviors,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomErrorResponses = schema.new({
            id = id.from(_N, "DistributionSummary", "CustomErrorResponses"),
            type = "structure",
            name = "CustomErrorResponses",
            target_id = id.from(_N, "CustomErrorResponses"),
            target = M.CustomErrorResponses,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "DistributionSummary", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PriceClass = schema.new({
            id = id.from(_N, "DistributionSummary", "PriceClass"),
            type = "string",
            name = "PriceClass",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "DistributionSummary", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ViewerCertificate = schema.new({
            id = id.from(_N, "DistributionSummary", "ViewerCertificate"),
            type = "structure",
            name = "ViewerCertificate",
            target_id = id.from(_N, "ViewerCertificate"),
            target = M.ViewerCertificate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Restrictions = schema.new({
            id = id.from(_N, "DistributionSummary", "Restrictions"),
            type = "structure",
            name = "Restrictions",
            target_id = id.from(_N, "Restrictions"),
            target = M.Restrictions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WebACLId = schema.new({
            id = id.from(_N, "DistributionSummary", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HttpVersion = schema.new({
            id = id.from(_N, "DistributionSummary", "HttpVersion"),
            type = "string",
            name = "HttpVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsIPV6Enabled = schema.new({
            id = id.from(_N, "DistributionSummary", "IsIPV6Enabled"),
            type = "boolean",
            name = "IsIPV6Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AliasICPRecordals = schema.new({
            id = id.from(_N, "DistributionSummary", "AliasICPRecordals"),
            type = "list",
            name = "AliasICPRecordals",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AliasICPRecordal, traits = { [traits.XML_NAME] = { name = "AliasICPRecordal" } } }),
        }),
        Staging = schema.new({
            id = id.from(_N, "DistributionSummary", "Staging"),
            type = "boolean",
            name = "Staging",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionMode = schema.new({
            id = id.from(_N, "DistributionSummary", "ConnectionMode"),
            type = "string",
            name = "ConnectionMode",
            target_id = prelude.String.id,
        }),
        AnycastIpListId = schema.new({
            id = id.from(_N, "DistributionSummary", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
        }),
        ViewerMtlsConfig = schema.new({
            id = id.from(_N, "DistributionSummary", "ViewerMtlsConfig"),
            type = "structure",
            name = "ViewerMtlsConfig",
            target_id = id.from(_N, "ViewerMtlsConfig"),
            target = M.ViewerMtlsConfig,
        }),
        ConnectionFunctionAssociation = schema.new({
            id = id.from(_N, "DistributionSummary", "ConnectionFunctionAssociation"),
            type = "structure",
            name = "ConnectionFunctionAssociation",
            target_id = id.from(_N, "ConnectionFunctionAssociation"),
            target = M.ConnectionFunctionAssociation,
        }),
    },
})

M.DistributionList = schema.new({
    id = id.from(_N, "DistributionList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DistributionList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "DistributionList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "DistributionList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "DistributionList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "DistributionList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "DistributionList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DistributionSummary, traits = { [traits.XML_NAME] = { name = "DistributionSummary" } } }),
        }),
    },
})

M.ListDistributionsOutput = schema.new({
    id = id.from(_N, "ListDistributionsResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionList"),
            target = M.DistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByAnycastIpListIdInput = schema.new({
    id = id.from(_N, "ListDistributionsByAnycastIpListIdRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByAnycastIpListIdInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByAnycastIpListIdInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        AnycastIpListId = schema.new({
            id = id.from(_N, "ListDistributionsByAnycastIpListIdInput", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDistributionsByAnycastIpListIdOutput = schema.new({
    id = id.from(_N, "ListDistributionsByAnycastIpListIdResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsByAnycastIpListIdOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionList"),
            target = M.DistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByCachePolicyIdInput = schema.new({
    id = id.from(_N, "ListDistributionsByCachePolicyIdRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByCachePolicyIdInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByCachePolicyIdInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        CachePolicyId = schema.new({
            id = id.from(_N, "ListDistributionsByCachePolicyIdInput", "CachePolicyId"),
            type = "string",
            name = "CachePolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DistributionIdList = schema.new({
    id = id.from(_N, "DistributionIdList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DistributionIdList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "DistributionIdList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "DistributionIdList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "DistributionIdList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "DistributionIdList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "DistributionIdList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "DistributionId" } } }),
        }),
    },
})

M.ListDistributionsByCachePolicyIdOutput = schema.new({
    id = id.from(_N, "ListDistributionsByCachePolicyIdResult"),
    type = "structure",
    members = {
        DistributionIdList = schema.new({
            id = id.from(_N, "ListDistributionsByCachePolicyIdOutput", "DistributionIdList"),
            type = "structure",
            name = "DistributionIdList",
            target_id = id.from(_N, "DistributionIdList"),
            target = M.DistributionIdList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByConnectionFunctionInput = schema.new({
    id = id.from(_N, "ListDistributionsByConnectionFunctionRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionFunctionInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionFunctionInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        ConnectionFunctionIdentifier = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionFunctionInput", "ConnectionFunctionIdentifier"),
            type = "string",
            name = "ConnectionFunctionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "ConnectionFunctionIdentifier" },
            },
        }),
    },
})

M.ListDistributionsByConnectionFunctionOutput = schema.new({
    id = id.from(_N, "ListDistributionsByConnectionFunctionResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionFunctionOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionList"),
            target = M.DistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByConnectionModeInput = schema.new({
    id = id.from(_N, "ListDistributionsByConnectionModeRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionModeInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionModeInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        ConnectionMode = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionModeInput", "ConnectionMode"),
            type = "string",
            name = "ConnectionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDistributionsByConnectionModeOutput = schema.new({
    id = id.from(_N, "ListDistributionsByConnectionModeResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsByConnectionModeOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionList"),
            target = M.DistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByKeyGroupInput = schema.new({
    id = id.from(_N, "ListDistributionsByKeyGroupRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByKeyGroupInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByKeyGroupInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        KeyGroupId = schema.new({
            id = id.from(_N, "ListDistributionsByKeyGroupInput", "KeyGroupId"),
            type = "string",
            name = "KeyGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDistributionsByKeyGroupOutput = schema.new({
    id = id.from(_N, "ListDistributionsByKeyGroupResult"),
    type = "structure",
    members = {
        DistributionIdList = schema.new({
            id = id.from(_N, "ListDistributionsByKeyGroupOutput", "DistributionIdList"),
            type = "structure",
            name = "DistributionIdList",
            target_id = id.from(_N, "DistributionIdList"),
            target = M.DistributionIdList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByOriginRequestPolicyIdInput = schema.new({
    id = id.from(_N, "ListDistributionsByOriginRequestPolicyIdRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByOriginRequestPolicyIdInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByOriginRequestPolicyIdInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        OriginRequestPolicyId = schema.new({
            id = id.from(_N, "ListDistributionsByOriginRequestPolicyIdInput", "OriginRequestPolicyId"),
            type = "string",
            name = "OriginRequestPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDistributionsByOriginRequestPolicyIdOutput = schema.new({
    id = id.from(_N, "ListDistributionsByOriginRequestPolicyIdResult"),
    type = "structure",
    members = {
        DistributionIdList = schema.new({
            id = id.from(_N, "ListDistributionsByOriginRequestPolicyIdOutput", "DistributionIdList"),
            type = "structure",
            name = "DistributionIdList",
            target_id = id.from(_N, "DistributionIdList"),
            target = M.DistributionIdList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByOwnedResourceInput = schema.new({
    id = id.from(_N, "ListDistributionsByOwnedResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListDistributionsByOwnedResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByOwnedResourceInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByOwnedResourceInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.DistributionIdOwner = schema.new({
    id = id.from(_N, "DistributionIdOwner"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "DistributionIdOwner", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "DistributionIdOwner", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DistributionIdOwnerList = schema.new({
    id = id.from(_N, "DistributionIdOwnerList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DistributionIdOwnerList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "DistributionIdOwnerList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "DistributionIdOwnerList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "DistributionIdOwnerList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "DistributionIdOwnerList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "DistributionIdOwnerList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DistributionIdOwner, traits = { [traits.XML_NAME] = { name = "DistributionIdOwner" } } }),
        }),
    },
})

M.ListDistributionsByOwnedResourceOutput = schema.new({
    id = id.from(_N, "ListDistributionsByOwnedResourceResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsByOwnedResourceOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionIdOwnerList"),
            target = M.DistributionIdOwnerList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByRealtimeLogConfigInput = schema.new({
    id = id.from(_N, "ListDistributionsByRealtimeLogConfigRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByRealtimeLogConfigInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByRealtimeLogConfigInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        RealtimeLogConfigName = schema.new({
            id = id.from(_N, "ListDistributionsByRealtimeLogConfigInput", "RealtimeLogConfigName"),
            type = "string",
            name = "RealtimeLogConfigName",
            target_id = prelude.String.id,
        }),
        RealtimeLogConfigArn = schema.new({
            id = id.from(_N, "ListDistributionsByRealtimeLogConfigInput", "RealtimeLogConfigArn"),
            type = "string",
            name = "RealtimeLogConfigArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDistributionsByRealtimeLogConfigOutput = schema.new({
    id = id.from(_N, "ListDistributionsByRealtimeLogConfigResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsByRealtimeLogConfigOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionList"),
            target = M.DistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByResponseHeadersPolicyIdInput = schema.new({
    id = id.from(_N, "ListDistributionsByResponseHeadersPolicyIdRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByResponseHeadersPolicyIdInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByResponseHeadersPolicyIdInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        ResponseHeadersPolicyId = schema.new({
            id = id.from(_N, "ListDistributionsByResponseHeadersPolicyIdInput", "ResponseHeadersPolicyId"),
            type = "string",
            name = "ResponseHeadersPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDistributionsByResponseHeadersPolicyIdOutput = schema.new({
    id = id.from(_N, "ListDistributionsByResponseHeadersPolicyIdResult"),
    type = "structure",
    members = {
        DistributionIdList = schema.new({
            id = id.from(_N, "ListDistributionsByResponseHeadersPolicyIdOutput", "DistributionIdList"),
            type = "structure",
            name = "DistributionIdList",
            target_id = id.from(_N, "DistributionIdList"),
            target = M.DistributionIdList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByTrustStoreInput = schema.new({
    id = id.from(_N, "ListDistributionsByTrustStoreRequest"),
    type = "structure",
    members = {
        TrustStoreIdentifier = schema.new({
            id = id.from(_N, "ListDistributionsByTrustStoreInput", "TrustStoreIdentifier"),
            type = "string",
            name = "TrustStoreIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "TrustStoreIdentifier" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByTrustStoreInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByTrustStoreInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.ListDistributionsByTrustStoreOutput = schema.new({
    id = id.from(_N, "ListDistributionsByTrustStoreResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsByTrustStoreOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionList"),
            target = M.DistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByVpcOriginIdInput = schema.new({
    id = id.from(_N, "ListDistributionsByVpcOriginIdRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByVpcOriginIdInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByVpcOriginIdInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        VpcOriginId = schema.new({
            id = id.from(_N, "ListDistributionsByVpcOriginIdInput", "VpcOriginId"),
            type = "string",
            name = "VpcOriginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDistributionsByVpcOriginIdOutput = schema.new({
    id = id.from(_N, "ListDistributionsByVpcOriginIdResult"),
    type = "structure",
    members = {
        DistributionIdList = schema.new({
            id = id.from(_N, "ListDistributionsByVpcOriginIdOutput", "DistributionIdList"),
            type = "structure",
            name = "DistributionIdList",
            target_id = id.from(_N, "DistributionIdList"),
            target = M.DistributionIdList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListDistributionsByWebACLIdInput = schema.new({
    id = id.from(_N, "ListDistributionsByWebACLIdRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListDistributionsByWebACLIdInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionsByWebACLIdInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        WebACLId = schema.new({
            id = id.from(_N, "ListDistributionsByWebACLIdInput", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDistributionsByWebACLIdOutput = schema.new({
    id = id.from(_N, "ListDistributionsByWebACLIdResult"),
    type = "structure",
    members = {
        DistributionList = schema.new({
            id = id.from(_N, "ListDistributionsByWebACLIdOutput", "DistributionList"),
            type = "structure",
            name = "DistributionList",
            target_id = id.from(_N, "DistributionList"),
            target = M.DistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.DistributionTenantAssociationFilter = schema.new({
    id = id.from(_N, "DistributionTenantAssociationFilter"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "DistributionTenantAssociationFilter", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
        }),
        ConnectionGroupId = schema.new({
            id = id.from(_N, "DistributionTenantAssociationFilter", "ConnectionGroupId"),
            type = "string",
            name = "ConnectionGroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDistributionTenantsInput = schema.new({
    id = id.from(_N, "ListDistributionTenantsRequest"),
    type = "structure",
    members = {
        AssociationFilter = schema.new({
            id = id.from(_N, "ListDistributionTenantsInput", "AssociationFilter"),
            type = "structure",
            name = "AssociationFilter",
            target_id = id.from(_N, "DistributionTenantAssociationFilter"),
            target = M.DistributionTenantAssociationFilter,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListDistributionTenantsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionTenantsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DistributionTenantSummary = schema.new({
    id = id.from(_N, "DistributionTenantSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DistributionId = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Domains = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "Domains"),
            type = "list",
            name = "Domains",
            target_id = prelude.Document.id,
            list_member = M.DomainResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionGroupId = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "ConnectionGroupId"),
            type = "string",
            name = "ConnectionGroupId",
            target_id = prelude.String.id,
        }),
        Customizations = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "Customizations"),
            type = "structure",
            name = "Customizations",
            target_id = id.from(_N, "Customizations"),
            target = M.Customizations,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DistributionTenantSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDistributionTenantsOutput = schema.new({
    id = id.from(_N, "ListDistributionTenantsResult"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListDistributionTenantsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        DistributionTenantList = schema.new({
            id = id.from(_N, "ListDistributionTenantsOutput", "DistributionTenantList"),
            type = "list",
            name = "DistributionTenantList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DistributionTenantSummary, traits = { [traits.XML_NAME] = { name = "DistributionTenantSummary" } } }),
        }),
    },
})

M.ListDistributionTenantsByCustomizationInput = schema.new({
    id = id.from(_N, "ListDistributionTenantsByCustomizationRequest"),
    type = "structure",
    members = {
        WebACLArn = schema.new({
            id = id.from(_N, "ListDistributionTenantsByCustomizationInput", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "ListDistributionTenantsByCustomizationInput", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListDistributionTenantsByCustomizationInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDistributionTenantsByCustomizationInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDistributionTenantsByCustomizationOutput = schema.new({
    id = id.from(_N, "ListDistributionTenantsByCustomizationResult"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListDistributionTenantsByCustomizationOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        DistributionTenantList = schema.new({
            id = id.from(_N, "ListDistributionTenantsByCustomizationOutput", "DistributionTenantList"),
            type = "list",
            name = "DistributionTenantList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DistributionTenantSummary, traits = { [traits.XML_NAME] = { name = "DistributionTenantSummary" } } }),
        }),
    },
})

M.DistributionResourceId = schema.new({
    id = id.from(_N, "DistributionResourceId"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "DistributionResourceId", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
        }),
        DistributionTenantId = schema.new({
            id = id.from(_N, "DistributionResourceId", "DistributionTenantId"),
            type = "string",
            name = "DistributionTenantId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDomainConflictsInput = schema.new({
    id = id.from(_N, "ListDomainConflictsRequest"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "ListDomainConflictsInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainControlValidationResource = schema.new({
            id = id.from(_N, "ListDomainConflictsInput", "DomainControlValidationResource"),
            type = "structure",
            name = "DomainControlValidationResource",
            target_id = id.from(_N, "DistributionResourceId"),
            target = M.DistributionResourceId,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListDomainConflictsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListDomainConflictsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DomainConflict = schema.new({
    id = id.from(_N, "DomainConflict"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "DomainConflict", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "DomainConflict", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DomainConflict", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "DomainConflict", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListDomainConflictsOutput = schema.new({
    id = id.from(_N, "ListDomainConflictsResult"),
    type = "structure",
    members = {
        DomainConflicts = schema.new({
            id = id.from(_N, "ListDomainConflictsOutput", "DomainConflicts"),
            type = "list",
            name = "DomainConflicts",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DomainConflict, traits = { [traits.XML_NAME] = { name = "DomainConflicts" } } }),
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListDomainConflictsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFieldLevelEncryptionConfigsInput = schema.new({
    id = id.from(_N, "ListFieldLevelEncryptionConfigsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListFieldLevelEncryptionConfigsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListFieldLevelEncryptionConfigsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.FieldLevelEncryptionSummary = schema.new({
    id = id.from(_N, "FieldLevelEncryptionSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FieldLevelEncryptionSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "FieldLevelEncryptionSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "FieldLevelEncryptionSummary", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        QueryArgProfileConfig = schema.new({
            id = id.from(_N, "FieldLevelEncryptionSummary", "QueryArgProfileConfig"),
            type = "structure",
            name = "QueryArgProfileConfig",
            target_id = id.from(_N, "QueryArgProfileConfig"),
            target = M.QueryArgProfileConfig,
        }),
        ContentTypeProfileConfig = schema.new({
            id = id.from(_N, "FieldLevelEncryptionSummary", "ContentTypeProfileConfig"),
            type = "structure",
            name = "ContentTypeProfileConfig",
            target_id = id.from(_N, "ContentTypeProfileConfig"),
            target = M.ContentTypeProfileConfig,
        }),
    },
})

M.FieldLevelEncryptionList = schema.new({
    id = id.from(_N, "FieldLevelEncryptionList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "FieldLevelEncryptionList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "FieldLevelEncryptionList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "FieldLevelEncryptionList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "FieldLevelEncryptionList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.FieldLevelEncryptionSummary, traits = { [traits.XML_NAME] = { name = "FieldLevelEncryptionSummary" } } }),
        }),
    },
})

M.ListFieldLevelEncryptionConfigsOutput = schema.new({
    id = id.from(_N, "ListFieldLevelEncryptionConfigsResult"),
    type = "structure",
    members = {
        FieldLevelEncryptionList = schema.new({
            id = id.from(_N, "ListFieldLevelEncryptionConfigsOutput", "FieldLevelEncryptionList"),
            type = "structure",
            name = "FieldLevelEncryptionList",
            target_id = id.from(_N, "FieldLevelEncryptionList"),
            target = M.FieldLevelEncryptionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListFieldLevelEncryptionProfilesInput = schema.new({
    id = id.from(_N, "ListFieldLevelEncryptionProfilesRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListFieldLevelEncryptionProfilesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListFieldLevelEncryptionProfilesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.FieldLevelEncryptionProfileSummary = schema.new({
    id = id.from(_N, "FieldLevelEncryptionProfileSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionEntities = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileSummary", "EncryptionEntities"),
            type = "structure",
            name = "EncryptionEntities",
            target_id = id.from(_N, "EncryptionEntities"),
            target = M.EncryptionEntities,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileSummary", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.FieldLevelEncryptionProfileList = schema.new({
    id = id.from(_N, "FieldLevelEncryptionProfileList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "FieldLevelEncryptionProfileList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.FieldLevelEncryptionProfileSummary, traits = { [traits.XML_NAME] = { name = "FieldLevelEncryptionProfileSummary" } } }),
        }),
    },
})

M.ListFieldLevelEncryptionProfilesOutput = schema.new({
    id = id.from(_N, "ListFieldLevelEncryptionProfilesResult"),
    type = "structure",
    members = {
        FieldLevelEncryptionProfileList = schema.new({
            id = id.from(_N, "ListFieldLevelEncryptionProfilesOutput", "FieldLevelEncryptionProfileList"),
            type = "structure",
            name = "FieldLevelEncryptionProfileList",
            target_id = id.from(_N, "FieldLevelEncryptionProfileList"),
            target = M.FieldLevelEncryptionProfileList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListFunctionsInput = schema.new({
    id = id.from(_N, "ListFunctionsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListFunctionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListFunctionsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "ListFunctionsInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Stage" },
            },
        }),
    },
})

M.FunctionList = schema.new({
    id = id.from(_N, "FunctionList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "FunctionList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "FunctionList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "FunctionList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "FunctionList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.FunctionSummary, traits = { [traits.XML_NAME] = { name = "FunctionSummary" } } }),
        }),
    },
})

M.ListFunctionsOutput = schema.new({
    id = id.from(_N, "ListFunctionsResult"),
    type = "structure",
    members = {
        FunctionList = schema.new({
            id = id.from(_N, "ListFunctionsOutput", "FunctionList"),
            type = "structure",
            name = "FunctionList",
            target_id = id.from(_N, "FunctionList"),
            target = M.FunctionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListInvalidationsInput = schema.new({
    id = id.from(_N, "ListInvalidationsRequest"),
    type = "structure",
    members = {
        DistributionId = schema.new({
            id = id.from(_N, "ListInvalidationsInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInvalidationsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListInvalidationsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.InvalidationSummary = schema.new({
    id = id.from(_N, "InvalidationSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "InvalidationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateTime = schema.new({
            id = id.from(_N, "InvalidationSummary", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "InvalidationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidationList = schema.new({
    id = id.from(_N, "InvalidationList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "InvalidationList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "InvalidationList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "InvalidationList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "InvalidationList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "InvalidationList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "InvalidationList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.InvalidationSummary, traits = { [traits.XML_NAME] = { name = "InvalidationSummary" } } }),
        }),
    },
})

M.ListInvalidationsOutput = schema.new({
    id = id.from(_N, "ListInvalidationsResult"),
    type = "structure",
    members = {
        InvalidationList = schema.new({
            id = id.from(_N, "ListInvalidationsOutput", "InvalidationList"),
            type = "structure",
            name = "InvalidationList",
            target_id = id.from(_N, "InvalidationList"),
            target = M.InvalidationList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListInvalidationsForDistributionTenantInput = schema.new({
    id = id.from(_N, "ListInvalidationsForDistributionTenantRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ListInvalidationsForDistributionTenantInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInvalidationsForDistributionTenantInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListInvalidationsForDistributionTenantInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.ListInvalidationsForDistributionTenantOutput = schema.new({
    id = id.from(_N, "ListInvalidationsForDistributionTenantResult"),
    type = "structure",
    members = {
        InvalidationList = schema.new({
            id = id.from(_N, "ListInvalidationsForDistributionTenantOutput", "InvalidationList"),
            type = "structure",
            name = "InvalidationList",
            target_id = id.from(_N, "InvalidationList"),
            target = M.InvalidationList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListKeyGroupsInput = schema.new({
    id = id.from(_N, "ListKeyGroupsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListKeyGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListKeyGroupsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.KeyGroupSummary = schema.new({
    id = id.from(_N, "KeyGroupSummary"),
    type = "structure",
    members = {
        KeyGroup = schema.new({
            id = id.from(_N, "KeyGroupSummary", "KeyGroup"),
            type = "structure",
            name = "KeyGroup",
            target_id = id.from(_N, "KeyGroup"),
            target = M.KeyGroup,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeyGroupList = schema.new({
    id = id.from(_N, "KeyGroupList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "KeyGroupList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "KeyGroupList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "KeyGroupList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "KeyGroupList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.KeyGroupSummary, traits = { [traits.XML_NAME] = { name = "KeyGroupSummary" } } }),
        }),
    },
})

M.ListKeyGroupsOutput = schema.new({
    id = id.from(_N, "ListKeyGroupsResult"),
    type = "structure",
    members = {
        KeyGroupList = schema.new({
            id = id.from(_N, "ListKeyGroupsOutput", "KeyGroupList"),
            type = "structure",
            name = "KeyGroupList",
            target_id = id.from(_N, "KeyGroupList"),
            target = M.KeyGroupList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListKeyValueStoresInput = schema.new({
    id = id.from(_N, "ListKeyValueStoresRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListKeyValueStoresInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListKeyValueStoresInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ListKeyValueStoresInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Status" },
            },
        }),
    },
})

M.KeyValueStoreList = schema.new({
    id = id.from(_N, "KeyValueStoreList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "KeyValueStoreList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "KeyValueStoreList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "KeyValueStoreList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "KeyValueStoreList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.KeyValueStore, traits = { [traits.XML_NAME] = { name = "KeyValueStore" } } }),
        }),
    },
})

M.ListKeyValueStoresOutput = schema.new({
    id = id.from(_N, "ListKeyValueStoresResult"),
    type = "structure",
    members = {
        KeyValueStoreList = schema.new({
            id = id.from(_N, "ListKeyValueStoresOutput", "KeyValueStoreList"),
            type = "structure",
            name = "KeyValueStoreList",
            target_id = id.from(_N, "KeyValueStoreList"),
            target = M.KeyValueStoreList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListOriginAccessControlsInput = schema.new({
    id = id.from(_N, "ListOriginAccessControlsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListOriginAccessControlsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListOriginAccessControlsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.OriginAccessControlSummary = schema.new({
    id = id.from(_N, "OriginAccessControlSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "OriginAccessControlSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "OriginAccessControlSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "OriginAccessControlSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SigningProtocol = schema.new({
            id = id.from(_N, "OriginAccessControlSummary", "SigningProtocol"),
            type = "string",
            name = "SigningProtocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SigningBehavior = schema.new({
            id = id.from(_N, "OriginAccessControlSummary", "SigningBehavior"),
            type = "string",
            name = "SigningBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginAccessControlOriginType = schema.new({
            id = id.from(_N, "OriginAccessControlSummary", "OriginAccessControlOriginType"),
            type = "string",
            name = "OriginAccessControlOriginType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OriginAccessControlList = schema.new({
    id = id.from(_N, "OriginAccessControlList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "OriginAccessControlList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "OriginAccessControlList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "OriginAccessControlList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "OriginAccessControlList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "OriginAccessControlList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "OriginAccessControlList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OriginAccessControlSummary, traits = { [traits.XML_NAME] = { name = "OriginAccessControlSummary" } } }),
        }),
    },
})

M.ListOriginAccessControlsOutput = schema.new({
    id = id.from(_N, "ListOriginAccessControlsResult"),
    type = "structure",
    members = {
        OriginAccessControlList = schema.new({
            id = id.from(_N, "ListOriginAccessControlsOutput", "OriginAccessControlList"),
            type = "structure",
            name = "OriginAccessControlList",
            target_id = id.from(_N, "OriginAccessControlList"),
            target = M.OriginAccessControlList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListOriginRequestPoliciesInput = schema.new({
    id = id.from(_N, "ListOriginRequestPoliciesRequest"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListOriginRequestPoliciesInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Type" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListOriginRequestPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListOriginRequestPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.OriginRequestPolicySummary = schema.new({
    id = id.from(_N, "OriginRequestPolicySummary"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "OriginRequestPolicySummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginRequestPolicy = schema.new({
            id = id.from(_N, "OriginRequestPolicySummary", "OriginRequestPolicy"),
            type = "structure",
            name = "OriginRequestPolicy",
            target_id = id.from(_N, "OriginRequestPolicy"),
            target = M.OriginRequestPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OriginRequestPolicyList = schema.new({
    id = id.from(_N, "OriginRequestPolicyList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "OriginRequestPolicyList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "OriginRequestPolicyList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "OriginRequestPolicyList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "OriginRequestPolicyList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OriginRequestPolicySummary, traits = { [traits.XML_NAME] = { name = "OriginRequestPolicySummary" } } }),
        }),
    },
})

M.ListOriginRequestPoliciesOutput = schema.new({
    id = id.from(_N, "ListOriginRequestPoliciesResult"),
    type = "structure",
    members = {
        OriginRequestPolicyList = schema.new({
            id = id.from(_N, "ListOriginRequestPoliciesOutput", "OriginRequestPolicyList"),
            type = "structure",
            name = "OriginRequestPolicyList",
            target_id = id.from(_N, "OriginRequestPolicyList"),
            target = M.OriginRequestPolicyList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListPublicKeysInput = schema.new({
    id = id.from(_N, "ListPublicKeysRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListPublicKeysInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListPublicKeysInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.PublicKeySummary = schema.new({
    id = id.from(_N, "PublicKeySummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "PublicKeySummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "PublicKeySummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "PublicKeySummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncodedKey = schema.new({
            id = id.from(_N, "PublicKeySummary", "EncodedKey"),
            type = "string",
            name = "EncodedKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "PublicKeySummary", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.PublicKeyList = schema.new({
    id = id.from(_N, "PublicKeyList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "PublicKeyList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "PublicKeyList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "PublicKeyList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "PublicKeyList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.PublicKeySummary, traits = { [traits.XML_NAME] = { name = "PublicKeySummary" } } }),
        }),
    },
})

M.ListPublicKeysOutput = schema.new({
    id = id.from(_N, "ListPublicKeysResult"),
    type = "structure",
    members = {
        PublicKeyList = schema.new({
            id = id.from(_N, "ListPublicKeysOutput", "PublicKeyList"),
            type = "structure",
            name = "PublicKeyList",
            target_id = id.from(_N, "PublicKeyList"),
            target = M.PublicKeyList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListRealtimeLogConfigsInput = schema.new({
    id = id.from(_N, "ListRealtimeLogConfigsRequest"),
    type = "structure",
    members = {
        MaxItems = schema.new({
            id = id.from(_N, "ListRealtimeLogConfigsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListRealtimeLogConfigsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
    },
})

M.RealtimeLogConfigs = schema.new({
    id = id.from(_N, "RealtimeLogConfigs"),
    type = "structure",
    members = {
        MaxItems = schema.new({
            id = id.from(_N, "RealtimeLogConfigs", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "RealtimeLogConfigs", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.RealtimeLogConfig,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "RealtimeLogConfigs", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "RealtimeLogConfigs", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "RealtimeLogConfigs", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRealtimeLogConfigsOutput = schema.new({
    id = id.from(_N, "ListRealtimeLogConfigsResult"),
    type = "structure",
    members = {
        RealtimeLogConfigs = schema.new({
            id = id.from(_N, "ListRealtimeLogConfigsOutput", "RealtimeLogConfigs"),
            type = "structure",
            name = "RealtimeLogConfigs",
            target_id = id.from(_N, "RealtimeLogConfigs"),
            target = M.RealtimeLogConfigs,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListResponseHeadersPoliciesInput = schema.new({
    id = id.from(_N, "ListResponseHeadersPoliciesRequest"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListResponseHeadersPoliciesInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Type" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListResponseHeadersPoliciesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListResponseHeadersPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.ResponseHeadersPolicySummary = schema.new({
    id = id.from(_N, "ResponseHeadersPolicySummary"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResponseHeadersPolicy = schema.new({
            id = id.from(_N, "ResponseHeadersPolicySummary", "ResponseHeadersPolicy"),
            type = "structure",
            name = "ResponseHeadersPolicy",
            target_id = id.from(_N, "ResponseHeadersPolicy"),
            target = M.ResponseHeadersPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseHeadersPolicyList = schema.new({
    id = id.from(_N, "ResponseHeadersPolicyList"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "ResponseHeadersPolicyList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResponseHeadersPolicySummary, traits = { [traits.XML_NAME] = { name = "ResponseHeadersPolicySummary" } } }),
        }),
    },
})

M.ListResponseHeadersPoliciesOutput = schema.new({
    id = id.from(_N, "ListResponseHeadersPoliciesResult"),
    type = "structure",
    members = {
        ResponseHeadersPolicyList = schema.new({
            id = id.from(_N, "ListResponseHeadersPoliciesOutput", "ResponseHeadersPolicyList"),
            type = "structure",
            name = "ResponseHeadersPolicyList",
            target_id = id.from(_N, "ResponseHeadersPolicyList"),
            target = M.ResponseHeadersPolicyList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListStreamingDistributionsInput = schema.new({
    id = id.from(_N, "ListStreamingDistributionsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListStreamingDistributionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListStreamingDistributionsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.StreamingDistributionSummary = schema.new({
    id = id.from(_N, "StreamingDistributionSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ARN = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Origin = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "S3Origin"),
            type = "structure",
            name = "S3Origin",
            target_id = id.from(_N, "S3Origin"),
            target = M.S3Origin,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Aliases = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "Aliases"),
            type = "structure",
            name = "Aliases",
            target_id = id.from(_N, "Aliases"),
            target = M.Aliases,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrustedSigners = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "TrustedSigners"),
            type = "structure",
            name = "TrustedSigners",
            target_id = id.from(_N, "TrustedSigners"),
            target = M.TrustedSigners,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PriceClass = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "PriceClass"),
            type = "string",
            name = "PriceClass",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "StreamingDistributionSummary", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StreamingDistributionList = schema.new({
    id = id.from(_N, "StreamingDistributionList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "StreamingDistributionList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "StreamingDistributionList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "StreamingDistributionList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "StreamingDistributionList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "StreamingDistributionList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "StreamingDistributionList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.StreamingDistributionSummary, traits = { [traits.XML_NAME] = { name = "StreamingDistributionSummary" } } }),
        }),
    },
})

M.ListStreamingDistributionsOutput = schema.new({
    id = id.from(_N, "ListStreamingDistributionsResult"),
    type = "structure",
    members = {
        StreamingDistributionList = schema.new({
            id = id.from(_N, "ListStreamingDistributionsOutput", "StreamingDistributionList"),
            type = "structure",
            name = "StreamingDistributionList",
            target_id = id.from(_N, "StreamingDistributionList"),
            target = M.StreamingDistributionList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "Resource" },
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResult"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListTrustStoresInput = schema.new({
    id = id.from(_N, "ListTrustStoresRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListTrustStoresInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrustStoresInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TrustStoreSummary = schema.new({
    id = id.from(_N, "TrustStoreSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TrustStoreSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "TrustStoreSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "TrustStoreSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "TrustStoreSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberOfCaCertificates = schema.new({
            id = id.from(_N, "TrustStoreSummary", "NumberOfCaCertificates"),
            type = "integer",
            name = "NumberOfCaCertificates",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "TrustStoreSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "TrustStoreSummary", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "TrustStoreSummary", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTrustStoresOutput = schema.new({
    id = id.from(_N, "ListTrustStoresResult"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListTrustStoresOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        TrustStoreList = schema.new({
            id = id.from(_N, "ListTrustStoresOutput", "TrustStoreList"),
            type = "list",
            name = "TrustStoreList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.TrustStoreSummary, traits = { [traits.XML_NAME] = { name = "TrustStoreSummary" } } }),
        }),
    },
})

M.ListVpcOriginsInput = schema.new({
    id = id.from(_N, "ListVpcOriginsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListVpcOriginsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListVpcOriginsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
    },
})

M.VpcOriginSummary = schema.new({
    id = id.from(_N, "VpcOriginSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "VpcOriginSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "VpcOriginSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "VpcOriginSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "VpcOriginSummary", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "VpcOriginSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "VpcOriginSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "VpcOriginSummary", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        OriginEndpointArn = schema.new({
            id = id.from(_N, "VpcOriginSummary", "OriginEndpointArn"),
            type = "string",
            name = "OriginEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VpcOriginList = schema.new({
    id = id.from(_N, "VpcOriginList"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "VpcOriginList", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "VpcOriginList", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "VpcOriginList", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "VpcOriginList", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Quantity = schema.new({
            id = id.from(_N, "VpcOriginList", "Quantity"),
            type = "integer",
            name = "Quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "VpcOriginList", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.VpcOriginSummary, traits = { [traits.XML_NAME] = { name = "VpcOriginSummary" } } }),
        }),
    },
})

M.ListVpcOriginsOutput = schema.new({
    id = id.from(_N, "ListVpcOriginsResult"),
    type = "structure",
    members = {
        VpcOriginList = schema.new({
            id = id.from(_N, "ListVpcOriginsOutput", "VpcOriginList"),
            type = "structure",
            name = "VpcOriginList",
            target_id = id.from(_N, "VpcOriginList"),
            target = M.VpcOriginList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.PublishConnectionFunctionInput = schema.new({
    id = id.from(_N, "PublishConnectionFunctionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "PublishConnectionFunctionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "PublishConnectionFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.PublishConnectionFunctionOutput = schema.new({
    id = id.from(_N, "PublishConnectionFunctionResult"),
    type = "structure",
    members = {
        ConnectionFunctionSummary = schema.new({
            id = id.from(_N, "PublishConnectionFunctionOutput", "ConnectionFunctionSummary"),
            type = "structure",
            name = "ConnectionFunctionSummary",
            target_id = id.from(_N, "ConnectionFunctionSummary"),
            target = M.ConnectionFunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.PublishFunctionInput = schema.new({
    id = id.from(_N, "PublishFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PublishFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "PublishFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.PublishFunctionOutput = schema.new({
    id = id.from(_N, "PublishFunctionResult"),
    type = "structure",
    members = {
        FunctionSummary = schema.new({
            id = id.from(_N, "PublishFunctionOutput", "FunctionSummary"),
            type = "structure",
            name = "FunctionSummary",
            target_id = id.from(_N, "FunctionSummary"),
            target = M.FunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyDocument = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "PolicyDocument"),
            type = "string",
            name = "PolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResult"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "TagResourceInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "Resource" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "Tags"),
            target = M.Tags,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "Tags" },
            },
        }),
    },
})

M.TagResourceOutput = prelude.Unit

M.TestConnectionFunctionInput = schema.new({
    id = id.from(_N, "TestConnectionFunctionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TestConnectionFunctionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "TestConnectionFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "TestConnectionFunctionInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
        }),
        ConnectionObject = schema.new({
            id = id.from(_N, "TestConnectionFunctionInput", "ConnectionObject"),
            type = "blob",
            name = "ConnectionObject",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectionFunctionTestResult = schema.new({
    id = id.from(_N, "ConnectionFunctionTestResult"),
    type = "structure",
    members = {
        ConnectionFunctionSummary = schema.new({
            id = id.from(_N, "ConnectionFunctionTestResult", "ConnectionFunctionSummary"),
            type = "structure",
            name = "ConnectionFunctionSummary",
            target_id = id.from(_N, "ConnectionFunctionSummary"),
            target = M.ConnectionFunctionSummary,
        }),
        ComputeUtilization = schema.new({
            id = id.from(_N, "ConnectionFunctionTestResult", "ComputeUtilization"),
            type = "string",
            name = "ComputeUtilization",
            target_id = prelude.String.id,
        }),
        ConnectionFunctionExecutionLogs = schema.new({
            id = id.from(_N, "ConnectionFunctionTestResult", "ConnectionFunctionExecutionLogs"),
            type = "list",
            name = "ConnectionFunctionExecutionLogs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ConnectionFunctionErrorMessage = schema.new({
            id = id.from(_N, "ConnectionFunctionTestResult", "ConnectionFunctionErrorMessage"),
            type = "string",
            name = "ConnectionFunctionErrorMessage",
            target_id = prelude.String.id,
        }),
        ConnectionFunctionOutput = schema.new({
            id = id.from(_N, "ConnectionFunctionTestResult", "ConnectionFunctionOutput"),
            type = "string",
            name = "ConnectionFunctionOutput",
            target_id = prelude.String.id,
        }),
    },
})

M.TestConnectionFunctionOutput = schema.new({
    id = id.from(_N, "TestConnectionFunctionResult"),
    type = "structure",
    members = {
        ConnectionFunctionTestResult = schema.new({
            id = id.from(_N, "TestConnectionFunctionOutput", "ConnectionFunctionTestResult"),
            type = "structure",
            name = "ConnectionFunctionTestResult",
            target_id = id.from(_N, "ConnectionFunctionTestResult"),
            target = M.ConnectionFunctionTestResult,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.TestFunctionFailed = schema.new({
    id = id.from(_N, "TestFunctionFailed"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TestFunctionFailed", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TestFunctionInput = schema.new({
    id = id.from(_N, "TestFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "TestFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "TestFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        Stage = schema.new({
            id = id.from(_N, "TestFunctionInput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
        }),
        EventObject = schema.new({
            id = id.from(_N, "TestFunctionInput", "EventObject"),
            type = "blob",
            name = "EventObject",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TestResult = schema.new({
    id = id.from(_N, "TestResult"),
    type = "structure",
    members = {
        FunctionSummary = schema.new({
            id = id.from(_N, "TestResult", "FunctionSummary"),
            type = "structure",
            name = "FunctionSummary",
            target_id = id.from(_N, "FunctionSummary"),
            target = M.FunctionSummary,
        }),
        ComputeUtilization = schema.new({
            id = id.from(_N, "TestResult", "ComputeUtilization"),
            type = "string",
            name = "ComputeUtilization",
            target_id = prelude.String.id,
        }),
        FunctionExecutionLogs = schema.new({
            id = id.from(_N, "TestResult", "FunctionExecutionLogs"),
            type = "list",
            name = "FunctionExecutionLogs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FunctionErrorMessage = schema.new({
            id = id.from(_N, "TestResult", "FunctionErrorMessage"),
            type = "string",
            name = "FunctionErrorMessage",
            target_id = prelude.String.id,
        }),
        FunctionOutput = schema.new({
            id = id.from(_N, "TestResult", "FunctionOutput"),
            type = "string",
            name = "FunctionOutput",
            target_id = prelude.String.id,
        }),
    },
})

M.TestFunctionOutput = schema.new({
    id = id.from(_N, "TestFunctionResult"),
    type = "structure",
    members = {
        TestResult = schema.new({
            id = id.from(_N, "TestFunctionOutput", "TestResult"),
            type = "structure",
            name = "TestResult",
            target_id = id.from(_N, "TestResult"),
            target = M.TestResult,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.TagKeys = schema.new({
    id = id.from(_N, "TagKeys"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "TagKeys", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Key" } } }),
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "UntagResourceInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "Resource" },
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "structure",
            name = "TagKeys",
            target_id = id.from(_N, "TagKeys"),
            target = M.TagKeys,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "TagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = prelude.Unit

M.UpdateAnycastIpListInput = schema.new({
    id = id.from(_N, "UpdateAnycastIpListRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateAnycastIpListInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IpAddressType = schema.new({
            id = id.from(_N, "UpdateAnycastIpListInput", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
        IpamCidrConfigs = schema.new({
            id = id.from(_N, "UpdateAnycastIpListInput", "IpamCidrConfigs"),
            type = "list",
            name = "IpamCidrConfigs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.IpamCidrConfig, traits = { [traits.XML_NAME] = { name = "IpamCidrConfig" } } }),
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateAnycastIpListInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateAnycastIpListOutput = schema.new({
    id = id.from(_N, "UpdateAnycastIpListResult"),
    type = "structure",
    members = {
        AnycastIpList = schema.new({
            id = id.from(_N, "UpdateAnycastIpListOutput", "AnycastIpList"),
            type = "structure",
            name = "AnycastIpList",
            target_id = id.from(_N, "AnycastIpList"),
            target = M.AnycastIpList,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateAnycastIpListOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateCachePolicyInput = schema.new({
    id = id.from(_N, "UpdateCachePolicyRequest"),
    type = "structure",
    members = {
        CachePolicyConfig = schema.new({
            id = id.from(_N, "UpdateCachePolicyInput", "CachePolicyConfig"),
            type = "structure",
            name = "CachePolicyConfig",
            target_id = id.from(_N, "CachePolicyConfig"),
            target = M.CachePolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "CachePolicyConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateCachePolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateCachePolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateCachePolicyOutput = schema.new({
    id = id.from(_N, "UpdateCachePolicyResult"),
    type = "structure",
    members = {
        CachePolicy = schema.new({
            id = id.from(_N, "UpdateCachePolicyOutput", "CachePolicy"),
            type = "structure",
            name = "CachePolicy",
            target_id = id.from(_N, "CachePolicy"),
            target = M.CachePolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateCachePolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateCloudFrontOriginAccessIdentityInput = schema.new({
    id = id.from(_N, "UpdateCloudFrontOriginAccessIdentityRequest"),
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityConfig = schema.new({
            id = id.from(_N, "UpdateCloudFrontOriginAccessIdentityInput", "CloudFrontOriginAccessIdentityConfig"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentityConfig",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentityConfig"),
            target = M.CloudFrontOriginAccessIdentityConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "CloudFrontOriginAccessIdentityConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateCloudFrontOriginAccessIdentityInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateCloudFrontOriginAccessIdentityInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateCloudFrontOriginAccessIdentityOutput = schema.new({
    id = id.from(_N, "UpdateCloudFrontOriginAccessIdentityResult"),
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentity = schema.new({
            id = id.from(_N, "UpdateCloudFrontOriginAccessIdentityOutput", "CloudFrontOriginAccessIdentity"),
            type = "structure",
            name = "CloudFrontOriginAccessIdentity",
            target_id = id.from(_N, "CloudFrontOriginAccessIdentity"),
            target = M.CloudFrontOriginAccessIdentity,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateCloudFrontOriginAccessIdentityOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateConnectionFunctionInput = schema.new({
    id = id.from(_N, "UpdateConnectionFunctionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateConnectionFunctionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateConnectionFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        ConnectionFunctionConfig = schema.new({
            id = id.from(_N, "UpdateConnectionFunctionInput", "ConnectionFunctionConfig"),
            type = "structure",
            name = "ConnectionFunctionConfig",
            target_id = id.from(_N, "FunctionConfig"),
            target = M.FunctionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectionFunctionCode = schema.new({
            id = id.from(_N, "UpdateConnectionFunctionInput", "ConnectionFunctionCode"),
            type = "blob",
            name = "ConnectionFunctionCode",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateConnectionFunctionOutput = schema.new({
    id = id.from(_N, "UpdateConnectionFunctionResult"),
    type = "structure",
    members = {
        ConnectionFunctionSummary = schema.new({
            id = id.from(_N, "UpdateConnectionFunctionOutput", "ConnectionFunctionSummary"),
            type = "structure",
            name = "ConnectionFunctionSummary",
            target_id = id.from(_N, "ConnectionFunctionSummary"),
            target = M.ConnectionFunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateConnectionFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateConnectionGroupInput = schema.new({
    id = id.from(_N, "UpdateConnectionGroupRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateConnectionGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Ipv6Enabled = schema.new({
            id = id.from(_N, "UpdateConnectionGroupInput", "Ipv6Enabled"),
            type = "boolean",
            name = "Ipv6Enabled",
            target_id = prelude.Boolean.id,
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateConnectionGroupInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        AnycastIpListId = schema.new({
            id = id.from(_N, "UpdateConnectionGroupInput", "AnycastIpListId"),
            type = "string",
            name = "AnycastIpListId",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "UpdateConnectionGroupInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateConnectionGroupOutput = schema.new({
    id = id.from(_N, "UpdateConnectionGroupResult"),
    type = "structure",
    members = {
        ConnectionGroup = schema.new({
            id = id.from(_N, "UpdateConnectionGroupOutput", "ConnectionGroup"),
            type = "structure",
            name = "ConnectionGroup",
            target_id = id.from(_N, "ConnectionGroup"),
            target = M.ConnectionGroup,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateConnectionGroupOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateContinuousDeploymentPolicyInput = schema.new({
    id = id.from(_N, "UpdateContinuousDeploymentPolicyRequest"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = schema.new({
            id = id.from(_N, "UpdateContinuousDeploymentPolicyInput", "ContinuousDeploymentPolicyConfig"),
            type = "structure",
            name = "ContinuousDeploymentPolicyConfig",
            target_id = id.from(_N, "ContinuousDeploymentPolicyConfig"),
            target = M.ContinuousDeploymentPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "ContinuousDeploymentPolicyConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateContinuousDeploymentPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateContinuousDeploymentPolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateContinuousDeploymentPolicyOutput = schema.new({
    id = id.from(_N, "UpdateContinuousDeploymentPolicyResult"),
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = schema.new({
            id = id.from(_N, "UpdateContinuousDeploymentPolicyOutput", "ContinuousDeploymentPolicy"),
            type = "structure",
            name = "ContinuousDeploymentPolicy",
            target_id = id.from(_N, "ContinuousDeploymentPolicy"),
            target = M.ContinuousDeploymentPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateContinuousDeploymentPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateDistributionInput = schema.new({
    id = id.from(_N, "UpdateDistributionRequest"),
    type = "structure",
    members = {
        DistributionConfig = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "DistributionConfig"),
            type = "structure",
            name = "DistributionConfig",
            target_id = id.from(_N, "DistributionConfig"),
            target = M.DistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "DistributionConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateDistributionOutput = schema.new({
    id = id.from(_N, "UpdateDistributionResult"),
    type = "structure",
    members = {
        Distribution = schema.new({
            id = id.from(_N, "UpdateDistributionOutput", "Distribution"),
            type = "structure",
            name = "Distribution",
            target_id = id.from(_N, "Distribution"),
            target = M.Distribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateDistributionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateDistributionTenantInput = schema.new({
    id = id.from(_N, "UpdateDistributionTenantRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DistributionId = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "DistributionId"),
            type = "string",
            name = "DistributionId",
            target_id = prelude.String.id,
        }),
        Domains = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "Domains"),
            type = "list",
            name = "Domains",
            target_id = prelude.Document.id,
            list_member = M.DomainItem,
        }),
        Customizations = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "Customizations"),
            type = "structure",
            name = "Customizations",
            target_id = id.from(_N, "Customizations"),
            target = M.Customizations,
        }),
        Parameters = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.Parameter,
        }),
        ConnectionGroupId = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "ConnectionGroupId"),
            type = "string",
            name = "ConnectionGroupId",
            target_id = prelude.String.id,
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        ManagedCertificateRequest = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "ManagedCertificateRequest"),
            type = "structure",
            name = "ManagedCertificateRequest",
            target_id = id.from(_N, "ManagedCertificateRequest"),
            target = M.ManagedCertificateRequest,
        }),
        Enabled = schema.new({
            id = id.from(_N, "UpdateDistributionTenantInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateDistributionTenantOutput = schema.new({
    id = id.from(_N, "UpdateDistributionTenantResult"),
    type = "structure",
    members = {
        DistributionTenant = schema.new({
            id = id.from(_N, "UpdateDistributionTenantOutput", "DistributionTenant"),
            type = "structure",
            name = "DistributionTenant",
            target_id = id.from(_N, "DistributionTenant"),
            target = M.DistributionTenant,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateDistributionTenantOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateDistributionWithStagingConfigInput = schema.new({
    id = id.from(_N, "UpdateDistributionWithStagingConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateDistributionWithStagingConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        StagingDistributionId = schema.new({
            id = id.from(_N, "UpdateDistributionWithStagingConfigInput", "StagingDistributionId"),
            type = "string",
            name = "StagingDistributionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "StagingDistributionId" },
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateDistributionWithStagingConfigInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateDistributionWithStagingConfigOutput = schema.new({
    id = id.from(_N, "UpdateDistributionWithStagingConfigResult"),
    type = "structure",
    members = {
        Distribution = schema.new({
            id = id.from(_N, "UpdateDistributionWithStagingConfigOutput", "Distribution"),
            type = "structure",
            name = "Distribution",
            target_id = id.from(_N, "Distribution"),
            target = M.Distribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateDistributionWithStagingConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateDomainAssociationInput = schema.new({
    id = id.from(_N, "UpdateDomainAssociationRequest"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "UpdateDomainAssociationInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetResource = schema.new({
            id = id.from(_N, "UpdateDomainAssociationInput", "TargetResource"),
            type = "structure",
            name = "TargetResource",
            target_id = id.from(_N, "DistributionResourceId"),
            target = M.DistributionResourceId,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateDomainAssociationInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateDomainAssociationOutput = schema.new({
    id = id.from(_N, "UpdateDomainAssociationResult"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "UpdateDomainAssociationOutput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "UpdateDomainAssociationOutput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateDomainAssociationOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateFieldLevelEncryptionConfigInput = schema.new({
    id = id.from(_N, "UpdateFieldLevelEncryptionConfigRequest"),
    type = "structure",
    members = {
        FieldLevelEncryptionConfig = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionConfigInput", "FieldLevelEncryptionConfig"),
            type = "structure",
            name = "FieldLevelEncryptionConfig",
            target_id = id.from(_N, "FieldLevelEncryptionConfig"),
            target = M.FieldLevelEncryptionConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "FieldLevelEncryptionConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionConfigInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateFieldLevelEncryptionConfigOutput = schema.new({
    id = id.from(_N, "UpdateFieldLevelEncryptionConfigResult"),
    type = "structure",
    members = {
        FieldLevelEncryption = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionConfigOutput", "FieldLevelEncryption"),
            type = "structure",
            name = "FieldLevelEncryption",
            target_id = id.from(_N, "FieldLevelEncryption"),
            target = M.FieldLevelEncryption,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionConfigOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateFieldLevelEncryptionProfileInput = schema.new({
    id = id.from(_N, "UpdateFieldLevelEncryptionProfileRequest"),
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionProfileInput", "FieldLevelEncryptionProfileConfig"),
            type = "structure",
            name = "FieldLevelEncryptionProfileConfig",
            target_id = id.from(_N, "FieldLevelEncryptionProfileConfig"),
            target = M.FieldLevelEncryptionProfileConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "FieldLevelEncryptionProfileConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionProfileInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionProfileInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateFieldLevelEncryptionProfileOutput = schema.new({
    id = id.from(_N, "UpdateFieldLevelEncryptionProfileResult"),
    type = "structure",
    members = {
        FieldLevelEncryptionProfile = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionProfileOutput", "FieldLevelEncryptionProfile"),
            type = "structure",
            name = "FieldLevelEncryptionProfile",
            target_id = id.from(_N, "FieldLevelEncryptionProfile"),
            target = M.FieldLevelEncryptionProfile,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateFieldLevelEncryptionProfileOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateFunctionInput = schema.new({
    id = id.from(_N, "UpdateFunctionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        FunctionConfig = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "FunctionConfig"),
            type = "structure",
            name = "FunctionConfig",
            target_id = id.from(_N, "FunctionConfig"),
            target = M.FunctionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FunctionCode = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "FunctionCode"),
            type = "blob",
            name = "FunctionCode",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateFunctionOutput = schema.new({
    id = id.from(_N, "UpdateFunctionResult"),
    type = "structure",
    members = {
        FunctionSummary = schema.new({
            id = id.from(_N, "UpdateFunctionOutput", "FunctionSummary"),
            type = "structure",
            name = "FunctionSummary",
            target_id = id.from(_N, "FunctionSummary"),
            target = M.FunctionSummary,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateFunctionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETtag" },
            },
        }),
    },
})

M.UpdateKeyGroupInput = schema.new({
    id = id.from(_N, "UpdateKeyGroupRequest"),
    type = "structure",
    members = {
        KeyGroupConfig = schema.new({
            id = id.from(_N, "UpdateKeyGroupInput", "KeyGroupConfig"),
            type = "structure",
            name = "KeyGroupConfig",
            target_id = id.from(_N, "KeyGroupConfig"),
            target = M.KeyGroupConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "KeyGroupConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateKeyGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateKeyGroupInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateKeyGroupOutput = schema.new({
    id = id.from(_N, "UpdateKeyGroupResult"),
    type = "structure",
    members = {
        KeyGroup = schema.new({
            id = id.from(_N, "UpdateKeyGroupOutput", "KeyGroup"),
            type = "structure",
            name = "KeyGroup",
            target_id = id.from(_N, "KeyGroup"),
            target = M.KeyGroup,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateKeyGroupOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateKeyValueStoreInput = schema.new({
    id = id.from(_N, "UpdateKeyValueStoreRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateKeyValueStoreInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "UpdateKeyValueStoreInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateKeyValueStoreInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateKeyValueStoreOutput = schema.new({
    id = id.from(_N, "UpdateKeyValueStoreResult"),
    type = "structure",
    members = {
        KeyValueStore = schema.new({
            id = id.from(_N, "UpdateKeyValueStoreOutput", "KeyValueStore"),
            type = "structure",
            name = "KeyValueStore",
            target_id = id.from(_N, "KeyValueStore"),
            target = M.KeyValueStore,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateKeyValueStoreOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateOriginAccessControlInput = schema.new({
    id = id.from(_N, "UpdateOriginAccessControlRequest"),
    type = "structure",
    members = {
        OriginAccessControlConfig = schema.new({
            id = id.from(_N, "UpdateOriginAccessControlInput", "OriginAccessControlConfig"),
            type = "structure",
            name = "OriginAccessControlConfig",
            target_id = id.from(_N, "OriginAccessControlConfig"),
            target = M.OriginAccessControlConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "OriginAccessControlConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateOriginAccessControlInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateOriginAccessControlInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateOriginAccessControlOutput = schema.new({
    id = id.from(_N, "UpdateOriginAccessControlResult"),
    type = "structure",
    members = {
        OriginAccessControl = schema.new({
            id = id.from(_N, "UpdateOriginAccessControlOutput", "OriginAccessControl"),
            type = "structure",
            name = "OriginAccessControl",
            target_id = id.from(_N, "OriginAccessControl"),
            target = M.OriginAccessControl,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateOriginAccessControlOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateOriginRequestPolicyInput = schema.new({
    id = id.from(_N, "UpdateOriginRequestPolicyRequest"),
    type = "structure",
    members = {
        OriginRequestPolicyConfig = schema.new({
            id = id.from(_N, "UpdateOriginRequestPolicyInput", "OriginRequestPolicyConfig"),
            type = "structure",
            name = "OriginRequestPolicyConfig",
            target_id = id.from(_N, "OriginRequestPolicyConfig"),
            target = M.OriginRequestPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "OriginRequestPolicyConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateOriginRequestPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateOriginRequestPolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateOriginRequestPolicyOutput = schema.new({
    id = id.from(_N, "UpdateOriginRequestPolicyResult"),
    type = "structure",
    members = {
        OriginRequestPolicy = schema.new({
            id = id.from(_N, "UpdateOriginRequestPolicyOutput", "OriginRequestPolicy"),
            type = "structure",
            name = "OriginRequestPolicy",
            target_id = id.from(_N, "OriginRequestPolicy"),
            target = M.OriginRequestPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateOriginRequestPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdatePublicKeyInput = schema.new({
    id = id.from(_N, "UpdatePublicKeyRequest"),
    type = "structure",
    members = {
        PublicKeyConfig = schema.new({
            id = id.from(_N, "UpdatePublicKeyInput", "PublicKeyConfig"),
            type = "structure",
            name = "PublicKeyConfig",
            target_id = id.from(_N, "PublicKeyConfig"),
            target = M.PublicKeyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "PublicKeyConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdatePublicKeyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdatePublicKeyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdatePublicKeyOutput = schema.new({
    id = id.from(_N, "UpdatePublicKeyResult"),
    type = "structure",
    members = {
        PublicKey = schema.new({
            id = id.from(_N, "UpdatePublicKeyOutput", "PublicKey"),
            type = "structure",
            name = "PublicKey",
            target_id = id.from(_N, "PublicKey"),
            target = M.PublicKey,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdatePublicKeyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateRealtimeLogConfigInput = schema.new({
    id = id.from(_N, "UpdateRealtimeLogConfigRequest"),
    type = "structure",
    members = {
        EndPoints = schema.new({
            id = id.from(_N, "UpdateRealtimeLogConfigInput", "EndPoints"),
            type = "list",
            name = "EndPoints",
            target_id = prelude.Document.id,
            list_member = M.EndPoint,
        }),
        Fields = schema.new({
            id = id.from(_N, "UpdateRealtimeLogConfigInput", "Fields"),
            type = "list",
            name = "Fields",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Field" } } }),
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateRealtimeLogConfigInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "UpdateRealtimeLogConfigInput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        SamplingRate = schema.new({
            id = id.from(_N, "UpdateRealtimeLogConfigInput", "SamplingRate"),
            type = "long",
            name = "SamplingRate",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateRealtimeLogConfigOutput = schema.new({
    id = id.from(_N, "UpdateRealtimeLogConfigResult"),
    type = "structure",
    members = {
        RealtimeLogConfig = schema.new({
            id = id.from(_N, "UpdateRealtimeLogConfigOutput", "RealtimeLogConfig"),
            type = "structure",
            name = "RealtimeLogConfig",
            target_id = id.from(_N, "RealtimeLogConfig"),
            target = M.RealtimeLogConfig,
        }),
    },
})

M.UpdateResponseHeadersPolicyInput = schema.new({
    id = id.from(_N, "UpdateResponseHeadersPolicyRequest"),
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = schema.new({
            id = id.from(_N, "UpdateResponseHeadersPolicyInput", "ResponseHeadersPolicyConfig"),
            type = "structure",
            name = "ResponseHeadersPolicyConfig",
            target_id = id.from(_N, "ResponseHeadersPolicyConfig"),
            target = M.ResponseHeadersPolicyConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "ResponseHeadersPolicyConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateResponseHeadersPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateResponseHeadersPolicyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateResponseHeadersPolicyOutput = schema.new({
    id = id.from(_N, "UpdateResponseHeadersPolicyResult"),
    type = "structure",
    members = {
        ResponseHeadersPolicy = schema.new({
            id = id.from(_N, "UpdateResponseHeadersPolicyOutput", "ResponseHeadersPolicy"),
            type = "structure",
            name = "ResponseHeadersPolicy",
            target_id = id.from(_N, "ResponseHeadersPolicy"),
            target = M.ResponseHeadersPolicy,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateResponseHeadersPolicyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateStreamingDistributionInput = schema.new({
    id = id.from(_N, "UpdateStreamingDistributionRequest"),
    type = "structure",
    members = {
        StreamingDistributionConfig = schema.new({
            id = id.from(_N, "UpdateStreamingDistributionInput", "StreamingDistributionConfig"),
            type = "structure",
            name = "StreamingDistributionConfig",
            target_id = id.from(_N, "StreamingDistributionConfig"),
            target = M.StreamingDistributionConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "StreamingDistributionConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateStreamingDistributionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateStreamingDistributionInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateStreamingDistributionOutput = schema.new({
    id = id.from(_N, "UpdateStreamingDistributionResult"),
    type = "structure",
    members = {
        StreamingDistribution = schema.new({
            id = id.from(_N, "UpdateStreamingDistributionOutput", "StreamingDistribution"),
            type = "structure",
            name = "StreamingDistribution",
            target_id = id.from(_N, "StreamingDistribution"),
            target = M.StreamingDistribution,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateStreamingDistributionOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateTrustStoreInput = schema.new({
    id = id.from(_N, "UpdateTrustStoreRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateTrustStoreInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CaCertificatesBundleSource = schema.new({
            id = id.from(_N, "UpdateTrustStoreInput", "CaCertificatesBundleSource"),
            type = "union",
            name = "CaCertificatesBundleSource",
            target_id = id.from(_N, "CaCertificatesBundleSource"),
            target = M.CaCertificatesBundleSource,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateTrustStoreInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateTrustStoreOutput = schema.new({
    id = id.from(_N, "UpdateTrustStoreResult"),
    type = "structure",
    members = {
        TrustStore = schema.new({
            id = id.from(_N, "UpdateTrustStoreOutput", "TrustStore"),
            type = "structure",
            name = "TrustStore",
            target_id = id.from(_N, "TrustStore"),
            target = M.TrustStore,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateTrustStoreOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.UpdateVpcOriginInput = schema.new({
    id = id.from(_N, "UpdateVpcOriginRequest"),
    type = "structure",
    members = {
        VpcOriginEndpointConfig = schema.new({
            id = id.from(_N, "UpdateVpcOriginInput", "VpcOriginEndpointConfig"),
            type = "structure",
            name = "VpcOriginEndpointConfig",
            target_id = id.from(_N, "VpcOriginEndpointConfig"),
            target = M.VpcOriginEndpointConfig,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.XML_NAME] = { name = "VpcOriginEndpointConfig" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateVpcOriginInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateVpcOriginInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.UpdateVpcOriginOutput = schema.new({
    id = id.from(_N, "UpdateVpcOriginResult"),
    type = "structure",
    members = {
        VpcOrigin = schema.new({
            id = id.from(_N, "UpdateVpcOriginOutput", "VpcOrigin"),
            type = "structure",
            name = "VpcOrigin",
            target_id = id.from(_N, "VpcOrigin"),
            target = M.VpcOrigin,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateVpcOriginOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.VerifyDnsConfigurationInput = schema.new({
    id = id.from(_N, "VerifyDnsConfigurationRequest"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "VerifyDnsConfigurationInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        Identifier = schema.new({
            id = id.from(_N, "VerifyDnsConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DnsConfiguration = schema.new({
    id = id.from(_N, "DnsConfiguration"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "DnsConfiguration", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DnsConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "DnsConfiguration", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.VerifyDnsConfigurationOutput = schema.new({
    id = id.from(_N, "VerifyDnsConfigurationResult"),
    type = "structure",
    members = {
        DnsConfigurationList = schema.new({
            id = id.from(_N, "VerifyDnsConfigurationOutput", "DnsConfigurationList"),
            type = "list",
            name = "DnsConfigurationList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DnsConfiguration, traits = { [traits.XML_NAME] = { name = "DnsConfiguration" } } }),
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
