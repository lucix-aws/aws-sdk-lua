local M = {}

M.AcceptAdministratorInvitationInput = {
    type = "structure",
    id = "AcceptAdministratorInvitationInput",
    members = {
        AdministratorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptAdministratorInvitationOutput = {
    type = "structure",
    id = "AcceptAdministratorInvitationOutput",
}

M.InternalException = {
    type = "structure",
    id = "InternalException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.InvalidAccessException = {
    type = "structure",
    id = "InvalidAccessException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.AcceptInvitationInput = {
    type = "structure",
    id = "AcceptInvitationInput",
    members = {
        MasterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptInvitationOutput = {
    type = "structure",
    id = "AcceptInvitationOutput",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.AccountDetails = {
    type = "structure",
    id = "AccountDetails",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
        },
    },
}

M.AwsApiCallActionDomainDetails = {
    type = "structure",
    id = "AwsApiCallActionDomainDetails",
    members = {
        Domain = {
            type = "string",
        },
    },
}

M.City = {
    type = "structure",
    id = "City",
    members = {
        CityName = {
            type = "string",
        },
    },
}

M.Country = {
    type = "structure",
    id = "Country",
    members = {
        CountryCode = {
            type = "string",
        },
        CountryName = {
            type = "string",
        },
    },
}

M.GeoLocation = {
    type = "structure",
    id = "GeoLocation",
    members = {
        Lon = {
            type = "double",
        },
        Lat = {
            type = "double",
        },
    },
}

M.IpOrganizationDetails = {
    type = "structure",
    id = "IpOrganizationDetails",
    members = {
        Asn = {
            type = "integer",
        },
        AsnOrg = {
            type = "string",
        },
        Isp = {
            type = "string",
        },
        Org = {
            type = "string",
        },
    },
}

M.ActionRemoteIpDetails = {
    type = "structure",
    id = "ActionRemoteIpDetails",
    members = {
        IpAddressV4 = {
            type = "string",
        },
        Organization = M.IpOrganizationDetails,
        Country = M.Country,
        City = M.City,
        GeoLocation = M.GeoLocation,
    },
}

M.AwsApiCallAction = {
    type = "structure",
    id = "AwsApiCallAction",
    members = {
        Api = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        CallerType = {
            type = "string",
        },
        RemoteIpDetails = M.ActionRemoteIpDetails,
        DomainDetails = M.AwsApiCallActionDomainDetails,
        AffectedResources = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        FirstSeen = {
            type = "string",
        },
        LastSeen = {
            type = "string",
        },
    },
}

M.DnsRequestAction = {
    type = "structure",
    id = "DnsRequestAction",
    members = {
        Domain = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        Blocked = {
            type = "boolean",
        },
    },
}

M.ActionLocalPortDetails = {
    type = "structure",
    id = "ActionLocalPortDetails",
    members = {
        Port = {
            type = "integer",
        },
        PortName = {
            type = "string",
        },
    },
}

M.ActionRemotePortDetails = {
    type = "structure",
    id = "ActionRemotePortDetails",
    members = {
        Port = {
            type = "integer",
        },
        PortName = {
            type = "string",
        },
    },
}

M.NetworkConnectionAction = {
    type = "structure",
    id = "NetworkConnectionAction",
    members = {
        ConnectionDirection = {
            type = "string",
        },
        RemoteIpDetails = M.ActionRemoteIpDetails,
        RemotePortDetails = M.ActionRemotePortDetails,
        LocalPortDetails = M.ActionLocalPortDetails,
        Protocol = {
            type = "string",
        },
        Blocked = {
            type = "boolean",
        },
    },
}

M.ActionLocalIpDetails = {
    type = "structure",
    id = "ActionLocalIpDetails",
    members = {
        IpAddressV4 = {
            type = "string",
        },
    },
}

M.PortProbeDetail = {
    type = "structure",
    id = "PortProbeDetail",
    members = {
        LocalPortDetails = M.ActionLocalPortDetails,
        LocalIpDetails = M.ActionLocalIpDetails,
        RemoteIpDetails = M.ActionRemoteIpDetails,
    },
}

M.PortProbeAction = {
    type = "structure",
    id = "PortProbeAction",
    members = {
        PortProbeDetails = {
            type = "list",
            member = M.PortProbeDetail,
        },
        Blocked = {
            type = "boolean",
        },
    },
}

M.Action = {
    type = "structure",
    id = "Action",
    members = {
        ActionType = {
            type = "string",
        },
        NetworkConnectionAction = M.NetworkConnectionAction,
        AwsApiCallAction = M.AwsApiCallAction,
        DnsRequestAction = M.DnsRequestAction,
        PortProbeAction = M.PortProbeAction,
    },
}

M.NoteUpdate = {
    type = "structure",
    id = "NoteUpdate",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedFinding = {
    type = "structure",
    id = "RelatedFinding",
    members = {
        ProductArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SeverityLabel = {
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.SeverityUpdate = {
    type = "structure",
    id = "SeverityUpdate",
    members = {
        Normalized = {
            type = "integer",
        },
        Product = {
            type = "double",
        },
        Label = {
            type = "string",
        },
    },
}

M.VerificationState = {
    UNKNOWN = "UNKNOWN",
    TRUE_POSITIVE = "TRUE_POSITIVE",
    FALSE_POSITIVE = "FALSE_POSITIVE",
    BENIGN_POSITIVE = "BENIGN_POSITIVE",
}

M.WorkflowStatus = {
    NEW = "NEW",
    NOTIFIED = "NOTIFIED",
    RESOLVED = "RESOLVED",
    SUPPRESSED = "SUPPRESSED",
}

M.WorkflowUpdate = {
    type = "structure",
    id = "WorkflowUpdate",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AutomationRulesFindingFieldsUpdate = {
    type = "structure",
    id = "AutomationRulesFindingFieldsUpdate",
    members = {
        Note = M.NoteUpdate,
        Severity = M.SeverityUpdate,
        VerificationState = {
            type = "string",
        },
        Confidence = {
            type = "integer",
        },
        Criticality = {
            type = "integer",
        },
        Types = {
            type = "list",
            member = { type = "string" },
        },
        UserDefinedFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Workflow = M.WorkflowUpdate,
        RelatedFindings = {
            type = "list",
            member = M.RelatedFinding,
        },
    },
}

M.AutomationRulesActionType = {
    FINDING_FIELDS_UPDATE = "FINDING_FIELDS_UPDATE",
}

M.AutomationRulesAction = {
    type = "structure",
    id = "AutomationRulesAction",
    members = {
        Type = {
            type = "string",
        },
        FindingFieldsUpdate = M.AutomationRulesFindingFieldsUpdate,
    },
}

M.ActionTarget = {
    type = "structure",
    id = "ActionTarget",
    members = {
        ActionTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActorSessionMfaStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ActorSession = {
    type = "structure",
    id = "ActorSession",
    members = {
        Uid = {
            type = "string",
        },
        MfaStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "long",
        },
        Issuer = {
            type = "string",
        },
    },
}

M.UserAccount = {
    type = "structure",
    id = "UserAccount",
    members = {
        Uid = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ActorUser = {
    type = "structure",
    id = "ActorUser",
    members = {
        Name = {
            type = "string",
        },
        Uid = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        CredentialUid = {
            type = "string",
        },
        Account = M.UserAccount,
    },
}

M.Actor = {
    type = "structure",
    id = "Actor",
    members = {
        Id = {
            type = "string",
        },
        User = M.ActorUser,
        Session = M.ActorSession,
    },
}

M.Adjustment = {
    type = "structure",
    id = "Adjustment",
    members = {
        Metric = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.AdminStatus = {
    ENABLED = "ENABLED",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
}

M.AdminAccount = {
    type = "structure",
    id = "AdminAccount",
    members = {
        AccountId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AggregatorV2 = {
    type = "structure",
    id = "AggregatorV2",
    members = {
        AggregatorV2Arn = {
            type = "string",
        },
    },
}

M.AllowedOperators = {
    AND = "AND",
    OR = "OR",
}

M.AssociatedStandard = {
    type = "structure",
    id = "AssociatedStandard",
    members = {
        StandardsId = {
            type = "string",
        },
    },
}

M.ConfigurationPolicyAssociationStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.AssociationType = {
    INHERITED = "INHERITED",
    APPLIED = "APPLIED",
}

M.AssociationFilters = {
    type = "structure",
    id = "AssociationFilters",
    members = {
        ConfigurationPolicyId = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
        AssociationStatus = {
            type = "string",
        },
    },
}

M.AssociationStateDetails = {
    type = "structure",
    id = "AssociationStateDetails",
    members = {
        State = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.AssociationSetDetails = {
    type = "structure",
    id = "AssociationSetDetails",
    members = {
        AssociationState = M.AssociationStateDetails,
        GatewayId = {
            type = "string",
        },
        Main = {
            type = "boolean",
        },
        RouteTableAssociationId = {
            type = "string",
        },
        RouteTableId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
    },
}

M.AssociationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutoEnableStandards = {
    NONE = "NONE",
    DEFAULT = "DEFAULT",
}

M.ExternalIntegrationConfiguration = {
    type = "structure",
    id = "ExternalIntegrationConfiguration",
    members = {
        ConnectorArn = {
            type = "string",
        },
    },
}

M.AutomationRulesFindingFieldsUpdateV2 = {
    type = "structure",
    id = "AutomationRulesFindingFieldsUpdateV2",
    members = {
        SeverityId = {
            type = "integer",
        },
        Comment = {
            type = "string",
        },
        StatusId = {
            type = "integer",
        },
    },
}

M.AutomationRulesActionTypeV2 = {
    FINDING_FIELDS_UPDATE = "FINDING_FIELDS_UPDATE",
    EXTERNAL_INTEGRATION = "EXTERNAL_INTEGRATION",
}

M.AutomationRulesActionV2 = {
    type = "structure",
    id = "AutomationRulesActionV2",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindingFieldsUpdate = M.AutomationRulesFindingFieldsUpdateV2,
        ExternalIntegrationConfiguration = M.ExternalIntegrationConfiguration,
    },
}

M.AutomationRulesActionTypeObjectV2 = {
    type = "structure",
    id = "AutomationRulesActionTypeObjectV2",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.StringFilterComparison = {
    EQUALS = "EQUALS",
    PREFIX = "PREFIX",
    NOT_EQUALS = "NOT_EQUALS",
    PREFIX_NOT_EQUALS = "PREFIX_NOT_EQUALS",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
    CONTAINS_WORD = "CONTAINS_WORD",
}

M.StringFilter = {
    type = "structure",
    id = "StringFilter",
    members = {
        Value = {
            type = "string",
        },
        Comparison = {
            type = "string",
        },
    },
}

M.NumberFilter = {
    type = "structure",
    id = "NumberFilter",
    members = {
        Gte = {
            type = "double",
        },
        Lte = {
            type = "double",
        },
        Eq = {
            type = "double",
        },
        Gt = {
            type = "double",
        },
        Lt = {
            type = "double",
        },
    },
}

M.DateRangeUnit = {
    DAYS = "DAYS",
}

M.DateRange = {
    type = "structure",
    id = "DateRange",
    members = {
        Value = {
            type = "integer",
        },
        Unit = {
            type = "string",
        },
    },
}

M.DateFilter = {
    type = "structure",
    id = "DateFilter",
    members = {
        Start = {
            type = "string",
        },
        End = {
            type = "string",
        },
        DateRange = M.DateRange,
    },
}

M.MapFilterComparison = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
}

M.MapFilter = {
    type = "structure",
    id = "MapFilter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Comparison = {
            type = "string",
        },
    },
}

M.AutomationRulesFindingFilters = {
    type = "structure",
    id = "AutomationRulesFindingFilters",
    members = {
        ProductArn = {
            type = "list",
            member = M.StringFilter,
        },
        AwsAccountId = {
            type = "list",
            member = M.StringFilter,
        },
        Id = {
            type = "list",
            member = M.StringFilter,
        },
        GeneratorId = {
            type = "list",
            member = M.StringFilter,
        },
        Type = {
            type = "list",
            member = M.StringFilter,
        },
        FirstObservedAt = {
            type = "list",
            member = M.DateFilter,
        },
        LastObservedAt = {
            type = "list",
            member = M.DateFilter,
        },
        CreatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        UpdatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        Confidence = {
            type = "list",
            member = M.NumberFilter,
        },
        Criticality = {
            type = "list",
            member = M.NumberFilter,
        },
        Title = {
            type = "list",
            member = M.StringFilter,
        },
        Description = {
            type = "list",
            member = M.StringFilter,
        },
        SourceUrl = {
            type = "list",
            member = M.StringFilter,
        },
        ProductName = {
            type = "list",
            member = M.StringFilter,
        },
        CompanyName = {
            type = "list",
            member = M.StringFilter,
        },
        SeverityLabel = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceType = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceId = {
            type = "list",
            member = M.StringFilter,
        },
        ResourcePartition = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceRegion = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceTags = {
            type = "list",
            member = M.MapFilter,
        },
        ResourceDetailsOther = {
            type = "list",
            member = M.MapFilter,
        },
        ComplianceStatus = {
            type = "list",
            member = M.StringFilter,
        },
        ComplianceSecurityControlId = {
            type = "list",
            member = M.StringFilter,
        },
        ComplianceAssociatedStandardsId = {
            type = "list",
            member = M.StringFilter,
        },
        VerificationState = {
            type = "list",
            member = M.StringFilter,
        },
        WorkflowStatus = {
            type = "list",
            member = M.StringFilter,
        },
        RecordState = {
            type = "list",
            member = M.StringFilter,
        },
        RelatedFindingsProductArn = {
            type = "list",
            member = M.StringFilter,
        },
        RelatedFindingsId = {
            type = "list",
            member = M.StringFilter,
        },
        NoteText = {
            type = "list",
            member = M.StringFilter,
        },
        NoteUpdatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        NoteUpdatedBy = {
            type = "list",
            member = M.StringFilter,
        },
        UserDefinedFields = {
            type = "list",
            member = M.MapFilter,
        },
        ResourceApplicationArn = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceApplicationName = {
            type = "list",
            member = M.StringFilter,
        },
        AwsAccountName = {
            type = "list",
            member = M.StringFilter,
        },
    },
}

M.RuleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutomationRulesConfig = {
    type = "structure",
    id = "AutomationRulesConfig",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "integer",
        },
        RuleName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        IsTerminal = {
            type = "boolean",
        },
        Criteria = M.AutomationRulesFindingFilters,
        Actions = {
            type = "list",
            member = M.AutomationRulesAction,
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.AutomationRulesMetadata = {
    type = "structure",
    id = "AutomationRulesMetadata",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "integer",
        },
        RuleName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        IsTerminal = {
            type = "boolean",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.RuleStatusV2 = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutomationRulesMetadataV2 = {
    type = "structure",
    id = "AutomationRulesMetadataV2",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleId = {
            type = "string",
        },
        RuleOrder = {
            type = "float",
        },
        RuleName = {
            type = "string",
        },
        RuleStatus = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "list",
            member = M.AutomationRulesActionTypeObjectV2,
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
    id = "AvailabilityZone",
    members = {
        ZoneName = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
    },
}

M.AwsAmazonMqBrokerEncryptionOptionsDetails = {
    type = "structure",
    id = "AwsAmazonMqBrokerEncryptionOptionsDetails",
    members = {
        KmsKeyId = {
            type = "string",
        },
        UseAwsOwnedKey = {
            type = "boolean",
        },
    },
}

M.AwsAmazonMqBrokerLdapServerMetadataDetails = {
    type = "structure",
    id = "AwsAmazonMqBrokerLdapServerMetadataDetails",
    members = {
        Hosts = {
            type = "list",
            member = { type = "string" },
        },
        RoleBase = {
            type = "string",
        },
        RoleName = {
            type = "string",
        },
        RoleSearchMatching = {
            type = "string",
        },
        RoleSearchSubtree = {
            type = "boolean",
        },
        ServiceAccountUsername = {
            type = "string",
        },
        UserBase = {
            type = "string",
        },
        UserRoleName = {
            type = "string",
        },
        UserSearchMatching = {
            type = "string",
        },
        UserSearchSubtree = {
            type = "boolean",
        },
    },
}

M.AwsAmazonMqBrokerLogsPendingDetails = {
    type = "structure",
    id = "AwsAmazonMqBrokerLogsPendingDetails",
    members = {
        Audit = {
            type = "boolean",
        },
        General = {
            type = "boolean",
        },
    },
}

M.AwsAmazonMqBrokerLogsDetails = {
    type = "structure",
    id = "AwsAmazonMqBrokerLogsDetails",
    members = {
        Audit = {
            type = "boolean",
        },
        General = {
            type = "boolean",
        },
        AuditLogGroup = {
            type = "string",
        },
        GeneralLogGroup = {
            type = "string",
        },
        Pending = M.AwsAmazonMqBrokerLogsPendingDetails,
    },
}

M.AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails = {
    type = "structure",
    id = "AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails",
    members = {
        DayOfWeek = {
            type = "string",
        },
        TimeOfDay = {
            type = "string",
        },
        TimeZone = {
            type = "string",
        },
    },
}

M.AwsAmazonMqBrokerUsersDetails = {
    type = "structure",
    id = "AwsAmazonMqBrokerUsersDetails",
    members = {
        PendingChange = {
            type = "string",
        },
        Username = {
            type = "string",
        },
    },
}

M.AwsAmazonMqBrokerDetails = {
    type = "structure",
    id = "AwsAmazonMqBrokerDetails",
    members = {
        AuthenticationStrategy = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        BrokerArn = {
            type = "string",
        },
        BrokerName = {
            type = "string",
        },
        DeploymentMode = {
            type = "string",
        },
        EncryptionOptions = M.AwsAmazonMqBrokerEncryptionOptionsDetails,
        EngineType = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        HostInstanceType = {
            type = "string",
        },
        BrokerId = {
            type = "string",
        },
        LdapServerMetadata = M.AwsAmazonMqBrokerLdapServerMetadataDetails,
        Logs = M.AwsAmazonMqBrokerLogsDetails,
        MaintenanceWindowStartTime = M.AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails,
        PubliclyAccessible = {
            type = "boolean",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        StorageType = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        Users = {
            type = "list",
            member = M.AwsAmazonMqBrokerUsersDetails,
        },
    },
}

M.AwsApiGatewayAccessLogSettings = {
    type = "structure",
    id = "AwsApiGatewayAccessLogSettings",
    members = {
        Format = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
    },
}

M.AwsApiGatewayCanarySettings = {
    type = "structure",
    id = "AwsApiGatewayCanarySettings",
    members = {
        PercentTraffic = {
            type = "double",
        },
        DeploymentId = {
            type = "string",
        },
        StageVariableOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UseStageCache = {
            type = "boolean",
        },
    },
}

M.AwsApiGatewayEndpointConfiguration = {
    type = "structure",
    id = "AwsApiGatewayEndpointConfiguration",
    members = {
        Types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsApiGatewayMethodSettings = {
    type = "structure",
    id = "AwsApiGatewayMethodSettings",
    members = {
        MetricsEnabled = {
            type = "boolean",
        },
        LoggingLevel = {
            type = "string",
        },
        DataTraceEnabled = {
            type = "boolean",
        },
        ThrottlingBurstLimit = {
            type = "integer",
        },
        ThrottlingRateLimit = {
            type = "double",
        },
        CachingEnabled = {
            type = "boolean",
        },
        CacheTtlInSeconds = {
            type = "integer",
        },
        CacheDataEncrypted = {
            type = "boolean",
        },
        RequireAuthorizationForCacheControl = {
            type = "boolean",
        },
        UnauthorizedCacheControlHeaderStrategy = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        ResourcePath = {
            type = "string",
        },
    },
}

M.AwsApiGatewayRestApiDetails = {
    type = "structure",
    id = "AwsApiGatewayRestApiDetails",
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
        CreatedDate = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        BinaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        MinimumCompressionSize = {
            type = "integer",
        },
        ApiKeySource = {
            type = "string",
        },
        EndpointConfiguration = M.AwsApiGatewayEndpointConfiguration,
    },
}

M.AwsApiGatewayStageDetails = {
    type = "structure",
    id = "AwsApiGatewayStageDetails",
    members = {
        DeploymentId = {
            type = "string",
        },
        ClientCertificateId = {
            type = "string",
        },
        StageName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CacheClusterEnabled = {
            type = "boolean",
        },
        CacheClusterSize = {
            type = "string",
        },
        CacheClusterStatus = {
            type = "string",
        },
        MethodSettings = {
            type = "list",
            member = M.AwsApiGatewayMethodSettings,
        },
        Variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DocumentationVersion = {
            type = "string",
        },
        AccessLogSettings = M.AwsApiGatewayAccessLogSettings,
        CanarySettings = M.AwsApiGatewayCanarySettings,
        TracingEnabled = {
            type = "boolean",
        },
        CreatedDate = {
            type = "string",
        },
        LastUpdatedDate = {
            type = "string",
        },
        WebAclArn = {
            type = "string",
        },
    },
}

M.AwsCorsConfiguration = {
    type = "structure",
    id = "AwsCorsConfiguration",
    members = {
        AllowOrigins = {
            type = "list",
            member = { type = "string" },
        },
        AllowCredentials = {
            type = "boolean",
        },
        ExposeHeaders = {
            type = "list",
            member = { type = "string" },
        },
        MaxAge = {
            type = "integer",
        },
        AllowMethods = {
            type = "list",
            member = { type = "string" },
        },
        AllowHeaders = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsApiGatewayV2ApiDetails = {
    type = "structure",
    id = "AwsApiGatewayV2ApiDetails",
    members = {
        ApiEndpoint = {
            type = "string",
        },
        ApiId = {
            type = "string",
        },
        ApiKeySelectionExpression = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ProtocolType = {
            type = "string",
        },
        RouteSelectionExpression = {
            type = "string",
        },
        CorsConfiguration = M.AwsCorsConfiguration,
    },
}

M.AwsApiGatewayV2RouteSettings = {
    type = "structure",
    id = "AwsApiGatewayV2RouteSettings",
    members = {
        DetailedMetricsEnabled = {
            type = "boolean",
        },
        LoggingLevel = {
            type = "string",
        },
        DataTraceEnabled = {
            type = "boolean",
        },
        ThrottlingBurstLimit = {
            type = "integer",
        },
        ThrottlingRateLimit = {
            type = "double",
        },
    },
}

M.AwsApiGatewayV2StageDetails = {
    type = "structure",
    id = "AwsApiGatewayV2StageDetails",
    members = {
        ClientCertificateId = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultRouteSettings = M.AwsApiGatewayV2RouteSettings,
        DeploymentId = {
            type = "string",
        },
        LastUpdatedDate = {
            type = "string",
        },
        RouteSettings = M.AwsApiGatewayV2RouteSettings,
        StageName = {
            type = "string",
        },
        StageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AccessLogSettings = M.AwsApiGatewayAccessLogSettings,
        AutoDeploy = {
            type = "boolean",
        },
        LastDeploymentStatusMessage = {
            type = "string",
        },
        ApiGatewayManaged = {
            type = "boolean",
        },
    },
}

M.AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails = {
    type = "structure",
    id = "AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails",
    members = {
        AuthorizerResultTtlInSeconds = {
            type = "integer",
        },
        AuthorizerUri = {
            type = "string",
        },
        IdentityValidationExpression = {
            type = "string",
        },
    },
}

M.AwsAppSyncGraphQlApiOpenIdConnectConfigDetails = {
    type = "structure",
    id = "AwsAppSyncGraphQlApiOpenIdConnectConfigDetails",
    members = {
        AuthTtL = {
            type = "long",
        },
        ClientId = {
            type = "string",
        },
        IatTtL = {
            type = "long",
        },
        Issuer = {
            type = "string",
        },
    },
}

M.AwsAppSyncGraphQlApiUserPoolConfigDetails = {
    type = "structure",
    id = "AwsAppSyncGraphQlApiUserPoolConfigDetails",
    members = {
        AppIdClientRegex = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
        DefaultAction = {
            type = "string",
        },
        UserPoolId = {
            type = "string",
        },
    },
}

M.AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails = {
    type = "structure",
    id = "AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails",
    members = {
        AuthenticationType = {
            type = "string",
        },
        LambdaAuthorizerConfig = M.AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails,
        OpenIdConnectConfig = M.AwsAppSyncGraphQlApiOpenIdConnectConfigDetails,
        UserPoolConfig = M.AwsAppSyncGraphQlApiUserPoolConfigDetails,
    },
}

M.AwsAppSyncGraphQlApiLogConfigDetails = {
    type = "structure",
    id = "AwsAppSyncGraphQlApiLogConfigDetails",
    members = {
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        ExcludeVerboseContent = {
            type = "boolean",
        },
        FieldLogLevel = {
            type = "string",
        },
    },
}

M.AwsAppSyncGraphQlApiDetails = {
    type = "structure",
    id = "AwsAppSyncGraphQlApiDetails",
    members = {
        ApiId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        OpenIdConnectConfig = M.AwsAppSyncGraphQlApiOpenIdConnectConfigDetails,
        Name = {
            type = "string",
        },
        LambdaAuthorizerConfig = M.AwsAppSyncGraphQlApiLambdaAuthorizerConfigDetails,
        XrayEnabled = {
            type = "boolean",
        },
        Arn = {
            type = "string",
        },
        UserPoolConfig = M.AwsAppSyncGraphQlApiUserPoolConfigDetails,
        AuthenticationType = {
            type = "string",
        },
        LogConfig = M.AwsAppSyncGraphQlApiLogConfigDetails,
        AdditionalAuthenticationProviders = {
            type = "list",
            member = M.AwsAppSyncGraphQlApiAdditionalAuthenticationProvidersDetails,
        },
        WafWebAclArn = {
            type = "string",
        },
    },
}

M.AwsAthenaWorkGroupConfigurationResultConfigurationEncryptionConfigurationDetails = {
    type = "structure",
    id = "AwsAthenaWorkGroupConfigurationResultConfigurationEncryptionConfigurationDetails",
    members = {
        EncryptionOption = {
            type = "string",
        },
        KmsKey = {
            type = "string",
        },
    },
}

M.AwsAthenaWorkGroupConfigurationResultConfigurationDetails = {
    type = "structure",
    id = "AwsAthenaWorkGroupConfigurationResultConfigurationDetails",
    members = {
        EncryptionConfiguration = M.AwsAthenaWorkGroupConfigurationResultConfigurationEncryptionConfigurationDetails,
    },
}

M.AwsAthenaWorkGroupConfigurationDetails = {
    type = "structure",
    id = "AwsAthenaWorkGroupConfigurationDetails",
    members = {
        ResultConfiguration = M.AwsAthenaWorkGroupConfigurationResultConfigurationDetails,
    },
}

M.AwsAthenaWorkGroupDetails = {
    type = "structure",
    id = "AwsAthenaWorkGroupDetails",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Configuration = M.AwsAthenaWorkGroupConfigurationDetails,
    },
}

M.AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification",
    members = {
        LaunchTemplateId = {
            type = "string",
        },
        LaunchTemplateName = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails",
    members = {
        OnDemandAllocationStrategy = {
            type = "string",
        },
        OnDemandBaseCapacity = {
            type = "integer",
        },
        OnDemandPercentageAboveBaseCapacity = {
            type = "integer",
        },
        SpotAllocationStrategy = {
            type = "string",
        },
        SpotInstancePools = {
            type = "integer",
        },
        SpotMaxPrice = {
            type = "string",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification",
    members = {
        LaunchTemplateId = {
            type = "string",
        },
        LaunchTemplateName = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails",
    members = {
        InstanceType = {
            type = "string",
        },
        WeightedCapacity = {
            type = "string",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails",
    members = {
        LaunchTemplateSpecification = M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification,
        Overrides = {
            type = "list",
            member = M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails,
        },
    },
}

M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails",
    members = {
        InstancesDistribution = M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails,
        LaunchTemplate = M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails,
    },
}

M.AwsAutoScalingAutoScalingGroupDetails = {
    type = "structure",
    id = "AwsAutoScalingAutoScalingGroupDetails",
    members = {
        LaunchConfigurationName = {
            type = "string",
        },
        LoadBalancerNames = {
            type = "list",
            member = { type = "string" },
        },
        HealthCheckType = {
            type = "string",
        },
        HealthCheckGracePeriod = {
            type = "integer",
        },
        CreatedTime = {
            type = "string",
        },
        MixedInstancesPolicy = M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails,
        AvailabilityZones = {
            type = "list",
            member = M.AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails,
        },
        LaunchTemplate = M.AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification,
        CapacityRebalance = {
            type = "boolean",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails = {
    type = "structure",
    id = "AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails",
    members = {
        DeleteOnTermination = {
            type = "boolean",
        },
        Encrypted = {
            type = "boolean",
        },
        Iops = {
            type = "integer",
        },
        SnapshotId = {
            type = "string",
        },
        VolumeSize = {
            type = "integer",
        },
        VolumeType = {
            type = "string",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails = {
    type = "structure",
    id = "AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails",
    members = {
        DeviceName = {
            type = "string",
        },
        Ebs = M.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails,
        NoDevice = {
            type = "boolean",
        },
        VirtualName = {
            type = "string",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails = {
    type = "structure",
    id = "AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationMetadataOptions = {
    type = "structure",
    id = "AwsAutoScalingLaunchConfigurationMetadataOptions",
    members = {
        HttpEndpoint = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "integer",
        },
        HttpTokens = {
            type = "string",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationDetails = {
    type = "structure",
    id = "AwsAutoScalingLaunchConfigurationDetails",
    members = {
        AssociatePublicIpAddress = {
            type = "boolean",
        },
        BlockDeviceMappings = {
            type = "list",
            member = M.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails,
        },
        ClassicLinkVpcId = {
            type = "string",
        },
        ClassicLinkVpcSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTime = {
            type = "string",
        },
        EbsOptimized = {
            type = "boolean",
        },
        IamInstanceProfile = {
            type = "string",
        },
        ImageId = {
            type = "string",
        },
        InstanceMonitoring = M.AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails,
        InstanceType = {
            type = "string",
        },
        KernelId = {
            type = "string",
        },
        KeyName = {
            type = "string",
        },
        LaunchConfigurationName = {
            type = "string",
        },
        PlacementTenancy = {
            type = "string",
        },
        RamdiskId = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        SpotPrice = {
            type = "string",
        },
        UserData = {
            type = "string",
        },
        MetadataOptions = M.AwsAutoScalingLaunchConfigurationMetadataOptions,
    },
}

M.AwsBackupBackupPlanAdvancedBackupSettingsDetails = {
    type = "structure",
    id = "AwsBackupBackupPlanAdvancedBackupSettingsDetails",
    members = {
        BackupOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.AwsBackupBackupPlanLifecycleDetails = {
    type = "structure",
    id = "AwsBackupBackupPlanLifecycleDetails",
    members = {
        DeleteAfterDays = {
            type = "long",
        },
        MoveToColdStorageAfterDays = {
            type = "long",
        },
    },
}

M.AwsBackupBackupPlanRuleCopyActionsDetails = {
    type = "structure",
    id = "AwsBackupBackupPlanRuleCopyActionsDetails",
    members = {
        DestinationBackupVaultArn = {
            type = "string",
        },
        Lifecycle = M.AwsBackupBackupPlanLifecycleDetails,
    },
}

M.AwsBackupBackupPlanRuleDetails = {
    type = "structure",
    id = "AwsBackupBackupPlanRuleDetails",
    members = {
        TargetBackupVault = {
            type = "string",
        },
        StartWindowMinutes = {
            type = "long",
        },
        ScheduleExpression = {
            type = "string",
        },
        RuleName = {
            type = "string",
        },
        RuleId = {
            type = "string",
        },
        EnableContinuousBackup = {
            type = "boolean",
        },
        CompletionWindowMinutes = {
            type = "long",
        },
        CopyActions = {
            type = "list",
            member = M.AwsBackupBackupPlanRuleCopyActionsDetails,
        },
        Lifecycle = M.AwsBackupBackupPlanLifecycleDetails,
    },
}

M.AwsBackupBackupPlanBackupPlanDetails = {
    type = "structure",
    id = "AwsBackupBackupPlanBackupPlanDetails",
    members = {
        BackupPlanName = {
            type = "string",
        },
        AdvancedBackupSettings = {
            type = "list",
            member = M.AwsBackupBackupPlanAdvancedBackupSettingsDetails,
        },
        BackupPlanRule = {
            type = "list",
            member = M.AwsBackupBackupPlanRuleDetails,
        },
    },
}

M.AwsBackupBackupPlanDetails = {
    type = "structure",
    id = "AwsBackupBackupPlanDetails",
    members = {
        BackupPlan = M.AwsBackupBackupPlanBackupPlanDetails,
        BackupPlanArn = {
            type = "string",
        },
        BackupPlanId = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.AwsBackupBackupVaultNotificationsDetails = {
    type = "structure",
    id = "AwsBackupBackupVaultNotificationsDetails",
    members = {
        BackupVaultEvents = {
            type = "list",
            member = { type = "string" },
        },
        SnsTopicArn = {
            type = "string",
        },
    },
}

M.AwsBackupBackupVaultDetails = {
    type = "structure",
    id = "AwsBackupBackupVaultDetails",
    members = {
        BackupVaultArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        Notifications = M.AwsBackupBackupVaultNotificationsDetails,
        AccessPolicy = {
            type = "string",
        },
    },
}

M.AwsBackupRecoveryPointCalculatedLifecycleDetails = {
    type = "structure",
    id = "AwsBackupRecoveryPointCalculatedLifecycleDetails",
    members = {
        DeleteAt = {
            type = "string",
        },
        MoveToColdStorageAt = {
            type = "string",
        },
    },
}

M.AwsBackupRecoveryPointCreatedByDetails = {
    type = "structure",
    id = "AwsBackupRecoveryPointCreatedByDetails",
    members = {
        BackupPlanArn = {
            type = "string",
        },
        BackupPlanId = {
            type = "string",
        },
        BackupPlanVersion = {
            type = "string",
        },
        BackupRuleId = {
            type = "string",
        },
    },
}

M.AwsBackupRecoveryPointLifecycleDetails = {
    type = "structure",
    id = "AwsBackupRecoveryPointLifecycleDetails",
    members = {
        DeleteAfterDays = {
            type = "long",
        },
        MoveToColdStorageAfterDays = {
            type = "long",
        },
    },
}

M.AwsBackupRecoveryPointDetails = {
    type = "structure",
    id = "AwsBackupRecoveryPointDetails",
    members = {
        BackupSizeInBytes = {
            type = "long",
        },
        BackupVaultArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        CalculatedLifecycle = M.AwsBackupRecoveryPointCalculatedLifecycleDetails,
        CompletionDate = {
            type = "string",
        },
        CreatedBy = M.AwsBackupRecoveryPointCreatedByDetails,
        CreationDate = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        IsEncrypted = {
            type = "boolean",
        },
        LastRestoreTime = {
            type = "string",
        },
        Lifecycle = M.AwsBackupRecoveryPointLifecycleDetails,
        RecoveryPointArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        SourceBackupVaultArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateResourceRecord = {
    type = "structure",
    id = "AwsCertificateManagerCertificateResourceRecord",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateDomainValidationOption = {
    type = "structure",
    id = "AwsCertificateManagerCertificateDomainValidationOption",
    members = {
        DomainName = {
            type = "string",
        },
        ResourceRecord = M.AwsCertificateManagerCertificateResourceRecord,
        ValidationDomain = {
            type = "string",
        },
        ValidationEmails = {
            type = "list",
            member = { type = "string" },
        },
        ValidationMethod = {
            type = "string",
        },
        ValidationStatus = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateExtendedKeyUsage = {
    type = "structure",
    id = "AwsCertificateManagerCertificateExtendedKeyUsage",
    members = {
        Name = {
            type = "string",
        },
        OId = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateKeyUsage = {
    type = "structure",
    id = "AwsCertificateManagerCertificateKeyUsage",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateOptions = {
    type = "structure",
    id = "AwsCertificateManagerCertificateOptions",
    members = {
        CertificateTransparencyLoggingPreference = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateRenewalSummary = {
    type = "structure",
    id = "AwsCertificateManagerCertificateRenewalSummary",
    members = {
        DomainValidationOptions = {
            type = "list",
            member = M.AwsCertificateManagerCertificateDomainValidationOption,
        },
        RenewalStatus = {
            type = "string",
        },
        RenewalStatusReason = {
            type = "string",
        },
        UpdatedAt = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateDetails = {
    type = "structure",
    id = "AwsCertificateManagerCertificateDetails",
    members = {
        CertificateAuthorityArn = {
            type = "string",
        },
        CreatedAt = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        DomainValidationOptions = {
            type = "list",
            member = M.AwsCertificateManagerCertificateDomainValidationOption,
        },
        ExtendedKeyUsages = {
            type = "list",
            member = M.AwsCertificateManagerCertificateExtendedKeyUsage,
        },
        FailureReason = {
            type = "string",
        },
        ImportedAt = {
            type = "string",
        },
        InUseBy = {
            type = "list",
            member = { type = "string" },
        },
        IssuedAt = {
            type = "string",
        },
        Issuer = {
            type = "string",
        },
        KeyAlgorithm = {
            type = "string",
        },
        KeyUsages = {
            type = "list",
            member = M.AwsCertificateManagerCertificateKeyUsage,
        },
        NotAfter = {
            type = "string",
        },
        NotBefore = {
            type = "string",
        },
        Options = M.AwsCertificateManagerCertificateOptions,
        RenewalEligibility = {
            type = "string",
        },
        RenewalSummary = M.AwsCertificateManagerCertificateRenewalSummary,
        Serial = {
            type = "string",
        },
        SignatureAlgorithm = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        SubjectAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsCloudFormationStackDriftInformationDetails = {
    type = "structure",
    id = "AwsCloudFormationStackDriftInformationDetails",
    members = {
        StackDriftStatus = {
            type = "string",
        },
    },
}

M.AwsCloudFormationStackOutputsDetails = {
    type = "structure",
    id = "AwsCloudFormationStackOutputsDetails",
    members = {
        Description = {
            type = "string",
        },
        OutputKey = {
            type = "string",
        },
        OutputValue = {
            type = "string",
        },
    },
}

M.AwsCloudFormationStackDetails = {
    type = "structure",
    id = "AwsCloudFormationStackDetails",
    members = {
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DisableRollback = {
            type = "boolean",
        },
        DriftInformation = M.AwsCloudFormationStackDriftInformationDetails,
        EnableTerminationProtection = {
            type = "boolean",
        },
        LastUpdatedTime = {
            type = "string",
        },
        NotificationArns = {
            type = "list",
            member = { type = "string" },
        },
        Outputs = {
            type = "list",
            member = M.AwsCloudFormationStackOutputsDetails,
        },
        RoleArn = {
            type = "string",
        },
        StackId = {
            type = "string",
        },
        StackName = {
            type = "string",
        },
        StackStatus = {
            type = "string",
        },
        StackStatusReason = {
            type = "string",
        },
        TimeoutInMinutes = {
            type = "integer",
        },
    },
}

M.AwsCloudFrontDistributionCacheBehavior = {
    type = "structure",
    id = "AwsCloudFrontDistributionCacheBehavior",
    members = {
        ViewerProtocolPolicy = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionCacheBehaviors = {
    type = "structure",
    id = "AwsCloudFrontDistributionCacheBehaviors",
    members = {
        Items = {
            type = "list",
            member = M.AwsCloudFrontDistributionCacheBehavior,
        },
    },
}

M.AwsCloudFrontDistributionDefaultCacheBehavior = {
    type = "structure",
    id = "AwsCloudFrontDistributionDefaultCacheBehavior",
    members = {
        ViewerProtocolPolicy = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionLogging = {
    type = "structure",
    id = "AwsCloudFrontDistributionLogging",
    members = {
        Bucket = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        IncludeCookies = {
            type = "boolean",
        },
        Prefix = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionOriginGroupFailoverStatusCodes = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginGroupFailoverStatusCodes",
    members = {
        Items = {
            type = "list",
            member = { type = "integer" },
        },
        Quantity = {
            type = "integer",
        },
    },
}

M.AwsCloudFrontDistributionOriginGroupFailover = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginGroupFailover",
    members = {
        StatusCodes = M.AwsCloudFrontDistributionOriginGroupFailoverStatusCodes,
    },
}

M.AwsCloudFrontDistributionOriginGroup = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginGroup",
    members = {
        FailoverCriteria = M.AwsCloudFrontDistributionOriginGroupFailover,
    },
}

M.AwsCloudFrontDistributionOriginGroups = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginGroups",
    members = {
        Items = {
            type = "list",
            member = M.AwsCloudFrontDistributionOriginGroup,
        },
    },
}

M.AwsCloudFrontDistributionOriginSslProtocols = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginSslProtocols",
    members = {
        Items = {
            type = "list",
            member = { type = "string" },
        },
        Quantity = {
            type = "integer",
        },
    },
}

M.AwsCloudFrontDistributionOriginCustomOriginConfig = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginCustomOriginConfig",
    members = {
        HttpPort = {
            type = "integer",
        },
        HttpsPort = {
            type = "integer",
        },
        OriginKeepaliveTimeout = {
            type = "integer",
        },
        OriginProtocolPolicy = {
            type = "string",
        },
        OriginReadTimeout = {
            type = "integer",
        },
        OriginSslProtocols = M.AwsCloudFrontDistributionOriginSslProtocols,
    },
}

M.AwsCloudFrontDistributionOriginS3OriginConfig = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginS3OriginConfig",
    members = {
        OriginAccessIdentity = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionOriginItem = {
    type = "structure",
    id = "AwsCloudFrontDistributionOriginItem",
    members = {
        DomainName = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        OriginPath = {
            type = "string",
        },
        S3OriginConfig = M.AwsCloudFrontDistributionOriginS3OriginConfig,
        CustomOriginConfig = M.AwsCloudFrontDistributionOriginCustomOriginConfig,
    },
}

M.AwsCloudFrontDistributionOrigins = {
    type = "structure",
    id = "AwsCloudFrontDistributionOrigins",
    members = {
        Items = {
            type = "list",
            member = M.AwsCloudFrontDistributionOriginItem,
        },
    },
}

M.AwsCloudFrontDistributionViewerCertificate = {
    type = "structure",
    id = "AwsCloudFrontDistributionViewerCertificate",
    members = {
        AcmCertificateArn = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        CertificateSource = {
            type = "string",
        },
        CloudFrontDefaultCertificate = {
            type = "boolean",
        },
        IamCertificateId = {
            type = "string",
        },
        MinimumProtocolVersion = {
            type = "string",
        },
        SslSupportMethod = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionDetails = {
    type = "structure",
    id = "AwsCloudFrontDistributionDetails",
    members = {
        CacheBehaviors = M.AwsCloudFrontDistributionCacheBehaviors,
        DefaultCacheBehavior = M.AwsCloudFrontDistributionDefaultCacheBehavior,
        DefaultRootObject = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        LastModifiedTime = {
            type = "string",
        },
        Logging = M.AwsCloudFrontDistributionLogging,
        Origins = M.AwsCloudFrontDistributionOrigins,
        OriginGroups = M.AwsCloudFrontDistributionOriginGroups,
        ViewerCertificate = M.AwsCloudFrontDistributionViewerCertificate,
        Status = {
            type = "string",
        },
        WebAclId = {
            type = "string",
        },
    },
}

M.AwsCloudTrailTrailDetails = {
    type = "structure",
    id = "AwsCloudTrailTrailDetails",
    members = {
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        CloudWatchLogsRoleArn = {
            type = "string",
        },
        HasCustomEventSelectors = {
            type = "boolean",
        },
        HomeRegion = {
            type = "string",
        },
        IncludeGlobalServiceEvents = {
            type = "boolean",
        },
        IsMultiRegionTrail = {
            type = "boolean",
        },
        IsOrganizationTrail = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        LogFileValidationEnabled = {
            type = "boolean",
        },
        Name = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        SnsTopicName = {
            type = "string",
        },
        TrailArn = {
            type = "string",
        },
    },
}

M.AwsCloudWatchAlarmDimensionsDetails = {
    type = "structure",
    id = "AwsCloudWatchAlarmDimensionsDetails",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsCloudWatchAlarmDetails = {
    type = "structure",
    id = "AwsCloudWatchAlarmDetails",
    members = {
        ActionsEnabled = {
            type = "boolean",
        },
        AlarmActions = {
            type = "list",
            member = { type = "string" },
        },
        AlarmArn = {
            type = "string",
        },
        AlarmConfigurationUpdatedTimestamp = {
            type = "string",
        },
        AlarmDescription = {
            type = "string",
        },
        AlarmName = {
            type = "string",
        },
        ComparisonOperator = {
            type = "string",
        },
        DatapointsToAlarm = {
            type = "integer",
        },
        Dimensions = {
            type = "list",
            member = M.AwsCloudWatchAlarmDimensionsDetails,
        },
        EvaluateLowSampleCountPercentile = {
            type = "string",
        },
        EvaluationPeriods = {
            type = "integer",
        },
        ExtendedStatistic = {
            type = "string",
        },
        InsufficientDataActions = {
            type = "list",
            member = { type = "string" },
        },
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        OkActions = {
            type = "list",
            member = { type = "string" },
        },
        Period = {
            type = "integer",
        },
        Statistic = {
            type = "string",
        },
        Threshold = {
            type = "double",
        },
        ThresholdMetricId = {
            type = "string",
        },
        TreatMissingData = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectArtifactsDetails = {
    type = "structure",
    id = "AwsCodeBuildProjectArtifactsDetails",
    members = {
        ArtifactIdentifier = {
            type = "string",
        },
        EncryptionDisabled = {
            type = "boolean",
        },
        Location = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        NamespaceType = {
            type = "string",
        },
        OverrideArtifactName = {
            type = "boolean",
        },
        Packaging = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails = {
    type = "structure",
    id = "AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectEnvironmentRegistryCredential = {
    type = "structure",
    id = "AwsCodeBuildProjectEnvironmentRegistryCredential",
    members = {
        Credential = {
            type = "string",
        },
        CredentialProvider = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectEnvironment = {
    type = "structure",
    id = "AwsCodeBuildProjectEnvironment",
    members = {
        Certificate = {
            type = "string",
        },
        EnvironmentVariables = {
            type = "list",
            member = M.AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails,
        },
        PrivilegedMode = {
            type = "boolean",
        },
        ImagePullCredentialsType = {
            type = "string",
        },
        RegistryCredential = M.AwsCodeBuildProjectEnvironmentRegistryCredential,
        Type = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails = {
    type = "structure",
    id = "AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails",
    members = {
        GroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectLogsConfigS3LogsDetails = {
    type = "structure",
    id = "AwsCodeBuildProjectLogsConfigS3LogsDetails",
    members = {
        EncryptionDisabled = {
            type = "boolean",
        },
        Location = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectLogsConfigDetails = {
    type = "structure",
    id = "AwsCodeBuildProjectLogsConfigDetails",
    members = {
        CloudWatchLogs = M.AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails,
        S3Logs = M.AwsCodeBuildProjectLogsConfigS3LogsDetails,
    },
}

M.AwsCodeBuildProjectSource = {
    type = "structure",
    id = "AwsCodeBuildProjectSource",
    members = {
        Type = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        GitCloneDepth = {
            type = "integer",
        },
        InsecureSsl = {
            type = "boolean",
        },
    },
}

M.AwsCodeBuildProjectVpcConfig = {
    type = "structure",
    id = "AwsCodeBuildProjectVpcConfig",
    members = {
        VpcId = {
            type = "string",
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsCodeBuildProjectDetails = {
    type = "structure",
    id = "AwsCodeBuildProjectDetails",
    members = {
        EncryptionKey = {
            type = "string",
        },
        Artifacts = {
            type = "list",
            member = M.AwsCodeBuildProjectArtifactsDetails,
        },
        Environment = M.AwsCodeBuildProjectEnvironment,
        Name = {
            type = "string",
        },
        Source = M.AwsCodeBuildProjectSource,
        ServiceRole = {
            type = "string",
        },
        LogsConfig = M.AwsCodeBuildProjectLogsConfigDetails,
        VpcConfig = M.AwsCodeBuildProjectVpcConfig,
        SecondaryArtifacts = {
            type = "list",
            member = M.AwsCodeBuildProjectArtifactsDetails,
        },
    },
}

M.AwsDmsEndpointDetails = {
    type = "structure",
    id = "AwsDmsEndpointDetails",
    members = {
        CertificateArn = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        EndpointArn = {
            type = "string",
        },
        EndpointIdentifier = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        ExternalId = {
            type = "string",
        },
        ExtraConnectionAttributes = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        ServerName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        Username = {
            type = "string",
        },
    },
}

M.AwsDmsReplicationInstanceReplicationSubnetGroupDetails = {
    type = "structure",
    id = "AwsDmsReplicationInstanceReplicationSubnetGroupDetails",
    members = {
        ReplicationSubnetGroupIdentifier = {
            type = "string",
        },
    },
}

M.AwsDmsReplicationInstanceVpcSecurityGroupsDetails = {
    type = "structure",
    id = "AwsDmsReplicationInstanceVpcSecurityGroupsDetails",
    members = {
        VpcSecurityGroupId = {
            type = "string",
        },
    },
}

M.AwsDmsReplicationInstanceDetails = {
    type = "structure",
    id = "AwsDmsReplicationInstanceDetails",
    members = {
        AllocatedStorage = {
            type = "integer",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        AvailabilityZone = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        ReplicationInstanceClass = {
            type = "string",
        },
        ReplicationInstanceIdentifier = {
            type = "string",
        },
        ReplicationSubnetGroup = M.AwsDmsReplicationInstanceReplicationSubnetGroupDetails,
        VpcSecurityGroups = {
            type = "list",
            member = M.AwsDmsReplicationInstanceVpcSecurityGroupsDetails,
        },
    },
}

M.AwsDmsReplicationTaskDetails = {
    type = "structure",
    id = "AwsDmsReplicationTaskDetails",
    members = {
        CdcStartPosition = {
            type = "string",
        },
        CdcStartTime = {
            type = "string",
        },
        CdcStopPosition = {
            type = "string",
        },
        MigrationType = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        ReplicationInstanceArn = {
            type = "string",
        },
        ReplicationTaskIdentifier = {
            type = "string",
        },
        ReplicationTaskSettings = {
            type = "string",
        },
        SourceEndpointArn = {
            type = "string",
        },
        TableMappings = {
            type = "string",
        },
        TargetEndpointArn = {
            type = "string",
        },
        TaskData = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableAttributeDefinition = {
    type = "structure",
    id = "AwsDynamoDbTableAttributeDefinition",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeType = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableBillingModeSummary = {
    type = "structure",
    id = "AwsDynamoDbTableBillingModeSummary",
    members = {
        BillingMode = {
            type = "string",
        },
        LastUpdateToPayPerRequestDateTime = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableKeySchema = {
    type = "structure",
    id = "AwsDynamoDbTableKeySchema",
    members = {
        AttributeName = {
            type = "string",
        },
        KeyType = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableProjection = {
    type = "structure",
    id = "AwsDynamoDbTableProjection",
    members = {
        NonKeyAttributes = {
            type = "list",
            member = { type = "string" },
        },
        ProjectionType = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableProvisionedThroughput = {
    type = "structure",
    id = "AwsDynamoDbTableProvisionedThroughput",
    members = {
        LastDecreaseDateTime = {
            type = "string",
        },
        LastIncreaseDateTime = {
            type = "string",
        },
        NumberOfDecreasesToday = {
            type = "integer",
        },
        ReadCapacityUnits = {
            type = "integer",
        },
        WriteCapacityUnits = {
            type = "integer",
        },
    },
}

M.AwsDynamoDbTableGlobalSecondaryIndex = {
    type = "structure",
    id = "AwsDynamoDbTableGlobalSecondaryIndex",
    members = {
        Backfilling = {
            type = "boolean",
        },
        IndexArn = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        IndexSizeBytes = {
            type = "long",
        },
        IndexStatus = {
            type = "string",
        },
        ItemCount = {
            type = "integer",
        },
        KeySchema = {
            type = "list",
            member = M.AwsDynamoDbTableKeySchema,
        },
        Projection = M.AwsDynamoDbTableProjection,
        ProvisionedThroughput = M.AwsDynamoDbTableProvisionedThroughput,
    },
}

M.AwsDynamoDbTableLocalSecondaryIndex = {
    type = "structure",
    id = "AwsDynamoDbTableLocalSecondaryIndex",
    members = {
        IndexArn = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member = M.AwsDynamoDbTableKeySchema,
        },
        Projection = M.AwsDynamoDbTableProjection,
    },
}

M.AwsDynamoDbTableProvisionedThroughputOverride = {
    type = "structure",
    id = "AwsDynamoDbTableProvisionedThroughputOverride",
    members = {
        ReadCapacityUnits = {
            type = "integer",
        },
    },
}

M.AwsDynamoDbTableReplicaGlobalSecondaryIndex = {
    type = "structure",
    id = "AwsDynamoDbTableReplicaGlobalSecondaryIndex",
    members = {
        IndexName = {
            type = "string",
        },
        ProvisionedThroughputOverride = M.AwsDynamoDbTableProvisionedThroughputOverride,
    },
}

M.AwsDynamoDbTableReplica = {
    type = "structure",
    id = "AwsDynamoDbTableReplica",
    members = {
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.AwsDynamoDbTableReplicaGlobalSecondaryIndex,
        },
        KmsMasterKeyId = {
            type = "string",
        },
        ProvisionedThroughputOverride = M.AwsDynamoDbTableProvisionedThroughputOverride,
        RegionName = {
            type = "string",
        },
        ReplicaStatus = {
            type = "string",
        },
        ReplicaStatusDescription = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableRestoreSummary = {
    type = "structure",
    id = "AwsDynamoDbTableRestoreSummary",
    members = {
        SourceBackupArn = {
            type = "string",
        },
        SourceTableArn = {
            type = "string",
        },
        RestoreDateTime = {
            type = "string",
        },
        RestoreInProgress = {
            type = "boolean",
        },
    },
}

M.AwsDynamoDbTableSseDescription = {
    type = "structure",
    id = "AwsDynamoDbTableSseDescription",
    members = {
        InaccessibleEncryptionDateTime = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SseType = {
            type = "string",
        },
        KmsMasterKeyArn = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableStreamSpecification = {
    type = "structure",
    id = "AwsDynamoDbTableStreamSpecification",
    members = {
        StreamEnabled = {
            type = "boolean",
        },
        StreamViewType = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableDetails = {
    type = "structure",
    id = "AwsDynamoDbTableDetails",
    members = {
        AttributeDefinitions = {
            type = "list",
            member = M.AwsDynamoDbTableAttributeDefinition,
        },
        BillingModeSummary = M.AwsDynamoDbTableBillingModeSummary,
        CreationDateTime = {
            type = "string",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.AwsDynamoDbTableGlobalSecondaryIndex,
        },
        GlobalTableVersion = {
            type = "string",
        },
        ItemCount = {
            type = "integer",
        },
        KeySchema = {
            type = "list",
            member = M.AwsDynamoDbTableKeySchema,
        },
        LatestStreamArn = {
            type = "string",
        },
        LatestStreamLabel = {
            type = "string",
        },
        LocalSecondaryIndexes = {
            type = "list",
            member = M.AwsDynamoDbTableLocalSecondaryIndex,
        },
        ProvisionedThroughput = M.AwsDynamoDbTableProvisionedThroughput,
        Replicas = {
            type = "list",
            member = M.AwsDynamoDbTableReplica,
        },
        RestoreSummary = M.AwsDynamoDbTableRestoreSummary,
        SseDescription = M.AwsDynamoDbTableSseDescription,
        StreamSpecification = M.AwsDynamoDbTableStreamSpecification,
        TableId = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        TableSizeBytes = {
            type = "long",
        },
        TableStatus = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.AwsEc2ClientVpnEndpointAuthenticationOptionsActiveDirectoryDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointAuthenticationOptionsActiveDirectoryDetails",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointAuthenticationOptionsFederatedAuthenticationDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointAuthenticationOptionsFederatedAuthenticationDetails",
    members = {
        SamlProviderArn = {
            type = "string",
        },
        SelfServiceSamlProviderArn = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointAuthenticationOptionsMutualAuthenticationDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointAuthenticationOptionsMutualAuthenticationDetails",
    members = {
        ClientRootCertificateChain = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointAuthenticationOptionsDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointAuthenticationOptionsDetails",
    members = {
        Type = {
            type = "string",
        },
        ActiveDirectory = M.AwsEc2ClientVpnEndpointAuthenticationOptionsActiveDirectoryDetails,
        MutualAuthentication = M.AwsEc2ClientVpnEndpointAuthenticationOptionsMutualAuthenticationDetails,
        FederatedAuthentication = M.AwsEc2ClientVpnEndpointAuthenticationOptionsFederatedAuthenticationDetails,
    },
}

M.AwsEc2ClientVpnEndpointClientConnectOptionsStatusDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointClientConnectOptionsStatusDetails",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointClientConnectOptionsDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointClientConnectOptionsDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
        LambdaFunctionArn = {
            type = "string",
        },
        Status = M.AwsEc2ClientVpnEndpointClientConnectOptionsStatusDetails,
    },
}

M.AwsEc2ClientVpnEndpointClientLoginBannerOptionsDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointClientLoginBannerOptionsDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
        BannerText = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointConnectionLogOptionsDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointConnectionLogOptionsDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
        CloudwatchLogGroup = {
            type = "string",
        },
        CloudwatchLogStream = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointDetails = {
    type = "structure",
    id = "AwsEc2ClientVpnEndpointDetails",
    members = {
        ClientVpnEndpointId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ClientCidrBlock = {
            type = "string",
        },
        DnsServer = {
            type = "list",
            member = { type = "string" },
        },
        SplitTunnel = {
            type = "boolean",
        },
        TransportProtocol = {
            type = "string",
        },
        VpnPort = {
            type = "integer",
        },
        ServerCertificateArn = {
            type = "string",
        },
        AuthenticationOptions = {
            type = "list",
            member = M.AwsEc2ClientVpnEndpointAuthenticationOptionsDetails,
        },
        ConnectionLogOptions = M.AwsEc2ClientVpnEndpointConnectionLogOptionsDetails,
        SecurityGroupIdSet = {
            type = "list",
            member = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
        SelfServicePortalUrl = {
            type = "string",
        },
        ClientConnectOptions = M.AwsEc2ClientVpnEndpointClientConnectOptionsDetails,
        SessionTimeoutHours = {
            type = "integer",
        },
        ClientLoginBannerOptions = M.AwsEc2ClientVpnEndpointClientLoginBannerOptionsDetails,
    },
}

M.AwsEc2EipDetails = {
    type = "structure",
    id = "AwsEc2EipDetails",
    members = {
        InstanceId = {
            type = "string",
        },
        PublicIp = {
            type = "string",
        },
        AllocationId = {
            type = "string",
        },
        AssociationId = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        PublicIpv4Pool = {
            type = "string",
        },
        NetworkBorderGroup = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        NetworkInterfaceOwnerId = {
            type = "string",
        },
        PrivateIpAddress = {
            type = "string",
        },
    },
}

M.AwsEc2InstanceMetadataOptions = {
    type = "structure",
    id = "AwsEc2InstanceMetadataOptions",
    members = {
        HttpEndpoint = {
            type = "string",
        },
        HttpProtocolIpv6 = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "integer",
        },
        HttpTokens = {
            type = "string",
        },
        InstanceMetadataTags = {
            type = "string",
        },
    },
}

M.AwsEc2InstanceMonitoringDetails = {
    type = "structure",
    id = "AwsEc2InstanceMonitoringDetails",
    members = {
        State = {
            type = "string",
        },
    },
}

M.AwsEc2InstanceNetworkInterfacesDetails = {
    type = "structure",
    id = "AwsEc2InstanceNetworkInterfacesDetails",
    members = {
        NetworkInterfaceId = {
            type = "string",
        },
    },
}

M.AwsEc2InstanceDetails = {
    type = "structure",
    id = "AwsEc2InstanceDetails",
    members = {
        Type = {
            type = "string",
        },
        ImageId = {
            type = "string",
        },
        IpV4Addresses = {
            type = "list",
            member = { type = "string" },
        },
        IpV6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        KeyName = {
            type = "string",
        },
        IamInstanceProfileArn = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        LaunchedAt = {
            type = "string",
        },
        NetworkInterfaces = {
            type = "list",
            member = M.AwsEc2InstanceNetworkInterfacesDetails,
        },
        VirtualizationType = {
            type = "string",
        },
        MetadataOptions = M.AwsEc2InstanceMetadataOptions,
        Monitoring = M.AwsEc2InstanceMonitoringDetails,
    },
}

M.AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails",
    members = {
        DeleteOnTermination = {
            type = "boolean",
        },
        Encrypted = {
            type = "boolean",
        },
        Iops = {
            type = "integer",
        },
        KmsKeyId = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
        },
        Throughput = {
            type = "integer",
        },
        VolumeSize = {
            type = "integer",
        },
        VolumeType = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails",
    members = {
        DeviceName = {
            type = "string",
        },
        Ebs = M.AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails,
        NoDevice = {
            type = "string",
        },
        VirtualName = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails",
    members = {
        CapacityReservationId = {
            type = "string",
        },
        CapacityReservationResourceGroupArn = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails",
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        CapacityReservationTarget = M.AwsEc2LaunchTemplateDataCapacityReservationSpecificationCapacityReservationTargetDetails,
    },
}

M.AwsEc2LaunchTemplateDataCpuOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataCpuOptionsDetails",
    members = {
        CoreCount = {
            type = "integer",
        },
        ThreadsPerCore = {
            type = "integer",
        },
    },
}

M.AwsEc2LaunchTemplateDataCreditSpecificationDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataCreditSpecificationDetails",
    members = {
        CpuCredits = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails",
    members = {
        Count = {
            type = "integer",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataEnclaveOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataEnclaveOptionsDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsEc2LaunchTemplateDataHibernationOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataHibernationOptionsDetails",
    members = {
        Configured = {
            type = "boolean",
        },
    },
}

M.AwsEc2LaunchTemplateDataIamInstanceProfileDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataIamInstanceProfileDetails",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails",
    members = {
        BlockDurationMinutes = {
            type = "integer",
        },
        InstanceInterruptionBehavior = {
            type = "string",
        },
        MaxPrice = {
            type = "string",
        },
        SpotInstanceType = {
            type = "string",
        },
        ValidUntil = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails",
    members = {
        MarketType = {
            type = "string",
        },
        SpotOptions = M.AwsEc2LaunchTemplateDataInstanceMarketOptionsSpotOptionsDetails,
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails",
    members = {
        Max = {
            type = "integer",
        },
        Min = {
            type = "integer",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails",
    members = {
        Max = {
            type = "integer",
        },
        Min = {
            type = "integer",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails",
    members = {
        Max = {
            type = "integer",
        },
        Min = {
            type = "integer",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails",
    members = {
        Max = {
            type = "double",
        },
        Min = {
            type = "double",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails",
    members = {
        Max = {
            type = "integer",
        },
        Min = {
            type = "integer",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails",
    members = {
        Max = {
            type = "integer",
        },
        Min = {
            type = "integer",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails",
    members = {
        Max = {
            type = "double",
        },
        Min = {
            type = "double",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails",
    members = {
        Max = {
            type = "integer",
        },
        Min = {
            type = "integer",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataInstanceRequirementsDetails",
    members = {
        AcceleratorCount = M.AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails,
        AcceleratorManufacturers = {
            type = "list",
            member = { type = "string" },
        },
        AcceleratorNames = {
            type = "list",
            member = { type = "string" },
        },
        AcceleratorTotalMemoryMiB = M.AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails,
        AcceleratorTypes = {
            type = "list",
            member = { type = "string" },
        },
        BareMetal = {
            type = "string",
        },
        BaselineEbsBandwidthMbps = M.AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails,
        BurstablePerformance = {
            type = "string",
        },
        CpuManufacturers = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        InstanceGenerations = {
            type = "list",
            member = { type = "string" },
        },
        LocalStorage = {
            type = "string",
        },
        LocalStorageTypes = {
            type = "list",
            member = { type = "string" },
        },
        MemoryGiBPerVCpu = M.AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails,
        MemoryMiB = M.AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails,
        NetworkInterfaceCount = M.AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails,
        OnDemandMaxPricePercentageOverLowestPrice = {
            type = "integer",
        },
        RequireHibernateSupport = {
            type = "boolean",
        },
        SpotMaxPricePercentageOverLowestPrice = {
            type = "integer",
        },
        TotalLocalStorageGB = M.AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails,
        VCpuCount = M.AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails,
    },
}

M.AwsEc2LaunchTemplateDataLicenseSetDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataLicenseSetDetails",
    members = {
        LicenseConfigurationArn = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataMaintenanceOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataMaintenanceOptionsDetails",
    members = {
        AutoRecovery = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataMetadataOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataMetadataOptionsDetails",
    members = {
        HttpEndpoint = {
            type = "string",
        },
        HttpProtocolIpv6 = {
            type = "string",
        },
        HttpTokens = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "integer",
        },
        InstanceMetadataTags = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataMonitoringDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataMonitoringDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails",
    members = {
        Ipv4Prefix = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails",
    members = {
        Ipv6Address = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails",
    members = {
        Ipv6Prefix = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails",
    members = {
        Primary = {
            type = "boolean",
        },
        PrivateIpAddress = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails",
    members = {
        AssociateCarrierIpAddress = {
            type = "boolean",
        },
        AssociatePublicIpAddress = {
            type = "boolean",
        },
        DeleteOnTermination = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        DeviceIndex = {
            type = "integer",
        },
        Groups = {
            type = "list",
            member = { type = "string" },
        },
        InterfaceType = {
            type = "string",
        },
        Ipv4PrefixCount = {
            type = "integer",
        },
        Ipv4Prefixes = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails,
        },
        Ipv6AddressCount = {
            type = "integer",
        },
        Ipv6Addresses = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails,
        },
        Ipv6PrefixCount = {
            type = "integer",
        },
        Ipv6Prefixes = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails,
        },
        NetworkCardIndex = {
            type = "integer",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        PrivateIpAddress = {
            type = "string",
        },
        PrivateIpAddresses = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails,
        },
        SecondaryPrivateIpAddressCount = {
            type = "integer",
        },
        SubnetId = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataPlacementDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataPlacementDetails",
    members = {
        Affinity = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        HostId = {
            type = "string",
        },
        HostResourceGroupArn = {
            type = "string",
        },
        PartitionNumber = {
            type = "integer",
        },
        SpreadDomain = {
            type = "string",
        },
        Tenancy = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails",
    members = {
        EnableResourceNameDnsAAAARecord = {
            type = "boolean",
        },
        EnableResourceNameDnsARecord = {
            type = "boolean",
        },
        HostnameType = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDataDetails",
    members = {
        BlockDeviceMappingSet = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails,
        },
        CapacityReservationSpecification = M.AwsEc2LaunchTemplateDataCapacityReservationSpecificationDetails,
        CpuOptions = M.AwsEc2LaunchTemplateDataCpuOptionsDetails,
        CreditSpecification = M.AwsEc2LaunchTemplateDataCreditSpecificationDetails,
        DisableApiStop = {
            type = "boolean",
        },
        DisableApiTermination = {
            type = "boolean",
        },
        EbsOptimized = {
            type = "boolean",
        },
        ElasticGpuSpecificationSet = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails,
        },
        ElasticInferenceAcceleratorSet = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails,
        },
        EnclaveOptions = M.AwsEc2LaunchTemplateDataEnclaveOptionsDetails,
        HibernationOptions = M.AwsEc2LaunchTemplateDataHibernationOptionsDetails,
        IamInstanceProfile = M.AwsEc2LaunchTemplateDataIamInstanceProfileDetails,
        ImageId = {
            type = "string",
        },
        InstanceInitiatedShutdownBehavior = {
            type = "string",
        },
        InstanceMarketOptions = M.AwsEc2LaunchTemplateDataInstanceMarketOptionsDetails,
        InstanceRequirements = M.AwsEc2LaunchTemplateDataInstanceRequirementsDetails,
        InstanceType = {
            type = "string",
        },
        KernelId = {
            type = "string",
        },
        KeyName = {
            type = "string",
        },
        LicenseSet = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataLicenseSetDetails,
        },
        MaintenanceOptions = M.AwsEc2LaunchTemplateDataMaintenanceOptionsDetails,
        MetadataOptions = M.AwsEc2LaunchTemplateDataMetadataOptionsDetails,
        Monitoring = M.AwsEc2LaunchTemplateDataMonitoringDetails,
        NetworkInterfaceSet = {
            type = "list",
            member = M.AwsEc2LaunchTemplateDataNetworkInterfaceSetDetails,
        },
        Placement = M.AwsEc2LaunchTemplateDataPlacementDetails,
        PrivateDnsNameOptions = M.AwsEc2LaunchTemplateDataPrivateDnsNameOptionsDetails,
        RamDiskId = {
            type = "string",
        },
        SecurityGroupIdSet = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupSet = {
            type = "list",
            member = { type = "string" },
        },
        UserData = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDetails = {
    type = "structure",
    id = "AwsEc2LaunchTemplateDetails",
    members = {
        LaunchTemplateName = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LaunchTemplateData = M.AwsEc2LaunchTemplateDataDetails,
        DefaultVersionNumber = {
            type = "long",
        },
        LatestVersionNumber = {
            type = "long",
        },
    },
}

M.AwsEc2NetworkAclAssociation = {
    type = "structure",
    id = "AwsEc2NetworkAclAssociation",
    members = {
        NetworkAclAssociationId = {
            type = "string",
        },
        NetworkAclId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
    },
}

M.IcmpTypeCode = {
    type = "structure",
    id = "IcmpTypeCode",
    members = {
        Code = {
            type = "integer",
        },
        Type = {
            type = "integer",
        },
    },
}

M.PortRangeFromTo = {
    type = "structure",
    id = "PortRangeFromTo",
    members = {
        From = {
            type = "integer",
        },
        To = {
            type = "integer",
        },
    },
}

M.AwsEc2NetworkAclEntry = {
    type = "structure",
    id = "AwsEc2NetworkAclEntry",
    members = {
        CidrBlock = {
            type = "string",
        },
        Egress = {
            type = "boolean",
        },
        IcmpTypeCode = M.IcmpTypeCode,
        Ipv6CidrBlock = {
            type = "string",
        },
        PortRange = M.PortRangeFromTo,
        Protocol = {
            type = "string",
        },
        RuleAction = {
            type = "string",
        },
        RuleNumber = {
            type = "integer",
        },
    },
}

M.AwsEc2NetworkAclDetails = {
    type = "structure",
    id = "AwsEc2NetworkAclDetails",
    members = {
        IsDefault = {
            type = "boolean",
        },
        NetworkAclId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        Associations = {
            type = "list",
            member = M.AwsEc2NetworkAclAssociation,
        },
        Entries = {
            type = "list",
            member = M.AwsEc2NetworkAclEntry,
        },
    },
}

M.AwsEc2NetworkInterfaceAttachment = {
    type = "structure",
    id = "AwsEc2NetworkInterfaceAttachment",
    members = {
        AttachTime = {
            type = "string",
        },
        AttachmentId = {
            type = "string",
        },
        DeleteOnTermination = {
            type = "boolean",
        },
        DeviceIndex = {
            type = "integer",
        },
        InstanceId = {
            type = "string",
        },
        InstanceOwnerId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsEc2NetworkInterfaceIpV6AddressDetail = {
    type = "structure",
    id = "AwsEc2NetworkInterfaceIpV6AddressDetail",
    members = {
        IpV6Address = {
            type = "string",
        },
    },
}

M.AwsEc2NetworkInterfacePrivateIpAddressDetail = {
    type = "structure",
    id = "AwsEc2NetworkInterfacePrivateIpAddressDetail",
    members = {
        PrivateIpAddress = {
            type = "string",
        },
        PrivateDnsName = {
            type = "string",
        },
    },
}

M.AwsEc2NetworkInterfaceSecurityGroup = {
    type = "structure",
    id = "AwsEc2NetworkInterfaceSecurityGroup",
    members = {
        GroupName = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
    },
}

M.AwsEc2NetworkInterfaceDetails = {
    type = "structure",
    id = "AwsEc2NetworkInterfaceDetails",
    members = {
        Attachment = M.AwsEc2NetworkInterfaceAttachment,
        NetworkInterfaceId = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = M.AwsEc2NetworkInterfaceSecurityGroup,
        },
        SourceDestCheck = {
            type = "boolean",
        },
        IpV6Addresses = {
            type = "list",
            member = M.AwsEc2NetworkInterfaceIpV6AddressDetail,
        },
        PrivateIpAddresses = {
            type = "list",
            member = M.AwsEc2NetworkInterfacePrivateIpAddressDetail,
        },
        PublicDnsName = {
            type = "string",
        },
        PublicIp = {
            type = "string",
        },
    },
}

M.PropagatingVgwSetDetails = {
    type = "structure",
    id = "PropagatingVgwSetDetails",
    members = {
        GatewayId = {
            type = "string",
        },
    },
}

M.RouteSetDetails = {
    type = "structure",
    id = "RouteSetDetails",
    members = {
        CarrierGatewayId = {
            type = "string",
        },
        CoreNetworkArn = {
            type = "string",
        },
        DestinationCidrBlock = {
            type = "string",
        },
        DestinationIpv6CidrBlock = {
            type = "string",
        },
        DestinationPrefixListId = {
            type = "string",
        },
        EgressOnlyInternetGatewayId = {
            type = "string",
        },
        GatewayId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        InstanceOwnerId = {
            type = "string",
        },
        LocalGatewayId = {
            type = "string",
        },
        NatGatewayId = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        State = {
            type = "string",
        },
        TransitGatewayId = {
            type = "string",
        },
        VpcPeeringConnectionId = {
            type = "string",
        },
    },
}

M.AwsEc2RouteTableDetails = {
    type = "structure",
    id = "AwsEc2RouteTableDetails",
    members = {
        AssociationSet = {
            type = "list",
            member = M.AssociationSetDetails,
        },
        OwnerId = {
            type = "string",
        },
        PropagatingVgwSet = {
            type = "list",
            member = M.PropagatingVgwSetDetails,
        },
        RouteTableId = {
            type = "string",
        },
        RouteSet = {
            type = "list",
            member = M.RouteSetDetails,
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupIpRange = {
    type = "structure",
    id = "AwsEc2SecurityGroupIpRange",
    members = {
        CidrIp = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupIpv6Range = {
    type = "structure",
    id = "AwsEc2SecurityGroupIpv6Range",
    members = {
        CidrIpv6 = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupPrefixListId = {
    type = "structure",
    id = "AwsEc2SecurityGroupPrefixListId",
    members = {
        PrefixListId = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupUserIdGroupPair = {
    type = "structure",
    id = "AwsEc2SecurityGroupUserIdGroupPair",
    members = {
        GroupId = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        PeeringStatus = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcPeeringConnectionId = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupIpPermission = {
    type = "structure",
    id = "AwsEc2SecurityGroupIpPermission",
    members = {
        IpProtocol = {
            type = "string",
        },
        FromPort = {
            type = "integer",
        },
        ToPort = {
            type = "integer",
        },
        UserIdGroupPairs = {
            type = "list",
            member = M.AwsEc2SecurityGroupUserIdGroupPair,
        },
        IpRanges = {
            type = "list",
            member = M.AwsEc2SecurityGroupIpRange,
        },
        Ipv6Ranges = {
            type = "list",
            member = M.AwsEc2SecurityGroupIpv6Range,
        },
        PrefixListIds = {
            type = "list",
            member = M.AwsEc2SecurityGroupPrefixListId,
        },
    },
}

M.AwsEc2SecurityGroupDetails = {
    type = "structure",
    id = "AwsEc2SecurityGroupDetails",
    members = {
        GroupName = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        IpPermissions = {
            type = "list",
            member = M.AwsEc2SecurityGroupIpPermission,
        },
        IpPermissionsEgress = {
            type = "list",
            member = M.AwsEc2SecurityGroupIpPermission,
        },
    },
}

M.Ipv6CidrBlockAssociation = {
    type = "structure",
    id = "Ipv6CidrBlockAssociation",
    members = {
        AssociationId = {
            type = "string",
        },
        Ipv6CidrBlock = {
            type = "string",
        },
        CidrBlockState = {
            type = "string",
        },
    },
}

M.AwsEc2SubnetDetails = {
    type = "structure",
    id = "AwsEc2SubnetDetails",
    members = {
        AssignIpv6AddressOnCreation = {
            type = "boolean",
        },
        AvailabilityZone = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        AvailableIpAddressCount = {
            type = "integer",
        },
        CidrBlock = {
            type = "string",
        },
        DefaultForAz = {
            type = "boolean",
        },
        MapPublicIpOnLaunch = {
            type = "boolean",
        },
        OwnerId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        SubnetArn = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        Ipv6CidrBlockAssociationSet = {
            type = "list",
            member = M.Ipv6CidrBlockAssociation,
        },
    },
}

M.AwsEc2TransitGatewayDetails = {
    type = "structure",
    id = "AwsEc2TransitGatewayDetails",
    members = {
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultRouteTablePropagation = {
            type = "string",
        },
        AutoAcceptSharedAttachments = {
            type = "string",
        },
        DefaultRouteTableAssociation = {
            type = "string",
        },
        TransitGatewayCidrBlocks = {
            type = "list",
            member = { type = "string" },
        },
        AssociationDefaultRouteTableId = {
            type = "string",
        },
        PropagationDefaultRouteTableId = {
            type = "string",
        },
        VpnEcmpSupport = {
            type = "string",
        },
        DnsSupport = {
            type = "string",
        },
        MulticastSupport = {
            type = "string",
        },
        AmazonSideAsn = {
            type = "integer",
        },
    },
}

M.AwsEc2VolumeAttachment = {
    type = "structure",
    id = "AwsEc2VolumeAttachment",
    members = {
        AttachTime = {
            type = "string",
        },
        DeleteOnTermination = {
            type = "boolean",
        },
        InstanceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsEc2VolumeDetails = {
    type = "structure",
    id = "AwsEc2VolumeDetails",
    members = {
        CreateTime = {
            type = "string",
        },
        DeviceName = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        Size = {
            type = "integer",
        },
        SnapshotId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member = M.AwsEc2VolumeAttachment,
        },
        VolumeId = {
            type = "string",
        },
        VolumeType = {
            type = "string",
        },
        VolumeScanStatus = {
            type = "string",
        },
    },
}

M.CidrBlockAssociation = {
    type = "structure",
    id = "CidrBlockAssociation",
    members = {
        AssociationId = {
            type = "string",
        },
        CidrBlock = {
            type = "string",
        },
        CidrBlockState = {
            type = "string",
        },
    },
}

M.AwsEc2VpcDetails = {
    type = "structure",
    id = "AwsEc2VpcDetails",
    members = {
        CidrBlockAssociationSet = {
            type = "list",
            member = M.CidrBlockAssociation,
        },
        Ipv6CidrBlockAssociationSet = {
            type = "list",
            member = M.Ipv6CidrBlockAssociation,
        },
        DhcpOptionsId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.AwsEc2VpcEndpointServiceServiceTypeDetails = {
    type = "structure",
    id = "AwsEc2VpcEndpointServiceServiceTypeDetails",
    members = {
        ServiceType = {
            type = "string",
        },
    },
}

M.AwsEc2VpcEndpointServiceDetails = {
    type = "structure",
    id = "AwsEc2VpcEndpointServiceDetails",
    members = {
        AcceptanceRequired = {
            type = "boolean",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        BaseEndpointDnsNames = {
            type = "list",
            member = { type = "string" },
        },
        ManagesVpcEndpoints = {
            type = "boolean",
        },
        GatewayLoadBalancerArns = {
            type = "list",
            member = { type = "string" },
        },
        NetworkLoadBalancerArns = {
            type = "list",
            member = { type = "string" },
        },
        PrivateDnsName = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        ServiceState = {
            type = "string",
        },
        ServiceType = {
            type = "list",
            member = M.AwsEc2VpcEndpointServiceServiceTypeDetails,
        },
    },
}

M.VpcInfoCidrBlockSetDetails = {
    type = "structure",
    id = "VpcInfoCidrBlockSetDetails",
    members = {
        CidrBlock = {
            type = "string",
        },
    },
}

M.VpcInfoIpv6CidrBlockSetDetails = {
    type = "structure",
    id = "VpcInfoIpv6CidrBlockSetDetails",
    members = {
        Ipv6CidrBlock = {
            type = "string",
        },
    },
}

M.VpcInfoPeeringOptionsDetails = {
    type = "structure",
    id = "VpcInfoPeeringOptionsDetails",
    members = {
        AllowDnsResolutionFromRemoteVpc = {
            type = "boolean",
        },
        AllowEgressFromLocalClassicLinkToRemoteVpc = {
            type = "boolean",
        },
        AllowEgressFromLocalVpcToRemoteClassicLink = {
            type = "boolean",
        },
    },
}

M.AwsEc2VpcPeeringConnectionVpcInfoDetails = {
    type = "structure",
    id = "AwsEc2VpcPeeringConnectionVpcInfoDetails",
    members = {
        CidrBlock = {
            type = "string",
        },
        CidrBlockSet = {
            type = "list",
            member = M.VpcInfoCidrBlockSetDetails,
        },
        Ipv6CidrBlockSet = {
            type = "list",
            member = M.VpcInfoIpv6CidrBlockSetDetails,
        },
        OwnerId = {
            type = "string",
        },
        PeeringOptions = M.VpcInfoPeeringOptionsDetails,
        Region = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsEc2VpcPeeringConnectionStatusDetails = {
    type = "structure",
    id = "AwsEc2VpcPeeringConnectionStatusDetails",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AwsEc2VpcPeeringConnectionDetails = {
    type = "structure",
    id = "AwsEc2VpcPeeringConnectionDetails",
    members = {
        AccepterVpcInfo = M.AwsEc2VpcPeeringConnectionVpcInfoDetails,
        ExpirationTime = {
            type = "string",
        },
        RequesterVpcInfo = M.AwsEc2VpcPeeringConnectionVpcInfoDetails,
        Status = M.AwsEc2VpcPeeringConnectionStatusDetails,
        VpcPeeringConnectionId = {
            type = "string",
        },
    },
}

M.AwsEc2VpnConnectionOptionsTunnelOptionsDetails = {
    type = "structure",
    id = "AwsEc2VpnConnectionOptionsTunnelOptionsDetails",
    members = {
        DpdTimeoutSeconds = {
            type = "integer",
        },
        IkeVersions = {
            type = "list",
            member = { type = "string" },
        },
        OutsideIpAddress = {
            type = "string",
        },
        Phase1DhGroupNumbers = {
            type = "list",
            member = { type = "integer" },
        },
        Phase1EncryptionAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        Phase1IntegrityAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        Phase1LifetimeSeconds = {
            type = "integer",
        },
        Phase2DhGroupNumbers = {
            type = "list",
            member = { type = "integer" },
        },
        Phase2EncryptionAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        Phase2IntegrityAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        Phase2LifetimeSeconds = {
            type = "integer",
        },
        PreSharedKey = {
            type = "string",
        },
        RekeyFuzzPercentage = {
            type = "integer",
        },
        RekeyMarginTimeSeconds = {
            type = "integer",
        },
        ReplayWindowSize = {
            type = "integer",
        },
        TunnelInsideCidr = {
            type = "string",
        },
    },
}

M.AwsEc2VpnConnectionOptionsDetails = {
    type = "structure",
    id = "AwsEc2VpnConnectionOptionsDetails",
    members = {
        StaticRoutesOnly = {
            type = "boolean",
        },
        TunnelOptions = {
            type = "list",
            member = M.AwsEc2VpnConnectionOptionsTunnelOptionsDetails,
        },
    },
}

M.AwsEc2VpnConnectionRoutesDetails = {
    type = "structure",
    id = "AwsEc2VpnConnectionRoutesDetails",
    members = {
        DestinationCidrBlock = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.AwsEc2VpnConnectionVgwTelemetryDetails = {
    type = "structure",
    id = "AwsEc2VpnConnectionVgwTelemetryDetails",
    members = {
        AcceptedRouteCount = {
            type = "integer",
        },
        CertificateArn = {
            type = "string",
        },
        LastStatusChange = {
            type = "string",
        },
        OutsideIpAddress = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.AwsEc2VpnConnectionDetails = {
    type = "structure",
    id = "AwsEc2VpnConnectionDetails",
    members = {
        VpnConnectionId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CustomerGatewayId = {
            type = "string",
        },
        CustomerGatewayConfiguration = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        VpnGatewayId = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        VgwTelemetry = {
            type = "list",
            member = M.AwsEc2VpnConnectionVgwTelemetryDetails,
        },
        Options = M.AwsEc2VpnConnectionOptionsDetails,
        Routes = {
            type = "list",
            member = M.AwsEc2VpnConnectionRoutesDetails,
        },
        TransitGatewayId = {
            type = "string",
        },
    },
}

M.AwsEcrContainerImageDetails = {
    type = "structure",
    id = "AwsEcrContainerImageDetails",
    members = {
        RegistryId = {
            type = "string",
        },
        RepositoryName = {
            type = "string",
        },
        Architecture = {
            type = "string",
        },
        ImageDigest = {
            type = "string",
        },
        ImageTags = {
            type = "list",
            member = { type = "string" },
        },
        ImagePublishedAt = {
            type = "string",
        },
    },
}

M.AwsEcrRepositoryImageScanningConfigurationDetails = {
    type = "structure",
    id = "AwsEcrRepositoryImageScanningConfigurationDetails",
    members = {
        ScanOnPush = {
            type = "boolean",
        },
    },
}

M.AwsEcrRepositoryLifecyclePolicyDetails = {
    type = "structure",
    id = "AwsEcrRepositoryLifecyclePolicyDetails",
    members = {
        LifecyclePolicyText = {
            type = "string",
        },
        RegistryId = {
            type = "string",
        },
    },
}

M.AwsEcrRepositoryDetails = {
    type = "structure",
    id = "AwsEcrRepositoryDetails",
    members = {
        Arn = {
            type = "string",
        },
        ImageScanningConfiguration = M.AwsEcrRepositoryImageScanningConfigurationDetails,
        ImageTagMutability = {
            type = "string",
        },
        LifecyclePolicy = M.AwsEcrRepositoryLifecyclePolicyDetails,
        RepositoryName = {
            type = "string",
        },
        RepositoryPolicyText = {
            type = "string",
        },
    },
}

M.AwsEcsClusterClusterSettingsDetails = {
    type = "structure",
    id = "AwsEcsClusterClusterSettingsDetails",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails = {
    type = "structure",
    id = "AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails",
    members = {
        CloudWatchEncryptionEnabled = {
            type = "boolean",
        },
        CloudWatchLogGroupName = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3EncryptionEnabled = {
            type = "boolean",
        },
        S3KeyPrefix = {
            type = "string",
        },
    },
}

M.AwsEcsClusterConfigurationExecuteCommandConfigurationDetails = {
    type = "structure",
    id = "AwsEcsClusterConfigurationExecuteCommandConfigurationDetails",
    members = {
        KmsKeyId = {
            type = "string",
        },
        LogConfiguration = M.AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails,
        Logging = {
            type = "string",
        },
    },
}

M.AwsEcsClusterConfigurationDetails = {
    type = "structure",
    id = "AwsEcsClusterConfigurationDetails",
    members = {
        ExecuteCommandConfiguration = M.AwsEcsClusterConfigurationExecuteCommandConfigurationDetails,
    },
}

M.AwsEcsClusterDefaultCapacityProviderStrategyDetails = {
    type = "structure",
    id = "AwsEcsClusterDefaultCapacityProviderStrategyDetails",
    members = {
        Base = {
            type = "integer",
        },
        CapacityProvider = {
            type = "string",
        },
        Weight = {
            type = "integer",
        },
    },
}

M.AwsEcsClusterDetails = {
    type = "structure",
    id = "AwsEcsClusterDetails",
    members = {
        ClusterArn = {
            type = "string",
        },
        ActiveServicesCount = {
            type = "integer",
        },
        CapacityProviders = {
            type = "list",
            member = { type = "string" },
        },
        ClusterSettings = {
            type = "list",
            member = M.AwsEcsClusterClusterSettingsDetails,
        },
        Configuration = M.AwsEcsClusterConfigurationDetails,
        DefaultCapacityProviderStrategy = {
            type = "list",
            member = M.AwsEcsClusterDefaultCapacityProviderStrategyDetails,
        },
        ClusterName = {
            type = "string",
        },
        RegisteredContainerInstancesCount = {
            type = "integer",
        },
        RunningTasksCount = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsMountPoint = {
    type = "structure",
    id = "AwsMountPoint",
    members = {
        SourceVolume = {
            type = "string",
        },
        ContainerPath = {
            type = "string",
        },
    },
}

M.AwsEcsContainerDetails = {
    type = "structure",
    id = "AwsEcsContainerDetails",
    members = {
        Name = {
            type = "string",
        },
        Image = {
            type = "string",
        },
        MountPoints = {
            type = "list",
            member = M.AwsMountPoint,
        },
        Privileged = {
            type = "boolean",
        },
    },
}

M.AwsEcsServiceCapacityProviderStrategyDetails = {
    type = "structure",
    id = "AwsEcsServiceCapacityProviderStrategyDetails",
    members = {
        Base = {
            type = "integer",
        },
        CapacityProvider = {
            type = "string",
        },
        Weight = {
            type = "integer",
        },
    },
}

M.AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails = {
    type = "structure",
    id = "AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails",
    members = {
        Enable = {
            type = "boolean",
        },
        Rollback = {
            type = "boolean",
        },
    },
}

M.AwsEcsServiceDeploymentConfigurationDetails = {
    type = "structure",
    id = "AwsEcsServiceDeploymentConfigurationDetails",
    members = {
        DeploymentCircuitBreaker = M.AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails,
        MaximumPercent = {
            type = "integer",
        },
        MinimumHealthyPercent = {
            type = "integer",
        },
    },
}

M.AwsEcsServiceDeploymentControllerDetails = {
    type = "structure",
    id = "AwsEcsServiceDeploymentControllerDetails",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsServiceLoadBalancersDetails = {
    type = "structure",
    id = "AwsEcsServiceLoadBalancersDetails",
    members = {
        ContainerName = {
            type = "string",
        },
        ContainerPort = {
            type = "integer",
        },
        LoadBalancerName = {
            type = "string",
        },
        TargetGroupArn = {
            type = "string",
        },
    },
}

M.AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails = {
    type = "structure",
    id = "AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails",
    members = {
        AssignPublicIp = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsEcsServiceNetworkConfigurationDetails = {
    type = "structure",
    id = "AwsEcsServiceNetworkConfigurationDetails",
    members = {
        AwsVpcConfiguration = M.AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails,
    },
}

M.AwsEcsServicePlacementConstraintsDetails = {
    type = "structure",
    id = "AwsEcsServicePlacementConstraintsDetails",
    members = {
        Expression = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsServicePlacementStrategiesDetails = {
    type = "structure",
    id = "AwsEcsServicePlacementStrategiesDetails",
    members = {
        Field = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsServiceServiceRegistriesDetails = {
    type = "structure",
    id = "AwsEcsServiceServiceRegistriesDetails",
    members = {
        ContainerName = {
            type = "string",
        },
        ContainerPort = {
            type = "integer",
        },
        Port = {
            type = "integer",
        },
        RegistryArn = {
            type = "string",
        },
    },
}

M.AwsEcsServiceDetails = {
    type = "structure",
    id = "AwsEcsServiceDetails",
    members = {
        CapacityProviderStrategy = {
            type = "list",
            member = M.AwsEcsServiceCapacityProviderStrategyDetails,
        },
        Cluster = {
            type = "string",
        },
        DeploymentConfiguration = M.AwsEcsServiceDeploymentConfigurationDetails,
        DeploymentController = M.AwsEcsServiceDeploymentControllerDetails,
        DesiredCount = {
            type = "integer",
        },
        EnableEcsManagedTags = {
            type = "boolean",
        },
        EnableExecuteCommand = {
            type = "boolean",
        },
        HealthCheckGracePeriodSeconds = {
            type = "integer",
        },
        LaunchType = {
            type = "string",
        },
        LoadBalancers = {
            type = "list",
            member = M.AwsEcsServiceLoadBalancersDetails,
        },
        Name = {
            type = "string",
        },
        NetworkConfiguration = M.AwsEcsServiceNetworkConfigurationDetails,
        PlacementConstraints = {
            type = "list",
            member = M.AwsEcsServicePlacementConstraintsDetails,
        },
        PlacementStrategies = {
            type = "list",
            member = M.AwsEcsServicePlacementStrategiesDetails,
        },
        PlatformVersion = {
            type = "string",
        },
        PropagateTags = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        SchedulingStrategy = {
            type = "string",
        },
        ServiceArn = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        ServiceRegistries = {
            type = "list",
            member = M.AwsEcsServiceServiceRegistriesDetails,
        },
        TaskDefinition = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails",
    members = {
        Condition = {
            type = "string",
        },
        ContainerName = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails",
    members = {
        Hostname = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails",
    members = {
        Options = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails",
    members = {
        Command = {
            type = "list",
            member = { type = "string" },
        },
        Interval = {
            type = "integer",
        },
        Retries = {
            type = "integer",
        },
        StartPeriod = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails",
    members = {
        Add = {
            type = "list",
            member = { type = "string" },
        },
        Drop = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails",
    members = {
        ContainerPath = {
            type = "string",
        },
        HostPath = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails",
    members = {
        ContainerPath = {
            type = "string",
        },
        MountOptions = {
            type = "list",
            member = { type = "string" },
        },
        Size = {
            type = "integer",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails",
    members = {
        Capabilities = M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails,
        Devices = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails,
        },
        InitProcessEnabled = {
            type = "boolean",
        },
        MaxSwap = {
            type = "integer",
        },
        SharedMemorySize = {
            type = "integer",
        },
        Swappiness = {
            type = "integer",
        },
        Tmpfs = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails,
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails",
    members = {
        Name = {
            type = "string",
        },
        ValueFrom = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails",
    members = {
        LogDriver = {
            type = "string",
        },
        Options = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SecretOptions = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails,
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails",
    members = {
        ContainerPath = {
            type = "string",
        },
        ReadOnly = {
            type = "boolean",
        },
        SourceVolume = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails",
    members = {
        ContainerPort = {
            type = "integer",
        },
        HostPort = {
            type = "integer",
        },
        Protocol = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails",
    members = {
        CredentialsParameter = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails",
    members = {
        Name = {
            type = "string",
        },
        ValueFrom = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails",
    members = {
        Namespace = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails",
    members = {
        HardLimit = {
            type = "integer",
        },
        Name = {
            type = "string",
        },
        SoftLimit = {
            type = "integer",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails",
    members = {
        ReadOnly = {
            type = "boolean",
        },
        SourceContainer = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionContainerDefinitionsDetails",
    members = {
        Command = {
            type = "list",
            member = { type = "string" },
        },
        Cpu = {
            type = "integer",
        },
        DependsOn = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails,
        },
        DisableNetworking = {
            type = "boolean",
        },
        DnsSearchDomains = {
            type = "list",
            member = { type = "string" },
        },
        DnsServers = {
            type = "list",
            member = { type = "string" },
        },
        DockerLabels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DockerSecurityOptions = {
            type = "list",
            member = { type = "string" },
        },
        EntryPoint = {
            type = "list",
            member = { type = "string" },
        },
        Environment = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails,
        },
        EnvironmentFiles = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails,
        },
        Essential = {
            type = "boolean",
        },
        ExtraHosts = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails,
        },
        FirelensConfiguration = M.AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails,
        HealthCheck = M.AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails,
        Hostname = {
            type = "string",
        },
        Image = {
            type = "string",
        },
        Interactive = {
            type = "boolean",
        },
        Links = {
            type = "list",
            member = { type = "string" },
        },
        LinuxParameters = M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails,
        LogConfiguration = M.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails,
        Memory = {
            type = "integer",
        },
        MemoryReservation = {
            type = "integer",
        },
        MountPoints = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails,
        },
        Name = {
            type = "string",
        },
        PortMappings = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails,
        },
        Privileged = {
            type = "boolean",
        },
        PseudoTerminal = {
            type = "boolean",
        },
        ReadonlyRootFilesystem = {
            type = "boolean",
        },
        RepositoryCredentials = M.AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails,
        ResourceRequirements = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails,
        },
        Secrets = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails,
        },
        StartTimeout = {
            type = "integer",
        },
        StopTimeout = {
            type = "integer",
        },
        SystemControls = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails,
        },
        Ulimits = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails,
        },
        User = {
            type = "string",
        },
        VolumesFrom = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails,
        },
        WorkingDirectory = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionInferenceAcceleratorsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionInferenceAcceleratorsDetails",
    members = {
        DeviceName = {
            type = "string",
        },
        DeviceType = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionPlacementConstraintsDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionPlacementConstraintsDetails",
    members = {
        Expression = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionProxyConfigurationDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionProxyConfigurationDetails",
    members = {
        ContainerName = {
            type = "string",
        },
        ProxyConfigurationProperties = {
            type = "list",
            member = M.AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails,
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails",
    members = {
        Autoprovision = {
            type = "boolean",
        },
        Driver = {
            type = "string",
        },
        DriverOpts = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Scope = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails",
    members = {
        AccessPointId = {
            type = "string",
        },
        Iam = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails",
    members = {
        AuthorizationConfig = M.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails,
        FilesystemId = {
            type = "string",
        },
        RootDirectory = {
            type = "string",
        },
        TransitEncryption = {
            type = "string",
        },
        TransitEncryptionPort = {
            type = "integer",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesHostDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionVolumesHostDetails",
    members = {
        SourcePath = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionVolumesDetails",
    members = {
        DockerVolumeConfiguration = M.AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails,
        EfsVolumeConfiguration = M.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails,
        Host = M.AwsEcsTaskDefinitionVolumesHostDetails,
        Name = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionDetails = {
    type = "structure",
    id = "AwsEcsTaskDefinitionDetails",
    members = {
        ContainerDefinitions = {
            type = "list",
            member = M.AwsEcsTaskDefinitionContainerDefinitionsDetails,
        },
        Cpu = {
            type = "string",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        Family = {
            type = "string",
        },
        InferenceAccelerators = {
            type = "list",
            member = M.AwsEcsTaskDefinitionInferenceAcceleratorsDetails,
        },
        IpcMode = {
            type = "string",
        },
        Memory = {
            type = "string",
        },
        NetworkMode = {
            type = "string",
        },
        PidMode = {
            type = "string",
        },
        PlacementConstraints = {
            type = "list",
            member = M.AwsEcsTaskDefinitionPlacementConstraintsDetails,
        },
        ProxyConfiguration = M.AwsEcsTaskDefinitionProxyConfigurationDetails,
        RequiresCompatibilities = {
            type = "list",
            member = { type = "string" },
        },
        TaskRoleArn = {
            type = "string",
        },
        Volumes = {
            type = "list",
            member = M.AwsEcsTaskDefinitionVolumesDetails,
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsEcsTaskVolumeHostDetails = {
    type = "structure",
    id = "AwsEcsTaskVolumeHostDetails",
    members = {
        SourcePath = {
            type = "string",
        },
    },
}

M.AwsEcsTaskVolumeDetails = {
    type = "structure",
    id = "AwsEcsTaskVolumeDetails",
    members = {
        Name = {
            type = "string",
        },
        Host = M.AwsEcsTaskVolumeHostDetails,
    },
}

M.AwsEcsTaskDetails = {
    type = "structure",
    id = "AwsEcsTaskDetails",
    members = {
        ClusterArn = {
            type = "string",
        },
        TaskDefinitionArn = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        CreatedAt = {
            type = "string",
        },
        StartedAt = {
            type = "string",
        },
        StartedBy = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        Volumes = {
            type = "list",
            member = M.AwsEcsTaskVolumeDetails,
        },
        Containers = {
            type = "list",
            member = M.AwsEcsContainerDetails,
        },
    },
}

M.AwsEfsAccessPointPosixUserDetails = {
    type = "structure",
    id = "AwsEfsAccessPointPosixUserDetails",
    members = {
        Gid = {
            type = "string",
        },
        SecondaryGids = {
            type = "list",
            member = { type = "string" },
        },
        Uid = {
            type = "string",
        },
    },
}

M.AwsEfsAccessPointRootDirectoryCreationInfoDetails = {
    type = "structure",
    id = "AwsEfsAccessPointRootDirectoryCreationInfoDetails",
    members = {
        OwnerGid = {
            type = "string",
        },
        OwnerUid = {
            type = "string",
        },
        Permissions = {
            type = "string",
        },
    },
}

M.AwsEfsAccessPointRootDirectoryDetails = {
    type = "structure",
    id = "AwsEfsAccessPointRootDirectoryDetails",
    members = {
        CreationInfo = M.AwsEfsAccessPointRootDirectoryCreationInfoDetails,
        Path = {
            type = "string",
        },
    },
}

M.AwsEfsAccessPointDetails = {
    type = "structure",
    id = "AwsEfsAccessPointDetails",
    members = {
        AccessPointId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
        },
        PosixUser = M.AwsEfsAccessPointPosixUserDetails,
        RootDirectory = M.AwsEfsAccessPointRootDirectoryDetails,
    },
}

M.AwsEksClusterLoggingClusterLoggingDetails = {
    type = "structure",
    id = "AwsEksClusterLoggingClusterLoggingDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
        Types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsEksClusterLoggingDetails = {
    type = "structure",
    id = "AwsEksClusterLoggingDetails",
    members = {
        ClusterLogging = {
            type = "list",
            member = M.AwsEksClusterLoggingClusterLoggingDetails,
        },
    },
}

M.AwsEksClusterResourcesVpcConfigDetails = {
    type = "structure",
    id = "AwsEksClusterResourcesVpcConfigDetails",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        EndpointPublicAccess = {
            type = "boolean",
        },
    },
}

M.AwsEksClusterDetails = {
    type = "structure",
    id = "AwsEksClusterDetails",
    members = {
        Arn = {
            type = "string",
        },
        CertificateAuthorityData = {
            type = "string",
        },
        ClusterStatus = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ResourcesVpcConfig = M.AwsEksClusterResourcesVpcConfigDetails,
        RoleArn = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Logging = M.AwsEksClusterLoggingDetails,
    },
}

M.AwsElasticBeanstalkEnvironmentEnvironmentLink = {
    type = "structure",
    id = "AwsElasticBeanstalkEnvironmentEnvironmentLink",
    members = {
        EnvironmentName = {
            type = "string",
        },
        LinkName = {
            type = "string",
        },
    },
}

M.AwsElasticBeanstalkEnvironmentOptionSetting = {
    type = "structure",
    id = "AwsElasticBeanstalkEnvironmentOptionSetting",
    members = {
        Namespace = {
            type = "string",
        },
        OptionName = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsElasticBeanstalkEnvironmentTier = {
    type = "structure",
    id = "AwsElasticBeanstalkEnvironmentTier",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.AwsElasticBeanstalkEnvironmentDetails = {
    type = "structure",
    id = "AwsElasticBeanstalkEnvironmentDetails",
    members = {
        ApplicationName = {
            type = "string",
        },
        Cname = {
            type = "string",
        },
        DateCreated = {
            type = "string",
        },
        DateUpdated = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EndpointUrl = {
            type = "string",
        },
        EnvironmentArn = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        EnvironmentLinks = {
            type = "list",
            member = M.AwsElasticBeanstalkEnvironmentEnvironmentLink,
        },
        EnvironmentName = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.AwsElasticBeanstalkEnvironmentOptionSetting,
        },
        PlatformArn = {
            type = "string",
        },
        SolutionStackName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Tier = M.AwsElasticBeanstalkEnvironmentTier,
        VersionLabel = {
            type = "string",
        },
    },
}

M.AwsElasticsearchDomainDomainEndpointOptions = {
    type = "structure",
    id = "AwsElasticsearchDomainDomainEndpointOptions",
    members = {
        EnforceHTTPS = {
            type = "boolean",
        },
        TLSSecurityPolicy = {
            type = "string",
        },
    },
}

M.AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails = {
    type = "structure",
    id = "AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails",
    members = {
        AvailabilityZoneCount = {
            type = "integer",
        },
    },
}

M.AwsElasticsearchDomainElasticsearchClusterConfigDetails = {
    type = "structure",
    id = "AwsElasticsearchDomainElasticsearchClusterConfigDetails",
    members = {
        DedicatedMasterCount = {
            type = "integer",
        },
        DedicatedMasterEnabled = {
            type = "boolean",
        },
        DedicatedMasterType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
        },
        ZoneAwarenessConfig = M.AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails,
        ZoneAwarenessEnabled = {
            type = "boolean",
        },
    },
}

M.AwsElasticsearchDomainEncryptionAtRestOptions = {
    type = "structure",
    id = "AwsElasticsearchDomainEncryptionAtRestOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.AwsElasticsearchDomainLogPublishingOptionsLogConfig = {
    type = "structure",
    id = "AwsElasticsearchDomainLogPublishingOptionsLogConfig",
    members = {
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsElasticsearchDomainLogPublishingOptions = {
    type = "structure",
    id = "AwsElasticsearchDomainLogPublishingOptions",
    members = {
        IndexSlowLogs = M.AwsElasticsearchDomainLogPublishingOptionsLogConfig,
        SearchSlowLogs = M.AwsElasticsearchDomainLogPublishingOptionsLogConfig,
        AuditLogs = M.AwsElasticsearchDomainLogPublishingOptionsLogConfig,
    },
}

M.AwsElasticsearchDomainNodeToNodeEncryptionOptions = {
    type = "structure",
    id = "AwsElasticsearchDomainNodeToNodeEncryptionOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsElasticsearchDomainServiceSoftwareOptions = {
    type = "structure",
    id = "AwsElasticsearchDomainServiceSoftwareOptions",
    members = {
        AutomatedUpdateDate = {
            type = "string",
        },
        Cancellable = {
            type = "boolean",
        },
        CurrentVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        NewVersion = {
            type = "string",
        },
        UpdateAvailable = {
            type = "boolean",
        },
        UpdateStatus = {
            type = "string",
        },
    },
}

M.AwsElasticsearchDomainVPCOptions = {
    type = "structure",
    id = "AwsElasticsearchDomainVPCOptions",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        VPCId = {
            type = "string",
        },
    },
}

M.AwsElasticsearchDomainDetails = {
    type = "structure",
    id = "AwsElasticsearchDomainDetails",
    members = {
        AccessPolicies = {
            type = "string",
        },
        DomainEndpointOptions = M.AwsElasticsearchDomainDomainEndpointOptions,
        DomainId = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Endpoints = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ElasticsearchVersion = {
            type = "string",
        },
        ElasticsearchClusterConfig = M.AwsElasticsearchDomainElasticsearchClusterConfigDetails,
        EncryptionAtRestOptions = M.AwsElasticsearchDomainEncryptionAtRestOptions,
        LogPublishingOptions = M.AwsElasticsearchDomainLogPublishingOptions,
        NodeToNodeEncryptionOptions = M.AwsElasticsearchDomainNodeToNodeEncryptionOptions,
        ServiceSoftwareOptions = M.AwsElasticsearchDomainServiceSoftwareOptions,
        VPCOptions = M.AwsElasticsearchDomainVPCOptions,
    },
}

M.AwsElbAppCookieStickinessPolicy = {
    type = "structure",
    id = "AwsElbAppCookieStickinessPolicy",
    members = {
        CookieName = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsElbLbCookieStickinessPolicy = {
    type = "structure",
    id = "AwsElbLbCookieStickinessPolicy",
    members = {
        CookieExpirationPeriod = {
            type = "long",
        },
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerAccessLog = {
    type = "structure",
    id = "AwsElbLoadBalancerAccessLog",
    members = {
        EmitInterval = {
            type = "integer",
        },
        Enabled = {
            type = "boolean",
        },
        S3BucketName = {
            type = "string",
        },
        S3BucketPrefix = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerAdditionalAttribute = {
    type = "structure",
    id = "AwsElbLoadBalancerAdditionalAttribute",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerConnectionDraining = {
    type = "structure",
    id = "AwsElbLoadBalancerConnectionDraining",
    members = {
        Enabled = {
            type = "boolean",
        },
        Timeout = {
            type = "integer",
        },
    },
}

M.AwsElbLoadBalancerConnectionSettings = {
    type = "structure",
    id = "AwsElbLoadBalancerConnectionSettings",
    members = {
        IdleTimeout = {
            type = "integer",
        },
    },
}

M.AwsElbLoadBalancerCrossZoneLoadBalancing = {
    type = "structure",
    id = "AwsElbLoadBalancerCrossZoneLoadBalancing",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsElbLoadBalancerAttributes = {
    type = "structure",
    id = "AwsElbLoadBalancerAttributes",
    members = {
        AccessLog = M.AwsElbLoadBalancerAccessLog,
        ConnectionDraining = M.AwsElbLoadBalancerConnectionDraining,
        ConnectionSettings = M.AwsElbLoadBalancerConnectionSettings,
        CrossZoneLoadBalancing = M.AwsElbLoadBalancerCrossZoneLoadBalancing,
        AdditionalAttributes = {
            type = "list",
            member = M.AwsElbLoadBalancerAdditionalAttribute,
        },
    },
}

M.AwsElbLoadBalancerBackendServerDescription = {
    type = "structure",
    id = "AwsElbLoadBalancerBackendServerDescription",
    members = {
        InstancePort = {
            type = "integer",
        },
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsElbLoadBalancerHealthCheck = {
    type = "structure",
    id = "AwsElbLoadBalancerHealthCheck",
    members = {
        HealthyThreshold = {
            type = "integer",
        },
        Interval = {
            type = "integer",
        },
        Target = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        UnhealthyThreshold = {
            type = "integer",
        },
    },
}

M.AwsElbLoadBalancerInstance = {
    type = "structure",
    id = "AwsElbLoadBalancerInstance",
    members = {
        InstanceId = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerListener = {
    type = "structure",
    id = "AwsElbLoadBalancerListener",
    members = {
        InstancePort = {
            type = "integer",
        },
        InstanceProtocol = {
            type = "string",
        },
        LoadBalancerPort = {
            type = "integer",
        },
        Protocol = {
            type = "string",
        },
        SslCertificateId = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerListenerDescription = {
    type = "structure",
    id = "AwsElbLoadBalancerListenerDescription",
    members = {
        Listener = M.AwsElbLoadBalancerListener,
        PolicyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsElbLoadBalancerPolicies = {
    type = "structure",
    id = "AwsElbLoadBalancerPolicies",
    members = {
        AppCookieStickinessPolicies = {
            type = "list",
            member = M.AwsElbAppCookieStickinessPolicy,
        },
        LbCookieStickinessPolicies = {
            type = "list",
            member = M.AwsElbLbCookieStickinessPolicy,
        },
        OtherPolicies = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsElbLoadBalancerSourceSecurityGroup = {
    type = "structure",
    id = "AwsElbLoadBalancerSourceSecurityGroup",
    members = {
        GroupName = {
            type = "string",
        },
        OwnerAlias = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerDetails = {
    type = "structure",
    id = "AwsElbLoadBalancerDetails",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        BackendServerDescriptions = {
            type = "list",
            member = M.AwsElbLoadBalancerBackendServerDescription,
        },
        CanonicalHostedZoneName = {
            type = "string",
        },
        CanonicalHostedZoneNameID = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        HealthCheck = M.AwsElbLoadBalancerHealthCheck,
        Instances = {
            type = "list",
            member = M.AwsElbLoadBalancerInstance,
        },
        ListenerDescriptions = {
            type = "list",
            member = M.AwsElbLoadBalancerListenerDescription,
        },
        LoadBalancerAttributes = M.AwsElbLoadBalancerAttributes,
        LoadBalancerName = {
            type = "string",
        },
        Policies = M.AwsElbLoadBalancerPolicies,
        Scheme = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        SourceSecurityGroup = M.AwsElbLoadBalancerSourceSecurityGroup,
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsElbv2LoadBalancerAttribute = {
    type = "structure",
    id = "AwsElbv2LoadBalancerAttribute",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.LoadBalancerState = {
    type = "structure",
    id = "LoadBalancerState",
    members = {
        Code = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.AwsElbv2LoadBalancerDetails = {
    type = "structure",
    id = "AwsElbv2LoadBalancerDetails",
    members = {
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
        },
        CanonicalHostedZoneId = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        DNSName = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        Scheme = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        State = M.LoadBalancerState,
        Type = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        LoadBalancerAttributes = {
            type = "list",
            member = M.AwsElbv2LoadBalancerAttribute,
        },
    },
}

M.AwsEventSchemasRegistryDetails = {
    type = "structure",
    id = "AwsEventSchemasRegistryDetails",
    members = {
        Description = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointEventBusesDetails = {
    type = "structure",
    id = "AwsEventsEndpointEventBusesDetails",
    members = {
        EventBusArn = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointReplicationConfigDetails = {
    type = "structure",
    id = "AwsEventsEndpointReplicationConfigDetails",
    members = {
        State = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointRoutingConfigFailoverConfigPrimaryDetails = {
    type = "structure",
    id = "AwsEventsEndpointRoutingConfigFailoverConfigPrimaryDetails",
    members = {
        HealthCheck = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointRoutingConfigFailoverConfigSecondaryDetails = {
    type = "structure",
    id = "AwsEventsEndpointRoutingConfigFailoverConfigSecondaryDetails",
    members = {
        Route = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointRoutingConfigFailoverConfigDetails = {
    type = "structure",
    id = "AwsEventsEndpointRoutingConfigFailoverConfigDetails",
    members = {
        Primary = M.AwsEventsEndpointRoutingConfigFailoverConfigPrimaryDetails,
        Secondary = M.AwsEventsEndpointRoutingConfigFailoverConfigSecondaryDetails,
    },
}

M.AwsEventsEndpointRoutingConfigDetails = {
    type = "structure",
    id = "AwsEventsEndpointRoutingConfigDetails",
    members = {
        FailoverConfig = M.AwsEventsEndpointRoutingConfigFailoverConfigDetails,
    },
}

M.AwsEventsEndpointDetails = {
    type = "structure",
    id = "AwsEventsEndpointDetails",
    members = {
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        EndpointUrl = {
            type = "string",
        },
        EventBuses = {
            type = "list",
            member = M.AwsEventsEndpointEventBusesDetails,
        },
        Name = {
            type = "string",
        },
        ReplicationConfig = M.AwsEventsEndpointReplicationConfigDetails,
        RoleArn = {
            type = "string",
        },
        RoutingConfig = M.AwsEventsEndpointRoutingConfigDetails,
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
    },
}

M.AwsEventsEventbusDetails = {
    type = "structure",
    id = "AwsEventsEventbusDetails",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesCloudTrailDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesCloudTrailDetails",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesDnsLogsDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesDnsLogsDetails",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesFlowLogsDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesFlowLogsDetails",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesKubernetesDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesKubernetesDetails",
    members = {
        AuditLogs = M.AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails,
    },
}

M.AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails",
    members = {
        Reason = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails",
    members = {
        EbsVolumes = M.AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails,
    },
}

M.AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails",
    members = {
        ScanEc2InstanceWithFindings = M.AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsDetails,
        ServiceRole = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesS3LogsDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesS3LogsDetails",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDataSourcesDetails",
    members = {
        CloudTrail = M.AwsGuardDutyDetectorDataSourcesCloudTrailDetails,
        DnsLogs = M.AwsGuardDutyDetectorDataSourcesDnsLogsDetails,
        FlowLogs = M.AwsGuardDutyDetectorDataSourcesFlowLogsDetails,
        Kubernetes = M.AwsGuardDutyDetectorDataSourcesKubernetesDetails,
        MalwareProtection = M.AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails,
        S3Logs = M.AwsGuardDutyDetectorDataSourcesS3LogsDetails,
    },
}

M.AwsGuardDutyDetectorFeaturesDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorFeaturesDetails",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDetails = {
    type = "structure",
    id = "AwsGuardDutyDetectorDetails",
    members = {
        DataSources = M.AwsGuardDutyDetectorDataSourcesDetails,
        Features = {
            type = "list",
            member = M.AwsGuardDutyDetectorFeaturesDetails,
        },
        FindingPublishingFrequency = {
            type = "string",
        },
        ServiceRole = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsIamAccessKeySessionContextAttributes = {
    type = "structure",
    id = "AwsIamAccessKeySessionContextAttributes",
    members = {
        MfaAuthenticated = {
            type = "boolean",
        },
        CreationDate = {
            type = "string",
        },
    },
}

M.AwsIamAccessKeySessionContextSessionIssuer = {
    type = "structure",
    id = "AwsIamAccessKeySessionContextSessionIssuer",
    members = {
        Type = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
    },
}

M.AwsIamAccessKeySessionContext = {
    type = "structure",
    id = "AwsIamAccessKeySessionContext",
    members = {
        Attributes = M.AwsIamAccessKeySessionContextAttributes,
        SessionIssuer = M.AwsIamAccessKeySessionContextSessionIssuer,
    },
}

M.AwsIamAccessKeyStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.AwsIamAccessKeyDetails = {
    type = "structure",
    id = "AwsIamAccessKeyDetails",
    members = {
        UserName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
        PrincipalType = {
            type = "string",
        },
        PrincipalName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        AccessKeyId = {
            type = "string",
        },
        SessionContext = M.AwsIamAccessKeySessionContext,
    },
}

M.AwsIamAttachedManagedPolicy = {
    type = "structure",
    id = "AwsIamAttachedManagedPolicy",
    members = {
        PolicyName = {
            type = "string",
        },
        PolicyArn = {
            type = "string",
        },
    },
}

M.AwsIamGroupPolicy = {
    type = "structure",
    id = "AwsIamGroupPolicy",
    members = {
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsIamGroupDetails = {
    type = "structure",
    id = "AwsIamGroupDetails",
    members = {
        AttachedManagedPolicies = {
            type = "list",
            member = M.AwsIamAttachedManagedPolicy,
        },
        CreateDate = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        GroupPolicyList = {
            type = "list",
            member = M.AwsIamGroupPolicy,
        },
        Path = {
            type = "string",
        },
    },
}

M.AwsIamInstanceProfileRole = {
    type = "structure",
    id = "AwsIamInstanceProfileRole",
    members = {
        Arn = {
            type = "string",
        },
        AssumeRolePolicyDocument = {
            type = "string",
        },
        CreateDate = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        RoleId = {
            type = "string",
        },
        RoleName = {
            type = "string",
        },
    },
}

M.AwsIamInstanceProfile = {
    type = "structure",
    id = "AwsIamInstanceProfile",
    members = {
        Arn = {
            type = "string",
        },
        CreateDate = {
            type = "string",
        },
        InstanceProfileId = {
            type = "string",
        },
        InstanceProfileName = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Roles = {
            type = "list",
            member = M.AwsIamInstanceProfileRole,
        },
    },
}

M.AwsIamPermissionsBoundary = {
    type = "structure",
    id = "AwsIamPermissionsBoundary",
    members = {
        PermissionsBoundaryArn = {
            type = "string",
        },
        PermissionsBoundaryType = {
            type = "string",
        },
    },
}

M.AwsIamPolicyVersion = {
    type = "structure",
    id = "AwsIamPolicyVersion",
    members = {
        VersionId = {
            type = "string",
        },
        IsDefaultVersion = {
            type = "boolean",
        },
        CreateDate = {
            type = "string",
        },
    },
}

M.AwsIamPolicyDetails = {
    type = "structure",
    id = "AwsIamPolicyDetails",
    members = {
        AttachmentCount = {
            type = "integer",
        },
        CreateDate = {
            type = "string",
        },
        DefaultVersionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        IsAttachable = {
            type = "boolean",
        },
        Path = {
            type = "string",
        },
        PermissionsBoundaryUsageCount = {
            type = "integer",
        },
        PolicyId = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
        PolicyVersionList = {
            type = "list",
            member = M.AwsIamPolicyVersion,
        },
        UpdateDate = {
            type = "string",
        },
    },
}

M.AwsIamRolePolicy = {
    type = "structure",
    id = "AwsIamRolePolicy",
    members = {
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsIamRoleDetails = {
    type = "structure",
    id = "AwsIamRoleDetails",
    members = {
        AssumeRolePolicyDocument = {
            type = "string",
        },
        AttachedManagedPolicies = {
            type = "list",
            member = M.AwsIamAttachedManagedPolicy,
        },
        CreateDate = {
            type = "string",
        },
        InstanceProfileList = {
            type = "list",
            member = M.AwsIamInstanceProfile,
        },
        PermissionsBoundary = M.AwsIamPermissionsBoundary,
        RoleId = {
            type = "string",
        },
        RoleName = {
            type = "string",
        },
        RolePolicyList = {
            type = "list",
            member = M.AwsIamRolePolicy,
        },
        MaxSessionDuration = {
            type = "integer",
        },
        Path = {
            type = "string",
        },
    },
}

M.AwsIamUserPolicy = {
    type = "structure",
    id = "AwsIamUserPolicy",
    members = {
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsIamUserDetails = {
    type = "structure",
    id = "AwsIamUserDetails",
    members = {
        AttachedManagedPolicies = {
            type = "list",
            member = M.AwsIamAttachedManagedPolicy,
        },
        CreateDate = {
            type = "string",
        },
        GroupList = {
            type = "list",
            member = { type = "string" },
        },
        Path = {
            type = "string",
        },
        PermissionsBoundary = M.AwsIamPermissionsBoundary,
        UserId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        UserPolicyList = {
            type = "list",
            member = M.AwsIamUserPolicy,
        },
    },
}

M.AwsKinesisStreamStreamEncryptionDetails = {
    type = "structure",
    id = "AwsKinesisStreamStreamEncryptionDetails",
    members = {
        EncryptionType = {
            type = "string",
        },
        KeyId = {
            type = "string",
        },
    },
}

M.AwsKinesisStreamDetails = {
    type = "structure",
    id = "AwsKinesisStreamDetails",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        StreamEncryption = M.AwsKinesisStreamStreamEncryptionDetails,
        ShardCount = {
            type = "integer",
        },
        RetentionPeriodHours = {
            type = "integer",
        },
    },
}

M.AwsKmsKeyDetails = {
    type = "structure",
    id = "AwsKmsKeyDetails",
    members = {
        AWSAccountId = {
            type = "string",
        },
        CreationDate = {
            type = "double",
        },
        KeyId = {
            type = "string",
        },
        KeyManager = {
            type = "string",
        },
        KeyState = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KeyRotationStatus = {
            type = "boolean",
        },
    },
}

M.AwsLambdaFunctionCode = {
    type = "structure",
    id = "AwsLambdaFunctionCode",
    members = {
        S3Bucket = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
        S3ObjectVersion = {
            type = "string",
        },
        ZipFile = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionDeadLetterConfig = {
    type = "structure",
    id = "AwsLambdaFunctionDeadLetterConfig",
    members = {
        TargetArn = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionEnvironmentError = {
    type = "structure",
    id = "AwsLambdaFunctionEnvironmentError",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionEnvironment = {
    type = "structure",
    id = "AwsLambdaFunctionEnvironment",
    members = {
        Variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.AwsLambdaFunctionEnvironmentError,
    },
}

M.AwsLambdaFunctionLayer = {
    type = "structure",
    id = "AwsLambdaFunctionLayer",
    members = {
        Arn = {
            type = "string",
        },
        CodeSize = {
            type = "integer",
        },
    },
}

M.AwsLambdaFunctionTracingConfig = {
    type = "structure",
    id = "AwsLambdaFunctionTracingConfig",
    members = {
        Mode = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionVpcConfig = {
    type = "structure",
    id = "AwsLambdaFunctionVpcConfig",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionDetails = {
    type = "structure",
    id = "AwsLambdaFunctionDetails",
    members = {
        Code = M.AwsLambdaFunctionCode,
        CodeSha256 = {
            type = "string",
        },
        DeadLetterConfig = M.AwsLambdaFunctionDeadLetterConfig,
        Environment = M.AwsLambdaFunctionEnvironment,
        FunctionName = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        LastModified = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.AwsLambdaFunctionLayer,
        },
        MasterArn = {
            type = "string",
        },
        MemorySize = {
            type = "integer",
        },
        RevisionId = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        TracingConfig = M.AwsLambdaFunctionTracingConfig,
        VpcConfig = M.AwsLambdaFunctionVpcConfig,
        Version = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        PackageType = {
            type = "string",
        },
    },
}

M.AwsLambdaLayerVersionDetails = {
    type = "structure",
    id = "AwsLambdaLayerVersionDetails",
    members = {
        Version = {
            type = "long",
        },
        CompatibleRuntimes = {
            type = "list",
            member = { type = "string" },
        },
        CreatedDate = {
            type = "string",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationSaslIamDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoClientAuthenticationSaslIamDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationSaslScramDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoClientAuthenticationSaslScramDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationSaslDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoClientAuthenticationSaslDetails",
    members = {
        Iam = M.AwsMskClusterClusterInfoClientAuthenticationSaslIamDetails,
        Scram = M.AwsMskClusterClusterInfoClientAuthenticationSaslScramDetails,
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationTlsDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoClientAuthenticationTlsDetails",
    members = {
        CertificateAuthorityArnList = {
            type = "list",
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationUnauthenticatedDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoClientAuthenticationUnauthenticatedDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoClientAuthenticationDetails",
    members = {
        Sasl = M.AwsMskClusterClusterInfoClientAuthenticationSaslDetails,
        Unauthenticated = M.AwsMskClusterClusterInfoClientAuthenticationUnauthenticatedDetails,
        Tls = M.AwsMskClusterClusterInfoClientAuthenticationTlsDetails,
    },
}

M.AwsMskClusterClusterInfoEncryptionInfoEncryptionAtRestDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoEncryptionInfoEncryptionAtRestDetails",
    members = {
        DataVolumeKMSKeyId = {
            type = "string",
        },
    },
}

M.AwsMskClusterClusterInfoEncryptionInfoEncryptionInTransitDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoEncryptionInfoEncryptionInTransitDetails",
    members = {
        InCluster = {
            type = "boolean",
        },
        ClientBroker = {
            type = "string",
        },
    },
}

M.AwsMskClusterClusterInfoEncryptionInfoDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoEncryptionInfoDetails",
    members = {
        EncryptionInTransit = M.AwsMskClusterClusterInfoEncryptionInfoEncryptionInTransitDetails,
        EncryptionAtRest = M.AwsMskClusterClusterInfoEncryptionInfoEncryptionAtRestDetails,
    },
}

M.AwsMskClusterClusterInfoDetails = {
    type = "structure",
    id = "AwsMskClusterClusterInfoDetails",
    members = {
        EncryptionInfo = M.AwsMskClusterClusterInfoEncryptionInfoDetails,
        CurrentVersion = {
            type = "string",
        },
        NumberOfBrokerNodes = {
            type = "integer",
        },
        ClusterName = {
            type = "string",
        },
        ClientAuthentication = M.AwsMskClusterClusterInfoClientAuthenticationDetails,
        EnhancedMonitoring = {
            type = "string",
        },
    },
}

M.AwsMskClusterDetails = {
    type = "structure",
    id = "AwsMskClusterDetails",
    members = {
        ClusterInfo = M.AwsMskClusterClusterInfoDetails,
    },
}

M.AwsNetworkFirewallFirewallSubnetMappingsDetails = {
    type = "structure",
    id = "AwsNetworkFirewallFirewallSubnetMappingsDetails",
    members = {
        SubnetId = {
            type = "string",
        },
    },
}

M.AwsNetworkFirewallFirewallDetails = {
    type = "structure",
    id = "AwsNetworkFirewallFirewallDetails",
    members = {
        DeleteProtection = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallId = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        FirewallPolicyArn = {
            type = "string",
        },
        FirewallPolicyChangeProtection = {
            type = "boolean",
        },
        SubnetChangeProtection = {
            type = "boolean",
        },
        SubnetMappings = {
            type = "list",
            member = M.AwsNetworkFirewallFirewallSubnetMappingsDetails,
        },
        VpcId = {
            type = "string",
        },
    },
}

M.FirewallPolicyStatefulRuleGroupReferencesDetails = {
    type = "structure",
    id = "FirewallPolicyStatefulRuleGroupReferencesDetails",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.StatelessCustomPublishMetricActionDimension = {
    type = "structure",
    id = "StatelessCustomPublishMetricActionDimension",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.StatelessCustomPublishMetricAction = {
    type = "structure",
    id = "StatelessCustomPublishMetricAction",
    members = {
        Dimensions = {
            type = "list",
            member = M.StatelessCustomPublishMetricActionDimension,
        },
    },
}

M.StatelessCustomActionDefinition = {
    type = "structure",
    id = "StatelessCustomActionDefinition",
    members = {
        PublishMetricAction = M.StatelessCustomPublishMetricAction,
    },
}

M.FirewallPolicyStatelessCustomActionsDetails = {
    type = "structure",
    id = "FirewallPolicyStatelessCustomActionsDetails",
    members = {
        ActionDefinition = M.StatelessCustomActionDefinition,
        ActionName = {
            type = "string",
        },
    },
}

M.FirewallPolicyStatelessRuleGroupReferencesDetails = {
    type = "structure",
    id = "FirewallPolicyStatelessRuleGroupReferencesDetails",
    members = {
        Priority = {
            type = "integer",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.FirewallPolicyDetails = {
    type = "structure",
    id = "FirewallPolicyDetails",
    members = {
        StatefulRuleGroupReferences = {
            type = "list",
            member = M.FirewallPolicyStatefulRuleGroupReferencesDetails,
        },
        StatelessCustomActions = {
            type = "list",
            member = M.FirewallPolicyStatelessCustomActionsDetails,
        },
        StatelessDefaultActions = {
            type = "list",
            member = { type = "string" },
        },
        StatelessFragmentDefaultActions = {
            type = "list",
            member = { type = "string" },
        },
        StatelessRuleGroupReferences = {
            type = "list",
            member = M.FirewallPolicyStatelessRuleGroupReferencesDetails,
        },
    },
}

M.AwsNetworkFirewallFirewallPolicyDetails = {
    type = "structure",
    id = "AwsNetworkFirewallFirewallPolicyDetails",
    members = {
        FirewallPolicy = M.FirewallPolicyDetails,
        FirewallPolicyArn = {
            type = "string",
        },
        FirewallPolicyId = {
            type = "string",
        },
        FirewallPolicyName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.RuleGroupSourceListDetails = {
    type = "structure",
    id = "RuleGroupSourceListDetails",
    members = {
        GeneratedRulesType = {
            type = "string",
        },
        TargetTypes = {
            type = "list",
            member = { type = "string" },
        },
        Targets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleGroupSourceStatefulRulesHeaderDetails = {
    type = "structure",
    id = "RuleGroupSourceStatefulRulesHeaderDetails",
    members = {
        Destination = {
            type = "string",
        },
        DestinationPort = {
            type = "string",
        },
        Direction = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        SourcePort = {
            type = "string",
        },
    },
}

M.RuleGroupSourceStatefulRulesOptionsDetails = {
    type = "structure",
    id = "RuleGroupSourceStatefulRulesOptionsDetails",
    members = {
        Keyword = {
            type = "string",
        },
        Settings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleGroupSourceStatefulRulesDetails = {
    type = "structure",
    id = "RuleGroupSourceStatefulRulesDetails",
    members = {
        Action = {
            type = "string",
        },
        Header = M.RuleGroupSourceStatefulRulesHeaderDetails,
        RuleOptions = {
            type = "list",
            member = M.RuleGroupSourceStatefulRulesOptionsDetails,
        },
    },
}

M.RuleGroupSourceCustomActionsDetails = {
    type = "structure",
    id = "RuleGroupSourceCustomActionsDetails",
    members = {
        ActionDefinition = M.StatelessCustomActionDefinition,
        ActionName = {
            type = "string",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts = {
    type = "structure",
    id = "RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts",
    members = {
        FromPort = {
            type = "integer",
        },
        ToPort = {
            type = "integer",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesDestinations = {
    type = "structure",
    id = "RuleGroupSourceStatelessRuleMatchAttributesDestinations",
    members = {
        AddressDefinition = {
            type = "string",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesSourcePorts = {
    type = "structure",
    id = "RuleGroupSourceStatelessRuleMatchAttributesSourcePorts",
    members = {
        FromPort = {
            type = "integer",
        },
        ToPort = {
            type = "integer",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesSources = {
    type = "structure",
    id = "RuleGroupSourceStatelessRuleMatchAttributesSources",
    members = {
        AddressDefinition = {
            type = "string",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesTcpFlags = {
    type = "structure",
    id = "RuleGroupSourceStatelessRuleMatchAttributesTcpFlags",
    members = {
        Flags = {
            type = "list",
            member = { type = "string" },
        },
        Masks = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributes = {
    type = "structure",
    id = "RuleGroupSourceStatelessRuleMatchAttributes",
    members = {
        DestinationPorts = {
            type = "list",
            member = M.RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts,
        },
        Destinations = {
            type = "list",
            member = M.RuleGroupSourceStatelessRuleMatchAttributesDestinations,
        },
        Protocols = {
            type = "list",
            member = { type = "integer" },
        },
        SourcePorts = {
            type = "list",
            member = M.RuleGroupSourceStatelessRuleMatchAttributesSourcePorts,
        },
        Sources = {
            type = "list",
            member = M.RuleGroupSourceStatelessRuleMatchAttributesSources,
        },
        TcpFlags = {
            type = "list",
            member = M.RuleGroupSourceStatelessRuleMatchAttributesTcpFlags,
        },
    },
}

M.RuleGroupSourceStatelessRuleDefinition = {
    type = "structure",
    id = "RuleGroupSourceStatelessRuleDefinition",
    members = {
        Actions = {
            type = "list",
            member = { type = "string" },
        },
        MatchAttributes = M.RuleGroupSourceStatelessRuleMatchAttributes,
    },
}

M.RuleGroupSourceStatelessRulesDetails = {
    type = "structure",
    id = "RuleGroupSourceStatelessRulesDetails",
    members = {
        Priority = {
            type = "integer",
        },
        RuleDefinition = M.RuleGroupSourceStatelessRuleDefinition,
    },
}

M.RuleGroupSourceStatelessRulesAndCustomActionsDetails = {
    type = "structure",
    id = "RuleGroupSourceStatelessRulesAndCustomActionsDetails",
    members = {
        CustomActions = {
            type = "list",
            member = M.RuleGroupSourceCustomActionsDetails,
        },
        StatelessRules = {
            type = "list",
            member = M.RuleGroupSourceStatelessRulesDetails,
        },
    },
}

M.RuleGroupSource = {
    type = "structure",
    id = "RuleGroupSource",
    members = {
        RulesSourceList = M.RuleGroupSourceListDetails,
        RulesString = {
            type = "string",
        },
        StatefulRules = {
            type = "list",
            member = M.RuleGroupSourceStatefulRulesDetails,
        },
        StatelessRulesAndCustomActions = M.RuleGroupSourceStatelessRulesAndCustomActionsDetails,
    },
}

M.RuleGroupVariablesIpSetsDetails = {
    type = "structure",
    id = "RuleGroupVariablesIpSetsDetails",
    members = {
        Definition = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleGroupVariablesPortSetsDetails = {
    type = "structure",
    id = "RuleGroupVariablesPortSetsDetails",
    members = {
        Definition = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleGroupVariables = {
    type = "structure",
    id = "RuleGroupVariables",
    members = {
        IpSets = M.RuleGroupVariablesIpSetsDetails,
        PortSets = M.RuleGroupVariablesPortSetsDetails,
    },
}

M.RuleGroupDetails = {
    type = "structure",
    id = "RuleGroupDetails",
    members = {
        RuleVariables = M.RuleGroupVariables,
        RulesSource = M.RuleGroupSource,
    },
}

M.AwsNetworkFirewallRuleGroupDetails = {
    type = "structure",
    id = "AwsNetworkFirewallRuleGroupDetails",
    members = {
        Capacity = {
            type = "integer",
        },
        Description = {
            type = "string",
        },
        RuleGroup = M.RuleGroupDetails,
        RuleGroupArn = {
            type = "string",
        },
        RuleGroupId = {
            type = "string",
        },
        RuleGroupName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsOpenSearchServiceDomainMasterUserOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainMasterUserOptionsDetails",
    members = {
        MasterUserArn = {
            type = "string",
        },
        MasterUserName = {
            type = "string",
        },
        MasterUserPassword = {
            type = "string",
        },
    },
}

M.AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
        InternalUserDatabaseEnabled = {
            type = "boolean",
        },
        MasterUserOptions = M.AwsOpenSearchServiceDomainMasterUserOptionsDetails,
    },
}

M.AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails",
    members = {
        AvailabilityZoneCount = {
            type = "integer",
        },
    },
}

M.AwsOpenSearchServiceDomainClusterConfigDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainClusterConfigDetails",
    members = {
        InstanceCount = {
            type = "integer",
        },
        WarmEnabled = {
            type = "boolean",
        },
        WarmCount = {
            type = "integer",
        },
        DedicatedMasterEnabled = {
            type = "boolean",
        },
        ZoneAwarenessConfig = M.AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails,
        DedicatedMasterCount = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
        },
        WarmType = {
            type = "string",
        },
        ZoneAwarenessEnabled = {
            type = "boolean",
        },
        DedicatedMasterType = {
            type = "string",
        },
    },
}

M.AwsOpenSearchServiceDomainDomainEndpointOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainDomainEndpointOptionsDetails",
    members = {
        CustomEndpointCertificateArn = {
            type = "string",
        },
        CustomEndpointEnabled = {
            type = "boolean",
        },
        EnforceHTTPS = {
            type = "boolean",
        },
        CustomEndpoint = {
            type = "string",
        },
        TLSSecurityPolicy = {
            type = "string",
        },
    },
}

M.AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.AwsOpenSearchServiceDomainLogPublishingOption = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainLogPublishingOption",
    members = {
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsOpenSearchServiceDomainLogPublishingOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainLogPublishingOptionsDetails",
    members = {
        IndexSlowLogs = M.AwsOpenSearchServiceDomainLogPublishingOption,
        SearchSlowLogs = M.AwsOpenSearchServiceDomainLogPublishingOption,
        AuditLogs = M.AwsOpenSearchServiceDomainLogPublishingOption,
    },
}

M.AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails",
    members = {
        AutomatedUpdateDate = {
            type = "string",
        },
        Cancellable = {
            type = "boolean",
        },
        CurrentVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        NewVersion = {
            type = "string",
        },
        UpdateAvailable = {
            type = "boolean",
        },
        UpdateStatus = {
            type = "string",
        },
        OptionalDeployment = {
            type = "boolean",
        },
    },
}

M.AwsOpenSearchServiceDomainVpcOptionsDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainVpcOptionsDetails",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsOpenSearchServiceDomainDetails = {
    type = "structure",
    id = "AwsOpenSearchServiceDomainDetails",
    members = {
        Arn = {
            type = "string",
        },
        AccessPolicies = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        DomainEndpoint = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        EncryptionAtRestOptions = M.AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails,
        NodeToNodeEncryptionOptions = M.AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails,
        ServiceSoftwareOptions = M.AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails,
        ClusterConfig = M.AwsOpenSearchServiceDomainClusterConfigDetails,
        DomainEndpointOptions = M.AwsOpenSearchServiceDomainDomainEndpointOptionsDetails,
        VpcOptions = M.AwsOpenSearchServiceDomainVpcOptionsDetails,
        LogPublishingOptions = M.AwsOpenSearchServiceDomainLogPublishingOptionsDetails,
        DomainEndpoints = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AdvancedSecurityOptions = M.AwsOpenSearchServiceDomainAdvancedSecurityOptionsDetails,
    },
}

M.AwsOrganizationScope = {
    type = "structure",
    id = "AwsOrganizationScope",
    members = {
        OrganizationId = {
            type = "string",
        },
        OrganizationalUnitId = {
            type = "string",
        },
    },
}

M.AwsRdsDbClusterAssociatedRole = {
    type = "structure",
    id = "AwsRdsDbClusterAssociatedRole",
    members = {
        RoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRdsDbClusterMember = {
    type = "structure",
    id = "AwsRdsDbClusterMember",
    members = {
        IsClusterWriter = {
            type = "boolean",
        },
        PromotionTier = {
            type = "integer",
        },
        DbInstanceIdentifier = {
            type = "string",
        },
        DbClusterParameterGroupStatus = {
            type = "string",
        },
    },
}

M.AwsRdsDbClusterOptionGroupMembership = {
    type = "structure",
    id = "AwsRdsDbClusterOptionGroupMembership",
    members = {
        DbClusterOptionGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRdsDbDomainMembership = {
    type = "structure",
    id = "AwsRdsDbDomainMembership",
    members = {
        Domain = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Fqdn = {
            type = "string",
        },
        IamRoleName = {
            type = "string",
        },
    },
}

M.AwsRdsDbInstanceVpcSecurityGroup = {
    type = "structure",
    id = "AwsRdsDbInstanceVpcSecurityGroup",
    members = {
        VpcSecurityGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRdsDbClusterDetails = {
    type = "structure",
    id = "AwsRdsDbClusterDetails",
    members = {
        AllocatedStorage = {
            type = "integer",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        DatabaseName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        ReaderEndpoint = {
            type = "string",
        },
        CustomEndpoints = {
            type = "list",
            member = { type = "string" },
        },
        MultiAz = {
            type = "boolean",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        MasterUsername = {
            type = "string",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        ReadReplicaIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.AwsRdsDbInstanceVpcSecurityGroup,
        },
        HostedZoneId = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        DbClusterResourceId = {
            type = "string",
        },
        AssociatedRoles = {
            type = "list",
            member = M.AwsRdsDbClusterAssociatedRole,
        },
        ClusterCreateTime = {
            type = "string",
        },
        EnabledCloudWatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        EngineMode = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        HttpEndpointEnabled = {
            type = "boolean",
        },
        ActivityStreamStatus = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        CrossAccountClone = {
            type = "boolean",
        },
        DomainMemberships = {
            type = "list",
            member = M.AwsRdsDbDomainMembership,
        },
        DbClusterParameterGroup = {
            type = "string",
        },
        DbSubnetGroup = {
            type = "string",
        },
        DbClusterOptionGroupMemberships = {
            type = "list",
            member = M.AwsRdsDbClusterOptionGroupMembership,
        },
        DbClusterIdentifier = {
            type = "string",
        },
        DbClusterMembers = {
            type = "list",
            member = M.AwsRdsDbClusterMember,
        },
        IamDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
    },
}

M.AwsRdsDbClusterSnapshotDbClusterSnapshotAttribute = {
    type = "structure",
    id = "AwsRdsDbClusterSnapshotDbClusterSnapshotAttribute",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsRdsDbClusterSnapshotDetails = {
    type = "structure",
    id = "AwsRdsDbClusterSnapshotDetails",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotCreateTime = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        VpcId = {
            type = "string",
        },
        ClusterCreateTime = {
            type = "string",
        },
        MasterUsername = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        PercentProgress = {
            type = "integer",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        DbClusterIdentifier = {
            type = "string",
        },
        DbClusterSnapshotIdentifier = {
            type = "string",
        },
        IamDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        DbClusterSnapshotAttributes = {
            type = "list",
            member = M.AwsRdsDbClusterSnapshotDbClusterSnapshotAttribute,
        },
    },
}

M.AwsRdsDbInstanceAssociatedRole = {
    type = "structure",
    id = "AwsRdsDbInstanceAssociatedRole",
    members = {
        RoleArn = {
            type = "string",
        },
        FeatureName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRdsDbParameterGroup = {
    type = "structure",
    id = "AwsRdsDbParameterGroup",
    members = {
        DbParameterGroupName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
    },
}

M.AwsRdsDbSubnetGroupSubnetAvailabilityZone = {
    type = "structure",
    id = "AwsRdsDbSubnetGroupSubnetAvailabilityZone",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.AwsRdsDbSubnetGroupSubnet = {
    type = "structure",
    id = "AwsRdsDbSubnetGroupSubnet",
    members = {
        SubnetIdentifier = {
            type = "string",
        },
        SubnetAvailabilityZone = M.AwsRdsDbSubnetGroupSubnetAvailabilityZone,
        SubnetStatus = {
            type = "string",
        },
    },
}

M.AwsRdsDbSubnetGroup = {
    type = "structure",
    id = "AwsRdsDbSubnetGroup",
    members = {
        DbSubnetGroupName = {
            type = "string",
        },
        DbSubnetGroupDescription = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetGroupStatus = {
            type = "string",
        },
        Subnets = {
            type = "list",
            member = M.AwsRdsDbSubnetGroupSubnet,
        },
        DbSubnetGroupArn = {
            type = "string",
        },
    },
}

M.AwsRdsDbInstanceEndpoint = {
    type = "structure",
    id = "AwsRdsDbInstanceEndpoint",
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        HostedZoneId = {
            type = "string",
        },
    },
}

M.AwsRdsDbOptionGroupMembership = {
    type = "structure",
    id = "AwsRdsDbOptionGroupMembership",
    members = {
        OptionGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRdsPendingCloudWatchLogsExports = {
    type = "structure",
    id = "AwsRdsPendingCloudWatchLogsExports",
    members = {
        LogTypesToEnable = {
            type = "list",
            member = { type = "string" },
        },
        LogTypesToDisable = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AwsRdsDbProcessorFeature = {
    type = "structure",
    id = "AwsRdsDbProcessorFeature",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsRdsDbPendingModifiedValues = {
    type = "structure",
    id = "AwsRdsDbPendingModifiedValues",
    members = {
        DbInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        MasterUserPassword = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        DbInstanceIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        CaCertificateIdentifier = {
            type = "string",
        },
        DbSubnetGroupName = {
            type = "string",
        },
        PendingCloudWatchLogsExports = M.AwsRdsPendingCloudWatchLogsExports,
        ProcessorFeatures = {
            type = "list",
            member = M.AwsRdsDbProcessorFeature,
        },
    },
}

M.AwsRdsDbStatusInfo = {
    type = "structure",
    id = "AwsRdsDbStatusInfo",
    members = {
        StatusType = {
            type = "string",
        },
        Normal = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AwsRdsDbInstanceDetails = {
    type = "structure",
    id = "AwsRdsDbInstanceDetails",
    members = {
        AssociatedRoles = {
            type = "list",
            member = M.AwsRdsDbInstanceAssociatedRole,
        },
        CACertificateIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        DBInstanceIdentifier = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        DbInstancePort = {
            type = "integer",
        },
        DbiResourceId = {
            type = "string",
        },
        DBName = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        Endpoint = M.AwsRdsDbInstanceEndpoint,
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        InstanceCreateTime = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        TdeCredentialArn = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.AwsRdsDbInstanceVpcSecurityGroup,
        },
        MultiAz = {
            type = "boolean",
        },
        EnhancedMonitoringResourceArn = {
            type = "string",
        },
        DbInstanceStatus = {
            type = "string",
        },
        MasterUsername = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        DbSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        DbParameterGroups = {
            type = "list",
            member = M.AwsRdsDbParameterGroup,
        },
        AvailabilityZone = {
            type = "string",
        },
        DbSubnetGroup = M.AwsRdsDbSubnetGroup,
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PendingModifiedValues = M.AwsRdsDbPendingModifiedValues,
        LatestRestorableTime = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        ReadReplicaSourceDBInstanceIdentifier = {
            type = "string",
        },
        ReadReplicaDBInstanceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        ReadReplicaDBClusterIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        OptionGroupMemberships = {
            type = "list",
            member = M.AwsRdsDbOptionGroupMembership,
        },
        CharacterSetName = {
            type = "string",
        },
        SecondaryAvailabilityZone = {
            type = "string",
        },
        StatusInfos = {
            type = "list",
            member = M.AwsRdsDbStatusInfo,
        },
        StorageType = {
            type = "string",
        },
        DomainMemberships = {
            type = "list",
            member = M.AwsRdsDbDomainMembership,
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        PromotionTier = {
            type = "integer",
        },
        Timezone = {
            type = "string",
        },
        PerformanceInsightsEnabled = {
            type = "boolean",
        },
        PerformanceInsightsKmsKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        EnabledCloudWatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorFeatures = {
            type = "list",
            member = M.AwsRdsDbProcessorFeature,
        },
        ListenerEndpoint = M.AwsRdsDbInstanceEndpoint,
        MaxAllocatedStorage = {
            type = "integer",
        },
    },
}

M.AwsRdsDbSecurityGroupEc2SecurityGroup = {
    type = "structure",
    id = "AwsRdsDbSecurityGroupEc2SecurityGroup",
    members = {
        Ec2SecurityGroupId = {
            type = "string",
        },
        Ec2SecurityGroupName = {
            type = "string",
        },
        Ec2SecurityGroupOwnerId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRdsDbSecurityGroupIpRange = {
    type = "structure",
    id = "AwsRdsDbSecurityGroupIpRange",
    members = {
        CidrIp = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRdsDbSecurityGroupDetails = {
    type = "structure",
    id = "AwsRdsDbSecurityGroupDetails",
    members = {
        DbSecurityGroupArn = {
            type = "string",
        },
        DbSecurityGroupDescription = {
            type = "string",
        },
        DbSecurityGroupName = {
            type = "string",
        },
        Ec2SecurityGroups = {
            type = "list",
            member = M.AwsRdsDbSecurityGroupEc2SecurityGroup,
        },
        IpRanges = {
            type = "list",
            member = M.AwsRdsDbSecurityGroupIpRange,
        },
        OwnerId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsRdsDbSnapshotDetails = {
    type = "structure",
    id = "AwsRdsDbSnapshotDetails",
    members = {
        DbSnapshotIdentifier = {
            type = "string",
        },
        DbInstanceIdentifier = {
            type = "string",
        },
        SnapshotCreateTime = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        InstanceCreateTime = {
            type = "string",
        },
        MasterUsername = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        PercentProgress = {
            type = "integer",
        },
        SourceRegion = {
            type = "string",
        },
        SourceDbSnapshotIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        IamDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        ProcessorFeatures = {
            type = "list",
            member = M.AwsRdsDbProcessorFeature,
        },
        DbiResourceId = {
            type = "string",
        },
    },
}

M.AwsRdsEventSubscriptionDetails = {
    type = "structure",
    id = "AwsRdsEventSubscriptionDetails",
    members = {
        CustSubscriptionId = {
            type = "string",
        },
        CustomerAwsId = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        EventCategoriesList = {
            type = "list",
            member = { type = "string" },
        },
        EventSubscriptionArn = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        SourceIdsList = {
            type = "list",
            member = { type = "string" },
        },
        SourceType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SubscriptionCreationTime = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterClusterNode = {
    type = "structure",
    id = "AwsRedshiftClusterClusterNode",
    members = {
        NodeRole = {
            type = "string",
        },
        PrivateIpAddress = {
            type = "string",
        },
        PublicIpAddress = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterClusterParameterStatus = {
    type = "structure",
    id = "AwsRedshiftClusterClusterParameterStatus",
    members = {
        ParameterName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
        ParameterApplyErrorDescription = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterClusterParameterGroup = {
    type = "structure",
    id = "AwsRedshiftClusterClusterParameterGroup",
    members = {
        ClusterParameterStatusList = {
            type = "list",
            member = M.AwsRedshiftClusterClusterParameterStatus,
        },
        ParameterApplyStatus = {
            type = "string",
        },
        ParameterGroupName = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterClusterSecurityGroup = {
    type = "structure",
    id = "AwsRedshiftClusterClusterSecurityGroup",
    members = {
        ClusterSecurityGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterClusterSnapshotCopyStatus = {
    type = "structure",
    id = "AwsRedshiftClusterClusterSnapshotCopyStatus",
    members = {
        DestinationRegion = {
            type = "string",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        RetentionPeriod = {
            type = "integer",
        },
        SnapshotCopyGrantName = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterDeferredMaintenanceWindow = {
    type = "structure",
    id = "AwsRedshiftClusterDeferredMaintenanceWindow",
    members = {
        DeferMaintenanceEndTime = {
            type = "string",
        },
        DeferMaintenanceIdentifier = {
            type = "string",
        },
        DeferMaintenanceStartTime = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterElasticIpStatus = {
    type = "structure",
    id = "AwsRedshiftClusterElasticIpStatus",
    members = {
        ElasticIp = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterEndpoint = {
    type = "structure",
    id = "AwsRedshiftClusterEndpoint",
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
    },
}

M.AwsRedshiftClusterHsmStatus = {
    type = "structure",
    id = "AwsRedshiftClusterHsmStatus",
    members = {
        HsmClientCertificateIdentifier = {
            type = "string",
        },
        HsmConfigurationIdentifier = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterIamRole = {
    type = "structure",
    id = "AwsRedshiftClusterIamRole",
    members = {
        ApplyStatus = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterLoggingStatus = {
    type = "structure",
    id = "AwsRedshiftClusterLoggingStatus",
    members = {
        BucketName = {
            type = "string",
        },
        LastFailureMessage = {
            type = "string",
        },
        LastFailureTime = {
            type = "string",
        },
        LastSuccessfulDeliveryTime = {
            type = "string",
        },
        LoggingEnabled = {
            type = "boolean",
        },
        S3KeyPrefix = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterPendingModifiedValues = {
    type = "structure",
    id = "AwsRedshiftClusterPendingModifiedValues",
    members = {
        AutomatedSnapshotRetentionPeriod = {
            type = "integer",
        },
        ClusterIdentifier = {
            type = "string",
        },
        ClusterType = {
            type = "string",
        },
        ClusterVersion = {
            type = "string",
        },
        EncryptionType = {
            type = "string",
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        MaintenanceTrackName = {
            type = "string",
        },
        MasterUserPassword = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
    },
}

M.AwsRedshiftClusterResizeInfo = {
    type = "structure",
    id = "AwsRedshiftClusterResizeInfo",
    members = {
        AllowCancelResize = {
            type = "boolean",
        },
        ResizeType = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterRestoreStatus = {
    type = "structure",
    id = "AwsRedshiftClusterRestoreStatus",
    members = {
        CurrentRestoreRateInMegaBytesPerSecond = {
            type = "double",
        },
        ElapsedTimeInSeconds = {
            type = "long",
        },
        EstimatedTimeToCompletionInSeconds = {
            type = "long",
        },
        ProgressInMegaBytes = {
            type = "long",
        },
        SnapshotSizeInMegaBytes = {
            type = "long",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterVpcSecurityGroup = {
    type = "structure",
    id = "AwsRedshiftClusterVpcSecurityGroup",
    members = {
        Status = {
            type = "string",
        },
        VpcSecurityGroupId = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterDetails = {
    type = "structure",
    id = "AwsRedshiftClusterDetails",
    members = {
        AllowVersionUpgrade = {
            type = "boolean",
        },
        AutomatedSnapshotRetentionPeriod = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        ClusterAvailabilityStatus = {
            type = "string",
        },
        ClusterCreateTime = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        ClusterNodes = {
            type = "list",
            member = M.AwsRedshiftClusterClusterNode,
        },
        ClusterParameterGroups = {
            type = "list",
            member = M.AwsRedshiftClusterClusterParameterGroup,
        },
        ClusterPublicKey = {
            type = "string",
        },
        ClusterRevisionNumber = {
            type = "string",
        },
        ClusterSecurityGroups = {
            type = "list",
            member = M.AwsRedshiftClusterClusterSecurityGroup,
        },
        ClusterSnapshotCopyStatus = M.AwsRedshiftClusterClusterSnapshotCopyStatus,
        ClusterStatus = {
            type = "string",
        },
        ClusterSubnetGroupName = {
            type = "string",
        },
        ClusterVersion = {
            type = "string",
        },
        DBName = {
            type = "string",
        },
        DeferredMaintenanceWindows = {
            type = "list",
            member = M.AwsRedshiftClusterDeferredMaintenanceWindow,
        },
        ElasticIpStatus = M.AwsRedshiftClusterElasticIpStatus,
        ElasticResizeNumberOfNodeOptions = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        Endpoint = M.AwsRedshiftClusterEndpoint,
        EnhancedVpcRouting = {
            type = "boolean",
        },
        ExpectedNextSnapshotScheduleTime = {
            type = "string",
        },
        ExpectedNextSnapshotScheduleTimeStatus = {
            type = "string",
        },
        HsmStatus = M.AwsRedshiftClusterHsmStatus,
        IamRoles = {
            type = "list",
            member = M.AwsRedshiftClusterIamRole,
        },
        KmsKeyId = {
            type = "string",
        },
        MaintenanceTrackName = {
            type = "string",
        },
        ManualSnapshotRetentionPeriod = {
            type = "integer",
        },
        MasterUsername = {
            type = "string",
        },
        NextMaintenanceWindowStartTime = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        NumberOfNodes = {
            type = "integer",
        },
        PendingActions = {
            type = "list",
            member = { type = "string" },
        },
        PendingModifiedValues = M.AwsRedshiftClusterPendingModifiedValues,
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        ResizeInfo = M.AwsRedshiftClusterResizeInfo,
        RestoreStatus = M.AwsRedshiftClusterRestoreStatus,
        SnapshotScheduleIdentifier = {
            type = "string",
        },
        SnapshotScheduleState = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.AwsRedshiftClusterVpcSecurityGroup,
        },
        LoggingStatus = M.AwsRedshiftClusterLoggingStatus,
    },
}

M.AwsRoute53HostedZoneConfigDetails = {
    type = "structure",
    id = "AwsRoute53HostedZoneConfigDetails",
    members = {
        Comment = {
            type = "string",
        },
    },
}

M.AwsRoute53HostedZoneObjectDetails = {
    type = "structure",
    id = "AwsRoute53HostedZoneObjectDetails",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Config = M.AwsRoute53HostedZoneConfigDetails,
    },
}

M.CloudWatchLogsLogGroupArnConfigDetails = {
    type = "structure",
    id = "CloudWatchLogsLogGroupArnConfigDetails",
    members = {
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        HostedZoneId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.AwsRoute53QueryLoggingConfigDetails = {
    type = "structure",
    id = "AwsRoute53QueryLoggingConfigDetails",
    members = {
        CloudWatchLogsLogGroupArn = M.CloudWatchLogsLogGroupArnConfigDetails,
    },
}

M.AwsRoute53HostedZoneVpcDetails = {
    type = "structure",
    id = "AwsRoute53HostedZoneVpcDetails",
    members = {
        Id = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.AwsRoute53HostedZoneDetails = {
    type = "structure",
    id = "AwsRoute53HostedZoneDetails",
    members = {
        HostedZone = M.AwsRoute53HostedZoneObjectDetails,
        Vpcs = {
            type = "list",
            member = M.AwsRoute53HostedZoneVpcDetails,
        },
        NameServers = {
            type = "list",
            member = { type = "string" },
        },
        QueryLoggingConfig = M.AwsRoute53QueryLoggingConfigDetails,
    },
}

M.AwsS3AccountPublicAccessBlockDetails = {
    type = "structure",
    id = "AwsS3AccountPublicAccessBlockDetails",
    members = {
        BlockPublicAcls = {
            type = "boolean",
        },
        BlockPublicPolicy = {
            type = "boolean",
        },
        IgnorePublicAcls = {
            type = "boolean",
        },
        RestrictPublicBuckets = {
            type = "boolean",
        },
    },
}

M.AwsS3AccessPointVpcConfigurationDetails = {
    type = "structure",
    id = "AwsS3AccessPointVpcConfigurationDetails",
    members = {
        VpcId = {
            type = "string",
        },
    },
}

M.AwsS3AccessPointDetails = {
    type = "structure",
    id = "AwsS3AccessPointDetails",
    members = {
        AccessPointArn = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        Bucket = {
            type = "string",
        },
        BucketAccountId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        NetworkOrigin = {
            type = "string",
        },
        PublicAccessBlockConfiguration = M.AwsS3AccountPublicAccessBlockDetails,
        VpcConfiguration = M.AwsS3AccessPointVpcConfigurationDetails,
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails",
    members = {
        DaysAfterInitiation = {
            type = "integer",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails,
        Type = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails",
    members = {
        Operands = {
            type = "list",
            member = M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails,
        },
        Prefix = {
            type = "string",
        },
        Tag = M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails,
        Type = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails",
    members = {
        Predicate = M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails,
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails",
    members = {
        Days = {
            type = "integer",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails",
    members = {
        Date = {
            type = "string",
        },
        Days = {
            type = "integer",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationRulesDetails",
    members = {
        AbortIncompleteMultipartUpload = M.AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails,
        ExpirationDate = {
            type = "string",
        },
        ExpirationInDays = {
            type = "integer",
        },
        ExpiredObjectDeleteMarker = {
            type = "boolean",
        },
        Filter = M.AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails,
        ID = {
            type = "string",
        },
        NoncurrentVersionExpirationInDays = {
            type = "integer",
        },
        NoncurrentVersionTransitions = {
            type = "list",
            member = M.AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails,
        },
        Prefix = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Transitions = {
            type = "list",
            member = M.AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails,
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationDetails = {
    type = "structure",
    id = "AwsS3BucketBucketLifecycleConfigurationDetails",
    members = {
        Rules = {
            type = "list",
            member = M.AwsS3BucketBucketLifecycleConfigurationRulesDetails,
        },
    },
}

M.AwsS3BucketBucketVersioningConfiguration = {
    type = "structure",
    id = "AwsS3BucketBucketVersioningConfiguration",
    members = {
        IsMfaDeleteEnabled = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsS3BucketLoggingConfiguration = {
    type = "structure",
    id = "AwsS3BucketLoggingConfiguration",
    members = {
        DestinationBucketName = {
            type = "string",
        },
        LogFilePrefix = {
            type = "string",
        },
    },
}

M.AwsS3BucketNotificationConfigurationS3KeyFilterRuleName = {
    PREFIX = "Prefix",
    SUFFIX = "Suffix",
}

M.AwsS3BucketNotificationConfigurationS3KeyFilterRule = {
    type = "structure",
    id = "AwsS3BucketNotificationConfigurationS3KeyFilterRule",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsS3BucketNotificationConfigurationS3KeyFilter = {
    type = "structure",
    id = "AwsS3BucketNotificationConfigurationS3KeyFilter",
    members = {
        FilterRules = {
            type = "list",
            member = M.AwsS3BucketNotificationConfigurationS3KeyFilterRule,
        },
    },
}

M.AwsS3BucketNotificationConfigurationFilter = {
    type = "structure",
    id = "AwsS3BucketNotificationConfigurationFilter",
    members = {
        S3KeyFilter = M.AwsS3BucketNotificationConfigurationS3KeyFilter,
    },
}

M.AwsS3BucketNotificationConfigurationDetail = {
    type = "structure",
    id = "AwsS3BucketNotificationConfigurationDetail",
    members = {
        Events = {
            type = "list",
            member = { type = "string" },
        },
        Filter = M.AwsS3BucketNotificationConfigurationFilter,
        Destination = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsS3BucketNotificationConfiguration = {
    type = "structure",
    id = "AwsS3BucketNotificationConfiguration",
    members = {
        Configurations = {
            type = "list",
            member = M.AwsS3BucketNotificationConfigurationDetail,
        },
    },
}

M.AwsS3BucketWebsiteConfigurationRedirectTo = {
    type = "structure",
    id = "AwsS3BucketWebsiteConfigurationRedirectTo",
    members = {
        Hostname = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
    },
}

M.AwsS3BucketWebsiteConfigurationRoutingRuleCondition = {
    type = "structure",
    id = "AwsS3BucketWebsiteConfigurationRoutingRuleCondition",
    members = {
        HttpErrorCodeReturnedEquals = {
            type = "string",
        },
        KeyPrefixEquals = {
            type = "string",
        },
    },
}

M.AwsS3BucketWebsiteConfigurationRoutingRuleRedirect = {
    type = "structure",
    id = "AwsS3BucketWebsiteConfigurationRoutingRuleRedirect",
    members = {
        Hostname = {
            type = "string",
        },
        HttpRedirectCode = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        ReplaceKeyPrefixWith = {
            type = "string",
        },
        ReplaceKeyWith = {
            type = "string",
        },
    },
}

M.AwsS3BucketWebsiteConfigurationRoutingRule = {
    type = "structure",
    id = "AwsS3BucketWebsiteConfigurationRoutingRule",
    members = {
        Condition = M.AwsS3BucketWebsiteConfigurationRoutingRuleCondition,
        Redirect = M.AwsS3BucketWebsiteConfigurationRoutingRuleRedirect,
    },
}

M.AwsS3BucketWebsiteConfiguration = {
    type = "structure",
    id = "AwsS3BucketWebsiteConfiguration",
    members = {
        ErrorDocument = {
            type = "string",
        },
        IndexDocumentSuffix = {
            type = "string",
        },
        RedirectAllRequestsTo = M.AwsS3BucketWebsiteConfigurationRedirectTo,
        RoutingRules = {
            type = "list",
            member = M.AwsS3BucketWebsiteConfigurationRoutingRule,
        },
    },
}

M.AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails = {
    type = "structure",
    id = "AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails",
    members = {
        Days = {
            type = "integer",
        },
        Mode = {
            type = "string",
        },
        Years = {
            type = "integer",
        },
    },
}

M.AwsS3BucketObjectLockConfigurationRuleDetails = {
    type = "structure",
    id = "AwsS3BucketObjectLockConfigurationRuleDetails",
    members = {
        DefaultRetention = M.AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails,
    },
}

M.AwsS3BucketObjectLockConfiguration = {
    type = "structure",
    id = "AwsS3BucketObjectLockConfiguration",
    members = {
        ObjectLockEnabled = {
            type = "string",
        },
        Rule = M.AwsS3BucketObjectLockConfigurationRuleDetails,
    },
}

M.AwsS3BucketServerSideEncryptionByDefault = {
    type = "structure",
    id = "AwsS3BucketServerSideEncryptionByDefault",
    members = {
        SSEAlgorithm = {
            type = "string",
        },
        KMSMasterKeyID = {
            type = "string",
        },
    },
}

M.AwsS3BucketServerSideEncryptionRule = {
    type = "structure",
    id = "AwsS3BucketServerSideEncryptionRule",
    members = {
        ApplyServerSideEncryptionByDefault = M.AwsS3BucketServerSideEncryptionByDefault,
    },
}

M.AwsS3BucketServerSideEncryptionConfiguration = {
    type = "structure",
    id = "AwsS3BucketServerSideEncryptionConfiguration",
    members = {
        Rules = {
            type = "list",
            member = M.AwsS3BucketServerSideEncryptionRule,
        },
    },
}

M.AwsS3BucketDetails = {
    type = "structure",
    id = "AwsS3BucketDetails",
    members = {
        OwnerId = {
            type = "string",
        },
        OwnerName = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedAt = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = M.AwsS3BucketServerSideEncryptionConfiguration,
        BucketLifecycleConfiguration = M.AwsS3BucketBucketLifecycleConfigurationDetails,
        PublicAccessBlockConfiguration = M.AwsS3AccountPublicAccessBlockDetails,
        AccessControlList = {
            type = "string",
        },
        BucketLoggingConfiguration = M.AwsS3BucketLoggingConfiguration,
        BucketWebsiteConfiguration = M.AwsS3BucketWebsiteConfiguration,
        BucketNotificationConfiguration = M.AwsS3BucketNotificationConfiguration,
        BucketVersioningConfiguration = M.AwsS3BucketBucketVersioningConfiguration,
        ObjectLockConfiguration = M.AwsS3BucketObjectLockConfiguration,
        Name = {
            type = "string",
        },
    },
}

M.AwsS3ObjectDetails = {
    type = "structure",
    id = "AwsS3ObjectDetails",
    members = {
        LastModified = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        ServerSideEncryption = {
            type = "string",
        },
        SSEKMSKeyId = {
            type = "string",
        },
    },
}

M.AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails = {
    type = "structure",
    id = "AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails",
    members = {
        MinimumInstanceMetadataServiceVersion = {
            type = "string",
        },
    },
}

M.AwsSageMakerNotebookInstanceDetails = {
    type = "structure",
    id = "AwsSageMakerNotebookInstanceDetails",
    members = {
        AcceleratorTypes = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalCodeRepositories = {
            type = "list",
            member = { type = "string" },
        },
        DefaultCodeRepository = {
            type = "string",
        },
        DirectInternetAccess = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        InstanceMetadataServiceConfiguration = M.AwsSageMakerNotebookInstanceMetadataServiceConfigurationDetails,
        InstanceType = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        NotebookInstanceArn = {
            type = "string",
        },
        NotebookInstanceLifecycleConfigName = {
            type = "string",
        },
        NotebookInstanceName = {
            type = "string",
        },
        NotebookInstanceStatus = {
            type = "string",
        },
        PlatformIdentifier = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        RootAccess = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        SubnetId = {
            type = "string",
        },
        Url = {
            type = "string",
        },
        VolumeSizeInGB = {
            type = "integer",
        },
    },
}

M.AwsSecretsManagerSecretRotationRules = {
    type = "structure",
    id = "AwsSecretsManagerSecretRotationRules",
    members = {
        AutomaticallyAfterDays = {
            type = "integer",
        },
    },
}

M.AwsSecretsManagerSecretDetails = {
    type = "structure",
    id = "AwsSecretsManagerSecretDetails",
    members = {
        RotationRules = M.AwsSecretsManagerSecretRotationRules,
        RotationOccurredWithinFrequency = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        RotationEnabled = {
            type = "boolean",
        },
        RotationLambdaArn = {
            type = "string",
        },
        Deleted = {
            type = "boolean",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.SecurityControlParameter = {
    type = "structure",
    id = "SecurityControlParameter",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ComplianceStatus = {
    PASSED = "PASSED",
    WARNING = "WARNING",
    FAILED = "FAILED",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.StatusReason = {
    type = "structure",
    id = "StatusReason",
    members = {
        ReasonCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.Compliance = {
    type = "structure",
    id = "Compliance",
    members = {
        Status = {
            type = "string",
        },
        RelatedRequirements = {
            type = "list",
            member = { type = "string" },
        },
        StatusReasons = {
            type = "list",
            member = M.StatusReason,
        },
        SecurityControlId = {
            type = "string",
        },
        AssociatedStandards = {
            type = "list",
            member = M.AssociatedStandard,
        },
        SecurityControlParameters = {
            type = "list",
            member = M.SecurityControlParameter,
        },
    },
}

M.NetworkAutonomousSystem = {
    type = "structure",
    id = "NetworkAutonomousSystem",
    members = {
        Name = {
            type = "string",
        },
        Number = {
            type = "integer",
        },
    },
}

M.ConnectionDirection = {
    INBOUND = "INBOUND",
    OUTBOUND = "OUTBOUND",
}

M.NetworkConnection = {
    type = "structure",
    id = "NetworkConnection",
    members = {
        Direction = {
            type = "string",
        },
    },
}

M.NetworkGeoLocation = {
    type = "structure",
    id = "NetworkGeoLocation",
    members = {
        City = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Lat = {
            type = "double",
        },
        Lon = {
            type = "double",
        },
    },
}

M.NetworkEndpoint = {
    type = "structure",
    id = "NetworkEndpoint",
    members = {
        Id = {
            type = "string",
        },
        Ip = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        Location = M.NetworkGeoLocation,
        AutonomousSystem = M.NetworkAutonomousSystem,
        Connection = M.NetworkConnection,
    },
}

M.Indicator = {
    type = "structure",
    id = "Indicator",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        Title = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.Signal = {
    type = "structure",
    id = "Signal",
    members = {
        Type = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        ProductArn = {
            type = "string",
        },
        ResourceIds = {
            type = "list",
            member = { type = "string" },
        },
        SignalIndicators = {
            type = "list",
            member = M.Indicator,
        },
        Name = {
            type = "string",
        },
        CreatedAt = {
            type = "long",
        },
        UpdatedAt = {
            type = "long",
        },
        FirstSeenAt = {
            type = "long",
        },
        LastSeenAt = {
            type = "long",
        },
        Severity = {
            type = "double",
        },
        Count = {
            type = "integer",
        },
        ActorIds = {
            type = "list",
            member = { type = "string" },
        },
        EndpointIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Sequence = {
    type = "structure",
    id = "Sequence",
    members = {
        Uid = {
            type = "string",
        },
        Actors = {
            type = "list",
            member = M.Actor,
        },
        Endpoints = {
            type = "list",
            member = M.NetworkEndpoint,
        },
        Signals = {
            type = "list",
            member = M.Signal,
        },
        SequenceIndicators = {
            type = "list",
            member = M.Indicator,
        },
    },
}

M.Detection = {
    type = "structure",
    id = "Detection",
    members = {
        Sequence = M.Sequence,
    },
}

M.FindingProviderSeverity = {
    type = "structure",
    id = "FindingProviderSeverity",
    members = {
        Label = {
            type = "string",
        },
        Original = {
            type = "string",
        },
    },
}

M.FindingProviderFields = {
    type = "structure",
    id = "FindingProviderFields",
    members = {
        Confidence = {
            type = "integer",
        },
        Criticality = {
            type = "integer",
        },
        RelatedFindings = {
            type = "list",
            member = M.RelatedFinding,
        },
        Severity = M.FindingProviderSeverity,
        Types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GeneratorDetails = {
    type = "structure",
    id = "GeneratorDetails",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Labels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MalwareState = {
    OBSERVED = "OBSERVED",
    REMOVAL_FAILED = "REMOVAL_FAILED",
    REMOVED = "REMOVED",
}

M.MalwareType = {
    ADWARE = "ADWARE",
    BLENDED_THREAT = "BLENDED_THREAT",
    BOTNET_AGENT = "BOTNET_AGENT",
    COIN_MINER = "COIN_MINER",
    EXPLOIT_KIT = "EXPLOIT_KIT",
    KEYLOGGER = "KEYLOGGER",
    MACRO = "MACRO",
    POTENTIALLY_UNWANTED = "POTENTIALLY_UNWANTED",
    SPYWARE = "SPYWARE",
    RANSOMWARE = "RANSOMWARE",
    REMOTE_ACCESS = "REMOTE_ACCESS",
    ROOTKIT = "ROOTKIT",
    TROJAN = "TROJAN",
    VIRUS = "VIRUS",
    WORM = "WORM",
}

M.Malware = {
    type = "structure",
    id = "Malware",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.NetworkDirection = {
    IN = "IN",
    OUT = "OUT",
}

M.PortRange = {
    type = "structure",
    id = "PortRange",
    members = {
        Begin = {
            type = "integer",
        },
        End = {
            type = "integer",
        },
    },
}

M.Network = {
    type = "structure",
    id = "Network",
    members = {
        Direction = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        OpenPortRange = M.PortRange,
        SourceIpV4 = {
            type = "string",
        },
        SourceIpV6 = {
            type = "string",
        },
        SourcePort = {
            type = "integer",
        },
        SourceDomain = {
            type = "string",
        },
        SourceMac = {
            type = "string",
        },
        DestinationIpV4 = {
            type = "string",
        },
        DestinationIpV6 = {
            type = "string",
        },
        DestinationPort = {
            type = "integer",
        },
        DestinationDomain = {
            type = "string",
        },
    },
}

M.NetworkPathComponentDetails = {
    type = "structure",
    id = "NetworkPathComponentDetails",
    members = {
        Address = {
            type = "list",
            member = { type = "string" },
        },
        PortRanges = {
            type = "list",
            member = M.PortRange,
        },
    },
}

M.NetworkHeader = {
    type = "structure",
    id = "NetworkHeader",
    members = {
        Protocol = {
            type = "string",
        },
        Destination = M.NetworkPathComponentDetails,
        Source = M.NetworkPathComponentDetails,
    },
}

M.NetworkPathComponent = {
    type = "structure",
    id = "NetworkPathComponent",
    members = {
        ComponentId = {
            type = "string",
        },
        ComponentType = {
            type = "string",
        },
        Egress = M.NetworkHeader,
        Ingress = M.NetworkHeader,
    },
}

M.Note = {
    type = "structure",
    id = "Note",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PatchSummary = {
    type = "structure",
    id = "PatchSummary",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstalledCount = {
            type = "integer",
        },
        MissingCount = {
            type = "integer",
        },
        FailedCount = {
            type = "integer",
        },
        InstalledOtherCount = {
            type = "integer",
        },
        InstalledRejectedCount = {
            type = "integer",
        },
        InstalledPendingReboot = {
            type = "integer",
        },
        OperationStartTime = {
            type = "string",
        },
        OperationEndTime = {
            type = "string",
        },
        RebootOption = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
    },
}

M.ProcessDetails = {
    type = "structure",
    id = "ProcessDetails",
    members = {
        Name = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Pid = {
            type = "integer",
        },
        ParentPid = {
            type = "integer",
        },
        LaunchedAt = {
            type = "string",
        },
        TerminatedAt = {
            type = "string",
        },
    },
}

M.RecordState = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        Text = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.Remediation = {
    type = "structure",
    id = "Remediation",
    members = {
        Recommendation = M.Recommendation,
    },
}

M.Cell = {
    type = "structure",
    id = "Cell",
    members = {
        Column = {
            type = "long",
        },
        Row = {
            type = "long",
        },
        ColumnName = {
            type = "string",
        },
        CellReference = {
            type = "string",
        },
    },
}

M.Range = {
    type = "structure",
    id = "Range",
    members = {
        Start = {
            type = "long",
        },
        End = {
            type = "long",
        },
        StartColumn = {
            type = "long",
        },
    },
}

M.Page = {
    type = "structure",
    id = "Page",
    members = {
        PageNumber = {
            type = "long",
        },
        LineRange = M.Range,
        OffsetRange = M.Range,
    },
}

M.Record = {
    type = "structure",
    id = "Record",
    members = {
        JsonPath = {
            type = "string",
        },
        RecordIndex = {
            type = "long",
        },
    },
}

M.Occurrences = {
    type = "structure",
    id = "Occurrences",
    members = {
        LineRanges = {
            type = "list",
            member = M.Range,
        },
        OffsetRanges = {
            type = "list",
            member = M.Range,
        },
        Pages = {
            type = "list",
            member = M.Page,
        },
        Records = {
            type = "list",
            member = M.Record,
        },
        Cells = {
            type = "list",
            member = M.Cell,
        },
    },
}

M.CustomDataIdentifiersDetections = {
    type = "structure",
    id = "CustomDataIdentifiersDetections",
    members = {
        Count = {
            type = "long",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Occurrences = M.Occurrences,
    },
}

M.CustomDataIdentifiersResult = {
    type = "structure",
    id = "CustomDataIdentifiersResult",
    members = {
        Detections = {
            type = "list",
            member = M.CustomDataIdentifiersDetections,
        },
        TotalCount = {
            type = "long",
        },
    },
}

M.SensitiveDataDetections = {
    type = "structure",
    id = "SensitiveDataDetections",
    members = {
        Count = {
            type = "long",
        },
        Type = {
            type = "string",
        },
        Occurrences = M.Occurrences,
    },
}

M.SensitiveDataResult = {
    type = "structure",
    id = "SensitiveDataResult",
    members = {
        Category = {
            type = "string",
        },
        Detections = {
            type = "list",
            member = M.SensitiveDataDetections,
        },
        TotalCount = {
            type = "long",
        },
    },
}

M.ClassificationStatus = {
    type = "structure",
    id = "ClassificationStatus",
    members = {
        Code = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ClassificationResult = {
    type = "structure",
    id = "ClassificationResult",
    members = {
        MimeType = {
            type = "string",
        },
        SizeClassified = {
            type = "long",
        },
        AdditionalOccurrences = {
            type = "boolean",
        },
        Status = M.ClassificationStatus,
        SensitiveData = {
            type = "list",
            member = M.SensitiveDataResult,
        },
        CustomDataIdentifiers = M.CustomDataIdentifiersResult,
    },
}

M.DataClassificationDetails = {
    type = "structure",
    id = "DataClassificationDetails",
    members = {
        DetailedResultsLocation = {
            type = "string",
        },
        Result = M.ClassificationResult,
    },
}

M.AwsSnsTopicSubscription = {
    type = "structure",
    id = "AwsSnsTopicSubscription",
    members = {
        Endpoint = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
    },
}

M.AwsSnsTopicDetails = {
    type = "structure",
    id = "AwsSnsTopicDetails",
    members = {
        KmsMasterKeyId = {
            type = "string",
        },
        Subscription = {
            type = "list",
            member = M.AwsSnsTopicSubscription,
        },
        TopicName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        SqsSuccessFeedbackRoleArn = {
            type = "string",
        },
        SqsFailureFeedbackRoleArn = {
            type = "string",
        },
        ApplicationSuccessFeedbackRoleArn = {
            type = "string",
        },
        FirehoseSuccessFeedbackRoleArn = {
            type = "string",
        },
        FirehoseFailureFeedbackRoleArn = {
            type = "string",
        },
        HttpSuccessFeedbackRoleArn = {
            type = "string",
        },
        HttpFailureFeedbackRoleArn = {
            type = "string",
        },
    },
}

M.AwsSqsQueueDetails = {
    type = "structure",
    id = "AwsSqsQueueDetails",
    members = {
        KmsDataKeyReusePeriodSeconds = {
            type = "integer",
        },
        KmsMasterKeyId = {
            type = "string",
        },
        QueueName = {
            type = "string",
        },
        DeadLetterTargetArn = {
            type = "string",
        },
    },
}

M.AwsSsmComplianceSummary = {
    type = "structure",
    id = "AwsSsmComplianceSummary",
    members = {
        Status = {
            type = "string",
        },
        CompliantCriticalCount = {
            type = "integer",
        },
        CompliantHighCount = {
            type = "integer",
        },
        CompliantMediumCount = {
            type = "integer",
        },
        ExecutionType = {
            type = "string",
        },
        NonCompliantCriticalCount = {
            type = "integer",
        },
        CompliantInformationalCount = {
            type = "integer",
        },
        NonCompliantInformationalCount = {
            type = "integer",
        },
        CompliantUnspecifiedCount = {
            type = "integer",
        },
        NonCompliantLowCount = {
            type = "integer",
        },
        NonCompliantHighCount = {
            type = "integer",
        },
        CompliantLowCount = {
            type = "integer",
        },
        ComplianceType = {
            type = "string",
        },
        PatchBaselineId = {
            type = "string",
        },
        OverallSeverity = {
            type = "string",
        },
        NonCompliantMediumCount = {
            type = "integer",
        },
        NonCompliantUnspecifiedCount = {
            type = "integer",
        },
        PatchGroup = {
            type = "string",
        },
    },
}

M.AwsSsmPatch = {
    type = "structure",
    id = "AwsSsmPatch",
    members = {
        ComplianceSummary = M.AwsSsmComplianceSummary,
    },
}

M.AwsSsmPatchComplianceDetails = {
    type = "structure",
    id = "AwsSsmPatchComplianceDetails",
    members = {
        Patch = M.AwsSsmPatch,
    },
}

M.AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails = {
    type = "structure",
    id = "AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails",
    members = {
        LogGroupArn = {
            type = "string",
        },
    },
}

M.AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails = {
    type = "structure",
    id = "AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails",
    members = {
        CloudWatchLogsLogGroup = M.AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails,
    },
}

M.AwsStepFunctionStateMachineLoggingConfigurationDetails = {
    type = "structure",
    id = "AwsStepFunctionStateMachineLoggingConfigurationDetails",
    members = {
        Destinations = {
            type = "list",
            member = M.AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails,
        },
        IncludeExecutionData = {
            type = "boolean",
        },
        Level = {
            type = "string",
        },
    },
}

M.AwsStepFunctionStateMachineTracingConfigurationDetails = {
    type = "structure",
    id = "AwsStepFunctionStateMachineTracingConfigurationDetails",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsStepFunctionStateMachineDetails = {
    type = "structure",
    id = "AwsStepFunctionStateMachineDetails",
    members = {
        Label = {
            type = "string",
        },
        LoggingConfiguration = M.AwsStepFunctionStateMachineLoggingConfigurationDetails,
        Name = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        StateMachineArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        TracingConfiguration = M.AwsStepFunctionStateMachineTracingConfigurationDetails,
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRateBasedRuleMatchPredicate = {
    type = "structure",
    id = "AwsWafRateBasedRuleMatchPredicate",
    members = {
        DataId = {
            type = "string",
        },
        Negated = {
            type = "boolean",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRateBasedRuleDetails = {
    type = "structure",
    id = "AwsWafRateBasedRuleDetails",
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RateKey = {
            type = "string",
        },
        RateLimit = {
            type = "long",
        },
        RuleId = {
            type = "string",
        },
        MatchPredicates = {
            type = "list",
            member = M.AwsWafRateBasedRuleMatchPredicate,
        },
    },
}

M.AwsWafRegionalRateBasedRuleMatchPredicate = {
    type = "structure",
    id = "AwsWafRegionalRateBasedRuleMatchPredicate",
    members = {
        DataId = {
            type = "string",
        },
        Negated = {
            type = "boolean",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalRateBasedRuleDetails = {
    type = "structure",
    id = "AwsWafRegionalRateBasedRuleDetails",
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RateKey = {
            type = "string",
        },
        RateLimit = {
            type = "long",
        },
        RuleId = {
            type = "string",
        },
        MatchPredicates = {
            type = "list",
            member = M.AwsWafRegionalRateBasedRuleMatchPredicate,
        },
    },
}

M.AwsWafRegionalRulePredicateListDetails = {
    type = "structure",
    id = "AwsWafRegionalRulePredicateListDetails",
    members = {
        DataId = {
            type = "string",
        },
        Negated = {
            type = "boolean",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalRuleDetails = {
    type = "structure",
    id = "AwsWafRegionalRuleDetails",
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PredicateList = {
            type = "list",
            member = M.AwsWafRegionalRulePredicateListDetails,
        },
        RuleId = {
            type = "string",
        },
    },
}

M.AwsWafRegionalRuleGroupRulesActionDetails = {
    type = "structure",
    id = "AwsWafRegionalRuleGroupRulesActionDetails",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalRuleGroupRulesDetails = {
    type = "structure",
    id = "AwsWafRegionalRuleGroupRulesDetails",
    members = {
        Action = M.AwsWafRegionalRuleGroupRulesActionDetails,
        Priority = {
            type = "integer",
        },
        RuleId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalRuleGroupDetails = {
    type = "structure",
    id = "AwsWafRegionalRuleGroupDetails",
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RuleGroupId = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.AwsWafRegionalRuleGroupRulesDetails,
        },
    },
}

M.AwsWafRegionalWebAclRulesListActionDetails = {
    type = "structure",
    id = "AwsWafRegionalWebAclRulesListActionDetails",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalWebAclRulesListOverrideActionDetails = {
    type = "structure",
    id = "AwsWafRegionalWebAclRulesListOverrideActionDetails",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalWebAclRulesListDetails = {
    type = "structure",
    id = "AwsWafRegionalWebAclRulesListDetails",
    members = {
        Action = M.AwsWafRegionalWebAclRulesListActionDetails,
        OverrideAction = M.AwsWafRegionalWebAclRulesListOverrideActionDetails,
        Priority = {
            type = "integer",
        },
        RuleId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalWebAclDetails = {
    type = "structure",
    id = "AwsWafRegionalWebAclDetails",
    members = {
        DefaultAction = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RulesList = {
            type = "list",
            member = M.AwsWafRegionalWebAclRulesListDetails,
        },
        WebAclId = {
            type = "string",
        },
    },
}

M.AwsWafRulePredicateListDetails = {
    type = "structure",
    id = "AwsWafRulePredicateListDetails",
    members = {
        DataId = {
            type = "string",
        },
        Negated = {
            type = "boolean",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRuleDetails = {
    type = "structure",
    id = "AwsWafRuleDetails",
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PredicateList = {
            type = "list",
            member = M.AwsWafRulePredicateListDetails,
        },
        RuleId = {
            type = "string",
        },
    },
}

M.AwsWafRuleGroupRulesActionDetails = {
    type = "structure",
    id = "AwsWafRuleGroupRulesActionDetails",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRuleGroupRulesDetails = {
    type = "structure",
    id = "AwsWafRuleGroupRulesDetails",
    members = {
        Action = M.AwsWafRuleGroupRulesActionDetails,
        Priority = {
            type = "integer",
        },
        RuleId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRuleGroupDetails = {
    type = "structure",
    id = "AwsWafRuleGroupDetails",
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RuleGroupId = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.AwsWafRuleGroupRulesDetails,
        },
    },
}

M.AwsWafv2CustomHttpHeader = {
    type = "structure",
    id = "AwsWafv2CustomHttpHeader",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AwsWafv2CustomRequestHandlingDetails = {
    type = "structure",
    id = "AwsWafv2CustomRequestHandlingDetails",
    members = {
        InsertHeaders = {
            type = "list",
            member = M.AwsWafv2CustomHttpHeader,
        },
    },
}

M.AwsWafv2ActionAllowDetails = {
    type = "structure",
    id = "AwsWafv2ActionAllowDetails",
    members = {
        CustomRequestHandling = M.AwsWafv2CustomRequestHandlingDetails,
    },
}

M.AwsWafv2CustomResponseDetails = {
    type = "structure",
    id = "AwsWafv2CustomResponseDetails",
    members = {
        CustomResponseBodyKey = {
            type = "string",
        },
        ResponseCode = {
            type = "integer",
        },
        ResponseHeaders = {
            type = "list",
            member = M.AwsWafv2CustomHttpHeader,
        },
    },
}

M.AwsWafv2ActionBlockDetails = {
    type = "structure",
    id = "AwsWafv2ActionBlockDetails",
    members = {
        CustomResponse = M.AwsWafv2CustomResponseDetails,
    },
}

M.AwsWafv2RulesActionCaptchaDetails = {
    type = "structure",
    id = "AwsWafv2RulesActionCaptchaDetails",
    members = {
        CustomRequestHandling = M.AwsWafv2CustomRequestHandlingDetails,
    },
}

M.AwsWafv2RulesActionCountDetails = {
    type = "structure",
    id = "AwsWafv2RulesActionCountDetails",
    members = {
        CustomRequestHandling = M.AwsWafv2CustomRequestHandlingDetails,
    },
}

M.AwsWafv2RulesActionDetails = {
    type = "structure",
    id = "AwsWafv2RulesActionDetails",
    members = {
        Allow = M.AwsWafv2ActionAllowDetails,
        Block = M.AwsWafv2ActionBlockDetails,
        Captcha = M.AwsWafv2RulesActionCaptchaDetails,
        Count = M.AwsWafv2RulesActionCountDetails,
    },
}

M.AwsWafv2VisibilityConfigDetails = {
    type = "structure",
    id = "AwsWafv2VisibilityConfigDetails",
    members = {
        CloudWatchMetricsEnabled = {
            type = "boolean",
        },
        MetricName = {
            type = "string",
        },
        SampledRequestsEnabled = {
            type = "boolean",
        },
    },
}

M.AwsWafv2RulesDetails = {
    type = "structure",
    id = "AwsWafv2RulesDetails",
    members = {
        Action = M.AwsWafv2RulesActionDetails,
        Name = {
            type = "string",
        },
        OverrideAction = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        VisibilityConfig = M.AwsWafv2VisibilityConfigDetails,
    },
}

M.AwsWafv2RuleGroupDetails = {
    type = "structure",
    id = "AwsWafv2RuleGroupDetails",
    members = {
        Capacity = {
            type = "long",
        },
        Description = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.AwsWafv2RulesDetails,
        },
        Scope = {
            type = "string",
        },
        VisibilityConfig = M.AwsWafv2VisibilityConfigDetails,
    },
}

M.AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails = {
    type = "structure",
    id = "AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails",
    members = {
        ImmunityTime = {
            type = "long",
        },
    },
}

M.AwsWafv2WebAclCaptchaConfigDetails = {
    type = "structure",
    id = "AwsWafv2WebAclCaptchaConfigDetails",
    members = {
        ImmunityTimeProperty = M.AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails,
    },
}

M.AwsWafv2WebAclActionDetails = {
    type = "structure",
    id = "AwsWafv2WebAclActionDetails",
    members = {
        Allow = M.AwsWafv2ActionAllowDetails,
        Block = M.AwsWafv2ActionBlockDetails,
    },
}

M.AwsWafv2WebAclDetails = {
    type = "structure",
    id = "AwsWafv2WebAclDetails",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ManagedbyFirewallManager = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        Capacity = {
            type = "long",
        },
        CaptchaConfig = M.AwsWafv2WebAclCaptchaConfigDetails,
        DefaultAction = M.AwsWafv2WebAclActionDetails,
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.AwsWafv2RulesDetails,
        },
        VisibilityConfig = M.AwsWafv2VisibilityConfigDetails,
    },
}

M.WafAction = {
    type = "structure",
    id = "WafAction",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.WafExcludedRule = {
    type = "structure",
    id = "WafExcludedRule",
    members = {
        RuleId = {
            type = "string",
        },
    },
}

M.WafOverrideAction = {
    type = "structure",
    id = "WafOverrideAction",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafWebAclRule = {
    type = "structure",
    id = "AwsWafWebAclRule",
    members = {
        Action = M.WafAction,
        ExcludedRules = {
            type = "list",
            member = M.WafExcludedRule,
        },
        OverrideAction = M.WafOverrideAction,
        Priority = {
            type = "integer",
        },
        RuleId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafWebAclDetails = {
    type = "structure",
    id = "AwsWafWebAclDetails",
    members = {
        Name = {
            type = "string",
        },
        DefaultAction = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.AwsWafWebAclRule,
        },
        WebAclId = {
            type = "string",
        },
    },
}

M.AwsXrayEncryptionConfigDetails = {
    type = "structure",
    id = "AwsXrayEncryptionConfigDetails",
    members = {
        KeyId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.CodeRepositoryDetails = {
    type = "structure",
    id = "CodeRepositoryDetails",
    members = {
        ProviderType = {
            type = "string",
        },
        ProjectName = {
            type = "string",
        },
        CodeSecurityIntegrationArn = {
            type = "string",
        },
    },
}

M.VolumeMount = {
    type = "structure",
    id = "VolumeMount",
    members = {
        Name = {
            type = "string",
        },
        MountPath = {
            type = "string",
        },
    },
}

M.ContainerDetails = {
    type = "structure",
    id = "ContainerDetails",
    members = {
        ContainerRuntime = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ImageId = {
            type = "string",
        },
        ImageName = {
            type = "string",
        },
        LaunchedAt = {
            type = "string",
        },
        VolumeMounts = {
            type = "list",
            member = M.VolumeMount,
        },
        Privileged = {
            type = "boolean",
        },
    },
}

M.ResourceDetails = {
    type = "structure",
    id = "ResourceDetails",
    members = {
        AwsAutoScalingAutoScalingGroup = M.AwsAutoScalingAutoScalingGroupDetails,
        AwsCodeBuildProject = M.AwsCodeBuildProjectDetails,
        AwsCloudFrontDistribution = M.AwsCloudFrontDistributionDetails,
        AwsEc2Instance = M.AwsEc2InstanceDetails,
        AwsEc2NetworkInterface = M.AwsEc2NetworkInterfaceDetails,
        AwsEc2SecurityGroup = M.AwsEc2SecurityGroupDetails,
        AwsEc2Volume = M.AwsEc2VolumeDetails,
        AwsEc2Vpc = M.AwsEc2VpcDetails,
        AwsEc2Eip = M.AwsEc2EipDetails,
        AwsEc2Subnet = M.AwsEc2SubnetDetails,
        AwsEc2NetworkAcl = M.AwsEc2NetworkAclDetails,
        AwsElbv2LoadBalancer = M.AwsElbv2LoadBalancerDetails,
        AwsElasticBeanstalkEnvironment = M.AwsElasticBeanstalkEnvironmentDetails,
        AwsElasticsearchDomain = M.AwsElasticsearchDomainDetails,
        AwsS3Bucket = M.AwsS3BucketDetails,
        AwsS3AccountPublicAccessBlock = M.AwsS3AccountPublicAccessBlockDetails,
        AwsS3Object = M.AwsS3ObjectDetails,
        AwsSecretsManagerSecret = M.AwsSecretsManagerSecretDetails,
        AwsIamAccessKey = M.AwsIamAccessKeyDetails,
        AwsIamUser = M.AwsIamUserDetails,
        AwsIamPolicy = M.AwsIamPolicyDetails,
        AwsApiGatewayV2Stage = M.AwsApiGatewayV2StageDetails,
        AwsApiGatewayV2Api = M.AwsApiGatewayV2ApiDetails,
        AwsDynamoDbTable = M.AwsDynamoDbTableDetails,
        AwsApiGatewayStage = M.AwsApiGatewayStageDetails,
        AwsApiGatewayRestApi = M.AwsApiGatewayRestApiDetails,
        AwsCloudTrailTrail = M.AwsCloudTrailTrailDetails,
        AwsSsmPatchCompliance = M.AwsSsmPatchComplianceDetails,
        AwsCertificateManagerCertificate = M.AwsCertificateManagerCertificateDetails,
        AwsRedshiftCluster = M.AwsRedshiftClusterDetails,
        AwsElbLoadBalancer = M.AwsElbLoadBalancerDetails,
        AwsIamGroup = M.AwsIamGroupDetails,
        AwsIamRole = M.AwsIamRoleDetails,
        AwsKmsKey = M.AwsKmsKeyDetails,
        AwsLambdaFunction = M.AwsLambdaFunctionDetails,
        AwsLambdaLayerVersion = M.AwsLambdaLayerVersionDetails,
        AwsRdsDbInstance = M.AwsRdsDbInstanceDetails,
        AwsSnsTopic = M.AwsSnsTopicDetails,
        AwsSqsQueue = M.AwsSqsQueueDetails,
        AwsWafWebAcl = M.AwsWafWebAclDetails,
        AwsRdsDbSnapshot = M.AwsRdsDbSnapshotDetails,
        AwsRdsDbClusterSnapshot = M.AwsRdsDbClusterSnapshotDetails,
        AwsRdsDbCluster = M.AwsRdsDbClusterDetails,
        AwsEcsCluster = M.AwsEcsClusterDetails,
        AwsEcsContainer = M.AwsEcsContainerDetails,
        AwsEcsTaskDefinition = M.AwsEcsTaskDefinitionDetails,
        Container = M.ContainerDetails,
        Other = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AwsRdsEventSubscription = M.AwsRdsEventSubscriptionDetails,
        AwsEcsService = M.AwsEcsServiceDetails,
        AwsAutoScalingLaunchConfiguration = M.AwsAutoScalingLaunchConfigurationDetails,
        AwsEc2VpnConnection = M.AwsEc2VpnConnectionDetails,
        AwsEcrContainerImage = M.AwsEcrContainerImageDetails,
        AwsOpenSearchServiceDomain = M.AwsOpenSearchServiceDomainDetails,
        AwsEc2VpcEndpointService = M.AwsEc2VpcEndpointServiceDetails,
        AwsXrayEncryptionConfig = M.AwsXrayEncryptionConfigDetails,
        AwsWafRateBasedRule = M.AwsWafRateBasedRuleDetails,
        AwsWafRegionalRateBasedRule = M.AwsWafRegionalRateBasedRuleDetails,
        AwsEcrRepository = M.AwsEcrRepositoryDetails,
        AwsEksCluster = M.AwsEksClusterDetails,
        AwsNetworkFirewallFirewallPolicy = M.AwsNetworkFirewallFirewallPolicyDetails,
        AwsNetworkFirewallFirewall = M.AwsNetworkFirewallFirewallDetails,
        AwsNetworkFirewallRuleGroup = M.AwsNetworkFirewallRuleGroupDetails,
        AwsRdsDbSecurityGroup = M.AwsRdsDbSecurityGroupDetails,
        AwsKinesisStream = M.AwsKinesisStreamDetails,
        AwsEc2TransitGateway = M.AwsEc2TransitGatewayDetails,
        AwsEfsAccessPoint = M.AwsEfsAccessPointDetails,
        AwsCloudFormationStack = M.AwsCloudFormationStackDetails,
        AwsCloudWatchAlarm = M.AwsCloudWatchAlarmDetails,
        AwsEc2VpcPeeringConnection = M.AwsEc2VpcPeeringConnectionDetails,
        AwsWafRegionalRuleGroup = M.AwsWafRegionalRuleGroupDetails,
        AwsWafRegionalRule = M.AwsWafRegionalRuleDetails,
        AwsWafRegionalWebAcl = M.AwsWafRegionalWebAclDetails,
        AwsWafRule = M.AwsWafRuleDetails,
        AwsWafRuleGroup = M.AwsWafRuleGroupDetails,
        AwsEcsTask = M.AwsEcsTaskDetails,
        AwsBackupBackupVault = M.AwsBackupBackupVaultDetails,
        AwsBackupBackupPlan = M.AwsBackupBackupPlanDetails,
        AwsBackupRecoveryPoint = M.AwsBackupRecoveryPointDetails,
        AwsEc2LaunchTemplate = M.AwsEc2LaunchTemplateDetails,
        AwsSageMakerNotebookInstance = M.AwsSageMakerNotebookInstanceDetails,
        AwsWafv2WebAcl = M.AwsWafv2WebAclDetails,
        AwsWafv2RuleGroup = M.AwsWafv2RuleGroupDetails,
        AwsEc2RouteTable = M.AwsEc2RouteTableDetails,
        AwsAmazonMqBroker = M.AwsAmazonMqBrokerDetails,
        AwsAppSyncGraphQlApi = M.AwsAppSyncGraphQlApiDetails,
        AwsEventSchemasRegistry = M.AwsEventSchemasRegistryDetails,
        AwsGuardDutyDetector = M.AwsGuardDutyDetectorDetails,
        AwsStepFunctionStateMachine = M.AwsStepFunctionStateMachineDetails,
        AwsAthenaWorkGroup = M.AwsAthenaWorkGroupDetails,
        AwsEventsEventbus = M.AwsEventsEventbusDetails,
        AwsDmsEndpoint = M.AwsDmsEndpointDetails,
        AwsEventsEndpoint = M.AwsEventsEndpointDetails,
        AwsDmsReplicationTask = M.AwsDmsReplicationTaskDetails,
        AwsDmsReplicationInstance = M.AwsDmsReplicationInstanceDetails,
        AwsRoute53HostedZone = M.AwsRoute53HostedZoneDetails,
        AwsMskCluster = M.AwsMskClusterDetails,
        AwsS3AccessPoint = M.AwsS3AccessPointDetails,
        AwsEc2ClientVpnEndpoint = M.AwsEc2ClientVpnEndpointDetails,
        CodeRepository = M.CodeRepositoryDetails,
    },
}

M.Partition = {
    AWS = "aws",
    AWS_CN = "aws-cn",
    AWS_US_GOV = "aws-us-gov",
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Partition = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        ResourceRole = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DataClassification = M.DataClassificationDetails,
        Details = M.ResourceDetails,
        ApplicationName = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
    },
}

M.Severity = {
    type = "structure",
    id = "Severity",
    members = {
        Product = {
            type = "double",
        },
        Label = {
            type = "string",
        },
        Normalized = {
            type = "integer",
        },
        Original = {
            type = "string",
        },
    },
}

M.ThreatIntelIndicatorCategory = {
    BACKDOOR = "BACKDOOR",
    CARD_STEALER = "CARD_STEALER",
    COMMAND_AND_CONTROL = "COMMAND_AND_CONTROL",
    DROP_SITE = "DROP_SITE",
    EXPLOIT_SITE = "EXPLOIT_SITE",
    KEYLOGGER = "KEYLOGGER",
}

M.ThreatIntelIndicatorType = {
    DOMAIN = "DOMAIN",
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
    HASH_MD5 = "HASH_MD5",
    HASH_SHA1 = "HASH_SHA1",
    HASH_SHA256 = "HASH_SHA256",
    HASH_SHA512 = "HASH_SHA512",
    IPV4_ADDRESS = "IPV4_ADDRESS",
    IPV6_ADDRESS = "IPV6_ADDRESS",
    MUTEX = "MUTEX",
    PROCESS = "PROCESS",
    URL = "URL",
}

M.ThreatIntelIndicator = {
    type = "structure",
    id = "ThreatIntelIndicator",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        LastObservedAt = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        SourceUrl = {
            type = "string",
        },
    },
}

M.FilePaths = {
    type = "structure",
    id = "FilePaths",
    members = {
        FilePath = {
            type = "string",
        },
        FileName = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Hash = {
            type = "string",
        },
    },
}

M.Threat = {
    type = "structure",
    id = "Threat",
    members = {
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        ItemCount = {
            type = "integer",
        },
        FilePaths = {
            type = "list",
            member = M.FilePaths,
        },
    },
}

M.CodeVulnerabilitiesFilePath = {
    type = "structure",
    id = "CodeVulnerabilitiesFilePath",
    members = {
        EndLine = {
            type = "integer",
        },
        FileName = {
            type = "string",
        },
        FilePath = {
            type = "string",
        },
        StartLine = {
            type = "integer",
        },
    },
}

M.VulnerabilityCodeVulnerabilities = {
    type = "structure",
    id = "VulnerabilityCodeVulnerabilities",
    members = {
        Cwes = {
            type = "list",
            member = { type = "string" },
        },
        FilePath = M.CodeVulnerabilitiesFilePath,
        SourceArn = {
            type = "string",
        },
    },
}

M.Cvss = {
    type = "structure",
    id = "Cvss",
    members = {
        Version = {
            type = "string",
        },
        BaseScore = {
            type = "double",
        },
        BaseVector = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        Adjustments = {
            type = "list",
            member = M.Adjustment,
        },
    },
}

M.VulnerabilityExploitAvailable = {
    YES = "YES",
    NO = "NO",
}

M.VulnerabilityFixAvailable = {
    YES = "YES",
    NO = "NO",
    PARTIAL = "PARTIAL",
}

M.VulnerabilityVendor = {
    type = "structure",
    id = "VulnerabilityVendor",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
        },
        VendorSeverity = {
            type = "string",
        },
        VendorCreatedAt = {
            type = "string",
        },
        VendorUpdatedAt = {
            type = "string",
        },
    },
}

M.SoftwarePackage = {
    type = "structure",
    id = "SoftwarePackage",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Epoch = {
            type = "string",
        },
        Release = {
            type = "string",
        },
        Architecture = {
            type = "string",
        },
        PackageManager = {
            type = "string",
        },
        FilePath = {
            type = "string",
        },
        FixedInVersion = {
            type = "string",
        },
        Remediation = {
            type = "string",
        },
        SourceLayerHash = {
            type = "string",
        },
        SourceLayerArn = {
            type = "string",
        },
    },
}

M.Vulnerability = {
    type = "structure",
    id = "Vulnerability",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VulnerablePackages = {
            type = "list",
            member = M.SoftwarePackage,
        },
        Cvss = {
            type = "list",
            member = M.Cvss,
        },
        RelatedVulnerabilities = {
            type = "list",
            member = { type = "string" },
        },
        Vendor = M.VulnerabilityVendor,
        ReferenceUrls = {
            type = "list",
            member = { type = "string" },
        },
        FixAvailable = {
            type = "string",
        },
        EpssScore = {
            type = "double",
        },
        ExploitAvailable = {
            type = "string",
        },
        LastKnownExploitAt = {
            type = "string",
        },
        CodeVulnerabilities = {
            type = "list",
            member = M.VulnerabilityCodeVulnerabilities,
        },
    },
}

M.Workflow = {
    type = "structure",
    id = "Workflow",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.WorkflowState = {
    NEW = "NEW",
    ASSIGNED = "ASSIGNED",
    IN_PROGRESS = "IN_PROGRESS",
    DEFERRED = "DEFERRED",
    RESOLVED = "RESOLVED",
}

M.AwsSecurityFinding = {
    type = "structure",
    id = "AwsSecurityFinding",
    members = {
        SchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductName = {
            type = "string",
        },
        CompanyName = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        GeneratorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Types = {
            type = "list",
            member = { type = "string" },
        },
        FirstObservedAt = {
            type = "string",
        },
        LastObservedAt = {
            type = "string",
        },
        CreatedAt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Severity = M.Severity,
        Confidence = {
            type = "integer",
        },
        Criticality = {
            type = "integer",
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Remediation = M.Remediation,
        SourceUrl = {
            type = "string",
        },
        ProductFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UserDefinedFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Malware = {
            type = "list",
            member = M.Malware,
        },
        Network = M.Network,
        NetworkPath = {
            type = "list",
            member = M.NetworkPathComponent,
        },
        Process = M.ProcessDetails,
        Threats = {
            type = "list",
            member = M.Threat,
        },
        ThreatIntelIndicators = {
            type = "list",
            member = M.ThreatIntelIndicator,
        },
        Resources = {
            type = "list",
            member = M.Resource,
            traits = {
                required = true,
            },
        },
        Compliance = M.Compliance,
        VerificationState = {
            type = "string",
        },
        WorkflowState = {
            type = "string",
        },
        Workflow = M.Workflow,
        RecordState = {
            type = "string",
        },
        RelatedFindings = {
            type = "list",
            member = M.RelatedFinding,
        },
        Note = M.Note,
        Vulnerabilities = {
            type = "list",
            member = M.Vulnerability,
        },
        PatchSummary = M.PatchSummary,
        Action = M.Action,
        FindingProviderFields = M.FindingProviderFields,
        Sample = {
            type = "boolean",
        },
        GeneratorDetails = M.GeneratorDetails,
        ProcessedAt = {
            type = "string",
        },
        AwsAccountName = {
            type = "string",
        },
        Detection = M.Detection,
    },
}

M.KeywordFilter = {
    type = "structure",
    id = "KeywordFilter",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.IpFilter = {
    type = "structure",
    id = "IpFilter",
    members = {
        Cidr = {
            type = "string",
        },
    },
}

M.BooleanFilter = {
    type = "structure",
    id = "BooleanFilter",
    members = {
        Value = {
            type = "boolean",
        },
    },
}

M.AwsSecurityFindingFilters = {
    type = "structure",
    id = "AwsSecurityFindingFilters",
    members = {
        ProductArn = {
            type = "list",
            member = M.StringFilter,
        },
        AwsAccountId = {
            type = "list",
            member = M.StringFilter,
        },
        Id = {
            type = "list",
            member = M.StringFilter,
        },
        GeneratorId = {
            type = "list",
            member = M.StringFilter,
        },
        Region = {
            type = "list",
            member = M.StringFilter,
        },
        Type = {
            type = "list",
            member = M.StringFilter,
        },
        FirstObservedAt = {
            type = "list",
            member = M.DateFilter,
        },
        LastObservedAt = {
            type = "list",
            member = M.DateFilter,
        },
        CreatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        UpdatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        SeverityProduct = {
            type = "list",
            member = M.NumberFilter,
        },
        SeverityNormalized = {
            type = "list",
            member = M.NumberFilter,
        },
        SeverityLabel = {
            type = "list",
            member = M.StringFilter,
        },
        Confidence = {
            type = "list",
            member = M.NumberFilter,
        },
        Criticality = {
            type = "list",
            member = M.NumberFilter,
        },
        Title = {
            type = "list",
            member = M.StringFilter,
        },
        Description = {
            type = "list",
            member = M.StringFilter,
        },
        RecommendationText = {
            type = "list",
            member = M.StringFilter,
        },
        SourceUrl = {
            type = "list",
            member = M.StringFilter,
        },
        ProductFields = {
            type = "list",
            member = M.MapFilter,
        },
        ProductName = {
            type = "list",
            member = M.StringFilter,
        },
        CompanyName = {
            type = "list",
            member = M.StringFilter,
        },
        UserDefinedFields = {
            type = "list",
            member = M.MapFilter,
        },
        MalwareName = {
            type = "list",
            member = M.StringFilter,
        },
        MalwareType = {
            type = "list",
            member = M.StringFilter,
        },
        MalwarePath = {
            type = "list",
            member = M.StringFilter,
        },
        MalwareState = {
            type = "list",
            member = M.StringFilter,
        },
        NetworkDirection = {
            type = "list",
            member = M.StringFilter,
        },
        NetworkProtocol = {
            type = "list",
            member = M.StringFilter,
        },
        NetworkSourceIpV4 = {
            type = "list",
            member = M.IpFilter,
        },
        NetworkSourceIpV6 = {
            type = "list",
            member = M.IpFilter,
        },
        NetworkSourcePort = {
            type = "list",
            member = M.NumberFilter,
        },
        NetworkSourceDomain = {
            type = "list",
            member = M.StringFilter,
        },
        NetworkSourceMac = {
            type = "list",
            member = M.StringFilter,
        },
        NetworkDestinationIpV4 = {
            type = "list",
            member = M.IpFilter,
        },
        NetworkDestinationIpV6 = {
            type = "list",
            member = M.IpFilter,
        },
        NetworkDestinationPort = {
            type = "list",
            member = M.NumberFilter,
        },
        NetworkDestinationDomain = {
            type = "list",
            member = M.StringFilter,
        },
        ProcessName = {
            type = "list",
            member = M.StringFilter,
        },
        ProcessPath = {
            type = "list",
            member = M.StringFilter,
        },
        ProcessPid = {
            type = "list",
            member = M.NumberFilter,
        },
        ProcessParentPid = {
            type = "list",
            member = M.NumberFilter,
        },
        ProcessLaunchedAt = {
            type = "list",
            member = M.DateFilter,
        },
        ProcessTerminatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        ThreatIntelIndicatorType = {
            type = "list",
            member = M.StringFilter,
        },
        ThreatIntelIndicatorValue = {
            type = "list",
            member = M.StringFilter,
        },
        ThreatIntelIndicatorCategory = {
            type = "list",
            member = M.StringFilter,
        },
        ThreatIntelIndicatorLastObservedAt = {
            type = "list",
            member = M.DateFilter,
        },
        ThreatIntelIndicatorSource = {
            type = "list",
            member = M.StringFilter,
        },
        ThreatIntelIndicatorSourceUrl = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceType = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceId = {
            type = "list",
            member = M.StringFilter,
        },
        ResourcePartition = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceRegion = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceTags = {
            type = "list",
            member = M.MapFilter,
        },
        ResourceAwsEc2InstanceType = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsEc2InstanceImageId = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsEc2InstanceIpV4Addresses = {
            type = "list",
            member = M.IpFilter,
        },
        ResourceAwsEc2InstanceIpV6Addresses = {
            type = "list",
            member = M.IpFilter,
        },
        ResourceAwsEc2InstanceKeyName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsEc2InstanceIamInstanceProfileArn = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsEc2InstanceVpcId = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsEc2InstanceSubnetId = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsEc2InstanceLaunchedAt = {
            type = "list",
            member = M.DateFilter,
        },
        ResourceAwsS3BucketOwnerId = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsS3BucketOwnerName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsIamAccessKeyUserName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsIamAccessKeyPrincipalName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsIamAccessKeyStatus = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceAwsIamAccessKeyCreatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        ResourceAwsIamUserUserName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceContainerName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceContainerImageId = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceContainerImageName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceContainerLaunchedAt = {
            type = "list",
            member = M.DateFilter,
        },
        ResourceDetailsOther = {
            type = "list",
            member = M.MapFilter,
        },
        ComplianceStatus = {
            type = "list",
            member = M.StringFilter,
        },
        VerificationState = {
            type = "list",
            member = M.StringFilter,
        },
        WorkflowState = {
            type = "list",
            member = M.StringFilter,
        },
        WorkflowStatus = {
            type = "list",
            member = M.StringFilter,
        },
        RecordState = {
            type = "list",
            member = M.StringFilter,
        },
        RelatedFindingsProductArn = {
            type = "list",
            member = M.StringFilter,
        },
        RelatedFindingsId = {
            type = "list",
            member = M.StringFilter,
        },
        NoteText = {
            type = "list",
            member = M.StringFilter,
        },
        NoteUpdatedAt = {
            type = "list",
            member = M.DateFilter,
        },
        NoteUpdatedBy = {
            type = "list",
            member = M.StringFilter,
        },
        Keyword = {
            type = "list",
            member = M.KeywordFilter,
        },
        FindingProviderFieldsConfidence = {
            type = "list",
            member = M.NumberFilter,
        },
        FindingProviderFieldsCriticality = {
            type = "list",
            member = M.NumberFilter,
        },
        FindingProviderFieldsRelatedFindingsId = {
            type = "list",
            member = M.StringFilter,
        },
        FindingProviderFieldsRelatedFindingsProductArn = {
            type = "list",
            member = M.StringFilter,
        },
        FindingProviderFieldsSeverityLabel = {
            type = "list",
            member = M.StringFilter,
        },
        FindingProviderFieldsSeverityOriginal = {
            type = "list",
            member = M.StringFilter,
        },
        FindingProviderFieldsTypes = {
            type = "list",
            member = M.StringFilter,
        },
        Sample = {
            type = "list",
            member = M.BooleanFilter,
        },
        ComplianceSecurityControlId = {
            type = "list",
            member = M.StringFilter,
        },
        ComplianceAssociatedStandardsId = {
            type = "list",
            member = M.StringFilter,
        },
        VulnerabilitiesExploitAvailable = {
            type = "list",
            member = M.StringFilter,
        },
        VulnerabilitiesFixAvailable = {
            type = "list",
            member = M.StringFilter,
        },
        ComplianceSecurityControlParametersName = {
            type = "list",
            member = M.StringFilter,
        },
        ComplianceSecurityControlParametersValue = {
            type = "list",
            member = M.StringFilter,
        },
        AwsAccountName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceApplicationName = {
            type = "list",
            member = M.StringFilter,
        },
        ResourceApplicationArn = {
            type = "list",
            member = M.StringFilter,
        },
    },
}

M.AwsSecurityFindingIdentifier = {
    type = "structure",
    id = "AwsSecurityFindingIdentifier",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteAutomationRulesInput = {
    type = "structure",
    id = "BatchDeleteAutomationRulesInput",
    members = {
        AutomationRulesArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UnprocessedAutomationRule = {
    type = "structure",
    id = "UnprocessedAutomationRule",
    members = {
        RuleArn = {
            type = "string",
        },
        ErrorCode = {
            type = "integer",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteAutomationRulesOutput = {
    type = "structure",
    id = "BatchDeleteAutomationRulesOutput",
    members = {
        ProcessedAutomationRules = {
            type = "list",
            member = { type = "string" },
        },
        UnprocessedAutomationRules = {
            type = "list",
            member = M.UnprocessedAutomationRule,
        },
    },
}

M.BatchDisableStandardsInput = {
    type = "structure",
    id = "BatchDisableStandardsInput",
    members = {
        StandardsSubscriptionArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StandardsControlsUpdatable = {
    READY_FOR_UPDATES = "READY_FOR_UPDATES",
    NOT_READY_FOR_UPDATES = "NOT_READY_FOR_UPDATES",
}

M.StandardsStatus = {
    PENDING = "PENDING",
    READY = "READY",
    FAILED = "FAILED",
    DELETING = "DELETING",
    INCOMPLETE = "INCOMPLETE",
}

M.StatusReasonCode = {
    NO_AVAILABLE_CONFIGURATION_RECORDER = "NO_AVAILABLE_CONFIGURATION_RECORDER",
    MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED = "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.StandardsStatusReason = {
    type = "structure",
    id = "StandardsStatusReason",
    members = {
        StatusReasonCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StandardsSubscription = {
    type = "structure",
    id = "StandardsSubscription",
    members = {
        StandardsSubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandardsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandardsInput = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        StandardsStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandardsControlsUpdatable = {
            type = "string",
        },
        StandardsStatusReason = M.StandardsStatusReason,
    },
}

M.BatchDisableStandardsOutput = {
    type = "structure",
    id = "BatchDisableStandardsOutput",
    members = {
        StandardsSubscriptions = {
            type = "list",
            member = M.StandardsSubscription,
        },
    },
}

M.StandardsSubscriptionRequest = {
    type = "structure",
    id = "StandardsSubscriptionRequest",
    members = {
        StandardsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandardsInput = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchEnableStandardsInput = {
    type = "structure",
    id = "BatchEnableStandardsInput",
    members = {
        StandardsSubscriptionRequests = {
            type = "list",
            member = M.StandardsSubscriptionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEnableStandardsOutput = {
    type = "structure",
    id = "BatchEnableStandardsOutput",
    members = {
        StandardsSubscriptions = {
            type = "list",
            member = M.StandardsSubscription,
        },
    },
}

M.BatchGetAutomationRulesInput = {
    type = "structure",
    id = "BatchGetAutomationRulesInput",
    members = {
        AutomationRulesArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAutomationRulesOutput = {
    type = "structure",
    id = "BatchGetAutomationRulesOutput",
    members = {
        Rules = {
            type = "list",
            member = M.AutomationRulesConfig,
        },
        UnprocessedAutomationRules = {
            type = "list",
            member = M.UnprocessedAutomationRule,
        },
    },
}

M.Target = {
    type = "union",
    id = "Target",
    members = {
        AccountId = {
            type = "string",
        },
        OrganizationalUnitId = {
            type = "string",
        },
        RootId = {
            type = "string",
        },
    },
}

M.ConfigurationPolicyAssociation = {
    type = "structure",
    id = "ConfigurationPolicyAssociation",
    members = {
        Target = M.Target,
    },
}

M.BatchGetConfigurationPolicyAssociationsInput = {
    type = "structure",
    id = "BatchGetConfigurationPolicyAssociationsInput",
    members = {
        ConfigurationPolicyAssociationIdentifiers = {
            type = "list",
            member = M.ConfigurationPolicyAssociation,
            traits = {
                required = true,
            },
        },
    },
}

M.TargetType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT",
    ROOT = "ROOT",
}

M.ConfigurationPolicyAssociationSummary = {
    type = "structure",
    id = "ConfigurationPolicyAssociationSummary",
    members = {
        ConfigurationPolicyId = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        AssociationStatus = {
            type = "string",
        },
        AssociationStatusMessage = {
            type = "string",
        },
    },
}

M.UnprocessedConfigurationPolicyAssociation = {
    type = "structure",
    id = "UnprocessedConfigurationPolicyAssociation",
    members = {
        ConfigurationPolicyAssociationIdentifiers = M.ConfigurationPolicyAssociation,
        ErrorCode = {
            type = "string",
        },
        ErrorReason = {
            type = "string",
        },
    },
}

M.BatchGetConfigurationPolicyAssociationsOutput = {
    type = "structure",
    id = "BatchGetConfigurationPolicyAssociationsOutput",
    members = {
        ConfigurationPolicyAssociations = {
            type = "list",
            member = M.ConfigurationPolicyAssociationSummary,
        },
        UnprocessedConfigurationPolicyAssociations = {
            type = "list",
            member = M.UnprocessedConfigurationPolicyAssociation,
        },
    },
}

M.BatchGetSecurityControlsInput = {
    type = "structure",
    id = "BatchGetSecurityControlsInput",
    members = {
        SecurityControlIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ParameterValue = {
    type = "union",
    id = "ParameterValue",
    members = {
        Integer = {
            type = "integer",
        },
        IntegerList = {
            type = "list",
            member = { type = "integer" },
        },
        Double = {
            type = "double",
        },
        String = {
            type = "string",
        },
        StringList = {
            type = "list",
            member = { type = "string" },
        },
        Boolean = {
            type = "boolean",
        },
        Enum = {
            type = "string",
        },
        EnumList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ParameterValueType = {
    DEFAULT = "DEFAULT",
    CUSTOM = "CUSTOM",
}

M.ParameterConfiguration = {
    type = "structure",
    id = "ParameterConfiguration",
    members = {
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = M.ParameterValue,
    },
}

M.ControlStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SeverityRating = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.UpdateStatus = {
    READY = "READY",
    UPDATING = "UPDATING",
}

M.SecurityControl = {
    type = "structure",
    id = "SecurityControl",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemediationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SeverityRating = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityControlStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateStatus = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConfiguration,
        },
        LastUpdateReason = {
            type = "string",
        },
    },
}

M.UnprocessedErrorCode = {
    INVALID_INPUT = "INVALID_INPUT",
    ACCESS_DENIED = "ACCESS_DENIED",
    NOT_FOUND = "NOT_FOUND",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    LIMIT_EXCEEDED = "LIMIT_EXCEEDED",
}

M.UnprocessedSecurityControl = {
    type = "structure",
    id = "UnprocessedSecurityControl",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorReason = {
            type = "string",
        },
    },
}

M.BatchGetSecurityControlsOutput = {
    type = "structure",
    id = "BatchGetSecurityControlsOutput",
    members = {
        SecurityControls = {
            type = "list",
            member = M.SecurityControl,
            traits = {
                required = true,
            },
        },
        UnprocessedIds = {
            type = "list",
            member = M.UnprocessedSecurityControl,
        },
    },
}

M.StandardsControlAssociationId = {
    type = "structure",
    id = "StandardsControlAssociationId",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandardsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetStandardsControlAssociationsInput = {
    type = "structure",
    id = "BatchGetStandardsControlAssociationsInput",
    members = {
        StandardsControlAssociationIds = {
            type = "list",
            member = M.StandardsControlAssociationId,
            traits = {
                required = true,
            },
        },
    },
}

M.StandardsControlAssociationDetail = {
    type = "structure",
    id = "StandardsControlAssociationDetail",
    members = {
        StandardsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelatedRequirements = {
            type = "list",
            member = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedReason = {
            type = "string",
        },
        StandardsControlTitle = {
            type = "string",
        },
        StandardsControlDescription = {
            type = "string",
        },
        StandardsControlArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UnprocessedStandardsControlAssociation = {
    type = "structure",
    id = "UnprocessedStandardsControlAssociation",
    members = {
        StandardsControlAssociationId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StandardsControlAssociationId }),
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorReason = {
            type = "string",
        },
    },
}

M.BatchGetStandardsControlAssociationsOutput = {
    type = "structure",
    id = "BatchGetStandardsControlAssociationsOutput",
    members = {
        StandardsControlAssociationDetails = {
            type = "list",
            member = M.StandardsControlAssociationDetail,
            traits = {
                required = true,
            },
        },
        UnprocessedAssociations = {
            type = "list",
            member = M.UnprocessedStandardsControlAssociation,
        },
    },
}

M.BatchImportFindingsInput = {
    type = "structure",
    id = "BatchImportFindingsInput",
    members = {
        Findings = {
            type = "list",
            member = M.AwsSecurityFinding,
            traits = {
                required = true,
            },
        },
    },
}

M.ImportFindingsError = {
    type = "structure",
    id = "ImportFindingsError",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchImportFindingsOutput = {
    type = "structure",
    id = "BatchImportFindingsOutput",
    members = {
        FailedCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        SuccessCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        FailedFindings = {
            type = "list",
            member = M.ImportFindingsError,
        },
    },
}

M.UpdateAutomationRulesRequestItem = {
    type = "structure",
    id = "UpdateAutomationRulesRequestItem",
    members = {
        RuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "integer",
        },
        Description = {
            type = "string",
        },
        RuleName = {
            type = "string",
        },
        IsTerminal = {
            type = "boolean",
        },
        Criteria = M.AutomationRulesFindingFilters,
        Actions = {
            type = "list",
            member = M.AutomationRulesAction,
        },
    },
}

M.BatchUpdateAutomationRulesInput = {
    type = "structure",
    id = "BatchUpdateAutomationRulesInput",
    members = {
        UpdateAutomationRulesRequestItems = {
            type = "list",
            member = M.UpdateAutomationRulesRequestItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateAutomationRulesOutput = {
    type = "structure",
    id = "BatchUpdateAutomationRulesOutput",
    members = {
        ProcessedAutomationRules = {
            type = "list",
            member = { type = "string" },
        },
        UnprocessedAutomationRules = {
            type = "list",
            member = M.UnprocessedAutomationRule,
        },
    },
}

M.BatchUpdateFindingsInput = {
    type = "structure",
    id = "BatchUpdateFindingsInput",
    members = {
        FindingIdentifiers = {
            type = "list",
            member = M.AwsSecurityFindingIdentifier,
            traits = {
                required = true,
            },
        },
        Note = M.NoteUpdate,
        Severity = M.SeverityUpdate,
        VerificationState = {
            type = "string",
        },
        Confidence = {
            type = "integer",
        },
        Criticality = {
            type = "integer",
        },
        Types = {
            type = "list",
            member = { type = "string" },
        },
        UserDefinedFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Workflow = M.WorkflowUpdate,
        RelatedFindings = {
            type = "list",
            member = M.RelatedFinding,
        },
    },
}

M.BatchUpdateFindingsUnprocessedFinding = {
    type = "structure",
    id = "BatchUpdateFindingsUnprocessedFinding",
    members = {
        FindingIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsSecurityFindingIdentifier }),
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateFindingsOutput = {
    type = "structure",
    id = "BatchUpdateFindingsOutput",
    members = {
        ProcessedFindings = {
            type = "list",
            member = M.AwsSecurityFindingIdentifier,
            traits = {
                required = true,
            },
        },
        UnprocessedFindings = {
            type = "list",
            member = M.BatchUpdateFindingsUnprocessedFinding,
            traits = {
                required = true,
            },
        },
    },
}

M.OcsfFindingIdentifier = {
    type = "structure",
    id = "OcsfFindingIdentifier",
    members = {
        CloudAccountUid = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindingInfoUid = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetadataProductUid = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateFindingsV2Input = {
    type = "structure",
    id = "BatchUpdateFindingsV2Input",
    members = {
        MetadataUids = {
            type = "list",
            member = { type = "string" },
        },
        FindingIdentifiers = {
            type = "list",
            member = M.OcsfFindingIdentifier,
        },
        Comment = {
            type = "string",
        },
        SeverityId = {
            type = "integer",
        },
        StatusId = {
            type = "integer",
        },
    },
}

M.BatchUpdateFindingsV2ProcessedFinding = {
    type = "structure",
    id = "BatchUpdateFindingsV2ProcessedFinding",
    members = {
        FindingIdentifier = M.OcsfFindingIdentifier,
        MetadataUid = {
            type = "string",
        },
    },
}

M.BatchUpdateFindingsV2UnprocessedFindingErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    InternalServerException = "InternalServerException",
    ConflictException = "ConflictException",
}

M.BatchUpdateFindingsV2UnprocessedFinding = {
    type = "structure",
    id = "BatchUpdateFindingsV2UnprocessedFinding",
    members = {
        FindingIdentifier = M.OcsfFindingIdentifier,
        MetadataUid = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchUpdateFindingsV2Output = {
    type = "structure",
    id = "BatchUpdateFindingsV2Output",
    members = {
        ProcessedFindings = {
            type = "list",
            member = M.BatchUpdateFindingsV2ProcessedFinding,
            traits = {
                required = true,
            },
        },
        UnprocessedFindings = {
            type = "list",
            member = M.BatchUpdateFindingsV2UnprocessedFinding,
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.StandardsControlAssociationUpdate = {
    type = "structure",
    id = "StandardsControlAssociationUpdate",
    members = {
        StandardsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedReason = {
            type = "string",
        },
    },
}

M.BatchUpdateStandardsControlAssociationsInput = {
    type = "structure",
    id = "BatchUpdateStandardsControlAssociationsInput",
    members = {
        StandardsControlAssociationUpdates = {
            type = "list",
            member = M.StandardsControlAssociationUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UnprocessedStandardsControlAssociationUpdate = {
    type = "structure",
    id = "UnprocessedStandardsControlAssociationUpdate",
    members = {
        StandardsControlAssociationUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StandardsControlAssociationUpdate }),
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorReason = {
            type = "string",
        },
    },
}

M.BatchUpdateStandardsControlAssociationsOutput = {
    type = "structure",
    id = "BatchUpdateStandardsControlAssociationsOutput",
    members = {
        UnprocessedAssociationUpdates = {
            type = "list",
            member = M.UnprocessedStandardsControlAssociationUpdate,
        },
    },
}

M.BooleanConfigurationOptions = {
    type = "structure",
    id = "BooleanConfigurationOptions",
    members = {
        DefaultValue = {
            type = "boolean",
        },
    },
}

M.OcsfBooleanField = {
    COMPLIANCE_ASSESSMENTS_MEETS_CRITERIA = "compliance.assessments.meets_criteria",
    VULNERABILITIES_IS_EXPLOIT_AVAILABLE = "vulnerabilities.is_exploit_available",
    VULNERABILITIES_IS_FIX_AVAILABLE = "vulnerabilities.is_fix_available",
}

M.OcsfBooleanFilter = {
    type = "structure",
    id = "OcsfBooleanFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.BooleanFilter,
    },
}

M.OcsfDateField = {
    FINDING_INFO_CREATED_TIME_DT = "finding_info.created_time_dt",
    FINDING_INFO_FIRST_SEEN_TIME_DT = "finding_info.first_seen_time_dt",
    FINDING_INFO_LAST_SEEN_TIME_DT = "finding_info.last_seen_time_dt",
    FINDING_INFO_MODIFIED_TIME_DT = "finding_info.modified_time_dt",
    RESOURCES_IMAGE_CREATED_TIME_DT = "resources.image.created_time_dt",
    RESOURCES_IMAGE_LAST_USED_TIME_DT = "resources.image.last_used_time_dt",
    RESOURCES_MODIFIED_TIME_DT = "resources.modified_time_dt",
}

M.OcsfDateFilter = {
    type = "structure",
    id = "OcsfDateFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.DateFilter,
    },
}

M.OcsfIpField = {
    EVIDENCES_DST_ENDPOINT_IP = "evidences.dst_endpoint.ip",
    EVIDENCES_SRC_ENDPOINT_IP = "evidences.src_endpoint.ip",
}

M.OcsfIpFilter = {
    type = "structure",
    id = "OcsfIpFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.IpFilter,
    },
}

M.OcsfMapField = {
    RESOURCES_TAGS = "resources.tags",
    COMPLIANCE_CONTROL_PARAMETERS = "compliance.control_parameters",
    DATABUCKET_TAGS = "databucket.tags",
    FINDING_INFO_TAGS = "finding_info.tags",
}

M.OcsfMapFilter = {
    type = "structure",
    id = "OcsfMapFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.MapFilter,
    },
}

M.OcsfNumberField = {
    ACTIVITY_ID = "activity_id",
    COMPLIANCE_STATUS_ID = "compliance.status_id",
    CONFIDENCE_SCORE = "confidence_score",
    SEVERITY_ID = "severity_id",
    STATUS_ID = "status_id",
    FINDING_INFO_RELATED_EVENTS_COUNT = "finding_info.related_events_count",
    EVIDENCES_API_RESPONSE_CODE = "evidences.api.response.code",
    EVIDENCES_DST_ENDPOINT_AUTONOMOUS_SYSTEM_NUMBER = "evidences.dst_endpoint.autonomous_system.number",
    EVIDENCES_DST_ENDPOINT_PORT = "evidences.dst_endpoint.port",
    EVIDENCES_SRC_ENDPOINT_AUTONOMOUS_SYSTEM_NUMBER = "evidences.src_endpoint.autonomous_system.number",
    EVIDENCES_SRC_ENDPOINT_PORT = "evidences.src_endpoint.port",
    RESOURCES_IMAGE_IN_USE_COUNT = "resources.image.in_use_count",
    VULNERABILITIES_CVE_CVSS_BASE_SCORE = "vulnerabilities.cve.cvss.base_score",
    VENDOR_ATTRIBUTES_SEVERITY_ID = "vendor_attributes.severity_id",
}

M.OcsfNumberFilter = {
    type = "structure",
    id = "OcsfNumberFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.NumberFilter,
    },
}

M.OcsfStringField = {
    METADATA_UID = "metadata.uid",
    ACTIVITY_NAME = "activity_name",
    CLOUD_ACCOUNT_UID = "cloud.account.uid",
    CLOUD_PROVIDER = "cloud.provider",
    CLOUD_REGION = "cloud.region",
    COMPLIANCE_ASSESSMENTS_CATEGORY = "compliance.assessments.category",
    COMPLIANCE_ASSESSMENTS_NAME = "compliance.assessments.name",
    COMPLIANCE_CONTROL = "compliance.control",
    COMPLIANCE_STATUS = "compliance.status",
    COMPLIANCE_STANDARDS = "compliance.standards",
    FINDING_INFO_DESC = "finding_info.desc",
    FINDING_INFO_SRC_URL = "finding_info.src_url",
    FINDING_INFO_TITLE = "finding_info.title",
    FINDING_INFO_TYPES = "finding_info.types",
    FINDING_INFO_UID = "finding_info.uid",
    FINDING_INFO_RELATED_EVENTS_TRAITS_CATEGORY = "finding_info.related_events.traits.category",
    FINDING_INFO_RELATED_EVENTS_UID = "finding_info.related_events.uid",
    FINDING_INFO_RELATED_EVENTS_PRODUCT_UID = "finding_info.related_events.product.uid",
    FINDING_INFO_RELATED_EVENTS_TITLE = "finding_info.related_events.title",
    METADATA_PRODUCT_NAME = "metadata.product.name",
    METADATA_PRODUCT_UID = "metadata.product.uid",
    METADATA_PRODUCT_VENDOR_NAME = "metadata.product.vendor_name",
    REMEDIATION_DESC = "remediation.desc",
    REMEDIATION_REFERENCES = "remediation.references",
    RESOURCES_CLOUD_PARTITION = "resources.cloud_partition",
    RESOURCES_REGION = "resources.region",
    RESOURCES_TYPE = "resources.type",
    RESOURCES_UID = "resources.uid",
    SEVERITY = "severity",
    STATUS = "status",
    COMMENT = "comment",
    VULNERABILITIES_FIX_COVERAGE = "vulnerabilities.fix_coverage",
    CLASS_NAME = "class_name",
    DATABUCKET_ENCRYPTION_DETAILS_ALGORITHM = "databucket.encryption_details.algorithm",
    DATABUCKET_ENCRYPTION_DETAILS_KEY_UID = "databucket.encryption_details.key_uid",
    DATABUCKET_FILE_DATA_CLASSIFICATIONS_CLASSIFIER_DETAILS_TYPE = "databucket.file.data_classifications.classifier_details.type",
    EVIDENCES_ACTOR_USER_ACCOUNT_UID = "evidences.actor.user.account.uid",
    EVIDENCES_API_OPERATION = "evidences.api.operation",
    EVIDENCES_API_RESPONSE_ERROR_MESSAGE = "evidences.api.response.error_message",
    EVIDENCES_API_SERVICE_NAME = "evidences.api.service.name",
    EVIDENCES_CONNECTION_INFO_DIRECTION = "evidences.connection_info.direction",
    EVIDENCES_CONNECTION_INFO_PROTOCOL_NAME = "evidences.connection_info.protocol_name",
    EVIDENCES_DST_ENDPOINT_AUTONOMOUS_SYSTEM_NAME = "evidences.dst_endpoint.autonomous_system.name",
    EVIDENCES_DST_ENDPOINT_LOCATION_CITY = "evidences.dst_endpoint.location.city",
    EVIDENCES_DST_ENDPOINT_LOCATION_COUNTRY = "evidences.dst_endpoint.location.country",
    EVIDENCES_SRC_ENDPOINT_AUTONOMOUS_SYSTEM_NAME = "evidences.src_endpoint.autonomous_system.name",
    EVIDENCES_SRC_ENDPOINT_HOSTNAME = "evidences.src_endpoint.hostname",
    EVIDENCES_SRC_ENDPOINT_LOCATION_CITY = "evidences.src_endpoint.location.city",
    EVIDENCES_SRC_ENDPOINT_LOCATION_COUNTRY = "evidences.src_endpoint.location.country",
    FINDING_INFO_ANALYTIC_NAME = "finding_info.analytic.name",
    MALWARE_NAME = "malware.name",
    MALWARE_SCAN_INFO_UID = "malware_scan_info.uid",
    MALWARE_SEVERITY = "malware.severity",
    RESOURCES_CLOUD_FUNCTION_LAYERS_UID_ALT = "resources.cloud_function.layers.uid_alt",
    RESOURCES_CLOUD_FUNCTION_RUNTIME = "resources.cloud_function.runtime",
    RESOURCES_CLOUD_FUNCTION_USER_UID = "resources.cloud_function.user.uid",
    RESOURCES_DEVICE_ENCRYPTION_DETAILS_KEY_UID = "resources.device.encryption_details.key_uid",
    RESOURCES_DEVICE_IMAGE_UID = "resources.device.image.uid",
    RESOURCES_IMAGE_ARCHITECTURE = "resources.image.architecture",
    RESOURCES_IMAGE_REGISTRY_UID = "resources.image.registry_uid",
    RESOURCES_IMAGE_REPOSITORY_NAME = "resources.image.repository_name",
    RESOURCES_IMAGE_UID = "resources.image.uid",
    RESOURCES_SUBNET_INFO_UID = "resources.subnet_info.uid",
    RESOURCES_VPC_UID = "resources.vpc_uid",
    VULNERABILITIES_AFFECTED_CODE_FILE_PATH = "vulnerabilities.affected_code.file.path",
    VULNERABILITIES_AFFECTED_PACKAGES_NAME = "vulnerabilities.affected_packages.name",
    VULNERABILITIES_CVE_EPSS_SCORE = "vulnerabilities.cve.epss.score",
    VULNERABILITIES_CVE_UID = "vulnerabilities.cve.uid",
    VULNERABILITIES_RELATED_VULNERABILITIES = "vulnerabilities.related_vulnerabilities",
    CLOUD_ACCOUNT_NAME = "cloud.account.name",
    VENDOR_ATTRIBUTES_SEVERITY = "vendor_attributes.severity",
}

M.OcsfStringFilter = {
    type = "structure",
    id = "OcsfStringFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.StringFilter,
    },
}

M.DoubleConfigurationOptions = {
    type = "structure",
    id = "DoubleConfigurationOptions",
    members = {
        DefaultValue = {
            type = "double",
        },
        Min = {
            type = "double",
        },
        Max = {
            type = "double",
        },
    },
}

M.EnumConfigurationOptions = {
    type = "structure",
    id = "EnumConfigurationOptions",
    members = {
        DefaultValue = {
            type = "string",
        },
        AllowedValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnumListConfigurationOptions = {
    type = "structure",
    id = "EnumListConfigurationOptions",
    members = {
        DefaultValue = {
            type = "list",
            member = { type = "string" },
        },
        MaxItems = {
            type = "integer",
        },
        AllowedValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IntegerConfigurationOptions = {
    type = "structure",
    id = "IntegerConfigurationOptions",
    members = {
        DefaultValue = {
            type = "integer",
        },
        Min = {
            type = "integer",
        },
        Max = {
            type = "integer",
        },
    },
}

M.IntegerListConfigurationOptions = {
    type = "structure",
    id = "IntegerListConfigurationOptions",
    members = {
        DefaultValue = {
            type = "list",
            member = { type = "integer" },
        },
        Min = {
            type = "integer",
        },
        Max = {
            type = "integer",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.StringConfigurationOptions = {
    type = "structure",
    id = "StringConfigurationOptions",
    members = {
        DefaultValue = {
            type = "string",
        },
        Re2Expression = {
            type = "string",
        },
        ExpressionDescription = {
            type = "string",
        },
    },
}

M.StringListConfigurationOptions = {
    type = "structure",
    id = "StringListConfigurationOptions",
    members = {
        DefaultValue = {
            type = "list",
            member = { type = "string" },
        },
        Re2Expression = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        ExpressionDescription = {
            type = "string",
        },
    },
}

M.ConfigurationOptions = {
    type = "union",
    id = "ConfigurationOptions",
    members = {
        Integer = M.IntegerConfigurationOptions,
        IntegerList = M.IntegerListConfigurationOptions,
        Double = M.DoubleConfigurationOptions,
        String = M.StringConfigurationOptions,
        StringList = M.StringListConfigurationOptions,
        Boolean = M.BooleanConfigurationOptions,
        Enum = M.EnumConfigurationOptions,
        EnumList = M.EnumListConfigurationOptions,
    },
}

M.ConfigurationPolicySummary = {
    type = "structure",
    id = "ConfigurationPolicySummary",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ServiceEnabled = {
            type = "boolean",
        },
    },
}

M.ConnectorAuthStatus = {
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.ConnectorProviderName = {
    JIRA_CLOUD = "JIRA_CLOUD",
    SERVICENOW = "SERVICENOW",
}

M.ConnectorStatus = {
    CONNECTED = "CONNECTED",
    FAILED_TO_CONNECT = "FAILED_TO_CONNECT",
    PENDING_CONFIGURATION = "PENDING_CONFIGURATION",
    PENDING_AUTHORIZATION = "PENDING_AUTHORIZATION",
}

M.ProviderSummary = {
    type = "structure",
    id = "ProviderSummary",
    members = {
        ProviderName = {
            type = "string",
        },
        ConnectorStatus = {
            type = "string",
        },
    },
}

M.ConnectorSummary = {
    type = "structure",
    id = "ConnectorSummary",
    members = {
        ConnectorArn = {
            type = "string",
        },
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
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
        ProviderSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderSummary }),
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ControlFindingGenerator = {
    STANDARD_CONTROL = "STANDARD_CONTROL",
    SECURITY_CONTROL = "SECURITY_CONTROL",
}

M.CreateActionTargetInput = {
    type = "structure",
    id = "CreateActionTargetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateActionTargetOutput = {
    type = "structure",
    id = "CreateActionTargetOutput",
    members = {
        ActionTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    id = "ResourceConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.CreateAggregatorV2Input = {
    type = "structure",
    id = "CreateAggregatorV2Input",
    members = {
        RegionLinkingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkedRegions = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAggregatorV2Output = {
    type = "structure",
    id = "CreateAggregatorV2Output",
    members = {
        AggregatorV2Arn = {
            type = "string",
        },
        AggregationRegion = {
            type = "string",
        },
        RegionLinkingMode = {
            type = "string",
        },
        LinkedRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.CreateAutomationRuleInput = {
    type = "structure",
    id = "CreateAutomationRuleInput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsTerminal = {
            type = "boolean",
        },
        Criteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomationRulesFindingFilters }),
        Actions = {
            type = "list",
            member = M.AutomationRulesAction,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAutomationRuleOutput = {
    type = "structure",
    id = "CreateAutomationRuleOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.CreateAutomationRuleV2Output = {
    type = "structure",
    id = "CreateAutomationRuleV2Output",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleId = {
            type = "string",
        },
    },
}

M.SecurityControlCustomParameter = {
    type = "structure",
    id = "SecurityControlCustomParameter",
    members = {
        SecurityControlId = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConfiguration,
        },
    },
}

M.SecurityControlsConfiguration = {
    type = "structure",
    id = "SecurityControlsConfiguration",
    members = {
        EnabledSecurityControlIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        DisabledSecurityControlIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        SecurityControlCustomParameters = {
            type = "list",
            member = M.SecurityControlCustomParameter,
        },
    },
}

M.SecurityHubPolicy = {
    type = "structure",
    id = "SecurityHubPolicy",
    members = {
        ServiceEnabled = {
            type = "boolean",
        },
        EnabledStandardIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        SecurityControlsConfiguration = M.SecurityControlsConfiguration,
    },
}

M.Policy = {
    type = "union",
    id = "Policy",
    members = {
        SecurityHub = M.SecurityHubPolicy,
    },
}

M.CreateConfigurationPolicyInput = {
    type = "structure",
    id = "CreateConfigurationPolicyInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ConfigurationPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Policy }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateConfigurationPolicyOutput = {
    type = "structure",
    id = "CreateConfigurationPolicyOutput",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ConfigurationPolicy = M.Policy,
    },
}

M.JiraCloudProviderConfiguration = {
    type = "structure",
    id = "JiraCloudProviderConfiguration",
    members = {
        ProjectKey = {
            type = "string",
        },
    },
}

M.ServiceNowProviderConfiguration = {
    type = "structure",
    id = "ServiceNowProviderConfiguration",
    members = {
        InstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProviderConfiguration = {
    type = "union",
    id = "ProviderConfiguration",
    members = {
        JiraCloud = M.JiraCloudProviderConfiguration,
        ServiceNow = M.ServiceNowProviderConfiguration,
    },
}

M.CreateConnectorV2Input = {
    type = "structure",
    id = "CreateConnectorV2Input",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Provider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderConfiguration }),
        KmsKeyArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateConnectorV2Output = {
    type = "structure",
    id = "CreateConnectorV2Output",
    members = {
        ConnectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthUrl = {
            type = "string",
        },
        ConnectorStatus = {
            type = "string",
        },
    },
}

M.CreateFindingAggregatorInput = {
    type = "structure",
    id = "CreateFindingAggregatorInput",
    members = {
        RegionLinkingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateFindingAggregatorOutput = {
    type = "structure",
    id = "CreateFindingAggregatorOutput",
    members = {
        FindingAggregatorArn = {
            type = "string",
        },
        FindingAggregationRegion = {
            type = "string",
        },
        RegionLinkingMode = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateInsightInput = {
    type = "structure",
    id = "CreateInsightInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsSecurityFindingFilters }),
        GroupByAttribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateInsightOutput = {
    type = "structure",
    id = "CreateInsightOutput",
    members = {
        InsightArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMembersInput = {
    type = "structure",
    id = "CreateMembersInput",
    members = {
        AccountDetails = {
            type = "list",
            member = M.AccountDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.Result = {
    type = "structure",
    id = "Result",
    members = {
        AccountId = {
            type = "string",
        },
        ProcessingResult = {
            type = "string",
        },
    },
}

M.CreateMembersOutput = {
    type = "structure",
    id = "CreateMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.Result,
        },
    },
}

M.TicketCreationMode = {
    DRYRUN = "DRYRUN",
}

M.CreateTicketV2Input = {
    type = "structure",
    id = "CreateTicketV2Input",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindingMetadataUid = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Mode = {
            type = "string",
        },
    },
}

M.CreateTicketV2Output = {
    type = "structure",
    id = "CreateTicketV2Output",
    members = {
        TicketId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TicketSrcUrl = {
            type = "string",
        },
    },
}

M.SecurityControlProperty = {
    Parameters = "Parameters",
}

M.DeclineInvitationsInput = {
    type = "structure",
    id = "DeclineInvitationsInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeclineInvitationsOutput = {
    type = "structure",
    id = "DeclineInvitationsOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.Result,
        },
    },
}

M.DeleteActionTargetInput = {
    type = "structure",
    id = "DeleteActionTargetInput",
    members = {
        ActionTargetArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteActionTargetOutput = {
    type = "structure",
    id = "DeleteActionTargetOutput",
    members = {
        ActionTargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAggregatorV2Input = {
    type = "structure",
    id = "DeleteAggregatorV2Input",
    members = {
        AggregatorV2Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAggregatorV2Output = {
    type = "structure",
    id = "DeleteAggregatorV2Output",
}

M.DeleteAutomationRuleV2Input = {
    type = "structure",
    id = "DeleteAutomationRuleV2Input",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAutomationRuleV2Output = {
    type = "structure",
    id = "DeleteAutomationRuleV2Output",
}

M.DeleteConfigurationPolicyInput = {
    type = "structure",
    id = "DeleteConfigurationPolicyInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationPolicyOutput = {
    type = "structure",
    id = "DeleteConfigurationPolicyOutput",
}

M.DeleteConnectorV2Input = {
    type = "structure",
    id = "DeleteConnectorV2Input",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectorV2Output = {
    type = "structure",
    id = "DeleteConnectorV2Output",
}

M.DeleteFindingAggregatorInput = {
    type = "structure",
    id = "DeleteFindingAggregatorInput",
    members = {
        FindingAggregatorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFindingAggregatorOutput = {
    type = "structure",
    id = "DeleteFindingAggregatorOutput",
}

M.DeleteInsightInput = {
    type = "structure",
    id = "DeleteInsightInput",
    members = {
        InsightArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInsightOutput = {
    type = "structure",
    id = "DeleteInsightOutput",
    members = {
        InsightArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInvitationsInput = {
    type = "structure",
    id = "DeleteInvitationsInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInvitationsOutput = {
    type = "structure",
    id = "DeleteInvitationsOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.Result,
        },
    },
}

M.DeleteMembersInput = {
    type = "structure",
    id = "DeleteMembersInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMembersOutput = {
    type = "structure",
    id = "DeleteMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.Result,
        },
    },
}

M.DescribeActionTargetsInput = {
    type = "structure",
    id = "DescribeActionTargetsInput",
    members = {
        ActionTargetArns = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeActionTargetsOutput = {
    type = "structure",
    id = "DescribeActionTargetsOutput",
    members = {
        ActionTargets = {
            type = "list",
            member = M.ActionTarget,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeHubInput = {
    type = "structure",
    id = "DescribeHubInput",
    members = {
        HubArn = {
            type = "string",
            traits = {
                http_query = "HubArn",
            },
        },
    },
}

M.DescribeHubOutput = {
    type = "structure",
    id = "DescribeHubOutput",
    members = {
        HubArn = {
            type = "string",
        },
        SubscribedAt = {
            type = "string",
        },
        AutoEnableControls = {
            type = "boolean",
        },
        ControlFindingGenerator = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConfigurationInput = {
    type = "structure",
    id = "DescribeOrganizationConfigurationInput",
}

M.OrganizationConfigurationConfigurationType = {
    CENTRAL = "CENTRAL",
    LOCAL = "LOCAL",
}

M.OrganizationConfigurationStatus = {
    PENDING = "PENDING",
    ENABLED = "ENABLED",
    FAILED = "FAILED",
}

M.OrganizationConfiguration = {
    type = "structure",
    id = "OrganizationConfiguration",
    members = {
        ConfigurationType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.DescribeOrganizationConfigurationOutput = {
    type = "structure",
    id = "DescribeOrganizationConfigurationOutput",
    members = {
        AutoEnable = {
            type = "boolean",
        },
        MemberAccountLimitReached = {
            type = "boolean",
        },
        AutoEnableStandards = {
            type = "string",
        },
        OrganizationConfiguration = M.OrganizationConfiguration,
    },
}

M.DescribeProductsInput = {
    type = "structure",
    id = "DescribeProductsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        ProductArn = {
            type = "string",
            traits = {
                http_query = "ProductArn",
            },
        },
    },
}

M.IntegrationType = {
    SEND_FINDINGS_TO_SECURITY_HUB = "SEND_FINDINGS_TO_SECURITY_HUB",
    RECEIVE_FINDINGS_FROM_SECURITY_HUB = "RECEIVE_FINDINGS_FROM_SECURITY_HUB",
    UPDATE_FINDINGS_IN_SECURITY_HUB = "UPDATE_FINDINGS_IN_SECURITY_HUB",
}

M.Product = {
    type = "structure",
    id = "Product",
    members = {
        ProductArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductName = {
            type = "string",
        },
        CompanyName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Categories = {
            type = "list",
            member = { type = "string" },
        },
        IntegrationTypes = {
            type = "list",
            member = { type = "string" },
        },
        MarketplaceUrl = {
            type = "string",
        },
        ActivationUrl = {
            type = "string",
        },
        ProductSubscriptionResourcePolicy = {
            type = "string",
        },
    },
}

M.DescribeProductsOutput = {
    type = "structure",
    id = "DescribeProductsOutput",
    members = {
        Products = {
            type = "list",
            member = M.Product,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeProductsV2Input = {
    type = "structure",
    id = "DescribeProductsV2Input",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.IntegrationV2Type = {
    SEND_FINDINGS_TO_SECURITY_HUB = "SEND_FINDINGS_TO_SECURITY_HUB",
    RECEIVE_FINDINGS_FROM_SECURITY_HUB = "RECEIVE_FINDINGS_FROM_SECURITY_HUB",
    UPDATE_FINDINGS_IN_SECURITY_HUB = "UPDATE_FINDINGS_IN_SECURITY_HUB",
    EXTENDED_PLAN = "EXTENDED_PLAN",
}

M.ProductV2 = {
    type = "structure",
    id = "ProductV2",
    members = {
        ProductV2Name = {
            type = "string",
        },
        CompanyName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Categories = {
            type = "list",
            member = { type = "string" },
        },
        IntegrationV2Types = {
            type = "list",
            member = { type = "string" },
        },
        MarketplaceUrl = {
            type = "string",
        },
        ActivationUrl = {
            type = "string",
        },
        MarketplaceProductId = {
            type = "string",
        },
    },
}

M.DescribeProductsV2Output = {
    type = "structure",
    id = "DescribeProductsV2Output",
    members = {
        ProductsV2 = {
            type = "list",
            member = M.ProductV2,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSecurityHubV2Input = {
    type = "structure",
    id = "DescribeSecurityHubV2Input",
}

M.DescribeSecurityHubV2Output = {
    type = "structure",
    id = "DescribeSecurityHubV2Output",
    members = {
        HubV2Arn = {
            type = "string",
        },
        SubscribedAt = {
            type = "string",
        },
    },
}

M.DescribeStandardsInput = {
    type = "structure",
    id = "DescribeStandardsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.StandardsManagedBy = {
    type = "structure",
    id = "StandardsManagedBy",
    members = {
        Company = {
            type = "string",
        },
        Product = {
            type = "string",
        },
    },
}

M.Standard = {
    type = "structure",
    id = "Standard",
    members = {
        StandardsArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EnabledByDefault = {
            type = "boolean",
        },
        StandardsManagedBy = M.StandardsManagedBy,
    },
}

M.DescribeStandardsOutput = {
    type = "structure",
    id = "DescribeStandardsOutput",
    members = {
        Standards = {
            type = "list",
            member = M.Standard,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStandardsControlsInput = {
    type = "structure",
    id = "DescribeStandardsControlsInput",
    members = {
        StandardsSubscriptionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.StandardsControl = {
    type = "structure",
    id = "StandardsControl",
    members = {
        StandardsControlArn = {
            type = "string",
        },
        ControlStatus = {
            type = "string",
        },
        DisabledReason = {
            type = "string",
        },
        ControlStatusUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ControlId = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RemediationUrl = {
            type = "string",
        },
        SeverityRating = {
            type = "string",
        },
        RelatedRequirements = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeStandardsControlsOutput = {
    type = "structure",
    id = "DescribeStandardsControlsOutput",
    members = {
        Controls = {
            type = "list",
            member = M.StandardsControl,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisableImportFindingsForProductInput = {
    type = "structure",
    id = "DisableImportFindingsForProductInput",
    members = {
        ProductSubscriptionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisableImportFindingsForProductOutput = {
    type = "structure",
    id = "DisableImportFindingsForProductOutput",
}

M.SecurityHubFeature = {
    SECURITY_HUB = "SecurityHub",
    SECURITY_HUB_V2 = "SecurityHubV2",
}

M.DisableOrganizationAdminAccountInput = {
    type = "structure",
    id = "DisableOrganizationAdminAccountInput",
    members = {
        AdminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Feature = {
            type = "string",
        },
    },
}

M.DisableOrganizationAdminAccountOutput = {
    type = "structure",
    id = "DisableOrganizationAdminAccountOutput",
}

M.DisableSecurityHubInput = {
    type = "structure",
    id = "DisableSecurityHubInput",
}

M.DisableSecurityHubOutput = {
    type = "structure",
    id = "DisableSecurityHubOutput",
}

M.DisableSecurityHubV2Input = {
    type = "structure",
    id = "DisableSecurityHubV2Input",
}

M.DisableSecurityHubV2Output = {
    type = "structure",
    id = "DisableSecurityHubV2Output",
}

M.DisassociateFromAdministratorAccountInput = {
    type = "structure",
    id = "DisassociateFromAdministratorAccountInput",
}

M.DisassociateFromAdministratorAccountOutput = {
    type = "structure",
    id = "DisassociateFromAdministratorAccountOutput",
}

M.DisassociateFromMasterAccountInput = {
    type = "structure",
    id = "DisassociateFromMasterAccountInput",
}

M.DisassociateFromMasterAccountOutput = {
    type = "structure",
    id = "DisassociateFromMasterAccountOutput",
}

M.DisassociateMembersInput = {
    type = "structure",
    id = "DisassociateMembersInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMembersOutput = {
    type = "structure",
    id = "DisassociateMembersOutput",
}

M.EnableImportFindingsForProductInput = {
    type = "structure",
    id = "EnableImportFindingsForProductInput",
    members = {
        ProductArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableImportFindingsForProductOutput = {
    type = "structure",
    id = "EnableImportFindingsForProductOutput",
    members = {
        ProductSubscriptionArn = {
            type = "string",
        },
    },
}

M.EnableOrganizationAdminAccountInput = {
    type = "structure",
    id = "EnableOrganizationAdminAccountInput",
    members = {
        AdminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Feature = {
            type = "string",
        },
    },
}

M.EnableOrganizationAdminAccountOutput = {
    type = "structure",
    id = "EnableOrganizationAdminAccountOutput",
    members = {
        AdminAccountId = {
            type = "string",
        },
        Feature = {
            type = "string",
        },
    },
}

M.EnableSecurityHubInput = {
    type = "structure",
    id = "EnableSecurityHubInput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EnableDefaultStandards = {
            type = "boolean",
        },
        ControlFindingGenerator = {
            type = "string",
        },
    },
}

M.EnableSecurityHubOutput = {
    type = "structure",
    id = "EnableSecurityHubOutput",
}

M.EnableSecurityHubV2Input = {
    type = "structure",
    id = "EnableSecurityHubV2Input",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EnableSecurityHubV2Output = {
    type = "structure",
    id = "EnableSecurityHubV2Output",
    members = {
        HubV2Arn = {
            type = "string",
        },
    },
}

M.FindingAggregator = {
    type = "structure",
    id = "FindingAggregator",
    members = {
        FindingAggregatorArn = {
            type = "string",
        },
    },
}

M.FindingHistoryUpdate = {
    type = "structure",
    id = "FindingHistoryUpdate",
    members = {
        UpdatedField = {
            type = "string",
        },
        OldValue = {
            type = "string",
        },
        NewValue = {
            type = "string",
        },
    },
}

M.FindingHistoryUpdateSourceType = {
    BATCH_UPDATE_FINDINGS = "BATCH_UPDATE_FINDINGS",
    BATCH_IMPORT_FINDINGS = "BATCH_IMPORT_FINDINGS",
}

M.FindingHistoryUpdateSource = {
    type = "structure",
    id = "FindingHistoryUpdateSource",
    members = {
        Type = {
            type = "string",
        },
        Identity = {
            type = "string",
        },
    },
}

M.FindingHistoryRecord = {
    type = "structure",
    id = "FindingHistoryRecord",
    members = {
        FindingIdentifier = M.AwsSecurityFindingIdentifier,
        UpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        FindingCreated = {
            type = "boolean",
        },
        UpdateSource = M.FindingHistoryUpdateSource,
        Updates = {
            type = "list",
            member = M.FindingHistoryUpdate,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FindingScopes = {
    type = "structure",
    id = "FindingScopes",
    members = {
        AwsOrganizations = {
            type = "list",
            member = M.AwsOrganizationScope,
        },
    },
}

M.FindingsTrendsStringField = {
    ACCOUNT_ID = "account_id",
    REGION = "region",
    FINDING_TYPE = "finding_types",
    FINDING_STATUS = "finding_status",
    CVE_ID = "finding_cve_ids",
    COMPLIANCE_STATUS = "finding_compliance_status",
    COMPLIANCE_CONTROL = "finding_control_id",
    FINDING_CLASS = "finding_class_name",
    PROVIDER_NAME = "finding_provider",
    FINDING_ACTIVITY_NAME = "finding_activity_name",
}

M.FindingsTrendsStringFilter = {
    type = "structure",
    id = "FindingsTrendsStringFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.StringFilter,
    },
}

M.GetAdministratorAccountInput = {
    type = "structure",
    id = "GetAdministratorAccountInput",
}

M.Invitation = {
    type = "structure",
    id = "Invitation",
    members = {
        AccountId = {
            type = "string",
        },
        InvitationId = {
            type = "string",
        },
        InvitedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        MemberStatus = {
            type = "string",
        },
    },
}

M.GetAdministratorAccountOutput = {
    type = "structure",
    id = "GetAdministratorAccountOutput",
    members = {
        Administrator = M.Invitation,
    },
}

M.GetAggregatorV2Input = {
    type = "structure",
    id = "GetAggregatorV2Input",
    members = {
        AggregatorV2Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAggregatorV2Output = {
    type = "structure",
    id = "GetAggregatorV2Output",
    members = {
        AggregatorV2Arn = {
            type = "string",
        },
        AggregationRegion = {
            type = "string",
        },
        RegionLinkingMode = {
            type = "string",
        },
        LinkedRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetAutomationRuleV2Input = {
    type = "structure",
    id = "GetAutomationRuleV2Input",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationPolicyInput = {
    type = "structure",
    id = "GetConfigurationPolicyInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationPolicyOutput = {
    type = "structure",
    id = "GetConfigurationPolicyOutput",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ConfigurationPolicy = M.Policy,
    },
}

M.GetConfigurationPolicyAssociationInput = {
    type = "structure",
    id = "GetConfigurationPolicyAssociationInput",
    members = {
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Target }),
    },
}

M.GetConfigurationPolicyAssociationOutput = {
    type = "structure",
    id = "GetConfigurationPolicyAssociationOutput",
    members = {
        ConfigurationPolicyId = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        AssociationStatus = {
            type = "string",
        },
        AssociationStatusMessage = {
            type = "string",
        },
    },
}

M.GetConnectorV2Input = {
    type = "structure",
    id = "GetConnectorV2Input",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HealthCheck = {
    type = "structure",
    id = "HealthCheck",
    members = {
        ConnectorStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        LastCheckedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.JiraCloudDetail = {
    type = "structure",
    id = "JiraCloudDetail",
    members = {
        CloudId = {
            type = "string",
        },
        ProjectKey = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        AuthUrl = {
            type = "string",
        },
        AuthStatus = {
            type = "string",
        },
    },
}

M.ServiceNowDetail = {
    type = "structure",
    id = "ServiceNowDetail",
    members = {
        InstanceName = {
            type = "string",
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProviderDetail = {
    type = "union",
    id = "ProviderDetail",
    members = {
        JiraCloud = M.JiraCloudDetail,
        ServiceNow = M.ServiceNowDetail,
    },
}

M.GetConnectorV2Output = {
    type = "structure",
    id = "GetConnectorV2Output",
    members = {
        ConnectorArn = {
            type = "string",
        },
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
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
        KmsKeyArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Health = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheck }),
        ProviderDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderDetail }),
    },
}

M.GetEnabledStandardsInput = {
    type = "structure",
    id = "GetEnabledStandardsInput",
    members = {
        StandardsSubscriptionArns = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetEnabledStandardsOutput = {
    type = "structure",
    id = "GetEnabledStandardsOutput",
    members = {
        StandardsSubscriptions = {
            type = "list",
            member = M.StandardsSubscription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetFindingAggregatorInput = {
    type = "structure",
    id = "GetFindingAggregatorInput",
    members = {
        FindingAggregatorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFindingAggregatorOutput = {
    type = "structure",
    id = "GetFindingAggregatorOutput",
    members = {
        FindingAggregatorArn = {
            type = "string",
        },
        FindingAggregationRegion = {
            type = "string",
        },
        RegionLinkingMode = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetFindingHistoryInput = {
    type = "structure",
    id = "GetFindingHistoryInput",
    members = {
        FindingIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsSecurityFindingIdentifier }),
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
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

M.GetFindingHistoryOutput = {
    type = "structure",
    id = "GetFindingHistoryOutput",
    members = {
        Records = {
            type = "list",
            member = M.FindingHistoryRecord,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortOrder = {
    ASCENDING = "asc",
    DESCENDING = "desc",
}

M.SortCriterion = {
    type = "structure",
    id = "SortCriterion",
    members = {
        Field = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.GetFindingsInput = {
    type = "structure",
    id = "GetFindingsInput",
    members = {
        Filters = M.AwsSecurityFindingFilters,
        SortCriteria = {
            type = "list",
            member = M.SortCriterion,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetFindingsOutput = {
    type = "structure",
    id = "GetFindingsOutput",
    members = {
        Findings = {
            type = "list",
            member = M.AwsSecurityFinding,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupByField = {
    ACTIVITY_NAME = "activity_name",
    CLOUD_ACCOUNT_UID = "cloud.account.uid",
    CLOUD_PROVIDER = "cloud.provider",
    CLOUD_REGION = "cloud.region",
    COMPLIANCE_ASSESSMENTS_NAME = "compliance.assessments.name",
    COMPLIANCE_STATUS = "compliance.status",
    COMPLIANCE_CONTROL = "compliance.control",
    FINDING_INFO_TITLE = "finding_info.title",
    FINDING_INFO_RELATED_EVENTS_TRAITS_CATEGORY = "finding_info.related_events.traits.category",
    FINDING_INFO_TYPES = "finding_info.types",
    METADATA_PRODUCT_NAME = "metadata.product.name",
    METADATA_PRODUCT_UID = "metadata.product.uid",
    RESOURCES_TYPE = "resources.type",
    RESOURCES_UID = "resources.uid",
    SEVERITY = "severity",
    STATUS = "status",
    VULNERABILITIES_FIX_COVERAGE = "vulnerabilities.fix_coverage",
    CLASS_NAME = "class_name",
    VULNERABILITIES_AFFECTED_PACKAGES_NAME = "vulnerabilities.affected_packages.name",
    FINDING_INFO_ANALYTIC_NAME = "finding_info.analytic.name",
    COMPLIANCE_STANDARDS = "compliance.standards",
    CLOUD_ACCOUNT_NAME = "cloud.account.name",
    VENDOR_ATTRIBUTES_SEVERITY = "vendor_attributes.severity",
    METADATA_PRODUCT_VENDOR_NAME = "metadata.product.vendor_name",
}

M.GroupByValue = {
    type = "structure",
    id = "GroupByValue",
    members = {
        FieldValue = {
            type = "string",
        },
        Count = {
            type = "integer",
        },
    },
}

M.GroupByResult = {
    type = "structure",
    id = "GroupByResult",
    members = {
        GroupByField = {
            type = "string",
        },
        GroupByValues = {
            type = "list",
            member = M.GroupByValue,
        },
    },
}

M.GetFindingStatisticsV2Output = {
    type = "structure",
    id = "GetFindingStatisticsV2Output",
    members = {
        GroupByResults = {
            type = "list",
            member = M.GroupByResult,
        },
    },
}

M.OrganizationalUnitNotFoundException = {
    type = "structure",
    id = "OrganizationalUnitNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.OrganizationNotFoundException = {
    type = "structure",
    id = "OrganizationNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.GranularityField = {
    DAILY = "Daily",
    WEEKLY = "Weekly",
    MONTHLY = "Monthly",
}

M.SeverityTrendsCount = {
    type = "structure",
    id = "SeverityTrendsCount",
    members = {
        Unknown = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Informational = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Low = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Medium = {
            type = "long",
            traits = {
                required = true,
            },
        },
        High = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Critical = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Fatal = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Other = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.TrendsValues = {
    type = "structure",
    id = "TrendsValues",
    members = {
        SeverityTrends = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SeverityTrendsCount }),
    },
}

M.TrendsMetricsResult = {
    type = "structure",
    id = "TrendsMetricsResult",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        TrendsValues = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrendsValues }),
    },
}

M.GetFindingsTrendsV2Output = {
    type = "structure",
    id = "GetFindingsTrendsV2Output",
    members = {
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrendsMetrics = {
            type = "list",
            member = M.TrendsMetricsResult,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetFindingsV2Output = {
    type = "structure",
    id = "GetFindingsV2Output",
    members = {
        Findings = {
            type = "list",
            member = { type = "document" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInsightResultsInput = {
    type = "structure",
    id = "GetInsightResultsInput",
    members = {
        InsightArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InsightResultValue = {
    type = "structure",
    id = "InsightResultValue",
    members = {
        GroupByAttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InsightResults = {
    type = "structure",
    id = "InsightResults",
    members = {
        InsightArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupByAttribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResultValues = {
            type = "list",
            member = M.InsightResultValue,
            traits = {
                required = true,
            },
        },
    },
}

M.GetInsightResultsOutput = {
    type = "structure",
    id = "GetInsightResultsOutput",
    members = {
        InsightResults = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InsightResults }),
    },
}

M.GetInsightsInput = {
    type = "structure",
    id = "GetInsightsInput",
    members = {
        InsightArns = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Insight = {
    type = "structure",
    id = "Insight",
    members = {
        InsightArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsSecurityFindingFilters }),
        GroupByAttribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInsightsOutput = {
    type = "structure",
    id = "GetInsightsOutput",
    members = {
        Insights = {
            type = "list",
            member = M.Insight,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInvitationsCountInput = {
    type = "structure",
    id = "GetInvitationsCountInput",
}

M.GetInvitationsCountOutput = {
    type = "structure",
    id = "GetInvitationsCountOutput",
    members = {
        InvitationsCount = {
            type = "integer",
        },
    },
}

M.GetMasterAccountInput = {
    type = "structure",
    id = "GetMasterAccountInput",
}

M.GetMasterAccountOutput = {
    type = "structure",
    id = "GetMasterAccountOutput",
    members = {
        Master = M.Invitation,
    },
}

M.GetMembersInput = {
    type = "structure",
    id = "GetMembersInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Member = {
    type = "structure",
    id = "Member",
    members = {
        AccountId = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        MasterId = {
            type = "string",
        },
        AdministratorId = {
            type = "string",
        },
        MemberStatus = {
            type = "string",
        },
        InvitedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetMembersOutput = {
    type = "structure",
    id = "GetMembersOutput",
    members = {
        Members = {
            type = "list",
            member = M.Member,
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.Result,
        },
    },
}

M.ResourcesDateField = {
    RESOURCE_DETAIL_CAPTURE_TIME_DT = "ResourceDetailCaptureTime",
    RESOURCE_CREATION_TIME_DT = "ResourceCreationTime",
}

M.ResourcesDateFilter = {
    type = "structure",
    id = "ResourcesDateFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.DateFilter,
    },
}

M.ResourcesMapField = {
    TAG = "ResourceTags",
}

M.ResourcesMapFilter = {
    type = "structure",
    id = "ResourcesMapFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.MapFilter,
    },
}

M.ResourcesNumberField = {
    TOTAL_FINDINGS = "FindingsSummary.TotalFindings",
    SEVERITY_OTHER = "FindingsSummary.Severities.Other",
    SEVERITY_FATAL = "FindingsSummary.Severities.Fatal",
    SEVERITY_CRITICAL = "FindingsSummary.Severities.Critical",
    SEVERITY_HIGH = "FindingsSummary.Severities.High",
    SEVERITY_MEDIUM = "FindingsSummary.Severities.Medium",
    SEVERITY_LOW = "FindingsSummary.Severities.Low",
    SEVERITY_INFORMATIONAL = "FindingsSummary.Severities.Informational",
    SEVERITY_UNKNOWN = "FindingsSummary.Severities.Unknown",
}

M.ResourcesNumberFilter = {
    type = "structure",
    id = "ResourcesNumberFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.NumberFilter,
    },
}

M.ResourcesStringField = {
    RESOURCE_GUID = "ResourceGuid",
    RESOURCE_ID = "ResourceId",
    ACCOUNT_ID = "AccountId",
    REGION = "Region",
    RESOURCE_CATEGORY = "ResourceCategory",
    RESOURCE_TYPE = "ResourceType",
    RESOURCE_NAME = "ResourceName",
    FINDING_TYPE = "FindingsSummary.FindingType",
    PRODUCT_NAME = "FindingsSummary.ProductName",
}

M.ResourcesStringFilter = {
    type = "structure",
    id = "ResourcesStringFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.StringFilter,
    },
}

M.ResourceGroupByField = {
    ACCOUNT_ID = "AccountId",
    REGION = "Region",
    RESOURCE_CATEGORY = "ResourceCategory",
    RESOURCE_TYPE = "ResourceType",
    RESOURCE_NAME = "ResourceName",
    FINDING_TYPE = "FindingsSummary.FindingType",
}

M.ResourceScopes = {
    type = "structure",
    id = "ResourceScopes",
    members = {
        AwsOrganizations = {
            type = "list",
            member = M.AwsOrganizationScope,
        },
    },
}

M.GetResourcesStatisticsV2Output = {
    type = "structure",
    id = "GetResourcesStatisticsV2Output",
    members = {
        GroupByResults = {
            type = "list",
            member = M.GroupByResult,
            traits = {
                required = true,
            },
        },
    },
}

M.ResourcesTrendsStringField = {
    ACCOUNT_ID = "account_id",
    REGION = "region",
    RESOURCE_TYPE = "resource_type",
    RESOURCE_CATEGORY = "resource_category",
}

M.ResourcesTrendsStringFilter = {
    type = "structure",
    id = "ResourcesTrendsStringFilter",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = M.StringFilter,
    },
}

M.ResourcesCount = {
    type = "structure",
    id = "ResourcesCount",
    members = {
        AllResources = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourcesTrendsValues = {
    type = "structure",
    id = "ResourcesTrendsValues",
    members = {
        ResourcesCount = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourcesCount }),
    },
}

M.ResourcesTrendsMetricsResult = {
    type = "structure",
    id = "ResourcesTrendsMetricsResult",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        TrendsValues = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourcesTrendsValues }),
    },
}

M.GetResourcesTrendsV2Output = {
    type = "structure",
    id = "GetResourcesTrendsV2Output",
    members = {
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrendsMetrics = {
            type = "list",
            member = M.ResourcesTrendsMetricsResult,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceSeverityBreakdown = {
    type = "structure",
    id = "ResourceSeverityBreakdown",
    members = {
        Other = {
            type = "integer",
        },
        Fatal = {
            type = "integer",
        },
        Critical = {
            type = "integer",
        },
        High = {
            type = "integer",
        },
        Medium = {
            type = "integer",
        },
        Low = {
            type = "integer",
        },
        Informational = {
            type = "integer",
        },
        Unknown = {
            type = "integer",
        },
    },
}

M.ResourceFindingsSummary = {
    type = "structure",
    id = "ResourceFindingsSummary",
    members = {
        FindingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalFindings = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Severities = M.ResourceSeverityBreakdown,
    },
}

M.ResourceCategory = {
    COMPUTE = "Compute",
    DATABASE = "Database",
    STORAGE = "Storage",
    CODE = "Code",
    AI_ML = "AI/ML",
    IDENTITY = "Identity",
    NETWORK = "Network",
    OTHER = "Other",
}

M.ResourceTag = {
    type = "structure",
    id = "ResourceTag",
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

M.ResourceResult = {
    type = "structure",
    id = "ResourceResult",
    members = {
        ResourceGuid = {
            type = "string",
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceCategory = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
        ResourceCreationTimeDt = {
            type = "string",
        },
        ResourceDetailCaptureTimeDt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindingsSummary = {
            type = "list",
            member = M.ResourceFindingsSummary,
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        ResourceConfig = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcesV2Output = {
    type = "structure",
    id = "GetResourcesV2Output",
    members = {
        Resources = {
            type = "list",
            member = M.ResourceResult,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSecurityControlDefinitionInput = {
    type = "structure",
    id = "GetSecurityControlDefinitionInput",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                http_query = "SecurityControlId",
                required = true,
            },
        },
    },
}

M.RegionAvailabilityStatus = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
}

M.ParameterDefinition = {
    type = "structure",
    id = "ParameterDefinition",
    members = {
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationOptions }),
    },
}

M.SecurityControlDefinition = {
    type = "structure",
    id = "SecurityControlDefinition",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemediationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SeverityRating = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentRegionAvailability = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomizableProperties = {
            type = "list",
            member = { type = "string" },
        },
        ParameterDefinitions = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterDefinition,
        },
    },
}

M.GetSecurityControlDefinitionOutput = {
    type = "structure",
    id = "GetSecurityControlDefinitionOutput",
    members = {
        SecurityControlDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecurityControlDefinition }),
    },
}

M.InviteMembersInput = {
    type = "structure",
    id = "InviteMembersInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.InviteMembersOutput = {
    type = "structure",
    id = "InviteMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.Result,
        },
    },
}

M.JiraCloudUpdateConfiguration = {
    type = "structure",
    id = "JiraCloudUpdateConfiguration",
    members = {
        ProjectKey = {
            type = "string",
        },
    },
}

M.ListAggregatorsV2Input = {
    type = "structure",
    id = "ListAggregatorsV2Input",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListAggregatorsV2Output = {
    type = "structure",
    id = "ListAggregatorsV2Output",
    members = {
        AggregatorsV2 = {
            type = "list",
            member = M.AggregatorV2,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAutomationRulesInput = {
    type = "structure",
    id = "ListAutomationRulesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListAutomationRulesOutput = {
    type = "structure",
    id = "ListAutomationRulesOutput",
    members = {
        AutomationRulesMetadata = {
            type = "list",
            member = M.AutomationRulesMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAutomationRulesV2Input = {
    type = "structure",
    id = "ListAutomationRulesV2Input",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListAutomationRulesV2Output = {
    type = "structure",
    id = "ListAutomationRulesV2Output",
    members = {
        Rules = {
            type = "list",
            member = M.AutomationRulesMetadataV2,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationPoliciesInput = {
    type = "structure",
    id = "ListConfigurationPoliciesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListConfigurationPoliciesOutput = {
    type = "structure",
    id = "ListConfigurationPoliciesOutput",
    members = {
        ConfigurationPolicySummaries = {
            type = "list",
            member = M.ConfigurationPolicySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationPolicyAssociationsInput = {
    type = "structure",
    id = "ListConfigurationPolicyAssociationsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = M.AssociationFilters,
    },
}

M.ListConfigurationPolicyAssociationsOutput = {
    type = "structure",
    id = "ListConfigurationPolicyAssociationsOutput",
    members = {
        ConfigurationPolicyAssociationSummaries = {
            type = "list",
            member = M.ConfigurationPolicyAssociationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectorsV2Input = {
    type = "structure",
    id = "ListConnectorsV2Input",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        ProviderName = {
            type = "string",
            traits = {
                http_query = "ProviderName",
            },
        },
        ConnectorStatus = {
            type = "string",
            traits = {
                http_query = "ConnectorStatus",
            },
        },
    },
}

M.ListConnectorsV2Output = {
    type = "structure",
    id = "ListConnectorsV2Output",
    members = {
        NextToken = {
            type = "string",
        },
        Connectors = {
            type = "list",
            member = M.ConnectorSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListEnabledProductsForImportInput = {
    type = "structure",
    id = "ListEnabledProductsForImportInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListEnabledProductsForImportOutput = {
    type = "structure",
    id = "ListEnabledProductsForImportOutput",
    members = {
        ProductSubscriptions = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFindingAggregatorsInput = {
    type = "structure",
    id = "ListFindingAggregatorsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListFindingAggregatorsOutput = {
    type = "structure",
    id = "ListFindingAggregatorsOutput",
    members = {
        FindingAggregators = {
            type = "list",
            member = M.FindingAggregator,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInvitationsInput = {
    type = "structure",
    id = "ListInvitationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListInvitationsOutput = {
    type = "structure",
    id = "ListInvitationsOutput",
    members = {
        Invitations = {
            type = "list",
            member = M.Invitation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    id = "ListMembersInput",
    members = {
        OnlyAssociated = {
            type = "boolean",
            traits = {
                http_query = "OnlyAssociated",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    id = "ListMembersOutput",
    members = {
        Members = {
            type = "list",
            member = M.Member,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrganizationAdminAccountsInput = {
    type = "structure",
    id = "ListOrganizationAdminAccountsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        Feature = {
            type = "string",
            traits = {
                http_query = "Feature",
            },
        },
    },
}

M.ListOrganizationAdminAccountsOutput = {
    type = "structure",
    id = "ListOrganizationAdminAccountsOutput",
    members = {
        AdminAccounts = {
            type = "list",
            member = M.AdminAccount,
        },
        NextToken = {
            type = "string",
        },
        Feature = {
            type = "string",
        },
    },
}

M.ListSecurityControlDefinitionsInput = {
    type = "structure",
    id = "ListSecurityControlDefinitionsInput",
    members = {
        StandardsArn = {
            type = "string",
            traits = {
                http_query = "StandardsArn",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListSecurityControlDefinitionsOutput = {
    type = "structure",
    id = "ListSecurityControlDefinitionsOutput",
    members = {
        SecurityControlDefinitions = {
            type = "list",
            member = M.SecurityControlDefinition,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStandardsControlAssociationsInput = {
    type = "structure",
    id = "ListStandardsControlAssociationsInput",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                http_query = "SecurityControlId",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.StandardsControlAssociationSummary = {
    type = "structure",
    id = "StandardsControlAssociationSummary",
    members = {
        StandardsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelatedRequirements = {
            type = "list",
            member = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedReason = {
            type = "string",
        },
        StandardsControlTitle = {
            type = "string",
        },
        StandardsControlDescription = {
            type = "string",
        },
    },
}

M.ListStandardsControlAssociationsOutput = {
    type = "structure",
    id = "ListStandardsControlAssociationsOutput",
    members = {
        StandardsControlAssociationSummaries = {
            type = "list",
            member = M.StandardsControlAssociationSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ServiceNowUpdateConfiguration = {
    type = "structure",
    id = "ServiceNowUpdateConfiguration",
    members = {
        SecretArn = {
            type = "string",
        },
    },
}

M.ProviderUpdateConfiguration = {
    type = "union",
    id = "ProviderUpdateConfiguration",
    members = {
        JiraCloud = M.JiraCloudUpdateConfiguration,
        ServiceNow = M.ServiceNowUpdateConfiguration,
    },
}

M.RegisterConnectorV2Input = {
    type = "structure",
    id = "RegisterConnectorV2Input",
    members = {
        AuthCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterConnectorV2Output = {
    type = "structure",
    id = "RegisterConnectorV2Output",
    members = {
        ConnectorArn = {
            type = "string",
        },
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.StartConfigurationPolicyAssociationInput = {
    type = "structure",
    id = "StartConfigurationPolicyAssociationInput",
    members = {
        ConfigurationPolicyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Target }),
    },
}

M.StartConfigurationPolicyAssociationOutput = {
    type = "structure",
    id = "StartConfigurationPolicyAssociationOutput",
    members = {
        ConfigurationPolicyId = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        AssociationType = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        AssociationStatus = {
            type = "string",
        },
        AssociationStatusMessage = {
            type = "string",
        },
    },
}

M.StartConfigurationPolicyDisassociationInput = {
    type = "structure",
    id = "StartConfigurationPolicyDisassociationInput",
    members = {
        Target = M.Target,
        ConfigurationPolicyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartConfigurationPolicyDisassociationOutput = {
    type = "structure",
    id = "StartConfigurationPolicyDisassociationOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateActionTargetInput = {
    type = "structure",
    id = "UpdateActionTargetInput",
    members = {
        ActionTargetArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateActionTargetOutput = {
    type = "structure",
    id = "UpdateActionTargetOutput",
}

M.UpdateAggregatorV2Input = {
    type = "structure",
    id = "UpdateAggregatorV2Input",
    members = {
        AggregatorV2Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RegionLinkingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkedRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateAggregatorV2Output = {
    type = "structure",
    id = "UpdateAggregatorV2Output",
    members = {
        AggregatorV2Arn = {
            type = "string",
        },
        AggregationRegion = {
            type = "string",
        },
        RegionLinkingMode = {
            type = "string",
        },
        LinkedRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateAutomationRuleV2Output = {
    type = "structure",
    id = "UpdateAutomationRuleV2Output",
}

M.UpdateConfigurationPolicyInput = {
    type = "structure",
    id = "UpdateConfigurationPolicyInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UpdatedReason = {
            type = "string",
        },
        ConfigurationPolicy = M.Policy,
    },
}

M.UpdateConfigurationPolicyOutput = {
    type = "structure",
    id = "UpdateConfigurationPolicyOutput",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ConfigurationPolicy = M.Policy,
    },
}

M.UpdateConnectorV2Input = {
    type = "structure",
    id = "UpdateConnectorV2Input",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Provider = M.ProviderUpdateConfiguration,
    },
}

M.UpdateConnectorV2Output = {
    type = "structure",
    id = "UpdateConnectorV2Output",
}

M.UpdateFindingAggregatorInput = {
    type = "structure",
    id = "UpdateFindingAggregatorInput",
    members = {
        FindingAggregatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegionLinkingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateFindingAggregatorOutput = {
    type = "structure",
    id = "UpdateFindingAggregatorOutput",
    members = {
        FindingAggregatorArn = {
            type = "string",
        },
        FindingAggregationRegion = {
            type = "string",
        },
        RegionLinkingMode = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateFindingsInput = {
    type = "structure",
    id = "UpdateFindingsInput",
    members = {
        Filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsSecurityFindingFilters }),
        Note = M.NoteUpdate,
        RecordState = {
            type = "string",
        },
    },
}

M.UpdateFindingsOutput = {
    type = "structure",
    id = "UpdateFindingsOutput",
}

M.UpdateInsightInput = {
    type = "structure",
    id = "UpdateInsightInput",
    members = {
        InsightArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Filters = M.AwsSecurityFindingFilters,
        GroupByAttribute = {
            type = "string",
        },
    },
}

M.UpdateInsightOutput = {
    type = "structure",
    id = "UpdateInsightOutput",
}

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
    id = "UpdateOrganizationConfigurationInput",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AutoEnableStandards = {
            type = "string",
        },
        OrganizationConfiguration = M.OrganizationConfiguration,
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
    id = "UpdateOrganizationConfigurationOutput",
}

M.UpdateSecurityControlInput = {
    type = "structure",
    id = "UpdateSecurityControlInput",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConfiguration,
            traits = {
                required = true,
            },
        },
        LastUpdateReason = {
            type = "string",
        },
    },
}

M.UpdateSecurityControlOutput = {
    type = "structure",
    id = "UpdateSecurityControlOutput",
}

M.UpdateSecurityHubConfigurationInput = {
    type = "structure",
    id = "UpdateSecurityHubConfigurationInput",
    members = {
        AutoEnableControls = {
            type = "boolean",
        },
        ControlFindingGenerator = {
            type = "string",
        },
    },
}

M.UpdateSecurityHubConfigurationOutput = {
    type = "structure",
    id = "UpdateSecurityHubConfigurationOutput",
}

M.UpdateStandardsControlInput = {
    type = "structure",
    id = "UpdateStandardsControlInput",
    members = {
        StandardsControlArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ControlStatus = {
            type = "string",
        },
        DisabledReason = {
            type = "string",
        },
    },
}

M.UpdateStandardsControlOutput = {
    type = "structure",
    id = "UpdateStandardsControlOutput",
}

M.CompositeFilter = {
    type = "structure",
    id = "CompositeFilter",
    members = {
        StringFilters = {
            type = "list",
            member = M.OcsfStringFilter,
        },
        DateFilters = {
            type = "list",
            member = M.OcsfDateFilter,
        },
        BooleanFilters = {
            type = "list",
            member = M.OcsfBooleanFilter,
        },
        NumberFilters = {
            type = "list",
            member = M.OcsfNumberFilter,
        },
        MapFilters = {
            type = "list",
            member = M.OcsfMapFilter,
        },
        IpFilters = {
            type = "list",
            member = M.OcsfIpFilter,
        },
        NestedCompositeFilters = {
            type = "list",
            member = M.CompositeFilter,
        },
        Operator = {
            type = "string",
        },
    },
}

M.FindingsTrendsCompositeFilter = {
    type = "structure",
    id = "FindingsTrendsCompositeFilter",
    members = {
        StringFilters = {
            type = "list",
            member = M.FindingsTrendsStringFilter,
        },
        NestedCompositeFilters = {
            type = "list",
            member = M.FindingsTrendsCompositeFilter,
        },
        Operator = {
            type = "string",
        },
    },
}

M.ResourcesCompositeFilter = {
    type = "structure",
    id = "ResourcesCompositeFilter",
    members = {
        StringFilters = {
            type = "list",
            member = M.ResourcesStringFilter,
        },
        DateFilters = {
            type = "list",
            member = M.ResourcesDateFilter,
        },
        NumberFilters = {
            type = "list",
            member = M.ResourcesNumberFilter,
        },
        MapFilters = {
            type = "list",
            member = M.ResourcesMapFilter,
        },
        NestedCompositeFilters = {
            type = "list",
            member = M.ResourcesCompositeFilter,
        },
        Operator = {
            type = "string",
        },
    },
}

M.ResourcesTrendsCompositeFilter = {
    type = "structure",
    id = "ResourcesTrendsCompositeFilter",
    members = {
        StringFilters = {
            type = "list",
            member = M.ResourcesTrendsStringFilter,
        },
        NestedCompositeFilters = {
            type = "list",
            member = M.ResourcesTrendsCompositeFilter,
        },
        Operator = {
            type = "string",
        },
    },
}

M.FindingsTrendsFilters = {
    type = "structure",
    id = "FindingsTrendsFilters",
    members = {
        CompositeFilters = {
            type = "list",
            member = M.FindingsTrendsCompositeFilter,
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.OcsfFindingFilters = {
    type = "structure",
    id = "OcsfFindingFilters",
    members = {
        CompositeFilters = {
            type = "list",
            member = M.CompositeFilter,
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.ResourcesFilters = {
    type = "structure",
    id = "ResourcesFilters",
    members = {
        CompositeFilters = {
            type = "list",
            member = M.ResourcesCompositeFilter,
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.ResourcesTrendsFilters = {
    type = "structure",
    id = "ResourcesTrendsFilters",
    members = {
        CompositeFilters = {
            type = "list",
            member = M.ResourcesTrendsCompositeFilter,
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.Criteria = {
    type = "union",
    id = "Criteria",
    members = {
        OcsfFindingCriteria = M.OcsfFindingFilters,
    },
}

M.GetFindingsTrendsV2Input = {
    type = "structure",
    id = "GetFindingsTrendsV2Input",
    members = {
        Filters = M.FindingsTrendsFilters,
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.GetFindingsV2Input = {
    type = "structure",
    id = "GetFindingsV2Input",
    members = {
        Filters = M.OcsfFindingFilters,
        Scopes = M.FindingScopes,
        SortCriteria = {
            type = "list",
            member = M.SortCriterion,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetResourcesTrendsV2Input = {
    type = "structure",
    id = "GetResourcesTrendsV2Input",
    members = {
        Filters = M.ResourcesTrendsFilters,
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.GetResourcesV2Input = {
    type = "structure",
    id = "GetResourcesV2Input",
    members = {
        Filters = M.ResourcesFilters,
        Scopes = M.ResourceScopes,
        SortCriteria = {
            type = "list",
            member = M.SortCriterion,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GroupByRule = {
    type = "structure",
    id = "GroupByRule",
    members = {
        Filters = M.OcsfFindingFilters,
        GroupByField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceGroupByRule = {
    type = "structure",
    id = "ResourceGroupByRule",
    members = {
        GroupByField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ResourcesFilters,
    },
}

M.CreateAutomationRuleV2Input = {
    type = "structure",
    id = "CreateAutomationRuleV2Input",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleStatus = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleOrder = {
            type = "float",
            traits = {
                required = true,
            },
        },
        Criteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Criteria }),
        Actions = {
            type = "list",
            member = M.AutomationRulesActionV2,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.GetAutomationRuleV2Output = {
    type = "structure",
    id = "GetAutomationRuleV2Output",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleId = {
            type = "string",
        },
        RuleOrder = {
            type = "float",
        },
        RuleName = {
            type = "string",
        },
        RuleStatus = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Criteria = M.Criteria,
        Actions = {
            type = "list",
            member = M.AutomationRulesActionV2,
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateAutomationRuleV2Input = {
    type = "structure",
    id = "UpdateAutomationRuleV2Input",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "float",
        },
        Description = {
            type = "string",
        },
        RuleName = {
            type = "string",
        },
        Criteria = M.Criteria,
        Actions = {
            type = "list",
            member = M.AutomationRulesActionV2,
        },
    },
}

M.GetFindingStatisticsV2Input = {
    type = "structure",
    id = "GetFindingStatisticsV2Input",
    members = {
        GroupByRules = {
            type = "list",
            member = M.GroupByRule,
            traits = {
                required = true,
            },
        },
        Scopes = M.FindingScopes,
        SortOrder = {
            type = "string",
        },
        MaxStatisticResults = {
            type = "integer",
        },
    },
}

M.GetResourcesStatisticsV2Input = {
    type = "structure",
    id = "GetResourcesStatisticsV2Input",
    members = {
        GroupByRules = {
            type = "list",
            member = M.ResourceGroupByRule,
            traits = {
                required = true,
            },
        },
        Scopes = M.ResourceScopes,
        SortOrder = {
            type = "string",
        },
        MaxStatisticResults = {
            type = "integer",
        },
    },
}

return M
