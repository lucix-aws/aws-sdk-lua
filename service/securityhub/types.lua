local M = {}

M.AcceptAdministratorInvitationInput = {
    type = "structure",
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
}

M.InternalException = {
    type = "structure",
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
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        Domain = {
            type = "string",
        },
    },
}

M.City = {
    type = "structure",
    members = {
        CityName = {
            type = "string",
        },
    },
}

M.Country = {
    type = "structure",
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
    members = {
        Lon = {
            type = "number",
        },
        Lat = {
            type = "number",
        },
    },
}

M.IpOrganizationDetails = {
    type = "structure",
    members = {
        Asn = {
            type = "number",
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
    members = {
        IpAddressV4 = {
            type = "string",
        },
        Organization = {
            type = "structure",
        },
        Country = {
            type = "structure",
        },
        City = {
            type = "structure",
        },
        GeoLocation = {
            type = "structure",
        },
    },
}

M.AwsApiCallAction = {
    type = "structure",
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
        RemoteIpDetails = {
            type = "structure",
        },
        DomainDetails = {
            type = "structure",
        },
        AffectedResources = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        Port = {
            type = "number",
        },
        PortName = {
            type = "string",
        },
    },
}

M.ActionRemotePortDetails = {
    type = "structure",
    members = {
        Port = {
            type = "number",
        },
        PortName = {
            type = "string",
        },
    },
}

M.NetworkConnectionAction = {
    type = "structure",
    members = {
        ConnectionDirection = {
            type = "string",
        },
        RemoteIpDetails = {
            type = "structure",
        },
        RemotePortDetails = {
            type = "structure",
        },
        LocalPortDetails = {
            type = "structure",
        },
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
    members = {
        IpAddressV4 = {
            type = "string",
        },
    },
}

M.PortProbeDetail = {
    type = "structure",
    members = {
        LocalPortDetails = {
            type = "structure",
        },
        LocalIpDetails = {
            type = "structure",
        },
        RemoteIpDetails = {
            type = "structure",
        },
    },
}

M.PortProbeAction = {
    type = "structure",
    members = {
        PortProbeDetails = {
            type = "list",
            member_type = "structure",
        },
        Blocked = {
            type = "boolean",
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        ActionType = {
            type = "string",
        },
        NetworkConnectionAction = {
            type = "structure",
        },
        AwsApiCallAction = {
            type = "structure",
        },
        DnsRequestAction = {
            type = "structure",
        },
        PortProbeAction = {
            type = "structure",
        },
    },
}

M.NoteUpdate = {
    type = "structure",
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
    members = {
        Normalized = {
            type = "number",
        },
        Product = {
            type = "number",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AutomationRulesFindingFieldsUpdate = {
    type = "structure",
    members = {
        Note = {
            type = "structure",
        },
        Severity = {
            type = "structure",
        },
        VerificationState = {
            type = "string",
        },
        Confidence = {
            type = "number",
        },
        Criticality = {
            type = "number",
        },
        Types = {
            type = "list",
            member_type = "string",
        },
        UserDefinedFields = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Workflow = {
            type = "structure",
        },
        RelatedFindings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutomationRulesActionType = {
    FINDING_FIELDS_UPDATE = "FINDING_FIELDS_UPDATE",
}

M.AutomationRulesAction = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        FindingFieldsUpdate = {
            type = "structure",
        },
    },
}

M.ActionTarget = {
    type = "structure",
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
    members = {
        Uid = {
            type = "string",
        },
        MfaStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "number",
        },
        Issuer = {
            type = "string",
        },
    },
}

M.UserAccount = {
    type = "structure",
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
        Account = {
            type = "structure",
        },
    },
}

M.Actor = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        User = {
            type = "structure",
        },
        Session = {
            type = "structure",
        },
    },
}

M.Adjustment = {
    type = "structure",
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
    members = {
        AssociationState = {
            type = "structure",
        },
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
    members = {
        ConnectorArn = {
            type = "string",
        },
    },
}

M.AutomationRulesFindingFieldsUpdateV2 = {
    type = "structure",
    members = {
        SeverityId = {
            type = "number",
        },
        Comment = {
            type = "string",
        },
        StatusId = {
            type = "number",
        },
    },
}

M.AutomationRulesActionTypeV2 = {
    FINDING_FIELDS_UPDATE = "FINDING_FIELDS_UPDATE",
    EXTERNAL_INTEGRATION = "EXTERNAL_INTEGRATION",
}

M.AutomationRulesActionV2 = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindingFieldsUpdate = {
            type = "structure",
        },
        ExternalIntegrationConfiguration = {
            type = "structure",
        },
    },
}

M.AutomationRulesActionTypeObjectV2 = {
    type = "structure",
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
    members = {
        Gte = {
            type = "number",
        },
        Lte = {
            type = "number",
        },
        Eq = {
            type = "number",
        },
        Gt = {
            type = "number",
        },
        Lt = {
            type = "number",
        },
    },
}

M.DateRangeUnit = {
    DAYS = "DAYS",
}

M.DateRange = {
    type = "structure",
    members = {
        Value = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
    },
}

M.DateFilter = {
    type = "structure",
    members = {
        Start = {
            type = "string",
        },
        End = {
            type = "string",
        },
        DateRange = {
            type = "structure",
        },
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
    members = {
        ProductArn = {
            type = "list",
            member_type = "structure",
        },
        AwsAccountId = {
            type = "list",
            member_type = "structure",
        },
        Id = {
            type = "list",
            member_type = "structure",
        },
        GeneratorId = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "list",
            member_type = "structure",
        },
        FirstObservedAt = {
            type = "list",
            member_type = "structure",
        },
        LastObservedAt = {
            type = "list",
            member_type = "structure",
        },
        CreatedAt = {
            type = "list",
            member_type = "structure",
        },
        UpdatedAt = {
            type = "list",
            member_type = "structure",
        },
        Confidence = {
            type = "list",
            member_type = "structure",
        },
        Criticality = {
            type = "list",
            member_type = "structure",
        },
        Title = {
            type = "list",
            member_type = "structure",
        },
        Description = {
            type = "list",
            member_type = "structure",
        },
        SourceUrl = {
            type = "list",
            member_type = "structure",
        },
        ProductName = {
            type = "list",
            member_type = "structure",
        },
        CompanyName = {
            type = "list",
            member_type = "structure",
        },
        SeverityLabel = {
            type = "list",
            member_type = "structure",
        },
        ResourceType = {
            type = "list",
            member_type = "structure",
        },
        ResourceId = {
            type = "list",
            member_type = "structure",
        },
        ResourcePartition = {
            type = "list",
            member_type = "structure",
        },
        ResourceRegion = {
            type = "list",
            member_type = "structure",
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
        ResourceDetailsOther = {
            type = "list",
            member_type = "structure",
        },
        ComplianceStatus = {
            type = "list",
            member_type = "structure",
        },
        ComplianceSecurityControlId = {
            type = "list",
            member_type = "structure",
        },
        ComplianceAssociatedStandardsId = {
            type = "list",
            member_type = "structure",
        },
        VerificationState = {
            type = "list",
            member_type = "structure",
        },
        WorkflowStatus = {
            type = "list",
            member_type = "structure",
        },
        RecordState = {
            type = "list",
            member_type = "structure",
        },
        RelatedFindingsProductArn = {
            type = "list",
            member_type = "structure",
        },
        RelatedFindingsId = {
            type = "list",
            member_type = "structure",
        },
        NoteText = {
            type = "list",
            member_type = "structure",
        },
        NoteUpdatedAt = {
            type = "list",
            member_type = "structure",
        },
        NoteUpdatedBy = {
            type = "list",
            member_type = "structure",
        },
        UserDefinedFields = {
            type = "list",
            member_type = "structure",
        },
        ResourceApplicationArn = {
            type = "list",
            member_type = "structure",
        },
        ResourceApplicationName = {
            type = "list",
            member_type = "structure",
        },
        AwsAccountName = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutomationRulesConfig = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "number",
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
        Criteria = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.AutomationRulesMetadata = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "number",
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
        },
        UpdatedAt = {
            type = "timestamp",
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
    members = {
        RuleArn = {
            type = "string",
        },
        RuleId = {
            type = "string",
        },
        RuleOrder = {
            type = "number",
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
            member_type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
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
    members = {
        Hosts = {
            type = "list",
            member_type = "string",
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
        Pending = {
            type = "structure",
        },
    },
}

M.AwsAmazonMqBrokerMaintenanceWindowStartTimeDetails = {
    type = "structure",
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
        EncryptionOptions = {
            type = "structure",
        },
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
        LdapServerMetadata = {
            type = "structure",
        },
        Logs = {
            type = "structure",
        },
        MaintenanceWindowStartTime = {
            type = "structure",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        StorageType = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        Users = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsApiGatewayAccessLogSettings = {
    type = "structure",
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
    members = {
        PercentTraffic = {
            type = "number",
        },
        DeploymentId = {
            type = "string",
        },
        StageVariableOverrides = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UseStageCache = {
            type = "boolean",
        },
    },
}

M.AwsApiGatewayEndpointConfiguration = {
    type = "structure",
    members = {
        Types = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsApiGatewayMethodSettings = {
    type = "structure",
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
            type = "number",
        },
        ThrottlingRateLimit = {
            type = "number",
        },
        CachingEnabled = {
            type = "boolean",
        },
        CacheTtlInSeconds = {
            type = "number",
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
            member_type = "string",
        },
        MinimumCompressionSize = {
            type = "number",
        },
        ApiKeySource = {
            type = "string",
        },
        EndpointConfiguration = {
            type = "structure",
        },
    },
}

M.AwsApiGatewayStageDetails = {
    type = "structure",
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
            member_type = "structure",
        },
        Variables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DocumentationVersion = {
            type = "string",
        },
        AccessLogSettings = {
            type = "structure",
        },
        CanarySettings = {
            type = "structure",
        },
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
    members = {
        AllowOrigins = {
            type = "list",
            member_type = "string",
        },
        AllowCredentials = {
            type = "boolean",
        },
        ExposeHeaders = {
            type = "list",
            member_type = "string",
        },
        MaxAge = {
            type = "number",
        },
        AllowMethods = {
            type = "list",
            member_type = "string",
        },
        AllowHeaders = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsApiGatewayV2ApiDetails = {
    type = "structure",
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
        CorsConfiguration = {
            type = "structure",
        },
    },
}

M.AwsApiGatewayV2RouteSettings = {
    type = "structure",
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
            type = "number",
        },
        ThrottlingRateLimit = {
            type = "number",
        },
    },
}

M.AwsApiGatewayV2StageDetails = {
    type = "structure",
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
        DefaultRouteSettings = {
            type = "structure",
        },
        DeploymentId = {
            type = "string",
        },
        LastUpdatedDate = {
            type = "string",
        },
        RouteSettings = {
            type = "structure",
        },
        StageName = {
            type = "string",
        },
        StageVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AccessLogSettings = {
            type = "structure",
        },
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
    members = {
        AuthorizerResultTtlInSeconds = {
            type = "number",
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
    members = {
        AuthTtL = {
            type = "number",
        },
        ClientId = {
            type = "string",
        },
        IatTtL = {
            type = "number",
        },
        Issuer = {
            type = "string",
        },
    },
}

M.AwsAppSyncGraphQlApiUserPoolConfigDetails = {
    type = "structure",
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
    members = {
        AuthenticationType = {
            type = "string",
        },
        LambdaAuthorizerConfig = {
            type = "structure",
        },
        OpenIdConnectConfig = {
            type = "structure",
        },
        UserPoolConfig = {
            type = "structure",
        },
    },
}

M.AwsAppSyncGraphQlApiLogConfigDetails = {
    type = "structure",
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
    members = {
        ApiId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        OpenIdConnectConfig = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        LambdaAuthorizerConfig = {
            type = "structure",
        },
        XrayEnabled = {
            type = "boolean",
        },
        Arn = {
            type = "string",
        },
        UserPoolConfig = {
            type = "structure",
        },
        AuthenticationType = {
            type = "string",
        },
        LogConfig = {
            type = "structure",
        },
        AdditionalAuthenticationProviders = {
            type = "list",
            member_type = "structure",
        },
        WafWebAclArn = {
            type = "string",
        },
    },
}

M.AwsAthenaWorkGroupConfigurationResultConfigurationEncryptionConfigurationDetails = {
    type = "structure",
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
    members = {
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.AwsAthenaWorkGroupConfigurationDetails = {
    type = "structure",
    members = {
        ResultConfiguration = {
            type = "structure",
        },
    },
}

M.AwsAthenaWorkGroupDetails = {
    type = "structure",
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
        Configuration = {
            type = "structure",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification = {
    type = "structure",
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
    members = {
        OnDemandAllocationStrategy = {
            type = "string",
        },
        OnDemandBaseCapacity = {
            type = "number",
        },
        OnDemandPercentageAboveBaseCapacity = {
            type = "number",
        },
        SpotAllocationStrategy = {
            type = "string",
        },
        SpotInstancePools = {
            type = "number",
        },
        SpotMaxPrice = {
            type = "string",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification = {
    type = "structure",
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
    members = {
        LaunchTemplateSpecification = {
            type = "structure",
        },
        Overrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails = {
    type = "structure",
    members = {
        InstancesDistribution = {
            type = "structure",
        },
        LaunchTemplate = {
            type = "structure",
        },
    },
}

M.AwsAutoScalingAutoScalingGroupDetails = {
    type = "structure",
    members = {
        LaunchConfigurationName = {
            type = "string",
        },
        LoadBalancerNames = {
            type = "list",
            member_type = "string",
        },
        HealthCheckType = {
            type = "string",
        },
        HealthCheckGracePeriod = {
            type = "number",
        },
        CreatedTime = {
            type = "string",
        },
        MixedInstancesPolicy = {
            type = "structure",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "structure",
        },
        LaunchTemplate = {
            type = "structure",
        },
        CapacityRebalance = {
            type = "boolean",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails = {
    type = "structure",
    members = {
        DeleteOnTermination = {
            type = "boolean",
        },
        Encrypted = {
            type = "boolean",
        },
        Iops = {
            type = "number",
        },
        SnapshotId = {
            type = "string",
        },
        VolumeSize = {
            type = "number",
        },
        VolumeType = {
            type = "string",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails = {
    type = "structure",
    members = {
        DeviceName = {
            type = "string",
        },
        Ebs = {
            type = "structure",
        },
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
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationMetadataOptions = {
    type = "structure",
    members = {
        HttpEndpoint = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "number",
        },
        HttpTokens = {
            type = "string",
        },
    },
}

M.AwsAutoScalingLaunchConfigurationDetails = {
    type = "structure",
    members = {
        AssociatePublicIpAddress = {
            type = "boolean",
        },
        BlockDeviceMappings = {
            type = "list",
            member_type = "structure",
        },
        ClassicLinkVpcId = {
            type = "string",
        },
        ClassicLinkVpcSecurityGroups = {
            type = "list",
            member_type = "string",
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
        InstanceMonitoring = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SpotPrice = {
            type = "string",
        },
        UserData = {
            type = "string",
        },
        MetadataOptions = {
            type = "structure",
        },
    },
}

M.AwsBackupBackupPlanAdvancedBackupSettingsDetails = {
    type = "structure",
    members = {
        BackupOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.AwsBackupBackupPlanLifecycleDetails = {
    type = "structure",
    members = {
        DeleteAfterDays = {
            type = "number",
        },
        MoveToColdStorageAfterDays = {
            type = "number",
        },
    },
}

M.AwsBackupBackupPlanRuleCopyActionsDetails = {
    type = "structure",
    members = {
        DestinationBackupVaultArn = {
            type = "string",
        },
        Lifecycle = {
            type = "structure",
        },
    },
}

M.AwsBackupBackupPlanRuleDetails = {
    type = "structure",
    members = {
        TargetBackupVault = {
            type = "string",
        },
        StartWindowMinutes = {
            type = "number",
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
            type = "number",
        },
        CopyActions = {
            type = "list",
            member_type = "structure",
        },
        Lifecycle = {
            type = "structure",
        },
    },
}

M.AwsBackupBackupPlanBackupPlanDetails = {
    type = "structure",
    members = {
        BackupPlanName = {
            type = "string",
        },
        AdvancedBackupSettings = {
            type = "list",
            member_type = "structure",
        },
        BackupPlanRule = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsBackupBackupPlanDetails = {
    type = "structure",
    members = {
        BackupPlan = {
            type = "structure",
        },
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
    members = {
        BackupVaultEvents = {
            type = "list",
            member_type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
    },
}

M.AwsBackupBackupVaultDetails = {
    type = "structure",
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
        Notifications = {
            type = "structure",
        },
        AccessPolicy = {
            type = "string",
        },
    },
}

M.AwsBackupRecoveryPointCalculatedLifecycleDetails = {
    type = "structure",
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
    members = {
        DeleteAfterDays = {
            type = "number",
        },
        MoveToColdStorageAfterDays = {
            type = "number",
        },
    },
}

M.AwsBackupRecoveryPointDetails = {
    type = "structure",
    members = {
        BackupSizeInBytes = {
            type = "number",
        },
        BackupVaultArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        CalculatedLifecycle = {
            type = "structure",
        },
        CompletionDate = {
            type = "string",
        },
        CreatedBy = {
            type = "structure",
        },
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
        Lifecycle = {
            type = "structure",
        },
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
    members = {
        DomainName = {
            type = "string",
        },
        ResourceRecord = {
            type = "structure",
        },
        ValidationDomain = {
            type = "string",
        },
        ValidationEmails = {
            type = "list",
            member_type = "string",
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
    members = {
        Name = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateOptions = {
    type = "structure",
    members = {
        CertificateTransparencyLoggingPreference = {
            type = "string",
        },
    },
}

M.AwsCertificateManagerCertificateRenewalSummary = {
    type = "structure",
    members = {
        DomainValidationOptions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        ExtendedKeyUsages = {
            type = "list",
            member_type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        ImportedAt = {
            type = "string",
        },
        InUseBy = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        NotAfter = {
            type = "string",
        },
        NotBefore = {
            type = "string",
        },
        Options = {
            type = "structure",
        },
        RenewalEligibility = {
            type = "string",
        },
        RenewalSummary = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsCloudFormationStackDriftInformationDetails = {
    type = "structure",
    members = {
        StackDriftStatus = {
            type = "string",
        },
    },
}

M.AwsCloudFormationStackOutputsDetails = {
    type = "structure",
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
    members = {
        Capabilities = {
            type = "list",
            member_type = "string",
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
        DriftInformation = {
            type = "structure",
        },
        EnableTerminationProtection = {
            type = "boolean",
        },
        LastUpdatedTime = {
            type = "string",
        },
        NotificationArns = {
            type = "list",
            member_type = "string",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.AwsCloudFrontDistributionCacheBehavior = {
    type = "structure",
    members = {
        ViewerProtocolPolicy = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionCacheBehaviors = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsCloudFrontDistributionDefaultCacheBehavior = {
    type = "structure",
    members = {
        ViewerProtocolPolicy = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionLogging = {
    type = "structure",
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
    members = {
        Items = {
            type = "list",
            member_type = "number",
        },
        Quantity = {
            type = "number",
        },
    },
}

M.AwsCloudFrontDistributionOriginGroupFailover = {
    type = "structure",
    members = {
        StatusCodes = {
            type = "structure",
        },
    },
}

M.AwsCloudFrontDistributionOriginGroup = {
    type = "structure",
    members = {
        FailoverCriteria = {
            type = "structure",
        },
    },
}

M.AwsCloudFrontDistributionOriginGroups = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsCloudFrontDistributionOriginSslProtocols = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "string",
        },
        Quantity = {
            type = "number",
        },
    },
}

M.AwsCloudFrontDistributionOriginCustomOriginConfig = {
    type = "structure",
    members = {
        HttpPort = {
            type = "number",
        },
        HttpsPort = {
            type = "number",
        },
        OriginKeepaliveTimeout = {
            type = "number",
        },
        OriginProtocolPolicy = {
            type = "string",
        },
        OriginReadTimeout = {
            type = "number",
        },
        OriginSslProtocols = {
            type = "structure",
        },
    },
}

M.AwsCloudFrontDistributionOriginS3OriginConfig = {
    type = "structure",
    members = {
        OriginAccessIdentity = {
            type = "string",
        },
    },
}

M.AwsCloudFrontDistributionOriginItem = {
    type = "structure",
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
        S3OriginConfig = {
            type = "structure",
        },
        CustomOriginConfig = {
            type = "structure",
        },
    },
}

M.AwsCloudFrontDistributionOrigins = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsCloudFrontDistributionViewerCertificate = {
    type = "structure",
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
    members = {
        CacheBehaviors = {
            type = "structure",
        },
        DefaultCacheBehavior = {
            type = "structure",
        },
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
        Logging = {
            type = "structure",
        },
        Origins = {
            type = "structure",
        },
        OriginGroups = {
            type = "structure",
        },
        ViewerCertificate = {
            type = "structure",
        },
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
    members = {
        ActionsEnabled = {
            type = "boolean",
        },
        AlarmActions = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
        EvaluateLowSampleCountPercentile = {
            type = "string",
        },
        EvaluationPeriods = {
            type = "number",
        },
        ExtendedStatistic = {
            type = "string",
        },
        InsufficientDataActions = {
            type = "list",
            member_type = "string",
        },
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        OkActions = {
            type = "list",
            member_type = "string",
        },
        Period = {
            type = "number",
        },
        Statistic = {
            type = "string",
        },
        Threshold = {
            type = "number",
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
    members = {
        Certificate = {
            type = "string",
        },
        EnvironmentVariables = {
            type = "list",
            member_type = "structure",
        },
        PrivilegedMode = {
            type = "boolean",
        },
        ImagePullCredentialsType = {
            type = "string",
        },
        RegistryCredential = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails = {
    type = "structure",
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
    members = {
        CloudWatchLogs = {
            type = "structure",
        },
        S3Logs = {
            type = "structure",
        },
    },
}

M.AwsCodeBuildProjectSource = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        GitCloneDepth = {
            type = "number",
        },
        InsecureSsl = {
            type = "boolean",
        },
    },
}

M.AwsCodeBuildProjectVpcConfig = {
    type = "structure",
    members = {
        VpcId = {
            type = "string",
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsCodeBuildProjectDetails = {
    type = "structure",
    members = {
        EncryptionKey = {
            type = "string",
        },
        Artifacts = {
            type = "list",
            member_type = "structure",
        },
        Environment = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        Source = {
            type = "structure",
        },
        ServiceRole = {
            type = "string",
        },
        LogsConfig = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        SecondaryArtifacts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsDmsEndpointDetails = {
    type = "structure",
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
            type = "number",
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
    members = {
        ReplicationSubnetGroupIdentifier = {
            type = "string",
        },
    },
}

M.AwsDmsReplicationInstanceVpcSecurityGroupsDetails = {
    type = "structure",
    members = {
        VpcSecurityGroupId = {
            type = "string",
        },
    },
}

M.AwsDmsReplicationInstanceDetails = {
    type = "structure",
    members = {
        AllocatedStorage = {
            type = "number",
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
        ReplicationSubnetGroup = {
            type = "structure",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsDmsReplicationTaskDetails = {
    type = "structure",
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
    members = {
        NonKeyAttributes = {
            type = "list",
            member_type = "string",
        },
        ProjectionType = {
            type = "string",
        },
    },
}

M.AwsDynamoDbTableProvisionedThroughput = {
    type = "structure",
    members = {
        LastDecreaseDateTime = {
            type = "string",
        },
        LastIncreaseDateTime = {
            type = "string",
        },
        NumberOfDecreasesToday = {
            type = "number",
        },
        ReadCapacityUnits = {
            type = "number",
        },
        WriteCapacityUnits = {
            type = "number",
        },
    },
}

M.AwsDynamoDbTableGlobalSecondaryIndex = {
    type = "structure",
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
            type = "number",
        },
        IndexStatus = {
            type = "string",
        },
        ItemCount = {
            type = "number",
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
        },
        Projection = {
            type = "structure",
        },
        ProvisionedThroughput = {
            type = "structure",
        },
    },
}

M.AwsDynamoDbTableLocalSecondaryIndex = {
    type = "structure",
    members = {
        IndexArn = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
        },
        Projection = {
            type = "structure",
        },
    },
}

M.AwsDynamoDbTableProvisionedThroughputOverride = {
    type = "structure",
    members = {
        ReadCapacityUnits = {
            type = "number",
        },
    },
}

M.AwsDynamoDbTableReplicaGlobalSecondaryIndex = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        ProvisionedThroughputOverride = {
            type = "structure",
        },
    },
}

M.AwsDynamoDbTableReplica = {
    type = "structure",
    members = {
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        KmsMasterKeyId = {
            type = "string",
        },
        ProvisionedThroughputOverride = {
            type = "structure",
        },
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
    members = {
        AttributeDefinitions = {
            type = "list",
            member_type = "structure",
        },
        BillingModeSummary = {
            type = "structure",
        },
        CreationDateTime = {
            type = "string",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        GlobalTableVersion = {
            type = "string",
        },
        ItemCount = {
            type = "number",
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
        },
        LatestStreamArn = {
            type = "string",
        },
        LatestStreamLabel = {
            type = "string",
        },
        LocalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        Replicas = {
            type = "list",
            member_type = "structure",
        },
        RestoreSummary = {
            type = "structure",
        },
        SseDescription = {
            type = "structure",
        },
        StreamSpecification = {
            type = "structure",
        },
        TableId = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        TableSizeBytes = {
            type = "number",
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
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointAuthenticationOptionsFederatedAuthenticationDetails = {
    type = "structure",
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
    members = {
        ClientRootCertificateChain = {
            type = "string",
        },
    },
}

M.AwsEc2ClientVpnEndpointAuthenticationOptionsDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        ActiveDirectory = {
            type = "structure",
        },
        MutualAuthentication = {
            type = "structure",
        },
        FederatedAuthentication = {
            type = "structure",
        },
    },
}

M.AwsEc2ClientVpnEndpointClientConnectOptionsStatusDetails = {
    type = "structure",
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
    members = {
        Enabled = {
            type = "boolean",
        },
        LambdaFunctionArn = {
            type = "string",
        },
        Status = {
            type = "structure",
        },
    },
}

M.AwsEc2ClientVpnEndpointClientLoginBannerOptionsDetails = {
    type = "structure",
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
            member_type = "string",
        },
        SplitTunnel = {
            type = "boolean",
        },
        TransportProtocol = {
            type = "string",
        },
        VpnPort = {
            type = "number",
        },
        ServerCertificateArn = {
            type = "string",
        },
        AuthenticationOptions = {
            type = "list",
            member_type = "structure",
        },
        ConnectionLogOptions = {
            type = "structure",
        },
        SecurityGroupIdSet = {
            type = "list",
            member_type = "string",
        },
        VpcId = {
            type = "string",
        },
        SelfServicePortalUrl = {
            type = "string",
        },
        ClientConnectOptions = {
            type = "structure",
        },
        SessionTimeoutHours = {
            type = "number",
        },
        ClientLoginBannerOptions = {
            type = "structure",
        },
    },
}

M.AwsEc2EipDetails = {
    type = "structure",
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
    members = {
        HttpEndpoint = {
            type = "string",
        },
        HttpProtocolIpv6 = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "number",
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
    members = {
        State = {
            type = "string",
        },
    },
}

M.AwsEc2InstanceNetworkInterfacesDetails = {
    type = "structure",
    members = {
        NetworkInterfaceId = {
            type = "string",
        },
    },
}

M.AwsEc2InstanceDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        ImageId = {
            type = "string",
        },
        IpV4Addresses = {
            type = "list",
            member_type = "string",
        },
        IpV6Addresses = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        VirtualizationType = {
            type = "string",
        },
        MetadataOptions = {
            type = "structure",
        },
        Monitoring = {
            type = "structure",
        },
    },
}

M.AwsEc2LaunchTemplateDataBlockDeviceMappingSetEbsDetails = {
    type = "structure",
    members = {
        DeleteOnTermination = {
            type = "boolean",
        },
        Encrypted = {
            type = "boolean",
        },
        Iops = {
            type = "number",
        },
        KmsKeyId = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
        },
        Throughput = {
            type = "number",
        },
        VolumeSize = {
            type = "number",
        },
        VolumeType = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataBlockDeviceMappingSetDetails = {
    type = "structure",
    members = {
        DeviceName = {
            type = "string",
        },
        Ebs = {
            type = "structure",
        },
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
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        CapacityReservationTarget = {
            type = "structure",
        },
    },
}

M.AwsEc2LaunchTemplateDataCpuOptionsDetails = {
    type = "structure",
    members = {
        CoreCount = {
            type = "number",
        },
        ThreadsPerCore = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataCreditSpecificationDetails = {
    type = "structure",
    members = {
        CpuCredits = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataElasticGpuSpecificationSetDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataElasticInferenceAcceleratorSetDetails = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataEnclaveOptionsDetails = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsEc2LaunchTemplateDataHibernationOptionsDetails = {
    type = "structure",
    members = {
        Configured = {
            type = "boolean",
        },
    },
}

M.AwsEc2LaunchTemplateDataIamInstanceProfileDetails = {
    type = "structure",
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
    members = {
        BlockDurationMinutes = {
            type = "number",
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
    members = {
        MarketType = {
            type = "string",
        },
        SpotOptions = {
            type = "structure",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorCountDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsAcceleratorTotalMemoryMiBDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsBaselineEbsBandwidthMbpsDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsMemoryGiBPerVCpuDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsMemoryMiBDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsNetworkInterfaceCountDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsTotalLocalStorageGBDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsVCpuCountDetails = {
    type = "structure",
    members = {
        Max = {
            type = "number",
        },
        Min = {
            type = "number",
        },
    },
}

M.AwsEc2LaunchTemplateDataInstanceRequirementsDetails = {
    type = "structure",
    members = {
        AcceleratorCount = {
            type = "structure",
        },
        AcceleratorManufacturers = {
            type = "list",
            member_type = "string",
        },
        AcceleratorNames = {
            type = "list",
            member_type = "string",
        },
        AcceleratorTotalMemoryMiB = {
            type = "structure",
        },
        AcceleratorTypes = {
            type = "list",
            member_type = "string",
        },
        BareMetal = {
            type = "string",
        },
        BaselineEbsBandwidthMbps = {
            type = "structure",
        },
        BurstablePerformance = {
            type = "string",
        },
        CpuManufacturers = {
            type = "list",
            member_type = "string",
        },
        ExcludedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        InstanceGenerations = {
            type = "list",
            member_type = "string",
        },
        LocalStorage = {
            type = "string",
        },
        LocalStorageTypes = {
            type = "list",
            member_type = "string",
        },
        MemoryGiBPerVCpu = {
            type = "structure",
        },
        MemoryMiB = {
            type = "structure",
        },
        NetworkInterfaceCount = {
            type = "structure",
        },
        OnDemandMaxPricePercentageOverLowestPrice = {
            type = "number",
        },
        RequireHibernateSupport = {
            type = "boolean",
        },
        SpotMaxPricePercentageOverLowestPrice = {
            type = "number",
        },
        TotalLocalStorageGB = {
            type = "structure",
        },
        VCpuCount = {
            type = "structure",
        },
    },
}

M.AwsEc2LaunchTemplateDataLicenseSetDetails = {
    type = "structure",
    members = {
        LicenseConfigurationArn = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataMaintenanceOptionsDetails = {
    type = "structure",
    members = {
        AutoRecovery = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataMetadataOptionsDetails = {
    type = "structure",
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
            type = "number",
        },
        InstanceMetadataTags = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataMonitoringDetails = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv4PrefixesDetails = {
    type = "structure",
    members = {
        Ipv4Prefix = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6AddressesDetails = {
    type = "structure",
    members = {
        Ipv6Address = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetIpv6PrefixesDetails = {
    type = "structure",
    members = {
        Ipv6Prefix = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataNetworkInterfaceSetPrivateIpAddressesDetails = {
    type = "structure",
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
            type = "number",
        },
        Groups = {
            type = "list",
            member_type = "string",
        },
        InterfaceType = {
            type = "string",
        },
        Ipv4PrefixCount = {
            type = "number",
        },
        Ipv4Prefixes = {
            type = "list",
            member_type = "structure",
        },
        Ipv6AddressCount = {
            type = "number",
        },
        Ipv6Addresses = {
            type = "list",
            member_type = "structure",
        },
        Ipv6PrefixCount = {
            type = "number",
        },
        Ipv6Prefixes = {
            type = "list",
            member_type = "structure",
        },
        NetworkCardIndex = {
            type = "number",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        PrivateIpAddress = {
            type = "string",
        },
        PrivateIpAddresses = {
            type = "list",
            member_type = "structure",
        },
        SecondaryPrivateIpAddressCount = {
            type = "number",
        },
        SubnetId = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDataPlacementDetails = {
    type = "structure",
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
            type = "number",
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
    members = {
        BlockDeviceMappingSet = {
            type = "list",
            member_type = "structure",
        },
        CapacityReservationSpecification = {
            type = "structure",
        },
        CpuOptions = {
            type = "structure",
        },
        CreditSpecification = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ElasticInferenceAcceleratorSet = {
            type = "list",
            member_type = "structure",
        },
        EnclaveOptions = {
            type = "structure",
        },
        HibernationOptions = {
            type = "structure",
        },
        IamInstanceProfile = {
            type = "structure",
        },
        ImageId = {
            type = "string",
        },
        InstanceInitiatedShutdownBehavior = {
            type = "string",
        },
        InstanceMarketOptions = {
            type = "structure",
        },
        InstanceRequirements = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        MaintenanceOptions = {
            type = "structure",
        },
        MetadataOptions = {
            type = "structure",
        },
        Monitoring = {
            type = "structure",
        },
        NetworkInterfaceSet = {
            type = "list",
            member_type = "structure",
        },
        Placement = {
            type = "structure",
        },
        PrivateDnsNameOptions = {
            type = "structure",
        },
        RamDiskId = {
            type = "string",
        },
        SecurityGroupIdSet = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupSet = {
            type = "list",
            member_type = "string",
        },
        UserData = {
            type = "string",
        },
    },
}

M.AwsEc2LaunchTemplateDetails = {
    type = "structure",
    members = {
        LaunchTemplateName = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LaunchTemplateData = {
            type = "structure",
        },
        DefaultVersionNumber = {
            type = "number",
        },
        LatestVersionNumber = {
            type = "number",
        },
    },
}

M.AwsEc2NetworkAclAssociation = {
    type = "structure",
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
    members = {
        Code = {
            type = "number",
        },
        Type = {
            type = "number",
        },
    },
}

M.PortRangeFromTo = {
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

M.AwsEc2NetworkAclEntry = {
    type = "structure",
    members = {
        CidrBlock = {
            type = "string",
        },
        Egress = {
            type = "boolean",
        },
        IcmpTypeCode = {
            type = "structure",
        },
        Ipv6CidrBlock = {
            type = "string",
        },
        PortRange = {
            type = "structure",
        },
        Protocol = {
            type = "string",
        },
        RuleAction = {
            type = "string",
        },
        RuleNumber = {
            type = "number",
        },
    },
}

M.AwsEc2NetworkAclDetails = {
    type = "structure",
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
            member_type = "structure",
        },
        Entries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEc2NetworkInterfaceAttachment = {
    type = "structure",
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
            type = "number",
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
    members = {
        IpV6Address = {
            type = "string",
        },
    },
}

M.AwsEc2NetworkInterfacePrivateIpAddressDetail = {
    type = "structure",
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
    members = {
        Attachment = {
            type = "structure",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        SourceDestCheck = {
            type = "boolean",
        },
        IpV6Addresses = {
            type = "list",
            member_type = "structure",
        },
        PrivateIpAddresses = {
            type = "list",
            member_type = "structure",
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
    members = {
        GatewayId = {
            type = "string",
        },
    },
}

M.RouteSetDetails = {
    type = "structure",
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
    members = {
        AssociationSet = {
            type = "list",
            member_type = "structure",
        },
        OwnerId = {
            type = "string",
        },
        PropagatingVgwSet = {
            type = "list",
            member_type = "structure",
        },
        RouteTableId = {
            type = "string",
        },
        RouteSet = {
            type = "list",
            member_type = "structure",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupIpRange = {
    type = "structure",
    members = {
        CidrIp = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupIpv6Range = {
    type = "structure",
    members = {
        CidrIpv6 = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupPrefixListId = {
    type = "structure",
    members = {
        PrefixListId = {
            type = "string",
        },
    },
}

M.AwsEc2SecurityGroupUserIdGroupPair = {
    type = "structure",
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
    members = {
        IpProtocol = {
            type = "string",
        },
        FromPort = {
            type = "number",
        },
        ToPort = {
            type = "number",
        },
        UserIdGroupPairs = {
            type = "list",
            member_type = "structure",
        },
        IpRanges = {
            type = "list",
            member_type = "structure",
        },
        Ipv6Ranges = {
            type = "list",
            member_type = "structure",
        },
        PrefixListIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEc2SecurityGroupDetails = {
    type = "structure",
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
            member_type = "structure",
        },
        IpPermissionsEgress = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Ipv6CidrBlockAssociation = {
    type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.AwsEc2TransitGatewayDetails = {
    type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
    },
}

M.AwsEc2VolumeAttachment = {
    type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
    members = {
        CidrBlockAssociationSet = {
            type = "list",
            member_type = "structure",
        },
        Ipv6CidrBlockAssociationSet = {
            type = "list",
            member_type = "structure",
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
    members = {
        ServiceType = {
            type = "string",
        },
    },
}

M.AwsEc2VpcEndpointServiceDetails = {
    type = "structure",
    members = {
        AcceptanceRequired = {
            type = "boolean",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        BaseEndpointDnsNames = {
            type = "list",
            member_type = "string",
        },
        ManagesVpcEndpoints = {
            type = "boolean",
        },
        GatewayLoadBalancerArns = {
            type = "list",
            member_type = "string",
        },
        NetworkLoadBalancerArns = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.VpcInfoCidrBlockSetDetails = {
    type = "structure",
    members = {
        CidrBlock = {
            type = "string",
        },
    },
}

M.VpcInfoIpv6CidrBlockSetDetails = {
    type = "structure",
    members = {
        Ipv6CidrBlock = {
            type = "string",
        },
    },
}

M.VpcInfoPeeringOptionsDetails = {
    type = "structure",
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
    members = {
        CidrBlock = {
            type = "string",
        },
        CidrBlockSet = {
            type = "list",
            member_type = "structure",
        },
        Ipv6CidrBlockSet = {
            type = "list",
            member_type = "structure",
        },
        OwnerId = {
            type = "string",
        },
        PeeringOptions = {
            type = "structure",
        },
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
    members = {
        AccepterVpcInfo = {
            type = "structure",
        },
        ExpirationTime = {
            type = "string",
        },
        RequesterVpcInfo = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        VpcPeeringConnectionId = {
            type = "string",
        },
    },
}

M.AwsEc2VpnConnectionOptionsTunnelOptionsDetails = {
    type = "structure",
    members = {
        DpdTimeoutSeconds = {
            type = "number",
        },
        IkeVersions = {
            type = "list",
            member_type = "string",
        },
        OutsideIpAddress = {
            type = "string",
        },
        Phase1DhGroupNumbers = {
            type = "list",
            member_type = "number",
        },
        Phase1EncryptionAlgorithms = {
            type = "list",
            member_type = "string",
        },
        Phase1IntegrityAlgorithms = {
            type = "list",
            member_type = "string",
        },
        Phase1LifetimeSeconds = {
            type = "number",
        },
        Phase2DhGroupNumbers = {
            type = "list",
            member_type = "number",
        },
        Phase2EncryptionAlgorithms = {
            type = "list",
            member_type = "string",
        },
        Phase2IntegrityAlgorithms = {
            type = "list",
            member_type = "string",
        },
        Phase2LifetimeSeconds = {
            type = "number",
        },
        PreSharedKey = {
            type = "string",
        },
        RekeyFuzzPercentage = {
            type = "number",
        },
        RekeyMarginTimeSeconds = {
            type = "number",
        },
        ReplayWindowSize = {
            type = "number",
        },
        TunnelInsideCidr = {
            type = "string",
        },
    },
}

M.AwsEc2VpnConnectionOptionsDetails = {
    type = "structure",
    members = {
        StaticRoutesOnly = {
            type = "boolean",
        },
        TunnelOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEc2VpnConnectionRoutesDetails = {
    type = "structure",
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
    members = {
        AcceptedRouteCount = {
            type = "number",
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
            member_type = "structure",
        },
        Options = {
            type = "structure",
        },
        Routes = {
            type = "list",
            member_type = "structure",
        },
        TransitGatewayId = {
            type = "string",
        },
    },
}

M.AwsEcrContainerImageDetails = {
    type = "structure",
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
            member_type = "string",
        },
        ImagePublishedAt = {
            type = "string",
        },
    },
}

M.AwsEcrRepositoryImageScanningConfigurationDetails = {
    type = "structure",
    members = {
        ScanOnPush = {
            type = "boolean",
        },
    },
}

M.AwsEcrRepositoryLifecyclePolicyDetails = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
        ImageScanningConfiguration = {
            type = "structure",
        },
        ImageTagMutability = {
            type = "string",
        },
        LifecyclePolicy = {
            type = "structure",
        },
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
    members = {
        KmsKeyId = {
            type = "string",
        },
        LogConfiguration = {
            type = "structure",
        },
        Logging = {
            type = "string",
        },
    },
}

M.AwsEcsClusterConfigurationDetails = {
    type = "structure",
    members = {
        ExecuteCommandConfiguration = {
            type = "structure",
        },
    },
}

M.AwsEcsClusterDefaultCapacityProviderStrategyDetails = {
    type = "structure",
    members = {
        Base = {
            type = "number",
        },
        CapacityProvider = {
            type = "string",
        },
        Weight = {
            type = "number",
        },
    },
}

M.AwsEcsClusterDetails = {
    type = "structure",
    members = {
        ClusterArn = {
            type = "string",
        },
        ActiveServicesCount = {
            type = "number",
        },
        CapacityProviders = {
            type = "list",
            member_type = "string",
        },
        ClusterSettings = {
            type = "list",
            member_type = "structure",
        },
        Configuration = {
            type = "structure",
        },
        DefaultCapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        ClusterName = {
            type = "string",
        },
        RegisteredContainerInstancesCount = {
            type = "number",
        },
        RunningTasksCount = {
            type = "number",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsMountPoint = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        Image = {
            type = "string",
        },
        MountPoints = {
            type = "list",
            member_type = "structure",
        },
        Privileged = {
            type = "boolean",
        },
    },
}

M.AwsEcsServiceCapacityProviderStrategyDetails = {
    type = "structure",
    members = {
        Base = {
            type = "number",
        },
        CapacityProvider = {
            type = "string",
        },
        Weight = {
            type = "number",
        },
    },
}

M.AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails = {
    type = "structure",
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
    members = {
        DeploymentCircuitBreaker = {
            type = "structure",
        },
        MaximumPercent = {
            type = "number",
        },
        MinimumHealthyPercent = {
            type = "number",
        },
    },
}

M.AwsEcsServiceDeploymentControllerDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsServiceLoadBalancersDetails = {
    type = "structure",
    members = {
        ContainerName = {
            type = "string",
        },
        ContainerPort = {
            type = "number",
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
    members = {
        AssignPublicIp = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsEcsServiceNetworkConfigurationDetails = {
    type = "structure",
    members = {
        AwsVpcConfiguration = {
            type = "structure",
        },
    },
}

M.AwsEcsServicePlacementConstraintsDetails = {
    type = "structure",
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
    members = {
        ContainerName = {
            type = "string",
        },
        ContainerPort = {
            type = "number",
        },
        Port = {
            type = "number",
        },
        RegistryArn = {
            type = "string",
        },
    },
}

M.AwsEcsServiceDetails = {
    type = "structure",
    members = {
        CapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        Cluster = {
            type = "string",
        },
        DeploymentConfiguration = {
            type = "structure",
        },
        DeploymentController = {
            type = "structure",
        },
        DesiredCount = {
            type = "number",
        },
        EnableEcsManagedTags = {
            type = "boolean",
        },
        EnableExecuteCommand = {
            type = "boolean",
        },
        HealthCheckGracePeriodSeconds = {
            type = "number",
        },
        LaunchType = {
            type = "string",
        },
        LoadBalancers = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "string",
        },
        NetworkConfiguration = {
            type = "structure",
        },
        PlacementConstraints = {
            type = "list",
            member_type = "structure",
        },
        PlacementStrategies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        TaskDefinition = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails = {
    type = "structure",
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
    members = {
        Options = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails = {
    type = "structure",
    members = {
        Command = {
            type = "list",
            member_type = "string",
        },
        Interval = {
            type = "number",
        },
        Retries = {
            type = "number",
        },
        StartPeriod = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails = {
    type = "structure",
    members = {
        Add = {
            type = "list",
            member_type = "string",
        },
        Drop = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails = {
    type = "structure",
    members = {
        ContainerPath = {
            type = "string",
        },
        HostPath = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails = {
    type = "structure",
    members = {
        ContainerPath = {
            type = "string",
        },
        MountOptions = {
            type = "list",
            member_type = "string",
        },
        Size = {
            type = "number",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails = {
    type = "structure",
    members = {
        Capabilities = {
            type = "structure",
        },
        Devices = {
            type = "list",
            member_type = "structure",
        },
        InitProcessEnabled = {
            type = "boolean",
        },
        MaxSwap = {
            type = "number",
        },
        SharedMemorySize = {
            type = "number",
        },
        Swappiness = {
            type = "number",
        },
        Tmpfs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails = {
    type = "structure",
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
    members = {
        LogDriver = {
            type = "string",
        },
        Options = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SecretOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails = {
    type = "structure",
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
    members = {
        ContainerPort = {
            type = "number",
        },
        HostPort = {
            type = "number",
        },
        Protocol = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails = {
    type = "structure",
    members = {
        CredentialsParameter = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails = {
    type = "structure",
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
    members = {
        HardLimit = {
            type = "number",
        },
        Name = {
            type = "string",
        },
        SoftLimit = {
            type = "number",
        },
    },
}

M.AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails = {
    type = "structure",
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
    members = {
        Command = {
            type = "list",
            member_type = "string",
        },
        Cpu = {
            type = "number",
        },
        DependsOn = {
            type = "list",
            member_type = "structure",
        },
        DisableNetworking = {
            type = "boolean",
        },
        DnsSearchDomains = {
            type = "list",
            member_type = "string",
        },
        DnsServers = {
            type = "list",
            member_type = "string",
        },
        DockerLabels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DockerSecurityOptions = {
            type = "list",
            member_type = "string",
        },
        EntryPoint = {
            type = "list",
            member_type = "string",
        },
        Environment = {
            type = "list",
            member_type = "structure",
        },
        EnvironmentFiles = {
            type = "list",
            member_type = "structure",
        },
        Essential = {
            type = "boolean",
        },
        ExtraHosts = {
            type = "list",
            member_type = "structure",
        },
        FirelensConfiguration = {
            type = "structure",
        },
        HealthCheck = {
            type = "structure",
        },
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
            member_type = "string",
        },
        LinuxParameters = {
            type = "structure",
        },
        LogConfiguration = {
            type = "structure",
        },
        Memory = {
            type = "number",
        },
        MemoryReservation = {
            type = "number",
        },
        MountPoints = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "string",
        },
        PortMappings = {
            type = "list",
            member_type = "structure",
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
        RepositoryCredentials = {
            type = "structure",
        },
        ResourceRequirements = {
            type = "list",
            member_type = "structure",
        },
        Secrets = {
            type = "list",
            member_type = "structure",
        },
        StartTimeout = {
            type = "number",
        },
        StopTimeout = {
            type = "number",
        },
        SystemControls = {
            type = "list",
            member_type = "structure",
        },
        Ulimits = {
            type = "list",
            member_type = "structure",
        },
        User = {
            type = "string",
        },
        VolumesFrom = {
            type = "list",
            member_type = "structure",
        },
        WorkingDirectory = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionInferenceAcceleratorsDetails = {
    type = "structure",
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
    members = {
        ContainerName = {
            type = "string",
        },
        ProxyConfigurationProperties = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails = {
    type = "structure",
    members = {
        Autoprovision = {
            type = "boolean",
        },
        Driver = {
            type = "string",
        },
        DriverOpts = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Scope = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails = {
    type = "structure",
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
    members = {
        AuthorizationConfig = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesHostDetails = {
    type = "structure",
    members = {
        SourcePath = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionVolumesDetails = {
    type = "structure",
    members = {
        DockerVolumeConfiguration = {
            type = "structure",
        },
        EfsVolumeConfiguration = {
            type = "structure",
        },
        Host = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
    },
}

M.AwsEcsTaskDefinitionDetails = {
    type = "structure",
    members = {
        ContainerDefinitions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        ProxyConfiguration = {
            type = "structure",
        },
        RequiresCompatibilities = {
            type = "list",
            member_type = "string",
        },
        TaskRoleArn = {
            type = "string",
        },
        Volumes = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsEcsTaskVolumeHostDetails = {
    type = "structure",
    members = {
        SourcePath = {
            type = "string",
        },
    },
}

M.AwsEcsTaskVolumeDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Host = {
            type = "structure",
        },
    },
}

M.AwsEcsTaskDetails = {
    type = "structure",
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
            member_type = "structure",
        },
        Containers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEfsAccessPointPosixUserDetails = {
    type = "structure",
    members = {
        Gid = {
            type = "string",
        },
        SecondaryGids = {
            type = "list",
            member_type = "string",
        },
        Uid = {
            type = "string",
        },
    },
}

M.AwsEfsAccessPointRootDirectoryCreationInfoDetails = {
    type = "structure",
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
    members = {
        CreationInfo = {
            type = "structure",
        },
        Path = {
            type = "string",
        },
    },
}

M.AwsEfsAccessPointDetails = {
    type = "structure",
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
        PosixUser = {
            type = "structure",
        },
        RootDirectory = {
            type = "structure",
        },
    },
}

M.AwsEksClusterLoggingClusterLoggingDetails = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        Types = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsEksClusterLoggingDetails = {
    type = "structure",
    members = {
        ClusterLogging = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEksClusterResourcesVpcConfigDetails = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        EndpointPublicAccess = {
            type = "boolean",
        },
    },
}

M.AwsEksClusterDetails = {
    type = "structure",
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
        ResourcesVpcConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Logging = {
            type = "structure",
        },
    },
}

M.AwsElasticBeanstalkEnvironmentEnvironmentLink = {
    type = "structure",
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
            member_type = "structure",
        },
        EnvironmentName = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member_type = "structure",
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
        Tier = {
            type = "structure",
        },
        VersionLabel = {
            type = "string",
        },
    },
}

M.AwsElasticsearchDomainDomainEndpointOptions = {
    type = "structure",
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
    members = {
        AvailabilityZoneCount = {
            type = "number",
        },
    },
}

M.AwsElasticsearchDomainElasticsearchClusterConfigDetails = {
    type = "structure",
    members = {
        DedicatedMasterCount = {
            type = "number",
        },
        DedicatedMasterEnabled = {
            type = "boolean",
        },
        DedicatedMasterType = {
            type = "string",
        },
        InstanceCount = {
            type = "number",
        },
        InstanceType = {
            type = "string",
        },
        ZoneAwarenessConfig = {
            type = "structure",
        },
        ZoneAwarenessEnabled = {
            type = "boolean",
        },
    },
}

M.AwsElasticsearchDomainEncryptionAtRestOptions = {
    type = "structure",
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
    members = {
        IndexSlowLogs = {
            type = "structure",
        },
        SearchSlowLogs = {
            type = "structure",
        },
        AuditLogs = {
            type = "structure",
        },
    },
}

M.AwsElasticsearchDomainNodeToNodeEncryptionOptions = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsElasticsearchDomainServiceSoftwareOptions = {
    type = "structure",
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
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        VPCId = {
            type = "string",
        },
    },
}

M.AwsElasticsearchDomainDetails = {
    type = "structure",
    members = {
        AccessPolicies = {
            type = "string",
        },
        DomainEndpointOptions = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        ElasticsearchVersion = {
            type = "string",
        },
        ElasticsearchClusterConfig = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        LogPublishingOptions = {
            type = "structure",
        },
        NodeToNodeEncryptionOptions = {
            type = "structure",
        },
        ServiceSoftwareOptions = {
            type = "structure",
        },
        VPCOptions = {
            type = "structure",
        },
    },
}

M.AwsElbAppCookieStickinessPolicy = {
    type = "structure",
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
    members = {
        CookieExpirationPeriod = {
            type = "number",
        },
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerAccessLog = {
    type = "structure",
    members = {
        EmitInterval = {
            type = "number",
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
    members = {
        Enabled = {
            type = "boolean",
        },
        Timeout = {
            type = "number",
        },
    },
}

M.AwsElbLoadBalancerConnectionSettings = {
    type = "structure",
    members = {
        IdleTimeout = {
            type = "number",
        },
    },
}

M.AwsElbLoadBalancerCrossZoneLoadBalancing = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsElbLoadBalancerAttributes = {
    type = "structure",
    members = {
        AccessLog = {
            type = "structure",
        },
        ConnectionDraining = {
            type = "structure",
        },
        ConnectionSettings = {
            type = "structure",
        },
        CrossZoneLoadBalancing = {
            type = "structure",
        },
        AdditionalAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsElbLoadBalancerBackendServerDescription = {
    type = "structure",
    members = {
        InstancePort = {
            type = "number",
        },
        PolicyNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsElbLoadBalancerHealthCheck = {
    type = "structure",
    members = {
        HealthyThreshold = {
            type = "number",
        },
        Interval = {
            type = "number",
        },
        Target = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        UnhealthyThreshold = {
            type = "number",
        },
    },
}

M.AwsElbLoadBalancerInstance = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
        },
    },
}

M.AwsElbLoadBalancerListener = {
    type = "structure",
    members = {
        InstancePort = {
            type = "number",
        },
        InstanceProtocol = {
            type = "string",
        },
        LoadBalancerPort = {
            type = "number",
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
    members = {
        Listener = {
            type = "structure",
        },
        PolicyNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsElbLoadBalancerPolicies = {
    type = "structure",
    members = {
        AppCookieStickinessPolicies = {
            type = "list",
            member_type = "structure",
        },
        LbCookieStickinessPolicies = {
            type = "list",
            member_type = "structure",
        },
        OtherPolicies = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsElbLoadBalancerSourceSecurityGroup = {
    type = "structure",
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
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        BackendServerDescriptions = {
            type = "list",
            member_type = "structure",
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
        HealthCheck = {
            type = "structure",
        },
        Instances = {
            type = "list",
            member_type = "structure",
        },
        ListenerDescriptions = {
            type = "list",
            member_type = "structure",
        },
        LoadBalancerAttributes = {
            type = "structure",
        },
        LoadBalancerName = {
            type = "string",
        },
        Policies = {
            type = "structure",
        },
        Scheme = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        SourceSecurityGroup = {
            type = "structure",
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsElbv2LoadBalancerAttribute = {
    type = "structure",
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
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        State = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        LoadBalancerAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsEventSchemasRegistryDetails = {
    type = "structure",
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
    members = {
        EventBusArn = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointReplicationConfigDetails = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointRoutingConfigFailoverConfigPrimaryDetails = {
    type = "structure",
    members = {
        HealthCheck = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointRoutingConfigFailoverConfigSecondaryDetails = {
    type = "structure",
    members = {
        Route = {
            type = "string",
        },
    },
}

M.AwsEventsEndpointRoutingConfigFailoverConfigDetails = {
    type = "structure",
    members = {
        Primary = {
            type = "structure",
        },
        Secondary = {
            type = "structure",
        },
    },
}

M.AwsEventsEndpointRoutingConfigDetails = {
    type = "structure",
    members = {
        FailoverConfig = {
            type = "structure",
        },
    },
}

M.AwsEventsEndpointDetails = {
    type = "structure",
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
            member_type = "structure",
        },
        Name = {
            type = "string",
        },
        ReplicationConfig = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        RoutingConfig = {
            type = "structure",
        },
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesDnsLogsDetails = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesFlowLogsDetails = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesKubernetesAuditLogsDetails = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesKubernetesDetails = {
    type = "structure",
    members = {
        AuditLogs = {
            type = "structure",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesMalwareProtectionScanEc2InstanceWithFindingsEbsVolumesDetails = {
    type = "structure",
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
    members = {
        EbsVolumes = {
            type = "structure",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesMalwareProtectionDetails = {
    type = "structure",
    members = {
        ScanEc2InstanceWithFindings = {
            type = "structure",
        },
        ServiceRole = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesS3LogsDetails = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AwsGuardDutyDetectorDataSourcesDetails = {
    type = "structure",
    members = {
        CloudTrail = {
            type = "structure",
        },
        DnsLogs = {
            type = "structure",
        },
        FlowLogs = {
            type = "structure",
        },
        Kubernetes = {
            type = "structure",
        },
        MalwareProtection = {
            type = "structure",
        },
        S3Logs = {
            type = "structure",
        },
    },
}

M.AwsGuardDutyDetectorFeaturesDetails = {
    type = "structure",
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
    members = {
        DataSources = {
            type = "structure",
        },
        Features = {
            type = "list",
            member_type = "structure",
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
    members = {
        Attributes = {
            type = "structure",
        },
        SessionIssuer = {
            type = "structure",
        },
    },
}

M.AwsIamAccessKeyStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.AwsIamAccessKeyDetails = {
    type = "structure",
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
        SessionContext = {
            type = "structure",
        },
    },
}

M.AwsIamAttachedManagedPolicy = {
    type = "structure",
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
    members = {
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsIamGroupDetails = {
    type = "structure",
    members = {
        AttachedManagedPolicies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Path = {
            type = "string",
        },
    },
}

M.AwsIamInstanceProfileRole = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.AwsIamPermissionsBoundary = {
    type = "structure",
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
    members = {
        AttachmentCount = {
            type = "number",
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
            type = "number",
        },
        PolicyId = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
        PolicyVersionList = {
            type = "list",
            member_type = "structure",
        },
        UpdateDate = {
            type = "string",
        },
    },
}

M.AwsIamRolePolicy = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsIamRoleDetails = {
    type = "structure",
    members = {
        AssumeRolePolicyDocument = {
            type = "string",
        },
        AttachedManagedPolicies = {
            type = "list",
            member_type = "structure",
        },
        CreateDate = {
            type = "string",
        },
        InstanceProfileList = {
            type = "list",
            member_type = "structure",
        },
        PermissionsBoundary = {
            type = "structure",
        },
        RoleId = {
            type = "string",
        },
        RoleName = {
            type = "string",
        },
        RolePolicyList = {
            type = "list",
            member_type = "structure",
        },
        MaxSessionDuration = {
            type = "number",
        },
        Path = {
            type = "string",
        },
    },
}

M.AwsIamUserPolicy = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
        },
    },
}

M.AwsIamUserDetails = {
    type = "structure",
    members = {
        AttachedManagedPolicies = {
            type = "list",
            member_type = "structure",
        },
        CreateDate = {
            type = "string",
        },
        GroupList = {
            type = "list",
            member_type = "string",
        },
        Path = {
            type = "string",
        },
        PermissionsBoundary = {
            type = "structure",
        },
        UserId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        UserPolicyList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsKinesisStreamStreamEncryptionDetails = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        StreamEncryption = {
            type = "structure",
        },
        ShardCount = {
            type = "number",
        },
        RetentionPeriodHours = {
            type = "number",
        },
    },
}

M.AwsKmsKeyDetails = {
    type = "structure",
    members = {
        AWSAccountId = {
            type = "string",
        },
        CreationDate = {
            type = "number",
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
    members = {
        TargetArn = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionEnvironmentError = {
    type = "structure",
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
    members = {
        Variables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
    },
}

M.AwsLambdaFunctionLayer = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CodeSize = {
            type = "number",
        },
    },
}

M.AwsLambdaFunctionTracingConfig = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionVpcConfig = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.AwsLambdaFunctionDetails = {
    type = "structure",
    members = {
        Code = {
            type = "structure",
        },
        CodeSha256 = {
            type = "string",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        MasterArn = {
            type = "string",
        },
        MemorySize = {
            type = "number",
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
            type = "number",
        },
        TracingConfig = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        Version = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        PackageType = {
            type = "string",
        },
    },
}

M.AwsLambdaLayerVersionDetails = {
    type = "structure",
    members = {
        Version = {
            type = "number",
        },
        CompatibleRuntimes = {
            type = "list",
            member_type = "string",
        },
        CreatedDate = {
            type = "string",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationSaslIamDetails = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationSaslScramDetails = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationSaslDetails = {
    type = "structure",
    members = {
        Iam = {
            type = "structure",
        },
        Scram = {
            type = "structure",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationTlsDetails = {
    type = "structure",
    members = {
        CertificateAuthorityArnList = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationUnauthenticatedDetails = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsMskClusterClusterInfoClientAuthenticationDetails = {
    type = "structure",
    members = {
        Sasl = {
            type = "structure",
        },
        Unauthenticated = {
            type = "structure",
        },
        Tls = {
            type = "structure",
        },
    },
}

M.AwsMskClusterClusterInfoEncryptionInfoEncryptionAtRestDetails = {
    type = "structure",
    members = {
        DataVolumeKMSKeyId = {
            type = "string",
        },
    },
}

M.AwsMskClusterClusterInfoEncryptionInfoEncryptionInTransitDetails = {
    type = "structure",
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
    members = {
        EncryptionInTransit = {
            type = "structure",
        },
        EncryptionAtRest = {
            type = "structure",
        },
    },
}

M.AwsMskClusterClusterInfoDetails = {
    type = "structure",
    members = {
        EncryptionInfo = {
            type = "structure",
        },
        CurrentVersion = {
            type = "string",
        },
        NumberOfBrokerNodes = {
            type = "number",
        },
        ClusterName = {
            type = "string",
        },
        ClientAuthentication = {
            type = "structure",
        },
        EnhancedMonitoring = {
            type = "string",
        },
    },
}

M.AwsMskClusterDetails = {
    type = "structure",
    members = {
        ClusterInfo = {
            type = "structure",
        },
    },
}

M.AwsNetworkFirewallFirewallSubnetMappingsDetails = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
        },
    },
}

M.AwsNetworkFirewallFirewallDetails = {
    type = "structure",
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
            member_type = "structure",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.FirewallPolicyStatefulRuleGroupReferencesDetails = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.StatelessCustomPublishMetricActionDimension = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.StatelessCustomPublishMetricAction = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StatelessCustomActionDefinition = {
    type = "structure",
    members = {
        PublishMetricAction = {
            type = "structure",
        },
    },
}

M.FirewallPolicyStatelessCustomActionsDetails = {
    type = "structure",
    members = {
        ActionDefinition = {
            type = "structure",
        },
        ActionName = {
            type = "string",
        },
    },
}

M.FirewallPolicyStatelessRuleGroupReferencesDetails = {
    type = "structure",
    members = {
        Priority = {
            type = "number",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.FirewallPolicyDetails = {
    type = "structure",
    members = {
        StatefulRuleGroupReferences = {
            type = "list",
            member_type = "structure",
        },
        StatelessCustomActions = {
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
        StatelessRuleGroupReferences = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsNetworkFirewallFirewallPolicyDetails = {
    type = "structure",
    members = {
        FirewallPolicy = {
            type = "structure",
        },
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
    members = {
        GeneratedRulesType = {
            type = "string",
        },
        TargetTypes = {
            type = "list",
            member_type = "string",
        },
        Targets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleGroupSourceStatefulRulesHeaderDetails = {
    type = "structure",
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
    members = {
        Keyword = {
            type = "string",
        },
        Settings = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleGroupSourceStatefulRulesDetails = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        Header = {
            type = "structure",
        },
        RuleOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleGroupSourceCustomActionsDetails = {
    type = "structure",
    members = {
        ActionDefinition = {
            type = "structure",
        },
        ActionName = {
            type = "string",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts = {
    type = "structure",
    members = {
        FromPort = {
            type = "number",
        },
        ToPort = {
            type = "number",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesDestinations = {
    type = "structure",
    members = {
        AddressDefinition = {
            type = "string",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesSourcePorts = {
    type = "structure",
    members = {
        FromPort = {
            type = "number",
        },
        ToPort = {
            type = "number",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesSources = {
    type = "structure",
    members = {
        AddressDefinition = {
            type = "string",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributesTcpFlags = {
    type = "structure",
    members = {
        Flags = {
            type = "list",
            member_type = "string",
        },
        Masks = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleGroupSourceStatelessRuleMatchAttributes = {
    type = "structure",
    members = {
        DestinationPorts = {
            type = "list",
            member_type = "structure",
        },
        Destinations = {
            type = "list",
            member_type = "structure",
        },
        Protocols = {
            type = "list",
            member_type = "number",
        },
        SourcePorts = {
            type = "list",
            member_type = "structure",
        },
        Sources = {
            type = "list",
            member_type = "structure",
        },
        TcpFlags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleGroupSourceStatelessRuleDefinition = {
    type = "structure",
    members = {
        Actions = {
            type = "list",
            member_type = "string",
        },
        MatchAttributes = {
            type = "structure",
        },
    },
}

M.RuleGroupSourceStatelessRulesDetails = {
    type = "structure",
    members = {
        Priority = {
            type = "number",
        },
        RuleDefinition = {
            type = "structure",
        },
    },
}

M.RuleGroupSourceStatelessRulesAndCustomActionsDetails = {
    type = "structure",
    members = {
        CustomActions = {
            type = "list",
            member_type = "structure",
        },
        StatelessRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleGroupSource = {
    type = "structure",
    members = {
        RulesSourceList = {
            type = "structure",
        },
        RulesString = {
            type = "string",
        },
        StatefulRules = {
            type = "list",
            member_type = "structure",
        },
        StatelessRulesAndCustomActions = {
            type = "structure",
        },
    },
}

M.RuleGroupVariablesIpSetsDetails = {
    type = "structure",
    members = {
        Definition = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleGroupVariablesPortSetsDetails = {
    type = "structure",
    members = {
        Definition = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleGroupVariables = {
    type = "structure",
    members = {
        IpSets = {
            type = "structure",
        },
        PortSets = {
            type = "structure",
        },
    },
}

M.RuleGroupDetails = {
    type = "structure",
    members = {
        RuleVariables = {
            type = "structure",
        },
        RulesSource = {
            type = "structure",
        },
    },
}

M.AwsNetworkFirewallRuleGroupDetails = {
    type = "structure",
    members = {
        Capacity = {
            type = "number",
        },
        Description = {
            type = "string",
        },
        RuleGroup = {
            type = "structure",
        },
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
    members = {
        Enabled = {
            type = "boolean",
        },
        InternalUserDatabaseEnabled = {
            type = "boolean",
        },
        MasterUserOptions = {
            type = "structure",
        },
    },
}

M.AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails = {
    type = "structure",
    members = {
        AvailabilityZoneCount = {
            type = "number",
        },
    },
}

M.AwsOpenSearchServiceDomainClusterConfigDetails = {
    type = "structure",
    members = {
        InstanceCount = {
            type = "number",
        },
        WarmEnabled = {
            type = "boolean",
        },
        WarmCount = {
            type = "number",
        },
        DedicatedMasterEnabled = {
            type = "boolean",
        },
        ZoneAwarenessConfig = {
            type = "structure",
        },
        DedicatedMasterCount = {
            type = "number",
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
    members = {
        IndexSlowLogs = {
            type = "structure",
        },
        SearchSlowLogs = {
            type = "structure",
        },
        AuditLogs = {
            type = "structure",
        },
    },
}

M.AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails = {
    type = "structure",
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
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsOpenSearchServiceDomainDetails = {
    type = "structure",
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
        EncryptionAtRestOptions = {
            type = "structure",
        },
        NodeToNodeEncryptionOptions = {
            type = "structure",
        },
        ServiceSoftwareOptions = {
            type = "structure",
        },
        ClusterConfig = {
            type = "structure",
        },
        DomainEndpointOptions = {
            type = "structure",
        },
        VpcOptions = {
            type = "structure",
        },
        LogPublishingOptions = {
            type = "structure",
        },
        DomainEndpoints = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AdvancedSecurityOptions = {
            type = "structure",
        },
    },
}

M.AwsOrganizationScope = {
    type = "structure",
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
    members = {
        IsClusterWriter = {
            type = "boolean",
        },
        PromotionTier = {
            type = "number",
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
    members = {
        AllocatedStorage = {
            type = "number",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        ClusterCreateTime = {
            type = "string",
        },
        EnabledCloudWatchLogsExports = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        DbClusterParameterGroup = {
            type = "string",
        },
        DbSubnetGroup = {
            type = "string",
        },
        DbClusterOptionGroupMemberships = {
            type = "list",
            member_type = "structure",
        },
        DbClusterIdentifier = {
            type = "string",
        },
        DbClusterMembers = {
            type = "list",
            member_type = "structure",
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
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsRdsDbClusterSnapshotDetails = {
    type = "structure",
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        SnapshotCreateTime = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        AllocatedStorage = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.AwsRdsDbInstanceAssociatedRole = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
    },
}

M.AwsRdsDbSubnetGroupSubnet = {
    type = "structure",
    members = {
        SubnetIdentifier = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "structure",
        },
        SubnetStatus = {
            type = "string",
        },
    },
}

M.AwsRdsDbSubnetGroup = {
    type = "structure",
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
            member_type = "structure",
        },
        DbSubnetGroupArn = {
            type = "string",
        },
    },
}

M.AwsRdsDbInstanceEndpoint = {
    type = "structure",
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        HostedZoneId = {
            type = "string",
        },
    },
}

M.AwsRdsDbOptionGroupMembership = {
    type = "structure",
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
    members = {
        LogTypesToEnable = {
            type = "list",
            member_type = "string",
        },
        LogTypesToDisable = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AwsRdsDbProcessorFeature = {
    type = "structure",
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
    members = {
        DbInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "number",
        },
        MasterUserPassword = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            type = "number",
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
        PendingCloudWatchLogsExports = {
            type = "structure",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsRdsDbStatusInfo = {
    type = "structure",
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
    members = {
        AssociatedRoles = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        Endpoint = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
        },
        DbSecurityGroups = {
            type = "list",
            member_type = "string",
        },
        DbParameterGroups = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityZone = {
            type = "string",
        },
        DbSubnetGroup = {
            type = "structure",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PendingModifiedValues = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ReadReplicaDBClusterIdentifiers = {
            type = "list",
            member_type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "number",
        },
        OptionGroupMemberships = {
            type = "list",
            member_type = "structure",
        },
        CharacterSetName = {
            type = "string",
        },
        SecondaryAvailabilityZone = {
            type = "string",
        },
        StatusInfos = {
            type = "list",
            member_type = "structure",
        },
        StorageType = {
            type = "string",
        },
        DomainMemberships = {
            type = "list",
            member_type = "structure",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "number",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        PromotionTier = {
            type = "number",
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
            type = "number",
        },
        EnabledCloudWatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
        ListenerEndpoint = {
            type = "structure",
        },
        MaxAllocatedStorage = {
            type = "number",
        },
    },
}

M.AwsRdsDbSecurityGroupEc2SecurityGroup = {
    type = "structure",
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
            member_type = "structure",
        },
        IpRanges = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        OptionGroupName = {
            type = "string",
        },
        PercentProgress = {
            type = "number",
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
            member_type = "structure",
        },
        DbiResourceId = {
            type = "string",
        },
    },
}

M.AwsRdsEventSubscriptionDetails = {
    type = "structure",
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
            member_type = "string",
        },
        EventSubscriptionArn = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        SourceIdsList = {
            type = "list",
            member_type = "string",
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
    members = {
        ClusterParameterStatusList = {
            type = "list",
            member_type = "structure",
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
    members = {
        DestinationRegion = {
            type = "string",
        },
        ManualSnapshotRetentionPeriod = {
            type = "number",
        },
        RetentionPeriod = {
            type = "number",
        },
        SnapshotCopyGrantName = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterDeferredMaintenanceWindow = {
    type = "structure",
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
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "number",
        },
    },
}

M.AwsRedshiftClusterHsmStatus = {
    type = "structure",
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
    members = {
        AutomatedSnapshotRetentionPeriod = {
            type = "number",
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
            type = "number",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
    },
}

M.AwsRedshiftClusterResizeInfo = {
    type = "structure",
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
    members = {
        CurrentRestoreRateInMegaBytesPerSecond = {
            type = "number",
        },
        ElapsedTimeInSeconds = {
            type = "number",
        },
        EstimatedTimeToCompletionInSeconds = {
            type = "number",
        },
        ProgressInMegaBytes = {
            type = "number",
        },
        SnapshotSizeInMegaBytes = {
            type = "number",
        },
        Status = {
            type = "string",
        },
    },
}

M.AwsRedshiftClusterVpcSecurityGroup = {
    type = "structure",
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
    members = {
        AllowVersionUpgrade = {
            type = "boolean",
        },
        AutomatedSnapshotRetentionPeriod = {
            type = "number",
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
            member_type = "structure",
        },
        ClusterParameterGroups = {
            type = "list",
            member_type = "structure",
        },
        ClusterPublicKey = {
            type = "string",
        },
        ClusterRevisionNumber = {
            type = "string",
        },
        ClusterSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        ClusterSnapshotCopyStatus = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ElasticIpStatus = {
            type = "structure",
        },
        ElasticResizeNumberOfNodeOptions = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        Endpoint = {
            type = "structure",
        },
        EnhancedVpcRouting = {
            type = "boolean",
        },
        ExpectedNextSnapshotScheduleTime = {
            type = "string",
        },
        ExpectedNextSnapshotScheduleTimeStatus = {
            type = "string",
        },
        HsmStatus = {
            type = "structure",
        },
        IamRoles = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        MaintenanceTrackName = {
            type = "string",
        },
        ManualSnapshotRetentionPeriod = {
            type = "number",
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
            type = "number",
        },
        PendingActions = {
            type = "list",
            member_type = "string",
        },
        PendingModifiedValues = {
            type = "structure",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        ResizeInfo = {
            type = "structure",
        },
        RestoreStatus = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        LoggingStatus = {
            type = "structure",
        },
    },
}

M.AwsRoute53HostedZoneConfigDetails = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
    },
}

M.AwsRoute53HostedZoneObjectDetails = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Config = {
            type = "structure",
        },
    },
}

M.CloudWatchLogsLogGroupArnConfigDetails = {
    type = "structure",
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
    members = {
        CloudWatchLogsLogGroupArn = {
            type = "structure",
        },
    },
}

M.AwsRoute53HostedZoneVpcDetails = {
    type = "structure",
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
    members = {
        HostedZone = {
            type = "structure",
        },
        Vpcs = {
            type = "list",
            member_type = "structure",
        },
        NameServers = {
            type = "list",
            member_type = "string",
        },
        QueryLoggingConfig = {
            type = "structure",
        },
    },
}

M.AwsS3AccountPublicAccessBlockDetails = {
    type = "structure",
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
    members = {
        VpcId = {
            type = "string",
        },
    },
}

M.AwsS3AccessPointDetails = {
    type = "structure",
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
        PublicAccessBlockConfiguration = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails = {
    type = "structure",
    members = {
        DaysAfterInitiation = {
            type = "number",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails = {
    type = "structure",
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
    members = {
        Prefix = {
            type = "string",
        },
        Tag = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails = {
    type = "structure",
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
    members = {
        Operands = {
            type = "list",
            member_type = "structure",
        },
        Prefix = {
            type = "string",
        },
        Tag = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails = {
    type = "structure",
    members = {
        Predicate = {
            type = "structure",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails = {
    type = "structure",
    members = {
        Days = {
            type = "number",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails = {
    type = "structure",
    members = {
        Date = {
            type = "string",
        },
        Days = {
            type = "number",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationRulesDetails = {
    type = "structure",
    members = {
        AbortIncompleteMultipartUpload = {
            type = "structure",
        },
        ExpirationDate = {
            type = "string",
        },
        ExpirationInDays = {
            type = "number",
        },
        ExpiredObjectDeleteMarker = {
            type = "boolean",
        },
        Filter = {
            type = "structure",
        },
        ID = {
            type = "string",
        },
        NoncurrentVersionExpirationInDays = {
            type = "number",
        },
        NoncurrentVersionTransitions = {
            type = "list",
            member_type = "structure",
        },
        Prefix = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Transitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsS3BucketBucketLifecycleConfigurationDetails = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsS3BucketBucketVersioningConfiguration = {
    type = "structure",
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
    members = {
        FilterRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsS3BucketNotificationConfigurationFilter = {
    type = "structure",
    members = {
        S3KeyFilter = {
            type = "structure",
        },
    },
}

M.AwsS3BucketNotificationConfigurationDetail = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member_type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        Configurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsS3BucketWebsiteConfigurationRedirectTo = {
    type = "structure",
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
    members = {
        Condition = {
            type = "structure",
        },
        Redirect = {
            type = "structure",
        },
    },
}

M.AwsS3BucketWebsiteConfiguration = {
    type = "structure",
    members = {
        ErrorDocument = {
            type = "string",
        },
        IndexDocumentSuffix = {
            type = "string",
        },
        RedirectAllRequestsTo = {
            type = "structure",
        },
        RoutingRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsS3BucketObjectLockConfigurationRuleDefaultRetentionDetails = {
    type = "structure",
    members = {
        Days = {
            type = "number",
        },
        Mode = {
            type = "string",
        },
        Years = {
            type = "number",
        },
    },
}

M.AwsS3BucketObjectLockConfigurationRuleDetails = {
    type = "structure",
    members = {
        DefaultRetention = {
            type = "structure",
        },
    },
}

M.AwsS3BucketObjectLockConfiguration = {
    type = "structure",
    members = {
        ObjectLockEnabled = {
            type = "string",
        },
        Rule = {
            type = "structure",
        },
    },
}

M.AwsS3BucketServerSideEncryptionByDefault = {
    type = "structure",
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
    members = {
        ApplyServerSideEncryptionByDefault = {
            type = "structure",
        },
    },
}

M.AwsS3BucketServerSideEncryptionConfiguration = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsS3BucketDetails = {
    type = "structure",
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
        ServerSideEncryptionConfiguration = {
            type = "structure",
        },
        BucketLifecycleConfiguration = {
            type = "structure",
        },
        PublicAccessBlockConfiguration = {
            type = "structure",
        },
        AccessControlList = {
            type = "string",
        },
        BucketLoggingConfiguration = {
            type = "structure",
        },
        BucketWebsiteConfiguration = {
            type = "structure",
        },
        BucketNotificationConfiguration = {
            type = "structure",
        },
        BucketVersioningConfiguration = {
            type = "structure",
        },
        ObjectLockConfiguration = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
    },
}

M.AwsS3ObjectDetails = {
    type = "structure",
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
    members = {
        MinimumInstanceMetadataServiceVersion = {
            type = "string",
        },
    },
}

M.AwsSageMakerNotebookInstanceDetails = {
    type = "structure",
    members = {
        AcceleratorTypes = {
            type = "list",
            member_type = "string",
        },
        AdditionalCodeRepositories = {
            type = "list",
            member_type = "string",
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
        InstanceMetadataServiceConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SubnetId = {
            type = "string",
        },
        Url = {
            type = "string",
        },
        VolumeSizeInGB = {
            type = "number",
        },
    },
}

M.AwsSecretsManagerSecretRotationRules = {
    type = "structure",
    members = {
        AutomaticallyAfterDays = {
            type = "number",
        },
    },
}

M.AwsSecretsManagerSecretDetails = {
    type = "structure",
    members = {
        RotationRules = {
            type = "structure",
        },
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
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "list",
            member_type = "string",
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
    members = {
        Status = {
            type = "string",
        },
        RelatedRequirements = {
            type = "list",
            member_type = "string",
        },
        StatusReasons = {
            type = "list",
            member_type = "structure",
        },
        SecurityControlId = {
            type = "string",
        },
        AssociatedStandards = {
            type = "list",
            member_type = "structure",
        },
        SecurityControlParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NetworkAutonomousSystem = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Number = {
            type = "number",
        },
    },
}

M.ConnectionDirection = {
    INBOUND = "INBOUND",
    OUTBOUND = "OUTBOUND",
}

M.NetworkConnection = {
    type = "structure",
    members = {
        Direction = {
            type = "string",
        },
    },
}

M.NetworkGeoLocation = {
    type = "structure",
    members = {
        City = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Lat = {
            type = "number",
        },
        Lon = {
            type = "number",
        },
    },
}

M.NetworkEndpoint = {
    type = "structure",
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
            type = "number",
        },
        Location = {
            type = "structure",
        },
        AutonomousSystem = {
            type = "structure",
        },
        Connection = {
            type = "structure",
        },
    },
}

M.Indicator = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        SignalIndicators = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "string",
        },
        CreatedAt = {
            type = "number",
        },
        UpdatedAt = {
            type = "number",
        },
        FirstSeenAt = {
            type = "number",
        },
        LastSeenAt = {
            type = "number",
        },
        Severity = {
            type = "number",
        },
        Count = {
            type = "number",
        },
        ActorIds = {
            type = "list",
            member_type = "string",
        },
        EndpointIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Sequence = {
    type = "structure",
    members = {
        Uid = {
            type = "string",
        },
        Actors = {
            type = "list",
            member_type = "structure",
        },
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
        Signals = {
            type = "list",
            member_type = "structure",
        },
        SequenceIndicators = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Detection = {
    type = "structure",
    members = {
        Sequence = {
            type = "structure",
        },
    },
}

M.FindingProviderSeverity = {
    type = "structure",
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
    members = {
        Confidence = {
            type = "number",
        },
        Criticality = {
            type = "number",
        },
        RelatedFindings = {
            type = "list",
            member_type = "structure",
        },
        Severity = {
            type = "structure",
        },
        Types = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GeneratorDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Labels = {
            type = "list",
            member_type = "string",
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
    members = {
        Begin = {
            type = "number",
        },
        End = {
            type = "number",
        },
    },
}

M.Network = {
    type = "structure",
    members = {
        Direction = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        OpenPortRange = {
            type = "structure",
        },
        SourceIpV4 = {
            type = "string",
        },
        SourceIpV6 = {
            type = "string",
        },
        SourcePort = {
            type = "number",
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
            type = "number",
        },
        DestinationDomain = {
            type = "string",
        },
    },
}

M.NetworkPathComponentDetails = {
    type = "structure",
    members = {
        Address = {
            type = "list",
            member_type = "string",
        },
        PortRanges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NetworkHeader = {
    type = "structure",
    members = {
        Protocol = {
            type = "string",
        },
        Destination = {
            type = "structure",
        },
        Source = {
            type = "structure",
        },
    },
}

M.NetworkPathComponent = {
    type = "structure",
    members = {
        ComponentId = {
            type = "string",
        },
        ComponentType = {
            type = "string",
        },
        Egress = {
            type = "structure",
        },
        Ingress = {
            type = "structure",
        },
    },
}

M.Note = {
    type = "structure",
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
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstalledCount = {
            type = "number",
        },
        MissingCount = {
            type = "number",
        },
        FailedCount = {
            type = "number",
        },
        InstalledOtherCount = {
            type = "number",
        },
        InstalledRejectedCount = {
            type = "number",
        },
        InstalledPendingReboot = {
            type = "number",
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
    members = {
        Name = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Pid = {
            type = "number",
        },
        ParentPid = {
            type = "number",
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
    members = {
        Recommendation = {
            type = "structure",
        },
    },
}

M.Cell = {
    type = "structure",
    members = {
        Column = {
            type = "number",
        },
        Row = {
            type = "number",
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
    members = {
        Start = {
            type = "number",
        },
        End = {
            type = "number",
        },
        StartColumn = {
            type = "number",
        },
    },
}

M.Page = {
    type = "structure",
    members = {
        PageNumber = {
            type = "number",
        },
        LineRange = {
            type = "structure",
        },
        OffsetRange = {
            type = "structure",
        },
    },
}

M.Record = {
    type = "structure",
    members = {
        JsonPath = {
            type = "string",
        },
        RecordIndex = {
            type = "number",
        },
    },
}

M.Occurrences = {
    type = "structure",
    members = {
        LineRanges = {
            type = "list",
            member_type = "structure",
        },
        OffsetRanges = {
            type = "list",
            member_type = "structure",
        },
        Pages = {
            type = "list",
            member_type = "structure",
        },
        Records = {
            type = "list",
            member_type = "structure",
        },
        Cells = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CustomDataIdentifiersDetections = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Occurrences = {
            type = "structure",
        },
    },
}

M.CustomDataIdentifiersResult = {
    type = "structure",
    members = {
        Detections = {
            type = "list",
            member_type = "structure",
        },
        TotalCount = {
            type = "number",
        },
    },
}

M.SensitiveDataDetections = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        Occurrences = {
            type = "structure",
        },
    },
}

M.SensitiveDataResult = {
    type = "structure",
    members = {
        Category = {
            type = "string",
        },
        Detections = {
            type = "list",
            member_type = "structure",
        },
        TotalCount = {
            type = "number",
        },
    },
}

M.ClassificationStatus = {
    type = "structure",
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
    members = {
        MimeType = {
            type = "string",
        },
        SizeClassified = {
            type = "number",
        },
        AdditionalOccurrences = {
            type = "boolean",
        },
        Status = {
            type = "structure",
        },
        SensitiveData = {
            type = "list",
            member_type = "structure",
        },
        CustomDataIdentifiers = {
            type = "structure",
        },
    },
}

M.DataClassificationDetails = {
    type = "structure",
    members = {
        DetailedResultsLocation = {
            type = "string",
        },
        Result = {
            type = "structure",
        },
    },
}

M.AwsSnsTopicSubscription = {
    type = "structure",
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
    members = {
        KmsMasterKeyId = {
            type = "string",
        },
        Subscription = {
            type = "list",
            member_type = "structure",
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
    members = {
        KmsDataKeyReusePeriodSeconds = {
            type = "number",
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
    members = {
        Status = {
            type = "string",
        },
        CompliantCriticalCount = {
            type = "number",
        },
        CompliantHighCount = {
            type = "number",
        },
        CompliantMediumCount = {
            type = "number",
        },
        ExecutionType = {
            type = "string",
        },
        NonCompliantCriticalCount = {
            type = "number",
        },
        CompliantInformationalCount = {
            type = "number",
        },
        NonCompliantInformationalCount = {
            type = "number",
        },
        CompliantUnspecifiedCount = {
            type = "number",
        },
        NonCompliantLowCount = {
            type = "number",
        },
        NonCompliantHighCount = {
            type = "number",
        },
        CompliantLowCount = {
            type = "number",
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
            type = "number",
        },
        NonCompliantUnspecifiedCount = {
            type = "number",
        },
        PatchGroup = {
            type = "string",
        },
    },
}

M.AwsSsmPatch = {
    type = "structure",
    members = {
        ComplianceSummary = {
            type = "structure",
        },
    },
}

M.AwsSsmPatchComplianceDetails = {
    type = "structure",
    members = {
        Patch = {
            type = "structure",
        },
    },
}

M.AwsStepFunctionStateMachineLoggingConfigurationDestinationsCloudWatchLogsLogGroupDetails = {
    type = "structure",
    members = {
        LogGroupArn = {
            type = "string",
        },
    },
}

M.AwsStepFunctionStateMachineLoggingConfigurationDestinationsDetails = {
    type = "structure",
    members = {
        CloudWatchLogsLogGroup = {
            type = "structure",
        },
    },
}

M.AwsStepFunctionStateMachineLoggingConfigurationDetails = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
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
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AwsStepFunctionStateMachineDetails = {
    type = "structure",
    members = {
        Label = {
            type = "string",
        },
        LoggingConfiguration = {
            type = "structure",
        },
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
        TracingConfiguration = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRateBasedRuleMatchPredicate = {
    type = "structure",
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
            type = "number",
        },
        RuleId = {
            type = "string",
        },
        MatchPredicates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsWafRegionalRateBasedRuleMatchPredicate = {
    type = "structure",
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
            type = "number",
        },
        RuleId = {
            type = "string",
        },
        MatchPredicates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsWafRegionalRulePredicateListDetails = {
    type = "structure",
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
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PredicateList = {
            type = "list",
            member_type = "structure",
        },
        RuleId = {
            type = "string",
        },
    },
}

M.AwsWafRegionalRuleGroupRulesActionDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalRuleGroupRulesDetails = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
        },
        Priority = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.AwsWafRegionalWebAclRulesListActionDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalWebAclRulesListOverrideActionDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRegionalWebAclRulesListDetails = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
        },
        OverrideAction = {
            type = "structure",
        },
        Priority = {
            type = "number",
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
            member_type = "structure",
        },
        WebAclId = {
            type = "string",
        },
    },
}

M.AwsWafRulePredicateListDetails = {
    type = "structure",
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
    members = {
        MetricName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PredicateList = {
            type = "list",
            member_type = "structure",
        },
        RuleId = {
            type = "string",
        },
    },
}

M.AwsWafRuleGroupRulesActionDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafRuleGroupRulesDetails = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
        },
        Priority = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.AwsWafv2CustomHttpHeader = {
    type = "structure",
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
    members = {
        InsertHeaders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsWafv2ActionAllowDetails = {
    type = "structure",
    members = {
        CustomRequestHandling = {
            type = "structure",
        },
    },
}

M.AwsWafv2CustomResponseDetails = {
    type = "structure",
    members = {
        CustomResponseBodyKey = {
            type = "string",
        },
        ResponseCode = {
            type = "number",
        },
        ResponseHeaders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsWafv2ActionBlockDetails = {
    type = "structure",
    members = {
        CustomResponse = {
            type = "structure",
        },
    },
}

M.AwsWafv2RulesActionCaptchaDetails = {
    type = "structure",
    members = {
        CustomRequestHandling = {
            type = "structure",
        },
    },
}

M.AwsWafv2RulesActionCountDetails = {
    type = "structure",
    members = {
        CustomRequestHandling = {
            type = "structure",
        },
    },
}

M.AwsWafv2RulesActionDetails = {
    type = "structure",
    members = {
        Allow = {
            type = "structure",
        },
        Block = {
            type = "structure",
        },
        Captcha = {
            type = "structure",
        },
        Count = {
            type = "structure",
        },
    },
}

M.AwsWafv2VisibilityConfigDetails = {
    type = "structure",
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
    members = {
        Action = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        OverrideAction = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
        VisibilityConfig = {
            type = "structure",
        },
    },
}

M.AwsWafv2RuleGroupDetails = {
    type = "structure",
    members = {
        Capacity = {
            type = "number",
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
            member_type = "structure",
        },
        Scope = {
            type = "string",
        },
        VisibilityConfig = {
            type = "structure",
        },
    },
}

M.AwsWafv2WebAclCaptchaConfigImmunityTimePropertyDetails = {
    type = "structure",
    members = {
        ImmunityTime = {
            type = "number",
        },
    },
}

M.AwsWafv2WebAclCaptchaConfigDetails = {
    type = "structure",
    members = {
        ImmunityTimeProperty = {
            type = "structure",
        },
    },
}

M.AwsWafv2WebAclActionDetails = {
    type = "structure",
    members = {
        Allow = {
            type = "structure",
        },
        Block = {
            type = "structure",
        },
    },
}

M.AwsWafv2WebAclDetails = {
    type = "structure",
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
            type = "number",
        },
        CaptchaConfig = {
            type = "structure",
        },
        DefaultAction = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
        },
    },
}

M.WafAction = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.WafExcludedRule = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
        },
    },
}

M.WafOverrideAction = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.AwsWafWebAclRule = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
        },
        ExcludedRules = {
            type = "list",
            member_type = "structure",
        },
        OverrideAction = {
            type = "structure",
        },
        Priority = {
            type = "number",
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
    members = {
        Name = {
            type = "string",
        },
        DefaultAction = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        WebAclId = {
            type = "string",
        },
    },
}

M.AwsXrayEncryptionConfigDetails = {
    type = "structure",
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
            member_type = "structure",
        },
        Privileged = {
            type = "boolean",
        },
    },
}

M.ResourceDetails = {
    type = "structure",
    members = {
        AwsAutoScalingAutoScalingGroup = {
            type = "structure",
        },
        AwsCodeBuildProject = {
            type = "structure",
        },
        AwsCloudFrontDistribution = {
            type = "structure",
        },
        AwsEc2Instance = {
            type = "structure",
        },
        AwsEc2NetworkInterface = {
            type = "structure",
        },
        AwsEc2SecurityGroup = {
            type = "structure",
        },
        AwsEc2Volume = {
            type = "structure",
        },
        AwsEc2Vpc = {
            type = "structure",
        },
        AwsEc2Eip = {
            type = "structure",
        },
        AwsEc2Subnet = {
            type = "structure",
        },
        AwsEc2NetworkAcl = {
            type = "structure",
        },
        AwsElbv2LoadBalancer = {
            type = "structure",
        },
        AwsElasticBeanstalkEnvironment = {
            type = "structure",
        },
        AwsElasticsearchDomain = {
            type = "structure",
        },
        AwsS3Bucket = {
            type = "structure",
        },
        AwsS3AccountPublicAccessBlock = {
            type = "structure",
        },
        AwsS3Object = {
            type = "structure",
        },
        AwsSecretsManagerSecret = {
            type = "structure",
        },
        AwsIamAccessKey = {
            type = "structure",
        },
        AwsIamUser = {
            type = "structure",
        },
        AwsIamPolicy = {
            type = "structure",
        },
        AwsApiGatewayV2Stage = {
            type = "structure",
        },
        AwsApiGatewayV2Api = {
            type = "structure",
        },
        AwsDynamoDbTable = {
            type = "structure",
        },
        AwsApiGatewayStage = {
            type = "structure",
        },
        AwsApiGatewayRestApi = {
            type = "structure",
        },
        AwsCloudTrailTrail = {
            type = "structure",
        },
        AwsSsmPatchCompliance = {
            type = "structure",
        },
        AwsCertificateManagerCertificate = {
            type = "structure",
        },
        AwsRedshiftCluster = {
            type = "structure",
        },
        AwsElbLoadBalancer = {
            type = "structure",
        },
        AwsIamGroup = {
            type = "structure",
        },
        AwsIamRole = {
            type = "structure",
        },
        AwsKmsKey = {
            type = "structure",
        },
        AwsLambdaFunction = {
            type = "structure",
        },
        AwsLambdaLayerVersion = {
            type = "structure",
        },
        AwsRdsDbInstance = {
            type = "structure",
        },
        AwsSnsTopic = {
            type = "structure",
        },
        AwsSqsQueue = {
            type = "structure",
        },
        AwsWafWebAcl = {
            type = "structure",
        },
        AwsRdsDbSnapshot = {
            type = "structure",
        },
        AwsRdsDbClusterSnapshot = {
            type = "structure",
        },
        AwsRdsDbCluster = {
            type = "structure",
        },
        AwsEcsCluster = {
            type = "structure",
        },
        AwsEcsContainer = {
            type = "structure",
        },
        AwsEcsTaskDefinition = {
            type = "structure",
        },
        Container = {
            type = "structure",
        },
        Other = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AwsRdsEventSubscription = {
            type = "structure",
        },
        AwsEcsService = {
            type = "structure",
        },
        AwsAutoScalingLaunchConfiguration = {
            type = "structure",
        },
        AwsEc2VpnConnection = {
            type = "structure",
        },
        AwsEcrContainerImage = {
            type = "structure",
        },
        AwsOpenSearchServiceDomain = {
            type = "structure",
        },
        AwsEc2VpcEndpointService = {
            type = "structure",
        },
        AwsXrayEncryptionConfig = {
            type = "structure",
        },
        AwsWafRateBasedRule = {
            type = "structure",
        },
        AwsWafRegionalRateBasedRule = {
            type = "structure",
        },
        AwsEcrRepository = {
            type = "structure",
        },
        AwsEksCluster = {
            type = "structure",
        },
        AwsNetworkFirewallFirewallPolicy = {
            type = "structure",
        },
        AwsNetworkFirewallFirewall = {
            type = "structure",
        },
        AwsNetworkFirewallRuleGroup = {
            type = "structure",
        },
        AwsRdsDbSecurityGroup = {
            type = "structure",
        },
        AwsKinesisStream = {
            type = "structure",
        },
        AwsEc2TransitGateway = {
            type = "structure",
        },
        AwsEfsAccessPoint = {
            type = "structure",
        },
        AwsCloudFormationStack = {
            type = "structure",
        },
        AwsCloudWatchAlarm = {
            type = "structure",
        },
        AwsEc2VpcPeeringConnection = {
            type = "structure",
        },
        AwsWafRegionalRuleGroup = {
            type = "structure",
        },
        AwsWafRegionalRule = {
            type = "structure",
        },
        AwsWafRegionalWebAcl = {
            type = "structure",
        },
        AwsWafRule = {
            type = "structure",
        },
        AwsWafRuleGroup = {
            type = "structure",
        },
        AwsEcsTask = {
            type = "structure",
        },
        AwsBackupBackupVault = {
            type = "structure",
        },
        AwsBackupBackupPlan = {
            type = "structure",
        },
        AwsBackupRecoveryPoint = {
            type = "structure",
        },
        AwsEc2LaunchTemplate = {
            type = "structure",
        },
        AwsSageMakerNotebookInstance = {
            type = "structure",
        },
        AwsWafv2WebAcl = {
            type = "structure",
        },
        AwsWafv2RuleGroup = {
            type = "structure",
        },
        AwsEc2RouteTable = {
            type = "structure",
        },
        AwsAmazonMqBroker = {
            type = "structure",
        },
        AwsAppSyncGraphQlApi = {
            type = "structure",
        },
        AwsEventSchemasRegistry = {
            type = "structure",
        },
        AwsGuardDutyDetector = {
            type = "structure",
        },
        AwsStepFunctionStateMachine = {
            type = "structure",
        },
        AwsAthenaWorkGroup = {
            type = "structure",
        },
        AwsEventsEventbus = {
            type = "structure",
        },
        AwsDmsEndpoint = {
            type = "structure",
        },
        AwsEventsEndpoint = {
            type = "structure",
        },
        AwsDmsReplicationTask = {
            type = "structure",
        },
        AwsDmsReplicationInstance = {
            type = "structure",
        },
        AwsRoute53HostedZone = {
            type = "structure",
        },
        AwsMskCluster = {
            type = "structure",
        },
        AwsS3AccessPoint = {
            type = "structure",
        },
        AwsEc2ClientVpnEndpoint = {
            type = "structure",
        },
        CodeRepository = {
            type = "structure",
        },
    },
}

M.Partition = {
    AWS = "aws",
    AWS_CN = "aws-cn",
    AWS_US_GOV = "aws-us-gov",
}

M.Resource = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        DataClassification = {
            type = "structure",
        },
        Details = {
            type = "structure",
        },
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
    members = {
        Product = {
            type = "number",
        },
        Label = {
            type = "string",
        },
        Normalized = {
            type = "number",
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
    members = {
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        ItemCount = {
            type = "number",
        },
        FilePaths = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CodeVulnerabilitiesFilePath = {
    type = "structure",
    members = {
        EndLine = {
            type = "number",
        },
        FileName = {
            type = "string",
        },
        FilePath = {
            type = "string",
        },
        StartLine = {
            type = "number",
        },
    },
}

M.VulnerabilityCodeVulnerabilities = {
    type = "structure",
    members = {
        Cwes = {
            type = "list",
            member_type = "string",
        },
        FilePath = {
            type = "structure",
        },
        SourceArn = {
            type = "string",
        },
    },
}

M.Cvss = {
    type = "structure",
    members = {
        Version = {
            type = "string",
        },
        BaseScore = {
            type = "number",
        },
        BaseVector = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        Adjustments = {
            type = "list",
            member_type = "structure",
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
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VulnerablePackages = {
            type = "list",
            member_type = "structure",
        },
        Cvss = {
            type = "list",
            member_type = "structure",
        },
        RelatedVulnerabilities = {
            type = "list",
            member_type = "string",
        },
        Vendor = {
            type = "structure",
        },
        ReferenceUrls = {
            type = "list",
            member_type = "string",
        },
        FixAvailable = {
            type = "string",
        },
        EpssScore = {
            type = "number",
        },
        ExploitAvailable = {
            type = "string",
        },
        LastKnownExploitAt = {
            type = "string",
        },
        CodeVulnerabilities = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Workflow = {
    type = "structure",
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
            member_type = "string",
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
        Severity = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
        Criticality = {
            type = "number",
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
        Remediation = {
            type = "structure",
        },
        SourceUrl = {
            type = "string",
        },
        ProductFields = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UserDefinedFields = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Malware = {
            type = "list",
            member_type = "structure",
        },
        Network = {
            type = "structure",
        },
        NetworkPath = {
            type = "list",
            member_type = "structure",
        },
        Process = {
            type = "structure",
        },
        Threats = {
            type = "list",
            member_type = "structure",
        },
        ThreatIntelIndicators = {
            type = "list",
            member_type = "structure",
        },
        Resources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Compliance = {
            type = "structure",
        },
        VerificationState = {
            type = "string",
        },
        WorkflowState = {
            type = "string",
        },
        Workflow = {
            type = "structure",
        },
        RecordState = {
            type = "string",
        },
        RelatedFindings = {
            type = "list",
            member_type = "structure",
        },
        Note = {
            type = "structure",
        },
        Vulnerabilities = {
            type = "list",
            member_type = "structure",
        },
        PatchSummary = {
            type = "structure",
        },
        Action = {
            type = "structure",
        },
        FindingProviderFields = {
            type = "structure",
        },
        Sample = {
            type = "boolean",
        },
        GeneratorDetails = {
            type = "structure",
        },
        ProcessedAt = {
            type = "string",
        },
        AwsAccountName = {
            type = "string",
        },
        Detection = {
            type = "structure",
        },
    },
}

M.KeywordFilter = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.IpFilter = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
        },
    },
}

M.BooleanFilter = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
    },
}

M.AwsSecurityFindingFilters = {
    type = "structure",
    members = {
        ProductArn = {
            type = "list",
            member_type = "structure",
        },
        AwsAccountId = {
            type = "list",
            member_type = "structure",
        },
        Id = {
            type = "list",
            member_type = "structure",
        },
        GeneratorId = {
            type = "list",
            member_type = "structure",
        },
        Region = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "list",
            member_type = "structure",
        },
        FirstObservedAt = {
            type = "list",
            member_type = "structure",
        },
        LastObservedAt = {
            type = "list",
            member_type = "structure",
        },
        CreatedAt = {
            type = "list",
            member_type = "structure",
        },
        UpdatedAt = {
            type = "list",
            member_type = "structure",
        },
        SeverityProduct = {
            type = "list",
            member_type = "structure",
        },
        SeverityNormalized = {
            type = "list",
            member_type = "structure",
        },
        SeverityLabel = {
            type = "list",
            member_type = "structure",
        },
        Confidence = {
            type = "list",
            member_type = "structure",
        },
        Criticality = {
            type = "list",
            member_type = "structure",
        },
        Title = {
            type = "list",
            member_type = "structure",
        },
        Description = {
            type = "list",
            member_type = "structure",
        },
        RecommendationText = {
            type = "list",
            member_type = "structure",
        },
        SourceUrl = {
            type = "list",
            member_type = "structure",
        },
        ProductFields = {
            type = "list",
            member_type = "structure",
        },
        ProductName = {
            type = "list",
            member_type = "structure",
        },
        CompanyName = {
            type = "list",
            member_type = "structure",
        },
        UserDefinedFields = {
            type = "list",
            member_type = "structure",
        },
        MalwareName = {
            type = "list",
            member_type = "structure",
        },
        MalwareType = {
            type = "list",
            member_type = "structure",
        },
        MalwarePath = {
            type = "list",
            member_type = "structure",
        },
        MalwareState = {
            type = "list",
            member_type = "structure",
        },
        NetworkDirection = {
            type = "list",
            member_type = "structure",
        },
        NetworkProtocol = {
            type = "list",
            member_type = "structure",
        },
        NetworkSourceIpV4 = {
            type = "list",
            member_type = "structure",
        },
        NetworkSourceIpV6 = {
            type = "list",
            member_type = "structure",
        },
        NetworkSourcePort = {
            type = "list",
            member_type = "structure",
        },
        NetworkSourceDomain = {
            type = "list",
            member_type = "structure",
        },
        NetworkSourceMac = {
            type = "list",
            member_type = "structure",
        },
        NetworkDestinationIpV4 = {
            type = "list",
            member_type = "structure",
        },
        NetworkDestinationIpV6 = {
            type = "list",
            member_type = "structure",
        },
        NetworkDestinationPort = {
            type = "list",
            member_type = "structure",
        },
        NetworkDestinationDomain = {
            type = "list",
            member_type = "structure",
        },
        ProcessName = {
            type = "list",
            member_type = "structure",
        },
        ProcessPath = {
            type = "list",
            member_type = "structure",
        },
        ProcessPid = {
            type = "list",
            member_type = "structure",
        },
        ProcessParentPid = {
            type = "list",
            member_type = "structure",
        },
        ProcessLaunchedAt = {
            type = "list",
            member_type = "structure",
        },
        ProcessTerminatedAt = {
            type = "list",
            member_type = "structure",
        },
        ThreatIntelIndicatorType = {
            type = "list",
            member_type = "structure",
        },
        ThreatIntelIndicatorValue = {
            type = "list",
            member_type = "structure",
        },
        ThreatIntelIndicatorCategory = {
            type = "list",
            member_type = "structure",
        },
        ThreatIntelIndicatorLastObservedAt = {
            type = "list",
            member_type = "structure",
        },
        ThreatIntelIndicatorSource = {
            type = "list",
            member_type = "structure",
        },
        ThreatIntelIndicatorSourceUrl = {
            type = "list",
            member_type = "structure",
        },
        ResourceType = {
            type = "list",
            member_type = "structure",
        },
        ResourceId = {
            type = "list",
            member_type = "structure",
        },
        ResourcePartition = {
            type = "list",
            member_type = "structure",
        },
        ResourceRegion = {
            type = "list",
            member_type = "structure",
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceType = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceImageId = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceIpV4Addresses = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceIpV6Addresses = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceKeyName = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceIamInstanceProfileArn = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceVpcId = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceSubnetId = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsEc2InstanceLaunchedAt = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsS3BucketOwnerId = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsS3BucketOwnerName = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsIamAccessKeyUserName = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsIamAccessKeyPrincipalName = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsIamAccessKeyStatus = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsIamAccessKeyCreatedAt = {
            type = "list",
            member_type = "structure",
        },
        ResourceAwsIamUserUserName = {
            type = "list",
            member_type = "structure",
        },
        ResourceContainerName = {
            type = "list",
            member_type = "structure",
        },
        ResourceContainerImageId = {
            type = "list",
            member_type = "structure",
        },
        ResourceContainerImageName = {
            type = "list",
            member_type = "structure",
        },
        ResourceContainerLaunchedAt = {
            type = "list",
            member_type = "structure",
        },
        ResourceDetailsOther = {
            type = "list",
            member_type = "structure",
        },
        ComplianceStatus = {
            type = "list",
            member_type = "structure",
        },
        VerificationState = {
            type = "list",
            member_type = "structure",
        },
        WorkflowState = {
            type = "list",
            member_type = "structure",
        },
        WorkflowStatus = {
            type = "list",
            member_type = "structure",
        },
        RecordState = {
            type = "list",
            member_type = "structure",
        },
        RelatedFindingsProductArn = {
            type = "list",
            member_type = "structure",
        },
        RelatedFindingsId = {
            type = "list",
            member_type = "structure",
        },
        NoteText = {
            type = "list",
            member_type = "structure",
        },
        NoteUpdatedAt = {
            type = "list",
            member_type = "structure",
        },
        NoteUpdatedBy = {
            type = "list",
            member_type = "structure",
        },
        Keyword = {
            type = "list",
            member_type = "structure",
        },
        FindingProviderFieldsConfidence = {
            type = "list",
            member_type = "structure",
        },
        FindingProviderFieldsCriticality = {
            type = "list",
            member_type = "structure",
        },
        FindingProviderFieldsRelatedFindingsId = {
            type = "list",
            member_type = "structure",
        },
        FindingProviderFieldsRelatedFindingsProductArn = {
            type = "list",
            member_type = "structure",
        },
        FindingProviderFieldsSeverityLabel = {
            type = "list",
            member_type = "structure",
        },
        FindingProviderFieldsSeverityOriginal = {
            type = "list",
            member_type = "structure",
        },
        FindingProviderFieldsTypes = {
            type = "list",
            member_type = "structure",
        },
        Sample = {
            type = "list",
            member_type = "structure",
        },
        ComplianceSecurityControlId = {
            type = "list",
            member_type = "structure",
        },
        ComplianceAssociatedStandardsId = {
            type = "list",
            member_type = "structure",
        },
        VulnerabilitiesExploitAvailable = {
            type = "list",
            member_type = "structure",
        },
        VulnerabilitiesFixAvailable = {
            type = "list",
            member_type = "structure",
        },
        ComplianceSecurityControlParametersName = {
            type = "list",
            member_type = "structure",
        },
        ComplianceSecurityControlParametersValue = {
            type = "list",
            member_type = "structure",
        },
        AwsAccountName = {
            type = "list",
            member_type = "structure",
        },
        ResourceApplicationName = {
            type = "list",
            member_type = "structure",
        },
        ResourceApplicationArn = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AwsSecurityFindingIdentifier = {
    type = "structure",
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
    members = {
        AutomationRulesArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnprocessedAutomationRule = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
        ErrorCode = {
            type = "number",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteAutomationRulesOutput = {
    type = "structure",
    members = {
        ProcessedAutomationRules = {
            type = "list",
            member_type = "string",
        },
        UnprocessedAutomationRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDisableStandardsInput = {
    type = "structure",
    members = {
        StandardsSubscriptionArns = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        StandardsStatusReason = {
            type = "structure",
        },
    },
}

M.BatchDisableStandardsOutput = {
    type = "structure",
    members = {
        StandardsSubscriptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StandardsSubscriptionRequest = {
    type = "structure",
    members = {
        StandardsArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandardsInput = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchEnableStandardsInput = {
    type = "structure",
    members = {
        StandardsSubscriptionRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEnableStandardsOutput = {
    type = "structure",
    members = {
        StandardsSubscriptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetAutomationRulesInput = {
    type = "structure",
    members = {
        AutomationRulesArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAutomationRulesOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedAutomationRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Target = {
    type = "union",
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
    members = {
        Target = {
            type = "union",
        },
    },
}

M.BatchGetConfigurationPolicyAssociationsInput = {
    type = "structure",
    members = {
        ConfigurationPolicyAssociationIdentifiers = {
            type = "list",
            member_type = "structure",
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
    members = {
        ConfigurationPolicyAssociationIdentifiers = {
            type = "structure",
        },
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
    members = {
        ConfigurationPolicyAssociations = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedConfigurationPolicyAssociations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetSecurityControlsInput = {
    type = "structure",
    members = {
        SecurityControlIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParameterValue = {
    type = "union",
    members = {
        Integer = {
            type = "number",
        },
        IntegerList = {
            type = "list",
            member_type = "number",
        },
        Double = {
            type = "number",
        },
        String = {
            type = "string",
        },
        StringList = {
            type = "list",
            member_type = "string",
        },
        Boolean = {
            type = "boolean",
        },
        Enum = {
            type = "string",
        },
        EnumList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ParameterValueType = {
    DEFAULT = "DEFAULT",
    CUSTOM = "CUSTOM",
}

M.ParameterConfiguration = {
    type = "structure",
    members = {
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "union",
        },
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
            key_type = "string",
            value_type = "structure",
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
    members = {
        SecurityControls = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UnprocessedIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StandardsControlAssociationId = {
    type = "structure",
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
    members = {
        StandardsControlAssociationIds = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StandardsControlAssociationDetail = {
    type = "structure",
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
            member_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
            member_type = "string",
        },
    },
}

M.UnprocessedStandardsControlAssociation = {
    type = "structure",
    members = {
        StandardsControlAssociationId = {
            type = "structure",
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

M.BatchGetStandardsControlAssociationsOutput = {
    type = "structure",
    members = {
        StandardsControlAssociationDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UnprocessedAssociations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchImportFindingsInput = {
    type = "structure",
    members = {
        Findings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportFindingsError = {
    type = "structure",
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
    members = {
        FailedCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        SuccessCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        FailedFindings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateAutomationRulesRequestItem = {
    type = "structure",
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
            type = "number",
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
        Criteria = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateAutomationRulesInput = {
    type = "structure",
    members = {
        UpdateAutomationRulesRequestItems = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateAutomationRulesOutput = {
    type = "structure",
    members = {
        ProcessedAutomationRules = {
            type = "list",
            member_type = "string",
        },
        UnprocessedAutomationRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateFindingsInput = {
    type = "structure",
    members = {
        FindingIdentifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Note = {
            type = "structure",
        },
        Severity = {
            type = "structure",
        },
        VerificationState = {
            type = "string",
        },
        Confidence = {
            type = "number",
        },
        Criticality = {
            type = "number",
        },
        Types = {
            type = "list",
            member_type = "string",
        },
        UserDefinedFields = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Workflow = {
            type = "structure",
        },
        RelatedFindings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateFindingsUnprocessedFinding = {
    type = "structure",
    members = {
        FindingIdentifier = {
            type = "structure",
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

M.BatchUpdateFindingsOutput = {
    type = "structure",
    members = {
        ProcessedFindings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UnprocessedFindings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.OcsfFindingIdentifier = {
    type = "structure",
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
    members = {
        MetadataUids = {
            type = "list",
            member_type = "string",
        },
        FindingIdentifiers = {
            type = "list",
            member_type = "structure",
        },
        Comment = {
            type = "string",
        },
        SeverityId = {
            type = "number",
        },
        StatusId = {
            type = "number",
        },
    },
}

M.BatchUpdateFindingsV2ProcessedFinding = {
    type = "structure",
    members = {
        FindingIdentifier = {
            type = "structure",
        },
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
    members = {
        FindingIdentifier = {
            type = "structure",
        },
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
    members = {
        ProcessedFindings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UnprocessedFindings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        StandardsControlAssociationUpdates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UnprocessedStandardsControlAssociationUpdate = {
    type = "structure",
    members = {
        StandardsControlAssociationUpdate = {
            type = "structure",
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

M.BatchUpdateStandardsControlAssociationsOutput = {
    type = "structure",
    members = {
        UnprocessedAssociationUpdates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BooleanConfigurationOptions = {
    type = "structure",
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
    },
}

M.OcsfIpField = {
    EVIDENCES_DST_ENDPOINT_IP = "evidences.dst_endpoint.ip",
    EVIDENCES_SRC_ENDPOINT_IP = "evidences.src_endpoint.ip",
}

M.OcsfIpFilter = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
    },
}

M.DoubleConfigurationOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "number",
        },
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
}

M.EnumConfigurationOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        AllowedValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EnumListConfigurationOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "list",
            member_type = "string",
        },
        MaxItems = {
            type = "number",
        },
        AllowedValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.IntegerConfigurationOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "number",
        },
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
}

M.IntegerListConfigurationOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "list",
            member_type = "number",
        },
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
        },
        MaxItems = {
            type = "number",
        },
    },
}

M.StringConfigurationOptions = {
    type = "structure",
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
    members = {
        DefaultValue = {
            type = "list",
            member_type = "string",
        },
        Re2Expression = {
            type = "string",
        },
        MaxItems = {
            type = "number",
        },
        ExpressionDescription = {
            type = "string",
        },
    },
}

M.ConfigurationOptions = {
    type = "union",
    members = {
        Integer = {
            type = "structure",
        },
        IntegerList = {
            type = "structure",
        },
        Double = {
            type = "structure",
        },
        String = {
            type = "structure",
        },
        StringList = {
            type = "structure",
        },
        Boolean = {
            type = "structure",
        },
        Enum = {
            type = "structure",
        },
        EnumList = {
            type = "structure",
        },
    },
}

M.ConfigurationPolicySummary = {
    type = "structure",
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
        ProviderSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        RegionLinkingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkedRegions = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateAggregatorV2Output = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RuleStatus = {
            type = "string",
        },
        RuleOrder = {
            type = "number",
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
        Criteria = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAutomationRuleOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.CreateAutomationRuleV2Output = {
    type = "structure",
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
    members = {
        SecurityControlId = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.SecurityControlsConfiguration = {
    type = "structure",
    members = {
        EnabledSecurityControlIdentifiers = {
            type = "list",
            member_type = "string",
        },
        DisabledSecurityControlIdentifiers = {
            type = "list",
            member_type = "string",
        },
        SecurityControlCustomParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SecurityHubPolicy = {
    type = "structure",
    members = {
        ServiceEnabled = {
            type = "boolean",
        },
        EnabledStandardIdentifiers = {
            type = "list",
            member_type = "string",
        },
        SecurityControlsConfiguration = {
            type = "structure",
        },
    },
}

M.Policy = {
    type = "union",
    members = {
        SecurityHub = {
            type = "structure",
        },
    },
}

M.CreateConfigurationPolicyInput = {
    type = "structure",
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
        ConfigurationPolicy = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateConfigurationPolicyOutput = {
    type = "structure",
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
        },
        CreatedAt = {
            type = "timestamp",
        },
        ConfigurationPolicy = {
            type = "union",
        },
    },
}

M.JiraCloudProviderConfiguration = {
    type = "structure",
    members = {
        ProjectKey = {
            type = "string",
        },
    },
}

M.ServiceNowProviderConfiguration = {
    type = "structure",
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
    members = {
        JiraCloud = {
            type = "structure",
        },
        ServiceNow = {
            type = "structure",
        },
    },
}

M.CreateConnectorV2Input = {
    type = "structure",
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
        Provider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        KmsKeyArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateConnectorV2Output = {
    type = "structure",
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
    members = {
        RegionLinkingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Regions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateFindingAggregatorOutput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.CreateInsightInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
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
    },
}

M.CreateInsightOutput = {
    type = "structure",
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
    members = {
        AccountDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Result = {
    type = "structure",
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
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TicketCreationMode = {
    DRYRUN = "DRYRUN",
}

M.CreateTicketV2Input = {
    type = "structure",
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
        },
        Mode = {
            type = "string",
        },
    },
}

M.CreateTicketV2Output = {
    type = "structure",
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
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeclineInvitationsOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteActionTargetInput = {
    type = "structure",
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
}

M.DeleteAutomationRuleV2Input = {
    type = "structure",
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
}

M.DeleteConfigurationPolicyInput = {
    type = "structure",
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
}

M.DeleteConnectorV2Input = {
    type = "structure",
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
}

M.DeleteFindingAggregatorInput = {
    type = "structure",
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
}

M.DeleteInsightInput = {
    type = "structure",
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
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInvitationsOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteMembersInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeActionTargetsInput = {
    type = "structure",
    members = {
        ActionTargetArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DescribeActionTargetsOutput = {
    type = "structure",
    members = {
        ActionTargets = {
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

M.DescribeHubInput = {
    type = "structure",
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
        OrganizationConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeProductsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
        },
        IntegrationTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        Products = {
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

M.DescribeProductsV2Input = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
        },
        IntegrationV2Types = {
            type = "list",
            member_type = "string",
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
    members = {
        ProductsV2 = {
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

M.DescribeSecurityHubV2Input = {
    type = "structure",
}

M.DescribeSecurityHubV2Output = {
    type = "structure",
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
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.StandardsManagedBy = {
    type = "structure",
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
        StandardsManagedBy = {
            type = "structure",
        },
    },
}

M.DescribeStandardsOutput = {
    type = "structure",
    members = {
        Standards = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStandardsControlsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.StandardsControl = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeStandardsControlsOutput = {
    type = "structure",
    members = {
        Controls = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisableImportFindingsForProductInput = {
    type = "structure",
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
}

M.SecurityHubFeature = {
    SECURITY_HUB = "SecurityHub",
    SECURITY_HUB_V2 = "SecurityHubV2",
}

M.DisableOrganizationAdminAccountInput = {
    type = "structure",
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
}

M.DisableSecurityHubInput = {
    type = "structure",
}

M.DisableSecurityHubOutput = {
    type = "structure",
}

M.DisableSecurityHubV2Input = {
    type = "structure",
}

M.DisableSecurityHubV2Output = {
    type = "structure",
}

M.DisassociateFromAdministratorAccountInput = {
    type = "structure",
}

M.DisassociateFromAdministratorAccountOutput = {
    type = "structure",
}

M.DisassociateFromMasterAccountInput = {
    type = "structure",
}

M.DisassociateFromMasterAccountOutput = {
    type = "structure",
}

M.DisassociateMembersInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMembersOutput = {
    type = "structure",
}

M.EnableImportFindingsForProductInput = {
    type = "structure",
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
    members = {
        ProductSubscriptionArn = {
            type = "string",
        },
    },
}

M.EnableOrganizationAdminAccountInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
}

M.EnableSecurityHubV2Input = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EnableSecurityHubV2Output = {
    type = "structure",
    members = {
        HubV2Arn = {
            type = "string",
        },
    },
}

M.FindingAggregator = {
    type = "structure",
    members = {
        FindingAggregatorArn = {
            type = "string",
        },
    },
}

M.FindingHistoryUpdate = {
    type = "structure",
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
    members = {
        FindingIdentifier = {
            type = "structure",
        },
        UpdateTime = {
            type = "timestamp",
        },
        FindingCreated = {
            type = "boolean",
        },
        UpdateSource = {
            type = "structure",
        },
        Updates = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FindingScopes = {
    type = "structure",
    members = {
        AwsOrganizations = {
            type = "list",
            member_type = "structure",
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
    },
}

M.GetAdministratorAccountInput = {
    type = "structure",
}

M.Invitation = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        InvitationId = {
            type = "string",
        },
        InvitedAt = {
            type = "timestamp",
        },
        MemberStatus = {
            type = "string",
        },
    },
}

M.GetAdministratorAccountOutput = {
    type = "structure",
    members = {
        Administrator = {
            type = "structure",
        },
    },
}

M.GetAggregatorV2Input = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.GetAutomationRuleV2Input = {
    type = "structure",
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
        },
        CreatedAt = {
            type = "timestamp",
        },
        ConfigurationPolicy = {
            type = "union",
        },
    },
}

M.GetConfigurationPolicyAssociationInput = {
    type = "structure",
    members = {
        Target = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigurationPolicyAssociationOutput = {
    type = "structure",
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
            },
        },
    },
}

M.JiraCloudDetail = {
    type = "structure",
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
    members = {
        JiraCloud = {
            type = "structure",
        },
        ServiceNow = {
            type = "structure",
        },
    },
}

M.GetConnectorV2Output = {
    type = "structure",
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
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Health = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProviderDetail = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEnabledStandardsInput = {
    type = "structure",
    members = {
        StandardsSubscriptionArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetEnabledStandardsOutput = {
    type = "structure",
    members = {
        StandardsSubscriptions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetFindingAggregatorInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.GetFindingHistoryInput = {
    type = "structure",
    members = {
        FindingIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
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

M.GetFindingHistoryOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member_type = "structure",
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
    members = {
        Filters = {
            type = "structure",
        },
        SortCriteria = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetFindingsOutput = {
    type = "structure",
    members = {
        Findings = {
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
    members = {
        FieldValue = {
            type = "string",
        },
        Count = {
            type = "number",
        },
    },
}

M.GroupByResult = {
    type = "structure",
    members = {
        GroupByField = {
            type = "string",
        },
        GroupByValues = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetFindingStatisticsV2Output = {
    type = "structure",
    members = {
        GroupByResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OrganizationalUnitNotFoundException = {
    type = "structure",
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
    members = {
        Unknown = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Informational = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Low = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Medium = {
            type = "number",
            traits = {
                required = true,
            },
        },
        High = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Critical = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Fatal = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Other = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TrendsValues = {
    type = "structure",
    members = {
        SeverityTrends = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TrendsMetricsResult = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TrendsValues = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFindingsTrendsV2Output = {
    type = "structure",
    members = {
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrendsMetrics = {
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

M.GetFindingsV2Output = {
    type = "structure",
    members = {
        Findings = {
            type = "list",
            member_type = "document",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInsightResultsInput = {
    type = "structure",
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
    members = {
        GroupByAttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.InsightResults = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInsightResultsOutput = {
    type = "structure",
    members = {
        InsightResults = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInsightsInput = {
    type = "structure",
    members = {
        InsightArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.Insight = {
    type = "structure",
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
        Filters = {
            type = "structure",
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
    },
}

M.GetInsightsOutput = {
    type = "structure",
    members = {
        Insights = {
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

M.GetInvitationsCountInput = {
    type = "structure",
}

M.GetInvitationsCountOutput = {
    type = "structure",
    members = {
        InvitationsCount = {
            type = "number",
        },
    },
}

M.GetMasterAccountInput = {
    type = "structure",
}

M.GetMasterAccountOutput = {
    type = "structure",
    members = {
        Master = {
            type = "structure",
        },
    },
}

M.GetMembersInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Member = {
    type = "structure",
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
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetMembersOutput = {
    type = "structure",
    members = {
        Members = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourcesDateField = {
    RESOURCE_DETAIL_CAPTURE_TIME_DT = "ResourceDetailCaptureTime",
    RESOURCE_CREATION_TIME_DT = "ResourceCreationTime",
}

M.ResourcesDateFilter = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
    },
}

M.ResourcesMapField = {
    TAG = "ResourceTags",
}

M.ResourcesMapFilter = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
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
    members = {
        AwsOrganizations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetResourcesStatisticsV2Output = {
    type = "structure",
    members = {
        GroupByResults = {
            type = "list",
            member_type = "structure",
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
    members = {
        FieldName = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
    },
}

M.ResourcesCount = {
    type = "structure",
    members = {
        AllResources = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourcesTrendsValues = {
    type = "structure",
    members = {
        ResourcesCount = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourcesTrendsMetricsResult = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TrendsValues = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcesTrendsV2Output = {
    type = "structure",
    members = {
        Granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrendsMetrics = {
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

M.ResourceSeverityBreakdown = {
    type = "structure",
    members = {
        Other = {
            type = "number",
        },
        Fatal = {
            type = "number",
        },
        Critical = {
            type = "number",
        },
        High = {
            type = "number",
        },
        Medium = {
            type = "number",
        },
        Low = {
            type = "number",
        },
        Informational = {
            type = "number",
        },
        Unknown = {
            type = "number",
        },
    },
}

M.ResourceFindingsSummary = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Severities = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
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
    members = {
        Resources = {
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

M.GetSecurityControlDefinitionInput = {
    type = "structure",
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
    members = {
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationOptions = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.SecurityControlDefinition = {
    type = "structure",
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
            member_type = "string",
        },
        ParameterDefinitions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GetSecurityControlDefinitionOutput = {
    type = "structure",
    members = {
        SecurityControlDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InviteMembersInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InviteMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JiraCloudUpdateConfiguration = {
    type = "structure",
    members = {
        ProjectKey = {
            type = "string",
        },
    },
}

M.ListAggregatorsV2Input = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListAggregatorsV2Output = {
    type = "structure",
    members = {
        AggregatorsV2 = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAutomationRulesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListAutomationRulesOutput = {
    type = "structure",
    members = {
        AutomationRulesMetadata = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAutomationRulesV2Input = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListAutomationRulesV2Output = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationPoliciesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListConfigurationPoliciesOutput = {
    type = "structure",
    members = {
        ConfigurationPolicySummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationPolicyAssociationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.ListConfigurationPolicyAssociationsOutput = {
    type = "structure",
    members = {
        ConfigurationPolicyAssociationSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectorsV2Input = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        NextToken = {
            type = "string",
        },
        Connectors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEnabledProductsForImportInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListEnabledProductsForImportOutput = {
    type = "structure",
    members = {
        ProductSubscriptions = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFindingAggregatorsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListFindingAggregatorsOutput = {
    type = "structure",
    members = {
        FindingAggregators = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInvitationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        Invitations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    members = {
        OnlyAssociated = {
            type = "boolean",
            traits = {
                http_query = "OnlyAssociated",
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        Members = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrganizationAdminAccountsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        AdminAccounts = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListSecurityControlDefinitionsOutput = {
    type = "structure",
    members = {
        SecurityControlDefinitions = {
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

M.ListStandardsControlAssociationsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.StandardsControlAssociationSummary = {
    type = "structure",
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
            member_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
    members = {
        StandardsControlAssociationSummaries = {
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

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ServiceNowUpdateConfiguration = {
    type = "structure",
    members = {
        SecretArn = {
            type = "string",
        },
    },
}

M.ProviderUpdateConfiguration = {
    type = "union",
    members = {
        JiraCloud = {
            type = "structure",
        },
        ServiceNow = {
            type = "structure",
        },
    },
}

M.RegisterConnectorV2Input = {
    type = "structure",
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
    members = {
        ConfigurationPolicyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.StartConfigurationPolicyAssociationOutput = {
    type = "structure",
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
    members = {
        Target = {
            type = "union",
        },
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
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateActionTargetInput = {
    type = "structure",
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
}

M.UpdateAggregatorV2Input = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateAggregatorV2Output = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateAutomationRuleV2Output = {
    type = "structure",
}

M.UpdateConfigurationPolicyInput = {
    type = "structure",
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
        ConfigurationPolicy = {
            type = "union",
        },
    },
}

M.UpdateConfigurationPolicyOutput = {
    type = "structure",
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
        },
        CreatedAt = {
            type = "timestamp",
        },
        ConfigurationPolicy = {
            type = "union",
        },
    },
}

M.UpdateConnectorV2Input = {
    type = "structure",
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
        Provider = {
            type = "union",
        },
    },
}

M.UpdateConnectorV2Output = {
    type = "structure",
}

M.UpdateFindingAggregatorInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateFindingAggregatorOutput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateFindingsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Note = {
            type = "structure",
        },
        RecordState = {
            type = "string",
        },
    },
}

M.UpdateFindingsOutput = {
    type = "structure",
}

M.UpdateInsightInput = {
    type = "structure",
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
        Filters = {
            type = "structure",
        },
        GroupByAttribute = {
            type = "string",
        },
    },
}

M.UpdateInsightOutput = {
    type = "structure",
}

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
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
        OrganizationConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
}

M.UpdateSecurityControlInput = {
    type = "structure",
    members = {
        SecurityControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
}

M.UpdateSecurityHubConfigurationInput = {
    type = "structure",
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
}

M.UpdateStandardsControlInput = {
    type = "structure",
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
}

M.CompositeFilter = {
    type = "structure",
    members = {
        StringFilters = {
            type = "list",
            member_type = "structure",
        },
        DateFilters = {
            type = "list",
            member_type = "structure",
        },
        BooleanFilters = {
            type = "list",
            member_type = "structure",
        },
        NumberFilters = {
            type = "list",
            member_type = "structure",
        },
        MapFilters = {
            type = "list",
            member_type = "structure",
        },
        IpFilters = {
            type = "list",
            member_type = "structure",
        },
        NestedCompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        Operator = {
            type = "string",
        },
    },
}

M.FindingsTrendsCompositeFilter = {
    type = "structure",
    members = {
        StringFilters = {
            type = "list",
            member_type = "structure",
        },
        NestedCompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        Operator = {
            type = "string",
        },
    },
}

M.ResourcesCompositeFilter = {
    type = "structure",
    members = {
        StringFilters = {
            type = "list",
            member_type = "structure",
        },
        DateFilters = {
            type = "list",
            member_type = "structure",
        },
        NumberFilters = {
            type = "list",
            member_type = "structure",
        },
        MapFilters = {
            type = "list",
            member_type = "structure",
        },
        NestedCompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        Operator = {
            type = "string",
        },
    },
}

M.ResourcesTrendsCompositeFilter = {
    type = "structure",
    members = {
        StringFilters = {
            type = "list",
            member_type = "structure",
        },
        NestedCompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        Operator = {
            type = "string",
        },
    },
}

M.FindingsTrendsFilters = {
    type = "structure",
    members = {
        CompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.OcsfFindingFilters = {
    type = "structure",
    members = {
        CompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.ResourcesFilters = {
    type = "structure",
    members = {
        CompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.ResourcesTrendsFilters = {
    type = "structure",
    members = {
        CompositeFilters = {
            type = "list",
            member_type = "structure",
        },
        CompositeOperator = {
            type = "string",
        },
    },
}

M.Criteria = {
    type = "union",
    members = {
        OcsfFindingCriteria = {
            type = "structure",
        },
    },
}

M.GetFindingsTrendsV2Input = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
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

M.GetFindingsV2Input = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        Scopes = {
            type = "structure",
        },
        SortCriteria = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetResourcesTrendsV2Input = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
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

M.GetResourcesV2Input = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        Scopes = {
            type = "structure",
        },
        SortCriteria = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GroupByRule = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
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
    members = {
        GroupByField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
    },
}

M.CreateAutomationRuleV2Input = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Criteria = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.GetAutomationRuleV2Output = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
        RuleId = {
            type = "string",
        },
        RuleOrder = {
            type = "number",
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
        Criteria = {
            type = "union",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.UpdateAutomationRuleV2Input = {
    type = "structure",
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        RuleName = {
            type = "string",
        },
        Criteria = {
            type = "union",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetFindingStatisticsV2Input = {
    type = "structure",
    members = {
        GroupByRules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Scopes = {
            type = "structure",
        },
        SortOrder = {
            type = "string",
        },
        MaxStatisticResults = {
            type = "number",
        },
    },
}

M.GetResourcesStatisticsV2Input = {
    type = "structure",
    members = {
        GroupByRules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Scopes = {
            type = "structure",
        },
        SortOrder = {
            type = "string",
        },
        MaxStatisticResults = {
            type = "number",
        },
    },
}

return M
