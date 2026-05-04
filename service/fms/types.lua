local M = {}

M.AccountRoleStatus = {
    Ready = "READY",
    Creating = "CREATING",
    PendingDeletion = "PENDING_DELETION",
    Deleting = "DELETING",
    Deleted = "DELETED",
}

M.AccountScope = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member = { type = "string" },
        },
        AllAccountsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExcludeSpecifiedAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ActionTarget = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.OrganizationStatus = {
    Onboarding = "ONBOARDING",
    OnboardingComplete = "ONBOARDING_COMPLETE",
    Offboarding = "OFFBOARDING",
    OffboardingComplete = "OFFBOARDING_COMPLETE",
}

M.AdminAccountSummary = {
    type = "structure",
    members = {
        AdminAccount = {
            type = "string",
        },
        DefaultAdmin = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Status = {
            type = "string",
        },
    },
}

M.OrganizationalUnitScope = {
    type = "structure",
    members = {
        OrganizationalUnits = {
            type = "list",
            member = { type = "string" },
        },
        AllOrganizationalUnitsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExcludeSpecifiedOrganizationalUnits = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SecurityServiceType = {
    WAF = "WAF",
    WAFV2 = "WAFV2",
    SHIELD_ADVANCED = "SHIELD_ADVANCED",
    SECURITY_GROUPS_COMMON = "SECURITY_GROUPS_COMMON",
    SECURITY_GROUPS_CONTENT_AUDIT = "SECURITY_GROUPS_CONTENT_AUDIT",
    SECURITY_GROUPS_USAGE_AUDIT = "SECURITY_GROUPS_USAGE_AUDIT",
    NETWORK_FIREWALL = "NETWORK_FIREWALL",
    DNS_FIREWALL = "DNS_FIREWALL",
    THIRD_PARTY_FIREWALL = "THIRD_PARTY_FIREWALL",
    IMPORT_NETWORK_FIREWALL = "IMPORT_NETWORK_FIREWALL",
    NETWORK_ACL_COMMON = "NETWORK_ACL_COMMON",
}

M.PolicyTypeScope = {
    type = "structure",
    members = {
        PolicyTypes = {
            type = "list",
            member = { type = "string" },
        },
        AllPolicyTypesEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RegionScope = {
    type = "structure",
    members = {
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        AllRegionsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AdminScope = {
    type = "structure",
    members = {
        AccountScope = M.AccountScope,
        OrganizationalUnitScope = M.OrganizationalUnitScope,
        RegionScope = M.RegionScope,
        PolicyTypeScope = M.PolicyTypeScope,
    },
}

M.App = {
    type = "structure",
    members = {
        AppName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.AppsListData = {
    type = "structure",
    members = {
        ListId = {
            type = "string",
        },
        ListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ListUpdateToken = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        AppsList = {
            type = "list",
            member = M.App,
            traits = {
                required = true,
            },
        },
        PreviousAppsList = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.AppsListDataSummary = {
    type = "structure",
    members = {
        ListArn = {
            type = "string",
        },
        ListId = {
            type = "string",
        },
        ListName = {
            type = "string",
        },
        AppsList = {
            type = "list",
            member = M.App,
        },
    },
}

M.AssociateAdminAccountInput = {
    type = "structure",
    members = {
        AdminAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAdminAccountOutput = {
    type = "structure",
}

M.InternalErrorException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThirdPartyFirewall = {
    PALO_ALTO_NETWORKS_CLOUD_NGFW = "PALO_ALTO_NETWORKS_CLOUD_NGFW",
    FORTIGATE_CLOUD_NATIVE_FIREWALL = "FORTIGATE_CLOUD_NATIVE_FIREWALL",
}

M.AssociateThirdPartyFirewallInput = {
    type = "structure",
    members = {
        ThirdPartyFirewall = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThirdPartyFirewallAssociationStatus = {
    ONBOARDING = "ONBOARDING",
    ONBOARD_COMPLETE = "ONBOARD_COMPLETE",
    OFFBOARDING = "OFFBOARDING",
    OFFBOARD_COMPLETE = "OFFBOARD_COMPLETE",
    NOT_EXIST = "NOT_EXIST",
}

M.AssociateThirdPartyFirewallOutput = {
    type = "structure",
    members = {
        ThirdPartyFirewallStatus = {
            type = "string",
        },
    },
}

M.AwsEc2NetworkInterfaceViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        ViolatingSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsEc2InstanceViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        AwsEc2NetworkInterfaceViolations = {
            type = "list",
            member = M.AwsEc2NetworkInterfaceViolation,
        },
    },
}

M.BatchAssociateResourceInput = {
    type = "structure",
    members = {
        ResourceSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FailedItemReason = {
    NotValidArn = "NOT_VALID_ARN",
    NotValidPartition = "NOT_VALID_PARTITION",
    NotValidRegion = "NOT_VALID_REGION",
    NotValidService = "NOT_VALID_SERVICE",
    NotValidResourceType = "NOT_VALID_RESOURCE_TYPE",
    NotValidAccountId = "NOT_VALID_ACCOUNT_ID",
}

M.FailedItem = {
    type = "structure",
    members = {
        URI = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.BatchAssociateResourceOutput = {
    type = "structure",
    members = {
        ResourceSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailedItems = {
            type = "list",
            member = M.FailedItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateResourceInput = {
    type = "structure",
    members = {
        ResourceSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateResourceOutput = {
    type = "structure",
    members = {
        ResourceSetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailedItems = {
            type = "list",
            member = M.FailedItem,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppsListInput = {
    type = "structure",
    members = {
        ListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppsListOutput = {
    type = "structure",
}

M.DeleteNotificationChannelInput = {
    type = "structure",
}

M.DeleteNotificationChannelOutput = {
    type = "structure",
}

M.DeletePolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteAllPolicyResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeletePolicyOutput = {
    type = "structure",
}

M.DeleteProtocolsListInput = {
    type = "structure",
    members = {
        ListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProtocolsListOutput = {
    type = "structure",
}

M.DeleteResourceSetInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourceSetOutput = {
    type = "structure",
}

M.DisassociateAdminAccountInput = {
    type = "structure",
}

M.DisassociateAdminAccountOutput = {
    type = "structure",
}

M.DisassociateThirdPartyFirewallInput = {
    type = "structure",
    members = {
        ThirdPartyFirewall = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateThirdPartyFirewallOutput = {
    type = "structure",
    members = {
        ThirdPartyFirewallStatus = {
            type = "string",
        },
    },
}

M.GetAdminAccountInput = {
    type = "structure",
}

M.GetAdminAccountOutput = {
    type = "structure",
    members = {
        AdminAccount = {
            type = "string",
        },
        RoleStatus = {
            type = "string",
        },
    },
}

M.GetAdminScopeInput = {
    type = "structure",
    members = {
        AdminAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAdminScopeOutput = {
    type = "structure",
    members = {
        AdminScope = M.AdminScope,
        Status = {
            type = "string",
        },
    },
}

M.GetAppsListInput = {
    type = "structure",
    members = {
        ListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultList = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetAppsListOutput = {
    type = "structure",
    members = {
        AppsList = M.AppsListData,
        AppsListArn = {
            type = "string",
        },
    },
}

M.GetComplianceDetailInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DependentServiceName = {
    AWSConfig = "AWSCONFIG",
    AWSWAF = "AWSWAF",
    AWSShieldAdvanced = "AWSSHIELD_ADVANCED",
    AWSVirtualPrivateCloud = "AWSVPC",
}

M.ViolationReason = {
    WebAclMissingRuleGroup = "WEB_ACL_MISSING_RULE_GROUP",
    ResourceMissingWebAcl = "RESOURCE_MISSING_WEB_ACL",
    ResourceIncorrectWebAcl = "RESOURCE_INCORRECT_WEB_ACL",
    ResourceMissingShieldProtection = "RESOURCE_MISSING_SHIELD_PROTECTION",
    ResourceMissingWebaclOrShieldProtection = "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION",
    ResourceMissingSecurityGroup = "RESOURCE_MISSING_SECURITY_GROUP",
    ResourceViolatesAuditSecurityGroup = "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP",
    SecurityGroupUnused = "SECURITY_GROUP_UNUSED",
    SecurityGroupRedundant = "SECURITY_GROUP_REDUNDANT",
    FMSCreatedSecurityGroupEdited = "FMS_CREATED_SECURITY_GROUP_EDITED",
    MissingFirewall = "MISSING_FIREWALL",
    MissingFirewallSubnetInAZ = "MISSING_FIREWALL_SUBNET_IN_AZ",
    MissingExpectedRouteTable = "MISSING_EXPECTED_ROUTE_TABLE",
    NetworkFirewallPolicyModified = "NETWORK_FIREWALL_POLICY_MODIFIED",
    FirewallSubnetIsOutOfScope = "FIREWALL_SUBNET_IS_OUT_OF_SCOPE",
    InternetGatewayMissingExpectedRoute = "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE",
    FirewallSubnetMissingExpectedRoute = "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE",
    UnexpectedFirewallRoutes = "UNEXPECTED_FIREWALL_ROUTES",
    UnexpectedTargetGatewayRoutes = "UNEXPECTED_TARGET_GATEWAY_ROUTES",
    TrafficInspectionCrossesAZBoundary = "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY",
    InvalidRouteConfiguration = "INVALID_ROUTE_CONFIGURATION",
    MissingTargetGateway = "MISSING_TARGET_GATEWAY",
    InternetTrafficNotInspected = "INTERNET_TRAFFIC_NOT_INSPECTED",
    BlackHoleRouteDetected = "BLACK_HOLE_ROUTE_DETECTED",
    BlackHoleRouteDetectedInFirewallSubnet = "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET",
    ResourceMissingDnsFirewall = "RESOURCE_MISSING_DNS_FIREWALL",
    RouteHasOutOfScopeEndpoint = "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT",
    FirewallSubnetMissingVPCEndpoint = "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT",
    InvalidNetworkAclEntry = "INVALID_NETWORK_ACL_ENTRY",
    WebACLConfigurationOrScopeOfUse = "WEB_ACL_CONFIGURATION_OR_SCOPE_OF_USE",
}

M.ComplianceViolator = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        ViolationReason = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PolicyComplianceDetail = {
    type = "structure",
    members = {
        PolicyOwner = {
            type = "string",
        },
        PolicyId = {
            type = "string",
        },
        MemberAccount = {
            type = "string",
        },
        Violators = {
            type = "list",
            member = M.ComplianceViolator,
        },
        EvaluationLimitExceeded = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExpiredAt = {
            type = "timestamp",
        },
        IssueInfoMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetComplianceDetailOutput = {
    type = "structure",
    members = {
        PolicyComplianceDetail = M.PolicyComplianceDetail,
    },
}

M.GetNotificationChannelInput = {
    type = "structure",
}

M.GetNotificationChannelOutput = {
    type = "structure",
    members = {
        SnsTopicArn = {
            type = "string",
        },
        SnsRoleName = {
            type = "string",
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomerPolicyScopeIdType = {
    ACCOUNT = "ACCOUNT",
    ORG_UNIT = "ORG_UNIT",
}

M.CustomerPolicyStatus = {
    ACTIVE = "ACTIVE",
    OUT_OF_ADMIN_SCOPE = "OUT_OF_ADMIN_SCOPE",
}

M.ResourceTagLogicalOperator = {
    AND = "AND",
    OR = "OR",
}

M.ResourceTag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.NetworkAclIcmpTypeCode = {
    type = "structure",
    members = {
        Code = {
            type = "integer",
        },
        Type = {
            type = "integer",
        },
    },
}

M.NetworkAclPortRange = {
    type = "structure",
    members = {
        From = {
            type = "integer",
        },
        To = {
            type = "integer",
        },
    },
}

M.NetworkAclRuleAction = {
    ALLOW = "allow",
    DENY = "deny",
}

M.NetworkAclEntry = {
    type = "structure",
    members = {
        IcmpTypeCode = M.NetworkAclIcmpTypeCode,
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortRange = M.NetworkAclPortRange,
        CidrBlock = {
            type = "string",
        },
        Ipv6CidrBlock = {
            type = "string",
        },
        RuleAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Egress = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkAclEntrySet = {
    type = "structure",
    members = {
        FirstEntries = {
            type = "list",
            member = M.NetworkAclEntry,
        },
        ForceRemediateForFirstEntries = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        LastEntries = {
            type = "list",
            member = M.NetworkAclEntry,
        },
        ForceRemediateForLastEntries = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkAclCommonPolicy = {
    type = "structure",
    members = {
        NetworkAclEntrySet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkAclEntrySet }),
    },
}

M.FirewallDeploymentModel = {
    CENTRALIZED = "CENTRALIZED",
    DISTRIBUTED = "DISTRIBUTED",
}

M.NetworkFirewallPolicy = {
    type = "structure",
    members = {
        FirewallDeploymentModel = {
            type = "string",
        },
    },
}

M.ThirdPartyFirewallPolicy = {
    type = "structure",
    members = {
        FirewallDeploymentModel = {
            type = "string",
        },
    },
}

M.PolicyOption = {
    type = "structure",
    members = {
        NetworkFirewallPolicy = M.NetworkFirewallPolicy,
        ThirdPartyFirewallPolicy = M.ThirdPartyFirewallPolicy,
        NetworkAclCommonPolicy = M.NetworkAclCommonPolicy,
    },
}

M.SecurityServicePolicyData = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedServiceData = {
            type = "string",
        },
        PolicyOption = M.PolicyOption,
    },
}

M.Policy = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyUpdateToken = {
            type = "string",
        },
        SecurityServicePolicyData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityServicePolicyData }),
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypeList = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        ExcludeResourceTags = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        RemediationEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        DeleteUnusedFMManagedResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ExcludeMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ResourceSetIds = {
            type = "list",
            member = { type = "string" },
        },
        PolicyDescription = {
            type = "string",
        },
        PolicyStatus = {
            type = "string",
        },
        ResourceTagLogicalOperator = {
            type = "string",
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    members = {
        Policy = M.Policy,
        PolicyArn = {
            type = "string",
        },
    },
}

M.InvalidTypeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetProtectionStatusInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberAccountId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetProtectionStatusOutput = {
    type = "structure",
    members = {
        AdminAccountId = {
            type = "string",
        },
        ServiceType = {
            type = "string",
        },
        Data = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetProtocolsListInput = {
    type = "structure",
    members = {
        ListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultList = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ProtocolsListData = {
    type = "structure",
    members = {
        ListId = {
            type = "string",
        },
        ListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ListUpdateToken = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        ProtocolsList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PreviousProtocolsList = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.GetProtocolsListOutput = {
    type = "structure",
    members = {
        ProtocolsList = M.ProtocolsListData,
        ProtocolsListArn = {
            type = "string",
        },
    },
}

M.GetResourceSetInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceSetStatus = {
    ACTIVE = "ACTIVE",
    OUT_OF_ADMIN_SCOPE = "OUT_OF_ADMIN_SCOPE",
}

M.ResourceSet = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        UpdateToken = {
            type = "string",
        },
        ResourceTypeList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        ResourceSetStatus = {
            type = "string",
        },
    },
}

M.GetResourceSetOutput = {
    type = "structure",
    members = {
        ResourceSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceSet }),
        ResourceSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetThirdPartyFirewallAssociationStatusInput = {
    type = "structure",
    members = {
        ThirdPartyFirewall = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MarketplaceSubscriptionOnboardingStatus = {
    NO_SUBSCRIPTION = "NO_SUBSCRIPTION",
    NOT_COMPLETE = "NOT_COMPLETE",
    COMPLETE = "COMPLETE",
}

M.GetThirdPartyFirewallAssociationStatusOutput = {
    type = "structure",
    members = {
        ThirdPartyFirewallStatus = {
            type = "string",
        },
        MarketplaceOnboardingStatus = {
            type = "string",
        },
    },
}

M.GetViolationDetailsInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PartialMatch = {
    type = "structure",
    members = {
        Reference = {
            type = "string",
        },
        TargetViolationReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemediationActionType = {
    Remove = "REMOVE",
    Modify = "MODIFY",
}

M.SecurityGroupRuleDescription = {
    type = "structure",
    members = {
        IPV4Range = {
            type = "string",
        },
        IPV6Range = {
            type = "string",
        },
        PrefixListId = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        FromPort = {
            type = "long",
        },
        ToPort = {
            type = "long",
        },
    },
}

M.SecurityGroupRemediationAction = {
    type = "structure",
    members = {
        RemediationActionType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RemediationResult = M.SecurityGroupRuleDescription,
        IsDefaultAction = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AwsVPCSecurityGroupViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        ViolationTargetDescription = {
            type = "string",
        },
        PartialMatches = {
            type = "list",
            member = M.PartialMatch,
        },
        PossibleSecurityGroupRemediationActions = {
            type = "list",
            member = M.SecurityGroupRemediationAction,
        },
    },
}

M.DnsDuplicateRuleGroupViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        ViolationTargetDescription = {
            type = "string",
        },
    },
}

M.DnsRuleGroupLimitExceededViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        ViolationTargetDescription = {
            type = "string",
        },
        NumberOfRuleGroupsAlreadyAssociated = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DnsRuleGroupPriorityConflictViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        ViolationTargetDescription = {
            type = "string",
        },
        ConflictingPriority = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ConflictingPolicyId = {
            type = "string",
        },
        UnavailablePriorities = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.FirewallSubnetIsOutOfScopeViolation = {
    type = "structure",
    members = {
        FirewallSubnetId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "string",
        },
        SubnetAvailabilityZoneId = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
    },
}

M.FirewallSubnetMissingVPCEndpointViolation = {
    type = "structure",
    members = {
        FirewallSubnetId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "string",
        },
        SubnetAvailabilityZoneId = {
            type = "string",
        },
    },
}

M.EntryType = {
    FMSManagedFirstEntry = "FMS_MANAGED_FIRST_ENTRY",
    FMSManagedLastEntry = "FMS_MANAGED_LAST_ENTRY",
    CustomEntry = "CUSTOM_ENTRY",
}

M.EntryDescription = {
    type = "structure",
    members = {
        EntryDetail = M.NetworkAclEntry,
        EntryRuleNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        EntryType = {
            type = "string",
        },
    },
}

M.EntryViolationReason = {
    MissingExpectedEntry = "MISSING_EXPECTED_ENTRY",
    IncorrectEntryOrder = "INCORRECT_ENTRY_ORDER",
    EntryConflict = "ENTRY_CONFLICT",
}

M.EntryViolation = {
    type = "structure",
    members = {
        ExpectedEntry = M.EntryDescription,
        ExpectedEvaluationOrder = {
            type = "string",
        },
        ActualEvaluationOrder = {
            type = "string",
        },
        EntryAtExpectedEvaluationOrder = M.EntryDescription,
        EntriesWithConflicts = {
            type = "list",
            member = M.EntryDescription,
        },
        EntryViolationReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidNetworkAclEntriesViolation = {
    type = "structure",
    members = {
        Vpc = {
            type = "string",
        },
        Subnet = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "string",
        },
        CurrentAssociatedNetworkAcl = {
            type = "string",
        },
        EntryViolations = {
            type = "list",
            member = M.EntryViolation,
        },
    },
}

M.DestinationType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
    PrefixList = "PREFIX_LIST",
}

M.TargetType = {
    Gateway = "GATEWAY",
    CarrierGateway = "CARRIER_GATEWAY",
    Instance = "INSTANCE",
    LocalGateway = "LOCAL_GATEWAY",
    NatGateway = "NAT_GATEWAY",
    NetworkInterface = "NETWORK_INTERFACE",
    VPCEndpoint = "VPC_ENDPOINT",
    VPCPeeringConnection = "VPC_PEERING_CONNECTION",
    EgressOnlyInternetGateway = "EGRESS_ONLY_INTERNET_GATEWAY",
    TransitGateway = "TRANSIT_GATEWAY",
}

M.Route = {
    type = "structure",
    members = {
        DestinationType = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        Destination = {
            type = "string",
        },
        Target = {
            type = "string",
        },
    },
}

M.NetworkFirewallBlackHoleRouteDetectedViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        RouteTableId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        ViolatingRoutes = {
            type = "list",
            member = M.Route,
        },
    },
}

M.ExpectedRoute = {
    type = "structure",
    members = {
        IpV4Cidr = {
            type = "string",
        },
        PrefixListId = {
            type = "string",
        },
        IpV6Cidr = {
            type = "string",
        },
        ContributingSubnets = {
            type = "list",
            member = { type = "string" },
        },
        AllowedTargets = {
            type = "list",
            member = { type = "string" },
        },
        RouteTableId = {
            type = "string",
        },
    },
}

M.NetworkFirewallInternetTrafficNotInspectedViolation = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "string",
        },
        RouteTableId = {
            type = "string",
        },
        ViolatingRoutes = {
            type = "list",
            member = M.Route,
        },
        IsRouteTableUsedInDifferentAZ = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CurrentFirewallSubnetRouteTable = {
            type = "string",
        },
        ExpectedFirewallEndpoint = {
            type = "string",
        },
        FirewallSubnetId = {
            type = "string",
        },
        ExpectedFirewallSubnetRoutes = {
            type = "list",
            member = M.ExpectedRoute,
        },
        ActualFirewallSubnetRoutes = {
            type = "list",
            member = M.Route,
        },
        InternetGatewayId = {
            type = "string",
        },
        CurrentInternetGatewayRouteTable = {
            type = "string",
        },
        ExpectedInternetGatewayRoutes = {
            type = "list",
            member = M.ExpectedRoute,
        },
        ActualInternetGatewayRoutes = {
            type = "list",
            member = M.Route,
        },
        VpcId = {
            type = "string",
        },
    },
}

M.NetworkFirewallInvalidRouteConfigurationViolation = {
    type = "structure",
    members = {
        AffectedSubnets = {
            type = "list",
            member = { type = "string" },
        },
        RouteTableId = {
            type = "string",
        },
        IsRouteTableUsedInDifferentAZ = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ViolatingRoute = M.Route,
        CurrentFirewallSubnetRouteTable = {
            type = "string",
        },
        ExpectedFirewallEndpoint = {
            type = "string",
        },
        ActualFirewallEndpoint = {
            type = "string",
        },
        ExpectedFirewallSubnetId = {
            type = "string",
        },
        ActualFirewallSubnetId = {
            type = "string",
        },
        ExpectedFirewallSubnetRoutes = {
            type = "list",
            member = M.ExpectedRoute,
        },
        ActualFirewallSubnetRoutes = {
            type = "list",
            member = M.Route,
        },
        InternetGatewayId = {
            type = "string",
        },
        CurrentInternetGatewayRouteTable = {
            type = "string",
        },
        ExpectedInternetGatewayRoutes = {
            type = "list",
            member = M.ExpectedRoute,
        },
        ActualInternetGatewayRoutes = {
            type = "list",
            member = M.Route,
        },
        VpcId = {
            type = "string",
        },
    },
}

M.NetworkFirewallMissingExpectedRoutesViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        ExpectedRoutes = {
            type = "list",
            member = M.ExpectedRoute,
        },
        VpcId = {
            type = "string",
        },
    },
}

M.NetworkFirewallMissingExpectedRTViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        VPC = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        CurrentRouteTable = {
            type = "string",
        },
        ExpectedRouteTable = {
            type = "string",
        },
    },
}

M.NetworkFirewallMissingFirewallViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        VPC = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        TargetViolationReason = {
            type = "string",
        },
    },
}

M.NetworkFirewallMissingSubnetViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        VPC = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        TargetViolationReason = {
            type = "string",
        },
    },
}

M.RuleOrder = {
    STRICT_ORDER = "STRICT_ORDER",
    DEFAULT_ACTION_ORDER = "DEFAULT_ACTION_ORDER",
}

M.StreamExceptionPolicy = {
    DROP = "DROP",
    CONTINUE = "CONTINUE",
    REJECT = "REJECT",
    FMS_IGNORE = "FMS_IGNORE",
}

M.StatefulEngineOptions = {
    type = "structure",
    members = {
        RuleOrder = {
            type = "string",
        },
        StreamExceptionPolicy = {
            type = "string",
        },
    },
}

M.NetworkFirewallOverrideAction = {
    DROP_TO_ALERT = "DROP_TO_ALERT",
}

M.NetworkFirewallStatefulRuleGroupOverride = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
    },
}

M.StatefulRuleGroup = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        Override = M.NetworkFirewallStatefulRuleGroupOverride,
    },
}

M.StatelessRuleGroup = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
    },
}

M.NetworkFirewallPolicyDescription = {
    type = "structure",
    members = {
        StatelessRuleGroups = {
            type = "list",
            member = M.StatelessRuleGroup,
        },
        StatelessDefaultActions = {
            type = "list",
            member = { type = "string" },
        },
        StatelessFragmentDefaultActions = {
            type = "list",
            member = { type = "string" },
        },
        StatelessCustomActions = {
            type = "list",
            member = { type = "string" },
        },
        StatefulRuleGroups = {
            type = "list",
            member = M.StatefulRuleGroup,
        },
        StatefulDefaultActions = {
            type = "list",
            member = { type = "string" },
        },
        StatefulEngineOptions = M.StatefulEngineOptions,
    },
}

M.NetworkFirewallPolicyModifiedViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        CurrentPolicyDescription = M.NetworkFirewallPolicyDescription,
        ExpectedPolicyDescription = M.NetworkFirewallPolicyDescription,
    },
}

M.NetworkFirewallUnexpectedFirewallRoutesViolation = {
    type = "structure",
    members = {
        FirewallSubnetId = {
            type = "string",
        },
        ViolatingRoutes = {
            type = "list",
            member = M.Route,
        },
        RouteTableId = {
            type = "string",
        },
        FirewallEndpoint = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.NetworkFirewallUnexpectedGatewayRoutesViolation = {
    type = "structure",
    members = {
        GatewayId = {
            type = "string",
        },
        ViolatingRoutes = {
            type = "list",
            member = M.Route,
        },
        RouteTableId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.CreateNetworkAclAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Vpc = M.ActionTarget,
        FMSCanRemediate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateNetworkAclEntriesAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        NetworkAclId = M.ActionTarget,
        NetworkAclEntriesToBeCreated = {
            type = "list",
            member = M.EntryDescription,
        },
        FMSCanRemediate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteNetworkAclEntriesAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        NetworkAclId = M.ActionTarget,
        NetworkAclEntriesToBeDeleted = {
            type = "list",
            member = M.EntryDescription,
        },
        FMSCanRemediate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EC2AssociateRouteTableAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        RouteTableId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
        SubnetId = M.ActionTarget,
        GatewayId = M.ActionTarget,
    },
}

M.EC2CopyRouteTableAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        VpcId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
        RouteTableId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
    },
}

M.EC2CreateRouteAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        DestinationCidrBlock = {
            type = "string",
        },
        DestinationPrefixListId = {
            type = "string",
        },
        DestinationIpv6CidrBlock = {
            type = "string",
        },
        VpcEndpointId = M.ActionTarget,
        GatewayId = M.ActionTarget,
        RouteTableId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
    },
}

M.EC2CreateRouteTableAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        VpcId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
    },
}

M.EC2DeleteRouteAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        DestinationCidrBlock = {
            type = "string",
        },
        DestinationPrefixListId = {
            type = "string",
        },
        DestinationIpv6CidrBlock = {
            type = "string",
        },
        RouteTableId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
    },
}

M.EC2ReplaceRouteAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        DestinationCidrBlock = {
            type = "string",
        },
        DestinationPrefixListId = {
            type = "string",
        },
        DestinationIpv6CidrBlock = {
            type = "string",
        },
        GatewayId = M.ActionTarget,
        RouteTableId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
    },
}

M.EC2ReplaceRouteTableAssociationAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        AssociationId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
        RouteTableId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionTarget }),
    },
}

M.FMSPolicyUpdateFirewallCreationConfigAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        FirewallCreationConfig = {
            type = "string",
        },
    },
}

M.ReplaceNetworkAclAssociationAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        AssociationId = M.ActionTarget,
        NetworkAclId = M.ActionTarget,
        FMSCanRemediate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RemediationAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        EC2CreateRouteAction = M.EC2CreateRouteAction,
        EC2ReplaceRouteAction = M.EC2ReplaceRouteAction,
        EC2DeleteRouteAction = M.EC2DeleteRouteAction,
        EC2CopyRouteTableAction = M.EC2CopyRouteTableAction,
        EC2ReplaceRouteTableAssociationAction = M.EC2ReplaceRouteTableAssociationAction,
        EC2AssociateRouteTableAction = M.EC2AssociateRouteTableAction,
        EC2CreateRouteTableAction = M.EC2CreateRouteTableAction,
        FMSPolicyUpdateFirewallCreationConfigAction = M.FMSPolicyUpdateFirewallCreationConfigAction,
        CreateNetworkAclAction = M.CreateNetworkAclAction,
        ReplaceNetworkAclAssociationAction = M.ReplaceNetworkAclAssociationAction,
        CreateNetworkAclEntriesAction = M.CreateNetworkAclEntriesAction,
        DeleteNetworkAclEntriesAction = M.DeleteNetworkAclEntriesAction,
    },
}

M.RemediationActionWithOrder = {
    type = "structure",
    members = {
        RemediationAction = M.RemediationAction,
        Order = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.PossibleRemediationAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        OrderedRemediationActions = {
            type = "list",
            member = M.RemediationActionWithOrder,
            traits = {
                required = true,
            },
        },
        IsDefaultAction = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PossibleRemediationActions = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Actions = {
            type = "list",
            member = M.PossibleRemediationAction,
        },
    },
}

M.RouteHasOutOfScopeEndpointViolation = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        RouteTableId = {
            type = "string",
        },
        ViolatingRoutes = {
            type = "list",
            member = M.Route,
        },
        SubnetAvailabilityZone = {
            type = "string",
        },
        SubnetAvailabilityZoneId = {
            type = "string",
        },
        CurrentFirewallSubnetRouteTable = {
            type = "string",
        },
        FirewallSubnetId = {
            type = "string",
        },
        FirewallSubnetRoutes = {
            type = "list",
            member = M.Route,
        },
        InternetGatewayId = {
            type = "string",
        },
        CurrentInternetGatewayRouteTable = {
            type = "string",
        },
        InternetGatewayRoutes = {
            type = "list",
            member = M.Route,
        },
    },
}

M.ThirdPartyFirewallMissingExpectedRouteTableViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        VPC = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        CurrentRouteTable = {
            type = "string",
        },
        ExpectedRouteTable = {
            type = "string",
        },
    },
}

M.ThirdPartyFirewallMissingFirewallViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        VPC = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        TargetViolationReason = {
            type = "string",
        },
    },
}

M.ThirdPartyFirewallMissingSubnetViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        VPC = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        TargetViolationReason = {
            type = "string",
        },
    },
}

M.WebACLHasIncompatibleConfigurationViolation = {
    type = "structure",
    members = {
        WebACLArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.WebACLHasOutOfScopeResourcesViolation = {
    type = "structure",
    members = {
        WebACLArn = {
            type = "string",
        },
        OutOfScopeResourceList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResourceViolation = {
    type = "structure",
    members = {
        AwsVPCSecurityGroupViolation = M.AwsVPCSecurityGroupViolation,
        AwsEc2NetworkInterfaceViolation = M.AwsEc2NetworkInterfaceViolation,
        AwsEc2InstanceViolation = M.AwsEc2InstanceViolation,
        NetworkFirewallMissingFirewallViolation = M.NetworkFirewallMissingFirewallViolation,
        NetworkFirewallMissingSubnetViolation = M.NetworkFirewallMissingSubnetViolation,
        NetworkFirewallMissingExpectedRTViolation = M.NetworkFirewallMissingExpectedRTViolation,
        NetworkFirewallPolicyModifiedViolation = M.NetworkFirewallPolicyModifiedViolation,
        NetworkFirewallInternetTrafficNotInspectedViolation = M.NetworkFirewallInternetTrafficNotInspectedViolation,
        NetworkFirewallInvalidRouteConfigurationViolation = M.NetworkFirewallInvalidRouteConfigurationViolation,
        NetworkFirewallBlackHoleRouteDetectedViolation = M.NetworkFirewallBlackHoleRouteDetectedViolation,
        NetworkFirewallUnexpectedFirewallRoutesViolation = M.NetworkFirewallUnexpectedFirewallRoutesViolation,
        NetworkFirewallUnexpectedGatewayRoutesViolation = M.NetworkFirewallUnexpectedGatewayRoutesViolation,
        NetworkFirewallMissingExpectedRoutesViolation = M.NetworkFirewallMissingExpectedRoutesViolation,
        DnsRuleGroupPriorityConflictViolation = M.DnsRuleGroupPriorityConflictViolation,
        DnsDuplicateRuleGroupViolation = M.DnsDuplicateRuleGroupViolation,
        DnsRuleGroupLimitExceededViolation = M.DnsRuleGroupLimitExceededViolation,
        FirewallSubnetIsOutOfScopeViolation = M.FirewallSubnetIsOutOfScopeViolation,
        RouteHasOutOfScopeEndpointViolation = M.RouteHasOutOfScopeEndpointViolation,
        ThirdPartyFirewallMissingFirewallViolation = M.ThirdPartyFirewallMissingFirewallViolation,
        ThirdPartyFirewallMissingSubnetViolation = M.ThirdPartyFirewallMissingSubnetViolation,
        ThirdPartyFirewallMissingExpectedRouteTableViolation = M.ThirdPartyFirewallMissingExpectedRouteTableViolation,
        FirewallSubnetMissingVPCEndpointViolation = M.FirewallSubnetMissingVPCEndpointViolation,
        InvalidNetworkAclEntriesViolation = M.InvalidNetworkAclEntriesViolation,
        PossibleRemediationActions = M.PossibleRemediationActions,
        WebACLHasIncompatibleConfigurationViolation = M.WebACLHasIncompatibleConfigurationViolation,
        WebACLHasOutOfScopeResourcesViolation = M.WebACLHasOutOfScopeResourcesViolation,
    },
}

M.ViolationDetail = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceViolations = {
            type = "list",
            member = M.ResourceViolation,
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.Tag,
        },
        ResourceDescription = {
            type = "string",
        },
    },
}

M.GetViolationDetailsOutput = {
    type = "structure",
    members = {
        ViolationDetail = M.ViolationDetail,
    },
}

M.ListAdminAccountsForOrganizationInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAdminAccountsForOrganizationOutput = {
    type = "structure",
    members = {
        AdminAccounts = {
            type = "list",
            member = M.AdminAccountSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAdminsManagingAccountInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAdminsManagingAccountOutput = {
    type = "structure",
    members = {
        AdminAccounts = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAppsListsInput = {
    type = "structure",
    members = {
        DefaultLists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAppsListsOutput = {
    type = "structure",
    members = {
        AppsLists = {
            type = "list",
            member = M.AppsListDataSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListComplianceStatusInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PolicyComplianceStatusType = {
    Compliant = "COMPLIANT",
    NonCompliant = "NON_COMPLIANT",
}

M.EvaluationResult = {
    type = "structure",
    members = {
        ComplianceStatus = {
            type = "string",
        },
        ViolatorCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        EvaluationLimitExceeded = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PolicyComplianceStatus = {
    type = "structure",
    members = {
        PolicyOwner = {
            type = "string",
        },
        PolicyId = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
        MemberAccount = {
            type = "string",
        },
        EvaluationResults = {
            type = "list",
            member = M.EvaluationResult,
        },
        LastUpdated = {
            type = "timestamp",
        },
        IssueInfoMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListComplianceStatusOutput = {
    type = "structure",
    members = {
        PolicyComplianceStatusList = {
            type = "list",
            member = M.PolicyComplianceStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDiscoveredResourcesInput = {
    type = "structure",
    members = {
        MemberAccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DiscoveredResource = {
    type = "structure",
    members = {
        URI = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ListDiscoveredResourcesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.DiscoveredResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMemberAccountsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListMemberAccountsOutput = {
    type = "structure",
    members = {
        MemberAccounts = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPoliciesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PolicySummary = {
    type = "structure",
    members = {
        PolicyArn = {
            type = "string",
        },
        PolicyId = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        SecurityServiceType = {
            type = "string",
        },
        RemediationEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeleteUnusedFMManagedResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PolicyStatus = {
            type = "string",
        },
    },
}

M.ListPoliciesOutput = {
    type = "structure",
    members = {
        PolicyList = {
            type = "list",
            member = M.PolicySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProtocolsListsInput = {
    type = "structure",
    members = {
        DefaultLists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtocolsListDataSummary = {
    type = "structure",
    members = {
        ListArn = {
            type = "string",
        },
        ListId = {
            type = "string",
        },
        ListName = {
            type = "string",
        },
        ProtocolsList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListProtocolsListsOutput = {
    type = "structure",
    members = {
        ProtocolsLists = {
            type = "list",
            member = M.ProtocolsListDataSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceSetResourcesInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        URI = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
    },
}

M.ListResourceSetResourcesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.Resource,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceSetsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ResourceSetSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        ResourceSetStatus = {
            type = "string",
        },
    },
}

M.ListResourceSetsOutput = {
    type = "structure",
    members = {
        ResourceSets = {
            type = "list",
            member = M.ResourceSetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListThirdPartyFirewallFirewallPoliciesInput = {
    type = "structure",
    members = {
        ThirdPartyFirewall = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ThirdPartyFirewallFirewallPolicy = {
    type = "structure",
    members = {
        FirewallPolicyId = {
            type = "string",
        },
        FirewallPolicyName = {
            type = "string",
        },
    },
}

M.ListThirdPartyFirewallFirewallPoliciesOutput = {
    type = "structure",
    members = {
        ThirdPartyFirewallFirewallPolicies = {
            type = "list",
            member = M.ThirdPartyFirewallFirewallPolicy,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutAdminAccountInput = {
    type = "structure",
    members = {
        AdminAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdminScope = M.AdminScope,
    },
}

M.PutAdminAccountOutput = {
    type = "structure",
}

M.PutAppsListInput = {
    type = "structure",
    members = {
        AppsList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppsListData }),
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAppsListOutput = {
    type = "structure",
    members = {
        AppsList = M.AppsListData,
        AppsListArn = {
            type = "string",
        },
    },
}

M.PutNotificationChannelInput = {
    type = "structure",
    members = {
        SnsTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsRoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutNotificationChannelOutput = {
    type = "structure",
}

M.PutPolicyInput = {
    type = "structure",
    members = {
        Policy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Policy }),
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutPolicyOutput = {
    type = "structure",
    members = {
        Policy = M.Policy,
        PolicyArn = {
            type = "string",
        },
    },
}

M.PutProtocolsListInput = {
    type = "structure",
    members = {
        ProtocolsList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtocolsListData }),
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutProtocolsListOutput = {
    type = "structure",
    members = {
        ProtocolsList = M.ProtocolsListData,
        ProtocolsListArn = {
            type = "string",
        },
    },
}

M.PutResourceSetInput = {
    type = "structure",
    members = {
        ResourceSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceSet }),
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutResourceSetOutput = {
    type = "structure",
    members = {
        ResourceSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceSet }),
        ResourceSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagList = {
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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

return M
