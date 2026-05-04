local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AppIntegrationsConfiguration = {
    type = "structure",
    id = "AppIntegrationsConfiguration",
    members = {
        appIntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectFields = {
            type = "list",
            member = { type = "string" },
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
        },
    },
}

M.AssistantAssociationInputData = {
    type = "union",
    id = "AssistantAssociationInputData",
    members = {
        knowledgeBaseId = {
            type = "string",
        },
    },
}

M.AssociationType = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
}

M.CreateAssistantAssociationInput = {
    type = "structure",
    id = "CreateAssistantAssociationInput",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        association = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssistantAssociationInputData }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.KnowledgeBaseAssociationData = {
    type = "structure",
    id = "KnowledgeBaseAssociationData",
    members = {
        knowledgeBaseId = {
            type = "string",
        },
        knowledgeBaseArn = {
            type = "string",
        },
    },
}

M.AssistantAssociationOutputData = {
    type = "union",
    id = "AssistantAssociationOutputData",
    members = {
        knowledgeBaseAssociation = M.KnowledgeBaseAssociationData,
    },
}

M.AssistantAssociationData = {
    type = "structure",
    id = "AssistantAssociationData",
    members = {
        assistantAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssistantAssociationOutputData }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAssistantAssociationOutput = {
    type = "structure",
    id = "CreateAssistantAssociationOutput",
    members = {
        assistantAssociation = M.AssistantAssociationData,
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.DeleteAssistantAssociationInput = {
    type = "structure",
    id = "DeleteAssistantAssociationInput",
    members = {
        assistantAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssistantAssociationOutput = {
    type = "structure",
    id = "DeleteAssistantAssociationOutput",
}

M.GetAssistantAssociationInput = {
    type = "structure",
    id = "GetAssistantAssociationInput",
    members = {
        assistantAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAssistantAssociationOutput = {
    type = "structure",
    id = "GetAssistantAssociationOutput",
    members = {
        assistantAssociation = M.AssistantAssociationData,
    },
}

M.ListAssistantAssociationsInput = {
    type = "structure",
    id = "ListAssistantAssociationsInput",
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
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssistantAssociationSummary = {
    type = "structure",
    id = "AssistantAssociationSummary",
    members = {
        assistantAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssistantAssociationOutputData }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListAssistantAssociationsOutput = {
    type = "structure",
    id = "ListAssistantAssociationsOutput",
    members = {
        assistantAssociationSummaries = {
            type = "list",
            member = M.AssistantAssociationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ServerSideEncryptionConfiguration = {
    type = "structure",
    id = "ServerSideEncryptionConfiguration",
    members = {
        kmsKeyId = {
            type = "string",
        },
    },
}

M.AssistantType = {
    AGENT = "AGENT",
}

M.CreateAssistantInput = {
    type = "structure",
    id = "CreateAssistantInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
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
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
    },
}

M.AssistantIntegrationConfiguration = {
    type = "structure",
    id = "AssistantIntegrationConfiguration",
    members = {
        topicIntegrationArn = {
            type = "string",
        },
    },
}

M.AssistantStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.AssistantData = {
    type = "structure",
    id = "AssistantData",
    members = {
        assistantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantArn = {
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
        type = {
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
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        integrationConfiguration = M.AssistantIntegrationConfiguration,
    },
}

M.CreateAssistantOutput = {
    type = "structure",
    id = "CreateAssistantOutput",
    members = {
        assistant = M.AssistantData,
    },
}

M.DeleteAssistantInput = {
    type = "structure",
    id = "DeleteAssistantInput",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssistantOutput = {
    type = "structure",
    id = "DeleteAssistantOutput",
}

M.GetAssistantInput = {
    type = "structure",
    id = "GetAssistantInput",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAssistantOutput = {
    type = "structure",
    id = "GetAssistantOutput",
    members = {
        assistant = M.AssistantData,
    },
}

M.GetRecommendationsInput = {
    type = "structure",
    id = "GetRecommendationsInput",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        waitTimeSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "waitTimeSeconds",
            },
        },
    },
}

M.ContentReference = {
    type = "structure",
    id = "ContentReference",
    members = {
        knowledgeBaseArn = {
            type = "string",
        },
        knowledgeBaseId = {
            type = "string",
        },
        contentArn = {
            type = "string",
        },
        contentId = {
            type = "string",
        },
    },
}

M.Highlight = {
    type = "structure",
    id = "Highlight",
    members = {
        beginOffsetInclusive = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        endOffsetExclusive = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DocumentText = {
    type = "structure",
    id = "DocumentText",
    members = {
        text = {
            type = "string",
        },
        highlights = {
            type = "list",
            member = M.Highlight,
        },
    },
}

M.Document = {
    type = "structure",
    id = "Document",
    members = {
        contentReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentReference }),
        title = M.DocumentText,
        excerpt = M.DocumentText,
    },
}

M.RelevanceLevel = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.RecommendationType = {
    KNOWLEDGE_CONTENT = "KNOWLEDGE_CONTENT",
}

M.RecommendationData = {
    type = "structure",
    id = "RecommendationData",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
        relevanceScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        relevanceLevel = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.QueryRecommendationTriggerData = {
    type = "structure",
    id = "QueryRecommendationTriggerData",
    members = {
        text = {
            type = "string",
        },
    },
}

M.RecommendationTriggerData = {
    type = "union",
    id = "RecommendationTriggerData",
    members = {
        query = M.QueryRecommendationTriggerData,
    },
}

M.RecommendationSourceType = {
    ISSUE_DETECTION = "ISSUE_DETECTION",
    RULE_EVALUATION = "RULE_EVALUATION",
    OTHER = "OTHER",
}

M.RecommendationTriggerType = {
    QUERY = "QUERY",
}

M.RecommendationTrigger = {
    type = "structure",
    id = "RecommendationTrigger",
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
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationTriggerData }),
        recommendationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetRecommendationsOutput = {
    type = "structure",
    id = "GetRecommendationsOutput",
    members = {
        recommendations = {
            type = "list",
            member = M.RecommendationData,
            traits = {
                required = true,
            },
        },
        triggers = {
            type = "list",
            member = M.RecommendationTrigger,
        },
    },
}

M.ListAssistantsInput = {
    type = "structure",
    id = "ListAssistantsInput",
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
    },
}

M.AssistantSummary = {
    type = "structure",
    id = "AssistantSummary",
    members = {
        assistantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantArn = {
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
        type = {
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
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        integrationConfiguration = M.AssistantIntegrationConfiguration,
    },
}

M.ListAssistantsOutput = {
    type = "structure",
    id = "ListAssistantsOutput",
    members = {
        assistantSummaries = {
            type = "list",
            member = M.AssistantSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NotifyRecommendationsReceivedInput = {
    type = "structure",
    id = "NotifyRecommendationsReceivedInput",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recommendationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NotifyRecommendationsReceivedError = {
    type = "structure",
    id = "NotifyRecommendationsReceivedError",
    members = {
        recommendationId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.NotifyRecommendationsReceivedOutput = {
    type = "structure",
    id = "NotifyRecommendationsReceivedOutput",
    members = {
        recommendationIds = {
            type = "list",
            member = { type = "string" },
        },
        errors = {
            type = "list",
            member = M.NotifyRecommendationsReceivedError,
        },
    },
}

M.QueryAssistantInput = {
    type = "structure",
    id = "QueryAssistantInput",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ResultData = {
    type = "structure",
    id = "ResultData",
    members = {
        resultId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
        relevanceScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.QueryAssistantOutput = {
    type = "structure",
    id = "QueryAssistantOutput",
    members = {
        results = {
            type = "list",
            member = M.ResultData,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RequestTimeoutException = {
    type = "structure",
    id = "RequestTimeoutException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FilterField = {
    NAME = "NAME",
}

M.FilterOperator = {
    EQUALS = "EQUALS",
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchExpression = {
    type = "structure",
    id = "SearchExpression",
    members = {
        filters = {
            type = "list",
            member = M.Filter,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchSessionsInput = {
    type = "structure",
    id = "SearchSessionsInput",
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
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        searchExpression = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchExpression }),
    },
}

M.SessionSummary = {
    type = "structure",
    id = "SessionSummary",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assistantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchSessionsOutput = {
    type = "structure",
    id = "SearchSessionsOutput",
    members = {
        sessionSummaries = {
            type = "list",
            member = M.SessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CreateSessionInput = {
    type = "structure",
    id = "CreateSessionInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
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
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SessionIntegrationConfiguration = {
    type = "structure",
    id = "SessionIntegrationConfiguration",
    members = {
        topicIntegrationArn = {
            type = "string",
        },
    },
}

M.SessionData = {
    type = "structure",
    id = "SessionData",
    members = {
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
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
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        integrationConfiguration = M.SessionIntegrationConfiguration,
    },
}

M.CreateSessionOutput = {
    type = "structure",
    id = "CreateSessionOutput",
    members = {
        session = M.SessionData,
    },
}

M.GetSessionInput = {
    type = "structure",
    id = "GetSessionInput",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSessionOutput = {
    type = "structure",
    id = "GetSessionOutput",
    members = {
        session = M.SessionData,
    },
}

M.ConnectConfiguration = {
    type = "structure",
    id = "ConnectConfiguration",
    members = {
        instanceId = {
            type = "string",
        },
    },
}

M.Configuration = {
    type = "union",
    id = "Configuration",
    members = {
        connectConfiguration = M.ConnectConfiguration,
    },
}

M.CreateContentInput = {
    type = "structure",
    id = "CreateContentInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        overrideLinkOutUri = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ContentStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.ContentData = {
    type = "structure",
    id = "ContentData",
    members = {
        contentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseId = {
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
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        linkOutUri = {
            type = "string",
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        urlExpiry = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
    },
}

M.CreateContentOutput = {
    type = "structure",
    id = "CreateContentOutput",
    members = {
        content = M.ContentData,
    },
}

M.DeleteContentInput = {
    type = "structure",
    id = "DeleteContentInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContentOutput = {
    type = "structure",
    id = "DeleteContentOutput",
}

M.GetContentInput = {
    type = "structure",
    id = "GetContentInput",
    members = {
        contentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContentOutput = {
    type = "structure",
    id = "GetContentOutput",
    members = {
        content = M.ContentData,
    },
}

M.GetContentSummaryInput = {
    type = "structure",
    id = "GetContentSummaryInput",
    members = {
        contentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ContentSummary = {
    type = "structure",
    id = "ContentSummary",
    members = {
        contentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseId = {
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
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetContentSummaryOutput = {
    type = "structure",
    id = "GetContentSummaryOutput",
    members = {
        contentSummary = M.ContentSummary,
    },
}

M.ListContentsInput = {
    type = "structure",
    id = "ListContentsInput",
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
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListContentsOutput = {
    type = "structure",
    id = "ListContentsOutput",
    members = {
        contentSummaries = {
            type = "list",
            member = M.ContentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PreconditionFailedException = {
    type = "structure",
    id = "PreconditionFailedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateContentInput = {
    type = "structure",
    id = "UpdateContentInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revisionId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        overrideLinkOutUri = {
            type = "string",
        },
        removeOverrideLinkOutUri = {
            type = "boolean",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        uploadId = {
            type = "string",
        },
    },
}

M.UpdateContentOutput = {
    type = "structure",
    id = "UpdateContentOutput",
    members = {
        content = M.ContentData,
    },
}

M.KnowledgeBaseType = {
    EXTERNAL = "EXTERNAL",
    CUSTOM = "CUSTOM",
    QUICK_RESPONSES = "QUICK_RESPONSES",
}

M.RenderingConfiguration = {
    type = "structure",
    id = "RenderingConfiguration",
    members = {
        templateUri = {
            type = "string",
        },
    },
}

M.SourceConfiguration = {
    type = "union",
    id = "SourceConfiguration",
    members = {
        appIntegrations = M.AppIntegrationsConfiguration,
    },
}

M.CreateKnowledgeBaseInput = {
    type = "structure",
    id = "CreateKnowledgeBaseInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceConfiguration = M.SourceConfiguration,
        renderingConfiguration = M.RenderingConfiguration,
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.KnowledgeBaseStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.KnowledgeBaseData = {
    type = "structure",
    id = "KnowledgeBaseData",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
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
        knowledgeBaseType = {
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
        lastContentModificationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        sourceConfiguration = M.SourceConfiguration,
        renderingConfiguration = M.RenderingConfiguration,
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateKnowledgeBaseOutput = {
    type = "structure",
    id = "CreateKnowledgeBaseOutput",
    members = {
        knowledgeBase = M.KnowledgeBaseData,
    },
}

M.QuickResponseDataProvider = {
    type = "union",
    id = "QuickResponseDataProvider",
    members = {
        content = {
            type = "string",
        },
    },
}

M.GroupingConfiguration = {
    type = "structure",
    id = "GroupingConfiguration",
    members = {
        criteria = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateQuickResponseInput = {
    type = "structure",
    id = "CreateQuickResponseInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QuickResponseDataProvider }),
        contentType = {
            type = "string",
        },
        groupingConfiguration = M.GroupingConfiguration,
        description = {
            type = "string",
        },
        shortcutKey = {
            type = "string",
        },
        isActive = {
            type = "boolean",
        },
        channels = {
            type = "list",
            member = { type = "string" },
        },
        language = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.QuickResponseContentProvider = {
    type = "union",
    id = "QuickResponseContentProvider",
    members = {
        content = {
            type = "string",
        },
    },
}

M.QuickResponseContents = {
    type = "structure",
    id = "QuickResponseContents",
    members = {
        plainText = M.QuickResponseContentProvider,
        markdown = M.QuickResponseContentProvider,
    },
}

M.QuickResponseStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    CREATED = "CREATED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.QuickResponseData = {
    type = "structure",
    id = "QuickResponseData",
    members = {
        quickResponseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quickResponseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseId = {
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
        contentType = {
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
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        contents = M.QuickResponseContents,
        description = {
            type = "string",
        },
        groupingConfiguration = M.GroupingConfiguration,
        shortcutKey = {
            type = "string",
        },
        lastModifiedBy = {
            type = "string",
        },
        isActive = {
            type = "boolean",
        },
        channels = {
            type = "list",
            member = { type = "string" },
        },
        language = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateQuickResponseOutput = {
    type = "structure",
    id = "CreateQuickResponseOutput",
    members = {
        quickResponse = M.QuickResponseData,
    },
}

M.DeleteImportJobInput = {
    type = "structure",
    id = "DeleteImportJobInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        importJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteImportJobOutput = {
    type = "structure",
    id = "DeleteImportJobOutput",
}

M.DeleteKnowledgeBaseInput = {
    type = "structure",
    id = "DeleteKnowledgeBaseInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteKnowledgeBaseOutput = {
    type = "structure",
    id = "DeleteKnowledgeBaseOutput",
}

M.DeleteQuickResponseInput = {
    type = "structure",
    id = "DeleteQuickResponseInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        quickResponseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteQuickResponseOutput = {
    type = "structure",
    id = "DeleteQuickResponseOutput",
}

M.ExternalSource = {
    AMAZON_CONNECT = "AMAZON_CONNECT",
}

M.ExternalSourceConfiguration = {
    type = "structure",
    id = "ExternalSourceConfiguration",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Configuration }),
    },
}

M.GetImportJobInput = {
    type = "structure",
    id = "GetImportJobInput",
    members = {
        importJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ImportJobType = {
    QUICK_RESPONSES = "QUICK_RESPONSES",
}

M.ImportJobStatus = {
    START_IN_PROGRESS = "START_IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETE = "COMPLETE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.ImportJobData = {
    type = "structure",
    id = "ImportJobData",
    members = {
        importJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importJobType = {
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
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failedRecordReport = {
            type = "string",
        },
        urlExpiry = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        externalSourceConfiguration = M.ExternalSourceConfiguration,
    },
}

M.GetImportJobOutput = {
    type = "structure",
    id = "GetImportJobOutput",
    members = {
        importJob = M.ImportJobData,
    },
}

M.GetKnowledgeBaseInput = {
    type = "structure",
    id = "GetKnowledgeBaseInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKnowledgeBaseOutput = {
    type = "structure",
    id = "GetKnowledgeBaseOutput",
    members = {
        knowledgeBase = M.KnowledgeBaseData,
    },
}

M.GetQuickResponseInput = {
    type = "structure",
    id = "GetQuickResponseInput",
    members = {
        quickResponseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetQuickResponseOutput = {
    type = "structure",
    id = "GetQuickResponseOutput",
    members = {
        quickResponse = M.QuickResponseData,
    },
}

M.ImportJobSummary = {
    type = "structure",
    id = "ImportJobSummary",
    members = {
        importJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importJobType = {
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
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        externalSourceConfiguration = M.ExternalSourceConfiguration,
    },
}

M.ListImportJobsInput = {
    type = "structure",
    id = "ListImportJobsInput",
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
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListImportJobsOutput = {
    type = "structure",
    id = "ListImportJobsOutput",
    members = {
        importJobSummaries = {
            type = "list",
            member = M.ImportJobSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKnowledgeBasesInput = {
    type = "structure",
    id = "ListKnowledgeBasesInput",
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
    },
}

M.KnowledgeBaseSummary = {
    type = "structure",
    id = "KnowledgeBaseSummary",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
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
        knowledgeBaseType = {
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
        sourceConfiguration = M.SourceConfiguration,
        renderingConfiguration = M.RenderingConfiguration,
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListKnowledgeBasesOutput = {
    type = "structure",
    id = "ListKnowledgeBasesOutput",
    members = {
        knowledgeBaseSummaries = {
            type = "list",
            member = M.KnowledgeBaseSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListQuickResponsesInput = {
    type = "structure",
    id = "ListQuickResponsesInput",
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
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QuickResponseSummary = {
    type = "structure",
    id = "QuickResponseSummary",
    members = {
        quickResponseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quickResponseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseId = {
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
        contentType = {
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
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        description = {
            type = "string",
        },
        lastModifiedBy = {
            type = "string",
        },
        isActive = {
            type = "boolean",
        },
        channels = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListQuickResponsesOutput = {
    type = "structure",
    id = "ListQuickResponsesOutput",
    members = {
        quickResponseSummaries = {
            type = "list",
            member = M.QuickResponseSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateQuickResponseInput = {
    type = "structure",
    id = "UpdateQuickResponseInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        quickResponseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        content = M.QuickResponseDataProvider,
        contentType = {
            type = "string",
        },
        groupingConfiguration = M.GroupingConfiguration,
        removeGroupingConfiguration = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
        removeDescription = {
            type = "boolean",
        },
        shortcutKey = {
            type = "string",
        },
        removeShortcutKey = {
            type = "boolean",
        },
        isActive = {
            type = "boolean",
        },
        channels = {
            type = "list",
            member = { type = "string" },
        },
        language = {
            type = "string",
        },
    },
}

M.UpdateQuickResponseOutput = {
    type = "structure",
    id = "UpdateQuickResponseOutput",
    members = {
        quickResponse = M.QuickResponseData,
    },
}

M.RemoveKnowledgeBaseTemplateUriInput = {
    type = "structure",
    id = "RemoveKnowledgeBaseTemplateUriInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveKnowledgeBaseTemplateUriOutput = {
    type = "structure",
    id = "RemoveKnowledgeBaseTemplateUriOutput",
}

M.SearchContentInput = {
    type = "structure",
    id = "SearchContentInput",
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
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        searchExpression = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchExpression }),
    },
}

M.SearchContentOutput = {
    type = "structure",
    id = "SearchContentOutput",
    members = {
        contentSummaries = {
            type = "list",
            member = M.ContentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.QuickResponseFilterOperator = {
    EQUALS = "EQUALS",
    PREFIX = "PREFIX",
}

M.QuickResponseFilterField = {
    type = "structure",
    id = "QuickResponseFilterField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeNoExistence = {
            type = "boolean",
        },
    },
}

M.Order = {
    ASC = "ASC",
    DESC = "DESC",
}

M.QuickResponseOrderField = {
    type = "structure",
    id = "QuickResponseOrderField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
        },
    },
}

M.QuickResponseQueryOperator = {
    CONTAINS = "CONTAINS",
    CONTAINS_AND_PREFIX = "CONTAINS_AND_PREFIX",
}

M.Priority = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.QuickResponseQueryField = {
    type = "structure",
    id = "QuickResponseQueryField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowFuzziness = {
            type = "boolean",
        },
        priority = {
            type = "string",
        },
    },
}

M.QuickResponseSearchExpression = {
    type = "structure",
    id = "QuickResponseSearchExpression",
    members = {
        queries = {
            type = "list",
            member = M.QuickResponseQueryField,
        },
        filters = {
            type = "list",
            member = M.QuickResponseFilterField,
        },
        orderOnField = M.QuickResponseOrderField,
    },
}

M.SearchQuickResponsesInput = {
    type = "structure",
    id = "SearchQuickResponsesInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        searchExpression = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QuickResponseSearchExpression }),
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
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.QuickResponseSearchResultData = {
    type = "structure",
    id = "QuickResponseSearchResultData",
    members = {
        quickResponseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quickResponseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseId = {
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
        contentType = {
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
        contents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QuickResponseContents }),
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        isActive = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        groupingConfiguration = M.GroupingConfiguration,
        shortcutKey = {
            type = "string",
        },
        lastModifiedBy = {
            type = "string",
        },
        channels = {
            type = "list",
            member = { type = "string" },
        },
        language = {
            type = "string",
        },
        attributesNotInterpolated = {
            type = "list",
            member = { type = "string" },
        },
        attributesInterpolated = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchQuickResponsesOutput = {
    type = "structure",
    id = "SearchQuickResponsesOutput",
    members = {
        results = {
            type = "list",
            member = M.QuickResponseSearchResultData,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartContentUploadInput = {
    type = "structure",
    id = "StartContentUploadInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        presignedUrlTimeToLive = {
            type = "integer",
        },
    },
}

M.StartContentUploadOutput = {
    type = "structure",
    id = "StartContentUploadOutput",
    members = {
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        urlExpiry = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        headersToInclude = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartImportJobInput = {
    type = "structure",
    id = "StartImportJobInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        importJobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        externalSourceConfiguration = M.ExternalSourceConfiguration,
    },
}

M.StartImportJobOutput = {
    type = "structure",
    id = "StartImportJobOutput",
    members = {
        importJob = M.ImportJobData,
    },
}

M.UpdateKnowledgeBaseTemplateUriInput = {
    type = "structure",
    id = "UpdateKnowledgeBaseTemplateUriInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateKnowledgeBaseTemplateUriOutput = {
    type = "structure",
    id = "UpdateKnowledgeBaseTemplateUriOutput",
    members = {
        knowledgeBase = M.KnowledgeBaseData,
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

return M
