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

M.ActivateMessageTemplateInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivateMessageTemplateOutput = {
    type = "structure",
    members = {
        messageTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionNumber = {
            type = "long",
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
        message = {
            type = "string",
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

M.ThrottlingException = {
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

M.AgentAttributes = {
    type = "structure",
    members = {
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
    },
}

M.TagCondition = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.OrCondition = {
    type = "union",
    members = {
        andConditions = {
            type = "list",
            member = M.TagCondition,
        },
        tagCondition = M.TagCondition,
    },
}

M.TagFilter = {
    type = "union",
    members = {
        tagCondition = M.TagCondition,
        andConditions = {
            type = "list",
            member = M.TagCondition,
        },
        orConditions = {
            type = "list",
            member = M.OrCondition,
        },
    },
}

M.KnowledgeBaseSearchType = {
    HYBRID = "HYBRID",
    SEMANTIC = "SEMANTIC",
}

M.KnowledgeBaseAssociationConfigurationData = {
    type = "structure",
    members = {
        contentTagFilter = M.TagFilter,
        maxResults = {
            type = "integer",
        },
        overrideKnowledgeBaseSearchType = {
            type = "string",
        },
    },
}

M.AssociationConfigurationData = {
    type = "union",
    members = {
        knowledgeBaseAssociationConfigurationData = M.KnowledgeBaseAssociationConfigurationData,
    },
}

M.AIAgentAssociationConfigurationType = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
}

M.AssociationConfiguration = {
    type = "structure",
    members = {
        associationId = {
            type = "string",
        },
        associationType = {
            type = "string",
        },
        associationConfigurationData = M.AssociationConfigurationData,
    },
}

M.AnswerRecommendationAIAgentConfiguration = {
    type = "structure",
    members = {
        intentLabelingGenerationAIPromptId = {
            type = "string",
        },
        queryReformulationAIPromptId = {
            type = "string",
        },
        answerGenerationAIPromptId = {
            type = "string",
        },
        answerGenerationAIGuardrailId = {
            type = "string",
        },
        associationConfigurations = {
            type = "list",
            member = M.AssociationConfiguration,
        },
        locale = {
            type = "string",
        },
        suggestedMessages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CaseSummarizationAIAgentConfiguration = {
    type = "structure",
    members = {
        caseSummarizationAIPromptId = {
            type = "string",
        },
        caseSummarizationAIGuardrailId = {
            type = "string",
        },
        locale = {
            type = "string",
        },
    },
}

M.EmailGenerativeAnswerAIAgentConfiguration = {
    type = "structure",
    members = {
        emailGenerativeAnswerAIPromptId = {
            type = "string",
        },
        emailQueryReformulationAIPromptId = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        associationConfigurations = {
            type = "list",
            member = M.AssociationConfiguration,
        },
    },
}

M.EmailOverviewAIAgentConfiguration = {
    type = "structure",
    members = {
        emailOverviewAIPromptId = {
            type = "string",
        },
        locale = {
            type = "string",
        },
    },
}

M.EmailResponseAIAgentConfiguration = {
    type = "structure",
    members = {
        emailResponseAIPromptId = {
            type = "string",
        },
        emailQueryReformulationAIPromptId = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        associationConfigurations = {
            type = "list",
            member = M.AssociationConfiguration,
        },
    },
}

M.ManualSearchAIAgentConfiguration = {
    type = "structure",
    members = {
        answerGenerationAIPromptId = {
            type = "string",
        },
        answerGenerationAIGuardrailId = {
            type = "string",
        },
        associationConfigurations = {
            type = "list",
            member = M.AssociationConfiguration,
        },
        locale = {
            type = "string",
        },
    },
}

M.NoteTakingAIAgentConfiguration = {
    type = "structure",
    members = {
        noteTakingAIPromptId = {
            type = "string",
        },
        noteTakingAIGuardrailId = {
            type = "string",
        },
        locale = {
            type = "string",
        },
    },
}

M.Annotation = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        destructiveHint = {
            type = "boolean",
        },
    },
}

M.ToolInstruction = {
    type = "structure",
    members = {
        instruction = {
            type = "string",
        },
        examples = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ToolOutputConfiguration = {
    type = "structure",
    members = {
        outputVariableNameOverride = {
            type = "string",
        },
        sessionDataNamespace = {
            type = "string",
        },
    },
}

M.ToolOutputFilter = {
    type = "structure",
    members = {
        jsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfiguration = M.ToolOutputConfiguration,
    },
}

M.ToolOverrideInputValueType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
    JSON_STRING = "JSON_STRING",
}

M.ToolOverrideConstantInputValue = {
    type = "structure",
    members = {
        type = {
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

M.ToolOverrideInputValueConfiguration = {
    type = "union",
    members = {
        constant = M.ToolOverrideConstantInputValue,
    },
}

M.ToolOverrideInputValue = {
    type = "structure",
    members = {
        jsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolOverrideInputValueConfiguration }),
    },
}

M.ToolType = {
    MODEL_CONTEXT_PROTOCOL = "MODEL_CONTEXT_PROTOCOL",
    RETURN_TO_CONTROL = "RETURN_TO_CONTROL",
    CONSTANT = "CONSTANT",
}

M.UserInteractionConfiguration = {
    type = "structure",
    members = {
        isUserConfirmationRequired = {
            type = "boolean",
        },
    },
}

M.ToolConfiguration = {
    type = "structure",
    members = {
        toolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        toolId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        instruction = M.ToolInstruction,
        overrideInputValues = {
            type = "list",
            member = M.ToolOverrideInputValue,
        },
        outputFilters = {
            type = "list",
            member = M.ToolOutputFilter,
        },
        inputSchema = {
            type = "document",
        },
        outputSchema = {
            type = "document",
        },
        annotations = M.Annotation,
        userInteractionConfiguration = M.UserInteractionConfiguration,
    },
}

M.OrchestrationAIAgentConfiguration = {
    type = "structure",
    members = {
        orchestrationAIPromptId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        orchestrationAIGuardrailId = {
            type = "string",
        },
        toolConfigurations = {
            type = "list",
            member = M.ToolConfiguration,
        },
        connectInstanceArn = {
            type = "string",
        },
        locale = {
            type = "string",
        },
    },
}

M.SelfServiceAIAgentConfiguration = {
    type = "structure",
    members = {
        selfServicePreProcessingAIPromptId = {
            type = "string",
        },
        selfServiceAnswerGenerationAIPromptId = {
            type = "string",
        },
        selfServiceAIGuardrailId = {
            type = "string",
        },
        associationConfigurations = {
            type = "list",
            member = M.AssociationConfiguration,
        },
    },
}

M.AIAgentConfiguration = {
    type = "union",
    members = {
        manualSearchAIAgentConfiguration = M.ManualSearchAIAgentConfiguration,
        answerRecommendationAIAgentConfiguration = M.AnswerRecommendationAIAgentConfiguration,
        selfServiceAIAgentConfiguration = M.SelfServiceAIAgentConfiguration,
        emailResponseAIAgentConfiguration = M.EmailResponseAIAgentConfiguration,
        emailOverviewAIAgentConfiguration = M.EmailOverviewAIAgentConfiguration,
        emailGenerativeAnswerAIAgentConfiguration = M.EmailGenerativeAnswerAIAgentConfiguration,
        orchestrationAIAgentConfiguration = M.OrchestrationAIAgentConfiguration,
        noteTakingAIAgentConfiguration = M.NoteTakingAIAgentConfiguration,
        caseSummarizationAIAgentConfiguration = M.CaseSummarizationAIAgentConfiguration,
    },
}

M.AIAgentType = {
    MANUAL_SEARCH = "MANUAL_SEARCH",
    ANSWER_RECOMMENDATION = "ANSWER_RECOMMENDATION",
    SELF_SERVICE = "SELF_SERVICE",
    EMAIL_RESPONSE = "EMAIL_RESPONSE",
    EMAIL_OVERVIEW = "EMAIL_OVERVIEW",
    EMAIL_GENERATIVE_ANSWER = "EMAIL_GENERATIVE_ANSWER",
    ORCHESTRATION = "ORCHESTRATION",
    NOTE_TAKING = "NOTE_TAKING",
    CASE_SUMMARIZATION = "CASE_SUMMARIZATION",
}

M.VisibilityStatus = {
    SAVED = "SAVED",
    PUBLISHED = "PUBLISHED",
}

M.CreateAIAgentInput = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIAgentConfiguration }),
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.Origin = {
    SYSTEM = "SYSTEM",
    CUSTOMER = "CUSTOMER",
}

M.Status = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.AIAgentData = {
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
        aiAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aiAgentArn = {
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIAgentConfiguration }),
        modifiedTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        origin = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CreateAIAgentOutput = {
    type = "structure",
    members = {
        aiAgent = M.AIAgentData,
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

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAIAgentVersionInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiAgentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modifiedTime = {
            type = "timestamp",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAIAgentVersionOutput = {
    type = "structure",
    members = {
        aiAgent = M.AIAgentData,
        versionNumber = {
            type = "long",
        },
    },
}

M.DeleteAIAgentInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiAgentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAIAgentOutput = {
    type = "structure",
}

M.DeleteAIAgentVersionInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiAgentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAIAgentVersionOutput = {
    type = "structure",
}

M.GetAIAgentInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiAgentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAIAgentOutput = {
    type = "structure",
    members = {
        aiAgent = M.AIAgentData,
        versionNumber = {
            type = "long",
        },
    },
}

M.ListAIAgentsInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        origin = {
            type = "string",
            traits = {
                http_query = "origin",
            },
        },
    },
}

M.AIAgentSummary = {
    type = "structure",
    members = {
        name = {
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
        aiAgentId = {
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
        aiAgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modifiedTime = {
            type = "timestamp",
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = M.AIAgentConfiguration,
        origin = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListAIAgentsOutput = {
    type = "structure",
    members = {
        aiAgentSummaries = {
            type = "list",
            member = M.AIAgentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAIAgentVersionsInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiAgentId = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        origin = {
            type = "string",
            traits = {
                http_query = "origin",
            },
        },
    },
}

M.AIAgentVersionSummary = {
    type = "structure",
    members = {
        aiAgentSummary = M.AIAgentSummary,
        versionNumber = {
            type = "long",
        },
    },
}

M.ListAIAgentVersionsOutput = {
    type = "structure",
    members = {
        aiAgentVersionSummaries = {
            type = "list",
            member = M.AIAgentVersionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAIAgentInput = {
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
        aiAgentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = M.AIAgentConfiguration,
        description = {
            type = "string",
        },
    },
}

M.UpdateAIAgentOutput = {
    type = "structure",
    members = {
        aiAgent = M.AIAgentData,
    },
}

M.AIAgentConfigurationData = {
    type = "structure",
    members = {
        aiAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailFilterStrength = {
    NONE = "NONE",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.GuardrailContentFilterType = {
    SEXUAL = "SEXUAL",
    VIOLENCE = "VIOLENCE",
    HATE = "HATE",
    INSULTS = "INSULTS",
    MISCONDUCT = "MISCONDUCT",
    PROMPT_ATTACK = "PROMPT_ATTACK",
}

M.GuardrailContentFilterConfig = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputStrength = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputStrength = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIGuardrailContentPolicyConfig = {
    type = "structure",
    members = {
        filtersConfig = {
            type = "list",
            member = M.GuardrailContentFilterConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailContextualGroundingFilterType = {
    GROUNDING = "GROUNDING",
    RELEVANCE = "RELEVANCE",
}

M.GuardrailContextualGroundingFilterConfig = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threshold = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AIGuardrailContextualGroundingPolicyConfig = {
    type = "structure",
    members = {
        filtersConfig = {
            type = "list",
            member = M.GuardrailContextualGroundingFilterConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailSensitiveInformationAction = {
    BLOCK = "BLOCK",
    ANONYMIZE = "ANONYMIZE",
}

M.GuardrailPiiEntityType = {
    ADDRESS = "ADDRESS",
    AGE = "AGE",
    AWS_ACCESS_KEY = "AWS_ACCESS_KEY",
    AWS_SECRET_KEY = "AWS_SECRET_KEY",
    CA_HEALTH_NUMBER = "CA_HEALTH_NUMBER",
    CA_SOCIAL_INSURANCE_NUMBER = "CA_SOCIAL_INSURANCE_NUMBER",
    CREDIT_DEBIT_CARD_CVV = "CREDIT_DEBIT_CARD_CVV",
    CREDIT_DEBIT_CARD_EXPIRY = "CREDIT_DEBIT_CARD_EXPIRY",
    CREDIT_DEBIT_CARD_NUMBER = "CREDIT_DEBIT_CARD_NUMBER",
    DRIVER_ID = "DRIVER_ID",
    EMAIL = "EMAIL",
    INTERNATIONAL_BANK_ACCOUNT_NUMBER = "INTERNATIONAL_BANK_ACCOUNT_NUMBER",
    IP_ADDRESS = "IP_ADDRESS",
    LICENSE_PLATE = "LICENSE_PLATE",
    MAC_ADDRESS = "MAC_ADDRESS",
    NAME = "NAME",
    PASSWORD = "PASSWORD",
    PHONE = "PHONE",
    PIN = "PIN",
    SWIFT_CODE = "SWIFT_CODE",
    UK_NATIONAL_HEALTH_SERVICE_NUMBER = "UK_NATIONAL_HEALTH_SERVICE_NUMBER",
    UK_NATIONAL_INSURANCE_NUMBER = "UK_NATIONAL_INSURANCE_NUMBER",
    UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER",
    URL = "URL",
    USERNAME = "USERNAME",
    US_BANK_ACCOUNT_NUMBER = "US_BANK_ACCOUNT_NUMBER",
    US_BANK_ROUTING_NUMBER = "US_BANK_ROUTING_NUMBER",
    US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER",
    US_PASSPORT_NUMBER = "US_PASSPORT_NUMBER",
    US_SOCIAL_SECURITY_NUMBER = "US_SOCIAL_SECURITY_NUMBER",
    VEHICLE_IDENTIFICATION_NUMBER = "VEHICLE_IDENTIFICATION_NUMBER",
}

M.GuardrailPiiEntityConfig = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailRegexConfig = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        pattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIGuardrailSensitiveInformationPolicyConfig = {
    type = "structure",
    members = {
        piiEntitiesConfig = {
            type = "list",
            member = M.GuardrailPiiEntityConfig,
        },
        regexesConfig = {
            type = "list",
            member = M.GuardrailRegexConfig,
        },
    },
}

M.GuardrailTopicType = {
    DENY = "DENY",
}

M.GuardrailTopicConfig = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        examples = {
            type = "list",
            member = { type = "string" },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIGuardrailTopicPolicyConfig = {
    type = "structure",
    members = {
        topicsConfig = {
            type = "list",
            member = M.GuardrailTopicConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailManagedWordsType = {
    PROFANITY = "PROFANITY",
}

M.GuardrailManagedWordsConfig = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailWordConfig = {
    type = "structure",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIGuardrailWordPolicyConfig = {
    type = "structure",
    members = {
        wordsConfig = {
            type = "list",
            member = M.GuardrailWordConfig,
        },
        managedWordListsConfig = {
            type = "list",
            member = M.GuardrailManagedWordsConfig,
        },
    },
}

M.CreateAIGuardrailInput = {
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
        blockedInputMessaging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedOutputsMessaging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        topicPolicyConfig = M.AIGuardrailTopicPolicyConfig,
        contentPolicyConfig = M.AIGuardrailContentPolicyConfig,
        wordPolicyConfig = M.AIGuardrailWordPolicyConfig,
        sensitiveInformationPolicyConfig = M.AIGuardrailSensitiveInformationPolicyConfig,
        contextualGroundingPolicyConfig = M.AIGuardrailContextualGroundingPolicyConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AIGuardrailData = {
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
        aiGuardrailArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aiGuardrailId = {
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
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedInputMessaging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedOutputsMessaging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        topicPolicyConfig = M.AIGuardrailTopicPolicyConfig,
        contentPolicyConfig = M.AIGuardrailContentPolicyConfig,
        wordPolicyConfig = M.AIGuardrailWordPolicyConfig,
        sensitiveInformationPolicyConfig = M.AIGuardrailSensitiveInformationPolicyConfig,
        contextualGroundingPolicyConfig = M.AIGuardrailContextualGroundingPolicyConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        modifiedTime = {
            type = "timestamp",
        },
    },
}

M.CreateAIGuardrailOutput = {
    type = "structure",
    members = {
        aiGuardrail = M.AIGuardrailData,
    },
}

M.CreateAIGuardrailVersionInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiGuardrailId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modifiedTime = {
            type = "timestamp",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAIGuardrailVersionOutput = {
    type = "structure",
    members = {
        aiGuardrail = M.AIGuardrailData,
        versionNumber = {
            type = "long",
        },
    },
}

M.DeleteAIGuardrailInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiGuardrailId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAIGuardrailOutput = {
    type = "structure",
}

M.DeleteAIGuardrailVersionInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiGuardrailId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAIGuardrailVersionOutput = {
    type = "structure",
}

M.GetAIGuardrailInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiGuardrailId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAIGuardrailOutput = {
    type = "structure",
    members = {
        aiGuardrail = M.AIGuardrailData,
        versionNumber = {
            type = "long",
        },
    },
}

M.ListAIGuardrailsInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.AIGuardrailSummary = {
    type = "structure",
    members = {
        name = {
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
        aiGuardrailId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aiGuardrailArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modifiedTime = {
            type = "timestamp",
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListAIGuardrailsOutput = {
    type = "structure",
    members = {
        aiGuardrailSummaries = {
            type = "list",
            member = M.AIGuardrailSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAIGuardrailVersionsInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiGuardrailId = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.AIGuardrailVersionSummary = {
    type = "structure",
    members = {
        aiGuardrailSummary = M.AIGuardrailSummary,
        versionNumber = {
            type = "long",
        },
    },
}

M.ListAIGuardrailVersionsOutput = {
    type = "structure",
    members = {
        aiGuardrailVersionSummaries = {
            type = "list",
            member = M.AIGuardrailVersionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAIGuardrailInput = {
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
        aiGuardrailId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedInputMessaging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedOutputsMessaging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        topicPolicyConfig = M.AIGuardrailTopicPolicyConfig,
        contentPolicyConfig = M.AIGuardrailContentPolicyConfig,
        wordPolicyConfig = M.AIGuardrailWordPolicyConfig,
        sensitiveInformationPolicyConfig = M.AIGuardrailSensitiveInformationPolicyConfig,
        contextualGroundingPolicyConfig = M.AIGuardrailContextualGroundingPolicyConfig,
    },
}

M.UpdateAIGuardrailOutput = {
    type = "structure",
    members = {
        aiGuardrail = M.AIGuardrailData,
    },
}

M.AIGuardrailAssessment = {
    type = "structure",
    members = {
        blocked = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AIPromptAPIFormat = {
    ANTHROPIC_CLAUDE_MESSAGES = "ANTHROPIC_CLAUDE_MESSAGES",
    ANTHROPIC_CLAUDE_TEXT_COMPLETIONS = "ANTHROPIC_CLAUDE_TEXT_COMPLETIONS",
    MESSAGES = "MESSAGES",
    TEXT_COMPLETIONS = "TEXT_COMPLETIONS",
}

M.AIPromptInferenceConfiguration = {
    type = "structure",
    members = {
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
        topK = {
            type = "integer",
        },
        maxTokensToSample = {
            type = "integer",
        },
    },
}

M.TextFullAIPromptEditTemplateConfiguration = {
    type = "structure",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AIPromptTemplateConfiguration = {
    type = "union",
    members = {
        textFullAIPromptEditTemplateConfiguration = M.TextFullAIPromptEditTemplateConfiguration,
    },
}

M.AIPromptTemplateType = {
    TEXT = "TEXT",
}

M.AIPromptType = {
    ANSWER_GENERATION = "ANSWER_GENERATION",
    INTENT_LABELING_GENERATION = "INTENT_LABELING_GENERATION",
    QUERY_REFORMULATION = "QUERY_REFORMULATION",
    SELF_SERVICE_PRE_PROCESSING = "SELF_SERVICE_PRE_PROCESSING",
    SELF_SERVICE_ANSWER_GENERATION = "SELF_SERVICE_ANSWER_GENERATION",
    EMAIL_RESPONSE = "EMAIL_RESPONSE",
    EMAIL_OVERVIEW = "EMAIL_OVERVIEW",
    EMAIL_GENERATIVE_ANSWER = "EMAIL_GENERATIVE_ANSWER",
    EMAIL_QUERY_REFORMULATION = "EMAIL_QUERY_REFORMULATION",
    ORCHESTRATION = "ORCHESTRATION",
    NOTE_TAKING = "NOTE_TAKING",
    CASE_SUMMARIZATION = "CASE_SUMMARIZATION",
}

M.CreateAIPromptInput = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIPromptTemplateConfiguration }),
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
        },
        inferenceConfiguration = M.AIPromptInferenceConfiguration,
    },
}

M.AIPromptData = {
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
        aiPromptId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aiPromptArn = {
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
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIPromptTemplateConfiguration }),
        inferenceConfiguration = M.AIPromptInferenceConfiguration,
        modifiedTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        origin = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CreateAIPromptOutput = {
    type = "structure",
    members = {
        aiPrompt = M.AIPromptData,
    },
}

M.CreateAIPromptVersionInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiPromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modifiedTime = {
            type = "timestamp",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateAIPromptVersionOutput = {
    type = "structure",
    members = {
        aiPrompt = M.AIPromptData,
        versionNumber = {
            type = "long",
        },
    },
}

M.DeleteAIPromptInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiPromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAIPromptOutput = {
    type = "structure",
}

M.DeleteAIPromptVersionInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiPromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAIPromptVersionOutput = {
    type = "structure",
}

M.GetAIPromptInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiPromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAIPromptOutput = {
    type = "structure",
    members = {
        aiPrompt = M.AIPromptData,
        versionNumber = {
            type = "long",
        },
    },
}

M.ListAIPromptsInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        origin = {
            type = "string",
            traits = {
                http_query = "origin",
            },
        },
    },
}

M.AIPromptSummary = {
    type = "structure",
    members = {
        name = {
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
        aiPromptId = {
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
        aiPromptArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modifiedTime = {
            type = "timestamp",
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        origin = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListAIPromptsOutput = {
    type = "structure",
    members = {
        aiPromptSummaries = {
            type = "list",
            member = M.AIPromptSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAIPromptVersionsInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiPromptId = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        origin = {
            type = "string",
            traits = {
                http_query = "origin",
            },
        },
    },
}

M.AIPromptVersionSummary = {
    type = "structure",
    members = {
        aiPromptSummary = M.AIPromptSummary,
        versionNumber = {
            type = "long",
        },
    },
}

M.ListAIPromptVersionsOutput = {
    type = "structure",
    members = {
        aiPromptVersionSummaries = {
            type = "list",
            member = M.AIPromptVersionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAIPromptInput = {
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
        aiPromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        visibilityStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateConfiguration = M.AIPromptTemplateConfiguration,
        description = {
            type = "string",
        },
        modelId = {
            type = "string",
        },
        inferenceConfiguration = M.AIPromptInferenceConfiguration,
    },
}

M.UpdateAIPromptOutput = {
    type = "structure",
    members = {
        aiPrompt = M.AIPromptData,
    },
}

M.AmazonConnectGuideAssociationData = {
    type = "structure",
    members = {
        flowId = {
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

M.ExternalBedrockKnowledgeBaseConfig = {
    type = "structure",
    members = {
        bedrockKnowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssistantAssociationInputData = {
    type = "union",
    members = {
        knowledgeBaseId = {
            type = "string",
        },
        externalBedrockKnowledgeBaseConfig = M.ExternalBedrockKnowledgeBaseConfig,
    },
}

M.AssociationType = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    EXTERNAL_BEDROCK_KNOWLEDGE_BASE = "EXTERNAL_BEDROCK_KNOWLEDGE_BASE",
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
        externalBedrockKnowledgeBaseConfig = M.ExternalBedrockKnowledgeBaseConfig,
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

M.AssistantCapabilityType = {
    V1 = "V1",
    V2 = "V2",
}

M.AssistantCapabilityConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
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

M.OrchestratorConfigurationEntry = {
    type = "structure",
    members = {
        aiAgentId = {
            type = "string",
        },
        orchestratorUseCase = {
            type = "string",
            traits = {
                required = true,
            },
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
        capabilityConfiguration = M.AssistantCapabilityConfiguration,
        aiAgentConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.AIAgentConfigurationData,
        },
        orchestratorConfigurationList = {
            type = "list",
            member = M.OrchestratorConfigurationEntry,
        },
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

M.RecommendationType = {
    KNOWLEDGE_CONTENT = "KNOWLEDGE_CONTENT",
    GENERATIVE_RESPONSE = "GENERATIVE_RESPONSE",
    GENERATIVE_ANSWER = "GENERATIVE_ANSWER",
    DETECTED_INTENT = "DETECTED_INTENT",
    GENERATIVE_ANSWER_CHUNK = "GENERATIVE_ANSWER_CHUNK",
    BLOCKED_GENERATIVE_ANSWER_CHUNK = "BLOCKED_GENERATIVE_ANSWER_CHUNK",
    INTENT_ANSWER_CHUNK = "INTENT_ANSWER_CHUNK",
    BLOCKED_INTENT_ANSWER_CHUNK = "BLOCKED_INTENT_ANSWER_CHUNK",
    EMAIL_RESPONSE_CHUNK = "EMAIL_RESPONSE_CHUNK",
    EMAIL_OVERVIEW_CHUNK = "EMAIL_OVERVIEW_CHUNK",
    EMAIL_GENERATIVE_ANSWER_CHUNK = "EMAIL_GENERATIVE_ANSWER_CHUNK",
    CASE_SUMMARIZATION_CHUNK = "CASE_SUMMARIZATION_CHUNK",
    BLOCKED_CASE_SUMMARIZATION_CHUNK = "BLOCKED_CASE_SUMMARIZATION_CHUNK",
    SUGGESTED_MESSAGE = "SUGGESTED_MESSAGE",
    NOTES_CHUNK = "NOTES_CHUNK",
    BLOCKED_NOTES_CHUNK = "BLOCKED_NOTES_CHUNK",
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
        nextChunkToken = {
            type = "string",
            traits = {
                http_query = "nextChunkToken",
            },
        },
        recommendationType = {
            type = "string",
            traits = {
                http_query = "recommendationType",
            },
        },
    },
}

M.CaseSummarizationChunkDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
        },
        nextChunkToken = {
            type = "string",
        },
    },
}

M.RelevanceLevel = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.RankingData = {
    type = "structure",
    members = {
        relevanceScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        relevanceLevel = {
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

M.TextData = {
    type = "structure",
    members = {
        title = M.DocumentText,
        excerpt = M.DocumentText,
    },
}

M.ContentDataDetails = {
    type = "structure",
    members = {
        textData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TextData }),
        rankingData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RankingData }),
    },
}

M.EmailOverviewChunkDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
        },
        nextChunkToken = {
            type = "string",
        },
    },
}

M.EmailResponseChunkDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
        },
        nextChunkToken = {
            type = "string",
        },
    },
}

M.IntentDetectedDataDetails = {
    type = "structure",
    members = {
        intent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        intentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relevanceLevel = {
            type = "string",
        },
    },
}

M.NotesChunkDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
        },
        nextChunkToken = {
            type = "string",
        },
    },
}

M.NotesDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
        },
    },
}

M.CitationSpan = {
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

M.SourceContentType = {
    KNOWLEDGE_CONTENT = "KNOWLEDGE_CONTENT",
}

M.SourceContentDataDetails = {
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
        textData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TextData }),
        rankingData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RankingData }),
        citationSpan = M.CitationSpan,
    },
}

M.SuggestedMessageDataDetails = {
    type = "structure",
    members = {
        messageText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReferenceType = {
    WEB_CRAWLER = "WEB_CRAWLER",
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    BEDROCK_KB_S3 = "BEDROCK_KB_S3",
    BEDROCK_KB_WEB = "BEDROCK_KB_WEB",
    BEDROCK_KB_CONFLUENCE = "BEDROCK_KB_CONFLUENCE",
    BEDROCK_KB_SALESFORCE = "BEDROCK_KB_SALESFORCE",
    BEDROCK_KB_SHAREPOINT = "BEDROCK_KB_SHAREPOINT",
    BEDROCK_KB_KENDRA = "BEDROCK_KB_KENDRA",
    BEDROCK_KB_CUSTOM_DOCUMENT = "BEDROCK_KB_CUSTOM_DOCUMENT",
    BEDROCK_KB_SQL = "BEDROCK_KB_SQL",
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
        sourceURL = {
            type = "string",
        },
        referenceType = {
            type = "string",
        },
    },
}

M.GenerativeReference = {
    type = "structure",
    members = {
        modelId = {
            type = "string",
        },
        generationId = {
            type = "string",
        },
    },
}

M.SuggestedMessageReference = {
    type = "structure",
    members = {
        aiAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aiAgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataReference = {
    type = "union",
    members = {
        contentReference = M.ContentReference,
        generativeReference = M.GenerativeReference,
        suggestedMessageReference = M.SuggestedMessageReference,
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
    GENERATIVE = "GENERATIVE",
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
        capabilityConfiguration = M.AssistantCapabilityConfiguration,
        aiAgentConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.AIAgentConfigurationData,
        },
        orchestratorConfigurationList = {
            type = "list",
            member = M.OrchestratorConfigurationEntry,
        },
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

M.Relevance = {
    HELPFUL = "HELPFUL",
    NOT_HELPFUL = "NOT_HELPFUL",
}

M.GenerativeContentFeedbackData = {
    type = "structure",
    members = {
        relevance = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentFeedbackData = {
    type = "union",
    members = {
        generativeContentFeedbackData = M.GenerativeContentFeedbackData,
    },
}

M.TargetType = {
    RECOMMENDATION = "RECOMMENDATION",
    RESULT = "RESULT",
    MESSAGE = "MESSAGE",
}

M.PutFeedbackInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentFeedback = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentFeedbackData }),
    },
}

M.PutFeedbackOutput = {
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
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentFeedback = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentFeedbackData }),
    },
}

M.QueryConditionComparisonOperator = {
    EQUALS = "EQUALS",
}

M.QueryConditionFieldName = {
    RESULT_TYPE = "RESULT_TYPE",
}

M.QueryConditionItem = {
    type = "structure",
    members = {
        field = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comparator = {
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

M.QueryCondition = {
    type = "union",
    members = {
        single = M.QueryConditionItem,
    },
}

M.CaseSummarizationInputData = {
    type = "structure",
    members = {
        caseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentInputData = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryTextInputData = {
    type = "structure",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryInputData = {
    type = "union",
    members = {
        queryTextInputData = M.QueryTextInputData,
        intentInputData = M.IntentInputData,
        caseSummarizationInputData = M.CaseSummarizationInputData,
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
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        sessionId = {
            type = "string",
        },
        queryCondition = {
            type = "list",
            member = M.QueryCondition,
        },
        queryInputData = M.QueryInputData,
        overrideKnowledgeBaseSearchType = {
            type = "string",
        },
    },
}

M.QueryResultType = {
    KNOWLEDGE_CONTENT = "KNOWLEDGE_CONTENT",
    INTENT_ANSWER = "INTENT_ANSWER",
    GENERATIVE_ANSWER = "GENERATIVE_ANSWER",
    GENERATIVE_ANSWER_CHUNK = "GENERATIVE_ANSWER_CHUNK",
    BLOCKED_GENERATIVE_ANSWER_CHUNK = "BLOCKED_GENERATIVE_ANSWER_CHUNK",
    INTENT_ANSWER_CHUNK = "INTENT_ANSWER_CHUNK",
    BLOCKED_INTENT_ANSWER_CHUNK = "BLOCKED_INTENT_ANSWER_CHUNK",
    EMAIL_RESPONSE_CHUNK = "EMAIL_RESPONSE_CHUNK",
    EMAIL_OVERVIEW_CHUNK = "EMAIL_OVERVIEW_CHUNK",
    EMAIL_GENERATIVE_ANSWER_CHUNK = "EMAIL_GENERATIVE_ANSWER_CHUNK",
    CASE_SUMMARIZATION_CHUNK = "CASE_SUMMARIZATION_CHUNK",
    BLOCKED_CASE_SUMMARIZATION_CHUNK = "BLOCKED_CASE_SUMMARIZATION_CHUNK",
    NOTES = "NOTES",
    NOTES_CHUNK = "NOTES_CHUNK",
    BLOCKED_NOTES_CHUNK = "BLOCKED_NOTES_CHUNK",
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

M.RemoveAssistantAIAgentInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiAgentType = {
            type = "string",
            traits = {
                http_query = "aiAgentType",
                required = true,
            },
        },
        orchestratorUseCase = {
            type = "string",
            traits = {
                http_query = "orchestratorUseCase",
            },
        },
    },
}

M.RemoveAssistantAIAgentOutput = {
    type = "structure",
}

M.DependencyFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FilterAttribute = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.KnowledgeSource = {
    type = "union",
    members = {
        assistantAssociationIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RetrieveResult = {
    type = "structure",
    members = {
        associationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetrieveOutput = {
    type = "structure",
    members = {
        results = {
            type = "list",
            member = M.RetrieveResult,
            traits = {
                required = true,
            },
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
        tagFilter = M.TagFilter,
        aiAgentConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.AIAgentConfigurationData,
        },
        contactArn = {
            type = "string",
        },
        orchestratorConfigurationList = {
            type = "list",
            member = M.OrchestratorConfigurationEntry,
        },
        removeOrchestratorConfigurationList = {
            type = "boolean",
            traits = {
                default = nil,
            },
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
        tagFilter = M.TagFilter,
        aiAgentConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.AIAgentConfigurationData,
        },
        origin = {
            type = "string",
        },
        orchestratorConfigurationList = {
            type = "list",
            member = M.OrchestratorConfigurationEntry,
        },
    },
}

M.CreateSessionOutput = {
    type = "structure",
    members = {
        session = M.SessionData,
    },
}

M.GetNextMessageInput = {
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
        nextMessageToken = {
            type = "string",
            traits = {
                http_query = "nextMessageToken",
                required = true,
            },
        },
    },
}

M.RuntimeSessionDataValue = {
    type = "union",
    members = {
        stringValue = {
            type = "string",
        },
    },
}

M.RuntimeSessionData = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuntimeSessionDataValue }),
    },
}

M.ConversationStatusReason = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    REJECTED = "REJECTED",
}

M.ConversationStatus = {
    CLOSED = "CLOSED",
    READY = "READY",
    PROCESSING = "PROCESSING",
}

M.ConversationState = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.Participant = {
    CUSTOMER = "CUSTOMER",
    AGENT = "AGENT",
    BOT = "BOT",
}

M.Citation = {
    type = "structure",
    members = {
        contentId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        knowledgeBaseId = {
            type = "string",
        },
        citationSpan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CitationSpan }),
        sourceURL = {
            type = "string",
        },
        referenceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TextMessage = {
    type = "structure",
    members = {
        value = {
            type = "string",
        },
        citations = {
            type = "list",
            member = M.Citation,
        },
        aiGuardrailAssessment = M.AIGuardrailAssessment,
    },
}

M.ToolUseResultData = {
    type = "structure",
    members = {
        toolUseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolResult = {
            type = "document",
            traits = {
                required = true,
            },
        },
        inputSchema = {
            type = "document",
        },
    },
}

M.MessageData = {
    type = "union",
    members = {
        text = M.TextMessage,
        toolUseResult = M.ToolUseResultData,
    },
}

M.MessageOutput = {
    type = "structure",
    members = {
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageData }),
        messageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participant = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageType = {
    TEXT = "TEXT",
    TOOL_USE_RESULT = "TOOL_USE_RESULT",
}

M.GetNextMessageOutput = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        response = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageOutput }),
        requestMessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conversationState = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConversationState }),
        nextMessageToken = {
            type = "string",
        },
        conversationSessionData = {
            type = "list",
            member = M.RuntimeSessionData,
        },
        chunkedResponseTerminated = {
            type = "boolean",
        },
    },
}

M.UnprocessableContentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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
        session = M.SessionData,
    },
}

M.MessageFilterType = {
    ALL = "ALL",
    TEXT_ONLY = "TEXT_ONLY",
}

M.ListMessagesInput = {
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
        filter = {
            type = "string",
            traits = {
                http_query = "filter",
            },
        },
    },
}

M.ListMessagesOutput = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member = M.MessageOutput,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSpansInput = {
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

M.SpanReasoningValue = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SpanCitation = {
    type = "structure",
    members = {
        contentId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        knowledgeBaseId = {
            type = "string",
        },
        knowledgeBaseArn = {
            type = "string",
        },
    },
}

M.SpanTextValue = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        citations = {
            type = "list",
            member = M.SpanCitation,
        },
        aiGuardrailAssessment = M.AIGuardrailAssessment,
    },
}

M.SpanToolUseValue = {
    type = "structure",
    members = {
        toolUseId = {
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
        arguments = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.SpanType = {
    CLIENT = "CLIENT",
    SERVER = "SERVER",
    INTERNAL = "INTERNAL",
}

M.SpanStatus = {
    OK = "OK",
    ERROR = "ERROR",
    TIMEOUT = "TIMEOUT",
}

M.MessageConfiguration = {
    type = "structure",
    members = {
        generateFillerMessage = {
            type = "boolean",
        },
        generateChunkedMessage = {
            type = "boolean",
        },
    },
}

M.SelfServiceConversationHistory = {
    type = "structure",
    members = {
        turnNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        inputTranscript = {
            type = "string",
        },
        botResponse = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
        },
    },
}

M.ConversationContext = {
    type = "structure",
    members = {
        selfServiceConversationHistory = {
            type = "list",
            member = M.SelfServiceConversationHistory,
            traits = {
                required = true,
            },
        },
    },
}

M.MessageInput = {
    type = "structure",
    members = {
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageData }),
    },
}

M.SendMessageInput = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageInput }),
        aiAgentId = {
            type = "string",
        },
        conversationContext = M.ConversationContext,
        configuration = M.MessageConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        orchestratorUseCase = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        originRequestId = {
            type = "string",
        },
    },
}

M.SendMessageOutput = {
    type = "structure",
    members = {
        requestMessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = M.MessageConfiguration,
        nextMessageToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSessionInput = {
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
        description = {
            type = "string",
        },
        tagFilter = M.TagFilter,
        aiAgentConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.AIAgentConfigurationData,
        },
        orchestratorConfigurationList = {
            type = "list",
            member = M.OrchestratorConfigurationEntry,
        },
        removeOrchestratorConfigurationList = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdateSessionOutput = {
    type = "structure",
    members = {
        session = M.SessionData,
    },
}

M.SessionDataNamespace = {
    Custom = "Custom",
}

M.UpdateSessionDataInput = {
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
        namespace = {
            type = "string",
        },
        data = {
            type = "list",
            member = M.RuntimeSessionData,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSessionDataOutput = {
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
        namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "list",
            member = M.RuntimeSessionData,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssistantAIAgentInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aiAgentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AIAgentConfigurationData }),
        orchestratorUseCase = {
            type = "string",
        },
    },
}

M.UpdateAssistantAIAgentOutput = {
    type = "structure",
    members = {
        assistant = M.AssistantData,
    },
}

M.ParsingPrompt = {
    type = "structure",
    members = {
        parsingPromptText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BedrockFoundationModelConfigurationForParsing = {
    type = "structure",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parsingPrompt = M.ParsingPrompt,
    },
}

M.ChannelSubtype = {
    EMAIL = "EMAIL",
    SMS = "SMS",
    WHATSAPP = "WHATSAPP",
    PUSH = "PUSH",
}

M.ChunkingStrategy = {
    FIXED_SIZE = "FIXED_SIZE",
    NONE = "NONE",
    HIERARCHICAL = "HIERARCHICAL",
    SEMANTIC = "SEMANTIC",
}

M.FixedSizeChunkingConfiguration = {
    type = "structure",
    members = {
        maxTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        overlapPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HierarchicalChunkingLevelConfiguration = {
    type = "structure",
    members = {
        maxTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HierarchicalChunkingConfiguration = {
    type = "structure",
    members = {
        levelConfigurations = {
            type = "list",
            member = M.HierarchicalChunkingLevelConfiguration,
            traits = {
                required = true,
            },
        },
        overlapTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SemanticChunkingConfiguration = {
    type = "structure",
    members = {
        maxTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        bufferSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        breakpointPercentileThreshold = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ChunkingConfiguration = {
    type = "structure",
    members = {
        chunkingStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fixedSizeChunkingConfiguration = M.FixedSizeChunkingConfiguration,
        hierarchicalChunkingConfiguration = M.HierarchicalChunkingConfiguration,
        semanticChunkingConfiguration = M.SemanticChunkingConfiguration,
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

M.ContentAssociationContents = {
    type = "union",
    members = {
        amazonConnectGuideAssociation = M.AmazonConnectGuideAssociationData,
    },
}

M.ContentAssociationType = {
    AMAZON_CONNECT_GUIDE = "AMAZON_CONNECT_GUIDE",
}

M.CreateContentAssociationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
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
        associationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        association = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentAssociationContents }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ContentAssociationData = {
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
        contentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentAssociationArn = {
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
        } }, { __index = M.ContentAssociationContents }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateContentAssociationOutput = {
    type = "structure",
    members = {
        contentAssociation = M.ContentAssociationData,
    },
}

M.DeleteContentAssociationInput = {
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
        contentAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContentAssociationOutput = {
    type = "structure",
}

M.GetContentAssociationInput = {
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
        contentAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContentAssociationOutput = {
    type = "structure",
    members = {
        contentAssociation = M.ContentAssociationData,
    },
}

M.ListContentAssociationsInput = {
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
        contentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ContentAssociationSummary = {
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
        contentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentAssociationArn = {
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
        } }, { __index = M.ContentAssociationContents }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListContentAssociationsOutput = {
    type = "structure",
    members = {
        contentAssociationSummaries = {
            type = "list",
            member = M.ContentAssociationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
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

M.ContentDisposition = {
    ATTACHMENT = "ATTACHMENT",
}

M.KnowledgeBaseType = {
    EXTERNAL = "EXTERNAL",
    CUSTOM = "CUSTOM",
    QUICK_RESPONSES = "QUICK_RESPONSES",
    MESSAGE_TEMPLATES = "MESSAGE_TEMPLATES",
    MANAGED = "MANAGED",
}

M.RenderingConfiguration = {
    type = "structure",
    members = {
        templateUri = {
            type = "string",
        },
    },
}

M.WebCrawlerLimits = {
    type = "structure",
    members = {
        rateLimit = {
            type = "integer",
        },
    },
}

M.WebScopeType = {
    HOST_ONLY = "HOST_ONLY",
    SUBDOMAINS = "SUBDOMAINS",
}

M.SeedUrl = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
    },
}

M.UrlConfiguration = {
    type = "structure",
    members = {
        seedUrls = {
            type = "list",
            member = M.SeedUrl,
        },
    },
}

M.WebCrawlerConfiguration = {
    type = "structure",
    members = {
        urlConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UrlConfiguration }),
        crawlerLimits = M.WebCrawlerLimits,
        inclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
        exclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
        scope = {
            type = "string",
        },
    },
}

M.ManagedSourceConfiguration = {
    type = "union",
    members = {
        webCrawlerConfiguration = M.WebCrawlerConfiguration,
    },
}

M.SourceConfiguration = {
    type = "union",
    members = {
        appIntegrations = M.AppIntegrationsConfiguration,
        managedSourceConfiguration = M.ManagedSourceConfiguration,
    },
}

M.ParsingStrategy = {
    BEDROCK_FOUNDATION_MODEL = "BEDROCK_FOUNDATION_MODEL",
}

M.ParsingConfiguration = {
    type = "structure",
    members = {
        parsingStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bedrockFoundationModelConfiguration = M.BedrockFoundationModelConfigurationForParsing,
    },
}

M.VectorIngestionConfiguration = {
    type = "structure",
    members = {
        chunkingConfiguration = M.ChunkingConfiguration,
        parsingConfiguration = M.ParsingConfiguration,
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
        vectorIngestionConfiguration = M.VectorIngestionConfiguration,
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

M.SyncStatus = {
    SYNC_FAILED = "SYNC_FAILED",
    SYNCING_IN_PROGRESS = "SYNCING_IN_PROGRESS",
    SYNC_SUCCESS = "SYNC_SUCCESS",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
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
        vectorIngestionConfiguration = M.VectorIngestionConfiguration,
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
        ingestionStatus = {
            type = "string",
        },
        ingestionFailureReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateKnowledgeBaseOutput = {
    type = "structure",
    members = {
        knowledgeBase = M.KnowledgeBaseData,
    },
}

M.MessageTemplateBodyContentProvider = {
    type = "union",
    members = {
        content = {
            type = "string",
        },
    },
}

M.EmailMessageTemplateContentBody = {
    type = "structure",
    members = {
        plainText = M.MessageTemplateBodyContentProvider,
        html = M.MessageTemplateBodyContentProvider,
    },
}

M.EmailHeader = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.EmailMessageTemplateContent = {
    type = "structure",
    members = {
        subject = {
            type = "string",
        },
        body = M.EmailMessageTemplateContentBody,
        headers = {
            type = "list",
            member = M.EmailHeader,
        },
    },
}

M.PushMessageAction = {
    OPEN_APP = "OPEN_APP",
    DEEP_LINK = "DEEP_LINK",
    URL = "URL",
}

M.PushADMMessageTemplateContent = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        body = M.MessageTemplateBodyContentProvider,
        action = {
            type = "string",
        },
        sound = {
            type = "string",
        },
        url = {
            type = "string",
        },
        imageUrl = {
            type = "string",
        },
        imageIconUrl = {
            type = "string",
        },
        smallImageIconUrl = {
            type = "string",
        },
        rawContent = M.MessageTemplateBodyContentProvider,
    },
}

M.PushAPNSMessageTemplateContent = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        body = M.MessageTemplateBodyContentProvider,
        action = {
            type = "string",
        },
        sound = {
            type = "string",
        },
        url = {
            type = "string",
        },
        mediaUrl = {
            type = "string",
        },
        rawContent = M.MessageTemplateBodyContentProvider,
    },
}

M.PushBaiduMessageTemplateContent = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        body = M.MessageTemplateBodyContentProvider,
        action = {
            type = "string",
        },
        sound = {
            type = "string",
        },
        url = {
            type = "string",
        },
        imageUrl = {
            type = "string",
        },
        imageIconUrl = {
            type = "string",
        },
        smallImageIconUrl = {
            type = "string",
        },
        rawContent = M.MessageTemplateBodyContentProvider,
    },
}

M.PushFCMMessageTemplateContent = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        body = M.MessageTemplateBodyContentProvider,
        action = {
            type = "string",
        },
        sound = {
            type = "string",
        },
        url = {
            type = "string",
        },
        imageUrl = {
            type = "string",
        },
        imageIconUrl = {
            type = "string",
        },
        smallImageIconUrl = {
            type = "string",
        },
        rawContent = M.MessageTemplateBodyContentProvider,
    },
}

M.PushMessageTemplateContent = {
    type = "structure",
    members = {
        adm = M.PushADMMessageTemplateContent,
        apns = M.PushAPNSMessageTemplateContent,
        fcm = M.PushFCMMessageTemplateContent,
        baidu = M.PushBaiduMessageTemplateContent,
    },
}

M.SMSMessageTemplateContentBody = {
    type = "structure",
    members = {
        plainText = M.MessageTemplateBodyContentProvider,
    },
}

M.SMSMessageTemplateContent = {
    type = "structure",
    members = {
        body = M.SMSMessageTemplateContentBody,
    },
}

M.WhatsAppMessageTemplateContent = {
    type = "structure",
    members = {
        data = {
            type = "string",
        },
    },
}

M.MessageTemplateContentProvider = {
    type = "union",
    members = {
        email = M.EmailMessageTemplateContent,
        sms = M.SMSMessageTemplateContent,
        whatsApp = M.WhatsAppMessageTemplateContent,
        push = M.PushMessageTemplateContent,
    },
}

M.CustomerProfileAttributes = {
    type = "structure",
    members = {
        profileId = {
            type = "string",
        },
        profileARN = {
            type = "string",
        },
        firstName = {
            type = "string",
        },
        middleName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        accountNumber = {
            type = "string",
        },
        emailAddress = {
            type = "string",
        },
        phoneNumber = {
            type = "string",
        },
        additionalInformation = {
            type = "string",
        },
        partyType = {
            type = "string",
        },
        businessName = {
            type = "string",
        },
        birthDate = {
            type = "string",
        },
        gender = {
            type = "string",
        },
        mobilePhoneNumber = {
            type = "string",
        },
        homePhoneNumber = {
            type = "string",
        },
        businessPhoneNumber = {
            type = "string",
        },
        businessEmailAddress = {
            type = "string",
        },
        address1 = {
            type = "string",
        },
        address2 = {
            type = "string",
        },
        address3 = {
            type = "string",
        },
        address4 = {
            type = "string",
        },
        city = {
            type = "string",
        },
        county = {
            type = "string",
        },
        country = {
            type = "string",
        },
        postalCode = {
            type = "string",
        },
        province = {
            type = "string",
        },
        state = {
            type = "string",
        },
        shippingAddress1 = {
            type = "string",
        },
        shippingAddress2 = {
            type = "string",
        },
        shippingAddress3 = {
            type = "string",
        },
        shippingAddress4 = {
            type = "string",
        },
        shippingCity = {
            type = "string",
        },
        shippingCounty = {
            type = "string",
        },
        shippingCountry = {
            type = "string",
        },
        shippingPostalCode = {
            type = "string",
        },
        shippingProvince = {
            type = "string",
        },
        shippingState = {
            type = "string",
        },
        mailingAddress1 = {
            type = "string",
        },
        mailingAddress2 = {
            type = "string",
        },
        mailingAddress3 = {
            type = "string",
        },
        mailingAddress4 = {
            type = "string",
        },
        mailingCity = {
            type = "string",
        },
        mailingCounty = {
            type = "string",
        },
        mailingCountry = {
            type = "string",
        },
        mailingPostalCode = {
            type = "string",
        },
        mailingProvince = {
            type = "string",
        },
        mailingState = {
            type = "string",
        },
        billingAddress1 = {
            type = "string",
        },
        billingAddress2 = {
            type = "string",
        },
        billingAddress3 = {
            type = "string",
        },
        billingAddress4 = {
            type = "string",
        },
        billingCity = {
            type = "string",
        },
        billingCounty = {
            type = "string",
        },
        billingCountry = {
            type = "string",
        },
        billingPostalCode = {
            type = "string",
        },
        billingProvince = {
            type = "string",
        },
        billingState = {
            type = "string",
        },
        custom = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SystemEndpointAttributes = {
    type = "structure",
    members = {
        address = {
            type = "string",
        },
    },
}

M.SystemAttributes = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        customerEndpoint = M.SystemEndpointAttributes,
        systemEndpoint = M.SystemEndpointAttributes,
    },
}

M.MessageTemplateAttributes = {
    type = "structure",
    members = {
        systemAttributes = M.SystemAttributes,
        agentAttributes = M.AgentAttributes,
        customerProfileAttributes = M.CustomerProfileAttributes,
        customAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.WhatsAppMessageTemplateSourceConfiguration = {
    type = "structure",
    members = {
        businessAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        components = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MessageTemplateSourceConfiguration = {
    type = "union",
    members = {
        whatsApp = M.WhatsAppMessageTemplateSourceConfiguration,
    },
}

M.CreateMessageTemplateInput = {
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
        },
        content = M.MessageTemplateContentProvider,
        description = {
            type = "string",
        },
        channelSubtype = {
            type = "string",
            traits = {
                required = true,
            },
        },
        language = {
            type = "string",
        },
        sourceConfiguration = M.MessageTemplateSourceConfiguration,
        defaultAttributes = M.MessageTemplateAttributes,
        groupingConfiguration = M.GroupingConfiguration,
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

M.MessageTemplateAttributeType = {
    SYSTEM = "SYSTEM",
    AGENT = "AGENT",
    CUSTOMER_PROFILE = "CUSTOMER_PROFILE",
    CUSTOM = "CUSTOM",
}

M.WhatsAppSourceConfigurationStatus = {
    VALID = "VALID",
    INVALID = "INVALID",
    REJECTED = "REJECTED",
}

M.WhatsAppMessageTemplateSourceConfigurationSummary = {
    type = "structure",
    members = {
        businessAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        language = {
            type = "string",
        },
        components = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.MessageTemplateSourceConfigurationSummary = {
    type = "union",
    members = {
        whatsApp = M.WhatsAppMessageTemplateSourceConfigurationSummary,
    },
}

M.MessageTemplateData = {
    type = "structure",
    members = {
        messageTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageTemplateId = {
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
        channel = {
            type = "string",
        },
        channelSubtype = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = M.MessageTemplateContentProvider,
        description = {
            type = "string",
        },
        language = {
            type = "string",
        },
        sourceConfigurationSummary = M.MessageTemplateSourceConfigurationSummary,
        groupingConfiguration = M.GroupingConfiguration,
        defaultAttributes = M.MessageTemplateAttributes,
        attributeTypes = {
            type = "list",
            member = { type = "string" },
        },
        messageTemplateContentSha256 = {
            type = "string",
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

M.CreateMessageTemplateOutput = {
    type = "structure",
    members = {
        messageTemplate = M.MessageTemplateData,
    },
}

M.CreateMessageTemplateAttachmentInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentDisposition = {
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
        body = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.MessageTemplateAttachment = {
    type = "structure",
    members = {
        contentDisposition = {
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
        uploadedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
            },
        },
        attachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMessageTemplateAttachmentOutput = {
    type = "structure",
    members = {
        attachment = M.MessageTemplateAttachment,
    },
}

M.CreateMessageTemplateVersionInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateContentSha256 = {
            type = "string",
        },
    },
}

M.ExtendedMessageTemplateData = {
    type = "structure",
    members = {
        messageTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageTemplateId = {
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
        channel = {
            type = "string",
        },
        channelSubtype = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = M.MessageTemplateContentProvider,
        description = {
            type = "string",
        },
        language = {
            type = "string",
        },
        sourceConfigurationSummary = M.MessageTemplateSourceConfigurationSummary,
        groupingConfiguration = M.GroupingConfiguration,
        defaultAttributes = M.MessageTemplateAttributes,
        attributeTypes = {
            type = "list",
            member = { type = "string" },
        },
        attachments = {
            type = "list",
            member = M.MessageTemplateAttachment,
        },
        isActive = {
            type = "boolean",
        },
        versionNumber = {
            type = "long",
        },
        messageTemplateContentSha256 = {
            type = "string",
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

M.CreateMessageTemplateVersionOutput = {
    type = "structure",
    members = {
        messageTemplate = M.ExtendedMessageTemplateData,
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

M.DeactivateMessageTemplateInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.DeactivateMessageTemplateOutput = {
    type = "structure",
    members = {
        messageTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                required = true,
            },
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

M.DeleteMessageTemplateInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMessageTemplateOutput = {
    type = "structure",
}

M.DeleteMessageTemplateAttachmentInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMessageTemplateAttachmentOutput = {
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

M.GetMessageTemplateInput = {
    type = "structure",
    members = {
        messageTemplateId = {
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

M.GetMessageTemplateOutput = {
    type = "structure",
    members = {
        messageTemplate = M.ExtendedMessageTemplateData,
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
        vectorIngestionConfiguration = M.VectorIngestionConfiguration,
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

M.ListMessageTemplatesInput = {
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

M.MessageTemplateSummary = {
    type = "structure",
    members = {
        messageTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageTemplateId = {
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
        channel = {
            type = "string",
        },
        channelSubtype = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceConfiguration = M.MessageTemplateSourceConfiguration,
        activeVersionNumber = {
            type = "long",
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

M.ListMessageTemplatesOutput = {
    type = "structure",
    members = {
        messageTemplateSummaries = {
            type = "list",
            member = M.MessageTemplateSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMessageTemplateVersionsInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.MessageTemplateVersionSummary = {
    type = "structure",
    members = {
        messageTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageTemplateId = {
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
        channel = {
            type = "string",
        },
        channelSubtype = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isActive = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMessageTemplateVersionsOutput = {
    type = "structure",
    members = {
        messageTemplateVersionSummaries = {
            type = "list",
            member = M.MessageTemplateVersionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RenderMessageTemplateInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageTemplateAttributes }),
    },
}

M.RenderMessageTemplateOutput = {
    type = "structure",
    members = {
        content = M.MessageTemplateContentProvider,
        sourceConfigurationSummary = M.MessageTemplateSourceConfigurationSummary,
        attributesNotInterpolated = {
            type = "list",
            member = { type = "string" },
        },
        attachments = {
            type = "list",
            member = M.MessageTemplateAttachment,
        },
    },
}

M.UpdateMessageTemplateInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        content = M.MessageTemplateContentProvider,
        language = {
            type = "string",
        },
        sourceConfiguration = M.MessageTemplateSourceConfiguration,
        defaultAttributes = M.MessageTemplateAttributes,
    },
}

M.UpdateMessageTemplateOutput = {
    type = "structure",
    members = {
        messageTemplate = M.MessageTemplateData,
    },
}

M.UpdateMessageTemplateMetadataInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messageTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        groupingConfiguration = M.GroupingConfiguration,
    },
}

M.UpdateMessageTemplateMetadataOutput = {
    type = "structure",
    members = {
        messageTemplate = M.MessageTemplateData,
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

M.MessageTemplateFilterOperator = {
    EQUALS = "EQUALS",
    PREFIX = "PREFIX",
}

M.MessageTemplateFilterField = {
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

M.MessageTemplateOrderField = {
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

M.MessageTemplateQueryOperator = {
    CONTAINS = "CONTAINS",
    CONTAINS_AND_PREFIX = "CONTAINS_AND_PREFIX",
}

M.Priority = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.MessageTemplateQueryField = {
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

M.MessageTemplateSearchExpression = {
    type = "structure",
    members = {
        queries = {
            type = "list",
            member = M.MessageTemplateQueryField,
        },
        filters = {
            type = "list",
            member = M.MessageTemplateFilterField,
        },
        orderOnField = M.MessageTemplateOrderField,
    },
}

M.SearchMessageTemplatesInput = {
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
        } }, { __index = M.MessageTemplateSearchExpression }),
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

M.MessageTemplateSearchResultData = {
    type = "structure",
    members = {
        messageTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageTemplateId = {
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
        channel = {
            type = "string",
        },
        channelSubtype = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isActive = {
            type = "boolean",
        },
        versionNumber = {
            type = "long",
        },
        description = {
            type = "string",
        },
        sourceConfigurationSummary = M.MessageTemplateSourceConfigurationSummary,
        groupingConfiguration = M.GroupingConfiguration,
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

M.SearchMessageTemplatesOutput = {
    type = "structure",
    members = {
        results = {
            type = "list",
            member = M.MessageTemplateSearchResultData,
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

M.SpanMessageValue = {
    type = "union",
    members = {
        text = M.SpanTextValue,
        toolUse = M.SpanToolUseValue,
        toolResult = M.SpanToolResultValue,
        reasoning = M.SpanReasoningValue,
    },
}

M.SpanToolResultValue = {
    type = "structure",
    members = {
        toolUseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = M.SpanMessageValue,
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.RetrievalFilterConfiguration = {
    type = "union",
    members = {
        andAll = {
            type = "list",
            member = M.RetrievalFilterConfiguration,
        },
        equals = M.FilterAttribute,
        greaterThan = M.FilterAttribute,
        greaterThanOrEquals = M.FilterAttribute,
        in = M.FilterAttribute,
        lessThan = M.FilterAttribute,
        lessThanOrEquals = M.FilterAttribute,
        listContains = M.FilterAttribute,
        notEquals = M.FilterAttribute,
        notIn = M.FilterAttribute,
        orAll = {
            type = "list",
            member = M.RetrievalFilterConfiguration,
        },
        startsWith = M.FilterAttribute,
        stringContains = M.FilterAttribute,
    },
}

M.SpanMessage = {
    type = "structure",
    members = {
        messageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participant = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = M.SpanMessageValue,
            traits = {
                required = true,
            },
        },
    },
}

M.RetrievalConfiguration = {
    type = "structure",
    members = {
        knowledgeSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeSource }),
        filter = M.RetrievalFilterConfiguration,
        numberOfResults = {
            type = "integer",
        },
        overrideKnowledgeBaseSearchType = {
            type = "string",
        },
    },
}

M.RetrieveInput = {
    type = "structure",
    members = {
        assistantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        retrievalConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetrievalConfiguration }),
        retrievalQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataDetails = {
    type = "union",
    members = {
        contentData = M.ContentDataDetails,
        generativeData = M.GenerativeDataDetails,
        intentDetectedData = M.IntentDetectedDataDetails,
        sourceContentData = M.SourceContentDataDetails,
        generativeChunkData = M.GenerativeChunkDataDetails,
        emailResponseChunkData = M.EmailResponseChunkDataDetails,
        emailOverviewChunkData = M.EmailOverviewChunkDataDetails,
        emailGenerativeAnswerChunkData = M.EmailGenerativeAnswerChunkDataDetails,
        caseSummarizationChunkData = M.CaseSummarizationChunkDataDetails,
        suggestedMessageData = M.SuggestedMessageDataDetails,
        notesData = M.NotesDataDetails,
        notesChunkData = M.NotesChunkDataDetails,
    },
}

M.DataSummary = {
    type = "structure",
    members = {
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataReference }),
        details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataDetails }),
    },
}

M.EmailGenerativeAnswerChunkDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
        },
        references = {
            type = "list",
            member = M.DataSummary,
        },
        nextChunkToken = {
            type = "string",
        },
    },
}

M.GenerativeChunkDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
        },
        references = {
            type = "list",
            member = M.DataSummary,
        },
        nextChunkToken = {
            type = "string",
        },
    },
}

M.GenerativeDataDetails = {
    type = "structure",
    members = {
        completion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        references = {
            type = "list",
            member = M.DataSummary,
            traits = {
                required = true,
            },
        },
        rankingData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RankingData }),
    },
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
        document = M.Document,
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
        data = M.DataSummary,
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
        document = M.Document,
        relevanceScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        data = M.DataSummary,
        type = {
            type = "string",
        },
    },
}

M.SpanAttributes = {
    type = "structure",
    members = {
        operationName = {
            type = "string",
        },
        providerName = {
            type = "string",
        },
        errorType = {
            type = "string",
        },
        agentId = {
            type = "string",
        },
        instanceArn = {
            type = "string",
        },
        contactId = {
            type = "string",
        },
        initialContactId = {
            type = "string",
        },
        sessionName = {
            type = "string",
        },
        aiAgentArn = {
            type = "string",
        },
        aiAgentType = {
            type = "string",
        },
        aiAgentName = {
            type = "string",
        },
        aiAgentId = {
            type = "string",
        },
        aiAgentVersion = {
            type = "integer",
        },
        aiAgentInvoker = {
            type = "string",
        },
        aiAgentOrchestratorUseCase = {
            type = "string",
        },
        requestModel = {
            type = "string",
        },
        requestMaxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
        responseModel = {
            type = "string",
        },
        responseFinishReasons = {
            type = "list",
            member = { type = "string" },
        },
        usageInputTokens = {
            type = "integer",
        },
        usageOutputTokens = {
            type = "integer",
        },
        usageTotalTokens = {
            type = "integer",
        },
        cacheReadInputTokens = {
            type = "integer",
        },
        cacheWriteInputTokens = {
            type = "integer",
        },
        inputMessages = {
            type = "list",
            member = M.SpanMessage,
        },
        outputMessages = {
            type = "list",
            member = M.SpanMessage,
        },
        systemInstructions = {
            type = "list",
            member = M.SpanMessageValue,
        },
        promptArn = {
            type = "string",
        },
        promptId = {
            type = "string",
        },
        promptType = {
            type = "string",
        },
        promptName = {
            type = "string",
        },
        promptVersion = {
            type = "integer",
        },
        timeToFirstTokenMs = {
            type = "integer",
        },
    },
}

M.Span = {
    type = "structure",
    members = {
        spanId = {
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
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentSpanId = {
            type = "string",
        },
        spanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spanType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTimestamp = {
            type = "timestamp",
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
        statusDescription = {
            type = "string",
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        originRequestId = {
            type = "string",
        },
        attributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SpanAttributes }),
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

M.ListSpansOutput = {
    type = "structure",
    members = {
        spans = {
            type = "list",
            member = M.Span,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
