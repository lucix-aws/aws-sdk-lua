local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.workmail"

local M = {}

M.ImpersonationRuleList = schema.new({ type = "list", list_member = M.ImpersonationRule })

M.DeviceTypeList = schema.new({ type = "list", list_member = prelude.String })

M.DeviceModelList = schema.new({ type = "list", list_member = prelude.String })

M.DeviceOperatingSystemList = schema.new({ type = "list", list_member = prelude.String })

M.DeviceUserAgentList = schema.new({ type = "list", list_member = prelude.String })

M.Domains = schema.new({ type = "list", list_member = M.Domain })

M.AccessControlRuleNameList = schema.new({ type = "list", list_member = prelude.String })

M.FolderConfigurations = schema.new({ type = "list", list_member = M.FolderConfiguration })

M.ImpersonationMatchedRuleList = schema.new({ type = "list", list_member = M.ImpersonationMatchedRule })

M.DnsRecords = schema.new({ type = "list", list_member = M.DnsRecord })

M.MobileDeviceAccessMatchedRuleList = schema.new({ type = "list", list_member = M.MobileDeviceAccessMatchedRule })

M.PersonalAccessTokenScopeList = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlRulesList = schema.new({ type = "list", list_member = M.AccessControlRule })

M.Aliases = schema.new({ type = "list", list_member = prelude.String })

M.AvailabilityConfigurationList = schema.new({ type = "list", list_member = M.AvailabilityConfiguration })

M.Members = schema.new({ type = "list", list_member = M.Member })

M.Groups = schema.new({ type = "list", list_member = M.Group })

M.GroupIdentifiers = schema.new({ type = "list", list_member = M.GroupIdentifier })

M.ImpersonationRoleList = schema.new({ type = "list", list_member = M.ImpersonationRole })

M.Jobs = schema.new({ type = "list", list_member = M.MailboxExportJob })

M.Permissions = schema.new({ type = "list", list_member = M.Permission })

M.MailDomains = schema.new({ type = "list", list_member = M.MailDomainSummary })

M.MobileDeviceAccessOverridesList = schema.new({ type = "list", list_member = M.MobileDeviceAccessOverride })

M.MobileDeviceAccessRulesList = schema.new({ type = "list", list_member = M.MobileDeviceAccessRule })

M.OrganizationSummaries = schema.new({ type = "list", list_member = M.OrganizationSummary })

M.PersonalAccessTokenSummaryList = schema.new({ type = "list", list_member = M.PersonalAccessTokenSummary })

M.ResourceDelegates = schema.new({ type = "list", list_member = M.Delegate })

M.Resources = schema.new({ type = "list", list_member = M.Resource })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.Users = schema.new({ type = "list", list_member = M.User })

M.IpRangeList = schema.new({ type = "list", list_member = prelude.String })

M.ActionsList = schema.new({ type = "list", list_member = prelude.String })

M.UserIdList = schema.new({ type = "list", list_member = prelude.String })

M.ImpersonationRoleIdList = schema.new({ type = "list", list_member = prelude.String })

M.PermissionValues = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.TargetUsers = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlRule = schema.new({
    id = id.from(_N, "AccessControlRule"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AccessControlRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "AccessControlRule", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "AccessControlRule", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        IpRanges = schema.new({
            id = id.from(_N, "AccessControlRule", "IpRanges"),
            type = "list",
            name = "IpRanges",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotIpRanges = schema.new({
            id = id.from(_N, "AccessControlRule", "NotIpRanges"),
            type = "list",
            name = "NotIpRanges",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Actions = schema.new({
            id = id.from(_N, "AccessControlRule", "Actions"),
            type = "list",
            name = "Actions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotActions = schema.new({
            id = id.from(_N, "AccessControlRule", "NotActions"),
            type = "list",
            name = "NotActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserIds = schema.new({
            id = id.from(_N, "AccessControlRule", "UserIds"),
            type = "list",
            name = "UserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotUserIds = schema.new({
            id = id.from(_N, "AccessControlRule", "NotUserIds"),
            type = "list",
            name = "NotUserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "AccessControlRule", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateModified = schema.new({
            id = id.from(_N, "AccessControlRule", "DateModified"),
            type = "timestamp",
            name = "DateModified",
            target_id = prelude.Timestamp.id,
        }),
        ImpersonationRoleIds = schema.new({
            id = id.from(_N, "AccessControlRule", "ImpersonationRoleIds"),
            type = "list",
            name = "ImpersonationRoleIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotImpersonationRoleIds = schema.new({
            id = id.from(_N, "AccessControlRule", "NotImpersonationRoleIds"),
            type = "list",
            name = "NotImpersonationRoleIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AssociateDelegateToResourceInput = schema.new({
    id = id.from(_N, "AssociateDelegateToResourceRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "AssociateDelegateToResourceInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "AssociateDelegateToResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "AssociateDelegateToResourceInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateDelegateToResourceOutput = schema.new({
    id = id.from(_N, "AssociateDelegateToResourceResponse"),
    type = "structure",
})

M.EntityNotFoundException = schema.new({
    id = id.from(_N, "EntityNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityStateException = schema.new({
    id = id.from(_N, "EntityStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityStateException", "Message"),
            type = "string",
            name = "Message",
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
    },
})

M.OrganizationNotFoundException = schema.new({
    id = id.from(_N, "OrganizationNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OrganizationNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OrganizationStateException = schema.new({
    id = id.from(_N, "OrganizationStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OrganizationStateException", "Message"),
            type = "string",
            name = "Message",
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
    },
})

M.AssociateMemberToGroupInput = schema.new({
    id = id.from(_N, "AssociateMemberToGroupRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "AssociateMemberToGroupInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "AssociateMemberToGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberId = schema.new({
            id = id.from(_N, "AssociateMemberToGroupInput", "MemberId"),
            type = "string",
            name = "MemberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateMemberToGroupOutput = schema.new({
    id = id.from(_N, "AssociateMemberToGroupResponse"),
    type = "structure",
})

M.DirectoryServiceAuthenticationFailedException = schema.new({
    id = id.from(_N, "DirectoryServiceAuthenticationFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryServiceAuthenticationFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
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
    },
})

M.AssumeImpersonationRoleInput = schema.new({
    id = id.from(_N, "AssumeImpersonationRoleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "AssumeImpersonationRoleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "AssumeImpersonationRoleInput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssumeImpersonationRoleOutput = schema.new({
    id = id.from(_N, "AssumeImpersonationRoleResponse"),
    type = "structure",
    members = {
        Token = schema.new({
            id = id.from(_N, "AssumeImpersonationRoleOutput", "Token"),
            type = "string",
            name = "Token",
            target_id = prelude.String.id,
        }),
        ExpiresIn = schema.new({
            id = id.from(_N, "AssumeImpersonationRoleOutput", "ExpiresIn"),
            type = "long",
            name = "ExpiresIn",
            target_id = prelude.Long.id,
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
    },
})

M.RedactedEwsAvailabilityProvider = schema.new({
    id = id.from(_N, "RedactedEwsAvailabilityProvider"),
    type = "structure",
    members = {
        EwsEndpoint = schema.new({
            id = id.from(_N, "RedactedEwsAvailabilityProvider", "EwsEndpoint"),
            type = "string",
            name = "EwsEndpoint",
            target_id = prelude.String.id,
        }),
        EwsUsername = schema.new({
            id = id.from(_N, "RedactedEwsAvailabilityProvider", "EwsUsername"),
            type = "string",
            name = "EwsUsername",
            target_id = prelude.String.id,
        }),
    },
})

M.LambdaAvailabilityProvider = schema.new({
    id = id.from(_N, "LambdaAvailabilityProvider"),
    type = "structure",
    members = {
        LambdaArn = schema.new({
            id = id.from(_N, "LambdaAvailabilityProvider", "LambdaArn"),
            type = "string",
            name = "LambdaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AvailabilityConfiguration = schema.new({
    id = id.from(_N, "AvailabilityConfiguration"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "AvailabilityConfiguration", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
        ProviderType = schema.new({
            id = id.from(_N, "AvailabilityConfiguration", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
        }),
        EwsProvider = schema.new({
            id = id.from(_N, "AvailabilityConfiguration", "EwsProvider"),
            type = "structure",
            name = "EwsProvider",
            target_id = id.from(_N, "RedactedEwsAvailabilityProvider"),
            target = M.RedactedEwsAvailabilityProvider,
        }),
        LambdaProvider = schema.new({
            id = id.from(_N, "AvailabilityConfiguration", "LambdaProvider"),
            type = "structure",
            name = "LambdaProvider",
            target_id = id.from(_N, "LambdaAvailabilityProvider"),
            target = M.LambdaAvailabilityProvider,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "AvailabilityConfiguration", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateModified = schema.new({
            id = id.from(_N, "AvailabilityConfiguration", "DateModified"),
            type = "timestamp",
            name = "DateModified",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.BookingOptions = schema.new({
    id = id.from(_N, "BookingOptions"),
    type = "structure",
    members = {
        AutoAcceptRequests = schema.new({
            id = id.from(_N, "BookingOptions", "AutoAcceptRequests"),
            type = "boolean",
            name = "AutoAcceptRequests",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        AutoDeclineRecurringRequests = schema.new({
            id = id.from(_N, "BookingOptions", "AutoDeclineRecurringRequests"),
            type = "boolean",
            name = "AutoDeclineRecurringRequests",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        AutoDeclineConflictingRequests = schema.new({
            id = id.from(_N, "BookingOptions", "AutoDeclineConflictingRequests"),
            type = "boolean",
            name = "AutoDeclineConflictingRequests",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CancelMailboxExportJobInput = schema.new({
    id = id.from(_N, "CancelMailboxExportJobRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CancelMailboxExportJobInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        JobId = schema.new({
            id = id.from(_N, "CancelMailboxExportJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "CancelMailboxExportJobInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelMailboxExportJobOutput = schema.new({
    id = id.from(_N, "CancelMailboxExportJobResponse"),
    type = "structure",
})

M.CreateAliasInput = schema.new({
    id = id.from(_N, "CreateAliasRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateAliasInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "CreateAliasInput", "EntityId"),
            type = "string",
            name = "EntityId",
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
    id = id.from(_N, "CreateAliasResponse"),
    type = "structure",
})

M.EmailAddressInUseException = schema.new({
    id = id.from(_N, "EmailAddressInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EmailAddressInUseException", "Message"),
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
    },
})

M.MailDomainNotFoundException = schema.new({
    id = id.from(_N, "MailDomainNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MailDomainNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MailDomainStateException = schema.new({
    id = id.from(_N, "MailDomainStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MailDomainStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.EwsAvailabilityProvider = schema.new({
    id = id.from(_N, "EwsAvailabilityProvider"),
    type = "structure",
    members = {
        EwsEndpoint = schema.new({
            id = id.from(_N, "EwsAvailabilityProvider", "EwsEndpoint"),
            type = "string",
            name = "EwsEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EwsUsername = schema.new({
            id = id.from(_N, "EwsAvailabilityProvider", "EwsUsername"),
            type = "string",
            name = "EwsUsername",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EwsPassword = schema.new({
            id = id.from(_N, "EwsAvailabilityProvider", "EwsPassword"),
            type = "string",
            name = "EwsPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAvailabilityConfigurationInput = schema.new({
    id = id.from(_N, "CreateAvailabilityConfigurationRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateAvailabilityConfigurationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "CreateAvailabilityConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "CreateAvailabilityConfigurationInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EwsProvider = schema.new({
            id = id.from(_N, "CreateAvailabilityConfigurationInput", "EwsProvider"),
            type = "structure",
            name = "EwsProvider",
            target_id = id.from(_N, "EwsAvailabilityProvider"),
            target = M.EwsAvailabilityProvider,
        }),
        LambdaProvider = schema.new({
            id = id.from(_N, "CreateAvailabilityConfigurationInput", "LambdaProvider"),
            type = "structure",
            name = "LambdaProvider",
            target_id = id.from(_N, "LambdaAvailabilityProvider"),
            target = M.LambdaAvailabilityProvider,
        }),
    },
})

M.CreateAvailabilityConfigurationOutput = schema.new({
    id = id.from(_N, "CreateAvailabilityConfigurationResponse"),
    type = "structure",
})

M.NameAvailabilityException = schema.new({
    id = id.from(_N, "NameAvailabilityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NameAvailabilityException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupInput = schema.new({
    id = id.from(_N, "CreateGroupRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateGroupInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "CreateGroupInput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateGroupOutput = schema.new({
    id = id.from(_N, "CreateGroupResponse"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "CreateGroupOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedNameException = schema.new({
    id = id.from(_N, "ReservedNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ReservedNameException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateIdentityCenterApplicationInput = schema.new({
    id = id.from(_N, "CreateIdentityCenterApplicationRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateIdentityCenterApplicationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceArn = schema.new({
            id = id.from(_N, "CreateIdentityCenterApplicationInput", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateIdentityCenterApplicationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateIdentityCenterApplicationOutput = schema.new({
    id = id.from(_N, "CreateIdentityCenterApplicationResponse"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "CreateIdentityCenterApplicationOutput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ImpersonationRule = schema.new({
    id = id.from(_N, "ImpersonationRule"),
    type = "structure",
    members = {
        ImpersonationRuleId = schema.new({
            id = id.from(_N, "ImpersonationRule", "ImpersonationRuleId"),
            type = "string",
            name = "ImpersonationRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ImpersonationRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ImpersonationRule", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "ImpersonationRule", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetUsers = schema.new({
            id = id.from(_N, "ImpersonationRule", "TargetUsers"),
            type = "list",
            name = "TargetUsers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotTargetUsers = schema.new({
            id = id.from(_N, "ImpersonationRule", "NotTargetUsers"),
            type = "list",
            name = "NotTargetUsers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateImpersonationRoleInput = schema.new({
    id = id.from(_N, "CreateImpersonationRoleRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateImpersonationRoleInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "CreateImpersonationRoleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateImpersonationRoleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateImpersonationRoleInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateImpersonationRoleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Rules = schema.new({
            id = id.from(_N, "CreateImpersonationRoleInput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.ImpersonationRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateImpersonationRoleOutput = schema.new({
    id = id.from(_N, "CreateImpersonationRoleResponse"),
    type = "structure",
    members = {
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "CreateImpersonationRoleOutput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMobileDeviceAccessRuleInput = schema.new({
    id = id.from(_N, "CreateMobileDeviceAccessRuleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceTypes = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "DeviceTypes"),
            type = "list",
            name = "DeviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceTypes = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "NotDeviceTypes"),
            type = "list",
            name = "NotDeviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceModels = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "DeviceModels"),
            type = "list",
            name = "DeviceModels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceModels = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "NotDeviceModels"),
            type = "list",
            name = "NotDeviceModels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceOperatingSystems = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "DeviceOperatingSystems"),
            type = "list",
            name = "DeviceOperatingSystems",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceOperatingSystems = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "NotDeviceOperatingSystems"),
            type = "list",
            name = "NotDeviceOperatingSystems",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceUserAgents = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "DeviceUserAgents"),
            type = "list",
            name = "DeviceUserAgents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceUserAgents = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleInput", "NotDeviceUserAgents"),
            type = "list",
            name = "NotDeviceUserAgents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateMobileDeviceAccessRuleOutput = schema.new({
    id = id.from(_N, "CreateMobileDeviceAccessRuleResponse"),
    type = "structure",
    members = {
        MobileDeviceAccessRuleId = schema.new({
            id = id.from(_N, "CreateMobileDeviceAccessRuleOutput", "MobileDeviceAccessRuleId"),
            type = "string",
            name = "MobileDeviceAccessRuleId",
            target_id = prelude.String.id,
        }),
    },
})

M.Domain = schema.new({
    id = id.from(_N, "Domain"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "Domain", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "Domain", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOrganizationInput = schema.new({
    id = id.from(_N, "CreateOrganizationRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateOrganizationInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        Alias = schema.new({
            id = id.from(_N, "CreateOrganizationInput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateOrganizationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Domains = schema.new({
            id = id.from(_N, "CreateOrganizationInput", "Domains"),
            type = "list",
            name = "Domains",
            target_id = prelude.Document.id,
            list_member = M.Domain,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "CreateOrganizationInput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        EnableInteroperability = schema.new({
            id = id.from(_N, "CreateOrganizationInput", "EnableInteroperability"),
            type = "boolean",
            name = "EnableInteroperability",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateOrganizationOutput = schema.new({
    id = id.from(_N, "CreateOrganizationResponse"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateOrganizationOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
    },
})

M.DirectoryInUseException = schema.new({
    id = id.from(_N, "DirectoryInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DirectoryInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResourceInput = schema.new({
    id = id.from(_N, "CreateResourceRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateResourceInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateResourceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateResourceInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateResourceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "CreateResourceInput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateResourceOutput = schema.new({
    id = id.from(_N, "CreateResourceResponse"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "CreateResourceOutput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateUserInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateUserInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreateUserInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "CreateUserInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "CreateUserInput", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        FirstName = schema.new({
            id = id.from(_N, "CreateUserInput", "FirstName"),
            type = "string",
            name = "FirstName",
            target_id = prelude.String.id,
        }),
        LastName = schema.new({
            id = id.from(_N, "CreateUserInput", "LastName"),
            type = "string",
            name = "LastName",
            target_id = prelude.String.id,
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "CreateUserInput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        IdentityProviderUserId = schema.new({
            id = id.from(_N, "CreateUserInput", "IdentityProviderUserId"),
            type = "string",
            name = "IdentityProviderUserId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserResponse"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "CreateUserOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
    },
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
    },
})

M.Delegate = schema.new({
    id = id.from(_N, "Delegate"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Delegate", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "Delegate", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccessControlRuleInput = schema.new({
    id = id.from(_N, "DeleteAccessControlRuleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteAccessControlRuleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "DeleteAccessControlRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccessControlRuleOutput = schema.new({
    id = id.from(_N, "DeleteAccessControlRuleResponse"),
    type = "structure",
})

M.DeleteAliasInput = schema.new({
    id = id.from(_N, "DeleteAliasRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteAliasInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "DeleteAliasInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Alias = schema.new({
            id = id.from(_N, "DeleteAliasInput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAliasOutput = schema.new({
    id = id.from(_N, "DeleteAliasResponse"),
    type = "structure",
})

M.DeleteAvailabilityConfigurationInput = schema.new({
    id = id.from(_N, "DeleteAvailabilityConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteAvailabilityConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "DeleteAvailabilityConfigurationInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAvailabilityConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteAvailabilityConfigurationResponse"),
    type = "structure",
})

M.DeleteEmailMonitoringConfigurationInput = schema.new({
    id = id.from(_N, "DeleteEmailMonitoringConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteEmailMonitoringConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEmailMonitoringConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteEmailMonitoringConfigurationResponse"),
    type = "structure",
})

M.DeleteGroupInput = schema.new({
    id = id.from(_N, "DeleteGroupRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGroupOutput = schema.new({
    id = id.from(_N, "DeleteGroupResponse"),
    type = "structure",
})

M.DeleteIdentityCenterApplicationInput = schema.new({
    id = id.from(_N, "DeleteIdentityCenterApplicationRequest"),
    type = "structure",
    members = {
        ApplicationArn = schema.new({
            id = id.from(_N, "DeleteIdentityCenterApplicationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIdentityCenterApplicationOutput = schema.new({
    id = id.from(_N, "DeleteIdentityCenterApplicationResponse"),
    type = "structure",
})

M.DeleteIdentityProviderConfigurationInput = schema.new({
    id = id.from(_N, "DeleteIdentityProviderConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteIdentityProviderConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIdentityProviderConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteIdentityProviderConfigurationResponse"),
    type = "structure",
})

M.DeleteImpersonationRoleInput = schema.new({
    id = id.from(_N, "DeleteImpersonationRoleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteImpersonationRoleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "DeleteImpersonationRoleInput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteImpersonationRoleOutput = schema.new({
    id = id.from(_N, "DeleteImpersonationRoleResponse"),
    type = "structure",
})

M.DeleteMailboxPermissionsInput = schema.new({
    id = id.from(_N, "DeleteMailboxPermissionsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteMailboxPermissionsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "DeleteMailboxPermissionsInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GranteeId = schema.new({
            id = id.from(_N, "DeleteMailboxPermissionsInput", "GranteeId"),
            type = "string",
            name = "GranteeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMailboxPermissionsOutput = schema.new({
    id = id.from(_N, "DeleteMailboxPermissionsResponse"),
    type = "structure",
})

M.DeleteMobileDeviceAccessOverrideInput = schema.new({
    id = id.from(_N, "DeleteMobileDeviceAccessOverrideRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteMobileDeviceAccessOverrideInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DeleteMobileDeviceAccessOverrideInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "DeleteMobileDeviceAccessOverrideInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMobileDeviceAccessOverrideOutput = schema.new({
    id = id.from(_N, "DeleteMobileDeviceAccessOverrideResponse"),
    type = "structure",
})

M.DeleteMobileDeviceAccessRuleInput = schema.new({
    id = id.from(_N, "DeleteMobileDeviceAccessRuleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteMobileDeviceAccessRuleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MobileDeviceAccessRuleId = schema.new({
            id = id.from(_N, "DeleteMobileDeviceAccessRuleInput", "MobileDeviceAccessRuleId"),
            type = "string",
            name = "MobileDeviceAccessRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMobileDeviceAccessRuleOutput = schema.new({
    id = id.from(_N, "DeleteMobileDeviceAccessRuleResponse"),
    type = "structure",
})

M.DeleteOrganizationInput = schema.new({
    id = id.from(_N, "DeleteOrganizationRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "DeleteOrganizationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteOrganizationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeleteDirectory = schema.new({
            id = id.from(_N, "DeleteOrganizationInput", "DeleteDirectory"),
            type = "boolean",
            name = "DeleteDirectory",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        ForceDelete = schema.new({
            id = id.from(_N, "DeleteOrganizationInput", "ForceDelete"),
            type = "boolean",
            name = "ForceDelete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeleteIdentityCenterApplication = schema.new({
            id = id.from(_N, "DeleteOrganizationInput", "DeleteIdentityCenterApplication"),
            type = "boolean",
            name = "DeleteIdentityCenterApplication",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteOrganizationOutput = schema.new({
    id = id.from(_N, "DeleteOrganizationResponse"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteOrganizationOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DeleteOrganizationOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.DeletePersonalAccessTokenInput = schema.new({
    id = id.from(_N, "DeletePersonalAccessTokenRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeletePersonalAccessTokenInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PersonalAccessTokenId = schema.new({
            id = id.from(_N, "DeletePersonalAccessTokenInput", "PersonalAccessTokenId"),
            type = "string",
            name = "PersonalAccessTokenId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePersonalAccessTokenOutput = schema.new({
    id = id.from(_N, "DeletePersonalAccessTokenResponse"),
    type = "structure",
})

M.DeleteResourceInput = schema.new({
    id = id.from(_N, "DeleteResourceRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteResourceInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DeleteResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourceOutput = schema.new({
    id = id.from(_N, "DeleteResourceResponse"),
    type = "structure",
})

M.DeleteRetentionPolicyInput = schema.new({
    id = id.from(_N, "DeleteRetentionPolicyRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteRetentionPolicyInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "DeleteRetentionPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRetentionPolicyOutput = schema.new({
    id = id.from(_N, "DeleteRetentionPolicyResponse"),
    type = "structure",
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteUserInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DeleteUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "DeleteUserResponse"),
    type = "structure",
})

M.DeregisterFromWorkMailInput = schema.new({
    id = id.from(_N, "DeregisterFromWorkMailRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeregisterFromWorkMailInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "DeregisterFromWorkMailInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterFromWorkMailOutput = schema.new({
    id = id.from(_N, "DeregisterFromWorkMailResponse"),
    type = "structure",
})

M.DeregisterMailDomainInput = schema.new({
    id = id.from(_N, "DeregisterMailDomainRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DeregisterMailDomainInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "DeregisterMailDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterMailDomainOutput = schema.new({
    id = id.from(_N, "DeregisterMailDomainResponse"),
    type = "structure",
})

M.InvalidCustomSesConfigurationException = schema.new({
    id = id.from(_N, "InvalidCustomSesConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidCustomSesConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MailDomainInUseException = schema.new({
    id = id.from(_N, "MailDomainInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MailDomainInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEmailMonitoringConfigurationInput = schema.new({
    id = id.from(_N, "DescribeEmailMonitoringConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeEmailMonitoringConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeEmailMonitoringConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeEmailMonitoringConfigurationResponse"),
    type = "structure",
    members = {
        RoleArn = schema.new({
            id = id.from(_N, "DescribeEmailMonitoringConfigurationOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        LogGroupArn = schema.new({
            id = id.from(_N, "DescribeEmailMonitoringConfigurationOutput", "LogGroupArn"),
            type = "string",
            name = "LogGroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEntityInput = schema.new({
    id = id.from(_N, "DescribeEntityRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeEntityInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Email = schema.new({
            id = id.from(_N, "DescribeEntityInput", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeEntityOutput = schema.new({
    id = id.from(_N, "DescribeEntityResponse"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeEntityOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeGroupInput = schema.new({
    id = id.from(_N, "DescribeGroupRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeGroupInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "DescribeGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeGroupOutput = schema.new({
    id = id.from(_N, "DescribeGroupResponse"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Email = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EnabledDate = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "EnabledDate"),
            type = "timestamp",
            name = "EnabledDate",
            target_id = prelude.Timestamp.id,
        }),
        DisabledDate = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "DisabledDate"),
            type = "timestamp",
            name = "DisabledDate",
            target_id = prelude.Timestamp.id,
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "DescribeGroupOutput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeIdentityProviderConfigurationInput = schema.new({
    id = id.from(_N, "DescribeIdentityProviderConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeIdentityProviderConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IdentityCenterConfiguration = schema.new({
    id = id.from(_N, "IdentityCenterConfiguration"),
    type = "structure",
    members = {
        InstanceArn = schema.new({
            id = id.from(_N, "IdentityCenterConfiguration", "InstanceArn"),
            type = "string",
            name = "InstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationArn = schema.new({
            id = id.from(_N, "IdentityCenterConfiguration", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PersonalAccessTokenConfiguration = schema.new({
    id = id.from(_N, "PersonalAccessTokenConfiguration"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "PersonalAccessTokenConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifetimeInDays = schema.new({
            id = id.from(_N, "PersonalAccessTokenConfiguration", "LifetimeInDays"),
            type = "integer",
            name = "LifetimeInDays",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeIdentityProviderConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeIdentityProviderConfigurationResponse"),
    type = "structure",
    members = {
        AuthenticationMode = schema.new({
            id = id.from(_N, "DescribeIdentityProviderConfigurationOutput", "AuthenticationMode"),
            type = "string",
            name = "AuthenticationMode",
            target_id = prelude.String.id,
        }),
        IdentityCenterConfiguration = schema.new({
            id = id.from(_N, "DescribeIdentityProviderConfigurationOutput", "IdentityCenterConfiguration"),
            type = "structure",
            name = "IdentityCenterConfiguration",
            target_id = id.from(_N, "IdentityCenterConfiguration"),
            target = M.IdentityCenterConfiguration,
        }),
        PersonalAccessTokenConfiguration = schema.new({
            id = id.from(_N, "DescribeIdentityProviderConfigurationOutput", "PersonalAccessTokenConfiguration"),
            type = "structure",
            name = "PersonalAccessTokenConfiguration",
            target_id = id.from(_N, "PersonalAccessTokenConfiguration"),
            target = M.PersonalAccessTokenConfiguration,
        }),
    },
})

M.DescribeInboundDmarcSettingsInput = schema.new({
    id = id.from(_N, "DescribeInboundDmarcSettingsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeInboundDmarcSettingsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeInboundDmarcSettingsOutput = schema.new({
    id = id.from(_N, "DescribeInboundDmarcSettingsResponse"),
    type = "structure",
    members = {
        Enforced = schema.new({
            id = id.from(_N, "DescribeInboundDmarcSettingsOutput", "Enforced"),
            type = "boolean",
            name = "Enforced",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeMailboxExportJobInput = schema.new({
    id = id.from(_N, "DescribeMailboxExportJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeMailboxExportJobOutput = schema.new({
    id = id.from(_N, "DescribeMailboxExportJobResponse"),
    type = "structure",
    members = {
        EntityId = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
        }),
        S3Prefix = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "S3Prefix"),
            type = "string",
            name = "S3Prefix",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        EstimatedProgress = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "EstimatedProgress"),
            type = "integer",
            name = "EstimatedProgress",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        State = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        ErrorInfo = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "ErrorInfo"),
            type = "string",
            name = "ErrorInfo",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeMailboxExportJobOutput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeOrganizationInput = schema.new({
    id = id.from(_N, "DescribeOrganizationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeOrganizationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeOrganizationOutput = schema.new({
    id = id.from(_N, "DescribeOrganizationResponse"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        Alias = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        DirectoryType = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "DirectoryType"),
            type = "string",
            name = "DirectoryType",
            target_id = prelude.String.id,
        }),
        DefaultMailDomain = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "DefaultMailDomain"),
            type = "string",
            name = "DefaultMailDomain",
            target_id = prelude.String.id,
        }),
        CompletedDate = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "CompletedDate"),
            type = "timestamp",
            name = "CompletedDate",
            target_id = prelude.Timestamp.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        MigrationAdmin = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "MigrationAdmin"),
            type = "string",
            name = "MigrationAdmin",
            target_id = prelude.String.id,
        }),
        InteroperabilityEnabled = schema.new({
            id = id.from(_N, "DescribeOrganizationOutput", "InteroperabilityEnabled"),
            type = "boolean",
            name = "InteroperabilityEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeResourceInput = schema.new({
    id = id.from(_N, "DescribeResourceRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeResourceInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DescribeResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeResourceOutput = schema.new({
    id = id.from(_N, "DescribeResourceResponse"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Email = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        BookingOptions = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "BookingOptions"),
            type = "structure",
            name = "BookingOptions",
            target_id = id.from(_N, "BookingOptions"),
            target = M.BookingOptions,
        }),
        State = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EnabledDate = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "EnabledDate"),
            type = "timestamp",
            name = "EnabledDate",
            target_id = prelude.Timestamp.id,
        }),
        DisabledDate = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "DisabledDate"),
            type = "timestamp",
            name = "DisabledDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "DescribeResourceOutput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeUserInput = schema.new({
    id = id.from(_N, "DescribeUserRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeUserInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DescribeUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeUserOutput = schema.new({
    id = id.from(_N, "DescribeUserResponse"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Email = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "DescribeUserOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "DescribeUserOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        UserRole = schema.new({
            id = id.from(_N, "DescribeUserOutput", "UserRole"),
            type = "string",
            name = "UserRole",
            target_id = prelude.String.id,
        }),
        EnabledDate = schema.new({
            id = id.from(_N, "DescribeUserOutput", "EnabledDate"),
            type = "timestamp",
            name = "EnabledDate",
            target_id = prelude.Timestamp.id,
        }),
        DisabledDate = schema.new({
            id = id.from(_N, "DescribeUserOutput", "DisabledDate"),
            type = "timestamp",
            name = "DisabledDate",
            target_id = prelude.Timestamp.id,
        }),
        MailboxProvisionedDate = schema.new({
            id = id.from(_N, "DescribeUserOutput", "MailboxProvisionedDate"),
            type = "timestamp",
            name = "MailboxProvisionedDate",
            target_id = prelude.Timestamp.id,
        }),
        MailboxDeprovisionedDate = schema.new({
            id = id.from(_N, "DescribeUserOutput", "MailboxDeprovisionedDate"),
            type = "timestamp",
            name = "MailboxDeprovisionedDate",
            target_id = prelude.Timestamp.id,
        }),
        FirstName = schema.new({
            id = id.from(_N, "DescribeUserOutput", "FirstName"),
            type = "string",
            name = "FirstName",
            target_id = prelude.String.id,
        }),
        LastName = schema.new({
            id = id.from(_N, "DescribeUserOutput", "LastName"),
            type = "string",
            name = "LastName",
            target_id = prelude.String.id,
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "DescribeUserOutput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Initials = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Initials"),
            type = "string",
            name = "Initials",
            target_id = prelude.String.id,
        }),
        Telephone = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Telephone"),
            type = "string",
            name = "Telephone",
            target_id = prelude.String.id,
        }),
        Street = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Street"),
            type = "string",
            name = "Street",
            target_id = prelude.String.id,
        }),
        JobTitle = schema.new({
            id = id.from(_N, "DescribeUserOutput", "JobTitle"),
            type = "string",
            name = "JobTitle",
            target_id = prelude.String.id,
        }),
        City = schema.new({
            id = id.from(_N, "DescribeUserOutput", "City"),
            type = "string",
            name = "City",
            target_id = prelude.String.id,
        }),
        Company = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Company"),
            type = "string",
            name = "Company",
            target_id = prelude.String.id,
        }),
        ZipCode = schema.new({
            id = id.from(_N, "DescribeUserOutput", "ZipCode"),
            type = "string",
            name = "ZipCode",
            target_id = prelude.String.id,
        }),
        Department = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Department"),
            type = "string",
            name = "Department",
            target_id = prelude.String.id,
        }),
        Country = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        Office = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Office"),
            type = "string",
            name = "Office",
            target_id = prelude.String.id,
        }),
        IdentityProviderUserId = schema.new({
            id = id.from(_N, "DescribeUserOutput", "IdentityProviderUserId"),
            type = "string",
            name = "IdentityProviderUserId",
            target_id = prelude.String.id,
        }),
        IdentityProviderIdentityStoreId = schema.new({
            id = id.from(_N, "DescribeUserOutput", "IdentityProviderIdentityStoreId"),
            type = "string",
            name = "IdentityProviderIdentityStoreId",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateDelegateFromResourceInput = schema.new({
    id = id.from(_N, "DisassociateDelegateFromResourceRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DisassociateDelegateFromResourceInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DisassociateDelegateFromResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "DisassociateDelegateFromResourceInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateDelegateFromResourceOutput = schema.new({
    id = id.from(_N, "DisassociateDelegateFromResourceResponse"),
    type = "structure",
})

M.DisassociateMemberFromGroupInput = schema.new({
    id = id.from(_N, "DisassociateMemberFromGroupRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DisassociateMemberFromGroupInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "DisassociateMemberFromGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberId = schema.new({
            id = id.from(_N, "DisassociateMemberFromGroupInput", "MemberId"),
            type = "string",
            name = "MemberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateMemberFromGroupOutput = schema.new({
    id = id.from(_N, "DisassociateMemberFromGroupResponse"),
    type = "structure",
})

M.DnsRecord = schema.new({
    id = id.from(_N, "DnsRecord"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "DnsRecord", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Hostname = schema.new({
            id = id.from(_N, "DnsRecord", "Hostname"),
            type = "string",
            name = "Hostname",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "DnsRecord", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityAlreadyRegisteredException = schema.new({
    id = id.from(_N, "EntityAlreadyRegisteredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityAlreadyRegisteredException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.FolderConfiguration = schema.new({
    id = id.from(_N, "FolderConfiguration"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "FolderConfiguration", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "FolderConfiguration", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Period = schema.new({
            id = id.from(_N, "FolderConfiguration", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetAccessControlEffectInput = schema.new({
    id = id.from(_N, "GetAccessControlEffectRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetAccessControlEffectInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "GetAccessControlEffectInput", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "GetAccessControlEffectInput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "GetAccessControlEffectInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "GetAccessControlEffectInput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccessControlEffectOutput = schema.new({
    id = id.from(_N, "GetAccessControlEffectResponse"),
    type = "structure",
    members = {
        Effect = schema.new({
            id = id.from(_N, "GetAccessControlEffectOutput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
        }),
        MatchedRules = schema.new({
            id = id.from(_N, "GetAccessControlEffectOutput", "MatchedRules"),
            type = "list",
            name = "MatchedRules",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetDefaultRetentionPolicyInput = schema.new({
    id = id.from(_N, "GetDefaultRetentionPolicyRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetDefaultRetentionPolicyInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDefaultRetentionPolicyOutput = schema.new({
    id = id.from(_N, "GetDefaultRetentionPolicyResponse"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetDefaultRetentionPolicyOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetDefaultRetentionPolicyOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetDefaultRetentionPolicyOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        FolderConfigurations = schema.new({
            id = id.from(_N, "GetDefaultRetentionPolicyOutput", "FolderConfigurations"),
            type = "list",
            name = "FolderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.FolderConfiguration,
        }),
    },
})

M.GetImpersonationRoleInput = schema.new({
    id = id.from(_N, "GetImpersonationRoleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetImpersonationRoleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "GetImpersonationRoleInput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetImpersonationRoleOutput = schema.new({
    id = id.from(_N, "GetImpersonationRoleResponse"),
    type = "structure",
    members = {
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "GetImpersonationRoleOutput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetImpersonationRoleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "GetImpersonationRoleOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetImpersonationRoleOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Rules = schema.new({
            id = id.from(_N, "GetImpersonationRoleOutput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.ImpersonationRule,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "GetImpersonationRoleOutput", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateModified = schema.new({
            id = id.from(_N, "GetImpersonationRoleOutput", "DateModified"),
            type = "timestamp",
            name = "DateModified",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetImpersonationRoleEffectInput = schema.new({
    id = id.from(_N, "GetImpersonationRoleEffectRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetImpersonationRoleEffectInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "GetImpersonationRoleEffectInput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetUser = schema.new({
            id = id.from(_N, "GetImpersonationRoleEffectInput", "TargetUser"),
            type = "string",
            name = "TargetUser",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImpersonationMatchedRule = schema.new({
    id = id.from(_N, "ImpersonationMatchedRule"),
    type = "structure",
    members = {
        ImpersonationRuleId = schema.new({
            id = id.from(_N, "ImpersonationMatchedRule", "ImpersonationRuleId"),
            type = "string",
            name = "ImpersonationRuleId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ImpersonationMatchedRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.GetImpersonationRoleEffectOutput = schema.new({
    id = id.from(_N, "GetImpersonationRoleEffectResponse"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GetImpersonationRoleEffectOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "GetImpersonationRoleEffectOutput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
        }),
        MatchedRules = schema.new({
            id = id.from(_N, "GetImpersonationRoleEffectOutput", "MatchedRules"),
            type = "list",
            name = "MatchedRules",
            target_id = prelude.Document.id,
            list_member = M.ImpersonationMatchedRule,
        }),
    },
})

M.GetMailboxDetailsInput = schema.new({
    id = id.from(_N, "GetMailboxDetailsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetMailboxDetailsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "GetMailboxDetailsInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMailboxDetailsOutput = schema.new({
    id = id.from(_N, "GetMailboxDetailsResponse"),
    type = "structure",
    members = {
        MailboxQuota = schema.new({
            id = id.from(_N, "GetMailboxDetailsOutput", "MailboxQuota"),
            type = "integer",
            name = "MailboxQuota",
            target_id = prelude.Integer.id,
        }),
        MailboxSize = schema.new({
            id = id.from(_N, "GetMailboxDetailsOutput", "MailboxSize"),
            type = "double",
            name = "MailboxSize",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetMailDomainInput = schema.new({
    id = id.from(_N, "GetMailDomainRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetMailDomainInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "GetMailDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMailDomainOutput = schema.new({
    id = id.from(_N, "GetMailDomainResponse"),
    type = "structure",
    members = {
        Records = schema.new({
            id = id.from(_N, "GetMailDomainOutput", "Records"),
            type = "list",
            name = "Records",
            target_id = prelude.Document.id,
            list_member = M.DnsRecord,
        }),
        IsTestDomain = schema.new({
            id = id.from(_N, "GetMailDomainOutput", "IsTestDomain"),
            type = "boolean",
            name = "IsTestDomain",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        IsDefault = schema.new({
            id = id.from(_N, "GetMailDomainOutput", "IsDefault"),
            type = "boolean",
            name = "IsDefault",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OwnershipVerificationStatus = schema.new({
            id = id.from(_N, "GetMailDomainOutput", "OwnershipVerificationStatus"),
            type = "string",
            name = "OwnershipVerificationStatus",
            target_id = prelude.String.id,
        }),
        DkimVerificationStatus = schema.new({
            id = id.from(_N, "GetMailDomainOutput", "DkimVerificationStatus"),
            type = "string",
            name = "DkimVerificationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMobileDeviceAccessEffectInput = schema.new({
    id = id.from(_N, "GetMobileDeviceAccessEffectRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessEffectInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceType = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessEffectInput", "DeviceType"),
            type = "string",
            name = "DeviceType",
            target_id = prelude.String.id,
        }),
        DeviceModel = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessEffectInput", "DeviceModel"),
            type = "string",
            name = "DeviceModel",
            target_id = prelude.String.id,
        }),
        DeviceOperatingSystem = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessEffectInput", "DeviceOperatingSystem"),
            type = "string",
            name = "DeviceOperatingSystem",
            target_id = prelude.String.id,
        }),
        DeviceUserAgent = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessEffectInput", "DeviceUserAgent"),
            type = "string",
            name = "DeviceUserAgent",
            target_id = prelude.String.id,
        }),
    },
})

M.MobileDeviceAccessMatchedRule = schema.new({
    id = id.from(_N, "MobileDeviceAccessMatchedRule"),
    type = "structure",
    members = {
        MobileDeviceAccessRuleId = schema.new({
            id = id.from(_N, "MobileDeviceAccessMatchedRule", "MobileDeviceAccessRuleId"),
            type = "string",
            name = "MobileDeviceAccessRuleId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MobileDeviceAccessMatchedRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMobileDeviceAccessEffectOutput = schema.new({
    id = id.from(_N, "GetMobileDeviceAccessEffectResponse"),
    type = "structure",
    members = {
        Effect = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessEffectOutput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
        }),
        MatchedRules = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessEffectOutput", "MatchedRules"),
            type = "list",
            name = "MatchedRules",
            target_id = prelude.Document.id,
            list_member = M.MobileDeviceAccessMatchedRule,
        }),
    },
})

M.GetMobileDeviceAccessOverrideInput = schema.new({
    id = id.from(_N, "GetMobileDeviceAccessOverrideRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMobileDeviceAccessOverrideOutput = schema.new({
    id = id.from(_N, "GetMobileDeviceAccessOverrideResponse"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideOutput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideOutput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideOutput", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateModified = schema.new({
            id = id.from(_N, "GetMobileDeviceAccessOverrideOutput", "DateModified"),
            type = "timestamp",
            name = "DateModified",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetPersonalAccessTokenMetadataInput = schema.new({
    id = id.from(_N, "GetPersonalAccessTokenMetadataRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PersonalAccessTokenId = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataInput", "PersonalAccessTokenId"),
            type = "string",
            name = "PersonalAccessTokenId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPersonalAccessTokenMetadataOutput = schema.new({
    id = id.from(_N, "GetPersonalAccessTokenMetadataResponse"),
    type = "structure",
    members = {
        PersonalAccessTokenId = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataOutput", "PersonalAccessTokenId"),
            type = "string",
            name = "PersonalAccessTokenId",
            target_id = prelude.String.id,
        }),
        UserId = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataOutput", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateLastUsed = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataOutput", "DateLastUsed"),
            type = "timestamp",
            name = "DateLastUsed",
            target_id = prelude.Timestamp.id,
        }),
        ExpiresTime = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataOutput", "ExpiresTime"),
            type = "timestamp",
            name = "ExpiresTime",
            target_id = prelude.Timestamp.id,
        }),
        Scopes = schema.new({
            id = id.from(_N, "GetPersonalAccessTokenMetadataOutput", "Scopes"),
            type = "list",
            name = "Scopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Group = schema.new({
    id = id.from(_N, "Group"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Group", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Email = schema.new({
            id = id.from(_N, "Group", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Group", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Group", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EnabledDate = schema.new({
            id = id.from(_N, "Group", "EnabledDate"),
            type = "timestamp",
            name = "EnabledDate",
            target_id = prelude.Timestamp.id,
        }),
        DisabledDate = schema.new({
            id = id.from(_N, "Group", "DisabledDate"),
            type = "timestamp",
            name = "DisabledDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GroupIdentifier = schema.new({
    id = id.from(_N, "GroupIdentifier"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "GroupIdentifier", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
        GroupName = schema.new({
            id = id.from(_N, "GroupIdentifier", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ImpersonationRole = schema.new({
    id = id.from(_N, "ImpersonationRole"),
    type = "structure",
    members = {
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "ImpersonationRole", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ImpersonationRole", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ImpersonationRole", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "ImpersonationRole", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateModified = schema.new({
            id = id.from(_N, "ImpersonationRole", "DateModified"),
            type = "timestamp",
            name = "DateModified",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.InvalidConfigurationException = schema.new({
    id = id.from(_N, "InvalidConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MailboxExportJob = schema.new({
    id = id.from(_N, "MailboxExportJob"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "MailboxExportJob", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        EntityId = schema.new({
            id = id.from(_N, "MailboxExportJob", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MailboxExportJob", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "MailboxExportJob", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
        }),
        S3Path = schema.new({
            id = id.from(_N, "MailboxExportJob", "S3Path"),
            type = "string",
            name = "S3Path",
            target_id = prelude.String.id,
        }),
        EstimatedProgress = schema.new({
            id = id.from(_N, "MailboxExportJob", "EstimatedProgress"),
            type = "integer",
            name = "EstimatedProgress",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        State = schema.new({
            id = id.from(_N, "MailboxExportJob", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "MailboxExportJob", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "MailboxExportJob", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListAccessControlRulesInput = schema.new({
    id = id.from(_N, "ListAccessControlRulesRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListAccessControlRulesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAccessControlRulesOutput = schema.new({
    id = id.from(_N, "ListAccessControlRulesResponse"),
    type = "structure",
    members = {
        Rules = schema.new({
            id = id.from(_N, "ListAccessControlRulesOutput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.AccessControlRule,
        }),
    },
})

M.ListAliasesInput = schema.new({
    id = id.from(_N, "ListAliasesRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListAliasesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "ListAliasesInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAliasesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAliasesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAliasesOutput = schema.new({
    id = id.from(_N, "ListAliasesResponse"),
    type = "structure",
    members = {
        Aliases = schema.new({
            id = id.from(_N, "ListAliasesOutput", "Aliases"),
            type = "list",
            name = "Aliases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAliasesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAvailabilityConfigurationsInput = schema.new({
    id = id.from(_N, "ListAvailabilityConfigurationsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListAvailabilityConfigurationsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAvailabilityConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAvailabilityConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAvailabilityConfigurationsOutput = schema.new({
    id = id.from(_N, "ListAvailabilityConfigurationsResponse"),
    type = "structure",
    members = {
        AvailabilityConfigurations = schema.new({
            id = id.from(_N, "ListAvailabilityConfigurationsOutput", "AvailabilityConfigurations"),
            type = "list",
            name = "AvailabilityConfigurations",
            target_id = prelude.Document.id,
            list_member = M.AvailabilityConfiguration,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAvailabilityConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupMembersInput = schema.new({
    id = id.from(_N, "ListGroupMembersRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListGroupMembersInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "ListGroupMembersInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupMembersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupMembersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Member = schema.new({
    id = id.from(_N, "Member"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Member", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Member", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Member", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Member", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EnabledDate = schema.new({
            id = id.from(_N, "Member", "EnabledDate"),
            type = "timestamp",
            name = "EnabledDate",
            target_id = prelude.Timestamp.id,
        }),
        DisabledDate = schema.new({
            id = id.from(_N, "Member", "DisabledDate"),
            type = "timestamp",
            name = "DisabledDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListGroupMembersOutput = schema.new({
    id = id.from(_N, "ListGroupMembersResponse"),
    type = "structure",
    members = {
        Members = schema.new({
            id = id.from(_N, "ListGroupMembersOutput", "Members"),
            type = "list",
            name = "Members",
            target_id = prelude.Document.id,
            list_member = M.Member,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupMembersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsFilters = schema.new({
    id = id.from(_N, "ListGroupsFilters"),
    type = "structure",
    members = {
        NamePrefix = schema.new({
            id = id.from(_N, "ListGroupsFilters", "NamePrefix"),
            type = "string",
            name = "NamePrefix",
            target_id = prelude.String.id,
        }),
        PrimaryEmailPrefix = schema.new({
            id = id.from(_N, "ListGroupsFilters", "PrimaryEmailPrefix"),
            type = "string",
            name = "PrimaryEmailPrefix",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ListGroupsFilters", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsInput = schema.new({
    id = id.from(_N, "ListGroupsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListGroupsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListGroupsInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListGroupsFilters"),
            target = M.ListGroupsFilters,
        }),
    },
})

M.ListGroupsOutput = schema.new({
    id = id.from(_N, "ListGroupsResponse"),
    type = "structure",
    members = {
        Groups = schema.new({
            id = id.from(_N, "ListGroupsOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.Group,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsForEntityFilters = schema.new({
    id = id.from(_N, "ListGroupsForEntityFilters"),
    type = "structure",
    members = {
        GroupNamePrefix = schema.new({
            id = id.from(_N, "ListGroupsForEntityFilters", "GroupNamePrefix"),
            type = "string",
            name = "GroupNamePrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsForEntityInput = schema.new({
    id = id.from(_N, "ListGroupsForEntityRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListGroupsForEntityInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "ListGroupsForEntityInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "ListGroupsForEntityInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListGroupsForEntityFilters"),
            target = M.ListGroupsForEntityFilters,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsForEntityInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupsForEntityInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListGroupsForEntityOutput = schema.new({
    id = id.from(_N, "ListGroupsForEntityResponse"),
    type = "structure",
    members = {
        Groups = schema.new({
            id = id.from(_N, "ListGroupsForEntityOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.GroupIdentifier,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsForEntityOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListImpersonationRolesInput = schema.new({
    id = id.from(_N, "ListImpersonationRolesRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListImpersonationRolesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListImpersonationRolesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListImpersonationRolesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListImpersonationRolesOutput = schema.new({
    id = id.from(_N, "ListImpersonationRolesResponse"),
    type = "structure",
    members = {
        Roles = schema.new({
            id = id.from(_N, "ListImpersonationRolesOutput", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = M.ImpersonationRole,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListImpersonationRolesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMailboxExportJobsInput = schema.new({
    id = id.from(_N, "ListMailboxExportJobsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListMailboxExportJobsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMailboxExportJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMailboxExportJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListMailboxExportJobsOutput = schema.new({
    id = id.from(_N, "ListMailboxExportJobsResponse"),
    type = "structure",
    members = {
        Jobs = schema.new({
            id = id.from(_N, "ListMailboxExportJobsOutput", "Jobs"),
            type = "list",
            name = "Jobs",
            target_id = prelude.Document.id,
            list_member = M.MailboxExportJob,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMailboxExportJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMailboxPermissionsInput = schema.new({
    id = id.from(_N, "ListMailboxPermissionsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListMailboxPermissionsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "ListMailboxPermissionsInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMailboxPermissionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMailboxPermissionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Permission = schema.new({
    id = id.from(_N, "Permission"),
    type = "structure",
    members = {
        GranteeId = schema.new({
            id = id.from(_N, "Permission", "GranteeId"),
            type = "string",
            name = "GranteeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GranteeType = schema.new({
            id = id.from(_N, "Permission", "GranteeType"),
            type = "string",
            name = "GranteeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionValues = schema.new({
            id = id.from(_N, "Permission", "PermissionValues"),
            type = "list",
            name = "PermissionValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListMailboxPermissionsOutput = schema.new({
    id = id.from(_N, "ListMailboxPermissionsResponse"),
    type = "structure",
    members = {
        Permissions = schema.new({
            id = id.from(_N, "ListMailboxPermissionsOutput", "Permissions"),
            type = "list",
            name = "Permissions",
            target_id = prelude.Document.id,
            list_member = M.Permission,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMailboxPermissionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMailDomainsInput = schema.new({
    id = id.from(_N, "ListMailDomainsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListMailDomainsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMailDomainsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMailDomainsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MailDomainSummary = schema.new({
    id = id.from(_N, "MailDomainSummary"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "MailDomainSummary", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
        DefaultDomain = schema.new({
            id = id.from(_N, "MailDomainSummary", "DefaultDomain"),
            type = "boolean",
            name = "DefaultDomain",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListMailDomainsOutput = schema.new({
    id = id.from(_N, "ListMailDomainsResponse"),
    type = "structure",
    members = {
        MailDomains = schema.new({
            id = id.from(_N, "ListMailDomainsOutput", "MailDomains"),
            type = "list",
            name = "MailDomains",
            target_id = prelude.Document.id,
            list_member = M.MailDomainSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMailDomainsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMobileDeviceAccessOverridesInput = schema.new({
    id = id.from(_N, "ListMobileDeviceAccessOverridesRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessOverridesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessOverridesInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessOverridesInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessOverridesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessOverridesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MobileDeviceAccessOverride = schema.new({
    id = id.from(_N, "MobileDeviceAccessOverride"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "MobileDeviceAccessOverride", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        DeviceId = schema.new({
            id = id.from(_N, "MobileDeviceAccessOverride", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "MobileDeviceAccessOverride", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MobileDeviceAccessOverride", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "MobileDeviceAccessOverride", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateModified = schema.new({
            id = id.from(_N, "MobileDeviceAccessOverride", "DateModified"),
            type = "timestamp",
            name = "DateModified",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListMobileDeviceAccessOverridesOutput = schema.new({
    id = id.from(_N, "ListMobileDeviceAccessOverridesResponse"),
    type = "structure",
    members = {
        Overrides = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessOverridesOutput", "Overrides"),
            type = "list",
            name = "Overrides",
            target_id = prelude.Document.id,
            list_member = M.MobileDeviceAccessOverride,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessOverridesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMobileDeviceAccessRulesInput = schema.new({
    id = id.from(_N, "ListMobileDeviceAccessRulesRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessRulesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MobileDeviceAccessRule = schema.new({
    id = id.from(_N, "MobileDeviceAccessRule"),
    type = "structure",
    members = {
        MobileDeviceAccessRuleId = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "MobileDeviceAccessRuleId"),
            type = "string",
            name = "MobileDeviceAccessRuleId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
        }),
        DeviceTypes = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "DeviceTypes"),
            type = "list",
            name = "DeviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceTypes = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "NotDeviceTypes"),
            type = "list",
            name = "NotDeviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceModels = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "DeviceModels"),
            type = "list",
            name = "DeviceModels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceModels = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "NotDeviceModels"),
            type = "list",
            name = "NotDeviceModels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceOperatingSystems = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "DeviceOperatingSystems"),
            type = "list",
            name = "DeviceOperatingSystems",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceOperatingSystems = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "NotDeviceOperatingSystems"),
            type = "list",
            name = "NotDeviceOperatingSystems",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceUserAgents = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "DeviceUserAgents"),
            type = "list",
            name = "DeviceUserAgents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceUserAgents = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "NotDeviceUserAgents"),
            type = "list",
            name = "NotDeviceUserAgents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateModified = schema.new({
            id = id.from(_N, "MobileDeviceAccessRule", "DateModified"),
            type = "timestamp",
            name = "DateModified",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListMobileDeviceAccessRulesOutput = schema.new({
    id = id.from(_N, "ListMobileDeviceAccessRulesResponse"),
    type = "structure",
    members = {
        Rules = schema.new({
            id = id.from(_N, "ListMobileDeviceAccessRulesOutput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.MobileDeviceAccessRule,
        }),
    },
})

M.ListOrganizationsInput = schema.new({
    id = id.from(_N, "ListOrganizationsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOrganizationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOrganizationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.OrganizationSummary = schema.new({
    id = id.from(_N, "OrganizationSummary"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "OrganizationSummary", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        Alias = schema.new({
            id = id.from(_N, "OrganizationSummary", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
        }),
        DefaultMailDomain = schema.new({
            id = id.from(_N, "OrganizationSummary", "DefaultMailDomain"),
            type = "string",
            name = "DefaultMailDomain",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "OrganizationSummary", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "OrganizationSummary", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOrganizationsOutput = schema.new({
    id = id.from(_N, "ListOrganizationsResponse"),
    type = "structure",
    members = {
        OrganizationSummaries = schema.new({
            id = id.from(_N, "ListOrganizationsOutput", "OrganizationSummaries"),
            type = "list",
            name = "OrganizationSummaries",
            target_id = prelude.Document.id,
            list_member = M.OrganizationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOrganizationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPersonalAccessTokensInput = schema.new({
    id = id.from(_N, "ListPersonalAccessTokensRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListPersonalAccessTokensInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "ListPersonalAccessTokensInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPersonalAccessTokensInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPersonalAccessTokensInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PersonalAccessTokenSummary = schema.new({
    id = id.from(_N, "PersonalAccessTokenSummary"),
    type = "structure",
    members = {
        PersonalAccessTokenId = schema.new({
            id = id.from(_N, "PersonalAccessTokenSummary", "PersonalAccessTokenId"),
            type = "string",
            name = "PersonalAccessTokenId",
            target_id = prelude.String.id,
        }),
        UserId = schema.new({
            id = id.from(_N, "PersonalAccessTokenSummary", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "PersonalAccessTokenSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DateCreated = schema.new({
            id = id.from(_N, "PersonalAccessTokenSummary", "DateCreated"),
            type = "timestamp",
            name = "DateCreated",
            target_id = prelude.Timestamp.id,
        }),
        DateLastUsed = schema.new({
            id = id.from(_N, "PersonalAccessTokenSummary", "DateLastUsed"),
            type = "timestamp",
            name = "DateLastUsed",
            target_id = prelude.Timestamp.id,
        }),
        ExpiresTime = schema.new({
            id = id.from(_N, "PersonalAccessTokenSummary", "ExpiresTime"),
            type = "timestamp",
            name = "ExpiresTime",
            target_id = prelude.Timestamp.id,
        }),
        Scopes = schema.new({
            id = id.from(_N, "PersonalAccessTokenSummary", "Scopes"),
            type = "list",
            name = "Scopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListPersonalAccessTokensOutput = schema.new({
    id = id.from(_N, "ListPersonalAccessTokensResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPersonalAccessTokensOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        PersonalAccessTokenSummaries = schema.new({
            id = id.from(_N, "ListPersonalAccessTokensOutput", "PersonalAccessTokenSummaries"),
            type = "list",
            name = "PersonalAccessTokenSummaries",
            target_id = prelude.Document.id,
            list_member = M.PersonalAccessTokenSummary,
        }),
    },
})

M.ListResourceDelegatesInput = schema.new({
    id = id.from(_N, "ListResourceDelegatesRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListResourceDelegatesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ListResourceDelegatesInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDelegatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResourceDelegatesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListResourceDelegatesOutput = schema.new({
    id = id.from(_N, "ListResourceDelegatesResponse"),
    type = "structure",
    members = {
        Delegates = schema.new({
            id = id.from(_N, "ListResourceDelegatesOutput", "Delegates"),
            type = "list",
            name = "Delegates",
            target_id = prelude.Document.id,
            list_member = M.Delegate,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDelegatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourcesFilters = schema.new({
    id = id.from(_N, "ListResourcesFilters"),
    type = "structure",
    members = {
        NamePrefix = schema.new({
            id = id.from(_N, "ListResourcesFilters", "NamePrefix"),
            type = "string",
            name = "NamePrefix",
            target_id = prelude.String.id,
        }),
        PrimaryEmailPrefix = schema.new({
            id = id.from(_N, "ListResourcesFilters", "PrimaryEmailPrefix"),
            type = "string",
            name = "PrimaryEmailPrefix",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ListResourcesFilters", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourcesInput = schema.new({
    id = id.from(_N, "ListResourcesRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListResourcesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListResourcesInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListResourcesFilters"),
            target = M.ListResourcesFilters,
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Resource", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Email = schema.new({
            id = id.from(_N, "Resource", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Resource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Resource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Resource", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EnabledDate = schema.new({
            id = id.from(_N, "Resource", "EnabledDate"),
            type = "timestamp",
            name = "EnabledDate",
            target_id = prelude.Timestamp.id,
        }),
        DisabledDate = schema.new({
            id = id.from(_N, "Resource", "DisabledDate"),
            type = "timestamp",
            name = "DisabledDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Resource", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourcesOutput = schema.new({
    id = id.from(_N, "ListResourcesResponse"),
    type = "structure",
    members = {
        Resources = schema.new({
            id = id.from(_N, "ListResourcesOutput", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = M.Resource,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourcesOutput", "NextToken"),
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
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
    },
})

M.ListUsersFilters = schema.new({
    id = id.from(_N, "ListUsersFilters"),
    type = "structure",
    members = {
        UsernamePrefix = schema.new({
            id = id.from(_N, "ListUsersFilters", "UsernamePrefix"),
            type = "string",
            name = "UsernamePrefix",
            target_id = prelude.String.id,
        }),
        DisplayNamePrefix = schema.new({
            id = id.from(_N, "ListUsersFilters", "DisplayNamePrefix"),
            type = "string",
            name = "DisplayNamePrefix",
            target_id = prelude.String.id,
        }),
        PrimaryEmailPrefix = schema.new({
            id = id.from(_N, "ListUsersFilters", "PrimaryEmailPrefix"),
            type = "string",
            name = "PrimaryEmailPrefix",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ListUsersFilters", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        IdentityProviderUserIdPrefix = schema.new({
            id = id.from(_N, "ListUsersFilters", "IdentityProviderUserIdPrefix"),
            type = "string",
            name = "IdentityProviderUserIdPrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUsersInput = schema.new({
    id = id.from(_N, "ListUsersRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ListUsersInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListUsersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListUsersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListUsersInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListUsersFilters"),
            target = M.ListUsersFilters,
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "User", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Email = schema.new({
            id = id.from(_N, "User", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "User", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "User", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "User", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        UserRole = schema.new({
            id = id.from(_N, "User", "UserRole"),
            type = "string",
            name = "UserRole",
            target_id = prelude.String.id,
        }),
        EnabledDate = schema.new({
            id = id.from(_N, "User", "EnabledDate"),
            type = "timestamp",
            name = "EnabledDate",
            target_id = prelude.Timestamp.id,
        }),
        DisabledDate = schema.new({
            id = id.from(_N, "User", "DisabledDate"),
            type = "timestamp",
            name = "DisabledDate",
            target_id = prelude.Timestamp.id,
        }),
        IdentityProviderUserId = schema.new({
            id = id.from(_N, "User", "IdentityProviderUserId"),
            type = "string",
            name = "IdentityProviderUserId",
            target_id = prelude.String.id,
        }),
        IdentityProviderIdentityStoreId = schema.new({
            id = id.from(_N, "User", "IdentityProviderIdentityStoreId"),
            type = "string",
            name = "IdentityProviderIdentityStoreId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUsersOutput = schema.new({
    id = id.from(_N, "ListUsersResponse"),
    type = "structure",
    members = {
        Users = schema.new({
            id = id.from(_N, "ListUsersOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListUsersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAccessControlRuleInput = schema.new({
    id = id.from(_N, "PutAccessControlRuleRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Effect = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpRanges = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "IpRanges"),
            type = "list",
            name = "IpRanges",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotIpRanges = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "NotIpRanges"),
            type = "list",
            name = "NotIpRanges",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Actions = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "Actions"),
            type = "list",
            name = "Actions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotActions = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "NotActions"),
            type = "list",
            name = "NotActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserIds = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "UserIds"),
            type = "list",
            name = "UserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotUserIds = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "NotUserIds"),
            type = "list",
            name = "NotUserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImpersonationRoleIds = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "ImpersonationRoleIds"),
            type = "list",
            name = "ImpersonationRoleIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotImpersonationRoleIds = schema.new({
            id = id.from(_N, "PutAccessControlRuleInput", "NotImpersonationRoleIds"),
            type = "list",
            name = "NotImpersonationRoleIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PutAccessControlRuleOutput = schema.new({
    id = id.from(_N, "PutAccessControlRuleResponse"),
    type = "structure",
})

M.PutEmailMonitoringConfigurationInput = schema.new({
    id = id.from(_N, "PutEmailMonitoringConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "PutEmailMonitoringConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "PutEmailMonitoringConfigurationInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        LogGroupArn = schema.new({
            id = id.from(_N, "PutEmailMonitoringConfigurationInput", "LogGroupArn"),
            type = "string",
            name = "LogGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutEmailMonitoringConfigurationOutput = schema.new({
    id = id.from(_N, "PutEmailMonitoringConfigurationResponse"),
    type = "structure",
})

M.PutIdentityProviderConfigurationInput = schema.new({
    id = id.from(_N, "PutIdentityProviderConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "PutIdentityProviderConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMode = schema.new({
            id = id.from(_N, "PutIdentityProviderConfigurationInput", "AuthenticationMode"),
            type = "string",
            name = "AuthenticationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityCenterConfiguration = schema.new({
            id = id.from(_N, "PutIdentityProviderConfigurationInput", "IdentityCenterConfiguration"),
            type = "structure",
            name = "IdentityCenterConfiguration",
            target_id = id.from(_N, "IdentityCenterConfiguration"),
            target = M.IdentityCenterConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PersonalAccessTokenConfiguration = schema.new({
            id = id.from(_N, "PutIdentityProviderConfigurationInput", "PersonalAccessTokenConfiguration"),
            type = "structure",
            name = "PersonalAccessTokenConfiguration",
            target_id = id.from(_N, "PersonalAccessTokenConfiguration"),
            target = M.PersonalAccessTokenConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutIdentityProviderConfigurationOutput = schema.new({
    id = id.from(_N, "PutIdentityProviderConfigurationResponse"),
    type = "structure",
})

M.PutInboundDmarcSettingsInput = schema.new({
    id = id.from(_N, "PutInboundDmarcSettingsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "PutInboundDmarcSettingsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enforced = schema.new({
            id = id.from(_N, "PutInboundDmarcSettingsInput", "Enforced"),
            type = "boolean",
            name = "Enforced",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutInboundDmarcSettingsOutput = schema.new({
    id = id.from(_N, "PutInboundDmarcSettingsResponse"),
    type = "structure",
})

M.PutMailboxPermissionsInput = schema.new({
    id = id.from(_N, "PutMailboxPermissionsRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "PutMailboxPermissionsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "PutMailboxPermissionsInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GranteeId = schema.new({
            id = id.from(_N, "PutMailboxPermissionsInput", "GranteeId"),
            type = "string",
            name = "GranteeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermissionValues = schema.new({
            id = id.from(_N, "PutMailboxPermissionsInput", "PermissionValues"),
            type = "list",
            name = "PermissionValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutMailboxPermissionsOutput = schema.new({
    id = id.from(_N, "PutMailboxPermissionsResponse"),
    type = "structure",
})

M.PutMobileDeviceAccessOverrideInput = schema.new({
    id = id.from(_N, "PutMobileDeviceAccessOverrideRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "PutMobileDeviceAccessOverrideInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "PutMobileDeviceAccessOverrideInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceId = schema.new({
            id = id.from(_N, "PutMobileDeviceAccessOverrideInput", "DeviceId"),
            type = "string",
            name = "DeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Effect = schema.new({
            id = id.from(_N, "PutMobileDeviceAccessOverrideInput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "PutMobileDeviceAccessOverrideInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.PutMobileDeviceAccessOverrideOutput = schema.new({
    id = id.from(_N, "PutMobileDeviceAccessOverrideResponse"),
    type = "structure",
})

M.PutRetentionPolicyInput = schema.new({
    id = id.from(_N, "PutRetentionPolicyRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "PutRetentionPolicyInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "PutRetentionPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "PutRetentionPolicyInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "PutRetentionPolicyInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        FolderConfigurations = schema.new({
            id = id.from(_N, "PutRetentionPolicyInput", "FolderConfigurations"),
            type = "list",
            name = "FolderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.FolderConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRetentionPolicyOutput = schema.new({
    id = id.from(_N, "PutRetentionPolicyResponse"),
    type = "structure",
})

M.RegisterMailDomainInput = schema.new({
    id = id.from(_N, "RegisterMailDomainRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "RegisterMailDomainInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "RegisterMailDomainInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "RegisterMailDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterMailDomainOutput = schema.new({
    id = id.from(_N, "RegisterMailDomainResponse"),
    type = "structure",
})

M.RegisterToWorkMailInput = schema.new({
    id = id.from(_N, "RegisterToWorkMailRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "RegisterToWorkMailInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "RegisterToWorkMailInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Email = schema.new({
            id = id.from(_N, "RegisterToWorkMailInput", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterToWorkMailOutput = schema.new({
    id = id.from(_N, "RegisterToWorkMailResponse"),
    type = "structure",
})

M.ResetPasswordInput = schema.new({
    id = id.from(_N, "ResetPasswordRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "ResetPasswordInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "ResetPasswordInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "ResetPasswordInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResetPasswordOutput = schema.new({
    id = id.from(_N, "ResetPasswordResponse"),
    type = "structure",
})

M.StartMailboxExportJobInput = schema.new({
    id = id.from(_N, "StartMailboxExportJobRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Prefix = schema.new({
            id = id.from(_N, "StartMailboxExportJobInput", "S3Prefix"),
            type = "string",
            name = "S3Prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMailboxExportJobOutput = schema.new({
    id = id.from(_N, "StartMailboxExportJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartMailboxExportJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTagsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TestAvailabilityConfigurationInput = schema.new({
    id = id.from(_N, "TestAvailabilityConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "TestAvailabilityConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "TestAvailabilityConfigurationInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
        EwsProvider = schema.new({
            id = id.from(_N, "TestAvailabilityConfigurationInput", "EwsProvider"),
            type = "structure",
            name = "EwsProvider",
            target_id = id.from(_N, "EwsAvailabilityProvider"),
            target = M.EwsAvailabilityProvider,
        }),
        LambdaProvider = schema.new({
            id = id.from(_N, "TestAvailabilityConfigurationInput", "LambdaProvider"),
            type = "structure",
            name = "LambdaProvider",
            target_id = id.from(_N, "LambdaAvailabilityProvider"),
            target = M.LambdaAvailabilityProvider,
        }),
    },
})

M.TestAvailabilityConfigurationOutput = schema.new({
    id = id.from(_N, "TestAvailabilityConfigurationResponse"),
    type = "structure",
    members = {
        TestPassed = schema.new({
            id = id.from(_N, "TestAvailabilityConfigurationOutput", "TestPassed"),
            type = "boolean",
            name = "TestPassed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        FailureReason = schema.new({
            id = id.from(_N, "TestAvailabilityConfigurationOutput", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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

M.UpdateAvailabilityConfigurationInput = schema.new({
    id = id.from(_N, "UpdateAvailabilityConfigurationRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateAvailabilityConfigurationInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "UpdateAvailabilityConfigurationInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EwsProvider = schema.new({
            id = id.from(_N, "UpdateAvailabilityConfigurationInput", "EwsProvider"),
            type = "structure",
            name = "EwsProvider",
            target_id = id.from(_N, "EwsAvailabilityProvider"),
            target = M.EwsAvailabilityProvider,
        }),
        LambdaProvider = schema.new({
            id = id.from(_N, "UpdateAvailabilityConfigurationInput", "LambdaProvider"),
            type = "structure",
            name = "LambdaProvider",
            target_id = id.from(_N, "LambdaAvailabilityProvider"),
            target = M.LambdaAvailabilityProvider,
        }),
    },
})

M.UpdateAvailabilityConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateAvailabilityConfigurationResponse"),
    type = "structure",
})

M.UpdateDefaultMailDomainInput = schema.new({
    id = id.from(_N, "UpdateDefaultMailDomainRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateDefaultMailDomainInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "UpdateDefaultMailDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDefaultMailDomainOutput = schema.new({
    id = id.from(_N, "UpdateDefaultMailDomainResponse"),
    type = "structure",
})

M.UpdateGroupInput = schema.new({
    id = id.from(_N, "UpdateGroupRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateGroupInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "UpdateGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "UpdateGroupInput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateGroupOutput = schema.new({
    id = id.from(_N, "UpdateGroupResponse"),
    type = "structure",
})

M.UpdateImpersonationRoleInput = schema.new({
    id = id.from(_N, "UpdateImpersonationRoleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateImpersonationRoleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImpersonationRoleId = schema.new({
            id = id.from(_N, "UpdateImpersonationRoleInput", "ImpersonationRoleId"),
            type = "string",
            name = "ImpersonationRoleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateImpersonationRoleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateImpersonationRoleInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateImpersonationRoleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Rules = schema.new({
            id = id.from(_N, "UpdateImpersonationRoleInput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.ImpersonationRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateImpersonationRoleOutput = schema.new({
    id = id.from(_N, "UpdateImpersonationRoleResponse"),
    type = "structure",
})

M.UpdateMailboxQuotaInput = schema.new({
    id = id.from(_N, "UpdateMailboxQuotaRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateMailboxQuotaInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "UpdateMailboxQuotaInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MailboxQuota = schema.new({
            id = id.from(_N, "UpdateMailboxQuotaInput", "MailboxQuota"),
            type = "integer",
            name = "MailboxQuota",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateMailboxQuotaOutput = schema.new({
    id = id.from(_N, "UpdateMailboxQuotaResponse"),
    type = "structure",
})

M.UpdateMobileDeviceAccessRuleInput = schema.new({
    id = id.from(_N, "UpdateMobileDeviceAccessRuleRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MobileDeviceAccessRuleId = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "MobileDeviceAccessRuleId"),
            type = "string",
            name = "MobileDeviceAccessRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Effect = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "Effect"),
            type = "string",
            name = "Effect",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceTypes = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "DeviceTypes"),
            type = "list",
            name = "DeviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceTypes = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "NotDeviceTypes"),
            type = "list",
            name = "NotDeviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceModels = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "DeviceModels"),
            type = "list",
            name = "DeviceModels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceModels = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "NotDeviceModels"),
            type = "list",
            name = "NotDeviceModels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceOperatingSystems = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "DeviceOperatingSystems"),
            type = "list",
            name = "DeviceOperatingSystems",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceOperatingSystems = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "NotDeviceOperatingSystems"),
            type = "list",
            name = "NotDeviceOperatingSystems",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeviceUserAgents = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "DeviceUserAgents"),
            type = "list",
            name = "DeviceUserAgents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NotDeviceUserAgents = schema.new({
            id = id.from(_N, "UpdateMobileDeviceAccessRuleInput", "NotDeviceUserAgents"),
            type = "list",
            name = "NotDeviceUserAgents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateMobileDeviceAccessRuleOutput = schema.new({
    id = id.from(_N, "UpdateMobileDeviceAccessRuleResponse"),
    type = "structure",
})

M.UpdatePrimaryEmailAddressInput = schema.new({
    id = id.from(_N, "UpdatePrimaryEmailAddressRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdatePrimaryEmailAddressInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityId = schema.new({
            id = id.from(_N, "UpdatePrimaryEmailAddressInput", "EntityId"),
            type = "string",
            name = "EntityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Email = schema.new({
            id = id.from(_N, "UpdatePrimaryEmailAddressInput", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePrimaryEmailAddressOutput = schema.new({
    id = id.from(_N, "UpdatePrimaryEmailAddressResponse"),
    type = "structure",
})

M.UpdateResourceInput = schema.new({
    id = id.from(_N, "UpdateResourceRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateResourceInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "UpdateResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateResourceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        BookingOptions = schema.new({
            id = id.from(_N, "UpdateResourceInput", "BookingOptions"),
            type = "structure",
            name = "BookingOptions",
            target_id = id.from(_N, "BookingOptions"),
            target = M.BookingOptions,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateResourceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateResourceInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "UpdateResourceInput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateResourceOutput = schema.new({
    id = id.from(_N, "UpdateResourceResponse"),
    type = "structure",
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserRequest"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "UpdateUserInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "UpdateUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Role = schema.new({
            id = id.from(_N, "UpdateUserInput", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "UpdateUserInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        FirstName = schema.new({
            id = id.from(_N, "UpdateUserInput", "FirstName"),
            type = "string",
            name = "FirstName",
            target_id = prelude.String.id,
        }),
        LastName = schema.new({
            id = id.from(_N, "UpdateUserInput", "LastName"),
            type = "string",
            name = "LastName",
            target_id = prelude.String.id,
        }),
        HiddenFromGlobalAddressList = schema.new({
            id = id.from(_N, "UpdateUserInput", "HiddenFromGlobalAddressList"),
            type = "boolean",
            name = "HiddenFromGlobalAddressList",
            target_id = prelude.Boolean.id,
        }),
        Initials = schema.new({
            id = id.from(_N, "UpdateUserInput", "Initials"),
            type = "string",
            name = "Initials",
            target_id = prelude.String.id,
        }),
        Telephone = schema.new({
            id = id.from(_N, "UpdateUserInput", "Telephone"),
            type = "string",
            name = "Telephone",
            target_id = prelude.String.id,
        }),
        Street = schema.new({
            id = id.from(_N, "UpdateUserInput", "Street"),
            type = "string",
            name = "Street",
            target_id = prelude.String.id,
        }),
        JobTitle = schema.new({
            id = id.from(_N, "UpdateUserInput", "JobTitle"),
            type = "string",
            name = "JobTitle",
            target_id = prelude.String.id,
        }),
        City = schema.new({
            id = id.from(_N, "UpdateUserInput", "City"),
            type = "string",
            name = "City",
            target_id = prelude.String.id,
        }),
        Company = schema.new({
            id = id.from(_N, "UpdateUserInput", "Company"),
            type = "string",
            name = "Company",
            target_id = prelude.String.id,
        }),
        ZipCode = schema.new({
            id = id.from(_N, "UpdateUserInput", "ZipCode"),
            type = "string",
            name = "ZipCode",
            target_id = prelude.String.id,
        }),
        Department = schema.new({
            id = id.from(_N, "UpdateUserInput", "Department"),
            type = "string",
            name = "Department",
            target_id = prelude.String.id,
        }),
        Country = schema.new({
            id = id.from(_N, "UpdateUserInput", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        Office = schema.new({
            id = id.from(_N, "UpdateUserInput", "Office"),
            type = "string",
            name = "Office",
            target_id = prelude.String.id,
        }),
        IdentityProviderUserId = schema.new({
            id = id.from(_N, "UpdateUserInput", "IdentityProviderUserId"),
            type = "string",
            name = "IdentityProviderUserId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserResponse"),
    type = "structure",
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
