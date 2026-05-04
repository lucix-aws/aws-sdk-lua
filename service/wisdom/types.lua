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
            member_type = "string",
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
        association = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        knowledgeBaseAssociation = {
            type = "structure",
        },
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
        associationData = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAssistantAssociationOutput = {
    type = "structure",
    members = {
        assistantAssociation = {
            type = "structure",
        },
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
        assistantAssociation = {
            type = "structure",
        },
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
            type = "number",
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
        associationData = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListAssistantAssociationsOutput = {
    type = "structure",
    members = {
        assistantAssociationSummaries = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        integrationConfiguration = {
            type = "structure",
        },
    },
}

M.CreateAssistantOutput = {
    type = "structure",
    members = {
        assistant = {
            type = "structure",
        },
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
        assistant = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        waitTimeSeconds = {
            type = "number",
            traits = {
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
            type = "number",
        },
        endOffsetExclusive = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.Document = {
    type = "structure",
    members = {
        contentReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        title = {
            type = "structure",
        },
        excerpt = {
            type = "structure",
        },
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
        document = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        relevanceScore = {
            type = "number",
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
        query = {
            type = "structure",
        },
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
        data = {
            type = "union",
            traits = {
                required = true,
            },
        },
        recommendationIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        triggers = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        integrationConfiguration = {
            type = "structure",
        },
    },
}

M.ListAssistantsOutput = {
    type = "structure",
    members = {
        assistantSummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        document = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        relevanceScore = {
            type = "number",
        },
    },
}

M.QueryAssistantOutput = {
    type = "structure",
    members = {
        results = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
        searchExpression = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        integrationConfiguration = {
            type = "structure",
        },
    },
}

M.CreateSessionOutput = {
    type = "structure",
    members = {
        session = {
            type = "structure",
        },
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
        session = {
            type = "structure",
        },
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
        connectConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        content = {
            type = "structure",
        },
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
        content = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetContentSummaryOutput = {
    type = "structure",
    members = {
        contentSummary = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        uploadId = {
            type = "string",
        },
    },
}

M.UpdateContentOutput = {
    type = "structure",
    members = {
        content = {
            type = "structure",
        },
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
        appIntegrations = {
            type = "structure",
        },
    },
}

M.CreateKnowledgeBaseInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
        sourceConfiguration = {
            type = "union",
        },
        renderingConfiguration = {
            type = "structure",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        sourceConfiguration = {
            type = "union",
        },
        renderingConfiguration = {
            type = "structure",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateKnowledgeBaseOutput = {
    type = "structure",
    members = {
        knowledgeBase = {
            type = "structure",
        },
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
            member_type = "string",
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        contentType = {
            type = "string",
        },
        groupingConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        language = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        plainText = {
            type = "union",
        },
        markdown = {
            type = "union",
        },
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
        contents = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        groupingConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        language = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateQuickResponseOutput = {
    type = "structure",
    members = {
        quickResponse = {
            type = "structure",
        },
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
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        externalSourceConfiguration = {
            type = "structure",
        },
    },
}

M.GetImportJobOutput = {
    type = "structure",
    members = {
        importJob = {
            type = "structure",
        },
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
        knowledgeBase = {
            type = "structure",
        },
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
        quickResponse = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        externalSourceConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        sourceConfiguration = {
            type = "union",
        },
        renderingConfiguration = {
            type = "structure",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListKnowledgeBasesOutput = {
    type = "structure",
    members = {
        knowledgeBaseSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListQuickResponsesOutput = {
    type = "structure",
    members = {
        quickResponseSummaries = {
            type = "list",
            member_type = "structure",
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
        content = {
            type = "union",
        },
        contentType = {
            type = "string",
        },
        groupingConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        language = {
            type = "string",
        },
    },
}

M.UpdateQuickResponseOutput = {
    type = "structure",
    members = {
        quickResponse = {
            type = "structure",
        },
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
            type = "number",
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
        searchExpression = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchContentOutput = {
    type = "structure",
    members = {
        contentSummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        orderOnField = {
            type = "structure",
        },
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
        searchExpression = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        contents = {
            type = "structure",
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
        isActive = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        groupingConfiguration = {
            type = "structure",
        },
        shortcutKey = {
            type = "string",
        },
        lastModifiedBy = {
            type = "string",
        },
        channels = {
            type = "list",
            member_type = "string",
        },
        language = {
            type = "string",
        },
        attributesNotInterpolated = {
            type = "list",
            member_type = "string",
        },
        attributesInterpolated = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SearchQuickResponsesOutput = {
    type = "structure",
    members = {
        results = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        externalSourceConfiguration = {
            type = "structure",
        },
    },
}

M.StartImportJobOutput = {
    type = "structure",
    members = {
        importJob = {
            type = "structure",
        },
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
        knowledgeBase = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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

return M
