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

M.CustomControlMethod = {
    RETURN_CONTROL = "RETURN_CONTROL",
}

M.ActionGroupExecutor = {
    type = "union",
    members = {
        lambda = {
            type = "string",
        },
        customControl = {
            type = "string",
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

M.ActionGroupState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.S3Identifier = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
        },
        s3ObjectKey = {
            type = "string",
        },
    },
}

M.APISchema = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
        payload = {
            type = "string",
        },
    },
}

M.Type = {
    STRING = "string",
    NUMBER = "number",
    INTEGER = "integer",
    BOOLEAN = "boolean",
    ARRAY = "array",
}

M.ParameterDetail = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
        },
    },
}

M.RequireConfirmation = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Function = {
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
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        requireConfirmation = {
            type = "string",
        },
    },
}

M.FunctionSchema = {
    type = "union",
    members = {
        functions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ActionGroupSignature = {
    AMAZON_USERINPUT = "AMAZON.UserInput",
    AMAZON_CODEINTERPRETER = "AMAZON.CodeInterpreter",
    ANTHROPIC_COMPUTER = "ANTHROPIC.Computer",
    ANTHROPIC_BASH = "ANTHROPIC.Bash",
    ANTHROPIC_TEXTEDITOR = "ANTHROPIC.TextEditor",
}

M.CreateAgentActionGroupInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentActionGroupSignature = {
            type = "string",
        },
        parentActionGroupSignatureParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        actionGroupExecutor = {
            type = "union",
        },
        apiSchema = {
            type = "union",
        },
        actionGroupState = {
            type = "string",
        },
        functionSchema = {
            type = "union",
        },
    },
}

M.AgentActionGroup = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        parentActionSignature = {
            type = "string",
        },
        parentActionGroupSignatureParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        actionGroupExecutor = {
            type = "union",
        },
        apiSchema = {
            type = "union",
        },
        functionSchema = {
            type = "union",
        },
        actionGroupState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAgentActionGroupOutput = {
    type = "structure",
    members = {
        agentActionGroup = {
            type = "structure",
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

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteAgentActionGroupInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteAgentActionGroupOutput = {
    type = "structure",
}

M.GetAgentActionGroupInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentActionGroupOutput = {
    type = "structure",
    members = {
        agentActionGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentActionGroupsInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ActionGroupSummary = {
    type = "structure",
    members = {
        actionGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionGroupState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentActionGroupsOutput = {
    type = "structure",
    members = {
        actionGroupSummaries = {
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

M.UpdateAgentActionGroupInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        parentActionGroupSignature = {
            type = "string",
        },
        parentActionGroupSignatureParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        actionGroupExecutor = {
            type = "union",
        },
        actionGroupState = {
            type = "string",
        },
        apiSchema = {
            type = "union",
        },
        functionSchema = {
            type = "union",
        },
    },
}

M.UpdateAgentActionGroupOutput = {
    type = "structure",
    members = {
        agentActionGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentCollaboration = {
    SUPERVISOR = "SUPERVISOR",
    SUPERVISOR_ROUTER = "SUPERVISOR_ROUTER",
    DISABLED = "DISABLED",
}

M.AgentStatus = {
    CREATING = "CREATING",
    PREPARING = "PREPARING",
    PREPARED = "PREPARED",
    NOT_PREPARED = "NOT_PREPARED",
    DELETING = "DELETING",
    FAILED = "FAILED",
    VERSIONING = "VERSIONING",
    UPDATING = "UPDATING",
}

M.OrchestrationExecutor = {
    type = "union",
    members = {
        lambda = {
            type = "string",
        },
    },
}

M.CustomOrchestration = {
    type = "structure",
    members = {
        executor = {
            type = "union",
        },
    },
}

M.GuardrailConfiguration = {
    type = "structure",
    members = {
        guardrailIdentifier = {
            type = "string",
        },
        guardrailVersion = {
            type = "string",
        },
    },
}

M.MemoryType = {
    SESSION_SUMMARY = "SESSION_SUMMARY",
}

M.SessionSummaryConfiguration = {
    type = "structure",
    members = {
        maxRecentSessions = {
            type = "number",
        },
    },
}

M.MemoryConfiguration = {
    type = "structure",
    members = {
        enabledMemoryTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        storageDays = {
            type = "number",
        },
        sessionSummaryConfiguration = {
            type = "structure",
        },
    },
}

M.OrchestrationType = {
    DEFAULT = "DEFAULT",
    CUSTOM_ORCHESTRATION = "CUSTOM_ORCHESTRATION",
}

M.InferenceConfiguration = {
    type = "structure",
    members = {
        temperature = {
            type = "number",
        },
        topP = {
            type = "number",
        },
        topK = {
            type = "number",
        },
        maximumLength = {
            type = "number",
        },
        stopSequences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreationMode = {
    DEFAULT = "DEFAULT",
    OVERRIDDEN = "OVERRIDDEN",
}

M.PromptState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PromptType = {
    PRE_PROCESSING = "PRE_PROCESSING",
    ORCHESTRATION = "ORCHESTRATION",
    POST_PROCESSING = "POST_PROCESSING",
    KNOWLEDGE_BASE_RESPONSE_GENERATION = "KNOWLEDGE_BASE_RESPONSE_GENERATION",
    MEMORY_SUMMARIZATION = "MEMORY_SUMMARIZATION",
}

M.PromptConfiguration = {
    type = "structure",
    members = {
        promptType = {
            type = "string",
        },
        promptCreationMode = {
            type = "string",
        },
        promptState = {
            type = "string",
        },
        basePromptTemplate = {
            type = "string",
        },
        inferenceConfiguration = {
            type = "structure",
        },
        parserMode = {
            type = "string",
        },
        foundationModel = {
            type = "string",
        },
        additionalModelRequestFields = {
            type = "document",
        },
    },
}

M.PromptOverrideConfiguration = {
    type = "structure",
    members = {
        promptConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        overrideLambda = {
            type = "string",
        },
    },
}

M.Agent = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        instruction = {
            type = "string",
        },
        agentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        foundationModel = {
            type = "string",
        },
        description = {
            type = "string",
        },
        orchestrationType = {
            type = "string",
        },
        customOrchestration = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        agentResourceRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        preparedAt = {
            type = "timestamp",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        recommendedActions = {
            type = "list",
            member_type = "string",
        },
        promptOverrideConfiguration = {
            type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        memoryConfiguration = {
            type = "structure",
        },
        agentCollaboration = {
            type = "string",
        },
    },
}

M.AgentAliasRoutingConfigurationListItem = {
    type = "structure",
    members = {
        agentVersion = {
            type = "string",
        },
        provisionedThroughput = {
            type = "string",
        },
    },
}

M.AgentAliasHistoryEvent = {
    type = "structure",
    members = {
        routingConfiguration = {
            type = "list",
            member_type = "structure",
        },
        endDate = {
            type = "timestamp",
        },
        startDate = {
            type = "timestamp",
        },
    },
}

M.AgentAliasStatus = {
    CREATING = "CREATING",
    PREPARED = "PREPARED",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DISSOCIATED = "DISSOCIATED",
}

M.AliasInvocationState = {
    ACCEPT_INVOCATIONS = "ACCEPT_INVOCATIONS",
    REJECT_INVOCATIONS = "REJECT_INVOCATIONS",
}

M.AgentAlias = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentAliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentAliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        description = {
            type = "string",
        },
        routingConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        agentAliasHistoryEvents = {
            type = "list",
            member_type = "structure",
        },
        agentAliasStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        aliasInvocationState = {
            type = "string",
        },
    },
}

M.AgentAliasSummary = {
    type = "structure",
    members = {
        agentAliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentAliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        routingConfiguration = {
            type = "list",
            member_type = "structure",
        },
        agentAliasStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        aliasInvocationState = {
            type = "string",
        },
    },
}

M.AgentDescriptor = {
    type = "structure",
    members = {
        aliasArn = {
            type = "string",
        },
    },
}

M.RelayConversationHistory = {
    TO_COLLABORATOR = "TO_COLLABORATOR",
    DISABLED = "DISABLED",
}

M.AgentCollaborator = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentDescriptor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        collaboratorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationInstruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaboratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        relayConversationHistory = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AssociateAgentCollaboratorInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentDescriptor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        collaboratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationInstruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relayConversationHistory = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AssociateAgentCollaboratorOutput = {
    type = "structure",
    members = {
        agentCollaborator = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAgentCollaboratorInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        collaboratorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateAgentCollaboratorOutput = {
    type = "structure",
}

M.GetAgentCollaboratorInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        collaboratorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentCollaboratorOutput = {
    type = "structure",
    members = {
        agentCollaborator = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentCollaboratorsInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AgentCollaboratorSummary = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaboratorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentDescriptor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        collaborationInstruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relayConversationHistory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaboratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentCollaboratorsOutput = {
    type = "structure",
    members = {
        agentCollaboratorSummaries = {
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

M.UpdateAgentCollaboratorInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        collaboratorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentDescriptor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        collaboratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationInstruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relayConversationHistory = {
            type = "string",
        },
    },
}

M.UpdateAgentCollaboratorOutput = {
    type = "structure",
    members = {
        agentCollaborator = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentFlowNodeConfiguration = {
    type = "structure",
    members = {
        agentAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KnowledgeBaseState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AgentKnowledgeBase = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        knowledgeBaseState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentKnowledgeBaseSummary = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        knowledgeBaseState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAgentInput = {
    type = "structure",
    members = {
        agentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        instruction = {
            type = "string",
        },
        foundationModel = {
            type = "string",
        },
        description = {
            type = "string",
        },
        orchestrationType = {
            type = "string",
        },
        customOrchestration = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
        },
        agentResourceRoleArn = {
            type = "string",
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        promptOverrideConfiguration = {
            type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        memoryConfiguration = {
            type = "structure",
        },
        agentCollaboration = {
            type = "string",
        },
    },
}

M.CreateAgentOutput = {
    type = "structure",
    members = {
        agent = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteAgentOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAgentInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentOutput = {
    type = "structure",
    members = {
        agent = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AgentSummary = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        latestAgentVersion = {
            type = "string",
        },
        guardrailConfiguration = {
            type = "structure",
        },
    },
}

M.ListAgentsOutput = {
    type = "structure",
    members = {
        agentSummaries = {
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

M.PrepareAgentInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PrepareAgentOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        preparedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAgentInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instruction = {
            type = "string",
        },
        foundationModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        orchestrationType = {
            type = "string",
        },
        customOrchestration = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
        },
        agentResourceRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
        promptOverrideConfiguration = {
            type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        memoryConfiguration = {
            type = "structure",
        },
        agentCollaboration = {
            type = "string",
        },
    },
}

M.UpdateAgentOutput = {
    type = "structure",
    members = {
        agent = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentVersion = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instruction = {
            type = "string",
        },
        agentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        foundationModel = {
            type = "string",
        },
        description = {
            type = "string",
        },
        idleSessionTTLInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        agentResourceRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        recommendedActions = {
            type = "list",
            member_type = "string",
        },
        promptOverrideConfiguration = {
            type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        memoryConfiguration = {
            type = "structure",
        },
        agentCollaboration = {
            type = "string",
        },
    },
}

M.AgentVersionSummary = {
    type = "structure",
    members = {
        agentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        guardrailConfiguration = {
            type = "structure",
        },
    },
}

M.CreateAgentAliasInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentAliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        description = {
            type = "string",
        },
        routingConfiguration = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAgentAliasOutput = {
    type = "structure",
    members = {
        agentAlias = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentAliasInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAgentAliasOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentAliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentAliasStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAgentAliasInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentAliasOutput = {
    type = "structure",
    members = {
        agentAlias = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentAliasesInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgentAliasesOutput = {
    type = "structure",
    members = {
        agentAliasSummaries = {
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

M.UpdateAgentAliasInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentAliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        routingConfiguration = {
            type = "list",
            member_type = "structure",
        },
        aliasInvocationState = {
            type = "string",
        },
    },
}

M.UpdateAgentAliasOutput = {
    type = "structure",
    members = {
        agentAlias = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DataDeletionPolicy = {
    RETAIN = "RETAIN",
    DELETE = "DELETE",
}

M.PatternObjectFilter = {
    type = "structure",
    members = {
        objectType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inclusionFilters = {
            type = "list",
            member_type = "string",
        },
        exclusionFilters = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PatternObjectFilterConfiguration = {
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

M.CrawlFilterConfigurationType = {
    PATTERN = "PATTERN",
}

M.CrawlFilterConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        patternObjectFilter = {
            type = "structure",
        },
    },
}

M.ConfluenceCrawlerConfiguration = {
    type = "structure",
    members = {
        filterConfiguration = {
            type = "structure",
        },
    },
}

M.ConfluenceAuthType = {
    BASIC = "BASIC",
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
}

M.ConfluenceHostType = {
    SAAS = "SAAS",
}

M.ConfluenceSourceConfiguration = {
    type = "structure",
    members = {
        hostUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfluenceDataSourceConfiguration = {
    type = "structure",
    members = {
        sourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        crawlerConfiguration = {
            type = "structure",
        },
    },
}

M.S3DataSourceConfiguration = {
    type = "structure",
    members = {
        bucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inclusionPrefixes = {
            type = "list",
            member_type = "string",
        },
        bucketOwnerAccountId = {
            type = "string",
        },
    },
}

M.SalesforceCrawlerConfiguration = {
    type = "structure",
    members = {
        filterConfiguration = {
            type = "structure",
        },
    },
}

M.SalesforceAuthType = {
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
}

M.SalesforceSourceConfiguration = {
    type = "structure",
    members = {
        hostUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SalesforceDataSourceConfiguration = {
    type = "structure",
    members = {
        sourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        crawlerConfiguration = {
            type = "structure",
        },
    },
}

M.SharePointCrawlerConfiguration = {
    type = "structure",
    members = {
        filterConfiguration = {
            type = "structure",
        },
    },
}

M.SharePointAuthType = {
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
    OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS = "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS",
}

M.SharePointHostType = {
    ONLINE = "ONLINE",
}

M.SharePointSourceConfiguration = {
    type = "structure",
    members = {
        tenantId = {
            type = "string",
        },
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        siteUrls = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        hostType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SharePointDataSourceConfiguration = {
    type = "structure",
    members = {
        sourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        crawlerConfiguration = {
            type = "structure",
        },
    },
}

M.DataSourceType = {
    S3 = "S3",
    WEB = "WEB",
    CONFLUENCE = "CONFLUENCE",
    SALESFORCE = "SALESFORCE",
    SHAREPOINT = "SHAREPOINT",
    CUSTOM = "CUSTOM",
    REDSHIFT_METADATA = "REDSHIFT_METADATA",
}

M.WebCrawlerLimits = {
    type = "structure",
    members = {
        rateLimit = {
            type = "number",
        },
        maxPages = {
            type = "number",
        },
    },
}

M.WebScopeType = {
    HOST_ONLY = "HOST_ONLY",
    SUBDOMAINS = "SUBDOMAINS",
}

M.WebCrawlerConfiguration = {
    type = "structure",
    members = {
        crawlerLimits = {
            type = "structure",
        },
        inclusionFilters = {
            type = "list",
            member_type = "string",
        },
        exclusionFilters = {
            type = "list",
            member_type = "string",
        },
        scope = {
            type = "string",
        },
        userAgent = {
            type = "string",
        },
        userAgentHeader = {
            type = "string",
        },
    },
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
            member_type = "structure",
        },
    },
}

M.WebSourceConfiguration = {
    type = "structure",
    members = {
        urlConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WebDataSourceConfiguration = {
    type = "structure",
    members = {
        sourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        crawlerConfiguration = {
            type = "structure",
        },
    },
}

M.DataSourceConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Configuration = {
            type = "structure",
        },
        webConfiguration = {
            type = "structure",
        },
        confluenceConfiguration = {
            type = "structure",
        },
        salesforceConfiguration = {
            type = "structure",
        },
        sharePointConfiguration = {
            type = "structure",
        },
    },
}

M.ServerSideEncryptionConfiguration = {
    type = "structure",
    members = {
        kmsKeyArn = {
            type = "string",
        },
    },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        overlapPercentage = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        overlapTokens = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        bufferSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        breakpointPercentileThreshold = {
            type = "number",
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
        fixedSizeChunkingConfiguration = {
            type = "structure",
        },
        hierarchicalChunkingConfiguration = {
            type = "structure",
        },
        semanticChunkingConfiguration = {
            type = "structure",
        },
    },
}

M.EnrichmentStrategyMethod = {
    CHUNK_ENTITY_EXTRACTION = "CHUNK_ENTITY_EXTRACTION",
}

M.EnrichmentStrategyConfiguration = {
    type = "structure",
    members = {
        method = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BedrockFoundationModelContextEnrichmentConfiguration = {
    type = "structure",
    members = {
        enrichmentStrategyConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContextEnrichmentType = {
    BEDROCK_FOUNDATION_MODEL = "BEDROCK_FOUNDATION_MODEL",
}

M.ContextEnrichmentConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bedrockFoundationModelConfiguration = {
            type = "structure",
        },
    },
}

M.S3Location = {
    type = "structure",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntermediateStorage = {
    type = "structure",
    members = {
        s3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StepType = {
    POST_CHUNKING = "POST_CHUNKING",
}

M.TransformationLambdaConfiguration = {
    type = "structure",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransformationFunction = {
    type = "structure",
    members = {
        transformationLambdaConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Transformation = {
    type = "structure",
    members = {
        transformationFunction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        stepToApply = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomTransformationConfiguration = {
    type = "structure",
    members = {
        intermediateStorage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        transformations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ParsingModality = {
    MULTIMODAL = "MULTIMODAL",
}

M.BedrockDataAutomationConfiguration = {
    type = "structure",
    members = {
        parsingModality = {
            type = "string",
        },
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

M.BedrockFoundationModelConfiguration = {
    type = "structure",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parsingPrompt = {
            type = "structure",
        },
        parsingModality = {
            type = "string",
        },
    },
}

M.ParsingStrategy = {
    BEDROCK_FOUNDATION_MODEL = "BEDROCK_FOUNDATION_MODEL",
    BEDROCK_DATA_AUTOMATION = "BEDROCK_DATA_AUTOMATION",
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
        bedrockFoundationModelConfiguration = {
            type = "structure",
        },
        bedrockDataAutomationConfiguration = {
            type = "structure",
        },
    },
}

M.VectorIngestionConfiguration = {
    type = "structure",
    members = {
        chunkingConfiguration = {
            type = "structure",
        },
        customTransformationConfiguration = {
            type = "structure",
        },
        parsingConfiguration = {
            type = "structure",
        },
        contextEnrichmentConfiguration = {
            type = "structure",
        },
    },
}

M.CreateDataSourceInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
        dataSourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        dataDeletionPolicy = {
            type = "string",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        vectorIngestionConfiguration = {
            type = "structure",
        },
    },
}

M.DataSourceStatus = {
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    DELETE_UNSUCCESSFUL = "DELETE_UNSUCCESSFUL",
}

M.DataSource = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        dataSourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        vectorIngestionConfiguration = {
            type = "structure",
        },
        dataDeletionPolicy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateDataSourceOutput = {
    type = "structure",
    members = {
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataSourceInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
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
    },
}

M.GetDataSourceInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataSourceOutput = {
    type = "structure",
    members = {
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DataSourceSummary = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    members = {
        dataSourceSummaries = {
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

M.UpdateDataSourceInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
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
        dataSourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        dataDeletionPolicy = {
            type = "string",
        },
        serverSideEncryptionConfiguration = {
            type = "structure",
        },
        vectorIngestionConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    members = {
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowConditionalConnectionConfiguration = {
    type = "structure",
    members = {
        condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowDataConnectionConfiguration = {
    type = "structure",
    members = {
        sourceOutput = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetInput = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowConnectionConfiguration = {
    type = "union",
    members = {
        data = {
            type = "structure",
        },
        conditional = {
            type = "structure",
        },
    },
}

M.FlowConnectionType = {
    DATA = "Data",
    CONDITIONAL = "Conditional",
}

M.FlowConnection = {
    type = "structure",
    members = {
        type = {
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
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "union",
        },
    },
}

M.CollectorFlowNodeConfiguration = {
    type = "structure",
}

M.FlowCondition = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expression = {
            type = "string",
        },
    },
}

M.ConditionFlowNodeConfiguration = {
    type = "structure",
    members = {
        conditions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SupportedLanguages = {
    PYTHON_3 = "Python_3",
}

M.InlineCodeFlowNodeConfiguration = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputFlowNodeConfiguration = {
    type = "structure",
}

M.IteratorFlowNodeConfiguration = {
    type = "structure",
}

M.PromptModelInferenceConfiguration = {
    type = "structure",
    members = {
        temperature = {
            type = "number",
        },
        topP = {
            type = "number",
        },
        maxTokens = {
            type = "number",
        },
        stopSequences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PromptInferenceConfiguration = {
    type = "union",
    members = {
        text = {
            type = "structure",
        },
    },
}

M.PerformanceConfigLatency = {
    STANDARD = "standard",
    OPTIMIZED = "optimized",
}

M.PerformanceConfiguration = {
    type = "structure",
    members = {
        latency = {
            type = "string",
        },
    },
}

M.KnowledgeBasePromptTemplate = {
    type = "structure",
    members = {
        textPromptTemplate = {
            type = "string",
        },
    },
}

M.KnowledgeBaseOrchestrationConfiguration = {
    type = "structure",
    members = {
        promptTemplate = {
            type = "structure",
        },
        inferenceConfig = {
            type = "union",
        },
        additionalModelRequestFields = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
        performanceConfig = {
            type = "structure",
        },
    },
}

M.RerankingMetadataSelectionMode = {
    SELECTIVE = "SELECTIVE",
    ALL = "ALL",
}

M.FieldForReranking = {
    type = "structure",
    members = {
        fieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RerankingMetadataSelectiveModeConfiguration = {
    type = "union",
    members = {
        fieldsToInclude = {
            type = "list",
            member_type = "structure",
        },
        fieldsToExclude = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MetadataConfigurationForReranking = {
    type = "structure",
    members = {
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        selectiveModeConfiguration = {
            type = "union",
        },
    },
}

M.VectorSearchBedrockRerankingModelConfiguration = {
    type = "structure",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalModelRequestFields = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
    },
}

M.VectorSearchBedrockRerankingConfiguration = {
    type = "structure",
    members = {
        modelConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        numberOfRerankedResults = {
            type = "number",
        },
        metadataConfiguration = {
            type = "structure",
        },
    },
}

M.VectorSearchRerankingConfigurationType = {
    BEDROCK_RERANKING_MODEL = "BEDROCK_RERANKING_MODEL",
}

M.VectorSearchRerankingConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bedrockRerankingConfiguration = {
            type = "structure",
        },
    },
}

M.KnowledgeBaseFlowNodeConfiguration = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        numberOfResults = {
            type = "number",
        },
        promptTemplate = {
            type = "structure",
        },
        inferenceConfiguration = {
            type = "union",
        },
        rerankingConfiguration = {
            type = "structure",
        },
        orchestrationConfiguration = {
            type = "structure",
        },
    },
}

M.LambdaFunctionFlowNodeConfiguration = {
    type = "structure",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LexFlowNodeConfiguration = {
    type = "structure",
    members = {
        botAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoopControllerFlowNodeConfiguration = {
    type = "structure",
    members = {
        continueCondition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxIterations = {
            type = "number",
        },
    },
}

M.LoopInputFlowNodeConfiguration = {
    type = "structure",
}

M.OutputFlowNodeConfiguration = {
    type = "structure",
}

M.PromptInputVariable = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.CachePointType = {
    DEFAULT = "default",
}

M.CachePointBlock = {
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

M.ContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        cachePoint = {
            type = "structure",
        },
    },
}

M.ConversationRole = {
    USER = "user",
    ASSISTANT = "assistant",
}

M.Message = {
    type = "structure",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.SystemContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        cachePoint = {
            type = "structure",
        },
    },
}

M.AnyToolChoice = {
    type = "structure",
}

M.AutoToolChoice = {
    type = "structure",
}

M.SpecificToolChoice = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ToolChoice = {
    type = "union",
    members = {
        auto = {
            type = "structure",
        },
        any = {
            type = "structure",
        },
        tool = {
            type = "structure",
        },
    },
}

M.ToolInputSchema = {
    type = "union",
    members = {
        json = {
            type = "document",
        },
    },
}

M.ToolSpecification = {
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
        inputSchema = {
            type = "union",
            traits = {
                required = true,
            },
        },
        strict = {
            type = "boolean",
        },
    },
}

M.Tool = {
    type = "union",
    members = {
        toolSpec = {
            type = "structure",
        },
        cachePoint = {
            type = "structure",
        },
    },
}

M.ToolConfiguration = {
    type = "structure",
    members = {
        tools = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        toolChoice = {
            type = "union",
        },
    },
}

M.ChatPromptTemplateConfiguration = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        system = {
            type = "list",
            member_type = "union",
        },
        inputVariables = {
            type = "list",
            member_type = "structure",
        },
        toolConfiguration = {
            type = "structure",
        },
    },
}

M.TextPromptTemplateConfiguration = {
    type = "structure",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cachePoint = {
            type = "structure",
        },
        inputVariables = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PromptTemplateConfiguration = {
    type = "union",
    members = {
        text = {
            type = "structure",
        },
        chat = {
            type = "structure",
        },
    },
}

M.PromptTemplateType = {
    TEXT = "TEXT",
    CHAT = "CHAT",
}

M.PromptFlowNodeInlineConfiguration = {
    type = "structure",
    members = {
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateConfiguration = {
            type = "union",
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
        inferenceConfiguration = {
            type = "union",
        },
        additionalModelRequestFields = {
            type = "document",
        },
    },
}

M.PromptFlowNodeResourceConfiguration = {
    type = "structure",
    members = {
        promptArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PromptFlowNodeSourceConfiguration = {
    type = "union",
    members = {
        resource = {
            type = "structure",
        },
        inline = {
            type = "structure",
        },
    },
}

M.PromptFlowNodeConfiguration = {
    type = "structure",
    members = {
        sourceConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        guardrailConfiguration = {
            type = "structure",
        },
    },
}

M.RetrievalFlowNodeS3Configuration = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetrievalFlowNodeServiceConfiguration = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
    },
}

M.RetrievalFlowNodeConfiguration = {
    type = "structure",
    members = {
        serviceConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.StorageFlowNodeS3Configuration = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StorageFlowNodeServiceConfiguration = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
    },
}

M.StorageFlowNodeConfiguration = {
    type = "structure",
    members = {
        serviceConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowNodeInputCategory = {
    LOOP_CONDITION = "LoopCondition",
    RETURN_VALUE_TO_LOOP_START = "ReturnValueToLoopStart",
    EXIT_LOOP = "ExitLoop",
}

M.FlowNodeIODataType = {
    STRING = "String",
    NUMBER = "Number",
    BOOLEAN = "Boolean",
    OBJECT = "Object",
    ARRAY = "Array",
}

M.FlowNodeInput = {
    type = "structure",
    members = {
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
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        category = {
            type = "string",
        },
    },
}

M.FlowNodeOutput = {
    type = "structure",
    members = {
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
    },
}

M.FlowNodeType = {
    INPUT = "Input",
    OUTPUT = "Output",
    KNOWLEDGE_BASE = "KnowledgeBase",
    CONDITION = "Condition",
    LEX = "Lex",
    PROMPT = "Prompt",
    LAMBDA_FUNCTION = "LambdaFunction",
    STORAGE = "Storage",
    AGENT = "Agent",
    RETRIEVAL = "Retrieval",
    ITERATOR = "Iterator",
    COLLECTOR = "Collector",
    INLINE_CODE = "InlineCode",
    LOOP = "Loop",
    LOOP_INPUT = "LoopInput",
    LOOP_CONTROLLER = "LoopController",
}

M.FlowStatus = {
    FAILED = "Failed",
    PREPARED = "Prepared",
    PREPARING = "Preparing",
    NOT_PREPARED = "NotPrepared",
}

M.DeleteFlowInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteFlowOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConcurrencyType = {
    AUTOMATIC = "Automatic",
    MANUAL = "Manual",
}

M.FlowAliasConcurrencyConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxConcurrency = {
            type = "number",
        },
    },
}

M.FlowAliasRoutingConfigurationListItem = {
    type = "structure",
    members = {
        flowVersion = {
            type = "string",
        },
    },
}

M.CreateFlowAliasInput = {
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
        routingConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = {
            type = "structure",
        },
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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

M.CreateFlowAliasOutput = {
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
        routingConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = {
            type = "structure",
        },
        flowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFlowAliasInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFlowAliasOutput = {
    type = "structure",
    members = {
        flowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFlowAliasInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFlowAliasOutput = {
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
        routingConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = {
            type = "structure",
        },
        flowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFlowAliasesInput = {
    type = "structure",
    members = {
        flowIdentifier = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.FlowAliasSummary = {
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
        routingConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = {
            type = "structure",
        },
        flowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFlowAliasesOutput = {
    type = "structure",
    members = {
        flowAliasSummaries = {
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

M.UpdateFlowAliasInput = {
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
        routingConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = {
            type = "structure",
        },
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        aliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateFlowAliasOutput = {
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
        routingConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = {
            type = "structure",
        },
        flowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFlowVersionInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DeleteFlowVersionInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteFlowVersionOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFlowVersionInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListFlowVersionsInput = {
    type = "structure",
    members = {
        flowIdentifier = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.FlowVersionSummary = {
    type = "structure",
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFlowVersionsOutput = {
    type = "structure",
    members = {
        flowVersionSummaries = {
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

M.GetFlowInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CyclicConnectionFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DuplicateConditionExpressionFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DuplicateConnectionsFlowValidationDetails = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncompatibleConnectionDataTypeFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidLoopBoundaryFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
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
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncompatibleLoopNodeType = {
    INPUT = "Input",
    CONDITION = "Condition",
    ITERATOR = "Iterator",
    COLLECTOR = "Collector",
}

M.LoopIncompatibleNodeTypeFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        incompatibleNodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        incompatibleNodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MalformedConditionExpressionFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MalformedNodeInputExpressionFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MismatchedNodeInputTypeFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MismatchedNodeOutputTypeFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingConnectionConfigurationFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingDefaultConditionFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingEndingNodesFlowValidationDetails = {
    type = "structure",
}

M.MissingLoopControllerNodeFlowValidationDetails = {
    type = "structure",
    members = {
        loopNode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingLoopInputNodeFlowValidationDetails = {
    type = "structure",
    members = {
        loopNode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingNodeConfigurationFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingNodeInputFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingNodeOutputFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingStartingNodesFlowValidationDetails = {
    type = "structure",
}

M.MultipleLoopControllerNodesFlowValidationDetails = {
    type = "structure",
    members = {
        loopNode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MultipleLoopInputNodesFlowValidationDetails = {
    type = "structure",
    members = {
        loopNode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MultipleNodeInputConnectionsFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnfulfilledNodeInputFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownConnectionConditionFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownConnectionSourceFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownConnectionSourceOutputFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownConnectionTargetFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownConnectionTargetInputFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownNodeInputFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownNodeOutputFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnreachableNodeFlowValidationDetails = {
    type = "structure",
    members = {
        node = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnsatisfiedConnectionConditionsFlowValidationDetails = {
    type = "structure",
    members = {
        connection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnspecifiedFlowValidationDetails = {
    type = "structure",
}

M.FlowValidationDetails = {
    type = "union",
    members = {
        cyclicConnection = {
            type = "structure",
        },
        duplicateConnections = {
            type = "structure",
        },
        duplicateConditionExpression = {
            type = "structure",
        },
        unreachableNode = {
            type = "structure",
        },
        unknownConnectionSource = {
            type = "structure",
        },
        unknownConnectionSourceOutput = {
            type = "structure",
        },
        unknownConnectionTarget = {
            type = "structure",
        },
        unknownConnectionTargetInput = {
            type = "structure",
        },
        unknownConnectionCondition = {
            type = "structure",
        },
        malformedConditionExpression = {
            type = "structure",
        },
        malformedNodeInputExpression = {
            type = "structure",
        },
        mismatchedNodeInputType = {
            type = "structure",
        },
        mismatchedNodeOutputType = {
            type = "structure",
        },
        incompatibleConnectionDataType = {
            type = "structure",
        },
        missingConnectionConfiguration = {
            type = "structure",
        },
        missingDefaultCondition = {
            type = "structure",
        },
        missingEndingNodes = {
            type = "structure",
        },
        missingNodeConfiguration = {
            type = "structure",
        },
        missingNodeInput = {
            type = "structure",
        },
        missingNodeOutput = {
            type = "structure",
        },
        missingStartingNodes = {
            type = "structure",
        },
        multipleNodeInputConnections = {
            type = "structure",
        },
        unfulfilledNodeInput = {
            type = "structure",
        },
        unsatisfiedConnectionConditions = {
            type = "structure",
        },
        unspecified = {
            type = "structure",
        },
        unknownNodeInput = {
            type = "structure",
        },
        unknownNodeOutput = {
            type = "structure",
        },
        missingLoopInputNode = {
            type = "structure",
        },
        missingLoopControllerNode = {
            type = "structure",
        },
        multipleLoopInputNodes = {
            type = "structure",
        },
        multipleLoopControllerNodes = {
            type = "structure",
        },
        loopIncompatibleNodeType = {
            type = "structure",
        },
        invalidLoopBoundary = {
            type = "structure",
        },
    },
}

M.FlowValidationSeverity = {
    WARNING = "Warning",
    ERROR = "Error",
}

M.FlowValidationType = {
    CYCLIC_CONNECTION = "CyclicConnection",
    DUPLICATE_CONNECTIONS = "DuplicateConnections",
    DUPLICATE_CONDITION_EXPRESSION = "DuplicateConditionExpression",
    UNREACHABLE_NODE = "UnreachableNode",
    UNKNOWN_CONNECTION_SOURCE = "UnknownConnectionSource",
    UNKNOWN_CONNECTION_SOURCE_OUTPUT = "UnknownConnectionSourceOutput",
    UNKNOWN_CONNECTION_TARGET = "UnknownConnectionTarget",
    UNKNOWN_CONNECTION_TARGET_INPUT = "UnknownConnectionTargetInput",
    UNKNOWN_CONNECTION_CONDITION = "UnknownConnectionCondition",
    MALFORMED_CONDITION_EXPRESSION = "MalformedConditionExpression",
    MALFORMED_NODE_INPUT_EXPRESSION = "MalformedNodeInputExpression",
    MISMATCHED_NODE_INPUT_TYPE = "MismatchedNodeInputType",
    MISMATCHED_NODE_OUTPUT_TYPE = "MismatchedNodeOutputType",
    INCOMPATIBLE_CONNECTION_DATA_TYPE = "IncompatibleConnectionDataType",
    MISSING_CONNECTION_CONFIGURATION = "MissingConnectionConfiguration",
    MISSING_DEFAULT_CONDITION = "MissingDefaultCondition",
    MISSING_ENDING_NODES = "MissingEndingNodes",
    MISSING_NODE_CONFIGURATION = "MissingNodeConfiguration",
    MISSING_NODE_INPUT = "MissingNodeInput",
    MISSING_NODE_OUTPUT = "MissingNodeOutput",
    MISSING_STARTING_NODES = "MissingStartingNodes",
    MULTIPLE_NODE_INPUT_CONNECTIONS = "MultipleNodeInputConnections",
    UNFULFILLED_NODE_INPUT = "UnfulfilledNodeInput",
    UNSATISFIED_CONNECTION_CONDITIONS = "UnsatisfiedConnectionConditions",
    UNSPECIFIED = "Unspecified",
    UNKNOWN_NODE_INPUT = "UnknownNodeInput",
    UNKNOWN_NODE_OUTPUT = "UnknownNodeOutput",
    MISSING_LOOP_INPUT_NODE = "MissingLoopInputNode",
    MISSING_LOOP_CONTROLLER_NODE = "MissingLoopControllerNode",
    MULTIPLE_LOOP_INPUT_NODES = "MultipleLoopInputNodes",
    MULTIPLE_LOOP_CONTROLLER_NODES = "MultipleLoopControllerNodes",
    LOOP_INCOMPATIBLE_NODE_TYPE = "LoopIncompatibleNodeType",
    INVALID_LOOP_BOUNDARY = "InvalidLoopBoundary",
}

M.FlowValidation = {
    type = "structure",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        severity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "union",
        },
        type = {
            type = "string",
        },
    },
}

M.ListFlowsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.FlowSummary = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFlowsOutput = {
    type = "structure",
    members = {
        flowSummaries = {
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

M.PrepareFlowInput = {
    type = "structure",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PrepareFlowOutput = {
    type = "structure",
    members = {
        id = {
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
    },
}

M.GetIngestionJobInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IngestionJobStatistics = {
    type = "structure",
    members = {
        numberOfDocumentsScanned = {
            type = "number",
        },
        numberOfMetadataDocumentsScanned = {
            type = "number",
        },
        numberOfNewDocumentsIndexed = {
            type = "number",
        },
        numberOfModifiedDocumentsIndexed = {
            type = "number",
        },
        numberOfMetadataDocumentsModified = {
            type = "number",
        },
        numberOfDocumentsDeleted = {
            type = "number",
        },
        numberOfDocumentsFailed = {
            type = "number",
        },
    },
}

M.IngestionJobStatus = {
    STARTING = "STARTING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.IngestionJob = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestionJobId = {
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
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "structure",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIngestionJobOutput = {
    type = "structure",
    members = {
        ingestionJob = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestionJobFilterAttribute = {
    STATUS = "STATUS",
}

M.IngestionJobFilterOperator = {
    EQ = "EQ",
}

M.IngestionJobFilter = {
    type = "structure",
    members = {
        attribute = {
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
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestionJobSortByAttribute = {
    STATUS = "STATUS",
    STARTED_AT = "STARTED_AT",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.IngestionJobSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIngestionJobsInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        sortBy = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IngestionJobSummary = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestionJobId = {
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
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "structure",
        },
    },
}

M.ListIngestionJobsOutput = {
    type = "structure",
    members = {
        ingestionJobSummaries = {
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

M.StartIngestionJobInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.StartIngestionJobOutput = {
    type = "structure",
    members = {
        ingestionJob = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StopIngestionJobInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopIngestionJobOutput = {
    type = "structure",
    members = {
        ingestionJob = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomDocumentIdentifier = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentDataSourceType = {
    CUSTOM = "CUSTOM",
    S3 = "S3",
}

M.DocumentIdentifier = {
    type = "structure",
    members = {
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3 = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
    },
}

M.DeleteKnowledgeBaseDocumentsInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        documentIdentifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentStatus = {
    INDEXED = "INDEXED",
    PARTIALLY_INDEXED = "PARTIALLY_INDEXED",
    PENDING = "PENDING",
    FAILED = "FAILED",
    METADATA_PARTIALLY_INDEXED = "METADATA_PARTIALLY_INDEXED",
    METADATA_UPDATE_FAILED = "METADATA_UPDATE_FAILED",
    IGNORED = "IGNORED",
    NOT_FOUND = "NOT_FOUND",
    STARTING = "STARTING",
    IN_PROGRESS = "IN_PROGRESS",
    DELETING = "DELETING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.KnowledgeBaseDocumentDetail = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceId = {
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
        identifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.DeleteKnowledgeBaseDocumentsOutput = {
    type = "structure",
    members = {
        documentDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetKnowledgeBaseDocumentsInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentIdentifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetKnowledgeBaseDocumentsOutput = {
    type = "structure",
    members = {
        documentDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ByteContentDoc = {
    type = "structure",
    members = {
        mimeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.TextContentDoc = {
    type = "structure",
    members = {
        data = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InlineContentType = {
    BYTE = "BYTE",
    TEXT = "TEXT",
}

M.InlineContent = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        byteContent = {
            type = "structure",
        },
        textContent = {
            type = "structure",
        },
    },
}

M.CustomS3Location = {
    type = "structure",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketOwnerAccountId = {
            type = "string",
        },
    },
}

M.CustomSourceType = {
    IN_LINE = "IN_LINE",
    S3_LOCATION = "S3_LOCATION",
}

M.CustomContent = {
    type = "structure",
    members = {
        customDocumentIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = {
            type = "structure",
        },
        inlineContent = {
            type = "structure",
        },
    },
}

M.S3Content = {
    type = "structure",
    members = {
        s3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentContent = {
    type = "structure",
    members = {
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        custom = {
            type = "structure",
        },
        s3 = {
            type = "structure",
        },
    },
}

M.MetadataValueType = {
    BOOLEAN = "BOOLEAN",
    NUMBER = "NUMBER",
    STRING = "STRING",
    STRING_LIST = "STRING_LIST",
}

M.MetadataAttributeValue = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        numberValue = {
            type = "number",
        },
        booleanValue = {
            type = "boolean",
        },
        stringValue = {
            type = "string",
        },
        stringListValue = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MetadataAttribute = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataSourceType = {
    IN_LINE_ATTRIBUTE = "IN_LINE_ATTRIBUTE",
    S3_LOCATION = "S3_LOCATION",
}

M.DocumentMetadata = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inlineAttributes = {
            type = "list",
            member_type = "structure",
        },
        s3Location = {
            type = "structure",
        },
    },
}

M.KnowledgeBaseDocument = {
    type = "structure",
    members = {
        metadata = {
            type = "structure",
        },
        content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestKnowledgeBaseDocumentsInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        documents = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestKnowledgeBaseDocumentsOutput = {
    type = "structure",
    members = {
        documentDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListKnowledgeBaseDocumentsInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKnowledgeBaseDocumentsOutput = {
    type = "structure",
    members = {
        documentDetails = {
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

M.AssociateAgentKnowledgeBaseInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        knowledgeBaseId = {
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
        knowledgeBaseState = {
            type = "string",
        },
    },
}

M.AssociateAgentKnowledgeBaseOutput = {
    type = "structure",
    members = {
        agentKnowledgeBase = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.KendraKnowledgeBaseConfiguration = {
    type = "structure",
    members = {
        kendraIndexArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftProvisionedAuthType = {
    IAM = "IAM",
    USERNAME_PASSWORD = "USERNAME_PASSWORD",
    USERNAME = "USERNAME",
}

M.RedshiftProvisionedAuthConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        databaseUser = {
            type = "string",
        },
        usernamePasswordSecretArn = {
            type = "string",
        },
    },
}

M.RedshiftProvisionedConfiguration = {
    type = "structure",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftServerlessAuthType = {
    IAM = "IAM",
    USERNAME_PASSWORD = "USERNAME_PASSWORD",
}

M.RedshiftServerlessAuthConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usernamePasswordSecretArn = {
            type = "string",
        },
    },
}

M.RedshiftServerlessConfiguration = {
    type = "structure",
    members = {
        workgroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftQueryEngineType = {
    SERVERLESS = "SERVERLESS",
    PROVISIONED = "PROVISIONED",
}

M.RedshiftQueryEngineConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serverlessConfiguration = {
            type = "structure",
        },
        provisionedConfiguration = {
            type = "structure",
        },
    },
}

M.CuratedQuery = {
    type = "structure",
    members = {
        naturalLanguage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sql = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncludeExclude = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.QueryGenerationColumn = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        inclusion = {
            type = "string",
        },
    },
}

M.QueryGenerationTable = {
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
        inclusion = {
            type = "string",
        },
        columns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QueryGenerationContext = {
    type = "structure",
    members = {
        tables = {
            type = "list",
            member_type = "structure",
        },
        curatedQueries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QueryGenerationConfiguration = {
    type = "structure",
    members = {
        executionTimeoutSeconds = {
            type = "number",
        },
        generationContext = {
            type = "structure",
        },
    },
}

M.RedshiftQueryEngineAwsDataCatalogStorageConfiguration = {
    type = "structure",
    members = {
        tableNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftQueryEngineRedshiftStorageConfiguration = {
    type = "structure",
    members = {
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftQueryEngineStorageType = {
    REDSHIFT = "REDSHIFT",
    AWS_DATA_CATALOG = "AWS_DATA_CATALOG",
}

M.RedshiftQueryEngineStorageConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsDataCatalogConfiguration = {
            type = "structure",
        },
        redshiftConfiguration = {
            type = "structure",
        },
    },
}

M.RedshiftConfiguration = {
    type = "structure",
    members = {
        storageConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        queryEngineConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        queryGenerationConfiguration = {
            type = "structure",
        },
    },
}

M.QueryEngineType = {
    REDSHIFT = "REDSHIFT",
}

M.SqlKnowledgeBaseConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        redshiftConfiguration = {
            type = "structure",
        },
    },
}

M.KnowledgeBaseType = {
    VECTOR = "VECTOR",
    KENDRA = "KENDRA",
    SQL = "SQL",
}

M.AudioSegmentationConfiguration = {
    type = "structure",
    members = {
        fixedLengthDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioConfiguration = {
    type = "structure",
    members = {
        segmentationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EmbeddingDataType = {
    FLOAT32 = "FLOAT32",
    BINARY = "BINARY",
}

M.VideoSegmentationConfiguration = {
    type = "structure",
    members = {
        fixedLengthDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VideoConfiguration = {
    type = "structure",
    members = {
        segmentationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BedrockEmbeddingModelConfiguration = {
    type = "structure",
    members = {
        dimensions = {
            type = "number",
        },
        embeddingDataType = {
            type = "string",
        },
        audio = {
            type = "list",
            member_type = "structure",
        },
        video = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EmbeddingModelConfiguration = {
    type = "structure",
    members = {
        bedrockEmbeddingModelConfiguration = {
            type = "structure",
        },
    },
}

M.SupplementalDataStorageLocationType = {
    S3 = "S3",
}

M.SupplementalDataStorageLocation = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = {
            type = "structure",
        },
    },
}

M.SupplementalDataStorageConfiguration = {
    type = "structure",
    members = {
        storageLocations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VectorKnowledgeBaseConfiguration = {
    type = "structure",
    members = {
        embeddingModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        embeddingModelConfiguration = {
            type = "structure",
        },
        supplementalDataStorageConfiguration = {
            type = "structure",
        },
    },
}

M.KnowledgeBaseConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorKnowledgeBaseConfiguration = {
            type = "structure",
        },
        kendraKnowledgeBaseConfiguration = {
            type = "structure",
        },
        sqlKnowledgeBaseConfiguration = {
            type = "structure",
        },
    },
}

M.MongoDbAtlasFieldMapping = {
    type = "structure",
    members = {
        vectorField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MongoDbAtlasConfiguration = {
    type = "structure",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorIndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        endpointServiceName = {
            type = "string",
        },
        textIndexName = {
            type = "string",
        },
    },
}

M.NeptuneAnalyticsFieldMapping = {
    type = "structure",
    members = {
        textField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NeptuneAnalyticsConfiguration = {
    type = "structure",
    members = {
        graphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenSearchManagedClusterFieldMapping = {
    type = "structure",
    members = {
        vectorField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenSearchManagedClusterConfiguration = {
    type = "structure",
    members = {
        domainEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorIndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenSearchServerlessFieldMapping = {
    type = "structure",
    members = {
        vectorField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenSearchServerlessConfiguration = {
    type = "structure",
    members = {
        collectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorIndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PineconeFieldMapping = {
    type = "structure",
    members = {
        textField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PineconeConfiguration = {
    type = "structure",
    members = {
        connectionString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "string",
        },
        fieldMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RdsFieldMapping = {
    type = "structure",
    members = {
        primaryKeyField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customMetadataField = {
            type = "string",
        },
    },
}

M.RdsConfiguration = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RedisEnterpriseCloudFieldMapping = {
    type = "structure",
    members = {
        vectorField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedisEnterpriseCloudConfiguration = {
    type = "structure",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorIndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialsSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3VectorsConfiguration = {
    type = "structure",
    members = {
        vectorBucketArn = {
            type = "string",
        },
        indexArn = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
    },
}

M.KnowledgeBaseStorageType = {
    OPENSEARCH_SERVERLESS = "OPENSEARCH_SERVERLESS",
    PINECONE = "PINECONE",
    REDIS_ENTERPRISE_CLOUD = "REDIS_ENTERPRISE_CLOUD",
    RDS = "RDS",
    MONGO_DB_ATLAS = "MONGO_DB_ATLAS",
    NEPTUNE_ANALYTICS = "NEPTUNE_ANALYTICS",
    OPENSEARCH_MANAGED_CLUSTER = "OPENSEARCH_MANAGED_CLUSTER",
    S3_VECTORS = "S3_VECTORS",
}

M.StorageConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        opensearchServerlessConfiguration = {
            type = "structure",
        },
        opensearchManagedClusterConfiguration = {
            type = "structure",
        },
        pineconeConfiguration = {
            type = "structure",
        },
        redisEnterpriseCloudConfiguration = {
            type = "structure",
        },
        rdsConfiguration = {
            type = "structure",
        },
        mongoDbAtlasConfiguration = {
            type = "structure",
        },
        neptuneAnalyticsConfiguration = {
            type = "structure",
        },
        s3VectorsConfiguration = {
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
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        storageConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.KnowledgeBaseStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
    DELETE_UNSUCCESSFUL = "DELETE_UNSUCCESSFUL",
}

M.KnowledgeBase = {
    type = "structure",
    members = {
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
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        storageConfiguration = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateKnowledgeBaseOutput = {
    type = "structure",
    members = {
        knowledgeBase = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
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
    members = {
        knowledgeBaseId = {
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
    },
}

M.DisassociateAgentKnowledgeBaseInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
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

M.DisassociateAgentKnowledgeBaseOutput = {
    type = "structure",
}

M.GetAgentKnowledgeBaseInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
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

M.GetAgentKnowledgeBaseOutput = {
    type = "structure",
    members = {
        agentKnowledgeBase = {
            type = "structure",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentKnowledgeBasesInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgentKnowledgeBasesOutput = {
    type = "structure",
    members = {
        agentKnowledgeBaseSummaries = {
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
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
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
        name = {
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
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
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

M.UpdateAgentKnowledgeBaseInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
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
        description = {
            type = "string",
        },
        knowledgeBaseState = {
            type = "string",
        },
    },
}

M.UpdateAgentKnowledgeBaseOutput = {
    type = "structure",
    members = {
        agentKnowledgeBase = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateKnowledgeBaseInput = {
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
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        storageConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateKnowledgeBaseOutput = {
    type = "structure",
    members = {
        knowledgeBase = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PromptAgentResource = {
    type = "structure",
    members = {
        agentIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PromptGenAiResource = {
    type = "union",
    members = {
        agent = {
            type = "structure",
        },
    },
}

M.PromptMetadataEntry = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.PromptVariant = {
    type = "structure",
    members = {
        name = {
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
        templateConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
        },
        inferenceConfiguration = {
            type = "union",
        },
        metadata = {
            type = "list",
            member_type = "structure",
        },
        additionalModelRequestFields = {
            type = "document",
        },
        genAiResource = {
            type = "union",
        },
    },
}

M.CreatePromptInput = {
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
        customerEncryptionKeyArn = {
            type = "string",
        },
        defaultVariant = {
            type = "string",
        },
        variants = {
            type = "list",
            member_type = "structure",
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

M.CreatePromptOutput = {
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
        customerEncryptionKeyArn = {
            type = "string",
        },
        defaultVariant = {
            type = "string",
        },
        variants = {
            type = "list",
            member_type = "structure",
        },
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePromptVersionInput = {
    type = "structure",
    members = {
        promptIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
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

M.CreatePromptVersionOutput = {
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
        customerEncryptionKeyArn = {
            type = "string",
        },
        defaultVariant = {
            type = "string",
        },
        variants = {
            type = "list",
            member_type = "structure",
        },
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePromptInput = {
    type = "structure",
    members = {
        promptIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        promptVersion = {
            type = "string",
            traits = {
                http_query = "promptVersion",
            },
        },
    },
}

M.DeletePromptOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
    },
}

M.GetPromptInput = {
    type = "structure",
    members = {
        promptIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        promptVersion = {
            type = "string",
            traits = {
                http_query = "promptVersion",
            },
        },
    },
}

M.GetPromptOutput = {
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
        customerEncryptionKeyArn = {
            type = "string",
        },
        defaultVariant = {
            type = "string",
        },
        variants = {
            type = "list",
            member_type = "structure",
        },
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPromptsInput = {
    type = "structure",
    members = {
        promptIdentifier = {
            type = "string",
            traits = {
                http_query = "promptIdentifier",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PromptSummary = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPromptsOutput = {
    type = "structure",
    members = {
        promptSummaries = {
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

M.UpdatePromptInput = {
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
        customerEncryptionKeyArn = {
            type = "string",
        },
        defaultVariant = {
            type = "string",
        },
        variants = {
            type = "list",
            member_type = "structure",
        },
        promptIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdatePromptOutput = {
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
        customerEncryptionKeyArn = {
            type = "string",
        },
        defaultVariant = {
            type = "string",
        },
        variants = {
            type = "list",
            member_type = "structure",
        },
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
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

M.ValidateFlowDefinitionOutput = {
    type = "structure",
    members = {
        validations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentVersionInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteAgentVersionOutput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAgentVersionInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentVersionOutput = {
    type = "structure",
    members = {
        agentVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentVersionsInput = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgentVersionsOutput = {
    type = "structure",
    members = {
        agentVersionSummaries = {
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

M.FlowDefinition = {
    type = "structure",
    members = {
        nodes = {
            type = "list",
            member_type = "structure",
        },
        connections = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FlowNode = {
    type = "structure",
    members = {
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
        configuration = {
            type = "union",
        },
        inputs = {
            type = "list",
            member_type = "structure",
        },
        outputs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FlowNodeConfiguration = {
    type = "union",
    members = {
        input = {
            type = "structure",
        },
        output = {
            type = "structure",
        },
        knowledgeBase = {
            type = "structure",
        },
        condition = {
            type = "structure",
        },
        lex = {
            type = "structure",
        },
        prompt = {
            type = "structure",
        },
        lambdaFunction = {
            type = "structure",
        },
        storage = {
            type = "structure",
        },
        agent = {
            type = "structure",
        },
        retrieval = {
            type = "structure",
        },
        iterator = {
            type = "structure",
        },
        collector = {
            type = "structure",
        },
        inlineCode = {
            type = "structure",
        },
        loop = {
            type = "structure",
        },
        loopInput = {
            type = "structure",
        },
        loopController = {
            type = "structure",
        },
    },
}

M.LoopFlowNodeConfiguration = {
    type = "structure",
    members = {
        definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFlowInput = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
        definition = {
            type = "structure",
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

M.CreateFlowOutput = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "structure",
        },
    },
}

M.CreateFlowVersionOutput = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "structure",
        },
    },
}

M.GetFlowOutput = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "structure",
        },
        validations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetFlowVersionOutput = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "structure",
        },
    },
}

M.UpdateFlowInput = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
        definition = {
            type = "structure",
        },
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateFlowOutput = {
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
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "structure",
        },
    },
}

M.ValidateFlowDefinitionInput = {
    type = "structure",
    members = {
        definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
