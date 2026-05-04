local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationLifecycleStage = {
    IN_PROGRESS = "in_progress",
    PENDING_RESPONSE = "pending_response",
    DISMISSED = "dismissed",
    RESOLVED = "resolved",
}

M.UpdateRecommendationLifecycleStageReasonCode = {
    NON_CRITICAL_ACCOUNT = "non_critical_account",
    TEMPORARY_ACCOUNT = "temporary_account",
    VALID_BUSINESS_CASE = "valid_business_case",
    OTHER_METHODS_AVAILABLE = "other_methods_available",
    LOW_PRIORITY = "low_priority",
    NOT_APPLICABLE = "not_applicable",
    OTHER = "other",
}

M.AccountRecommendationLifecycleSummary = {
    type = "structure",
    id = "AccountRecommendationLifecycleSummary",
    members = {
        accountId = {
            type = "string",
        },
        accountRecommendationArn = {
            type = "string",
        },
        lifecycleStage = {
            type = "string",
        },
        updatedOnBehalfOf = {
            type = "string",
        },
        updatedOnBehalfOfJobTitle = {
            type = "string",
        },
        updateReason = {
            type = "string",
        },
        updateReasonCode = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.RecommendationResourceExclusion = {
    type = "structure",
    id = "RecommendationResourceExclusion",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isExcluded = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateRecommendationResourceExclusionInput = {
    type = "structure",
    id = "BatchUpdateRecommendationResourceExclusionInput",
    members = {
        recommendationResourceExclusions = {
            type = "list",
            member = M.RecommendationResourceExclusion,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRecommendationResourceExclusionError = {
    type = "structure",
    id = "UpdateRecommendationResourceExclusionError",
    members = {
        arn = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchUpdateRecommendationResourceExclusionOutput = {
    type = "structure",
    id = "BatchUpdateRecommendationResourceExclusionOutput",
    members = {
        batchUpdateRecommendationResourceExclusionErrors = {
            type = "list",
            member = M.UpdateRecommendationResourceExclusionError,
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationPillar = {
    COST_OPTIMIZING = "cost_optimizing",
    PERFORMANCE = "performance",
    SECURITY = "security",
    SERVICE_LIMITS = "service_limits",
    FAULT_TOLERANCE = "fault_tolerance",
    OPERATIONAL_EXCELLENCE = "operational_excellence",
}

M.RecommendationSource = {
    AWS_CONFIG = "aws_config",
    COMPUTE_OPTIMIZER = "compute_optimizer",
    COST_EXPLORER = "cost_explorer",
    LSE = "lse",
    MANUAL = "manual",
    PSE = "pse",
    RDS = "rds",
    RESILIENCE = "resilience",
    RESILIENCE_HUB = "resilience_hub",
    SECURITY_HUB = "security_hub",
    STIR = "stir",
    TA_CHECK = "ta_check",
    WELL_ARCHITECTED = "well_architected",
    COST_OPTIMIZATION_HUB = "cost_optimization_hub",
}

M.CheckSummary = {
    type = "structure",
    id = "CheckSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pillars = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        awsServices = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ExclusionStatus = {
    EXCLUDED = "excluded",
    INCLUDED = "included",
}

M.GetOrganizationRecommendationInput = {
    type = "structure",
    id = "GetOrganizationRecommendationInput",
    members = {
        organizationRecommendationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RecommendationCostOptimizingAggregates = {
    type = "structure",
    id = "RecommendationCostOptimizingAggregates",
    members = {
        estimatedMonthlySavings = {
            type = "double",
            traits = {
                required = true,
            },
        },
        estimatedPercentMonthlySavings = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationPillarSpecificAggregates = {
    type = "structure",
    id = "RecommendationPillarSpecificAggregates",
    members = {
        costOptimizing = M.RecommendationCostOptimizingAggregates,
    },
}

M.RecommendationResourcesAggregates = {
    type = "structure",
    id = "RecommendationResourcesAggregates",
    members = {
        okCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        warningCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        errorCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        excludedCount = {
            type = "long",
        },
    },
}

M.RecommendationStatus = {
    OK = "ok",
    WARNING = "warning",
    ERROR = "error",
}

M.RecommendationType = {
    STANDARD = "standard",
    PRIORITY = "priority",
}

M.OrganizationRecommendation = {
    type = "structure",
    id = "OrganizationRecommendation",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        checkArn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStage = {
            type = "string",
        },
        pillars = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsServices = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourcesAggregates = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationResourcesAggregates }),
        pillarSpecificAggregates = M.RecommendationPillarSpecificAggregates,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
        },
        updatedOnBehalfOf = {
            type = "string",
        },
        updatedOnBehalfOfJobTitle = {
            type = "string",
        },
        updateReason = {
            type = "string",
        },
        updateReasonCode = {
            type = "string",
        },
        resolvedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetOrganizationRecommendationOutput = {
    type = "structure",
    id = "GetOrganizationRecommendationOutput",
    members = {
        organizationRecommendation = M.OrganizationRecommendation,
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationLanguage = {
    ENGLISH = "en",
    JAPANESE = "ja",
    CHINESE = "zh",
    FRENCH = "fr",
    GERMAN = "de",
    KOREAN = "ko",
    TRADITIONAL_CHINESE = "zh_TW",
    ITALIAN = "it",
    SPANISH = "es",
    BRAZILIAN_PORTUGUESE = "pt_BR",
    BAHASA_INDONESIA = "id",
}

M.GetRecommendationInput = {
    type = "structure",
    id = "GetRecommendationInput",
    members = {
        recommendationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        language = {
            type = "string",
            traits = {
                http_query = "language",
            },
        },
    },
}

M.StatusReason = {
    NO_DATA_OK = "no_data_ok",
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        checkArn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStage = {
            type = "string",
        },
        pillars = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsServices = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourcesAggregates = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationResourcesAggregates }),
        pillarSpecificAggregates = M.RecommendationPillarSpecificAggregates,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
        },
        updatedOnBehalfOf = {
            type = "string",
        },
        updatedOnBehalfOfJobTitle = {
            type = "string",
        },
        updateReason = {
            type = "string",
        },
        updateReasonCode = {
            type = "string",
        },
        resolvedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRecommendationOutput = {
    type = "structure",
    id = "GetRecommendationOutput",
    members = {
        recommendation = M.Recommendation,
    },
}

M.ListChecksInput = {
    type = "structure",
    id = "ListChecksInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        pillar = {
            type = "string",
            traits = {
                http_query = "pillar",
            },
        },
        awsService = {
            type = "string",
            traits = {
                http_query = "awsService",
            },
        },
        source = {
            type = "string",
            traits = {
                http_query = "source",
            },
        },
        language = {
            type = "string",
            traits = {
                http_query = "language",
            },
        },
    },
}

M.ListChecksOutput = {
    type = "structure",
    id = "ListChecksOutput",
    members = {
        nextToken = {
            type = "string",
        },
        checkSummaries = {
            type = "list",
            member = M.CheckSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListOrganizationRecommendationAccountsInput = {
    type = "structure",
    id = "ListOrganizationRecommendationAccountsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        organizationRecommendationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        affectedAccountId = {
            type = "string",
            traits = {
                http_query = "affectedAccountId",
            },
        },
    },
}

M.ListOrganizationRecommendationAccountsOutput = {
    type = "structure",
    id = "ListOrganizationRecommendationAccountsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        accountRecommendationLifecycleSummaries = {
            type = "list",
            member = M.AccountRecommendationLifecycleSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceStatus = {
    OK = "ok",
    WARNING = "warning",
    ERROR = "error",
}

M.ListOrganizationRecommendationResourcesInput = {
    type = "structure",
    id = "ListOrganizationRecommendationResourcesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        exclusionStatus = {
            type = "string",
            traits = {
                http_query = "exclusionStatus",
            },
        },
        regionCode = {
            type = "string",
            traits = {
                http_query = "regionCode",
            },
        },
        organizationRecommendationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        affectedAccountId = {
            type = "string",
            traits = {
                http_query = "affectedAccountId",
            },
        },
    },
}

M.OrganizationRecommendationResourceSummary = {
    type = "structure",
    id = "OrganizationRecommendationResourceSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regionCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        exclusionStatus = {
            type = "string",
            traits = {
                default = "included",
            },
        },
        accountId = {
            type = "string",
        },
        recommendationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListOrganizationRecommendationResourcesOutput = {
    type = "structure",
    id = "ListOrganizationRecommendationResourcesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        organizationRecommendationResourceSummaries = {
            type = "list",
            member = M.OrganizationRecommendationResourceSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListOrganizationRecommendationsInput = {
    type = "structure",
    id = "ListOrganizationRecommendationsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        pillar = {
            type = "string",
            traits = {
                http_query = "pillar",
            },
        },
        awsService = {
            type = "string",
            traits = {
                http_query = "awsService",
            },
        },
        source = {
            type = "string",
            traits = {
                http_query = "source",
            },
        },
        checkIdentifier = {
            type = "string",
            traits = {
                http_query = "checkIdentifier",
            },
        },
        afterLastUpdatedAt = {
            type = "timestamp",
            traits = {
                http_query = "afterLastUpdatedAt",
            },
        },
        beforeLastUpdatedAt = {
            type = "timestamp",
            traits = {
                http_query = "beforeLastUpdatedAt",
            },
        },
    },
}

M.OrganizationRecommendationSummary = {
    type = "structure",
    id = "OrganizationRecommendationSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        checkArn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStage = {
            type = "string",
        },
        pillars = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsServices = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourcesAggregates = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationResourcesAggregates }),
        pillarSpecificAggregates = M.RecommendationPillarSpecificAggregates,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListOrganizationRecommendationsOutput = {
    type = "structure",
    id = "ListOrganizationRecommendationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        organizationRecommendationSummaries = {
            type = "list",
            member = M.OrganizationRecommendationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListRecommendationResourcesInput = {
    type = "structure",
    id = "ListRecommendationResourcesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        exclusionStatus = {
            type = "string",
            traits = {
                http_query = "exclusionStatus",
            },
        },
        regionCode = {
            type = "string",
            traits = {
                http_query = "regionCode",
            },
        },
        recommendationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        language = {
            type = "string",
            traits = {
                http_query = "language",
            },
        },
    },
}

M.RecommendationResourceSummary = {
    type = "structure",
    id = "RecommendationResourceSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regionCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        exclusionStatus = {
            type = "string",
            traits = {
                default = "included",
            },
        },
        recommendationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRecommendationResourcesOutput = {
    type = "structure",
    id = "ListRecommendationResourcesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        recommendationResourceSummaries = {
            type = "list",
            member = M.RecommendationResourceSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListRecommendationsInput = {
    type = "structure",
    id = "ListRecommendationsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        pillar = {
            type = "string",
            traits = {
                http_query = "pillar",
            },
        },
        awsService = {
            type = "string",
            traits = {
                http_query = "awsService",
            },
        },
        source = {
            type = "string",
            traits = {
                http_query = "source",
            },
        },
        checkIdentifier = {
            type = "string",
            traits = {
                http_query = "checkIdentifier",
            },
        },
        afterLastUpdatedAt = {
            type = "timestamp",
            traits = {
                http_query = "afterLastUpdatedAt",
            },
        },
        beforeLastUpdatedAt = {
            type = "timestamp",
            traits = {
                http_query = "beforeLastUpdatedAt",
            },
        },
        language = {
            type = "string",
            traits = {
                http_query = "language",
            },
        },
    },
}

M.RecommendationSummary = {
    type = "structure",
    id = "RecommendationSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        checkArn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStage = {
            type = "string",
        },
        pillars = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsServices = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourcesAggregates = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationResourcesAggregates }),
        pillarSpecificAggregates = M.RecommendationPillarSpecificAggregates,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    id = "ListRecommendationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        recommendationSummaries = {
            type = "list",
            member = M.RecommendationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRecommendationLifecycleStage = {
    PENDING_RESPONSE = "pending_response",
    IN_PROGRESS = "in_progress",
    DISMISSED = "dismissed",
    RESOLVED = "resolved",
}

M.UpdateOrganizationRecommendationLifecycleInput = {
    type = "structure",
    id = "UpdateOrganizationRecommendationLifecycleInput",
    members = {
        lifecycleStage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateReason = {
            type = "string",
        },
        updateReasonCode = {
            type = "string",
        },
        organizationRecommendationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateOrganizationRecommendationLifecycleOutput = {
    type = "structure",
    id = "UpdateOrganizationRecommendationLifecycleOutput",
}

M.UpdateRecommendationLifecycleInput = {
    type = "structure",
    id = "UpdateRecommendationLifecycleInput",
    members = {
        lifecycleStage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateReason = {
            type = "string",
        },
        updateReasonCode = {
            type = "string",
        },
        recommendationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateRecommendationLifecycleOutput = {
    type = "structure",
    id = "UpdateRecommendationLifecycleOutput",
}

return M
