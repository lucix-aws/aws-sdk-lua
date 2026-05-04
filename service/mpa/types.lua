local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionCompletionStrategy = {
    AUTO_COMPLETION_UPON_APPROVAL = "AUTO_COMPLETION_UPON_APPROVAL",
}

M.AdditionalSecurityRequirement = {
    APPROVER_VERIFICATION_REQUIRED = "APPROVER_VERIFICATION_REQUIRED",
}

M.MofNApprovalStrategy = {
    type = "structure",
    members = {
        MinApprovalsRequired = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ApprovalStrategy = {
    type = "union",
    members = {
        MofN = M.MofNApprovalStrategy,
    },
}

M.ApprovalStrategyResponse = {
    type = "union",
    members = {
        MofN = M.MofNApprovalStrategy,
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApprovalTeamRequestApprover = {
    type = "structure",
    members = {
        PrimaryIdentityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryIdentitySourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyReference = {
    type = "structure",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateApprovalTeamInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ApprovalStrategy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalStrategy }),
        Approvers = {
            type = "list",
            member = M.ApprovalTeamRequestApprover,
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
        Policies = {
            type = "list",
            member = M.PolicyReference,
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateApprovalTeamOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInactiveApprovalTeamVersionInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInactiveApprovalTeamVersionOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApprovalTeamInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ApproverLastActivity = {
    VOTED = "VOTED",
    BASELINED = "BASELINED",
    RESPONDED_TO_INVITATION = "RESPONDED_TO_INVITATION",
}

M.MfaSyncStatus = {
    IN_SYNC = "IN_SYNC",
    OUT_OF_SYNC = "OUT_OF_SYNC",
}

M.MfaType = {
    EMAIL_OTP = "EMAIL_OTP",
}

M.MfaMethod = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityStatus = {
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    INVALID = "INVALID",
}

M.GetApprovalTeamResponseApprover = {
    type = "structure",
    members = {
        ApproverId = {
            type = "string",
        },
        ResponseTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        PrimaryIdentityId = {
            type = "string",
        },
        PrimaryIdentitySourceArn = {
            type = "string",
        },
        PrimaryIdentityStatus = {
            type = "string",
        },
        LastActivity = {
            type = "string",
        },
        LastActivityTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        PendingBaselineSessionArn = {
            type = "string",
        },
        MfaMethods = {
            type = "list",
            member = M.MfaMethod,
        },
    },
}

M.ApprovalTeamStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETING = "DELETING",
    PENDING = "PENDING",
}

M.ApprovalTeamStatusCode = {
    VALIDATING = "VALIDATING",
    PENDING_ACTIVATION = "PENDING_ACTIVATION",
    FAILED_VALIDATION = "FAILED_VALIDATION",
    FAILED_ACTIVATION = "FAILED_ACTIVATION",
    UPDATE_PENDING_APPROVAL = "UPDATE_PENDING_APPROVAL",
    UPDATE_PENDING_ACTIVATION = "UPDATE_PENDING_ACTIVATION",
    UPDATE_FAILED_APPROVAL = "UPDATE_FAILED_APPROVAL",
    UPDATE_FAILED_ACTIVATION = "UPDATE_FAILED_ACTIVATION",
    UPDATE_FAILED_VALIDATION = "UPDATE_FAILED_VALIDATION",
    DELETE_PENDING_APPROVAL = "DELETE_PENDING_APPROVAL",
    DELETE_FAILED_APPROVAL = "DELETE_FAILED_APPROVAL",
    DELETE_FAILED_VALIDATION = "DELETE_FAILED_VALIDATION",
}

M.PendingUpdate = {
    type = "structure",
    members = {
        VersionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ApprovalStrategy = M.ApprovalStrategyResponse,
        NumberOfApprovers = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        Approvers = {
            type = "list",
            member = M.GetApprovalTeamResponseApprover,
        },
        UpdateInitiationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetApprovalTeamOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ApprovalStrategy = M.ApprovalStrategyResponse,
        NumberOfApprovers = {
            type = "integer",
        },
        Approvers = {
            type = "list",
            member = M.GetApprovalTeamResponseApprover,
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        UpdateSessionArn = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        Policies = {
            type = "list",
            member = M.PolicyReference,
        },
        LastUpdateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        PendingUpdate = M.PendingUpdate,
    },
}

M.ListApprovalTeamsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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

M.ListApprovalTeamsResponseApprovalTeam = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ApprovalStrategy = M.ApprovalStrategyResponse,
        NumberOfApprovers = {
            type = "integer",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.ListApprovalTeamsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ApprovalTeams = {
            type = "list",
            member = M.ListApprovalTeamsResponseApprovalTeam,
        },
    },
}

M.StartActiveApprovalTeamDeletionInput = {
    type = "structure",
    members = {
        PendingWindowDays = {
            type = "integer",
        },
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartActiveApprovalTeamDeletionOutput = {
    type = "structure",
    members = {
        DeletionCompletionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DeletionStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.StartApprovalTeamBaselineInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApproverIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StartApprovalTeamBaselineOutput = {
    type = "structure",
    members = {
        BaselineSessionArn = {
            type = "string",
        },
    },
}

M.UpdateAction = {
    SYNCHRONIZE_MFA_DEVICES = "SYNCHRONIZE_MFA_DEVICES",
}

M.UpdateApprovalTeamInput = {
    type = "structure",
    members = {
        ApprovalStrategy = M.ApprovalStrategy,
        Approvers = {
            type = "list",
            member = M.ApprovalTeamRequestApprover,
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpdateActions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateApprovalTeamOutput = {
    type = "structure",
    members = {
        VersionId = {
            type = "string",
        },
    },
}

M.GetPolicyVersionInput = {
    type = "structure",
    members = {
        PolicyVersionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PolicyType = {
    AWS_MANAGED = "AWS_MANAGED",
    AWS_RAM = "AWS_RAM",
}

M.PolicyStatus = {
    ATTACHABLE = "ATTACHABLE",
    DEPRECATED = "DEPRECATED",
}

M.PolicyVersion = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsDefault = {
            type = "boolean",
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Document = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyVersionOutput = {
    type = "structure",
    members = {
        PolicyVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyVersion }),
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyVersionArn = {
            type = "string",
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IamIdentityCenter = {
    type = "structure",
    members = {
        InstanceArn = {
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
    },
}

M.IdentitySourceParameters = {
    type = "structure",
    members = {
        IamIdentityCenter = M.IamIdentityCenter,
    },
}

M.CreateIdentitySourceInput = {
    type = "structure",
    members = {
        IdentitySourceParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentitySourceParameters }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.IdentitySourceType = {
    IAM_IDENTITY_CENTER = "IAM_IDENTITY_CENTER",
}

M.CreateIdentitySourceOutput = {
    type = "structure",
    members = {
        IdentitySourceType = {
            type = "string",
        },
        IdentitySourceArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteIdentitySourceInput = {
    type = "structure",
    members = {
        IdentitySourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIdentitySourceOutput = {
    type = "structure",
}

M.GetIdentitySourceInput = {
    type = "structure",
    members = {
        IdentitySourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IamIdentityCenterForGet = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
        },
        ApprovalPortalUrl = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.IdentitySourceParametersForGet = {
    type = "union",
    members = {
        IamIdentityCenter = M.IamIdentityCenterForGet,
    },
}

M.IdentitySourceStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    ERROR = "ERROR",
}

M.IdentitySourceStatusCode = {
    ACCESS_DENIED = "ACCESS_DENIED",
    DELETION_FAILED = "DELETION_FAILED",
    IDC_INSTANCE_NOT_FOUND = "IDC_INSTANCE_NOT_FOUND",
    IDC_INSTANCE_NOT_VALID = "IDC_INSTANCE_NOT_VALID",
}

M.GetIdentitySourceOutput = {
    type = "structure",
    members = {
        IdentitySourceType = {
            type = "string",
        },
        IdentitySourceParameters = M.IdentitySourceParametersForGet,
        IdentitySourceArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.ListIdentitySourcesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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

M.IamIdentityCenterForList = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
        },
        ApprovalPortalUrl = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.IdentitySourceParametersForList = {
    type = "union",
    members = {
        IamIdentityCenter = M.IamIdentityCenterForList,
    },
}

M.IdentitySourceForList = {
    type = "structure",
    members = {
        IdentitySourceType = {
            type = "string",
        },
        IdentitySourceParameters = M.IdentitySourceParametersForList,
        IdentitySourceArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.ListIdentitySourcesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        IdentitySources = {
            type = "list",
            member = M.IdentitySourceForList,
        },
    },
}

M.ListPoliciesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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

M.Policy = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PolicyType = {
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
    },
}

M.ListPoliciesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Policies = {
            type = "list",
            member = M.Policy,
        },
    },
}

M.ListPolicyVersionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PolicyVersionSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsDefault = {
            type = "boolean",
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPolicyVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PolicyVersions = {
            type = "list",
            member = M.PolicyVersionSummary,
        },
    },
}

M.ListResourcePoliciesInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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

M.ListResourcePoliciesResponseResourcePolicy = {
    type = "structure",
    members = {
        PolicyArn = {
            type = "string",
        },
        PolicyType = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
    },
}

M.ListResourcePoliciesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ResourcePolicies = {
            type = "list",
            member = M.ListResourcePoliciesResponseResourcePolicy,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CancelSessionInput = {
    type = "structure",
    members = {
        SessionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelSessionOutput = {
    type = "structure",
}

M.GetSessionInput = {
    type = "structure",
    members = {
        SessionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SessionResponse = {
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    NO_RESPONSE = "NO_RESPONSE",
}

M.GetSessionResponseApproverResponse = {
    type = "structure",
    members = {
        ApproverId = {
            type = "string",
        },
        IdentitySourceArn = {
            type = "string",
        },
        IdentityId = {
            type = "string",
        },
        Response = {
            type = "string",
        },
        ResponseTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SessionExecutionStatus = {
    EXECUTED = "EXECUTED",
    FAILED = "FAILED",
    PENDING = "PENDING",
}

M.SessionStatus = {
    PENDING = "PENDING",
    CANCELLED = "CANCELLED",
    APPROVED = "APPROVED",
    FAILED = "FAILED",
    CREATING = "CREATING",
}

M.SessionStatusCode = {
    REJECTED = "REJECTED",
    EXPIRED = "EXPIRED",
    CONFIGURATION_CHANGED = "CONFIGURATION_CHANGED",
    ALL_APPROVERS_IN_SESSION = "ALL_APPROVERS_IN_SESSION",
}

M.GetSessionOutput = {
    type = "structure",
    members = {
        SessionArn = {
            type = "string",
        },
        ApprovalTeamArn = {
            type = "string",
        },
        ApprovalTeamName = {
            type = "string",
        },
        ProtectedResourceArn = {
            type = "string",
        },
        ApprovalStrategy = M.ApprovalStrategyResponse,
        NumberOfApprovers = {
            type = "integer",
        },
        InitiationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CompletionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ExecutionStatus = {
            type = "string",
        },
        ActionName = {
            type = "string",
        },
        RequesterServicePrincipal = {
            type = "string",
        },
        RequesterPrincipalArn = {
            type = "string",
        },
        RequesterAccountId = {
            type = "string",
        },
        RequesterRegion = {
            type = "string",
        },
        RequesterComment = {
            type = "string",
        },
        ActionCompletionStrategy = {
            type = "string",
        },
        ApproverResponses = {
            type = "list",
            member = M.GetSessionResponseApproverResponse,
        },
        AdditionalSecurityRequirements = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FilterField = {
    ACTION_NAME = "ActionName",
    APPROVAL_TEAM_NAME = "ApprovalTeamName",
    VOTING_TIME = "VotingTime",
    VOTE = "Vote",
    SESSION_STATUS = "SessionStatus",
    INITIATION_TIME = "InitiationTime",
}

M.Operator = {
    EQUALS = "EQ",
    NOT_EQUALS = "NE",
    GREATER_THAN = "GT",
    LESS_THAN = "LT",
    GREATER_THAN_OR_EQUAL_TO = "GTE",
    LESS_THAN_OR_EQUAL_TO = "LTE",
    CONTAINS = "CONTAINS",
    DOES_NOT_CONTAIN = "NOT_CONTAINS",
    BETWEEN = "BETWEEN",
}

M.Filter = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        Operator = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
    members = {
        ApprovalTeamArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListSessionsResponseSession = {
    type = "structure",
    members = {
        SessionArn = {
            type = "string",
        },
        ApprovalTeamName = {
            type = "string",
        },
        ApprovalTeamArn = {
            type = "string",
        },
        InitiationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CompletionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        ActionName = {
            type = "string",
        },
        ProtectedResourceArn = {
            type = "string",
        },
        RequesterServicePrincipal = {
            type = "string",
        },
        RequesterPrincipalArn = {
            type = "string",
        },
        RequesterRegion = {
            type = "string",
        },
        RequesterAccountId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ActionCompletionStrategy = {
            type = "string",
        },
        AdditionalSecurityRequirements = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSessionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Sessions = {
            type = "list",
            member = M.ListSessionsResponseSession,
        },
    },
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
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
        },
    },
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
