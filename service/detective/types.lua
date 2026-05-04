local M = {}

M.AcceptInvitationInput = {
    type = "structure",
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
}

M.ErrorCode = {
    InvalidGraphArn = "INVALID_GRAPH_ARN",
    InvalidRequestBody = "INVALID_REQUEST_BODY",
    InternalError = "INTERNAL_ERROR",
}

M.AccessDeniedException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
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

M.ValidationException = {
    type = "structure",
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
    members = {
        AccountId = {
            type = "string",
        },
        GraphArn = {
            type = "string",
        },
        DelegationTime = {
            type = "timestamp",
        },
    },
}

M.BatchGetGraphMemberDatasourcesInput = {
    type = "structure",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
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
    members = {
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.MembershipDatasources = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        GraphArn = {
            type = "string",
        },
        DatasourcePackageIngestHistory = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
    },
}

M.UnprocessedAccount = {
    type = "structure",
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
    members = {
        MemberDatasources = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetMembershipDatasourcesInput = {
    type = "structure",
    members = {
        GraphArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnprocessedGraph = {
    type = "structure",
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
    members = {
        MembershipDatasources = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedGraphs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateGraphInput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateGraphOutput = {
    type = "structure",
    members = {
        GraphArn = {
            type = "string",
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
        Resources = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateMembersInput = {
    type = "structure",
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
        },
        Accounts = {
            type = "list",
            member_type = "structure",
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
    members = {
        VolumeUsageInBytes = {
            type = "number",
        },
        VolumeUsageUpdateTime = {
            type = "timestamp",
        },
    },
}

M.MemberDetail = {
    type = "structure",
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
        },
        UpdatedTime = {
            type = "timestamp",
        },
        VolumeUsageInBytes = {
            type = "number",
        },
        VolumeUsageUpdatedTime = {
            type = "timestamp",
        },
        PercentOfGraphUtilization = {
            type = "number",
        },
        PercentOfGraphUtilizationUpdatedTime = {
            type = "timestamp",
        },
        InvitationType = {
            type = "string",
        },
        VolumeUsageByDatasourcePackage = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        DatasourcePackageIngestStates = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateMembersOutput = {
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

M.DeleteGraphInput = {
    type = "structure",
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
}

M.DeleteMembersInput = {
    type = "structure",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        AccountIds = {
            type = "list",
            member_type = "string",
        },
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeOrganizationConfigurationInput = {
    type = "structure",
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
    members = {
        AutoEnable = {
            type = "boolean",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableOrganizationAdminAccountInput = {
    type = "structure",
}

M.DisableOrganizationAdminAccountOutput = {
    type = "structure",
}

M.DisassociateMembershipInput = {
    type = "structure",
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
}

M.EnableOrganizationAdminAccountInput = {
    type = "structure",
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
}

M.GetInvestigationInput = {
    type = "structure",
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
        },
        ScopeStartTime = {
            type = "timestamp",
        },
        ScopeEndTime = {
            type = "timestamp",
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
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMembersOutput = {
    type = "structure",
    members = {
        MemberDetails = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDatasourcePackagesInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.DatasourcePackageIngestDetail = {
    type = "structure",
    members = {
        DatasourcePackageIngestState = {
            type = "string",
        },
        LastIngestStateChange = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ListDatasourcePackagesOutput = {
    type = "structure",
    members = {
        DatasourcePackages = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGraphsInput = {
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

M.Graph = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ListGraphsOutput = {
    type = "structure",
    members = {
        GraphList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.Reason = {
    AWS_THREAT_INTELLIGENCE = "AWS_THREAT_INTELLIGENCE",
}

M.FlaggedIpAddressDetail = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.NewAsoDetail = {
    type = "structure",
    members = {
        Aso = {
            type = "string",
        },
        IsNewForEntireAccount = {
            type = "boolean",
        },
    },
}

M.NewGeolocationDetail = {
    type = "structure",
    members = {
        Location = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        IsNewForEntireAccount = {
            type = "boolean",
        },
    },
}

M.NewUserAgentDetail = {
    type = "structure",
    members = {
        UserAgent = {
            type = "string",
        },
        IsNewForEntireAccount = {
            type = "boolean",
        },
    },
}

M.RelatedFindingDetail = {
    type = "structure",
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
    members = {
        Id = {
            type = "string",
        },
    },
}

M.TTPsObservedDetail = {
    type = "structure",
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
            type = "number",
        },
        APIFailureCount = {
            type = "number",
        },
    },
}

M.IndicatorDetail = {
    type = "structure",
    members = {
        TTPsObservedDetail = {
            type = "structure",
        },
        ImpossibleTravelDetail = {
            type = "structure",
        },
        FlaggedIpAddressDetail = {
            type = "structure",
        },
        NewGeolocationDetail = {
            type = "structure",
        },
        NewAsoDetail = {
            type = "structure",
        },
        NewUserAgentDetail = {
            type = "structure",
        },
        RelatedFindingDetail = {
            type = "structure",
        },
        RelatedFindingGroupDetail = {
            type = "structure",
        },
    },
}

M.Indicator = {
    type = "structure",
    members = {
        IndicatorType = {
            type = "string",
        },
        IndicatorDetail = {
            type = "structure",
        },
    },
}

M.ListIndicatorsOutput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.DateFilter = {
    type = "structure",
    members = {
        StartInclusive = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndInclusive = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.StringFilter = {
    type = "structure",
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
    members = {
        Severity = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        State = {
            type = "structure",
        },
        EntityArn = {
            type = "structure",
        },
        CreatedTime = {
            type = "structure",
        },
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
            type = "number",
        },
        FilterCriteria = {
            type = "structure",
        },
        SortCriteria = {
            type = "structure",
        },
    },
}

M.InvestigationDetail = {
    type = "structure",
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
    members = {
        InvestigationDetails = {
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
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
            type = "number",
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    members = {
        MemberDetails = {
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
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListOrganizationAdminAccountsOutput = {
    type = "structure",
    members = {
        Administrators = {
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

M.RejectInvitationInput = {
    type = "structure",
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
}

M.StartInvestigationInput = {
    type = "structure",
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
            },
        },
        ScopeEndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.StartInvestigationOutput = {
    type = "structure",
    members = {
        InvestigationId = {
            type = "string",
        },
    },
}

M.StartMonitoringMemberInput = {
    type = "structure",
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

M.UpdateDatasourcePackagesInput = {
    type = "structure",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasourcePackages = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDatasourcePackagesOutput = {
    type = "structure",
}

M.UpdateInvestigationStateInput = {
    type = "structure",
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
}

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
    members = {
        GraphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoEnable = {
            type = "boolean",
        },
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
}

return M
