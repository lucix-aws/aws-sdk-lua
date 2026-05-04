local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AppIntegrationsConfiguration = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssistantAssociationInputData = {
    type = "union",
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
    members = {
        knowledgeBaseAssociation = M.KnowledgeBaseAssociationData,
    },
}

M.AssistantAssociationData = {
    type = "structure",
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
    members = {
        assistantAssociation = M.AssistantAssociationData,
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAssistantAssociationInput = {
    type = "structure",
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
}

M.GetAssistantAssociationInput = {
    type = "structure",
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
    members = {
        assistantAssociation = M.AssistantAssociationData,
    },
}

M.ListAssistantAssociationsInput = {
    type = "structure",
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
    members = {
        assistant = M.AssistantData,
    },
}

M.DeleteAssistantInput = {
    type = "structure",
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
}

M.GetAssistantInput = {
    type = "structure",
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
    members = {
        assistant = M.AssistantData,
    },
}

M.GetRecommendationsInput = {
    type = "structure",
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
    members = {
        text = {
            type = "string",
        },
    },
}

M.RecommendationTriggerData = {
    type = "union",
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
    members = {
        topicIntegrationArn = {
            type = "string",
        },
    },
}

M.SessionData = {
    type = "structure",
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
    members = {
        session = M.SessionData,
    },
}

M.GetSessionInput = {
    type = "structure",
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
    members = {
        session = M.SessionData,
    },
}

M.ConnectConfiguration = {
    type = "structure",
    members = {
        instanceId = {
            type = "string",
        },
    },
}

M.Configuration = {
    type = "union",
    members = {
        connectConfiguration = M.ConnectConfiguration,
    },
}

M.CreateContentInput = {
    type = "structure",
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
    members = {
        content = M.ContentData,
    },
}

M.DeleteContentInput = {
    type = "structure",
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
}

M.GetContentInput = {
    type = "structure",
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
    members = {
        content = M.ContentData,
    },
}

M.GetContentSummaryInput = {
    type = "structure",
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
    members = {
        contentSummary = M.ContentSummary,
    },
}

M.ListContentsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateContentInput = {
    type = "structure",
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
    members = {
        templateUri = {
            type = "string",
        },
    },
}

M.SourceConfiguration = {
    type = "union",
    members = {
        appIntegrations = M.AppIntegrationsConfiguration,
    },
}

M.CreateKnowledgeBaseInput = {
    type = "structure",
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
    members = {
        knowledgeBase = M.KnowledgeBaseData,
    },
}

M.QuickResponseDataProvider = {
    type = "union",
    members = {
        content = {
            type = "string",
        },
    },
}

M.GroupingConfiguration = {
    type = "structure",
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
    members = {
        content = {
            type = "string",
        },
    },
}

M.QuickResponseContents = {
    type = "structure",
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
    members = {
        quickResponse = M.QuickResponseData,
    },
}

M.DeleteImportJobInput = {
    type = "structure",
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
}

M.DeleteKnowledgeBaseInput = {
    type = "structure",
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
}

M.DeleteQuickResponseInput = {
    type = "structure",
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
}

M.ExternalSource = {
    AMAZON_CONNECT = "AMAZON_CONNECT",
}

M.ExternalSourceConfiguration = {
    type = "structure",
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
    members = {
        importJob = M.ImportJobData,
    },
}

M.GetKnowledgeBaseInput = {
    type = "structure",
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
    members = {
        knowledgeBase = M.KnowledgeBaseData,
    },
}

M.GetQuickResponseInput = {
    type = "structure",
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
    members = {
        quickResponse = M.QuickResponseData,
    },
}

M.ImportJobSummary = {
    type = "structure",
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
    members = {
        quickResponse = M.QuickResponseData,
    },
}

M.RemoveKnowledgeBaseTemplateUriInput = {
    type = "structure",
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
}

M.SearchContentInput = {
    type = "structure",
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
    members = {
        importJob = M.ImportJobData,
    },
}

M.UpdateKnowledgeBaseTemplateUriInput = {
    type = "structure",
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
    members = {
        knowledgeBase = M.KnowledgeBaseData,
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
}

M.TooManyTagsException = {
    type = "structure",
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
}

return M
