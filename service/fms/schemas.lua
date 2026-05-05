local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.fms"

local M = {}

M.AccountScope = schema.new({
    id = id.from(_N, "AccountScope"),
    type = "structure",
    members = {
        Accounts = schema.new({
            id = id.from(_N, "AccountScope", "Accounts"),
            type = "list",
            name = "Accounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AllAccountsEnabled = schema.new({
            id = id.from(_N, "AccountScope", "AllAccountsEnabled"),
            type = "boolean",
            name = "AllAccountsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ExcludeSpecifiedAccounts = schema.new({
            id = id.from(_N, "AccountScope", "ExcludeSpecifiedAccounts"),
            type = "boolean",
            name = "ExcludeSpecifiedAccounts",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ActionTarget = schema.new({
    id = id.from(_N, "ActionTarget"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "ActionTarget", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ActionTarget", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.AdminAccountSummary = schema.new({
    id = id.from(_N, "AdminAccountSummary"),
    type = "structure",
    members = {
        AdminAccount = schema.new({
            id = id.from(_N, "AdminAccountSummary", "AdminAccount"),
            type = "string",
            name = "AdminAccount",
            target_id = prelude.String.id,
        }),
        DefaultAdmin = schema.new({
            id = id.from(_N, "AdminAccountSummary", "DefaultAdmin"),
            type = "boolean",
            name = "DefaultAdmin",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AdminAccountSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.OrganizationalUnitScope = schema.new({
    id = id.from(_N, "OrganizationalUnitScope"),
    type = "structure",
    members = {
        OrganizationalUnits = schema.new({
            id = id.from(_N, "OrganizationalUnitScope", "OrganizationalUnits"),
            type = "list",
            name = "OrganizationalUnits",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AllOrganizationalUnitsEnabled = schema.new({
            id = id.from(_N, "OrganizationalUnitScope", "AllOrganizationalUnitsEnabled"),
            type = "boolean",
            name = "AllOrganizationalUnitsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ExcludeSpecifiedOrganizationalUnits = schema.new({
            id = id.from(_N, "OrganizationalUnitScope", "ExcludeSpecifiedOrganizationalUnits"),
            type = "boolean",
            name = "ExcludeSpecifiedOrganizationalUnits",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PolicyTypeScope = schema.new({
    id = id.from(_N, "PolicyTypeScope"),
    type = "structure",
    members = {
        PolicyTypes = schema.new({
            id = id.from(_N, "PolicyTypeScope", "PolicyTypes"),
            type = "list",
            name = "PolicyTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AllPolicyTypesEnabled = schema.new({
            id = id.from(_N, "PolicyTypeScope", "AllPolicyTypesEnabled"),
            type = "boolean",
            name = "AllPolicyTypesEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.RegionScope = schema.new({
    id = id.from(_N, "RegionScope"),
    type = "structure",
    members = {
        Regions = schema.new({
            id = id.from(_N, "RegionScope", "Regions"),
            type = "list",
            name = "Regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AllRegionsEnabled = schema.new({
            id = id.from(_N, "RegionScope", "AllRegionsEnabled"),
            type = "boolean",
            name = "AllRegionsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AdminScope = schema.new({
    id = id.from(_N, "AdminScope"),
    type = "structure",
    members = {
        AccountScope = schema.new({
            id = id.from(_N, "AdminScope", "AccountScope"),
            type = "structure",
            name = "AccountScope",
            target_id = id.from(_N, "AccountScope"),
            target = M.AccountScope,
        }),
        OrganizationalUnitScope = schema.new({
            id = id.from(_N, "AdminScope", "OrganizationalUnitScope"),
            type = "structure",
            name = "OrganizationalUnitScope",
            target_id = id.from(_N, "OrganizationalUnitScope"),
            target = M.OrganizationalUnitScope,
        }),
        RegionScope = schema.new({
            id = id.from(_N, "AdminScope", "RegionScope"),
            type = "structure",
            name = "RegionScope",
            target_id = id.from(_N, "RegionScope"),
            target = M.RegionScope,
        }),
        PolicyTypeScope = schema.new({
            id = id.from(_N, "AdminScope", "PolicyTypeScope"),
            type = "structure",
            name = "PolicyTypeScope",
            target_id = id.from(_N, "PolicyTypeScope"),
            target = M.PolicyTypeScope,
        }),
    },
})

M.App = schema.new({
    id = id.from(_N, "App"),
    type = "structure",
    members = {
        AppName = schema.new({
            id = id.from(_N, "App", "AppName"),
            type = "string",
            name = "AppName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protocol = schema.new({
            id = id.from(_N, "App", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Port = schema.new({
            id = id.from(_N, "App", "Port"),
            type = "long",
            name = "Port",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AppsListData = schema.new({
    id = id.from(_N, "AppsListData"),
    type = "structure",
    members = {
        ListId = schema.new({
            id = id.from(_N, "AppsListData", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
        }),
        ListName = schema.new({
            id = id.from(_N, "AppsListData", "ListName"),
            type = "string",
            name = "ListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ListUpdateToken = schema.new({
            id = id.from(_N, "AppsListData", "ListUpdateToken"),
            type = "string",
            name = "ListUpdateToken",
            target_id = prelude.String.id,
        }),
        CreateTime = schema.new({
            id = id.from(_N, "AppsListData", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateTime = schema.new({
            id = id.from(_N, "AppsListData", "LastUpdateTime"),
            type = "timestamp",
            name = "LastUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        AppsList = schema.new({
            id = id.from(_N, "AppsListData", "AppsList"),
            type = "list",
            name = "AppsList",
            target_id = prelude.Document.id,
            list_member = M.App,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PreviousAppsList = schema.new({
            id = id.from(_N, "AppsListData", "PreviousAppsList"),
            type = "map",
            name = "PreviousAppsList",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.AppsListDataSummary = schema.new({
    id = id.from(_N, "AppsListDataSummary"),
    type = "structure",
    members = {
        ListArn = schema.new({
            id = id.from(_N, "AppsListDataSummary", "ListArn"),
            type = "string",
            name = "ListArn",
            target_id = prelude.String.id,
        }),
        ListId = schema.new({
            id = id.from(_N, "AppsListDataSummary", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
        }),
        ListName = schema.new({
            id = id.from(_N, "AppsListDataSummary", "ListName"),
            type = "string",
            name = "ListName",
            target_id = prelude.String.id,
        }),
        AppsList = schema.new({
            id = id.from(_N, "AppsListDataSummary", "AppsList"),
            type = "list",
            name = "AppsList",
            target_id = prelude.Document.id,
            list_member = M.App,
        }),
    },
})

M.AssociateAdminAccountInput = schema.new({
    id = id.from(_N, "AssociateAdminAccountInput"),
    type = "structure",
    members = {
        AdminAccount = schema.new({
            id = id.from(_N, "AssociateAdminAccountInput", "AdminAccount"),
            type = "string",
            name = "AdminAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateAdminAccountOutput = schema.new({
    id = id.from(_N, "AssociateAdminAccountOutput"),
    type = "structure",
})

M.InternalErrorException = schema.new({
    id = id.from(_N, "InternalErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInputException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOperationException = schema.new({
    id = id.from(_N, "InvalidOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOperationException", "Message"),
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

M.AssociateThirdPartyFirewallInput = schema.new({
    id = id.from(_N, "AssociateThirdPartyFirewallInput"),
    type = "structure",
    members = {
        ThirdPartyFirewall = schema.new({
            id = id.from(_N, "AssociateThirdPartyFirewallInput", "ThirdPartyFirewall"),
            type = "string",
            name = "ThirdPartyFirewall",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateThirdPartyFirewallOutput = schema.new({
    id = id.from(_N, "AssociateThirdPartyFirewallOutput"),
    type = "structure",
    members = {
        ThirdPartyFirewallStatus = schema.new({
            id = id.from(_N, "AssociateThirdPartyFirewallOutput", "ThirdPartyFirewallStatus"),
            type = "string",
            name = "ThirdPartyFirewallStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.AwsEc2NetworkInterfaceViolation = schema.new({
    id = id.from(_N, "AwsEc2NetworkInterfaceViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "AwsEc2NetworkInterfaceViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        ViolatingSecurityGroups = schema.new({
            id = id.from(_N, "AwsEc2NetworkInterfaceViolation", "ViolatingSecurityGroups"),
            type = "list",
            name = "ViolatingSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AwsEc2InstanceViolation = schema.new({
    id = id.from(_N, "AwsEc2InstanceViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "AwsEc2InstanceViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        AwsEc2NetworkInterfaceViolations = schema.new({
            id = id.from(_N, "AwsEc2InstanceViolation", "AwsEc2NetworkInterfaceViolations"),
            type = "list",
            name = "AwsEc2NetworkInterfaceViolations",
            target_id = prelude.Document.id,
            list_member = M.AwsEc2NetworkInterfaceViolation,
        }),
    },
})

M.BatchAssociateResourceInput = schema.new({
    id = id.from(_N, "BatchAssociateResourceInput"),
    type = "structure",
    members = {
        ResourceSetIdentifier = schema.new({
            id = id.from(_N, "BatchAssociateResourceInput", "ResourceSetIdentifier"),
            type = "string",
            name = "ResourceSetIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "BatchAssociateResourceInput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FailedItem = schema.new({
    id = id.from(_N, "FailedItem"),
    type = "structure",
    members = {
        URI = schema.new({
            id = id.from(_N, "FailedItem", "URI"),
            type = "string",
            name = "URI",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "FailedItem", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchAssociateResourceOutput = schema.new({
    id = id.from(_N, "BatchAssociateResourceOutput"),
    type = "structure",
    members = {
        ResourceSetIdentifier = schema.new({
            id = id.from(_N, "BatchAssociateResourceOutput", "ResourceSetIdentifier"),
            type = "string",
            name = "ResourceSetIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FailedItems = schema.new({
            id = id.from(_N, "BatchAssociateResourceOutput", "FailedItems"),
            type = "list",
            name = "FailedItems",
            target_id = prelude.Document.id,
            list_member = M.FailedItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDisassociateResourceInput = schema.new({
    id = id.from(_N, "BatchDisassociateResourceInput"),
    type = "structure",
    members = {
        ResourceSetIdentifier = schema.new({
            id = id.from(_N, "BatchDisassociateResourceInput", "ResourceSetIdentifier"),
            type = "string",
            name = "ResourceSetIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Items = schema.new({
            id = id.from(_N, "BatchDisassociateResourceInput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDisassociateResourceOutput = schema.new({
    id = id.from(_N, "BatchDisassociateResourceOutput"),
    type = "structure",
    members = {
        ResourceSetIdentifier = schema.new({
            id = id.from(_N, "BatchDisassociateResourceOutput", "ResourceSetIdentifier"),
            type = "string",
            name = "ResourceSetIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FailedItems = schema.new({
            id = id.from(_N, "BatchDisassociateResourceOutput", "FailedItems"),
            type = "list",
            name = "FailedItems",
            target_id = prelude.Document.id,
            list_member = M.FailedItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAppsListInput = schema.new({
    id = id.from(_N, "DeleteAppsListInput"),
    type = "structure",
    members = {
        ListId = schema.new({
            id = id.from(_N, "DeleteAppsListInput", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAppsListOutput = schema.new({
    id = id.from(_N, "DeleteAppsListOutput"),
    type = "structure",
})

M.DeleteNotificationChannelInput = schema.new({
    id = id.from(_N, "DeleteNotificationChannelInput"),
    type = "structure",
})

M.DeleteNotificationChannelOutput = schema.new({
    id = id.from(_N, "DeleteNotificationChannelOutput"),
    type = "structure",
})

M.DeletePolicyInput = schema.new({
    id = id.from(_N, "DeletePolicyInput"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "DeletePolicyInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeleteAllPolicyResources = schema.new({
            id = id.from(_N, "DeletePolicyInput", "DeleteAllPolicyResources"),
            type = "boolean",
            name = "DeleteAllPolicyResources",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeletePolicyOutput = schema.new({
    id = id.from(_N, "DeletePolicyOutput"),
    type = "structure",
})

M.DeleteProtocolsListInput = schema.new({
    id = id.from(_N, "DeleteProtocolsListInput"),
    type = "structure",
    members = {
        ListId = schema.new({
            id = id.from(_N, "DeleteProtocolsListInput", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProtocolsListOutput = schema.new({
    id = id.from(_N, "DeleteProtocolsListOutput"),
    type = "structure",
})

M.DeleteResourceSetInput = schema.new({
    id = id.from(_N, "DeleteResourceSetInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteResourceSetInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourceSetOutput = schema.new({
    id = id.from(_N, "DeleteResourceSetOutput"),
    type = "structure",
})

M.DisassociateAdminAccountInput = schema.new({
    id = id.from(_N, "DisassociateAdminAccountInput"),
    type = "structure",
})

M.DisassociateAdminAccountOutput = schema.new({
    id = id.from(_N, "DisassociateAdminAccountOutput"),
    type = "structure",
})

M.DisassociateThirdPartyFirewallInput = schema.new({
    id = id.from(_N, "DisassociateThirdPartyFirewallInput"),
    type = "structure",
    members = {
        ThirdPartyFirewall = schema.new({
            id = id.from(_N, "DisassociateThirdPartyFirewallInput", "ThirdPartyFirewall"),
            type = "string",
            name = "ThirdPartyFirewall",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateThirdPartyFirewallOutput = schema.new({
    id = id.from(_N, "DisassociateThirdPartyFirewallOutput"),
    type = "structure",
    members = {
        ThirdPartyFirewallStatus = schema.new({
            id = id.from(_N, "DisassociateThirdPartyFirewallOutput", "ThirdPartyFirewallStatus"),
            type = "string",
            name = "ThirdPartyFirewallStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAdminAccountInput = schema.new({
    id = id.from(_N, "GetAdminAccountInput"),
    type = "structure",
})

M.GetAdminAccountOutput = schema.new({
    id = id.from(_N, "GetAdminAccountOutput"),
    type = "structure",
    members = {
        AdminAccount = schema.new({
            id = id.from(_N, "GetAdminAccountOutput", "AdminAccount"),
            type = "string",
            name = "AdminAccount",
            target_id = prelude.String.id,
        }),
        RoleStatus = schema.new({
            id = id.from(_N, "GetAdminAccountOutput", "RoleStatus"),
            type = "string",
            name = "RoleStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAdminScopeInput = schema.new({
    id = id.from(_N, "GetAdminScopeInput"),
    type = "structure",
    members = {
        AdminAccount = schema.new({
            id = id.from(_N, "GetAdminScopeInput", "AdminAccount"),
            type = "string",
            name = "AdminAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAdminScopeOutput = schema.new({
    id = id.from(_N, "GetAdminScopeOutput"),
    type = "structure",
    members = {
        AdminScope = schema.new({
            id = id.from(_N, "GetAdminScopeOutput", "AdminScope"),
            type = "structure",
            name = "AdminScope",
            target_id = id.from(_N, "AdminScope"),
            target = M.AdminScope,
        }),
        Status = schema.new({
            id = id.from(_N, "GetAdminScopeOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAppsListInput = schema.new({
    id = id.from(_N, "GetAppsListInput"),
    type = "structure",
    members = {
        ListId = schema.new({
            id = id.from(_N, "GetAppsListInput", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultList = schema.new({
            id = id.from(_N, "GetAppsListInput", "DefaultList"),
            type = "boolean",
            name = "DefaultList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetAppsListOutput = schema.new({
    id = id.from(_N, "GetAppsListOutput"),
    type = "structure",
    members = {
        AppsList = schema.new({
            id = id.from(_N, "GetAppsListOutput", "AppsList"),
            type = "structure",
            name = "AppsList",
            target_id = id.from(_N, "AppsListData"),
            target = M.AppsListData,
        }),
        AppsListArn = schema.new({
            id = id.from(_N, "GetAppsListOutput", "AppsListArn"),
            type = "string",
            name = "AppsListArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetComplianceDetailInput = schema.new({
    id = id.from(_N, "GetComplianceDetailInput"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "GetComplianceDetailInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberAccount = schema.new({
            id = id.from(_N, "GetComplianceDetailInput", "MemberAccount"),
            type = "string",
            name = "MemberAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ComplianceViolator = schema.new({
    id = id.from(_N, "ComplianceViolator"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "ComplianceViolator", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ViolationReason = schema.new({
            id = id.from(_N, "ComplianceViolator", "ViolationReason"),
            type = "string",
            name = "ViolationReason",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ComplianceViolator", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ComplianceViolator", "Metadata"),
            type = "map",
            name = "Metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PolicyComplianceDetail = schema.new({
    id = id.from(_N, "PolicyComplianceDetail"),
    type = "structure",
    members = {
        PolicyOwner = schema.new({
            id = id.from(_N, "PolicyComplianceDetail", "PolicyOwner"),
            type = "string",
            name = "PolicyOwner",
            target_id = prelude.String.id,
        }),
        PolicyId = schema.new({
            id = id.from(_N, "PolicyComplianceDetail", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        MemberAccount = schema.new({
            id = id.from(_N, "PolicyComplianceDetail", "MemberAccount"),
            type = "string",
            name = "MemberAccount",
            target_id = prelude.String.id,
        }),
        Violators = schema.new({
            id = id.from(_N, "PolicyComplianceDetail", "Violators"),
            type = "list",
            name = "Violators",
            target_id = prelude.Document.id,
            list_member = M.ComplianceViolator,
        }),
        EvaluationLimitExceeded = schema.new({
            id = id.from(_N, "PolicyComplianceDetail", "EvaluationLimitExceeded"),
            type = "boolean",
            name = "EvaluationLimitExceeded",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ExpiredAt = schema.new({
            id = id.from(_N, "PolicyComplianceDetail", "ExpiredAt"),
            type = "timestamp",
            name = "ExpiredAt",
            target_id = prelude.Timestamp.id,
        }),
        IssueInfoMap = schema.new({
            id = id.from(_N, "PolicyComplianceDetail", "IssueInfoMap"),
            type = "map",
            name = "IssueInfoMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetComplianceDetailOutput = schema.new({
    id = id.from(_N, "GetComplianceDetailOutput"),
    type = "structure",
    members = {
        PolicyComplianceDetail = schema.new({
            id = id.from(_N, "GetComplianceDetailOutput", "PolicyComplianceDetail"),
            type = "structure",
            name = "PolicyComplianceDetail",
            target_id = id.from(_N, "PolicyComplianceDetail"),
            target = M.PolicyComplianceDetail,
        }),
    },
})

M.GetNotificationChannelInput = schema.new({
    id = id.from(_N, "GetNotificationChannelInput"),
    type = "structure",
})

M.GetNotificationChannelOutput = schema.new({
    id = id.from(_N, "GetNotificationChannelOutput"),
    type = "structure",
    members = {
        SnsTopicArn = schema.new({
            id = id.from(_N, "GetNotificationChannelOutput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        SnsRoleName = schema.new({
            id = id.from(_N, "GetNotificationChannelOutput", "SnsRoleName"),
            type = "string",
            name = "SnsRoleName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPolicyInput = schema.new({
    id = id.from(_N, "GetPolicyInput"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "GetPolicyInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
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
        Key = schema.new({
            id = id.from(_N, "ResourceTag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ResourceTag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkAclIcmpTypeCode = schema.new({
    id = id.from(_N, "NetworkAclIcmpTypeCode"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "NetworkAclIcmpTypeCode", "Code"),
            type = "integer",
            name = "Code",
            target_id = prelude.Integer.id,
        }),
        Type = schema.new({
            id = id.from(_N, "NetworkAclIcmpTypeCode", "Type"),
            type = "integer",
            name = "Type",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NetworkAclPortRange = schema.new({
    id = id.from(_N, "NetworkAclPortRange"),
    type = "structure",
    members = {
        From = schema.new({
            id = id.from(_N, "NetworkAclPortRange", "From"),
            type = "integer",
            name = "From",
            target_id = prelude.Integer.id,
        }),
        To = schema.new({
            id = id.from(_N, "NetworkAclPortRange", "To"),
            type = "integer",
            name = "To",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NetworkAclEntry = schema.new({
    id = id.from(_N, "NetworkAclEntry"),
    type = "structure",
    members = {
        IcmpTypeCode = schema.new({
            id = id.from(_N, "NetworkAclEntry", "IcmpTypeCode"),
            type = "structure",
            name = "IcmpTypeCode",
            target_id = id.from(_N, "NetworkAclIcmpTypeCode"),
            target = M.NetworkAclIcmpTypeCode,
        }),
        Protocol = schema.new({
            id = id.from(_N, "NetworkAclEntry", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PortRange = schema.new({
            id = id.from(_N, "NetworkAclEntry", "PortRange"),
            type = "structure",
            name = "PortRange",
            target_id = id.from(_N, "NetworkAclPortRange"),
            target = M.NetworkAclPortRange,
        }),
        CidrBlock = schema.new({
            id = id.from(_N, "NetworkAclEntry", "CidrBlock"),
            type = "string",
            name = "CidrBlock",
            target_id = prelude.String.id,
        }),
        Ipv6CidrBlock = schema.new({
            id = id.from(_N, "NetworkAclEntry", "Ipv6CidrBlock"),
            type = "string",
            name = "Ipv6CidrBlock",
            target_id = prelude.String.id,
        }),
        RuleAction = schema.new({
            id = id.from(_N, "NetworkAclEntry", "RuleAction"),
            type = "string",
            name = "RuleAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Egress = schema.new({
            id = id.from(_N, "NetworkAclEntry", "Egress"),
            type = "boolean",
            name = "Egress",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkAclEntrySet = schema.new({
    id = id.from(_N, "NetworkAclEntrySet"),
    type = "structure",
    members = {
        FirstEntries = schema.new({
            id = id.from(_N, "NetworkAclEntrySet", "FirstEntries"),
            type = "list",
            name = "FirstEntries",
            target_id = prelude.Document.id,
            list_member = M.NetworkAclEntry,
        }),
        ForceRemediateForFirstEntries = schema.new({
            id = id.from(_N, "NetworkAclEntrySet", "ForceRemediateForFirstEntries"),
            type = "boolean",
            name = "ForceRemediateForFirstEntries",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastEntries = schema.new({
            id = id.from(_N, "NetworkAclEntrySet", "LastEntries"),
            type = "list",
            name = "LastEntries",
            target_id = prelude.Document.id,
            list_member = M.NetworkAclEntry,
        }),
        ForceRemediateForLastEntries = schema.new({
            id = id.from(_N, "NetworkAclEntrySet", "ForceRemediateForLastEntries"),
            type = "boolean",
            name = "ForceRemediateForLastEntries",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkAclCommonPolicy = schema.new({
    id = id.from(_N, "NetworkAclCommonPolicy"),
    type = "structure",
    members = {
        NetworkAclEntrySet = schema.new({
            id = id.from(_N, "NetworkAclCommonPolicy", "NetworkAclEntrySet"),
            type = "structure",
            name = "NetworkAclEntrySet",
            target_id = id.from(_N, "NetworkAclEntrySet"),
            target = M.NetworkAclEntrySet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkFirewallPolicy = schema.new({
    id = id.from(_N, "NetworkFirewallPolicy"),
    type = "structure",
    members = {
        FirewallDeploymentModel = schema.new({
            id = id.from(_N, "NetworkFirewallPolicy", "FirewallDeploymentModel"),
            type = "string",
            name = "FirewallDeploymentModel",
            target_id = prelude.String.id,
        }),
    },
})

M.ThirdPartyFirewallPolicy = schema.new({
    id = id.from(_N, "ThirdPartyFirewallPolicy"),
    type = "structure",
    members = {
        FirewallDeploymentModel = schema.new({
            id = id.from(_N, "ThirdPartyFirewallPolicy", "FirewallDeploymentModel"),
            type = "string",
            name = "FirewallDeploymentModel",
            target_id = prelude.String.id,
        }),
    },
})

M.PolicyOption = schema.new({
    id = id.from(_N, "PolicyOption"),
    type = "structure",
    members = {
        NetworkFirewallPolicy = schema.new({
            id = id.from(_N, "PolicyOption", "NetworkFirewallPolicy"),
            type = "structure",
            name = "NetworkFirewallPolicy",
            target_id = id.from(_N, "NetworkFirewallPolicy"),
            target = M.NetworkFirewallPolicy,
        }),
        ThirdPartyFirewallPolicy = schema.new({
            id = id.from(_N, "PolicyOption", "ThirdPartyFirewallPolicy"),
            type = "structure",
            name = "ThirdPartyFirewallPolicy",
            target_id = id.from(_N, "ThirdPartyFirewallPolicy"),
            target = M.ThirdPartyFirewallPolicy,
        }),
        NetworkAclCommonPolicy = schema.new({
            id = id.from(_N, "PolicyOption", "NetworkAclCommonPolicy"),
            type = "structure",
            name = "NetworkAclCommonPolicy",
            target_id = id.from(_N, "NetworkAclCommonPolicy"),
            target = M.NetworkAclCommonPolicy,
        }),
    },
})

M.SecurityServicePolicyData = schema.new({
    id = id.from(_N, "SecurityServicePolicyData"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "SecurityServicePolicyData", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ManagedServiceData = schema.new({
            id = id.from(_N, "SecurityServicePolicyData", "ManagedServiceData"),
            type = "string",
            name = "ManagedServiceData",
            target_id = prelude.String.id,
        }),
        PolicyOption = schema.new({
            id = id.from(_N, "SecurityServicePolicyData", "PolicyOption"),
            type = "structure",
            name = "PolicyOption",
            target_id = id.from(_N, "PolicyOption"),
            target = M.PolicyOption,
        }),
    },
})

M.Policy = schema.new({
    id = id.from(_N, "Policy"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "Policy", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        PolicyName = schema.new({
            id = id.from(_N, "Policy", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyUpdateToken = schema.new({
            id = id.from(_N, "Policy", "PolicyUpdateToken"),
            type = "string",
            name = "PolicyUpdateToken",
            target_id = prelude.String.id,
        }),
        SecurityServicePolicyData = schema.new({
            id = id.from(_N, "Policy", "SecurityServicePolicyData"),
            type = "structure",
            name = "SecurityServicePolicyData",
            target_id = id.from(_N, "SecurityServicePolicyData"),
            target = M.SecurityServicePolicyData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "Policy", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceTypeList = schema.new({
            id = id.from(_N, "Policy", "ResourceTypeList"),
            type = "list",
            name = "ResourceTypeList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceTags = schema.new({
            id = id.from(_N, "Policy", "ResourceTags"),
            type = "list",
            name = "ResourceTags",
            target_id = prelude.Document.id,
            list_member = M.ResourceTag,
        }),
        ExcludeResourceTags = schema.new({
            id = id.from(_N, "Policy", "ExcludeResourceTags"),
            type = "boolean",
            name = "ExcludeResourceTags",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        RemediationEnabled = schema.new({
            id = id.from(_N, "Policy", "RemediationEnabled"),
            type = "boolean",
            name = "RemediationEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeleteUnusedFMManagedResources = schema.new({
            id = id.from(_N, "Policy", "DeleteUnusedFMManagedResources"),
            type = "boolean",
            name = "DeleteUnusedFMManagedResources",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        IncludeMap = schema.new({
            id = id.from(_N, "Policy", "IncludeMap"),
            type = "map",
            name = "IncludeMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        ExcludeMap = schema.new({
            id = id.from(_N, "Policy", "ExcludeMap"),
            type = "map",
            name = "ExcludeMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        ResourceSetIds = schema.new({
            id = id.from(_N, "Policy", "ResourceSetIds"),
            type = "list",
            name = "ResourceSetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PolicyDescription = schema.new({
            id = id.from(_N, "Policy", "PolicyDescription"),
            type = "string",
            name = "PolicyDescription",
            target_id = prelude.String.id,
        }),
        PolicyStatus = schema.new({
            id = id.from(_N, "Policy", "PolicyStatus"),
            type = "string",
            name = "PolicyStatus",
            target_id = prelude.String.id,
        }),
        ResourceTagLogicalOperator = schema.new({
            id = id.from(_N, "Policy", "ResourceTagLogicalOperator"),
            type = "string",
            name = "ResourceTagLogicalOperator",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPolicyOutput = schema.new({
    id = id.from(_N, "GetPolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetPolicyOutput", "Policy"),
            type = "structure",
            name = "Policy",
            target_id = id.from(_N, "Policy"),
            target = M.Policy,
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "GetPolicyOutput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTypeException = schema.new({
    id = id.from(_N, "InvalidTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidTypeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetProtectionStatusInput = schema.new({
    id = id.from(_N, "GetProtectionStatusInput"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "GetProtectionStatusInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberAccountId = schema.new({
            id = id.from(_N, "GetProtectionStatusInput", "MemberAccountId"),
            type = "string",
            name = "MemberAccountId",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetProtectionStatusInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetProtectionStatusInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetProtectionStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetProtectionStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetProtectionStatusOutput = schema.new({
    id = id.from(_N, "GetProtectionStatusOutput"),
    type = "structure",
    members = {
        AdminAccountId = schema.new({
            id = id.from(_N, "GetProtectionStatusOutput", "AdminAccountId"),
            type = "string",
            name = "AdminAccountId",
            target_id = prelude.String.id,
        }),
        ServiceType = schema.new({
            id = id.from(_N, "GetProtectionStatusOutput", "ServiceType"),
            type = "string",
            name = "ServiceType",
            target_id = prelude.String.id,
        }),
        Data = schema.new({
            id = id.from(_N, "GetProtectionStatusOutput", "Data"),
            type = "string",
            name = "Data",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetProtectionStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetProtocolsListInput = schema.new({
    id = id.from(_N, "GetProtocolsListInput"),
    type = "structure",
    members = {
        ListId = schema.new({
            id = id.from(_N, "GetProtocolsListInput", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultList = schema.new({
            id = id.from(_N, "GetProtocolsListInput", "DefaultList"),
            type = "boolean",
            name = "DefaultList",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ProtocolsListData = schema.new({
    id = id.from(_N, "ProtocolsListData"),
    type = "structure",
    members = {
        ListId = schema.new({
            id = id.from(_N, "ProtocolsListData", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
        }),
        ListName = schema.new({
            id = id.from(_N, "ProtocolsListData", "ListName"),
            type = "string",
            name = "ListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ListUpdateToken = schema.new({
            id = id.from(_N, "ProtocolsListData", "ListUpdateToken"),
            type = "string",
            name = "ListUpdateToken",
            target_id = prelude.String.id,
        }),
        CreateTime = schema.new({
            id = id.from(_N, "ProtocolsListData", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdateTime = schema.new({
            id = id.from(_N, "ProtocolsListData", "LastUpdateTime"),
            type = "timestamp",
            name = "LastUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        ProtocolsList = schema.new({
            id = id.from(_N, "ProtocolsListData", "ProtocolsList"),
            type = "list",
            name = "ProtocolsList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PreviousProtocolsList = schema.new({
            id = id.from(_N, "ProtocolsListData", "PreviousProtocolsList"),
            type = "map",
            name = "PreviousProtocolsList",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.GetProtocolsListOutput = schema.new({
    id = id.from(_N, "GetProtocolsListOutput"),
    type = "structure",
    members = {
        ProtocolsList = schema.new({
            id = id.from(_N, "GetProtocolsListOutput", "ProtocolsList"),
            type = "structure",
            name = "ProtocolsList",
            target_id = id.from(_N, "ProtocolsListData"),
            target = M.ProtocolsListData,
        }),
        ProtocolsListArn = schema.new({
            id = id.from(_N, "GetProtocolsListOutput", "ProtocolsListArn"),
            type = "string",
            name = "ProtocolsListArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourceSetInput = schema.new({
    id = id.from(_N, "GetResourceSetInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetResourceSetInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceSet = schema.new({
    id = id.from(_N, "ResourceSet"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResourceSet", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResourceSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ResourceSet", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        UpdateToken = schema.new({
            id = id.from(_N, "ResourceSet", "UpdateToken"),
            type = "string",
            name = "UpdateToken",
            target_id = prelude.String.id,
        }),
        ResourceTypeList = schema.new({
            id = id.from(_N, "ResourceSet", "ResourceTypeList"),
            type = "list",
            name = "ResourceTypeList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastUpdateTime = schema.new({
            id = id.from(_N, "ResourceSet", "LastUpdateTime"),
            type = "timestamp",
            name = "LastUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        ResourceSetStatus = schema.new({
            id = id.from(_N, "ResourceSet", "ResourceSetStatus"),
            type = "string",
            name = "ResourceSetStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourceSetOutput = schema.new({
    id = id.from(_N, "GetResourceSetOutput"),
    type = "structure",
    members = {
        ResourceSet = schema.new({
            id = id.from(_N, "GetResourceSetOutput", "ResourceSet"),
            type = "structure",
            name = "ResourceSet",
            target_id = id.from(_N, "ResourceSet"),
            target = M.ResourceSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceSetArn = schema.new({
            id = id.from(_N, "GetResourceSetOutput", "ResourceSetArn"),
            type = "string",
            name = "ResourceSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetThirdPartyFirewallAssociationStatusInput = schema.new({
    id = id.from(_N, "GetThirdPartyFirewallAssociationStatusInput"),
    type = "structure",
    members = {
        ThirdPartyFirewall = schema.new({
            id = id.from(_N, "GetThirdPartyFirewallAssociationStatusInput", "ThirdPartyFirewall"),
            type = "string",
            name = "ThirdPartyFirewall",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetThirdPartyFirewallAssociationStatusOutput = schema.new({
    id = id.from(_N, "GetThirdPartyFirewallAssociationStatusOutput"),
    type = "structure",
    members = {
        ThirdPartyFirewallStatus = schema.new({
            id = id.from(_N, "GetThirdPartyFirewallAssociationStatusOutput", "ThirdPartyFirewallStatus"),
            type = "string",
            name = "ThirdPartyFirewallStatus",
            target_id = prelude.String.id,
        }),
        MarketplaceOnboardingStatus = schema.new({
            id = id.from(_N, "GetThirdPartyFirewallAssociationStatusOutput", "MarketplaceOnboardingStatus"),
            type = "string",
            name = "MarketplaceOnboardingStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetViolationDetailsInput = schema.new({
    id = id.from(_N, "GetViolationDetailsInput"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "GetViolationDetailsInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberAccount = schema.new({
            id = id.from(_N, "GetViolationDetailsInput", "MemberAccount"),
            type = "string",
            name = "MemberAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "GetViolationDetailsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetViolationDetailsInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
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

M.PartialMatch = schema.new({
    id = id.from(_N, "PartialMatch"),
    type = "structure",
    members = {
        Reference = schema.new({
            id = id.from(_N, "PartialMatch", "Reference"),
            type = "string",
            name = "Reference",
            target_id = prelude.String.id,
        }),
        TargetViolationReasons = schema.new({
            id = id.from(_N, "PartialMatch", "TargetViolationReasons"),
            type = "list",
            name = "TargetViolationReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SecurityGroupRuleDescription = schema.new({
    id = id.from(_N, "SecurityGroupRuleDescription"),
    type = "structure",
    members = {
        IPV4Range = schema.new({
            id = id.from(_N, "SecurityGroupRuleDescription", "IPV4Range"),
            type = "string",
            name = "IPV4Range",
            target_id = prelude.String.id,
        }),
        IPV6Range = schema.new({
            id = id.from(_N, "SecurityGroupRuleDescription", "IPV6Range"),
            type = "string",
            name = "IPV6Range",
            target_id = prelude.String.id,
        }),
        PrefixListId = schema.new({
            id = id.from(_N, "SecurityGroupRuleDescription", "PrefixListId"),
            type = "string",
            name = "PrefixListId",
            target_id = prelude.String.id,
        }),
        Protocol = schema.new({
            id = id.from(_N, "SecurityGroupRuleDescription", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
        FromPort = schema.new({
            id = id.from(_N, "SecurityGroupRuleDescription", "FromPort"),
            type = "long",
            name = "FromPort",
            target_id = prelude.Long.id,
        }),
        ToPort = schema.new({
            id = id.from(_N, "SecurityGroupRuleDescription", "ToPort"),
            type = "long",
            name = "ToPort",
            target_id = prelude.Long.id,
        }),
    },
})

M.SecurityGroupRemediationAction = schema.new({
    id = id.from(_N, "SecurityGroupRemediationAction"),
    type = "structure",
    members = {
        RemediationActionType = schema.new({
            id = id.from(_N, "SecurityGroupRemediationAction", "RemediationActionType"),
            type = "string",
            name = "RemediationActionType",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "SecurityGroupRemediationAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RemediationResult = schema.new({
            id = id.from(_N, "SecurityGroupRemediationAction", "RemediationResult"),
            type = "structure",
            name = "RemediationResult",
            target_id = id.from(_N, "SecurityGroupRuleDescription"),
            target = M.SecurityGroupRuleDescription,
        }),
        IsDefaultAction = schema.new({
            id = id.from(_N, "SecurityGroupRemediationAction", "IsDefaultAction"),
            type = "boolean",
            name = "IsDefaultAction",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AwsVPCSecurityGroupViolation = schema.new({
    id = id.from(_N, "AwsVPCSecurityGroupViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "AwsVPCSecurityGroupViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        ViolationTargetDescription = schema.new({
            id = id.from(_N, "AwsVPCSecurityGroupViolation", "ViolationTargetDescription"),
            type = "string",
            name = "ViolationTargetDescription",
            target_id = prelude.String.id,
        }),
        PartialMatches = schema.new({
            id = id.from(_N, "AwsVPCSecurityGroupViolation", "PartialMatches"),
            type = "list",
            name = "PartialMatches",
            target_id = prelude.Document.id,
            list_member = M.PartialMatch,
        }),
        PossibleSecurityGroupRemediationActions = schema.new({
            id = id.from(_N, "AwsVPCSecurityGroupViolation", "PossibleSecurityGroupRemediationActions"),
            type = "list",
            name = "PossibleSecurityGroupRemediationActions",
            target_id = prelude.Document.id,
            list_member = M.SecurityGroupRemediationAction,
        }),
    },
})

M.DnsDuplicateRuleGroupViolation = schema.new({
    id = id.from(_N, "DnsDuplicateRuleGroupViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "DnsDuplicateRuleGroupViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        ViolationTargetDescription = schema.new({
            id = id.from(_N, "DnsDuplicateRuleGroupViolation", "ViolationTargetDescription"),
            type = "string",
            name = "ViolationTargetDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.DnsRuleGroupLimitExceededViolation = schema.new({
    id = id.from(_N, "DnsRuleGroupLimitExceededViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "DnsRuleGroupLimitExceededViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        ViolationTargetDescription = schema.new({
            id = id.from(_N, "DnsRuleGroupLimitExceededViolation", "ViolationTargetDescription"),
            type = "string",
            name = "ViolationTargetDescription",
            target_id = prelude.String.id,
        }),
        NumberOfRuleGroupsAlreadyAssociated = schema.new({
            id = id.from(_N, "DnsRuleGroupLimitExceededViolation", "NumberOfRuleGroupsAlreadyAssociated"),
            type = "integer",
            name = "NumberOfRuleGroupsAlreadyAssociated",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DnsRuleGroupPriorityConflictViolation = schema.new({
    id = id.from(_N, "DnsRuleGroupPriorityConflictViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "DnsRuleGroupPriorityConflictViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        ViolationTargetDescription = schema.new({
            id = id.from(_N, "DnsRuleGroupPriorityConflictViolation", "ViolationTargetDescription"),
            type = "string",
            name = "ViolationTargetDescription",
            target_id = prelude.String.id,
        }),
        ConflictingPriority = schema.new({
            id = id.from(_N, "DnsRuleGroupPriorityConflictViolation", "ConflictingPriority"),
            type = "integer",
            name = "ConflictingPriority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ConflictingPolicyId = schema.new({
            id = id.from(_N, "DnsRuleGroupPriorityConflictViolation", "ConflictingPolicyId"),
            type = "string",
            name = "ConflictingPolicyId",
            target_id = prelude.String.id,
        }),
        UnavailablePriorities = schema.new({
            id = id.from(_N, "DnsRuleGroupPriorityConflictViolation", "UnavailablePriorities"),
            type = "list",
            name = "UnavailablePriorities",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
    },
})

M.FirewallSubnetIsOutOfScopeViolation = schema.new({
    id = id.from(_N, "FirewallSubnetIsOutOfScopeViolation"),
    type = "structure",
    members = {
        FirewallSubnetId = schema.new({
            id = id.from(_N, "FirewallSubnetIsOutOfScopeViolation", "FirewallSubnetId"),
            type = "string",
            name = "FirewallSubnetId",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "FirewallSubnetIsOutOfScopeViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "FirewallSubnetIsOutOfScopeViolation", "SubnetAvailabilityZone"),
            type = "string",
            name = "SubnetAvailabilityZone",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZoneId = schema.new({
            id = id.from(_N, "FirewallSubnetIsOutOfScopeViolation", "SubnetAvailabilityZoneId"),
            type = "string",
            name = "SubnetAvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        VpcEndpointId = schema.new({
            id = id.from(_N, "FirewallSubnetIsOutOfScopeViolation", "VpcEndpointId"),
            type = "string",
            name = "VpcEndpointId",
            target_id = prelude.String.id,
        }),
    },
})

M.FirewallSubnetMissingVPCEndpointViolation = schema.new({
    id = id.from(_N, "FirewallSubnetMissingVPCEndpointViolation"),
    type = "structure",
    members = {
        FirewallSubnetId = schema.new({
            id = id.from(_N, "FirewallSubnetMissingVPCEndpointViolation", "FirewallSubnetId"),
            type = "string",
            name = "FirewallSubnetId",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "FirewallSubnetMissingVPCEndpointViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "FirewallSubnetMissingVPCEndpointViolation", "SubnetAvailabilityZone"),
            type = "string",
            name = "SubnetAvailabilityZone",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZoneId = schema.new({
            id = id.from(_N, "FirewallSubnetMissingVPCEndpointViolation", "SubnetAvailabilityZoneId"),
            type = "string",
            name = "SubnetAvailabilityZoneId",
            target_id = prelude.String.id,
        }),
    },
})

M.EntryDescription = schema.new({
    id = id.from(_N, "EntryDescription"),
    type = "structure",
    members = {
        EntryDetail = schema.new({
            id = id.from(_N, "EntryDescription", "EntryDetail"),
            type = "structure",
            name = "EntryDetail",
            target_id = id.from(_N, "NetworkAclEntry"),
            target = M.NetworkAclEntry,
        }),
        EntryRuleNumber = schema.new({
            id = id.from(_N, "EntryDescription", "EntryRuleNumber"),
            type = "integer",
            name = "EntryRuleNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        EntryType = schema.new({
            id = id.from(_N, "EntryDescription", "EntryType"),
            type = "string",
            name = "EntryType",
            target_id = prelude.String.id,
        }),
    },
})

M.EntryViolation = schema.new({
    id = id.from(_N, "EntryViolation"),
    type = "structure",
    members = {
        ExpectedEntry = schema.new({
            id = id.from(_N, "EntryViolation", "ExpectedEntry"),
            type = "structure",
            name = "ExpectedEntry",
            target_id = id.from(_N, "EntryDescription"),
            target = M.EntryDescription,
        }),
        ExpectedEvaluationOrder = schema.new({
            id = id.from(_N, "EntryViolation", "ExpectedEvaluationOrder"),
            type = "string",
            name = "ExpectedEvaluationOrder",
            target_id = prelude.String.id,
        }),
        ActualEvaluationOrder = schema.new({
            id = id.from(_N, "EntryViolation", "ActualEvaluationOrder"),
            type = "string",
            name = "ActualEvaluationOrder",
            target_id = prelude.String.id,
        }),
        EntryAtExpectedEvaluationOrder = schema.new({
            id = id.from(_N, "EntryViolation", "EntryAtExpectedEvaluationOrder"),
            type = "structure",
            name = "EntryAtExpectedEvaluationOrder",
            target_id = id.from(_N, "EntryDescription"),
            target = M.EntryDescription,
        }),
        EntriesWithConflicts = schema.new({
            id = id.from(_N, "EntryViolation", "EntriesWithConflicts"),
            type = "list",
            name = "EntriesWithConflicts",
            target_id = prelude.Document.id,
            list_member = M.EntryDescription,
        }),
        EntryViolationReasons = schema.new({
            id = id.from(_N, "EntryViolation", "EntryViolationReasons"),
            type = "list",
            name = "EntryViolationReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InvalidNetworkAclEntriesViolation = schema.new({
    id = id.from(_N, "InvalidNetworkAclEntriesViolation"),
    type = "structure",
    members = {
        Vpc = schema.new({
            id = id.from(_N, "InvalidNetworkAclEntriesViolation", "Vpc"),
            type = "string",
            name = "Vpc",
            target_id = prelude.String.id,
        }),
        Subnet = schema.new({
            id = id.from(_N, "InvalidNetworkAclEntriesViolation", "Subnet"),
            type = "string",
            name = "Subnet",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "InvalidNetworkAclEntriesViolation", "SubnetAvailabilityZone"),
            type = "string",
            name = "SubnetAvailabilityZone",
            target_id = prelude.String.id,
        }),
        CurrentAssociatedNetworkAcl = schema.new({
            id = id.from(_N, "InvalidNetworkAclEntriesViolation", "CurrentAssociatedNetworkAcl"),
            type = "string",
            name = "CurrentAssociatedNetworkAcl",
            target_id = prelude.String.id,
        }),
        EntryViolations = schema.new({
            id = id.from(_N, "InvalidNetworkAclEntriesViolation", "EntryViolations"),
            type = "list",
            name = "EntryViolations",
            target_id = prelude.Document.id,
            list_member = M.EntryViolation,
        }),
    },
})

M.Route = schema.new({
    id = id.from(_N, "Route"),
    type = "structure",
    members = {
        DestinationType = schema.new({
            id = id.from(_N, "Route", "DestinationType"),
            type = "string",
            name = "DestinationType",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "Route", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        Destination = schema.new({
            id = id.from(_N, "Route", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "Route", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallBlackHoleRouteDetectedViolation = schema.new({
    id = id.from(_N, "NetworkFirewallBlackHoleRouteDetectedViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "NetworkFirewallBlackHoleRouteDetectedViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "NetworkFirewallBlackHoleRouteDetectedViolation", "RouteTableId"),
            type = "string",
            name = "RouteTableId",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "NetworkFirewallBlackHoleRouteDetectedViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        ViolatingRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallBlackHoleRouteDetectedViolation", "ViolatingRoutes"),
            type = "list",
            name = "ViolatingRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
    },
})

M.ExpectedRoute = schema.new({
    id = id.from(_N, "ExpectedRoute"),
    type = "structure",
    members = {
        IpV4Cidr = schema.new({
            id = id.from(_N, "ExpectedRoute", "IpV4Cidr"),
            type = "string",
            name = "IpV4Cidr",
            target_id = prelude.String.id,
        }),
        PrefixListId = schema.new({
            id = id.from(_N, "ExpectedRoute", "PrefixListId"),
            type = "string",
            name = "PrefixListId",
            target_id = prelude.String.id,
        }),
        IpV6Cidr = schema.new({
            id = id.from(_N, "ExpectedRoute", "IpV6Cidr"),
            type = "string",
            name = "IpV6Cidr",
            target_id = prelude.String.id,
        }),
        ContributingSubnets = schema.new({
            id = id.from(_N, "ExpectedRoute", "ContributingSubnets"),
            type = "list",
            name = "ContributingSubnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AllowedTargets = schema.new({
            id = id.from(_N, "ExpectedRoute", "AllowedTargets"),
            type = "list",
            name = "AllowedTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "ExpectedRoute", "RouteTableId"),
            type = "string",
            name = "RouteTableId",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallInternetTrafficNotInspectedViolation = schema.new({
    id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation"),
    type = "structure",
    members = {
        SubnetId = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "SubnetAvailabilityZone"),
            type = "string",
            name = "SubnetAvailabilityZone",
            target_id = prelude.String.id,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "RouteTableId"),
            type = "string",
            name = "RouteTableId",
            target_id = prelude.String.id,
        }),
        ViolatingRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "ViolatingRoutes"),
            type = "list",
            name = "ViolatingRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        IsRouteTableUsedInDifferentAZ = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "IsRouteTableUsedInDifferentAZ"),
            type = "boolean",
            name = "IsRouteTableUsedInDifferentAZ",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CurrentFirewallSubnetRouteTable = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "CurrentFirewallSubnetRouteTable"),
            type = "string",
            name = "CurrentFirewallSubnetRouteTable",
            target_id = prelude.String.id,
        }),
        ExpectedFirewallEndpoint = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "ExpectedFirewallEndpoint"),
            type = "string",
            name = "ExpectedFirewallEndpoint",
            target_id = prelude.String.id,
        }),
        FirewallSubnetId = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "FirewallSubnetId"),
            type = "string",
            name = "FirewallSubnetId",
            target_id = prelude.String.id,
        }),
        ExpectedFirewallSubnetRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "ExpectedFirewallSubnetRoutes"),
            type = "list",
            name = "ExpectedFirewallSubnetRoutes",
            target_id = prelude.Document.id,
            list_member = M.ExpectedRoute,
        }),
        ActualFirewallSubnetRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "ActualFirewallSubnetRoutes"),
            type = "list",
            name = "ActualFirewallSubnetRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        InternetGatewayId = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "InternetGatewayId"),
            type = "string",
            name = "InternetGatewayId",
            target_id = prelude.String.id,
        }),
        CurrentInternetGatewayRouteTable = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "CurrentInternetGatewayRouteTable"),
            type = "string",
            name = "CurrentInternetGatewayRouteTable",
            target_id = prelude.String.id,
        }),
        ExpectedInternetGatewayRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "ExpectedInternetGatewayRoutes"),
            type = "list",
            name = "ExpectedInternetGatewayRoutes",
            target_id = prelude.Document.id,
            list_member = M.ExpectedRoute,
        }),
        ActualInternetGatewayRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "ActualInternetGatewayRoutes"),
            type = "list",
            name = "ActualInternetGatewayRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        VpcId = schema.new({
            id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallInvalidRouteConfigurationViolation = schema.new({
    id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation"),
    type = "structure",
    members = {
        AffectedSubnets = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "AffectedSubnets"),
            type = "list",
            name = "AffectedSubnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "RouteTableId"),
            type = "string",
            name = "RouteTableId",
            target_id = prelude.String.id,
        }),
        IsRouteTableUsedInDifferentAZ = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "IsRouteTableUsedInDifferentAZ"),
            type = "boolean",
            name = "IsRouteTableUsedInDifferentAZ",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ViolatingRoute = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ViolatingRoute"),
            type = "structure",
            name = "ViolatingRoute",
            target_id = id.from(_N, "Route"),
            target = M.Route,
        }),
        CurrentFirewallSubnetRouteTable = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "CurrentFirewallSubnetRouteTable"),
            type = "string",
            name = "CurrentFirewallSubnetRouteTable",
            target_id = prelude.String.id,
        }),
        ExpectedFirewallEndpoint = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ExpectedFirewallEndpoint"),
            type = "string",
            name = "ExpectedFirewallEndpoint",
            target_id = prelude.String.id,
        }),
        ActualFirewallEndpoint = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ActualFirewallEndpoint"),
            type = "string",
            name = "ActualFirewallEndpoint",
            target_id = prelude.String.id,
        }),
        ExpectedFirewallSubnetId = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ExpectedFirewallSubnetId"),
            type = "string",
            name = "ExpectedFirewallSubnetId",
            target_id = prelude.String.id,
        }),
        ActualFirewallSubnetId = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ActualFirewallSubnetId"),
            type = "string",
            name = "ActualFirewallSubnetId",
            target_id = prelude.String.id,
        }),
        ExpectedFirewallSubnetRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ExpectedFirewallSubnetRoutes"),
            type = "list",
            name = "ExpectedFirewallSubnetRoutes",
            target_id = prelude.Document.id,
            list_member = M.ExpectedRoute,
        }),
        ActualFirewallSubnetRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ActualFirewallSubnetRoutes"),
            type = "list",
            name = "ActualFirewallSubnetRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        InternetGatewayId = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "InternetGatewayId"),
            type = "string",
            name = "InternetGatewayId",
            target_id = prelude.String.id,
        }),
        CurrentInternetGatewayRouteTable = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "CurrentInternetGatewayRouteTable"),
            type = "string",
            name = "CurrentInternetGatewayRouteTable",
            target_id = prelude.String.id,
        }),
        ExpectedInternetGatewayRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ExpectedInternetGatewayRoutes"),
            type = "list",
            name = "ExpectedInternetGatewayRoutes",
            target_id = prelude.Document.id,
            list_member = M.ExpectedRoute,
        }),
        ActualInternetGatewayRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "ActualInternetGatewayRoutes"),
            type = "list",
            name = "ActualInternetGatewayRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        VpcId = schema.new({
            id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallMissingExpectedRoutesViolation = schema.new({
    id = id.from(_N, "NetworkFirewallMissingExpectedRoutesViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRoutesViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        ExpectedRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRoutesViolation", "ExpectedRoutes"),
            type = "list",
            name = "ExpectedRoutes",
            target_id = prelude.Document.id,
            list_member = M.ExpectedRoute,
        }),
        VpcId = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRoutesViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallMissingExpectedRTViolation = schema.new({
    id = id.from(_N, "NetworkFirewallMissingExpectedRTViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRTViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        VPC = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRTViolation", "VPC"),
            type = "string",
            name = "VPC",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRTViolation", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        CurrentRouteTable = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRTViolation", "CurrentRouteTable"),
            type = "string",
            name = "CurrentRouteTable",
            target_id = prelude.String.id,
        }),
        ExpectedRouteTable = schema.new({
            id = id.from(_N, "NetworkFirewallMissingExpectedRTViolation", "ExpectedRouteTable"),
            type = "string",
            name = "ExpectedRouteTable",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallMissingFirewallViolation = schema.new({
    id = id.from(_N, "NetworkFirewallMissingFirewallViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "NetworkFirewallMissingFirewallViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        VPC = schema.new({
            id = id.from(_N, "NetworkFirewallMissingFirewallViolation", "VPC"),
            type = "string",
            name = "VPC",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "NetworkFirewallMissingFirewallViolation", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        TargetViolationReason = schema.new({
            id = id.from(_N, "NetworkFirewallMissingFirewallViolation", "TargetViolationReason"),
            type = "string",
            name = "TargetViolationReason",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallMissingSubnetViolation = schema.new({
    id = id.from(_N, "NetworkFirewallMissingSubnetViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "NetworkFirewallMissingSubnetViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        VPC = schema.new({
            id = id.from(_N, "NetworkFirewallMissingSubnetViolation", "VPC"),
            type = "string",
            name = "VPC",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "NetworkFirewallMissingSubnetViolation", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        TargetViolationReason = schema.new({
            id = id.from(_N, "NetworkFirewallMissingSubnetViolation", "TargetViolationReason"),
            type = "string",
            name = "TargetViolationReason",
            target_id = prelude.String.id,
        }),
    },
})

M.StatefulEngineOptions = schema.new({
    id = id.from(_N, "StatefulEngineOptions"),
    type = "structure",
    members = {
        RuleOrder = schema.new({
            id = id.from(_N, "StatefulEngineOptions", "RuleOrder"),
            type = "string",
            name = "RuleOrder",
            target_id = prelude.String.id,
        }),
        StreamExceptionPolicy = schema.new({
            id = id.from(_N, "StatefulEngineOptions", "StreamExceptionPolicy"),
            type = "string",
            name = "StreamExceptionPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallStatefulRuleGroupOverride = schema.new({
    id = id.from(_N, "NetworkFirewallStatefulRuleGroupOverride"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "NetworkFirewallStatefulRuleGroupOverride", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
    },
})

M.StatefulRuleGroup = schema.new({
    id = id.from(_N, "StatefulRuleGroup"),
    type = "structure",
    members = {
        RuleGroupName = schema.new({
            id = id.from(_N, "StatefulRuleGroup", "RuleGroupName"),
            type = "string",
            name = "RuleGroupName",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "StatefulRuleGroup", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "StatefulRuleGroup", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
        Override = schema.new({
            id = id.from(_N, "StatefulRuleGroup", "Override"),
            type = "structure",
            name = "Override",
            target_id = id.from(_N, "NetworkFirewallStatefulRuleGroupOverride"),
            target = M.NetworkFirewallStatefulRuleGroupOverride,
        }),
    },
})

M.StatelessRuleGroup = schema.new({
    id = id.from(_N, "StatelessRuleGroup"),
    type = "structure",
    members = {
        RuleGroupName = schema.new({
            id = id.from(_N, "StatelessRuleGroup", "RuleGroupName"),
            type = "string",
            name = "RuleGroupName",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "StatelessRuleGroup", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "StatelessRuleGroup", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NetworkFirewallPolicyDescription = schema.new({
    id = id.from(_N, "NetworkFirewallPolicyDescription"),
    type = "structure",
    members = {
        StatelessRuleGroups = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyDescription", "StatelessRuleGroups"),
            type = "list",
            name = "StatelessRuleGroups",
            target_id = prelude.Document.id,
            list_member = M.StatelessRuleGroup,
        }),
        StatelessDefaultActions = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyDescription", "StatelessDefaultActions"),
            type = "list",
            name = "StatelessDefaultActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StatelessFragmentDefaultActions = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyDescription", "StatelessFragmentDefaultActions"),
            type = "list",
            name = "StatelessFragmentDefaultActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StatelessCustomActions = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyDescription", "StatelessCustomActions"),
            type = "list",
            name = "StatelessCustomActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StatefulRuleGroups = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyDescription", "StatefulRuleGroups"),
            type = "list",
            name = "StatefulRuleGroups",
            target_id = prelude.Document.id,
            list_member = M.StatefulRuleGroup,
        }),
        StatefulDefaultActions = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyDescription", "StatefulDefaultActions"),
            type = "list",
            name = "StatefulDefaultActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StatefulEngineOptions = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyDescription", "StatefulEngineOptions"),
            type = "structure",
            name = "StatefulEngineOptions",
            target_id = id.from(_N, "StatefulEngineOptions"),
            target = M.StatefulEngineOptions,
        }),
    },
})

M.NetworkFirewallPolicyModifiedViolation = schema.new({
    id = id.from(_N, "NetworkFirewallPolicyModifiedViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyModifiedViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        CurrentPolicyDescription = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyModifiedViolation", "CurrentPolicyDescription"),
            type = "structure",
            name = "CurrentPolicyDescription",
            target_id = id.from(_N, "NetworkFirewallPolicyDescription"),
            target = M.NetworkFirewallPolicyDescription,
        }),
        ExpectedPolicyDescription = schema.new({
            id = id.from(_N, "NetworkFirewallPolicyModifiedViolation", "ExpectedPolicyDescription"),
            type = "structure",
            name = "ExpectedPolicyDescription",
            target_id = id.from(_N, "NetworkFirewallPolicyDescription"),
            target = M.NetworkFirewallPolicyDescription,
        }),
    },
})

M.NetworkFirewallUnexpectedFirewallRoutesViolation = schema.new({
    id = id.from(_N, "NetworkFirewallUnexpectedFirewallRoutesViolation"),
    type = "structure",
    members = {
        FirewallSubnetId = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedFirewallRoutesViolation", "FirewallSubnetId"),
            type = "string",
            name = "FirewallSubnetId",
            target_id = prelude.String.id,
        }),
        ViolatingRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedFirewallRoutesViolation", "ViolatingRoutes"),
            type = "list",
            name = "ViolatingRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedFirewallRoutesViolation", "RouteTableId"),
            type = "string",
            name = "RouteTableId",
            target_id = prelude.String.id,
        }),
        FirewallEndpoint = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedFirewallRoutesViolation", "FirewallEndpoint"),
            type = "string",
            name = "FirewallEndpoint",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedFirewallRoutesViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkFirewallUnexpectedGatewayRoutesViolation = schema.new({
    id = id.from(_N, "NetworkFirewallUnexpectedGatewayRoutesViolation"),
    type = "structure",
    members = {
        GatewayId = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedGatewayRoutesViolation", "GatewayId"),
            type = "string",
            name = "GatewayId",
            target_id = prelude.String.id,
        }),
        ViolatingRoutes = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedGatewayRoutesViolation", "ViolatingRoutes"),
            type = "list",
            name = "ViolatingRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedGatewayRoutesViolation", "RouteTableId"),
            type = "string",
            name = "RouteTableId",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "NetworkFirewallUnexpectedGatewayRoutesViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateNetworkAclAction = schema.new({
    id = id.from(_N, "CreateNetworkAclAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateNetworkAclAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Vpc = schema.new({
            id = id.from(_N, "CreateNetworkAclAction", "Vpc"),
            type = "structure",
            name = "Vpc",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        FMSCanRemediate = schema.new({
            id = id.from(_N, "CreateNetworkAclAction", "FMSCanRemediate"),
            type = "boolean",
            name = "FMSCanRemediate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateNetworkAclEntriesAction = schema.new({
    id = id.from(_N, "CreateNetworkAclEntriesAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateNetworkAclEntriesAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        NetworkAclId = schema.new({
            id = id.from(_N, "CreateNetworkAclEntriesAction", "NetworkAclId"),
            type = "structure",
            name = "NetworkAclId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        NetworkAclEntriesToBeCreated = schema.new({
            id = id.from(_N, "CreateNetworkAclEntriesAction", "NetworkAclEntriesToBeCreated"),
            type = "list",
            name = "NetworkAclEntriesToBeCreated",
            target_id = prelude.Document.id,
            list_member = M.EntryDescription,
        }),
        FMSCanRemediate = schema.new({
            id = id.from(_N, "CreateNetworkAclEntriesAction", "FMSCanRemediate"),
            type = "boolean",
            name = "FMSCanRemediate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteNetworkAclEntriesAction = schema.new({
    id = id.from(_N, "DeleteNetworkAclEntriesAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "DeleteNetworkAclEntriesAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        NetworkAclId = schema.new({
            id = id.from(_N, "DeleteNetworkAclEntriesAction", "NetworkAclId"),
            type = "structure",
            name = "NetworkAclId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        NetworkAclEntriesToBeDeleted = schema.new({
            id = id.from(_N, "DeleteNetworkAclEntriesAction", "NetworkAclEntriesToBeDeleted"),
            type = "list",
            name = "NetworkAclEntriesToBeDeleted",
            target_id = prelude.Document.id,
            list_member = M.EntryDescription,
        }),
        FMSCanRemediate = schema.new({
            id = id.from(_N, "DeleteNetworkAclEntriesAction", "FMSCanRemediate"),
            type = "boolean",
            name = "FMSCanRemediate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.EC2AssociateRouteTableAction = schema.new({
    id = id.from(_N, "EC2AssociateRouteTableAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "EC2AssociateRouteTableAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "EC2AssociateRouteTableAction", "RouteTableId"),
            type = "structure",
            name = "RouteTableId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetId = schema.new({
            id = id.from(_N, "EC2AssociateRouteTableAction", "SubnetId"),
            type = "structure",
            name = "SubnetId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        GatewayId = schema.new({
            id = id.from(_N, "EC2AssociateRouteTableAction", "GatewayId"),
            type = "structure",
            name = "GatewayId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
    },
})

M.EC2CopyRouteTableAction = schema.new({
    id = id.from(_N, "EC2CopyRouteTableAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "EC2CopyRouteTableAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "EC2CopyRouteTableAction", "VpcId"),
            type = "structure",
            name = "VpcId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "EC2CopyRouteTableAction", "RouteTableId"),
            type = "structure",
            name = "RouteTableId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EC2CreateRouteAction = schema.new({
    id = id.from(_N, "EC2CreateRouteAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "EC2CreateRouteAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DestinationCidrBlock = schema.new({
            id = id.from(_N, "EC2CreateRouteAction", "DestinationCidrBlock"),
            type = "string",
            name = "DestinationCidrBlock",
            target_id = prelude.String.id,
        }),
        DestinationPrefixListId = schema.new({
            id = id.from(_N, "EC2CreateRouteAction", "DestinationPrefixListId"),
            type = "string",
            name = "DestinationPrefixListId",
            target_id = prelude.String.id,
        }),
        DestinationIpv6CidrBlock = schema.new({
            id = id.from(_N, "EC2CreateRouteAction", "DestinationIpv6CidrBlock"),
            type = "string",
            name = "DestinationIpv6CidrBlock",
            target_id = prelude.String.id,
        }),
        VpcEndpointId = schema.new({
            id = id.from(_N, "EC2CreateRouteAction", "VpcEndpointId"),
            type = "structure",
            name = "VpcEndpointId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        GatewayId = schema.new({
            id = id.from(_N, "EC2CreateRouteAction", "GatewayId"),
            type = "structure",
            name = "GatewayId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "EC2CreateRouteAction", "RouteTableId"),
            type = "structure",
            name = "RouteTableId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EC2CreateRouteTableAction = schema.new({
    id = id.from(_N, "EC2CreateRouteTableAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "EC2CreateRouteTableAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "EC2CreateRouteTableAction", "VpcId"),
            type = "structure",
            name = "VpcId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EC2DeleteRouteAction = schema.new({
    id = id.from(_N, "EC2DeleteRouteAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "EC2DeleteRouteAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DestinationCidrBlock = schema.new({
            id = id.from(_N, "EC2DeleteRouteAction", "DestinationCidrBlock"),
            type = "string",
            name = "DestinationCidrBlock",
            target_id = prelude.String.id,
        }),
        DestinationPrefixListId = schema.new({
            id = id.from(_N, "EC2DeleteRouteAction", "DestinationPrefixListId"),
            type = "string",
            name = "DestinationPrefixListId",
            target_id = prelude.String.id,
        }),
        DestinationIpv6CidrBlock = schema.new({
            id = id.from(_N, "EC2DeleteRouteAction", "DestinationIpv6CidrBlock"),
            type = "string",
            name = "DestinationIpv6CidrBlock",
            target_id = prelude.String.id,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "EC2DeleteRouteAction", "RouteTableId"),
            type = "structure",
            name = "RouteTableId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EC2ReplaceRouteAction = schema.new({
    id = id.from(_N, "EC2ReplaceRouteAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "EC2ReplaceRouteAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DestinationCidrBlock = schema.new({
            id = id.from(_N, "EC2ReplaceRouteAction", "DestinationCidrBlock"),
            type = "string",
            name = "DestinationCidrBlock",
            target_id = prelude.String.id,
        }),
        DestinationPrefixListId = schema.new({
            id = id.from(_N, "EC2ReplaceRouteAction", "DestinationPrefixListId"),
            type = "string",
            name = "DestinationPrefixListId",
            target_id = prelude.String.id,
        }),
        DestinationIpv6CidrBlock = schema.new({
            id = id.from(_N, "EC2ReplaceRouteAction", "DestinationIpv6CidrBlock"),
            type = "string",
            name = "DestinationIpv6CidrBlock",
            target_id = prelude.String.id,
        }),
        GatewayId = schema.new({
            id = id.from(_N, "EC2ReplaceRouteAction", "GatewayId"),
            type = "structure",
            name = "GatewayId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "EC2ReplaceRouteAction", "RouteTableId"),
            type = "structure",
            name = "RouteTableId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EC2ReplaceRouteTableAssociationAction = schema.new({
    id = id.from(_N, "EC2ReplaceRouteTableAssociationAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "EC2ReplaceRouteTableAssociationAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "EC2ReplaceRouteTableAssociationAction", "AssociationId"),
            type = "structure",
            name = "AssociationId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "EC2ReplaceRouteTableAssociationAction", "RouteTableId"),
            type = "structure",
            name = "RouteTableId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FMSPolicyUpdateFirewallCreationConfigAction = schema.new({
    id = id.from(_N, "FMSPolicyUpdateFirewallCreationConfigAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "FMSPolicyUpdateFirewallCreationConfigAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        FirewallCreationConfig = schema.new({
            id = id.from(_N, "FMSPolicyUpdateFirewallCreationConfigAction", "FirewallCreationConfig"),
            type = "string",
            name = "FirewallCreationConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplaceNetworkAclAssociationAction = schema.new({
    id = id.from(_N, "ReplaceNetworkAclAssociationAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "ReplaceNetworkAclAssociationAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AssociationId = schema.new({
            id = id.from(_N, "ReplaceNetworkAclAssociationAction", "AssociationId"),
            type = "structure",
            name = "AssociationId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        NetworkAclId = schema.new({
            id = id.from(_N, "ReplaceNetworkAclAssociationAction", "NetworkAclId"),
            type = "structure",
            name = "NetworkAclId",
            target_id = id.from(_N, "ActionTarget"),
            target = M.ActionTarget,
        }),
        FMSCanRemediate = schema.new({
            id = id.from(_N, "ReplaceNetworkAclAssociationAction", "FMSCanRemediate"),
            type = "boolean",
            name = "FMSCanRemediate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.RemediationAction = schema.new({
    id = id.from(_N, "RemediationAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "RemediationAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EC2CreateRouteAction = schema.new({
            id = id.from(_N, "RemediationAction", "EC2CreateRouteAction"),
            type = "structure",
            name = "EC2CreateRouteAction",
            target_id = id.from(_N, "EC2CreateRouteAction"),
            target = M.EC2CreateRouteAction,
        }),
        EC2ReplaceRouteAction = schema.new({
            id = id.from(_N, "RemediationAction", "EC2ReplaceRouteAction"),
            type = "structure",
            name = "EC2ReplaceRouteAction",
            target_id = id.from(_N, "EC2ReplaceRouteAction"),
            target = M.EC2ReplaceRouteAction,
        }),
        EC2DeleteRouteAction = schema.new({
            id = id.from(_N, "RemediationAction", "EC2DeleteRouteAction"),
            type = "structure",
            name = "EC2DeleteRouteAction",
            target_id = id.from(_N, "EC2DeleteRouteAction"),
            target = M.EC2DeleteRouteAction,
        }),
        EC2CopyRouteTableAction = schema.new({
            id = id.from(_N, "RemediationAction", "EC2CopyRouteTableAction"),
            type = "structure",
            name = "EC2CopyRouteTableAction",
            target_id = id.from(_N, "EC2CopyRouteTableAction"),
            target = M.EC2CopyRouteTableAction,
        }),
        EC2ReplaceRouteTableAssociationAction = schema.new({
            id = id.from(_N, "RemediationAction", "EC2ReplaceRouteTableAssociationAction"),
            type = "structure",
            name = "EC2ReplaceRouteTableAssociationAction",
            target_id = id.from(_N, "EC2ReplaceRouteTableAssociationAction"),
            target = M.EC2ReplaceRouteTableAssociationAction,
        }),
        EC2AssociateRouteTableAction = schema.new({
            id = id.from(_N, "RemediationAction", "EC2AssociateRouteTableAction"),
            type = "structure",
            name = "EC2AssociateRouteTableAction",
            target_id = id.from(_N, "EC2AssociateRouteTableAction"),
            target = M.EC2AssociateRouteTableAction,
        }),
        EC2CreateRouteTableAction = schema.new({
            id = id.from(_N, "RemediationAction", "EC2CreateRouteTableAction"),
            type = "structure",
            name = "EC2CreateRouteTableAction",
            target_id = id.from(_N, "EC2CreateRouteTableAction"),
            target = M.EC2CreateRouteTableAction,
        }),
        FMSPolicyUpdateFirewallCreationConfigAction = schema.new({
            id = id.from(_N, "RemediationAction", "FMSPolicyUpdateFirewallCreationConfigAction"),
            type = "structure",
            name = "FMSPolicyUpdateFirewallCreationConfigAction",
            target_id = id.from(_N, "FMSPolicyUpdateFirewallCreationConfigAction"),
            target = M.FMSPolicyUpdateFirewallCreationConfigAction,
        }),
        CreateNetworkAclAction = schema.new({
            id = id.from(_N, "RemediationAction", "CreateNetworkAclAction"),
            type = "structure",
            name = "CreateNetworkAclAction",
            target_id = id.from(_N, "CreateNetworkAclAction"),
            target = M.CreateNetworkAclAction,
        }),
        ReplaceNetworkAclAssociationAction = schema.new({
            id = id.from(_N, "RemediationAction", "ReplaceNetworkAclAssociationAction"),
            type = "structure",
            name = "ReplaceNetworkAclAssociationAction",
            target_id = id.from(_N, "ReplaceNetworkAclAssociationAction"),
            target = M.ReplaceNetworkAclAssociationAction,
        }),
        CreateNetworkAclEntriesAction = schema.new({
            id = id.from(_N, "RemediationAction", "CreateNetworkAclEntriesAction"),
            type = "structure",
            name = "CreateNetworkAclEntriesAction",
            target_id = id.from(_N, "CreateNetworkAclEntriesAction"),
            target = M.CreateNetworkAclEntriesAction,
        }),
        DeleteNetworkAclEntriesAction = schema.new({
            id = id.from(_N, "RemediationAction", "DeleteNetworkAclEntriesAction"),
            type = "structure",
            name = "DeleteNetworkAclEntriesAction",
            target_id = id.from(_N, "DeleteNetworkAclEntriesAction"),
            target = M.DeleteNetworkAclEntriesAction,
        }),
    },
})

M.RemediationActionWithOrder = schema.new({
    id = id.from(_N, "RemediationActionWithOrder"),
    type = "structure",
    members = {
        RemediationAction = schema.new({
            id = id.from(_N, "RemediationActionWithOrder", "RemediationAction"),
            type = "structure",
            name = "RemediationAction",
            target_id = id.from(_N, "RemediationAction"),
            target = M.RemediationAction,
        }),
        Order = schema.new({
            id = id.from(_N, "RemediationActionWithOrder", "Order"),
            type = "integer",
            name = "Order",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.PossibleRemediationAction = schema.new({
    id = id.from(_N, "PossibleRemediationAction"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "PossibleRemediationAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        OrderedRemediationActions = schema.new({
            id = id.from(_N, "PossibleRemediationAction", "OrderedRemediationActions"),
            type = "list",
            name = "OrderedRemediationActions",
            target_id = prelude.Document.id,
            list_member = M.RemediationActionWithOrder,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsDefaultAction = schema.new({
            id = id.from(_N, "PossibleRemediationAction", "IsDefaultAction"),
            type = "boolean",
            name = "IsDefaultAction",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PossibleRemediationActions = schema.new({
    id = id.from(_N, "PossibleRemediationActions"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "PossibleRemediationActions", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Actions = schema.new({
            id = id.from(_N, "PossibleRemediationActions", "Actions"),
            type = "list",
            name = "Actions",
            target_id = prelude.Document.id,
            list_member = M.PossibleRemediationAction,
        }),
    },
})

M.RouteHasOutOfScopeEndpointViolation = schema.new({
    id = id.from(_N, "RouteHasOutOfScopeEndpointViolation"),
    type = "structure",
    members = {
        SubnetId = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        RouteTableId = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "RouteTableId"),
            type = "string",
            name = "RouteTableId",
            target_id = prelude.String.id,
        }),
        ViolatingRoutes = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "ViolatingRoutes"),
            type = "list",
            name = "ViolatingRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "SubnetAvailabilityZone"),
            type = "string",
            name = "SubnetAvailabilityZone",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZoneId = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "SubnetAvailabilityZoneId"),
            type = "string",
            name = "SubnetAvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        CurrentFirewallSubnetRouteTable = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "CurrentFirewallSubnetRouteTable"),
            type = "string",
            name = "CurrentFirewallSubnetRouteTable",
            target_id = prelude.String.id,
        }),
        FirewallSubnetId = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "FirewallSubnetId"),
            type = "string",
            name = "FirewallSubnetId",
            target_id = prelude.String.id,
        }),
        FirewallSubnetRoutes = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "FirewallSubnetRoutes"),
            type = "list",
            name = "FirewallSubnetRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
        InternetGatewayId = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "InternetGatewayId"),
            type = "string",
            name = "InternetGatewayId",
            target_id = prelude.String.id,
        }),
        CurrentInternetGatewayRouteTable = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "CurrentInternetGatewayRouteTable"),
            type = "string",
            name = "CurrentInternetGatewayRouteTable",
            target_id = prelude.String.id,
        }),
        InternetGatewayRoutes = schema.new({
            id = id.from(_N, "RouteHasOutOfScopeEndpointViolation", "InternetGatewayRoutes"),
            type = "list",
            name = "InternetGatewayRoutes",
            target_id = prelude.Document.id,
            list_member = M.Route,
        }),
    },
})

M.ThirdPartyFirewallMissingExpectedRouteTableViolation = schema.new({
    id = id.from(_N, "ThirdPartyFirewallMissingExpectedRouteTableViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingExpectedRouteTableViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        VPC = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingExpectedRouteTableViolation", "VPC"),
            type = "string",
            name = "VPC",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingExpectedRouteTableViolation", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        CurrentRouteTable = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingExpectedRouteTableViolation", "CurrentRouteTable"),
            type = "string",
            name = "CurrentRouteTable",
            target_id = prelude.String.id,
        }),
        ExpectedRouteTable = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingExpectedRouteTableViolation", "ExpectedRouteTable"),
            type = "string",
            name = "ExpectedRouteTable",
            target_id = prelude.String.id,
        }),
    },
})

M.ThirdPartyFirewallMissingFirewallViolation = schema.new({
    id = id.from(_N, "ThirdPartyFirewallMissingFirewallViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingFirewallViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        VPC = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingFirewallViolation", "VPC"),
            type = "string",
            name = "VPC",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingFirewallViolation", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        TargetViolationReason = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingFirewallViolation", "TargetViolationReason"),
            type = "string",
            name = "TargetViolationReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ThirdPartyFirewallMissingSubnetViolation = schema.new({
    id = id.from(_N, "ThirdPartyFirewallMissingSubnetViolation"),
    type = "structure",
    members = {
        ViolationTarget = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingSubnetViolation", "ViolationTarget"),
            type = "string",
            name = "ViolationTarget",
            target_id = prelude.String.id,
        }),
        VPC = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingSubnetViolation", "VPC"),
            type = "string",
            name = "VPC",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingSubnetViolation", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        TargetViolationReason = schema.new({
            id = id.from(_N, "ThirdPartyFirewallMissingSubnetViolation", "TargetViolationReason"),
            type = "string",
            name = "TargetViolationReason",
            target_id = prelude.String.id,
        }),
    },
})

M.WebACLHasIncompatibleConfigurationViolation = schema.new({
    id = id.from(_N, "WebACLHasIncompatibleConfigurationViolation"),
    type = "structure",
    members = {
        WebACLArn = schema.new({
            id = id.from(_N, "WebACLHasIncompatibleConfigurationViolation", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "WebACLHasIncompatibleConfigurationViolation", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.WebACLHasOutOfScopeResourcesViolation = schema.new({
    id = id.from(_N, "WebACLHasOutOfScopeResourcesViolation"),
    type = "structure",
    members = {
        WebACLArn = schema.new({
            id = id.from(_N, "WebACLHasOutOfScopeResourcesViolation", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
        }),
        OutOfScopeResourceList = schema.new({
            id = id.from(_N, "WebACLHasOutOfScopeResourcesViolation", "OutOfScopeResourceList"),
            type = "list",
            name = "OutOfScopeResourceList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResourceViolation = schema.new({
    id = id.from(_N, "ResourceViolation"),
    type = "structure",
    members = {
        AwsVPCSecurityGroupViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "AwsVPCSecurityGroupViolation"),
            type = "structure",
            name = "AwsVPCSecurityGroupViolation",
            target_id = id.from(_N, "AwsVPCSecurityGroupViolation"),
            target = M.AwsVPCSecurityGroupViolation,
        }),
        AwsEc2NetworkInterfaceViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "AwsEc2NetworkInterfaceViolation"),
            type = "structure",
            name = "AwsEc2NetworkInterfaceViolation",
            target_id = id.from(_N, "AwsEc2NetworkInterfaceViolation"),
            target = M.AwsEc2NetworkInterfaceViolation,
        }),
        AwsEc2InstanceViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "AwsEc2InstanceViolation"),
            type = "structure",
            name = "AwsEc2InstanceViolation",
            target_id = id.from(_N, "AwsEc2InstanceViolation"),
            target = M.AwsEc2InstanceViolation,
        }),
        NetworkFirewallMissingFirewallViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallMissingFirewallViolation"),
            type = "structure",
            name = "NetworkFirewallMissingFirewallViolation",
            target_id = id.from(_N, "NetworkFirewallMissingFirewallViolation"),
            target = M.NetworkFirewallMissingFirewallViolation,
        }),
        NetworkFirewallMissingSubnetViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallMissingSubnetViolation"),
            type = "structure",
            name = "NetworkFirewallMissingSubnetViolation",
            target_id = id.from(_N, "NetworkFirewallMissingSubnetViolation"),
            target = M.NetworkFirewallMissingSubnetViolation,
        }),
        NetworkFirewallMissingExpectedRTViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallMissingExpectedRTViolation"),
            type = "structure",
            name = "NetworkFirewallMissingExpectedRTViolation",
            target_id = id.from(_N, "NetworkFirewallMissingExpectedRTViolation"),
            target = M.NetworkFirewallMissingExpectedRTViolation,
        }),
        NetworkFirewallPolicyModifiedViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallPolicyModifiedViolation"),
            type = "structure",
            name = "NetworkFirewallPolicyModifiedViolation",
            target_id = id.from(_N, "NetworkFirewallPolicyModifiedViolation"),
            target = M.NetworkFirewallPolicyModifiedViolation,
        }),
        NetworkFirewallInternetTrafficNotInspectedViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallInternetTrafficNotInspectedViolation"),
            type = "structure",
            name = "NetworkFirewallInternetTrafficNotInspectedViolation",
            target_id = id.from(_N, "NetworkFirewallInternetTrafficNotInspectedViolation"),
            target = M.NetworkFirewallInternetTrafficNotInspectedViolation,
        }),
        NetworkFirewallInvalidRouteConfigurationViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallInvalidRouteConfigurationViolation"),
            type = "structure",
            name = "NetworkFirewallInvalidRouteConfigurationViolation",
            target_id = id.from(_N, "NetworkFirewallInvalidRouteConfigurationViolation"),
            target = M.NetworkFirewallInvalidRouteConfigurationViolation,
        }),
        NetworkFirewallBlackHoleRouteDetectedViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallBlackHoleRouteDetectedViolation"),
            type = "structure",
            name = "NetworkFirewallBlackHoleRouteDetectedViolation",
            target_id = id.from(_N, "NetworkFirewallBlackHoleRouteDetectedViolation"),
            target = M.NetworkFirewallBlackHoleRouteDetectedViolation,
        }),
        NetworkFirewallUnexpectedFirewallRoutesViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallUnexpectedFirewallRoutesViolation"),
            type = "structure",
            name = "NetworkFirewallUnexpectedFirewallRoutesViolation",
            target_id = id.from(_N, "NetworkFirewallUnexpectedFirewallRoutesViolation"),
            target = M.NetworkFirewallUnexpectedFirewallRoutesViolation,
        }),
        NetworkFirewallUnexpectedGatewayRoutesViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallUnexpectedGatewayRoutesViolation"),
            type = "structure",
            name = "NetworkFirewallUnexpectedGatewayRoutesViolation",
            target_id = id.from(_N, "NetworkFirewallUnexpectedGatewayRoutesViolation"),
            target = M.NetworkFirewallUnexpectedGatewayRoutesViolation,
        }),
        NetworkFirewallMissingExpectedRoutesViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "NetworkFirewallMissingExpectedRoutesViolation"),
            type = "structure",
            name = "NetworkFirewallMissingExpectedRoutesViolation",
            target_id = id.from(_N, "NetworkFirewallMissingExpectedRoutesViolation"),
            target = M.NetworkFirewallMissingExpectedRoutesViolation,
        }),
        DnsRuleGroupPriorityConflictViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "DnsRuleGroupPriorityConflictViolation"),
            type = "structure",
            name = "DnsRuleGroupPriorityConflictViolation",
            target_id = id.from(_N, "DnsRuleGroupPriorityConflictViolation"),
            target = M.DnsRuleGroupPriorityConflictViolation,
        }),
        DnsDuplicateRuleGroupViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "DnsDuplicateRuleGroupViolation"),
            type = "structure",
            name = "DnsDuplicateRuleGroupViolation",
            target_id = id.from(_N, "DnsDuplicateRuleGroupViolation"),
            target = M.DnsDuplicateRuleGroupViolation,
        }),
        DnsRuleGroupLimitExceededViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "DnsRuleGroupLimitExceededViolation"),
            type = "structure",
            name = "DnsRuleGroupLimitExceededViolation",
            target_id = id.from(_N, "DnsRuleGroupLimitExceededViolation"),
            target = M.DnsRuleGroupLimitExceededViolation,
        }),
        FirewallSubnetIsOutOfScopeViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "FirewallSubnetIsOutOfScopeViolation"),
            type = "structure",
            name = "FirewallSubnetIsOutOfScopeViolation",
            target_id = id.from(_N, "FirewallSubnetIsOutOfScopeViolation"),
            target = M.FirewallSubnetIsOutOfScopeViolation,
        }),
        RouteHasOutOfScopeEndpointViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "RouteHasOutOfScopeEndpointViolation"),
            type = "structure",
            name = "RouteHasOutOfScopeEndpointViolation",
            target_id = id.from(_N, "RouteHasOutOfScopeEndpointViolation"),
            target = M.RouteHasOutOfScopeEndpointViolation,
        }),
        ThirdPartyFirewallMissingFirewallViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "ThirdPartyFirewallMissingFirewallViolation"),
            type = "structure",
            name = "ThirdPartyFirewallMissingFirewallViolation",
            target_id = id.from(_N, "ThirdPartyFirewallMissingFirewallViolation"),
            target = M.ThirdPartyFirewallMissingFirewallViolation,
        }),
        ThirdPartyFirewallMissingSubnetViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "ThirdPartyFirewallMissingSubnetViolation"),
            type = "structure",
            name = "ThirdPartyFirewallMissingSubnetViolation",
            target_id = id.from(_N, "ThirdPartyFirewallMissingSubnetViolation"),
            target = M.ThirdPartyFirewallMissingSubnetViolation,
        }),
        ThirdPartyFirewallMissingExpectedRouteTableViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "ThirdPartyFirewallMissingExpectedRouteTableViolation"),
            type = "structure",
            name = "ThirdPartyFirewallMissingExpectedRouteTableViolation",
            target_id = id.from(_N, "ThirdPartyFirewallMissingExpectedRouteTableViolation"),
            target = M.ThirdPartyFirewallMissingExpectedRouteTableViolation,
        }),
        FirewallSubnetMissingVPCEndpointViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "FirewallSubnetMissingVPCEndpointViolation"),
            type = "structure",
            name = "FirewallSubnetMissingVPCEndpointViolation",
            target_id = id.from(_N, "FirewallSubnetMissingVPCEndpointViolation"),
            target = M.FirewallSubnetMissingVPCEndpointViolation,
        }),
        InvalidNetworkAclEntriesViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "InvalidNetworkAclEntriesViolation"),
            type = "structure",
            name = "InvalidNetworkAclEntriesViolation",
            target_id = id.from(_N, "InvalidNetworkAclEntriesViolation"),
            target = M.InvalidNetworkAclEntriesViolation,
        }),
        PossibleRemediationActions = schema.new({
            id = id.from(_N, "ResourceViolation", "PossibleRemediationActions"),
            type = "structure",
            name = "PossibleRemediationActions",
            target_id = id.from(_N, "PossibleRemediationActions"),
            target = M.PossibleRemediationActions,
        }),
        WebACLHasIncompatibleConfigurationViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "WebACLHasIncompatibleConfigurationViolation"),
            type = "structure",
            name = "WebACLHasIncompatibleConfigurationViolation",
            target_id = id.from(_N, "WebACLHasIncompatibleConfigurationViolation"),
            target = M.WebACLHasIncompatibleConfigurationViolation,
        }),
        WebACLHasOutOfScopeResourcesViolation = schema.new({
            id = id.from(_N, "ResourceViolation", "WebACLHasOutOfScopeResourcesViolation"),
            type = "structure",
            name = "WebACLHasOutOfScopeResourcesViolation",
            target_id = id.from(_N, "WebACLHasOutOfScopeResourcesViolation"),
            target = M.WebACLHasOutOfScopeResourcesViolation,
        }),
    },
})

M.ViolationDetail = schema.new({
    id = id.from(_N, "ViolationDetail"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "ViolationDetail", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemberAccount = schema.new({
            id = id.from(_N, "ViolationDetail", "MemberAccount"),
            type = "string",
            name = "MemberAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ViolationDetail", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ViolationDetail", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceViolations = schema.new({
            id = id.from(_N, "ViolationDetail", "ResourceViolations"),
            type = "list",
            name = "ResourceViolations",
            target_id = prelude.Document.id,
            list_member = M.ResourceViolation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceTags = schema.new({
            id = id.from(_N, "ViolationDetail", "ResourceTags"),
            type = "list",
            name = "ResourceTags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ResourceDescription = schema.new({
            id = id.from(_N, "ViolationDetail", "ResourceDescription"),
            type = "string",
            name = "ResourceDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.GetViolationDetailsOutput = schema.new({
    id = id.from(_N, "GetViolationDetailsOutput"),
    type = "structure",
    members = {
        ViolationDetail = schema.new({
            id = id.from(_N, "GetViolationDetailsOutput", "ViolationDetail"),
            type = "structure",
            name = "ViolationDetail",
            target_id = id.from(_N, "ViolationDetail"),
            target = M.ViolationDetail,
        }),
    },
})

M.ListAdminAccountsForOrganizationInput = schema.new({
    id = id.from(_N, "ListAdminAccountsForOrganizationInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListAdminAccountsForOrganizationInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAdminAccountsForOrganizationInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAdminAccountsForOrganizationOutput = schema.new({
    id = id.from(_N, "ListAdminAccountsForOrganizationOutput"),
    type = "structure",
    members = {
        AdminAccounts = schema.new({
            id = id.from(_N, "ListAdminAccountsForOrganizationOutput", "AdminAccounts"),
            type = "list",
            name = "AdminAccounts",
            target_id = prelude.Document.id,
            list_member = M.AdminAccountSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAdminAccountsForOrganizationOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAdminsManagingAccountInput = schema.new({
    id = id.from(_N, "ListAdminsManagingAccountInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListAdminsManagingAccountInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAdminsManagingAccountInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAdminsManagingAccountOutput = schema.new({
    id = id.from(_N, "ListAdminsManagingAccountOutput"),
    type = "structure",
    members = {
        AdminAccounts = schema.new({
            id = id.from(_N, "ListAdminsManagingAccountOutput", "AdminAccounts"),
            type = "list",
            name = "AdminAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAdminsManagingAccountOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAppsListsInput = schema.new({
    id = id.from(_N, "ListAppsListsInput"),
    type = "structure",
    members = {
        DefaultLists = schema.new({
            id = id.from(_N, "ListAppsListsInput", "DefaultLists"),
            type = "boolean",
            name = "DefaultLists",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAppsListsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAppsListsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAppsListsOutput = schema.new({
    id = id.from(_N, "ListAppsListsOutput"),
    type = "structure",
    members = {
        AppsLists = schema.new({
            id = id.from(_N, "ListAppsListsOutput", "AppsLists"),
            type = "list",
            name = "AppsLists",
            target_id = prelude.Document.id,
            list_member = M.AppsListDataSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAppsListsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListComplianceStatusInput = schema.new({
    id = id.from(_N, "ListComplianceStatusInput"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "ListComplianceStatusInput", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComplianceStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListComplianceStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EvaluationResult = schema.new({
    id = id.from(_N, "EvaluationResult"),
    type = "structure",
    members = {
        ComplianceStatus = schema.new({
            id = id.from(_N, "EvaluationResult", "ComplianceStatus"),
            type = "string",
            name = "ComplianceStatus",
            target_id = prelude.String.id,
        }),
        ViolatorCount = schema.new({
            id = id.from(_N, "EvaluationResult", "ViolatorCount"),
            type = "long",
            name = "ViolatorCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        EvaluationLimitExceeded = schema.new({
            id = id.from(_N, "EvaluationResult", "EvaluationLimitExceeded"),
            type = "boolean",
            name = "EvaluationLimitExceeded",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PolicyComplianceStatus = schema.new({
    id = id.from(_N, "PolicyComplianceStatus"),
    type = "structure",
    members = {
        PolicyOwner = schema.new({
            id = id.from(_N, "PolicyComplianceStatus", "PolicyOwner"),
            type = "string",
            name = "PolicyOwner",
            target_id = prelude.String.id,
        }),
        PolicyId = schema.new({
            id = id.from(_N, "PolicyComplianceStatus", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        PolicyName = schema.new({
            id = id.from(_N, "PolicyComplianceStatus", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        MemberAccount = schema.new({
            id = id.from(_N, "PolicyComplianceStatus", "MemberAccount"),
            type = "string",
            name = "MemberAccount",
            target_id = prelude.String.id,
        }),
        EvaluationResults = schema.new({
            id = id.from(_N, "PolicyComplianceStatus", "EvaluationResults"),
            type = "list",
            name = "EvaluationResults",
            target_id = prelude.Document.id,
            list_member = M.EvaluationResult,
        }),
        LastUpdated = schema.new({
            id = id.from(_N, "PolicyComplianceStatus", "LastUpdated"),
            type = "timestamp",
            name = "LastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        IssueInfoMap = schema.new({
            id = id.from(_N, "PolicyComplianceStatus", "IssueInfoMap"),
            type = "map",
            name = "IssueInfoMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListComplianceStatusOutput = schema.new({
    id = id.from(_N, "ListComplianceStatusOutput"),
    type = "structure",
    members = {
        PolicyComplianceStatusList = schema.new({
            id = id.from(_N, "ListComplianceStatusOutput", "PolicyComplianceStatusList"),
            type = "list",
            name = "PolicyComplianceStatusList",
            target_id = prelude.Document.id,
            list_member = M.PolicyComplianceStatus,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComplianceStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDiscoveredResourcesInput = schema.new({
    id = id.from(_N, "ListDiscoveredResourcesInput"),
    type = "structure",
    members = {
        MemberAccountIds = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "MemberAccountIds"),
            type = "list",
            name = "MemberAccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DiscoveredResource = schema.new({
    id = id.from(_N, "DiscoveredResource"),
    type = "structure",
    members = {
        URI = schema.new({
            id = id.from(_N, "DiscoveredResource", "URI"),
            type = "string",
            name = "URI",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "DiscoveredResource", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DiscoveredResource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DiscoveredResource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDiscoveredResourcesOutput = schema.new({
    id = id.from(_N, "ListDiscoveredResourcesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.DiscoveredResource,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMemberAccountsInput = schema.new({
    id = id.from(_N, "ListMemberAccountsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMemberAccountsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMemberAccountsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListMemberAccountsOutput = schema.new({
    id = id.from(_N, "ListMemberAccountsOutput"),
    type = "structure",
    members = {
        MemberAccounts = schema.new({
            id = id.from(_N, "ListMemberAccountsOutput", "MemberAccounts"),
            type = "list",
            name = "MemberAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMemberAccountsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPoliciesInput = schema.new({
    id = id.from(_N, "ListPoliciesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPoliciesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPoliciesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PolicySummary = schema.new({
    id = id.from(_N, "PolicySummary"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "PolicySummary", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
        }),
        PolicyId = schema.new({
            id = id.from(_N, "PolicySummary", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
        }),
        PolicyName = schema.new({
            id = id.from(_N, "PolicySummary", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "PolicySummary", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        SecurityServiceType = schema.new({
            id = id.from(_N, "PolicySummary", "SecurityServiceType"),
            type = "string",
            name = "SecurityServiceType",
            target_id = prelude.String.id,
        }),
        RemediationEnabled = schema.new({
            id = id.from(_N, "PolicySummary", "RemediationEnabled"),
            type = "boolean",
            name = "RemediationEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeleteUnusedFMManagedResources = schema.new({
            id = id.from(_N, "PolicySummary", "DeleteUnusedFMManagedResources"),
            type = "boolean",
            name = "DeleteUnusedFMManagedResources",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        PolicyStatus = schema.new({
            id = id.from(_N, "PolicySummary", "PolicyStatus"),
            type = "string",
            name = "PolicyStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPoliciesOutput = schema.new({
    id = id.from(_N, "ListPoliciesOutput"),
    type = "structure",
    members = {
        PolicyList = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "PolicyList"),
            type = "list",
            name = "PolicyList",
            target_id = prelude.Document.id,
            list_member = M.PolicySummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProtocolsListsInput = schema.new({
    id = id.from(_N, "ListProtocolsListsInput"),
    type = "structure",
    members = {
        DefaultLists = schema.new({
            id = id.from(_N, "ListProtocolsListsInput", "DefaultLists"),
            type = "boolean",
            name = "DefaultLists",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProtocolsListsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListProtocolsListsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProtocolsListDataSummary = schema.new({
    id = id.from(_N, "ProtocolsListDataSummary"),
    type = "structure",
    members = {
        ListArn = schema.new({
            id = id.from(_N, "ProtocolsListDataSummary", "ListArn"),
            type = "string",
            name = "ListArn",
            target_id = prelude.String.id,
        }),
        ListId = schema.new({
            id = id.from(_N, "ProtocolsListDataSummary", "ListId"),
            type = "string",
            name = "ListId",
            target_id = prelude.String.id,
        }),
        ListName = schema.new({
            id = id.from(_N, "ProtocolsListDataSummary", "ListName"),
            type = "string",
            name = "ListName",
            target_id = prelude.String.id,
        }),
        ProtocolsList = schema.new({
            id = id.from(_N, "ProtocolsListDataSummary", "ProtocolsList"),
            type = "list",
            name = "ProtocolsList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListProtocolsListsOutput = schema.new({
    id = id.from(_N, "ListProtocolsListsOutput"),
    type = "structure",
    members = {
        ProtocolsLists = schema.new({
            id = id.from(_N, "ListProtocolsListsOutput", "ProtocolsLists"),
            type = "list",
            name = "ProtocolsLists",
            target_id = prelude.Document.id,
            list_member = M.ProtocolsListDataSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProtocolsListsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceSetResourcesInput = schema.new({
    id = id.from(_N, "ListResourceSetResourcesInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "ListResourceSetResourcesInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResourceSetResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceSetResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        URI = schema.new({
            id = id.from(_N, "Resource", "URI"),
            type = "string",
            name = "URI",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "Resource", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceSetResourcesOutput = schema.new({
    id = id.from(_N, "ListResourceSetResourcesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListResourceSetResourcesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceSetResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceSetsInput = schema.new({
    id = id.from(_N, "ListResourceSetsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResourceSetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListResourceSetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ResourceSetSummary = schema.new({
    id = id.from(_N, "ResourceSetSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResourceSetSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResourceSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ResourceSetSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LastUpdateTime = schema.new({
            id = id.from(_N, "ResourceSetSummary", "LastUpdateTime"),
            type = "timestamp",
            name = "LastUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        ResourceSetStatus = schema.new({
            id = id.from(_N, "ResourceSetSummary", "ResourceSetStatus"),
            type = "string",
            name = "ResourceSetStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceSetsOutput = schema.new({
    id = id.from(_N, "ListResourceSetsOutput"),
    type = "structure",
    members = {
        ResourceSets = schema.new({
            id = id.from(_N, "ListResourceSetsOutput", "ResourceSets"),
            type = "list",
            name = "ResourceSets",
            target_id = prelude.Document.id,
            list_member = M.ResourceSetSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceSetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
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
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
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

M.ListThirdPartyFirewallFirewallPoliciesInput = schema.new({
    id = id.from(_N, "ListThirdPartyFirewallFirewallPoliciesInput"),
    type = "structure",
    members = {
        ThirdPartyFirewall = schema.new({
            id = id.from(_N, "ListThirdPartyFirewallFirewallPoliciesInput", "ThirdPartyFirewall"),
            type = "string",
            name = "ThirdPartyFirewall",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListThirdPartyFirewallFirewallPoliciesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListThirdPartyFirewallFirewallPoliciesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThirdPartyFirewallFirewallPolicy = schema.new({
    id = id.from(_N, "ThirdPartyFirewallFirewallPolicy"),
    type = "structure",
    members = {
        FirewallPolicyId = schema.new({
            id = id.from(_N, "ThirdPartyFirewallFirewallPolicy", "FirewallPolicyId"),
            type = "string",
            name = "FirewallPolicyId",
            target_id = prelude.String.id,
        }),
        FirewallPolicyName = schema.new({
            id = id.from(_N, "ThirdPartyFirewallFirewallPolicy", "FirewallPolicyName"),
            type = "string",
            name = "FirewallPolicyName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListThirdPartyFirewallFirewallPoliciesOutput = schema.new({
    id = id.from(_N, "ListThirdPartyFirewallFirewallPoliciesOutput"),
    type = "structure",
    members = {
        ThirdPartyFirewallFirewallPolicies = schema.new({
            id = id.from(_N, "ListThirdPartyFirewallFirewallPoliciesOutput", "ThirdPartyFirewallFirewallPolicies"),
            type = "list",
            name = "ThirdPartyFirewallFirewallPolicies",
            target_id = prelude.Document.id,
            list_member = M.ThirdPartyFirewallFirewallPolicy,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListThirdPartyFirewallFirewallPoliciesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAdminAccountInput = schema.new({
    id = id.from(_N, "PutAdminAccountInput"),
    type = "structure",
    members = {
        AdminAccount = schema.new({
            id = id.from(_N, "PutAdminAccountInput", "AdminAccount"),
            type = "string",
            name = "AdminAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdminScope = schema.new({
            id = id.from(_N, "PutAdminAccountInput", "AdminScope"),
            type = "structure",
            name = "AdminScope",
            target_id = id.from(_N, "AdminScope"),
            target = M.AdminScope,
        }),
    },
})

M.PutAdminAccountOutput = schema.new({
    id = id.from(_N, "PutAdminAccountOutput"),
    type = "structure",
})

M.PutAppsListInput = schema.new({
    id = id.from(_N, "PutAppsListInput"),
    type = "structure",
    members = {
        AppsList = schema.new({
            id = id.from(_N, "PutAppsListInput", "AppsList"),
            type = "structure",
            name = "AppsList",
            target_id = id.from(_N, "AppsListData"),
            target = M.AppsListData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagList = schema.new({
            id = id.from(_N, "PutAppsListInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutAppsListOutput = schema.new({
    id = id.from(_N, "PutAppsListOutput"),
    type = "structure",
    members = {
        AppsList = schema.new({
            id = id.from(_N, "PutAppsListOutput", "AppsList"),
            type = "structure",
            name = "AppsList",
            target_id = id.from(_N, "AppsListData"),
            target = M.AppsListData,
        }),
        AppsListArn = schema.new({
            id = id.from(_N, "PutAppsListOutput", "AppsListArn"),
            type = "string",
            name = "AppsListArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PutNotificationChannelInput = schema.new({
    id = id.from(_N, "PutNotificationChannelInput"),
    type = "structure",
    members = {
        SnsTopicArn = schema.new({
            id = id.from(_N, "PutNotificationChannelInput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsRoleName = schema.new({
            id = id.from(_N, "PutNotificationChannelInput", "SnsRoleName"),
            type = "string",
            name = "SnsRoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutNotificationChannelOutput = schema.new({
    id = id.from(_N, "PutNotificationChannelOutput"),
    type = "structure",
})

M.PutPolicyInput = schema.new({
    id = id.from(_N, "PutPolicyInput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "PutPolicyInput", "Policy"),
            type = "structure",
            name = "Policy",
            target_id = id.from(_N, "Policy"),
            target = M.Policy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagList = schema.new({
            id = id.from(_N, "PutPolicyInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutPolicyOutput = schema.new({
    id = id.from(_N, "PutPolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "PutPolicyOutput", "Policy"),
            type = "structure",
            name = "Policy",
            target_id = id.from(_N, "Policy"),
            target = M.Policy,
        }),
        PolicyArn = schema.new({
            id = id.from(_N, "PutPolicyOutput", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PutProtocolsListInput = schema.new({
    id = id.from(_N, "PutProtocolsListInput"),
    type = "structure",
    members = {
        ProtocolsList = schema.new({
            id = id.from(_N, "PutProtocolsListInput", "ProtocolsList"),
            type = "structure",
            name = "ProtocolsList",
            target_id = id.from(_N, "ProtocolsListData"),
            target = M.ProtocolsListData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagList = schema.new({
            id = id.from(_N, "PutProtocolsListInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutProtocolsListOutput = schema.new({
    id = id.from(_N, "PutProtocolsListOutput"),
    type = "structure",
    members = {
        ProtocolsList = schema.new({
            id = id.from(_N, "PutProtocolsListOutput", "ProtocolsList"),
            type = "structure",
            name = "ProtocolsList",
            target_id = id.from(_N, "ProtocolsListData"),
            target = M.ProtocolsListData,
        }),
        ProtocolsListArn = schema.new({
            id = id.from(_N, "PutProtocolsListOutput", "ProtocolsListArn"),
            type = "string",
            name = "ProtocolsListArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourceSetInput = schema.new({
    id = id.from(_N, "PutResourceSetInput"),
    type = "structure",
    members = {
        ResourceSet = schema.new({
            id = id.from(_N, "PutResourceSetInput", "ResourceSet"),
            type = "structure",
            name = "ResourceSet",
            target_id = id.from(_N, "ResourceSet"),
            target = M.ResourceSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagList = schema.new({
            id = id.from(_N, "PutResourceSetInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutResourceSetOutput = schema.new({
    id = id.from(_N, "PutResourceSetOutput"),
    type = "structure",
    members = {
        ResourceSet = schema.new({
            id = id.from(_N, "PutResourceSetOutput", "ResourceSet"),
            type = "structure",
            name = "ResourceSet",
            target_id = id.from(_N, "ResourceSet"),
            target = M.ResourceSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceSetArn = schema.new({
            id = id.from(_N, "PutResourceSetOutput", "ResourceSetArn"),
            type = "string",
            name = "ResourceSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
        TagList = schema.new({
            id = id.from(_N, "TagResourceInput", "TagList"),
            type = "list",
            name = "TagList",
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
