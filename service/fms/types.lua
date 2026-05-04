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
            member_type = "string",
        },
        AllAccountsEnabled = {
            type = "boolean",
        },
        ExcludeSpecifiedAccounts = {
            type = "boolean",
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
            member_type = "string",
        },
        AllOrganizationalUnitsEnabled = {
            type = "boolean",
        },
        ExcludeSpecifiedOrganizationalUnits = {
            type = "boolean",
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
            member_type = "string",
        },
        AllPolicyTypesEnabled = {
            type = "boolean",
        },
    },
}

M.RegionScope = {
    type = "structure",
    members = {
        Regions = {
            type = "list",
            member_type = "string",
        },
        AllRegionsEnabled = {
            type = "boolean",
        },
    },
}

M.AdminScope = {
    type = "structure",
    members = {
        AccountScope = {
            type = "structure",
        },
        OrganizationalUnitScope = {
            type = "structure",
        },
        RegionScope = {
            type = "structure",
        },
        PolicyTypeScope = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PreviousAppsList = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        AdminScope = {
            type = "structure",
        },
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
        },
    },
}

M.GetAppsListOutput = {
    type = "structure",
    members = {
        AppsList = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        EvaluationLimitExceeded = {
            type = "boolean",
        },
        ExpiredAt = {
            type = "timestamp",
        },
        IssueInfoMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetComplianceDetailOutput = {
    type = "structure",
    members = {
        PolicyComplianceDetail = {
            type = "structure",
        },
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
            type = "number",
        },
        Type = {
            type = "number",
        },
    },
}

M.NetworkAclPortRange = {
    type = "structure",
    members = {
        From = {
            type = "number",
        },
        To = {
            type = "number",
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
        IcmpTypeCode = {
            type = "structure",
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortRange = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ForceRemediateForFirstEntries = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        LastEntries = {
            type = "list",
            member_type = "structure",
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
        NetworkAclEntrySet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        NetworkFirewallPolicy = {
            type = "structure",
        },
        ThirdPartyFirewallPolicy = {
            type = "structure",
        },
        NetworkAclCommonPolicy = {
            type = "structure",
        },
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
        PolicyOption = {
            type = "structure",
        },
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
        SecurityServicePolicyData = {
            type = "structure",
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
        ResourceTypeList = {
            type = "list",
            member_type = "string",
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
        ExcludeResourceTags = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RemediationEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DeleteUnusedFMManagedResources = {
            type = "boolean",
        },
        IncludeMap = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ExcludeMap = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ResourceSetIds = {
            type = "list",
            member_type = "string",
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
        Policy = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PreviousProtocolsList = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.GetProtocolsListOutput = {
    type = "structure",
    members = {
        ProtocolsList = {
            type = "structure",
        },
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
            member_type = "string",
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
        ResourceSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
            type = "number",
        },
        ToPort = {
            type = "number",
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
        RemediationResult = {
            type = "structure",
        },
        IsDefaultAction = {
            type = "boolean",
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
            member_type = "structure",
        },
        PossibleSecurityGroupRemediationActions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        ConflictingPolicyId = {
            type = "string",
        },
        UnavailablePriorities = {
            type = "list",
            member_type = "number",
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
        EntryDetail = {
            type = "structure",
        },
        EntryRuleNumber = {
            type = "number",
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
        ExpectedEntry = {
            type = "structure",
        },
        ExpectedEvaluationOrder = {
            type = "string",
        },
        ActualEvaluationOrder = {
            type = "string",
        },
        EntryAtExpectedEvaluationOrder = {
            type = "structure",
        },
        EntriesWithConflicts = {
            type = "list",
            member_type = "structure",
        },
        EntryViolationReasons = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        AllowedTargets = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        IsRouteTableUsedInDifferentAZ = {
            type = "boolean",
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
            member_type = "structure",
        },
        ActualFirewallSubnetRoutes = {
            type = "list",
            member_type = "structure",
        },
        InternetGatewayId = {
            type = "string",
        },
        CurrentInternetGatewayRouteTable = {
            type = "string",
        },
        ExpectedInternetGatewayRoutes = {
            type = "list",
            member_type = "structure",
        },
        ActualInternetGatewayRoutes = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        RouteTableId = {
            type = "string",
        },
        IsRouteTableUsedInDifferentAZ = {
            type = "boolean",
        },
        ViolatingRoute = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ActualFirewallSubnetRoutes = {
            type = "list",
            member_type = "structure",
        },
        InternetGatewayId = {
            type = "string",
        },
        CurrentInternetGatewayRouteTable = {
            type = "string",
        },
        ExpectedInternetGatewayRoutes = {
            type = "list",
            member_type = "structure",
        },
        ActualInternetGatewayRoutes = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        Override = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.NetworkFirewallPolicyDescription = {
    type = "structure",
    members = {
        StatelessRuleGroups = {
            type = "list",
            member_type = "structure",
        },
        StatelessDefaultActions = {
            type = "list",
            member_type = "string",
        },
        StatelessFragmentDefaultActions = {
            type = "list",
            member_type = "string",
        },
        StatelessCustomActions = {
            type = "list",
            member_type = "string",
        },
        StatefulRuleGroups = {
            type = "list",
            member_type = "structure",
        },
        StatefulDefaultActions = {
            type = "list",
            member_type = "string",
        },
        StatefulEngineOptions = {
            type = "structure",
        },
    },
}

M.NetworkFirewallPolicyModifiedViolation = {
    type = "structure",
    members = {
        ViolationTarget = {
            type = "string",
        },
        CurrentPolicyDescription = {
            type = "structure",
        },
        ExpectedPolicyDescription = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
        Vpc = {
            type = "structure",
        },
        FMSCanRemediate = {
            type = "boolean",
        },
    },
}

M.CreateNetworkAclEntriesAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        NetworkAclId = {
            type = "structure",
        },
        NetworkAclEntriesToBeCreated = {
            type = "list",
            member_type = "structure",
        },
        FMSCanRemediate = {
            type = "boolean",
        },
    },
}

M.DeleteNetworkAclEntriesAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        NetworkAclId = {
            type = "structure",
        },
        NetworkAclEntriesToBeDeleted = {
            type = "list",
            member_type = "structure",
        },
        FMSCanRemediate = {
            type = "boolean",
        },
    },
}

M.EC2AssociateRouteTableAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        RouteTableId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SubnetId = {
            type = "structure",
        },
        GatewayId = {
            type = "structure",
        },
    },
}

M.EC2CopyRouteTableAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        VpcId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RouteTableId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        VpcEndpointId = {
            type = "structure",
        },
        GatewayId = {
            type = "structure",
        },
        RouteTableId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EC2CreateRouteTableAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        VpcId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        RouteTableId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        GatewayId = {
            type = "structure",
        },
        RouteTableId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EC2ReplaceRouteTableAssociationAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        AssociationId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RouteTableId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        AssociationId = {
            type = "structure",
        },
        NetworkAclId = {
            type = "structure",
        },
        FMSCanRemediate = {
            type = "boolean",
        },
    },
}

M.RemediationAction = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        EC2CreateRouteAction = {
            type = "structure",
        },
        EC2ReplaceRouteAction = {
            type = "structure",
        },
        EC2DeleteRouteAction = {
            type = "structure",
        },
        EC2CopyRouteTableAction = {
            type = "structure",
        },
        EC2ReplaceRouteTableAssociationAction = {
            type = "structure",
        },
        EC2AssociateRouteTableAction = {
            type = "structure",
        },
        EC2CreateRouteTableAction = {
            type = "structure",
        },
        FMSPolicyUpdateFirewallCreationConfigAction = {
            type = "structure",
        },
        CreateNetworkAclAction = {
            type = "structure",
        },
        ReplaceNetworkAclAssociationAction = {
            type = "structure",
        },
        CreateNetworkAclEntriesAction = {
            type = "structure",
        },
        DeleteNetworkAclEntriesAction = {
            type = "structure",
        },
    },
}

M.RemediationActionWithOrder = {
    type = "structure",
    members = {
        RemediationAction = {
            type = "structure",
        },
        Order = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IsDefaultAction = {
            type = "boolean",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        InternetGatewayId = {
            type = "string",
        },
        CurrentInternetGatewayRouteTable = {
            type = "string",
        },
        InternetGatewayRoutes = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.ResourceViolation = {
    type = "structure",
    members = {
        AwsVPCSecurityGroupViolation = {
            type = "structure",
        },
        AwsEc2NetworkInterfaceViolation = {
            type = "structure",
        },
        AwsEc2InstanceViolation = {
            type = "structure",
        },
        NetworkFirewallMissingFirewallViolation = {
            type = "structure",
        },
        NetworkFirewallMissingSubnetViolation = {
            type = "structure",
        },
        NetworkFirewallMissingExpectedRTViolation = {
            type = "structure",
        },
        NetworkFirewallPolicyModifiedViolation = {
            type = "structure",
        },
        NetworkFirewallInternetTrafficNotInspectedViolation = {
            type = "structure",
        },
        NetworkFirewallInvalidRouteConfigurationViolation = {
            type = "structure",
        },
        NetworkFirewallBlackHoleRouteDetectedViolation = {
            type = "structure",
        },
        NetworkFirewallUnexpectedFirewallRoutesViolation = {
            type = "structure",
        },
        NetworkFirewallUnexpectedGatewayRoutesViolation = {
            type = "structure",
        },
        NetworkFirewallMissingExpectedRoutesViolation = {
            type = "structure",
        },
        DnsRuleGroupPriorityConflictViolation = {
            type = "structure",
        },
        DnsDuplicateRuleGroupViolation = {
            type = "structure",
        },
        DnsRuleGroupLimitExceededViolation = {
            type = "structure",
        },
        FirewallSubnetIsOutOfScopeViolation = {
            type = "structure",
        },
        RouteHasOutOfScopeEndpointViolation = {
            type = "structure",
        },
        ThirdPartyFirewallMissingFirewallViolation = {
            type = "structure",
        },
        ThirdPartyFirewallMissingSubnetViolation = {
            type = "structure",
        },
        ThirdPartyFirewallMissingExpectedRouteTableViolation = {
            type = "structure",
        },
        FirewallSubnetMissingVPCEndpointViolation = {
            type = "structure",
        },
        InvalidNetworkAclEntriesViolation = {
            type = "structure",
        },
        PossibleRemediationActions = {
            type = "structure",
        },
        WebACLHasIncompatibleConfigurationViolation = {
            type = "structure",
        },
        WebACLHasOutOfScopeResourcesViolation = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
        ResourceDescription = {
            type = "string",
        },
    },
}

M.GetViolationDetailsOutput = {
    type = "structure",
    members = {
        ViolationDetail = {
            type = "structure",
        },
    },
}

M.ListAdminAccountsForOrganizationInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListAdminAccountsForOrganizationOutput = {
    type = "structure",
    members = {
        AdminAccounts = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListAdminsManagingAccountOutput = {
    type = "structure",
    members = {
        AdminAccounts = {
            type = "list",
            member_type = "string",
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
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        EvaluationLimitExceeded = {
            type = "boolean",
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
            member_type = "structure",
        },
        LastUpdated = {
            type = "timestamp",
        },
        IssueInfoMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListComplianceStatusOutput = {
    type = "structure",
    members = {
        PolicyComplianceStatusList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListMemberAccountsOutput = {
    type = "structure",
    members = {
        MemberAccounts = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
        },
        DeleteUnusedFMManagedResources = {
            type = "boolean",
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
            member_type = "structure",
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
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.ListProtocolsListsOutput = {
    type = "structure",
    members = {
        ProtocolsLists = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        AdminScope = {
            type = "structure",
        },
    },
}

M.PutAdminAccountOutput = {
    type = "structure",
}

M.PutAppsListInput = {
    type = "structure",
    members = {
        AppsList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutAppsListOutput = {
    type = "structure",
    members = {
        AppsList = {
            type = "structure",
        },
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
        Policy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutPolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "structure",
        },
        PolicyArn = {
            type = "string",
        },
    },
}

M.PutProtocolsListInput = {
    type = "structure",
    members = {
        ProtocolsList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutProtocolsListOutput = {
    type = "structure",
    members = {
        ProtocolsList = {
            type = "structure",
        },
        ProtocolsListArn = {
            type = "string",
        },
    },
}

M.PutResourceSetInput = {
    type = "structure",
    members = {
        ResourceSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutResourceSetOutput = {
    type = "structure",
    members = {
        ResourceSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "string",
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
