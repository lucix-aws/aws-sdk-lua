local M = {}

M.AcceptInvitationInput = {
    type = "structure",
    id = "AcceptInvitationInput",
    members = {
        GraphArn = {
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

M.ErrorCode = {
    InvalidGraphArn = "INVALID_GRAPH_ARN",
    InvalidRequestBody = "INVALID_REQUEST_BODY",
    InternalError = "INTERNAL_ERROR",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorCodeReason = {
            type = "string",
        },
        SubErrorCode = {
            type = "string",
        },
        SubErrorCodeReason = {
            type = "string",
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
        ErrorCode = {
            type = "string",
        },
        ErrorCodeReason = {
            type = "string",
        },
    },
}

M.Account = {
    type = "structure",
    id = "Account",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Administrator = {
    type = "structure",
    id = "Administrator",
    members = {
        AccountId = {
            type = "string",
        },
        GraphArn = {
            type = "string",
        },
        DelegationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchGetGraphMemberDatasourcesInput = {
    type = "structure",
    id = "BatchGetGraphMemberDatasourcesInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DatasourcePackage = {
    DETECTIVE_CORE = "DETECTIVE_CORE",
    EKS_AUDIT = "EKS_AUDIT",
    ASFF_SECURITYHUB_FINDING = "ASFF_SECURITYHUB_FINDING",
}

M.DatasourcePackageIngestState = {
    STARTED = "STARTED",
    STOPPED = "STOPPED",
    DISABLED = "DISABLED",
}

M.TimestampForCollection = {
    type = "structure",
    id = "TimestampForCollection",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.MembershipDatasources = {
    type = "structure",
    id = "MembershipDatasources",
    members = {
        AccountId = {
            type = "string",
        },
        GraphArn = {
            type = "string",
        },
        DatasourcePackageIngestHistory = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.UnprocessedAccount = {
    type = "structure",
    id = "UnprocessedAccount",
    members = {
        AccountId = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.BatchGetGraphMemberDatasourcesOutput = {
    type = "structure",
    id = "BatchGetGraphMemberDatasourcesOutput",
    members = {
        MemberDatasources = {
            type = "list",
            member = M.MembershipDatasources,
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
        },
    },
}

M.BatchGetMembershipDatasourcesInput = {
    type = "structure",
    id = "BatchGetMembershipDatasourcesInput",
    members = {
        GraphArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UnprocessedGraph = {
    type = "structure",
    id = "UnprocessedGraph",
    members = {
        GraphArn = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.BatchGetMembershipDatasourcesOutput = {
    type = "structure",
    id = "BatchGetMembershipDatasourcesOutput",
    members = {
        MembershipDatasources = {
            type = "list",
            member = M.MembershipDatasources,
        },
        UnprocessedGraphs = {
            type = "list",
            member = M.UnprocessedGraph,
        },
    },
}

M.CreateGraphInput = {
    type = "structure",
    id = "CreateGraphInput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateGraphOutput = {
    type = "structure",
    id = "CreateGraphOutput",
    members = {
        GraphArn = {
            type = "string",
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
        Resources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateMembersInput = {
    type = "structure",
    id = "CreateMembersInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        DisableEmailNotification = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Accounts = {
            type = "list",
            member = M.Account,
            traits = {
                required = true,
            },
        },
    },
}

M.MemberDisabledReason = {
    VOLUME_TOO_HIGH = "VOLUME_TOO_HIGH",
    VOLUME_UNKNOWN = "VOLUME_UNKNOWN",
}

M.InvitationType = {
    INVITATION = "INVITATION",
    ORGANIZATION = "ORGANIZATION",
}

M.MemberStatus = {
    INVITED = "INVITED",
    VERIFICATION_IN_PROGRESS = "VERIFICATION_IN_PROGRESS",
    VERIFICATION_FAILED = "VERIFICATION_FAILED",
    ENABLED = "ENABLED",
    ACCEPTED_BUT_DISABLED = "ACCEPTED_BUT_DISABLED",
}

M.DatasourcePackageUsageInfo = {
    type = "structure",
    id = "DatasourcePackageUsageInfo",
    members = {
        VolumeUsageInBytes = {
            type = "long",
        },
        VolumeUsageUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.MemberDetail = {
    type = "structure",
    id = "MemberDetail",
    members = {
        AccountId = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        GraphArn = {
            type = "string",
        },
        MasterId = {
            type = "string",
        },
        AdministratorId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DisabledReason = {
            type = "string",
        },
        InvitedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        VolumeUsageInBytes = {
            type = "long",
        },
        VolumeUsageUpdatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        PercentOfGraphUtilization = {
            type = "double",
        },
        PercentOfGraphUtilizationUpdatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        InvitationType = {
            type = "string",
        },
        VolumeUsageByDatasourcePackage = {
            type = "map",
            key = { type = "string" },
            value = M.DatasourcePackageUsageInfo,
        },
        DatasourcePackageIngestStates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateMembersOutput = {
    type = "structure",
    id = "CreateMembersOutput",
    members = {
        Members = {
            type = "list",
            member = M.MemberDetail,
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
        },
    },
}

M.DeleteGraphInput = {
    type = "structure",
    id = "DeleteGraphInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGraphOutput = {
    type = "structure",
    id = "DeleteGraphOutput",
}

M.DeleteMembersInput = {
    type = "structure",
    id = "DeleteMembersInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
        },
    },
}

M.DescribeOrganizationConfigurationInput = {
    type = "structure",
    id = "DescribeOrganizationConfigurationInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOrganizationConfigurationOutput = {
    type = "structure",
    id = "DescribeOrganizationConfigurationOutput",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableOrganizationAdminAccountInput = {
    type = "structure",
    id = "DisableOrganizationAdminAccountInput",
}

M.DisableOrganizationAdminAccountOutput = {
    type = "structure",
    id = "DisableOrganizationAdminAccountOutput",
}

M.DisassociateMembershipInput = {
    type = "structure",
    id = "DisassociateMembershipInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMembershipOutput = {
    type = "structure",
    id = "DisassociateMembershipOutput",
}

M.EnableOrganizationAdminAccountInput = {
    type = "structure",
    id = "EnableOrganizationAdminAccountInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableOrganizationAdminAccountOutput = {
    type = "structure",
    id = "EnableOrganizationAdminAccountOutput",
}

M.GetInvestigationInput = {
    type = "structure",
    id = "GetInvestigationInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvestigationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntityType = {
    IAM_ROLE = "IAM_ROLE",
    IAM_USER = "IAM_USER",
}

M.Severity = {
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.State = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.Status = {
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    SUCCESSFUL = "SUCCESSFUL",
}

M.GetInvestigationOutput = {
    type = "structure",
    id = "GetInvestigationOutput",
    members = {
        GraphArn = {
            type = "string",
        },
        InvestigationId = {
            type = "string",
        },
        EntityArn = {
            type = "string",
        },
        EntityType = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ScopeStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ScopeEndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.GetMembersInput = {
    type = "structure",
    id = "GetMembersInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetMembersOutput = {
    type = "structure",
    id = "GetMembersOutput",
    members = {
        MemberDetails = {
            type = "list",
            member = M.MemberDetail,
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
        },
    },
}

M.ListDatasourcePackagesInput = {
    type = "structure",
    id = "ListDatasourcePackagesInput",
    members = {
        GraphArn = {
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

M.DatasourcePackageIngestDetail = {
    type = "structure",
    id = "DatasourcePackageIngestDetail",
    members = {
        DatasourcePackageIngestState = {
            type = "string",
        },
        LastIngestStateChange = {
            type = "map",
            key = { type = "string" },
            value = M.TimestampForCollection,
        },
    },
}

M.ListDatasourcePackagesOutput = {
    type = "structure",
    id = "ListDatasourcePackagesOutput",
    members = {
        DatasourcePackages = {
            type = "map",
            key = { type = "string" },
            value = M.DatasourcePackageIngestDetail,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGraphsInput = {
    type = "structure",
    id = "ListGraphsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Graph = {
    type = "structure",
    id = "Graph",
    members = {
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListGraphsOutput = {
    type = "structure",
    id = "ListGraphsOutput",
    members = {
        GraphList = {
            type = "list",
            member = M.Graph,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.IndicatorType = {
    TTP_OBSERVED = "TTP_OBSERVED",
    IMPOSSIBLE_TRAVEL = "IMPOSSIBLE_TRAVEL",
    FLAGGED_IP_ADDRESS = "FLAGGED_IP_ADDRESS",
    NEW_GEOLOCATION = "NEW_GEOLOCATION",
    NEW_ASO = "NEW_ASO",
    NEW_USER_AGENT = "NEW_USER_AGENT",
    RELATED_FINDING = "RELATED_FINDING",
    RELATED_FINDING_GROUP = "RELATED_FINDING_GROUP",
}

M.ListIndicatorsInput = {
    type = "structure",
    id = "ListIndicatorsInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvestigationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndicatorType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Reason = {
    AWS_THREAT_INTELLIGENCE = "AWS_THREAT_INTELLIGENCE",
}

M.FlaggedIpAddressDetail = {
    type = "structure",
    id = "FlaggedIpAddressDetail",
    members = {
        IpAddress = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ImpossibleTravelDetail = {
    type = "structure",
    id = "ImpossibleTravelDetail",
    members = {
        StartingIpAddress = {
            type = "string",
        },
        EndingIpAddress = {
            type = "string",
        },
        StartingLocation = {
            type = "string",
        },
        EndingLocation = {
            type = "string",
        },
        HourlyTimeDelta = {
            type = "integer",
        },
    },
}

M.NewAsoDetail = {
    type = "structure",
    id = "NewAsoDetail",
    members = {
        Aso = {
            type = "string",
        },
        IsNewForEntireAccount = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.NewGeolocationDetail = {
    type = "structure",
    id = "NewGeolocationDetail",
    members = {
        Location = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        IsNewForEntireAccount = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.NewUserAgentDetail = {
    type = "structure",
    id = "NewUserAgentDetail",
    members = {
        UserAgent = {
            type = "string",
        },
        IsNewForEntireAccount = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RelatedFindingDetail = {
    type = "structure",
    id = "RelatedFindingDetail",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
    },
}

M.RelatedFindingGroupDetail = {
    type = "structure",
    id = "RelatedFindingGroupDetail",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.TTPsObservedDetail = {
    type = "structure",
    id = "TTPsObservedDetail",
    members = {
        Tactic = {
            type = "string",
        },
        Technique = {
            type = "string",
        },
        Procedure = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        APIName = {
            type = "string",
        },
        APISuccessCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        APIFailureCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IndicatorDetail = {
    type = "structure",
    id = "IndicatorDetail",
    members = {
        TTPsObservedDetail = M.TTPsObservedDetail,
        ImpossibleTravelDetail = M.ImpossibleTravelDetail,
        FlaggedIpAddressDetail = M.FlaggedIpAddressDetail,
        NewGeolocationDetail = M.NewGeolocationDetail,
        NewAsoDetail = M.NewAsoDetail,
        NewUserAgentDetail = M.NewUserAgentDetail,
        RelatedFindingDetail = M.RelatedFindingDetail,
        RelatedFindingGroupDetail = M.RelatedFindingGroupDetail,
    },
}

M.Indicator = {
    type = "structure",
    id = "Indicator",
    members = {
        IndicatorType = {
            type = "string",
        },
        IndicatorDetail = M.IndicatorDetail,
    },
}

M.ListIndicatorsOutput = {
    type = "structure",
    id = "ListIndicatorsOutput",
    members = {
        GraphArn = {
            type = "string",
        },
        InvestigationId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Indicators = {
            type = "list",
            member = M.Indicator,
        },
    },
}

M.DateFilter = {
    type = "structure",
    id = "DateFilter",
    members = {
        StartInclusive = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndInclusive = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.StringFilter = {
    type = "structure",
    id = "StringFilter",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterCriteria = {
    type = "structure",
    id = "FilterCriteria",
    members = {
        Severity = M.StringFilter,
        Status = M.StringFilter,
        State = M.StringFilter,
        EntityArn = M.StringFilter,
        CreatedTime = M.DateFilter,
    },
}

M.Field = {
    SEVERITY = "SEVERITY",
    STATUS = "STATUS",
    CREATED_TIME = "CREATED_TIME",
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.SortCriteria = {
    type = "structure",
    id = "SortCriteria",
    members = {
        Field = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListInvestigationsInput = {
    type = "structure",
    id = "ListInvestigationsInput",
    members = {
        GraphArn = {
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
        FilterCriteria = M.FilterCriteria,
        SortCriteria = M.SortCriteria,
    },
}

M.InvestigationDetail = {
    type = "structure",
    id = "InvestigationDetail",
    members = {
        InvestigationId = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EntityArn = {
            type = "string",
        },
        EntityType = {
            type = "string",
        },
    },
}

M.ListInvestigationsOutput = {
    type = "structure",
    id = "ListInvestigationsOutput",
    members = {
        InvestigationDetails = {
            type = "list",
            member = M.InvestigationDetail,
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
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListInvitationsOutput = {
    type = "structure",
    id = "ListInvitationsOutput",
    members = {
        Invitations = {
            type = "list",
            member = M.MemberDetail,
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
        GraphArn = {
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

M.ListMembersOutput = {
    type = "structure",
    id = "ListMembersOutput",
    members = {
        MemberDetails = {
            type = "list",
            member = M.MemberDetail,
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
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListOrganizationAdminAccountsOutput = {
    type = "structure",
    id = "ListOrganizationAdminAccountsOutput",
    members = {
        Administrators = {
            type = "list",
            member = M.Administrator,
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

M.RejectInvitationInput = {
    type = "structure",
    id = "RejectInvitationInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectInvitationOutput = {
    type = "structure",
    id = "RejectInvitationOutput",
}

M.StartInvestigationInput = {
    type = "structure",
    id = "StartInvestigationInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScopeStartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ScopeEndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.StartInvestigationOutput = {
    type = "structure",
    id = "StartInvestigationOutput",
    members = {
        InvestigationId = {
            type = "string",
        },
    },
}

M.StartMonitoringMemberInput = {
    type = "structure",
    id = "StartMonitoringMemberInput",
    members = {
        GraphArn = {
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
    },
}

M.StartMonitoringMemberOutput = {
    type = "structure",
    id = "StartMonitoringMemberOutput",
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

M.UpdateDatasourcePackagesInput = {
    type = "structure",
    id = "UpdateDatasourcePackagesInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasourcePackages = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDatasourcePackagesOutput = {
    type = "structure",
    id = "UpdateDatasourcePackagesOutput",
}

M.UpdateInvestigationStateInput = {
    type = "structure",
    id = "UpdateInvestigationStateInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvestigationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateInvestigationStateOutput = {
    type = "structure",
    id = "UpdateInvestigationStateOutput",
}

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
    id = "UpdateOrganizationConfigurationInput",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoEnable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
    id = "UpdateOrganizationConfigurationOutput",
}

return M
