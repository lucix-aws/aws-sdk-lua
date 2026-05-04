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

M.IntegrationStatusInput = {
    NOT_CONFIGURED = "NOT_CONFIGURED",
}

M.AccountJiraIssueManagementStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.IssueManagementType = {
    AUTO = "AUTO",
    MANUAL = "MANUAL",
}

M.AccountJiraConfigurationInput = {
    type = "structure",
    members = {
        IssueManagementStatus = {
            type = "string",
        },
        IssueManagementType = {
            type = "string",
        },
        JiraProjectKey = {
            type = "string",
        },
        IntegrationStatus = {
            type = "string",
        },
    },
}

M.IntegrationStatus = {
    CONFIGURED = "CONFIGURED",
    NOT_CONFIGURED = "NOT_CONFIGURED",
}

M.AccountJiraConfigurationOutput = {
    type = "structure",
    members = {
        IntegrationStatus = {
            type = "string",
        },
        IssueManagementStatus = {
            type = "string",
        },
        IssueManagementType = {
            type = "string",
        },
        Subdomain = {
            type = "string",
        },
        JiraProjectKey = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.CheckStatus = {
    OKAY = "OKAY",
    WARNING = "WARNING",
    ERROR = "ERROR",
    NOT_AVAILABLE = "NOT_AVAILABLE",
    FETCH_FAILED = "FETCH_FAILED",
}

M.ChoiceContent = {
    type = "structure",
    members = {
        DisplayText = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.AdditionalResourceType = {
    HELPFUL_RESOURCE = "HELPFUL_RESOURCE",
    IMPROVEMENT_PLAN = "IMPROVEMENT_PLAN",
}

M.AdditionalResources = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Content = {
            type = "list",
            member = M.ChoiceContent,
        },
    },
}

M.ChoiceReason = {
    OUT_OF_SCOPE = "OUT_OF_SCOPE",
    BUSINESS_PRIORITIES = "BUSINESS_PRIORITIES",
    ARCHITECTURE_CONSTRAINTS = "ARCHITECTURE_CONSTRAINTS",
    OTHER = "OTHER",
    NONE = "NONE",
}

M.ChoiceStatus = {
    SELECTED = "SELECTED",
    NOT_APPLICABLE = "NOT_APPLICABLE",
    UNSELECTED = "UNSELECTED",
}

M.ChoiceAnswer = {
    type = "structure",
    members = {
        ChoiceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
    },
}

M.Choice = {
    type = "structure",
    members = {
        ChoiceId = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        HelpfulResource = M.ChoiceContent,
        ImprovementPlan = M.ChoiceContent,
        AdditionalResources = {
            type = "list",
            member = M.AdditionalResources,
        },
    },
}

M.JiraConfiguration = {
    type = "structure",
    members = {
        JiraIssueUrl = {
            type = "string",
        },
        LastSyncedTime = {
            type = "timestamp",
        },
    },
}

M.AnswerReason = {
    OUT_OF_SCOPE = "OUT_OF_SCOPE",
    BUSINESS_PRIORITIES = "BUSINESS_PRIORITIES",
    ARCHITECTURE_CONSTRAINTS = "ARCHITECTURE_CONSTRAINTS",
    OTHER = "OTHER",
    NONE = "NONE",
}

M.Risk = {
    UNANSWERED = "UNANSWERED",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    NONE = "NONE",
    NOT_APPLICABLE = "NOT_APPLICABLE",
}

M.Answer = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        PillarId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        QuestionDescription = {
            type = "string",
        },
        ImprovementPlanUrl = {
            type = "string",
        },
        HelpfulResourceUrl = {
            type = "string",
        },
        HelpfulResourceDisplayText = {
            type = "string",
        },
        Choices = {
            type = "list",
            member = M.Choice,
        },
        SelectedChoices = {
            type = "list",
            member = { type = "string" },
        },
        ChoiceAnswers = {
            type = "list",
            member = M.ChoiceAnswer,
        },
        IsApplicable = {
            type = "boolean",
        },
        Risk = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        JiraConfiguration = M.JiraConfiguration,
    },
}

M.ChoiceAnswerSummary = {
    type = "structure",
    members = {
        ChoiceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.QuestionType = {
    PRIORITIZED = "PRIORITIZED",
    NON_PRIORITIZED = "NON_PRIORITIZED",
}

M.AnswerSummary = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        PillarId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        Choices = {
            type = "list",
            member = M.Choice,
        },
        SelectedChoices = {
            type = "list",
            member = { type = "string" },
        },
        ChoiceAnswerSummaries = {
            type = "list",
            member = M.ChoiceAnswerSummary,
        },
        IsApplicable = {
            type = "boolean",
        },
        Risk = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        QuestionType = {
            type = "string",
        },
        JiraConfiguration = M.JiraConfiguration,
    },
}

M.AssociateLensesInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAliases = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateLensesOutput = {
    type = "structure",
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
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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
        Reason = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.AssociateProfilesInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateProfilesOutput = {
    type = "structure",
}

M.BestPractice = {
    type = "structure",
    members = {
        ChoiceId = {
            type = "string",
        },
        ChoiceTitle = {
            type = "string",
        },
    },
}

M.CheckProvider = {
    TRUSTED_ADVISOR = "TRUSTED_ADVISOR",
}

M.CheckFailureReason = {
    ASSUME_ROLE_ERROR = "ASSUME_ROLE_ERROR",
    ACCESS_DENIED = "ACCESS_DENIED",
    UNKNOWN_ERROR = "UNKNOWN_ERROR",
    PREMIUM_SUPPORT_REQUIRED = "PREMIUM_SUPPORT_REQUIRED",
}

M.CheckDetail = {
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
        Provider = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        PillarId = {
            type = "string",
        },
        QuestionId = {
            type = "string",
        },
        ChoiceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        FlaggedResources = {
            type = "integer",
        },
        Reason = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.CheckSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Provider = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        LensArn = {
            type = "string",
        },
        PillarId = {
            type = "string",
        },
        QuestionId = {
            type = "string",
        },
        ChoiceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AccountSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.ChoiceImprovementPlan = {
    type = "structure",
    members = {
        ChoiceId = {
            type = "string",
        },
        DisplayText = {
            type = "string",
        },
        ImprovementPlanUrl = {
            type = "string",
        },
    },
}

M.ChoiceUpdate = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
    },
}

M.QuestionMetric = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        Risk = {
            type = "string",
        },
        BestPractices = {
            type = "list",
            member = M.BestPractice,
        },
    },
}

M.PillarMetric = {
    type = "structure",
    members = {
        PillarId = {
            type = "string",
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        Questions = {
            type = "list",
            member = M.QuestionMetric,
        },
    },
}

M.LensMetric = {
    type = "structure",
    members = {
        LensArn = {
            type = "string",
        },
        Pillars = {
            type = "list",
            member = M.PillarMetric,
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.MetricType = {
    WORKLOAD = "WORKLOAD",
}

M.ConsolidatedReportMetric = {
    type = "structure",
    members = {
        MetricType = {
            type = "string",
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        WorkloadId = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
        WorkloadArn = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Lenses = {
            type = "list",
            member = M.LensMetric,
        },
        LensesAppliedCount = {
            type = "integer",
        },
    },
}

M.CreateLensShareInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWith = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateLensShareOutput = {
    type = "structure",
    members = {
        ShareId = {
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
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLensVersionInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsMajorVersion = {
            type = "boolean",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateLensVersionOutput = {
    type = "structure",
    members = {
        LensArn = {
            type = "string",
        },
        LensVersion = {
            type = "string",
        },
    },
}

M.CreateMilestoneInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateMilestoneOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneNumber = {
            type = "integer",
        },
    },
}

M.ProfileQuestionUpdate = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        SelectedChoiceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateProfileInput = {
    type = "structure",
    members = {
        ProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileQuestions = {
            type = "list",
            member = M.ProfileQuestionUpdate,
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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

M.CreateProfileOutput = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
        },
        ProfileVersion = {
            type = "string",
        },
    },
}

M.CreateProfileShareInput = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWith = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateProfileShareOutput = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
        },
        ProfileArn = {
            type = "string",
        },
    },
}

M.CreateReviewTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
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
        Lenses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Notes = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateReviewTemplateOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
    },
}

M.CreateTemplateShareInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWith = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateTemplateShareOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
        ShareId = {
            type = "string",
        },
    },
}

M.TrustedAdvisorIntegrationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DefinitionType = {
    WORKLOAD_METADATA = "WORKLOAD_METADATA",
    APP_REGISTRY = "APP_REGISTRY",
}

M.WorkloadDiscoveryConfig = {
    type = "structure",
    members = {
        TrustedAdvisorIntegrationStatus = {
            type = "string",
        },
        WorkloadResourceDefinition = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.WorkloadEnvironment = {
    PRODUCTION = "PRODUCTION",
    PREPRODUCTION = "PREPRODUCTION",
}

M.WorkloadIssueManagementStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    INHERIT = "INHERIT",
}

M.WorkloadJiraConfigurationInput = {
    type = "structure",
    members = {
        IssueManagementStatus = {
            type = "string",
        },
        IssueManagementType = {
            type = "string",
        },
        JiraProjectKey = {
            type = "string",
        },
    },
}

M.CreateWorkloadInput = {
    type = "structure",
    members = {
        WorkloadName = {
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
        Environment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        AwsRegions = {
            type = "list",
            member = { type = "string" },
        },
        NonAwsRegions = {
            type = "list",
            member = { type = "string" },
        },
        PillarPriorities = {
            type = "list",
            member = { type = "string" },
        },
        ArchitecturalDesign = {
            type = "string",
        },
        ReviewOwner = {
            type = "string",
        },
        IndustryType = {
            type = "string",
        },
        Industry = {
            type = "string",
        },
        Lenses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Notes = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DiscoveryConfig = M.WorkloadDiscoveryConfig,
        Applications = {
            type = "list",
            member = { type = "string" },
        },
        ProfileArns = {
            type = "list",
            member = { type = "string" },
        },
        ReviewTemplateArns = {
            type = "list",
            member = { type = "string" },
        },
        JiraConfiguration = M.WorkloadJiraConfigurationInput,
    },
}

M.CreateWorkloadOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadArn = {
            type = "string",
        },
    },
}

M.PermissionType = {
    READONLY = "READONLY",
    CONTRIBUTOR = "CONTRIBUTOR",
}

M.CreateWorkloadShareInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWith = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateWorkloadShareOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        ShareId = {
            type = "string",
        },
    },
}

M.LensStatusType = {
    ALL = "ALL",
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
}

M.DeleteLensInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
        LensStatus = {
            type = "string",
            traits = {
                http_query = "LensStatus",
                required = true,
            },
        },
    },
}

M.DeleteLensOutput = {
    type = "structure",
}

M.DeleteLensShareInput = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteLensShareOutput = {
    type = "structure",
}

M.DeleteProfileInput = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileOutput = {
    type = "structure",
}

M.DeleteProfileShareInput = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileShareOutput = {
    type = "structure",
}

M.DeleteReviewTemplateInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteReviewTemplateOutput = {
    type = "structure",
}

M.DeleteTemplateShareInput = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteTemplateShareOutput = {
    type = "structure",
}

M.DeleteWorkloadInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkloadOutput = {
    type = "structure",
}

M.DeleteWorkloadShareInput = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                http_query = "ClientRequestToken",
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkloadShareOutput = {
    type = "structure",
}

M.DifferenceStatus = {
    UPDATED = "UPDATED",
    NEW = "NEW",
    DELETED = "DELETED",
}

M.DisassociateLensesInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAliases = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateLensesOutput = {
    type = "structure",
}

M.DisassociateProfilesInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateProfilesOutput = {
    type = "structure",
}

M.DiscoveryIntegrationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ExportLensInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensVersion = {
            type = "string",
            traits = {
                http_query = "LensVersion",
            },
        },
    },
}

M.ExportLensOutput = {
    type = "structure",
    members = {
        LensJSON = {
            type = "string",
        },
    },
}

M.GetAnswerInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuestionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneNumber = {
            type = "integer",
            traits = {
                http_query = "MilestoneNumber",
            },
        },
    },
}

M.GetAnswerOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneNumber = {
            type = "integer",
        },
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        Answer = M.Answer,
    },
}

M.ReportFormat = {
    PDF = "PDF",
    JSON = "JSON",
}

M.GetConsolidatedReportInput = {
    type = "structure",
    members = {
        Format = {
            type = "string",
            traits = {
                http_query = "Format",
                required = true,
            },
        },
        IncludeSharedResources = {
            type = "boolean",
            traits = {
                http_query = "IncludeSharedResources",
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

M.GetConsolidatedReportOutput = {
    type = "structure",
    members = {
        Metrics = {
            type = "list",
            member = M.ConsolidatedReportMetric,
        },
        NextToken = {
            type = "string",
        },
        Base64String = {
            type = "string",
        },
    },
}

M.GetGlobalSettingsInput = {
    type = "structure",
}

M.OrganizationSharingStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GetGlobalSettingsOutput = {
    type = "structure",
    members = {
        OrganizationSharingStatus = {
            type = "string",
        },
        DiscoveryIntegrationStatus = {
            type = "string",
        },
        JiraConfiguration = M.AccountJiraConfigurationOutput,
    },
}

M.GetLensInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensVersion = {
            type = "string",
            traits = {
                http_query = "LensVersion",
            },
        },
    },
}

M.Lens = {
    type = "structure",
    members = {
        LensArn = {
            type = "string",
        },
        LensVersion = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        ShareInvitationId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetLensOutput = {
    type = "structure",
    members = {
        Lens = M.Lens,
    },
}

M.GetLensReviewInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneNumber = {
            type = "integer",
            traits = {
                http_query = "MilestoneNumber",
            },
        },
    },
}

M.SelectedPillar = {
    type = "structure",
    members = {
        PillarId = {
            type = "string",
        },
        SelectedQuestionIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JiraSelectedQuestionConfiguration = {
    type = "structure",
    members = {
        SelectedPillars = {
            type = "list",
            member = M.SelectedPillar,
        },
    },
}

M.LensStatus = {
    CURRENT = "CURRENT",
    NOT_CURRENT = "NOT_CURRENT",
    DEPRECATED = "DEPRECATED",
    DELETED = "DELETED",
    UNSHARED = "UNSHARED",
}

M.PillarReviewSummary = {
    type = "structure",
    members = {
        PillarId = {
            type = "string",
        },
        PillarName = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        PrioritizedRiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.WorkloadProfile = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
        },
        ProfileVersion = {
            type = "string",
        },
    },
}

M.LensReview = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        LensVersion = {
            type = "string",
        },
        LensName = {
            type = "string",
        },
        LensStatus = {
            type = "string",
        },
        PillarReviewSummaries = {
            type = "list",
            member = M.PillarReviewSummary,
        },
        JiraConfiguration = M.JiraSelectedQuestionConfiguration,
        UpdatedAt = {
            type = "timestamp",
        },
        Notes = {
            type = "string",
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        NextToken = {
            type = "string",
        },
        Profiles = {
            type = "list",
            member = M.WorkloadProfile,
        },
        PrioritizedRiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.GetLensReviewOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneNumber = {
            type = "integer",
        },
        LensReview = M.LensReview,
    },
}

M.GetLensReviewReportInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneNumber = {
            type = "integer",
            traits = {
                http_query = "MilestoneNumber",
            },
        },
    },
}

M.LensReviewReport = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        Base64String = {
            type = "string",
        },
    },
}

M.GetLensReviewReportOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneNumber = {
            type = "integer",
        },
        LensReviewReport = M.LensReviewReport,
    },
}

M.GetLensVersionDifferenceInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BaseLensVersion = {
            type = "string",
            traits = {
                http_query = "BaseLensVersion",
            },
        },
        TargetLensVersion = {
            type = "string",
            traits = {
                http_query = "TargetLensVersion",
            },
        },
    },
}

M.QuestionDifference = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        DifferenceStatus = {
            type = "string",
        },
    },
}

M.PillarDifference = {
    type = "structure",
    members = {
        PillarId = {
            type = "string",
        },
        PillarName = {
            type = "string",
        },
        DifferenceStatus = {
            type = "string",
        },
        QuestionDifferences = {
            type = "list",
            member = M.QuestionDifference,
        },
    },
}

M.VersionDifferences = {
    type = "structure",
    members = {
        PillarDifferences = {
            type = "list",
            member = M.PillarDifference,
        },
    },
}

M.GetLensVersionDifferenceOutput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        BaseLensVersion = {
            type = "string",
        },
        TargetLensVersion = {
            type = "string",
        },
        LatestLensVersion = {
            type = "string",
        },
        VersionDifferences = M.VersionDifferences,
    },
}

M.GetMilestoneInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneNumber = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkloadImprovementStatus = {
    NOT_APPLICABLE = "NOT_APPLICABLE",
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    RISK_ACKNOWLEDGED = "RISK_ACKNOWLEDGED",
}

M.WorkloadJiraConfigurationOutput = {
    type = "structure",
    members = {
        IssueManagementStatus = {
            type = "string",
        },
        IssueManagementType = {
            type = "string",
        },
        JiraProjectKey = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.Workload = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadArn = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Environment = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        AwsRegions = {
            type = "list",
            member = { type = "string" },
        },
        NonAwsRegions = {
            type = "list",
            member = { type = "string" },
        },
        ArchitecturalDesign = {
            type = "string",
        },
        ReviewOwner = {
            type = "string",
        },
        ReviewRestrictionDate = {
            type = "timestamp",
        },
        IsReviewOwnerUpdateAcknowledged = {
            type = "boolean",
        },
        IndustryType = {
            type = "string",
        },
        Industry = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        ImprovementStatus = {
            type = "string",
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        PillarPriorities = {
            type = "list",
            member = { type = "string" },
        },
        Lenses = {
            type = "list",
            member = { type = "string" },
        },
        Owner = {
            type = "string",
        },
        ShareInvitationId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DiscoveryConfig = M.WorkloadDiscoveryConfig,
        Applications = {
            type = "list",
            member = { type = "string" },
        },
        Profiles = {
            type = "list",
            member = M.WorkloadProfile,
        },
        PrioritizedRiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        JiraConfiguration = M.WorkloadJiraConfigurationOutput,
    },
}

M.Milestone = {
    type = "structure",
    members = {
        MilestoneNumber = {
            type = "integer",
        },
        MilestoneName = {
            type = "string",
        },
        RecordedAt = {
            type = "timestamp",
        },
        Workload = M.Workload,
    },
}

M.GetMilestoneOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        Milestone = M.Milestone,
    },
}

M.GetProfileInput = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileVersion = {
            type = "string",
            traits = {
                http_query = "ProfileVersion",
            },
        },
    },
}

M.ProfileChoice = {
    type = "structure",
    members = {
        ChoiceId = {
            type = "string",
        },
        ChoiceTitle = {
            type = "string",
        },
        ChoiceDescription = {
            type = "string",
        },
    },
}

M.ProfileQuestion = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        QuestionDescription = {
            type = "string",
        },
        QuestionChoices = {
            type = "list",
            member = M.ProfileChoice,
        },
        SelectedChoiceIds = {
            type = "list",
            member = { type = "string" },
        },
        MinSelectedChoices = {
            type = "integer",
        },
        MaxSelectedChoices = {
            type = "integer",
        },
    },
}

M.Profile = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
        },
        ProfileVersion = {
            type = "string",
        },
        ProfileName = {
            type = "string",
        },
        ProfileDescription = {
            type = "string",
        },
        ProfileQuestions = {
            type = "list",
            member = M.ProfileQuestion,
        },
        Owner = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        ShareInvitationId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetProfileOutput = {
    type = "structure",
    members = {
        Profile = M.Profile,
    },
}

M.GetProfileTemplateInput = {
    type = "structure",
}

M.ProfileTemplateChoice = {
    type = "structure",
    members = {
        ChoiceId = {
            type = "string",
        },
        ChoiceTitle = {
            type = "string",
        },
        ChoiceDescription = {
            type = "string",
        },
    },
}

M.ProfileTemplateQuestion = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        QuestionDescription = {
            type = "string",
        },
        QuestionChoices = {
            type = "list",
            member = M.ProfileTemplateChoice,
        },
        MinSelectedChoices = {
            type = "integer",
        },
        MaxSelectedChoices = {
            type = "integer",
        },
    },
}

M.ProfileTemplate = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
        },
        TemplateQuestions = {
            type = "list",
            member = M.ProfileTemplateQuestion,
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetProfileTemplateOutput = {
    type = "structure",
    members = {
        ProfileTemplate = M.ProfileTemplate,
    },
}

M.GetReviewTemplateInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Question = {
    UNANSWERED = "UNANSWERED",
    ANSWERED = "ANSWERED",
}

M.ReviewTemplateUpdateStatus = {
    CURRENT = "CURRENT",
    LENS_NOT_CURRENT = "LENS_NOT_CURRENT",
}

M.ReviewTemplate = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Lenses = {
            type = "list",
            member = { type = "string" },
        },
        Notes = {
            type = "string",
        },
        QuestionCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        Owner = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        TemplateArn = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdateStatus = {
            type = "string",
        },
        ShareInvitationId = {
            type = "string",
        },
    },
}

M.GetReviewTemplateOutput = {
    type = "structure",
    members = {
        ReviewTemplate = M.ReviewTemplate,
    },
}

M.GetReviewTemplateAnswerInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuestionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReviewTemplateAnswerStatus = {
    UNANSWERED = "UNANSWERED",
    ANSWERED = "ANSWERED",
}

M.ReviewTemplateAnswer = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        PillarId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        QuestionDescription = {
            type = "string",
        },
        ImprovementPlanUrl = {
            type = "string",
        },
        HelpfulResourceUrl = {
            type = "string",
        },
        HelpfulResourceDisplayText = {
            type = "string",
        },
        Choices = {
            type = "list",
            member = M.Choice,
        },
        SelectedChoices = {
            type = "list",
            member = { type = "string" },
        },
        ChoiceAnswers = {
            type = "list",
            member = M.ChoiceAnswer,
        },
        IsApplicable = {
            type = "boolean",
        },
        AnswerStatus = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.GetReviewTemplateAnswerOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
        LensAlias = {
            type = "string",
        },
        Answer = M.ReviewTemplateAnswer,
    },
}

M.GetReviewTemplateLensReviewInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReviewTemplatePillarReviewSummary = {
    type = "structure",
    members = {
        PillarId = {
            type = "string",
        },
        PillarName = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        QuestionCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.ReviewTemplateLensReview = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        LensVersion = {
            type = "string",
        },
        LensName = {
            type = "string",
        },
        LensStatus = {
            type = "string",
        },
        PillarReviewSummaries = {
            type = "list",
            member = M.ReviewTemplatePillarReviewSummary,
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Notes = {
            type = "string",
        },
        QuestionCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetReviewTemplateLensReviewOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
        LensReview = M.ReviewTemplateLensReview,
    },
}

M.GetWorkloadInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWorkloadOutput = {
    type = "structure",
    members = {
        Workload = M.Workload,
    },
}

M.ImportLensInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
        },
        JSONString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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

M.ImportLensStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    ERROR = "ERROR",
}

M.ImportLensOutput = {
    type = "structure",
    members = {
        LensArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ImprovementSummary = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        PillarId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        Risk = {
            type = "string",
        },
        ImprovementPlanUrl = {
            type = "string",
        },
        ImprovementPlans = {
            type = "list",
            member = M.ChoiceImprovementPlan,
        },
        JiraConfiguration = M.JiraConfiguration,
    },
}

M.IntegratingService = {
    JIRA = "JIRA",
}

M.LensReviewSummary = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        LensVersion = {
            type = "string",
        },
        LensName = {
            type = "string",
        },
        LensStatus = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        Profiles = {
            type = "list",
            member = M.WorkloadProfile,
        },
        PrioritizedRiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.ShareStatus = {
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    PENDING = "PENDING",
    REVOKED = "REVOKED",
    EXPIRED = "EXPIRED",
    ASSOCIATING = "ASSOCIATING",
    ASSOCIATED = "ASSOCIATED",
    FAILED = "FAILED",
}

M.LensShareSummary = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
        },
        SharedWith = {
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

M.LensType = {
    AWS_OFFICIAL = "AWS_OFFICIAL",
    CUSTOM_SHARED = "CUSTOM_SHARED",
    CUSTOM_SELF = "CUSTOM_SELF",
}

M.LensSummary = {
    type = "structure",
    members = {
        LensArn = {
            type = "string",
        },
        LensAlias = {
            type = "string",
        },
        LensName = {
            type = "string",
        },
        LensType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        LensVersion = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        LensStatus = {
            type = "string",
        },
    },
}

M.LensUpgradeSummary = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        CurrentLensVersion = {
            type = "string",
        },
        LatestLensVersion = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.QuestionPriority = {
    PRIORITIZED = "PRIORITIZED",
    NONE = "NONE",
}

M.ListAnswersInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PillarId = {
            type = "string",
            traits = {
                http_query = "PillarId",
            },
        },
        MilestoneNumber = {
            type = "integer",
            traits = {
                http_query = "MilestoneNumber",
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
        QuestionPriority = {
            type = "string",
            traits = {
                http_query = "QuestionPriority",
            },
        },
    },
}

M.ListAnswersOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneNumber = {
            type = "integer",
        },
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        AnswerSummaries = {
            type = "list",
            member = M.AnswerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCheckDetailsInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        LensArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PillarId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuestionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCheckDetailsOutput = {
    type = "structure",
    members = {
        CheckDetails = {
            type = "list",
            member = M.CheckDetail,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCheckSummariesInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        LensArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PillarId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuestionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCheckSummariesOutput = {
    type = "structure",
    members = {
        CheckSummaries = {
            type = "list",
            member = M.CheckSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLensesInput = {
    type = "structure",
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
        LensType = {
            type = "string",
            traits = {
                http_query = "LensType",
            },
        },
        LensStatus = {
            type = "string",
            traits = {
                http_query = "LensStatus",
            },
        },
        LensName = {
            type = "string",
            traits = {
                http_query = "LensName",
            },
        },
    },
}

M.ListLensesOutput = {
    type = "structure",
    members = {
        LensSummaries = {
            type = "list",
            member = M.LensSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLensReviewImprovementsInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PillarId = {
            type = "string",
            traits = {
                http_query = "PillarId",
            },
        },
        MilestoneNumber = {
            type = "integer",
            traits = {
                http_query = "MilestoneNumber",
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
        QuestionPriority = {
            type = "string",
            traits = {
                http_query = "QuestionPriority",
            },
        },
    },
}

M.ListLensReviewImprovementsOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneNumber = {
            type = "integer",
        },
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        ImprovementSummaries = {
            type = "list",
            member = M.ImprovementSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLensReviewsInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneNumber = {
            type = "integer",
            traits = {
                http_query = "MilestoneNumber",
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

M.ListLensReviewsOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneNumber = {
            type = "integer",
        },
        LensReviewSummaries = {
            type = "list",
            member = M.LensReviewSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLensSharesInput = {
    type = "structure",
    members = {
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWithPrefix = {
            type = "string",
            traits = {
                http_query = "SharedWithPrefix",
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
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
    },
}

M.ListLensSharesOutput = {
    type = "structure",
    members = {
        LensShareSummaries = {
            type = "list",
            member = M.LensShareSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMilestonesInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
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

M.WorkloadSummary = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadArn = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Lenses = {
            type = "list",
            member = { type = "string" },
        },
        RiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        ImprovementStatus = {
            type = "string",
        },
        Profiles = {
            type = "list",
            member = M.WorkloadProfile,
        },
        PrioritizedRiskCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.MilestoneSummary = {
    type = "structure",
    members = {
        MilestoneNumber = {
            type = "integer",
        },
        MilestoneName = {
            type = "string",
        },
        RecordedAt = {
            type = "timestamp",
        },
        WorkloadSummary = M.WorkloadSummary,
    },
}

M.ListMilestonesOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        MilestoneSummaries = {
            type = "list",
            member = M.MilestoneSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNotificationsInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.NotificationType = {
    LENS_VERSION_UPGRADED = "LENS_VERSION_UPGRADED",
    LENS_VERSION_DEPRECATED = "LENS_VERSION_DEPRECATED",
}

M.NotificationSummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        LensUpgradeSummary = M.LensUpgradeSummary,
    },
}

M.ListNotificationsOutput = {
    type = "structure",
    members = {
        NotificationSummaries = {
            type = "list",
            member = M.NotificationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProfileNotificationsInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_query = "WorkloadId",
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

M.ProfileNotificationType = {
    PROFILE_ANSWERS_UPDATED = "PROFILE_ANSWERS_UPDATED",
    PROFILE_DELETED = "PROFILE_DELETED",
}

M.ProfileNotificationSummary = {
    type = "structure",
    members = {
        CurrentProfileVersion = {
            type = "string",
        },
        LatestProfileVersion = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ProfileArn = {
            type = "string",
        },
        ProfileName = {
            type = "string",
        },
        WorkloadId = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
    },
}

M.ListProfileNotificationsOutput = {
    type = "structure",
    members = {
        NotificationSummaries = {
            type = "list",
            member = M.ProfileNotificationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProfileOwnerType = {
    SELF = "SELF",
    SHARED = "SHARED",
}

M.ListProfilesInput = {
    type = "structure",
    members = {
        ProfileNamePrefix = {
            type = "string",
            traits = {
                http_query = "ProfileNamePrefix",
            },
        },
        ProfileOwnerType = {
            type = "string",
            traits = {
                http_query = "ProfileOwnerType",
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

M.ProfileSummary = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
        },
        ProfileVersion = {
            type = "string",
        },
        ProfileName = {
            type = "string",
        },
        ProfileDescription = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListProfilesOutput = {
    type = "structure",
    members = {
        ProfileSummaries = {
            type = "list",
            member = M.ProfileSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProfileSharesInput = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWithPrefix = {
            type = "string",
            traits = {
                http_query = "SharedWithPrefix",
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
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
    },
}

M.ProfileShareSummary = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
        },
        SharedWith = {
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

M.ListProfileSharesOutput = {
    type = "structure",
    members = {
        ProfileShareSummaries = {
            type = "list",
            member = M.ProfileShareSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReviewTemplateAnswersInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PillarId = {
            type = "string",
            traits = {
                http_query = "PillarId",
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

M.ReviewTemplateAnswerSummary = {
    type = "structure",
    members = {
        QuestionId = {
            type = "string",
        },
        PillarId = {
            type = "string",
        },
        QuestionTitle = {
            type = "string",
        },
        Choices = {
            type = "list",
            member = M.Choice,
        },
        SelectedChoices = {
            type = "list",
            member = { type = "string" },
        },
        ChoiceAnswerSummaries = {
            type = "list",
            member = M.ChoiceAnswerSummary,
        },
        IsApplicable = {
            type = "boolean",
        },
        AnswerStatus = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        QuestionType = {
            type = "string",
        },
    },
}

M.ListReviewTemplateAnswersOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
        LensAlias = {
            type = "string",
        },
        AnswerSummaries = {
            type = "list",
            member = M.ReviewTemplateAnswerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReviewTemplatesInput = {
    type = "structure",
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

M.ReviewTemplateSummary = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Lenses = {
            type = "list",
            member = { type = "string" },
        },
        Owner = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        TemplateArn = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        UpdateStatus = {
            type = "string",
        },
    },
}

M.ListReviewTemplatesOutput = {
    type = "structure",
    members = {
        ReviewTemplates = {
            type = "list",
            member = M.ReviewTemplateSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ShareResourceType = {
    WORKLOAD = "WORKLOAD",
    LENS = "LENS",
    PROFILE = "PROFILE",
    TEMPLATE = "TEMPLATE",
}

M.ListShareInvitationsInput = {
    type = "structure",
    members = {
        WorkloadNamePrefix = {
            type = "string",
            traits = {
                http_query = "WorkloadNamePrefix",
            },
        },
        LensNamePrefix = {
            type = "string",
            traits = {
                http_query = "LensNamePrefix",
            },
        },
        ShareResourceType = {
            type = "string",
            traits = {
                http_query = "ShareResourceType",
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
        ProfileNamePrefix = {
            type = "string",
            traits = {
                http_query = "ProfileNamePrefix",
            },
        },
        TemplateNamePrefix = {
            type = "string",
            traits = {
                http_query = "TemplateNamePrefix",
            },
        },
    },
}

M.ShareInvitationSummary = {
    type = "structure",
    members = {
        ShareInvitationId = {
            type = "string",
        },
        SharedBy = {
            type = "string",
        },
        SharedWith = {
            type = "string",
        },
        PermissionType = {
            type = "string",
        },
        ShareResourceType = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
        WorkloadId = {
            type = "string",
        },
        LensName = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        ProfileName = {
            type = "string",
        },
        ProfileArn = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        TemplateArn = {
            type = "string",
        },
    },
}

M.ListShareInvitationsOutput = {
    type = "structure",
    members = {
        ShareInvitationSummaries = {
            type = "list",
            member = M.ShareInvitationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        WorkloadArn = {
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

M.ListTemplateSharesInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWithPrefix = {
            type = "string",
            traits = {
                http_query = "SharedWithPrefix",
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
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
    },
}

M.TemplateShareSummary = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
        },
        SharedWith = {
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

M.ListTemplateSharesOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
        TemplateShareSummaries = {
            type = "list",
            member = M.TemplateShareSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkloadsInput = {
    type = "structure",
    members = {
        WorkloadNamePrefix = {
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

M.ListWorkloadsOutput = {
    type = "structure",
    members = {
        WorkloadSummaries = {
            type = "list",
            member = M.WorkloadSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkloadSharesInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SharedWithPrefix = {
            type = "string",
            traits = {
                http_query = "SharedWithPrefix",
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
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
    },
}

M.WorkloadShareSummary = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
        },
        SharedWith = {
            type = "string",
        },
        PermissionType = {
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

M.ListWorkloadSharesOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadShareSummaries = {
            type = "list",
            member = M.WorkloadShareSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ShareInvitation = {
    type = "structure",
    members = {
        ShareInvitationId = {
            type = "string",
        },
        ShareResourceType = {
            type = "string",
        },
        WorkloadId = {
            type = "string",
        },
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        ProfileArn = {
            type = "string",
        },
        TemplateArn = {
            type = "string",
        },
    },
}

M.ShareInvitationAction = {
    ACCEPT = "ACCEPT",
    REJECT = "REJECT",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        WorkloadArn = {
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

M.UntagResourceInput = {
    type = "structure",
    members = {
        WorkloadArn = {
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
}

M.UpdateAnswerInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuestionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SelectedChoices = {
            type = "list",
            member = { type = "string" },
        },
        ChoiceUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.ChoiceUpdate,
        },
        Notes = {
            type = "string",
        },
        IsApplicable = {
            type = "boolean",
        },
        Reason = {
            type = "string",
        },
    },
}

M.UpdateAnswerOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        LensAlias = {
            type = "string",
        },
        LensArn = {
            type = "string",
        },
        Answer = M.Answer,
    },
}

M.UpdateGlobalSettingsInput = {
    type = "structure",
    members = {
        OrganizationSharingStatus = {
            type = "string",
        },
        DiscoveryIntegrationStatus = {
            type = "string",
        },
        JiraConfiguration = M.AccountJiraConfigurationInput,
    },
}

M.UpdateGlobalSettingsOutput = {
    type = "structure",
}

M.UpdateIntegrationInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        IntegratingService = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIntegrationOutput = {
    type = "structure",
}

M.UpdateLensReviewInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensNotes = {
            type = "string",
        },
        PillarNotes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        JiraConfiguration = M.JiraSelectedQuestionConfiguration,
    },
}

M.UpdateLensReviewOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        LensReview = M.LensReview,
    },
}

M.UpdateProfileInput = {
    type = "structure",
    members = {
        ProfileArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileDescription = {
            type = "string",
        },
        ProfileQuestions = {
            type = "list",
            member = M.ProfileQuestionUpdate,
        },
    },
}

M.UpdateProfileOutput = {
    type = "structure",
    members = {
        Profile = M.Profile,
    },
}

M.UpdateReviewTemplateInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        LensesToAssociate = {
            type = "list",
            member = { type = "string" },
        },
        LensesToDisassociate = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateReviewTemplateOutput = {
    type = "structure",
    members = {
        ReviewTemplate = M.ReviewTemplate,
    },
}

M.UpdateReviewTemplateAnswerInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuestionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SelectedChoices = {
            type = "list",
            member = { type = "string" },
        },
        ChoiceUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.ChoiceUpdate,
        },
        Notes = {
            type = "string",
        },
        IsApplicable = {
            type = "boolean",
        },
        Reason = {
            type = "string",
        },
    },
}

M.UpdateReviewTemplateAnswerOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
        LensAlias = {
            type = "string",
        },
        Answer = M.ReviewTemplateAnswer,
    },
}

M.UpdateReviewTemplateLensReviewInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensNotes = {
            type = "string",
        },
        PillarNotes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateReviewTemplateLensReviewOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
        LensReview = M.ReviewTemplateLensReview,
    },
}

M.UpdateShareInvitationInput = {
    type = "structure",
    members = {
        ShareInvitationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ShareInvitationAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateShareInvitationOutput = {
    type = "structure",
    members = {
        ShareInvitation = M.ShareInvitation,
    },
}

M.UpdateWorkloadInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkloadName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Environment = {
            type = "string",
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        AwsRegions = {
            type = "list",
            member = { type = "string" },
        },
        NonAwsRegions = {
            type = "list",
            member = { type = "string" },
        },
        PillarPriorities = {
            type = "list",
            member = { type = "string" },
        },
        ArchitecturalDesign = {
            type = "string",
        },
        ReviewOwner = {
            type = "string",
        },
        IsReviewOwnerUpdateAcknowledged = {
            type = "boolean",
        },
        IndustryType = {
            type = "string",
        },
        Industry = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        ImprovementStatus = {
            type = "string",
        },
        DiscoveryConfig = M.WorkloadDiscoveryConfig,
        Applications = {
            type = "list",
            member = { type = "string" },
        },
        JiraConfiguration = M.WorkloadJiraConfigurationInput,
    },
}

M.UpdateWorkloadOutput = {
    type = "structure",
    members = {
        Workload = M.Workload,
    },
}

M.UpdateWorkloadShareInput = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PermissionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkloadShare = {
    type = "structure",
    members = {
        ShareId = {
            type = "string",
        },
        SharedBy = {
            type = "string",
        },
        SharedWith = {
            type = "string",
        },
        PermissionType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
        WorkloadId = {
            type = "string",
        },
    },
}

M.UpdateWorkloadShareOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadShare = M.WorkloadShare,
    },
}

M.UpgradeLensReviewInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.UpgradeLensReviewOutput = {
    type = "structure",
}

M.UpgradeProfileVersionInput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProfileArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MilestoneName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpgradeProfileVersionOutput = {
    type = "structure",
}

M.UpgradeReviewTemplateLensReviewInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LensAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.UpgradeReviewTemplateLensReviewOutput = {
    type = "structure",
}

return M
