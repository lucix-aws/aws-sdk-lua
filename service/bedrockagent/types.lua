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

M.CustomControlMethod = {
    RETURN_CONTROL = "RETURN_CONTROL",
}

M.ActionGroupExecutor = {
    type = "union",
    id = "ActionGroupExecutor",
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
    id = "ConflictException",
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
    id = "S3Identifier",
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
    id = "APISchema",
    members = {
        s3 = M.S3Identifier,
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
    id = "ParameterDetail",
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
    id = "Function",
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
            key = { type = "string" },
            value = M.ParameterDetail,
        },
        requireConfirmation = {
            type = "string",
        },
    },
}

M.FunctionSchema = {
    type = "union",
    id = "FunctionSchema",
    members = {
        functions = {
            type = "list",
            member = M.Function,
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
    id = "CreateAgentActionGroupInput",
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
            traits = {
                idempotency_token = true,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        actionGroupExecutor = M.ActionGroupExecutor,
        apiSchema = M.APISchema,
        actionGroupState = {
            type = "string",
        },
        functionSchema = M.FunctionSchema,
    },
}

M.AgentActionGroup = {
    type = "structure",
    id = "AgentActionGroup",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        parentActionSignature = {
            type = "string",
        },
        parentActionGroupSignatureParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        actionGroupExecutor = M.ActionGroupExecutor,
        apiSchema = M.APISchema,
        functionSchema = M.FunctionSchema,
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
    id = "CreateAgentActionGroupOutput",
    members = {
        agentActionGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentActionGroup }),
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteAgentActionGroupInput = {
    type = "structure",
    id = "DeleteAgentActionGroupInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteAgentActionGroupOutput = {
    type = "structure",
    id = "DeleteAgentActionGroupOutput",
}

M.GetAgentActionGroupInput = {
    type = "structure",
    id = "GetAgentActionGroupInput",
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
    id = "GetAgentActionGroupOutput",
    members = {
        agentActionGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentActionGroup }),
    },
}

M.ListAgentActionGroupsInput = {
    type = "structure",
    id = "ListAgentActionGroupsInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ActionGroupSummary = {
    type = "structure",
    id = "ActionGroupSummary",
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
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAgentActionGroupsOutput = {
    type = "structure",
    id = "ListAgentActionGroupsOutput",
    members = {
        actionGroupSummaries = {
            type = "list",
            member = M.ActionGroupSummary,
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
    id = "UpdateAgentActionGroupInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        actionGroupExecutor = M.ActionGroupExecutor,
        actionGroupState = {
            type = "string",
        },
        apiSchema = M.APISchema,
        functionSchema = M.FunctionSchema,
    },
}

M.UpdateAgentActionGroupOutput = {
    type = "structure",
    id = "UpdateAgentActionGroupOutput",
    members = {
        agentActionGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentActionGroup }),
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
    id = "OrchestrationExecutor",
    members = {
        lambda = {
            type = "string",
        },
    },
}

M.CustomOrchestration = {
    type = "structure",
    id = "CustomOrchestration",
    members = {
        executor = M.OrchestrationExecutor,
    },
}

M.GuardrailConfiguration = {
    type = "structure",
    id = "GuardrailConfiguration",
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
    id = "SessionSummaryConfiguration",
    members = {
        maxRecentSessions = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.MemoryConfiguration = {
    type = "structure",
    id = "MemoryConfiguration",
    members = {
        enabledMemoryTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        storageDays = {
            type = "integer",
            traits = {
                default = 30,
            },
        },
        sessionSummaryConfiguration = M.SessionSummaryConfiguration,
    },
}

M.OrchestrationType = {
    DEFAULT = "DEFAULT",
    CUSTOM_ORCHESTRATION = "CUSTOM_ORCHESTRATION",
}

M.InferenceConfiguration = {
    type = "structure",
    id = "InferenceConfiguration",
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
        maximumLength = {
            type = "integer",
        },
        stopSequences = {
            type = "list",
            member = { type = "string" },
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
    id = "PromptConfiguration",
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
        inferenceConfiguration = M.InferenceConfiguration,
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
    id = "PromptOverrideConfiguration",
    members = {
        promptConfigurations = {
            type = "list",
            member = M.PromptConfiguration,
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
    id = "Agent",
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
        customOrchestration = M.CustomOrchestration,
        idleSessionTTLInSeconds = {
            type = "integer",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        preparedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
        recommendedActions = {
            type = "list",
            member = { type = "string" },
        },
        promptOverrideConfiguration = M.PromptOverrideConfiguration,
        guardrailConfiguration = M.GuardrailConfiguration,
        memoryConfiguration = M.MemoryConfiguration,
        agentCollaboration = {
            type = "string",
        },
    },
}

M.AgentAliasRoutingConfigurationListItem = {
    type = "structure",
    id = "AgentAliasRoutingConfigurationListItem",
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
    id = "AgentAliasHistoryEvent",
    members = {
        routingConfiguration = {
            type = "list",
            member = M.AgentAliasRoutingConfigurationListItem,
        },
        endDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "AgentAlias",
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
            member = M.AgentAliasRoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        agentAliasHistoryEvents = {
            type = "list",
            member = M.AgentAliasHistoryEvent,
        },
        agentAliasStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
        aliasInvocationState = {
            type = "string",
        },
    },
}

M.AgentAliasSummary = {
    type = "structure",
    id = "AgentAliasSummary",
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
            member = M.AgentAliasRoutingConfigurationListItem,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        aliasInvocationState = {
            type = "string",
        },
    },
}

M.AgentDescriptor = {
    type = "structure",
    id = "AgentDescriptor",
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
    id = "AgentCollaborator",
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
        agentDescriptor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentDescriptor }),
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "AssociateAgentCollaboratorInput",
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
        agentDescriptor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentDescriptor }),
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateAgentCollaboratorOutput = {
    type = "structure",
    id = "AssociateAgentCollaboratorOutput",
    members = {
        agentCollaborator = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentCollaborator }),
    },
}

M.DisassociateAgentCollaboratorInput = {
    type = "structure",
    id = "DisassociateAgentCollaboratorInput",
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
    id = "DisassociateAgentCollaboratorOutput",
}

M.GetAgentCollaboratorInput = {
    type = "structure",
    id = "GetAgentCollaboratorInput",
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
    id = "GetAgentCollaboratorOutput",
    members = {
        agentCollaborator = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentCollaborator }),
    },
}

M.ListAgentCollaboratorsInput = {
    type = "structure",
    id = "ListAgentCollaboratorsInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AgentCollaboratorSummary = {
    type = "structure",
    id = "AgentCollaboratorSummary",
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
        agentDescriptor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentDescriptor }),
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAgentCollaboratorsOutput = {
    type = "structure",
    id = "ListAgentCollaboratorsOutput",
    members = {
        agentCollaboratorSummaries = {
            type = "list",
            member = M.AgentCollaboratorSummary,
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
    id = "UpdateAgentCollaboratorInput",
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
        agentDescriptor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentDescriptor }),
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
    id = "UpdateAgentCollaboratorOutput",
    members = {
        agentCollaborator = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentCollaborator }),
    },
}

M.AgentFlowNodeConfiguration = {
    type = "structure",
    id = "AgentFlowNodeConfiguration",
    members = {
        agentAliasArn = {
            type = "string",
            traits = {
                default = "",
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
    id = "AgentKnowledgeBase",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "AgentKnowledgeBaseSummary",
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
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateAgentInput = {
    type = "structure",
    id = "CreateAgentInput",
    members = {
        agentName = {
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
        customOrchestration = M.CustomOrchestration,
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        agentResourceRoleArn = {
            type = "string",
        },
        customerEncryptionKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        promptOverrideConfiguration = M.PromptOverrideConfiguration,
        guardrailConfiguration = M.GuardrailConfiguration,
        memoryConfiguration = M.MemoryConfiguration,
        agentCollaboration = {
            type = "string",
        },
    },
}

M.CreateAgentOutput = {
    type = "structure",
    id = "CreateAgentOutput",
    members = {
        agent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Agent }),
    },
}

M.DeleteAgentInput = {
    type = "structure",
    id = "DeleteAgentInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteAgentOutput = {
    type = "structure",
    id = "DeleteAgentOutput",
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
    id = "GetAgentInput",
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
    id = "GetAgentOutput",
    members = {
        agent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Agent }),
    },
}

M.ListAgentsInput = {
    type = "structure",
    id = "ListAgentsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AgentSummary = {
    type = "structure",
    id = "AgentSummary",
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
                timestamp_format = "date-time",
            },
        },
        latestAgentVersion = {
            type = "string",
        },
        guardrailConfiguration = M.GuardrailConfiguration,
    },
}

M.ListAgentsOutput = {
    type = "structure",
    id = "ListAgentsOutput",
    members = {
        agentSummaries = {
            type = "list",
            member = M.AgentSummary,
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
    id = "PrepareAgentInput",
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
    id = "PrepareAgentOutput",
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
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateAgentInput = {
    type = "structure",
    id = "UpdateAgentInput",
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
        customOrchestration = M.CustomOrchestration,
        idleSessionTTLInSeconds = {
            type = "integer",
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
        promptOverrideConfiguration = M.PromptOverrideConfiguration,
        guardrailConfiguration = M.GuardrailConfiguration,
        memoryConfiguration = M.MemoryConfiguration,
        agentCollaboration = {
            type = "string",
        },
    },
}

M.UpdateAgentOutput = {
    type = "structure",
    id = "UpdateAgentOutput",
    members = {
        agent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Agent }),
    },
}

M.AgentVersion = {
    type = "structure",
    id = "AgentVersion",
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
            type = "integer",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
        recommendedActions = {
            type = "list",
            member = { type = "string" },
        },
        promptOverrideConfiguration = M.PromptOverrideConfiguration,
        guardrailConfiguration = M.GuardrailConfiguration,
        memoryConfiguration = M.MemoryConfiguration,
        agentCollaboration = {
            type = "string",
        },
    },
}

M.AgentVersionSummary = {
    type = "structure",
    id = "AgentVersionSummary",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        guardrailConfiguration = M.GuardrailConfiguration,
    },
}

M.CreateAgentAliasInput = {
    type = "structure",
    id = "CreateAgentAliasInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        description = {
            type = "string",
        },
        routingConfiguration = {
            type = "list",
            member = M.AgentAliasRoutingConfigurationListItem,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAgentAliasOutput = {
    type = "structure",
    id = "CreateAgentAliasOutput",
    members = {
        agentAlias = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentAlias }),
    },
}

M.DeleteAgentAliasInput = {
    type = "structure",
    id = "DeleteAgentAliasInput",
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
    id = "DeleteAgentAliasOutput",
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
    id = "GetAgentAliasInput",
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
    id = "GetAgentAliasOutput",
    members = {
        agentAlias = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentAlias }),
    },
}

M.ListAgentAliasesInput = {
    type = "structure",
    id = "ListAgentAliasesInput",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgentAliasesOutput = {
    type = "structure",
    id = "ListAgentAliasesOutput",
    members = {
        agentAliasSummaries = {
            type = "list",
            member = M.AgentAliasSummary,
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
    id = "UpdateAgentAliasInput",
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
            member = M.AgentAliasRoutingConfigurationListItem,
        },
        aliasInvocationState = {
            type = "string",
        },
    },
}

M.UpdateAgentAliasOutput = {
    type = "structure",
    id = "UpdateAgentAliasOutput",
    members = {
        agentAlias = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentAlias }),
    },
}

M.DataDeletionPolicy = {
    RETAIN = "RETAIN",
    DELETE = "DELETE",
}

M.PatternObjectFilter = {
    type = "structure",
    id = "PatternObjectFilter",
    members = {
        objectType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
        exclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PatternObjectFilterConfiguration = {
    type = "structure",
    id = "PatternObjectFilterConfiguration",
    members = {
        filters = {
            type = "list",
            member = M.PatternObjectFilter,
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
    id = "CrawlFilterConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        patternObjectFilter = M.PatternObjectFilterConfiguration,
    },
}

M.ConfluenceCrawlerConfiguration = {
    type = "structure",
    id = "ConfluenceCrawlerConfiguration",
    members = {
        filterConfiguration = M.CrawlFilterConfiguration,
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
    id = "ConfluenceSourceConfiguration",
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
    id = "ConfluenceDataSourceConfiguration",
    members = {
        sourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfluenceSourceConfiguration }),
        crawlerConfiguration = M.ConfluenceCrawlerConfiguration,
    },
}

M.S3DataSourceConfiguration = {
    type = "structure",
    id = "S3DataSourceConfiguration",
    members = {
        bucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inclusionPrefixes = {
            type = "list",
            member = { type = "string" },
        },
        bucketOwnerAccountId = {
            type = "string",
        },
    },
}

M.SalesforceCrawlerConfiguration = {
    type = "structure",
    id = "SalesforceCrawlerConfiguration",
    members = {
        filterConfiguration = M.CrawlFilterConfiguration,
    },
}

M.SalesforceAuthType = {
    OAUTH2_CLIENT_CREDENTIALS = "OAUTH2_CLIENT_CREDENTIALS",
}

M.SalesforceSourceConfiguration = {
    type = "structure",
    id = "SalesforceSourceConfiguration",
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
    id = "SalesforceDataSourceConfiguration",
    members = {
        sourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SalesforceSourceConfiguration }),
        crawlerConfiguration = M.SalesforceCrawlerConfiguration,
    },
}

M.SharePointCrawlerConfiguration = {
    type = "structure",
    id = "SharePointCrawlerConfiguration",
    members = {
        filterConfiguration = M.CrawlFilterConfiguration,
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
    id = "SharePointSourceConfiguration",
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
            member = { type = "string" },
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
    id = "SharePointDataSourceConfiguration",
    members = {
        sourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SharePointSourceConfiguration }),
        crawlerConfiguration = M.SharePointCrawlerConfiguration,
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
    id = "WebCrawlerLimits",
    members = {
        rateLimit = {
            type = "integer",
        },
        maxPages = {
            type = "integer",
        },
    },
}

M.WebScopeType = {
    HOST_ONLY = "HOST_ONLY",
    SUBDOMAINS = "SUBDOMAINS",
}

M.WebCrawlerConfiguration = {
    type = "structure",
    id = "WebCrawlerConfiguration",
    members = {
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
    id = "SeedUrl",
    members = {
        url = {
            type = "string",
        },
    },
}

M.UrlConfiguration = {
    type = "structure",
    id = "UrlConfiguration",
    members = {
        seedUrls = {
            type = "list",
            member = M.SeedUrl,
        },
    },
}

M.WebSourceConfiguration = {
    type = "structure",
    id = "WebSourceConfiguration",
    members = {
        urlConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UrlConfiguration }),
    },
}

M.WebDataSourceConfiguration = {
    type = "structure",
    id = "WebDataSourceConfiguration",
    members = {
        sourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WebSourceConfiguration }),
        crawlerConfiguration = M.WebCrawlerConfiguration,
    },
}

M.DataSourceConfiguration = {
    type = "structure",
    id = "DataSourceConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Configuration = M.S3DataSourceConfiguration,
        webConfiguration = M.WebDataSourceConfiguration,
        confluenceConfiguration = M.ConfluenceDataSourceConfiguration,
        salesforceConfiguration = M.SalesforceDataSourceConfiguration,
        sharePointConfiguration = M.SharePointDataSourceConfiguration,
    },
}

M.ServerSideEncryptionConfiguration = {
    type = "structure",
    id = "ServerSideEncryptionConfiguration",
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
    id = "FixedSizeChunkingConfiguration",
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
    id = "HierarchicalChunkingLevelConfiguration",
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
    id = "HierarchicalChunkingConfiguration",
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
    id = "SemanticChunkingConfiguration",
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
    id = "ChunkingConfiguration",
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

M.EnrichmentStrategyMethod = {
    CHUNK_ENTITY_EXTRACTION = "CHUNK_ENTITY_EXTRACTION",
}

M.EnrichmentStrategyConfiguration = {
    type = "structure",
    id = "EnrichmentStrategyConfiguration",
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
    id = "BedrockFoundationModelContextEnrichmentConfiguration",
    members = {
        enrichmentStrategyConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnrichmentStrategyConfiguration }),
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
    id = "ContextEnrichmentConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bedrockFoundationModelConfiguration = M.BedrockFoundationModelContextEnrichmentConfiguration,
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
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
    id = "IntermediateStorage",
    members = {
        s3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.StepType = {
    POST_CHUNKING = "POST_CHUNKING",
}

M.TransformationLambdaConfiguration = {
    type = "structure",
    id = "TransformationLambdaConfiguration",
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
    id = "TransformationFunction",
    members = {
        transformationLambdaConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformationLambdaConfiguration }),
    },
}

M.Transformation = {
    type = "structure",
    id = "Transformation",
    members = {
        transformationFunction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformationFunction }),
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
    id = "CustomTransformationConfiguration",
    members = {
        intermediateStorage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntermediateStorage }),
        transformations = {
            type = "list",
            member = M.Transformation,
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
    id = "BedrockDataAutomationConfiguration",
    members = {
        parsingModality = {
            type = "string",
        },
    },
}

M.ParsingPrompt = {
    type = "structure",
    id = "ParsingPrompt",
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
    id = "BedrockFoundationModelConfiguration",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parsingPrompt = M.ParsingPrompt,
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
    id = "ParsingConfiguration",
    members = {
        parsingStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bedrockFoundationModelConfiguration = M.BedrockFoundationModelConfiguration,
        bedrockDataAutomationConfiguration = M.BedrockDataAutomationConfiguration,
    },
}

M.VectorIngestionConfiguration = {
    type = "structure",
    id = "VectorIngestionConfiguration",
    members = {
        chunkingConfiguration = M.ChunkingConfiguration,
        customTransformationConfiguration = M.CustomTransformationConfiguration,
        parsingConfiguration = M.ParsingConfiguration,
        contextEnrichmentConfiguration = M.ContextEnrichmentConfiguration,
    },
}

M.CreateDataSourceInput = {
    type = "structure",
    id = "CreateDataSourceInput",
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
        description = {
            type = "string",
        },
        dataSourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfiguration }),
        dataDeletionPolicy = {
            type = "string",
        },
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        vectorIngestionConfiguration = M.VectorIngestionConfiguration,
    },
}

M.DataSourceStatus = {
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    DELETE_UNSUCCESSFUL = "DELETE_UNSUCCESSFUL",
}

M.DataSource = {
    type = "structure",
    id = "DataSource",
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
        dataSourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfiguration }),
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        vectorIngestionConfiguration = M.VectorIngestionConfiguration,
        dataDeletionPolicy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateDataSourceOutput = {
    type = "structure",
    id = "CreateDataSourceOutput",
    members = {
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
    },
}

M.DeleteDataSourceInput = {
    type = "structure",
    id = "DeleteDataSourceInput",
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
    id = "DeleteDataSourceOutput",
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
    id = "GetDataSourceInput",
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
    id = "GetDataSourceOutput",
    members = {
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    id = "ListDataSourcesInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DataSourceSummary = {
    type = "structure",
    id = "DataSourceSummary",
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
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    id = "ListDataSourcesOutput",
    members = {
        dataSourceSummaries = {
            type = "list",
            member = M.DataSourceSummary,
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
    id = "UpdateDataSourceInput",
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
        dataSourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfiguration }),
        dataDeletionPolicy = {
            type = "string",
        },
        serverSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        vectorIngestionConfiguration = M.VectorIngestionConfiguration,
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    id = "UpdateDataSourceOutput",
    members = {
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
    },
}

M.FlowConditionalConnectionConfiguration = {
    type = "structure",
    id = "FlowConditionalConnectionConfiguration",
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
    id = "FlowDataConnectionConfiguration",
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
    id = "FlowConnectionConfiguration",
    members = {
        data = M.FlowDataConnectionConfiguration,
        conditional = M.FlowConditionalConnectionConfiguration,
    },
}

M.FlowConnectionType = {
    DATA = "Data",
    CONDITIONAL = "Conditional",
}

M.FlowConnection = {
    type = "structure",
    id = "FlowConnection",
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
        configuration = M.FlowConnectionConfiguration,
    },
}

M.CollectorFlowNodeConfiguration = {
    type = "structure",
    id = "CollectorFlowNodeConfiguration",
}

M.FlowCondition = {
    type = "structure",
    id = "FlowCondition",
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
    id = "ConditionFlowNodeConfiguration",
    members = {
        conditions = {
            type = "list",
            member = M.FlowCondition,
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
    id = "InlineCodeFlowNodeConfiguration",
    members = {
        code = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
        language = {
            type = "string",
            traits = {
                default = "Python_3",
                required = true,
            },
        },
    },
}

M.InputFlowNodeConfiguration = {
    type = "structure",
    id = "InputFlowNodeConfiguration",
}

M.IteratorFlowNodeConfiguration = {
    type = "structure",
    id = "IteratorFlowNodeConfiguration",
}

M.PromptModelInferenceConfiguration = {
    type = "structure",
    id = "PromptModelInferenceConfiguration",
    members = {
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
        maxTokens = {
            type = "integer",
        },
        stopSequences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PromptInferenceConfiguration = {
    type = "union",
    id = "PromptInferenceConfiguration",
    members = {
        text = M.PromptModelInferenceConfiguration,
    },
}

M.PerformanceConfigLatency = {
    STANDARD = "standard",
    OPTIMIZED = "optimized",
}

M.PerformanceConfiguration = {
    type = "structure",
    id = "PerformanceConfiguration",
    members = {
        latency = {
            type = "string",
            traits = {
                default = "standard",
            },
        },
    },
}

M.KnowledgeBasePromptTemplate = {
    type = "structure",
    id = "KnowledgeBasePromptTemplate",
    members = {
        textPromptTemplate = {
            type = "string",
        },
    },
}

M.KnowledgeBaseOrchestrationConfiguration = {
    type = "structure",
    id = "KnowledgeBaseOrchestrationConfiguration",
    members = {
        promptTemplate = M.KnowledgeBasePromptTemplate,
        inferenceConfig = M.PromptInferenceConfiguration,
        additionalModelRequestFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.RerankingMetadataSelectionMode = {
    SELECTIVE = "SELECTIVE",
    ALL = "ALL",
}

M.FieldForReranking = {
    type = "structure",
    id = "FieldForReranking",
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
    id = "RerankingMetadataSelectiveModeConfiguration",
    members = {
        fieldsToInclude = {
            type = "list",
            member = M.FieldForReranking,
        },
        fieldsToExclude = {
            type = "list",
            member = M.FieldForReranking,
        },
    },
}

M.MetadataConfigurationForReranking = {
    type = "structure",
    id = "MetadataConfigurationForReranking",
    members = {
        selectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        selectiveModeConfiguration = M.RerankingMetadataSelectiveModeConfiguration,
    },
}

M.VectorSearchBedrockRerankingModelConfiguration = {
    type = "structure",
    id = "VectorSearchBedrockRerankingModelConfiguration",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalModelRequestFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
    },
}

M.VectorSearchBedrockRerankingConfiguration = {
    type = "structure",
    id = "VectorSearchBedrockRerankingConfiguration",
    members = {
        modelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VectorSearchBedrockRerankingModelConfiguration }),
        numberOfRerankedResults = {
            type = "integer",
        },
        metadataConfiguration = M.MetadataConfigurationForReranking,
    },
}

M.VectorSearchRerankingConfigurationType = {
    BEDROCK_RERANKING_MODEL = "BEDROCK_RERANKING_MODEL",
}

M.VectorSearchRerankingConfiguration = {
    type = "structure",
    id = "VectorSearchRerankingConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bedrockRerankingConfiguration = M.VectorSearchBedrockRerankingConfiguration,
    },
}

M.KnowledgeBaseFlowNodeConfiguration = {
    type = "structure",
    id = "KnowledgeBaseFlowNodeConfiguration",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
        modelId = {
            type = "string",
        },
        guardrailConfiguration = M.GuardrailConfiguration,
        numberOfResults = {
            type = "integer",
        },
        promptTemplate = M.KnowledgeBasePromptTemplate,
        inferenceConfiguration = M.PromptInferenceConfiguration,
        rerankingConfiguration = M.VectorSearchRerankingConfiguration,
        orchestrationConfiguration = M.KnowledgeBaseOrchestrationConfiguration,
    },
}

M.LambdaFunctionFlowNodeConfiguration = {
    type = "structure",
    id = "LambdaFunctionFlowNodeConfiguration",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
    },
}

M.LexFlowNodeConfiguration = {
    type = "structure",
    id = "LexFlowNodeConfiguration",
    members = {
        botAliasArn = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
    },
}

M.LoopControllerFlowNodeConfiguration = {
    type = "structure",
    id = "LoopControllerFlowNodeConfiguration",
    members = {
        continueCondition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowCondition }),
        maxIterations = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
    },
}

M.LoopInputFlowNodeConfiguration = {
    type = "structure",
    id = "LoopInputFlowNodeConfiguration",
}

M.OutputFlowNodeConfiguration = {
    type = "structure",
    id = "OutputFlowNodeConfiguration",
}

M.PromptInputVariable = {
    type = "structure",
    id = "PromptInputVariable",
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
    id = "CachePointBlock",
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
    id = "ContentBlock",
    members = {
        text = {
            type = "string",
        },
        cachePoint = M.CachePointBlock,
    },
}

M.ConversationRole = {
    USER = "user",
    ASSISTANT = "assistant",
}

M.Message = {
    type = "structure",
    id = "Message",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "list",
            member = M.ContentBlock,
            traits = {
                required = true,
            },
        },
    },
}

M.SystemContentBlock = {
    type = "union",
    id = "SystemContentBlock",
    members = {
        text = {
            type = "string",
        },
        cachePoint = M.CachePointBlock,
    },
}

M.AnyToolChoice = {
    type = "structure",
    id = "AnyToolChoice",
}

M.AutoToolChoice = {
    type = "structure",
    id = "AutoToolChoice",
}

M.SpecificToolChoice = {
    type = "structure",
    id = "SpecificToolChoice",
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
    id = "ToolChoice",
    members = {
        auto = M.AutoToolChoice,
        any = M.AnyToolChoice,
        tool = M.SpecificToolChoice,
    },
}

M.ToolInputSchema = {
    type = "union",
    id = "ToolInputSchema",
    members = {
        json = {
            type = "document",
        },
    },
}

M.ToolSpecification = {
    type = "structure",
    id = "ToolSpecification",
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
        inputSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolInputSchema }),
        strict = {
            type = "boolean",
        },
    },
}

M.Tool = {
    type = "union",
    id = "Tool",
    members = {
        toolSpec = M.ToolSpecification,
        cachePoint = M.CachePointBlock,
    },
}

M.ToolConfiguration = {
    type = "structure",
    id = "ToolConfiguration",
    members = {
        tools = {
            type = "list",
            member = M.Tool,
            traits = {
                required = true,
            },
        },
        toolChoice = M.ToolChoice,
    },
}

M.ChatPromptTemplateConfiguration = {
    type = "structure",
    id = "ChatPromptTemplateConfiguration",
    members = {
        messages = {
            type = "list",
            member = M.Message,
            traits = {
                required = true,
            },
        },
        system = {
            type = "list",
            member = M.SystemContentBlock,
        },
        inputVariables = {
            type = "list",
            member = M.PromptInputVariable,
        },
        toolConfiguration = M.ToolConfiguration,
    },
}

M.TextPromptTemplateConfiguration = {
    type = "structure",
    id = "TextPromptTemplateConfiguration",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cachePoint = M.CachePointBlock,
        inputVariables = {
            type = "list",
            member = M.PromptInputVariable,
        },
    },
}

M.PromptTemplateConfiguration = {
    type = "union",
    id = "PromptTemplateConfiguration",
    members = {
        text = M.TextPromptTemplateConfiguration,
        chat = M.ChatPromptTemplateConfiguration,
    },
}

M.PromptTemplateType = {
    TEXT = "TEXT",
    CHAT = "CHAT",
}

M.PromptFlowNodeInlineConfiguration = {
    type = "structure",
    id = "PromptFlowNodeInlineConfiguration",
    members = {
        templateType = {
            type = "string",
            traits = {
                default = "TEXT",
                required = true,
            },
        },
        templateConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptTemplateConfiguration }),
        modelId = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
        inferenceConfiguration = M.PromptInferenceConfiguration,
        additionalModelRequestFields = {
            type = "document",
        },
    },
}

M.PromptFlowNodeResourceConfiguration = {
    type = "structure",
    id = "PromptFlowNodeResourceConfiguration",
    members = {
        promptArn = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
    },
}

M.PromptFlowNodeSourceConfiguration = {
    type = "union",
    id = "PromptFlowNodeSourceConfiguration",
    members = {
        resource = M.PromptFlowNodeResourceConfiguration,
        inline = M.PromptFlowNodeInlineConfiguration,
    },
}

M.PromptFlowNodeConfiguration = {
    type = "structure",
    id = "PromptFlowNodeConfiguration",
    members = {
        sourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptFlowNodeSourceConfiguration }),
        guardrailConfiguration = M.GuardrailConfiguration,
    },
}

M.RetrievalFlowNodeS3Configuration = {
    type = "structure",
    id = "RetrievalFlowNodeS3Configuration",
    members = {
        bucketName = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
    },
}

M.RetrievalFlowNodeServiceConfiguration = {
    type = "union",
    id = "RetrievalFlowNodeServiceConfiguration",
    members = {
        s3 = M.RetrievalFlowNodeS3Configuration,
    },
}

M.RetrievalFlowNodeConfiguration = {
    type = "structure",
    id = "RetrievalFlowNodeConfiguration",
    members = {
        serviceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetrievalFlowNodeServiceConfiguration }),
    },
}

M.StorageFlowNodeS3Configuration = {
    type = "structure",
    id = "StorageFlowNodeS3Configuration",
    members = {
        bucketName = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
    },
}

M.StorageFlowNodeServiceConfiguration = {
    type = "union",
    id = "StorageFlowNodeServiceConfiguration",
    members = {
        s3 = M.StorageFlowNodeS3Configuration,
    },
}

M.StorageFlowNodeConfiguration = {
    type = "structure",
    id = "StorageFlowNodeConfiguration",
    members = {
        serviceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageFlowNodeServiceConfiguration }),
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
    id = "FlowNodeInput",
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
    id = "FlowNodeOutput",
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
    id = "DeleteFlowInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteFlowOutput = {
    type = "structure",
    id = "DeleteFlowOutput",
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
    id = "FlowAliasConcurrencyConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxConcurrency = {
            type = "integer",
        },
    },
}

M.FlowAliasRoutingConfigurationListItem = {
    type = "structure",
    id = "FlowAliasRoutingConfigurationListItem",
    members = {
        flowVersion = {
            type = "string",
        },
    },
}

M.CreateFlowAliasInput = {
    type = "structure",
    id = "CreateFlowAliasInput",
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
            member = M.FlowAliasRoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = M.FlowAliasConcurrencyConfiguration,
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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

M.CreateFlowAliasOutput = {
    type = "structure",
    id = "CreateFlowAliasOutput",
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
            member = M.FlowAliasRoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = M.FlowAliasConcurrencyConfiguration,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteFlowAliasInput = {
    type = "structure",
    id = "DeleteFlowAliasInput",
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
    id = "DeleteFlowAliasOutput",
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
    id = "GetFlowAliasInput",
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
    id = "GetFlowAliasOutput",
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
            member = M.FlowAliasRoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = M.FlowAliasConcurrencyConfiguration,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListFlowAliasesInput = {
    type = "structure",
    id = "ListFlowAliasesInput",
    members = {
        flowIdentifier = {
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
    id = "FlowAliasSummary",
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
            member = M.FlowAliasRoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = M.FlowAliasConcurrencyConfiguration,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListFlowAliasesOutput = {
    type = "structure",
    id = "ListFlowAliasesOutput",
    members = {
        flowAliasSummaries = {
            type = "list",
            member = M.FlowAliasSummary,
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
    id = "UpdateFlowAliasInput",
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
            member = M.FlowAliasRoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = M.FlowAliasConcurrencyConfiguration,
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
    id = "UpdateFlowAliasOutput",
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
            member = M.FlowAliasRoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
        concurrencyConfiguration = M.FlowAliasConcurrencyConfiguration,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateFlowVersionInput = {
    type = "structure",
    id = "CreateFlowVersionInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteFlowVersionInput = {
    type = "structure",
    id = "DeleteFlowVersionInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteFlowVersionOutput = {
    type = "structure",
    id = "DeleteFlowVersionOutput",
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
    id = "GetFlowVersionInput",
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
    id = "ListFlowVersionsInput",
    members = {
        flowIdentifier = {
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
    id = "FlowVersionSummary",
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
                timestamp_format = "date-time",
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
    id = "ListFlowVersionsOutput",
    members = {
        flowVersionSummaries = {
            type = "list",
            member = M.FlowVersionSummary,
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
    id = "GetFlowInput",
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
    id = "CyclicConnectionFlowValidationDetails",
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
    id = "DuplicateConditionExpressionFlowValidationDetails",
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
    id = "DuplicateConnectionsFlowValidationDetails",
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
    id = "IncompatibleConnectionDataTypeFlowValidationDetails",
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
    id = "InvalidLoopBoundaryFlowValidationDetails",
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
    id = "LoopIncompatibleNodeTypeFlowValidationDetails",
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
    id = "MalformedConditionExpressionFlowValidationDetails",
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
    id = "MalformedNodeInputExpressionFlowValidationDetails",
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
    id = "MismatchedNodeInputTypeFlowValidationDetails",
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
    id = "MismatchedNodeOutputTypeFlowValidationDetails",
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
    id = "MissingConnectionConfigurationFlowValidationDetails",
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
    id = "MissingDefaultConditionFlowValidationDetails",
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
    id = "MissingEndingNodesFlowValidationDetails",
}

M.MissingLoopControllerNodeFlowValidationDetails = {
    type = "structure",
    id = "MissingLoopControllerNodeFlowValidationDetails",
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
    id = "MissingLoopInputNodeFlowValidationDetails",
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
    id = "MissingNodeConfigurationFlowValidationDetails",
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
    id = "MissingNodeInputFlowValidationDetails",
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
    id = "MissingNodeOutputFlowValidationDetails",
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
    id = "MissingStartingNodesFlowValidationDetails",
}

M.MultipleLoopControllerNodesFlowValidationDetails = {
    type = "structure",
    id = "MultipleLoopControllerNodesFlowValidationDetails",
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
    id = "MultipleLoopInputNodesFlowValidationDetails",
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
    id = "MultipleNodeInputConnectionsFlowValidationDetails",
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
    id = "UnfulfilledNodeInputFlowValidationDetails",
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
    id = "UnknownConnectionConditionFlowValidationDetails",
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
    id = "UnknownConnectionSourceFlowValidationDetails",
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
    id = "UnknownConnectionSourceOutputFlowValidationDetails",
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
    id = "UnknownConnectionTargetFlowValidationDetails",
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
    id = "UnknownConnectionTargetInputFlowValidationDetails",
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
    id = "UnknownNodeInputFlowValidationDetails",
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
    id = "UnknownNodeOutputFlowValidationDetails",
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
    id = "UnreachableNodeFlowValidationDetails",
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
    id = "UnsatisfiedConnectionConditionsFlowValidationDetails",
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
    id = "UnspecifiedFlowValidationDetails",
}

M.FlowValidationDetails = {
    type = "union",
    id = "FlowValidationDetails",
    members = {
        cyclicConnection = M.CyclicConnectionFlowValidationDetails,
        duplicateConnections = M.DuplicateConnectionsFlowValidationDetails,
        duplicateConditionExpression = M.DuplicateConditionExpressionFlowValidationDetails,
        unreachableNode = M.UnreachableNodeFlowValidationDetails,
        unknownConnectionSource = M.UnknownConnectionSourceFlowValidationDetails,
        unknownConnectionSourceOutput = M.UnknownConnectionSourceOutputFlowValidationDetails,
        unknownConnectionTarget = M.UnknownConnectionTargetFlowValidationDetails,
        unknownConnectionTargetInput = M.UnknownConnectionTargetInputFlowValidationDetails,
        unknownConnectionCondition = M.UnknownConnectionConditionFlowValidationDetails,
        malformedConditionExpression = M.MalformedConditionExpressionFlowValidationDetails,
        malformedNodeInputExpression = M.MalformedNodeInputExpressionFlowValidationDetails,
        mismatchedNodeInputType = M.MismatchedNodeInputTypeFlowValidationDetails,
        mismatchedNodeOutputType = M.MismatchedNodeOutputTypeFlowValidationDetails,
        incompatibleConnectionDataType = M.IncompatibleConnectionDataTypeFlowValidationDetails,
        missingConnectionConfiguration = M.MissingConnectionConfigurationFlowValidationDetails,
        missingDefaultCondition = M.MissingDefaultConditionFlowValidationDetails,
        missingEndingNodes = M.MissingEndingNodesFlowValidationDetails,
        missingNodeConfiguration = M.MissingNodeConfigurationFlowValidationDetails,
        missingNodeInput = M.MissingNodeInputFlowValidationDetails,
        missingNodeOutput = M.MissingNodeOutputFlowValidationDetails,
        missingStartingNodes = M.MissingStartingNodesFlowValidationDetails,
        multipleNodeInputConnections = M.MultipleNodeInputConnectionsFlowValidationDetails,
        unfulfilledNodeInput = M.UnfulfilledNodeInputFlowValidationDetails,
        unsatisfiedConnectionConditions = M.UnsatisfiedConnectionConditionsFlowValidationDetails,
        unspecified = M.UnspecifiedFlowValidationDetails,
        unknownNodeInput = M.UnknownNodeInputFlowValidationDetails,
        unknownNodeOutput = M.UnknownNodeOutputFlowValidationDetails,
        missingLoopInputNode = M.MissingLoopInputNodeFlowValidationDetails,
        missingLoopControllerNode = M.MissingLoopControllerNodeFlowValidationDetails,
        multipleLoopInputNodes = M.MultipleLoopInputNodesFlowValidationDetails,
        multipleLoopControllerNodes = M.MultipleLoopControllerNodesFlowValidationDetails,
        loopIncompatibleNodeType = M.LoopIncompatibleNodeTypeFlowValidationDetails,
        invalidLoopBoundary = M.InvalidLoopBoundaryFlowValidationDetails,
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
    id = "FlowValidation",
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
        details = M.FlowValidationDetails,
        type = {
            type = "string",
        },
    },
}

M.ListFlowsInput = {
    type = "structure",
    id = "ListFlowsInput",
    members = {
        maxResults = {
            type = "integer",
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
    id = "FlowSummary",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "ListFlowsOutput",
    members = {
        flowSummaries = {
            type = "list",
            member = M.FlowSummary,
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
    id = "PrepareFlowInput",
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
    id = "PrepareFlowOutput",
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
    id = "GetIngestionJobInput",
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
    id = "IngestionJobStatistics",
    members = {
        numberOfDocumentsScanned = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        numberOfMetadataDocumentsScanned = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        numberOfNewDocumentsIndexed = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        numberOfModifiedDocumentsIndexed = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        numberOfMetadataDocumentsModified = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        numberOfDocumentsDeleted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        numberOfDocumentsFailed = {
            type = "long",
            traits = {
                default = 0,
            },
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
    id = "IngestionJob",
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
        statistics = M.IngestionJobStatistics,
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetIngestionJobOutput = {
    type = "structure",
    id = "GetIngestionJobOutput",
    members = {
        ingestionJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionJob }),
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
    id = "IngestionJobFilter",
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
            member = { type = "string" },
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
    id = "IngestionJobSortBy",
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
    id = "ListIngestionJobsInput",
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
            member = M.IngestionJobFilter,
        },
        sortBy = M.IngestionJobSortBy,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IngestionJobSummary = {
    type = "structure",
    id = "IngestionJobSummary",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        statistics = M.IngestionJobStatistics,
    },
}

M.ListIngestionJobsOutput = {
    type = "structure",
    id = "ListIngestionJobsOutput",
    members = {
        ingestionJobSummaries = {
            type = "list",
            member = M.IngestionJobSummary,
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
    id = "StartIngestionJobInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.StartIngestionJobOutput = {
    type = "structure",
    id = "StartIngestionJobOutput",
    members = {
        ingestionJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionJob }),
    },
}

M.StopIngestionJobInput = {
    type = "structure",
    id = "StopIngestionJobInput",
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
    id = "StopIngestionJobOutput",
    members = {
        ingestionJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionJob }),
    },
}

M.CustomDocumentIdentifier = {
    type = "structure",
    id = "CustomDocumentIdentifier",
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
    id = "DocumentIdentifier",
    members = {
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3 = M.S3Location,
        custom = M.CustomDocumentIdentifier,
    },
}

M.DeleteKnowledgeBaseDocumentsInput = {
    type = "structure",
    id = "DeleteKnowledgeBaseDocumentsInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        documentIdentifiers = {
            type = "list",
            member = M.DocumentIdentifier,
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
    id = "KnowledgeBaseDocumentDetail",
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
        identifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentIdentifier }),
        statusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteKnowledgeBaseDocumentsOutput = {
    type = "structure",
    id = "DeleteKnowledgeBaseDocumentsOutput",
    members = {
        documentDetails = {
            type = "list",
            member = M.KnowledgeBaseDocumentDetail,
        },
    },
}

M.GetKnowledgeBaseDocumentsInput = {
    type = "structure",
    id = "GetKnowledgeBaseDocumentsInput",
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
            member = M.DocumentIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.GetKnowledgeBaseDocumentsOutput = {
    type = "structure",
    id = "GetKnowledgeBaseDocumentsOutput",
    members = {
        documentDetails = {
            type = "list",
            member = M.KnowledgeBaseDocumentDetail,
        },
    },
}

M.ByteContentDoc = {
    type = "structure",
    id = "ByteContentDoc",
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
    id = "TextContentDoc",
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
    id = "InlineContent",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        byteContent = M.ByteContentDoc,
        textContent = M.TextContentDoc,
    },
}

M.CustomS3Location = {
    type = "structure",
    id = "CustomS3Location",
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
    id = "CustomContent",
    members = {
        customDocumentIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomDocumentIdentifier }),
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = M.CustomS3Location,
        inlineContent = M.InlineContent,
    },
}

M.S3Content = {
    type = "structure",
    id = "S3Content",
    members = {
        s3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.DocumentContent = {
    type = "structure",
    id = "DocumentContent",
    members = {
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        custom = M.CustomContent,
        s3 = M.S3Content,
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
    id = "MetadataAttributeValue",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        numberValue = {
            type = "double",
        },
        booleanValue = {
            type = "boolean",
        },
        stringValue = {
            type = "string",
        },
        stringListValue = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MetadataAttribute = {
    type = "structure",
    id = "MetadataAttribute",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataAttributeValue }),
    },
}

M.MetadataSourceType = {
    IN_LINE_ATTRIBUTE = "IN_LINE_ATTRIBUTE",
    S3_LOCATION = "S3_LOCATION",
}

M.DocumentMetadata = {
    type = "structure",
    id = "DocumentMetadata",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inlineAttributes = {
            type = "list",
            member = M.MetadataAttribute,
        },
        s3Location = M.CustomS3Location,
    },
}

M.KnowledgeBaseDocument = {
    type = "structure",
    id = "KnowledgeBaseDocument",
    members = {
        metadata = M.DocumentMetadata,
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentContent }),
    },
}

M.IngestKnowledgeBaseDocumentsInput = {
    type = "structure",
    id = "IngestKnowledgeBaseDocumentsInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        documents = {
            type = "list",
            member = M.KnowledgeBaseDocument,
            traits = {
                required = true,
            },
        },
    },
}

M.IngestKnowledgeBaseDocumentsOutput = {
    type = "structure",
    id = "IngestKnowledgeBaseDocumentsOutput",
    members = {
        documentDetails = {
            type = "list",
            member = M.KnowledgeBaseDocumentDetail,
        },
    },
}

M.ListKnowledgeBaseDocumentsInput = {
    type = "structure",
    id = "ListKnowledgeBaseDocumentsInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListKnowledgeBaseDocumentsOutput = {
    type = "structure",
    id = "ListKnowledgeBaseDocumentsOutput",
    members = {
        documentDetails = {
            type = "list",
            member = M.KnowledgeBaseDocumentDetail,
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
    id = "AssociateAgentKnowledgeBaseInput",
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
    id = "AssociateAgentKnowledgeBaseOutput",
    members = {
        agentKnowledgeBase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentKnowledgeBase }),
    },
}

M.KendraKnowledgeBaseConfiguration = {
    type = "structure",
    id = "KendraKnowledgeBaseConfiguration",
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
    id = "RedshiftProvisionedAuthConfiguration",
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
    id = "RedshiftProvisionedConfiguration",
    members = {
        clusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedshiftProvisionedAuthConfiguration }),
    },
}

M.RedshiftServerlessAuthType = {
    IAM = "IAM",
    USERNAME_PASSWORD = "USERNAME_PASSWORD",
}

M.RedshiftServerlessAuthConfiguration = {
    type = "structure",
    id = "RedshiftServerlessAuthConfiguration",
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
    id = "RedshiftServerlessConfiguration",
    members = {
        workgroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedshiftServerlessAuthConfiguration }),
    },
}

M.RedshiftQueryEngineType = {
    SERVERLESS = "SERVERLESS",
    PROVISIONED = "PROVISIONED",
}

M.RedshiftQueryEngineConfiguration = {
    type = "structure",
    id = "RedshiftQueryEngineConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serverlessConfiguration = M.RedshiftServerlessConfiguration,
        provisionedConfiguration = M.RedshiftProvisionedConfiguration,
    },
}

M.CuratedQuery = {
    type = "structure",
    id = "CuratedQuery",
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
    id = "QueryGenerationColumn",
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
    id = "QueryGenerationTable",
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
            member = M.QueryGenerationColumn,
        },
    },
}

M.QueryGenerationContext = {
    type = "structure",
    id = "QueryGenerationContext",
    members = {
        tables = {
            type = "list",
            member = M.QueryGenerationTable,
        },
        curatedQueries = {
            type = "list",
            member = M.CuratedQuery,
        },
    },
}

M.QueryGenerationConfiguration = {
    type = "structure",
    id = "QueryGenerationConfiguration",
    members = {
        executionTimeoutSeconds = {
            type = "integer",
        },
        generationContext = M.QueryGenerationContext,
    },
}

M.RedshiftQueryEngineAwsDataCatalogStorageConfiguration = {
    type = "structure",
    id = "RedshiftQueryEngineAwsDataCatalogStorageConfiguration",
    members = {
        tableNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftQueryEngineRedshiftStorageConfiguration = {
    type = "structure",
    id = "RedshiftQueryEngineRedshiftStorageConfiguration",
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
    id = "RedshiftQueryEngineStorageConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsDataCatalogConfiguration = M.RedshiftQueryEngineAwsDataCatalogStorageConfiguration,
        redshiftConfiguration = M.RedshiftQueryEngineRedshiftStorageConfiguration,
    },
}

M.RedshiftConfiguration = {
    type = "structure",
    id = "RedshiftConfiguration",
    members = {
        storageConfigurations = {
            type = "list",
            member = M.RedshiftQueryEngineStorageConfiguration,
            traits = {
                required = true,
            },
        },
        queryEngineConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedshiftQueryEngineConfiguration }),
        queryGenerationConfiguration = M.QueryGenerationConfiguration,
    },
}

M.QueryEngineType = {
    REDSHIFT = "REDSHIFT",
}

M.SqlKnowledgeBaseConfiguration = {
    type = "structure",
    id = "SqlKnowledgeBaseConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        redshiftConfiguration = M.RedshiftConfiguration,
    },
}

M.KnowledgeBaseType = {
    VECTOR = "VECTOR",
    KENDRA = "KENDRA",
    SQL = "SQL",
}

M.AudioSegmentationConfiguration = {
    type = "structure",
    id = "AudioSegmentationConfiguration",
    members = {
        fixedLengthDuration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioConfiguration = {
    type = "structure",
    id = "AudioConfiguration",
    members = {
        segmentationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudioSegmentationConfiguration }),
    },
}

M.EmbeddingDataType = {
    FLOAT32 = "FLOAT32",
    BINARY = "BINARY",
}

M.VideoSegmentationConfiguration = {
    type = "structure",
    id = "VideoSegmentationConfiguration",
    members = {
        fixedLengthDuration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.VideoConfiguration = {
    type = "structure",
    id = "VideoConfiguration",
    members = {
        segmentationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VideoSegmentationConfiguration }),
    },
}

M.BedrockEmbeddingModelConfiguration = {
    type = "structure",
    id = "BedrockEmbeddingModelConfiguration",
    members = {
        dimensions = {
            type = "integer",
        },
        embeddingDataType = {
            type = "string",
        },
        audio = {
            type = "list",
            member = M.AudioConfiguration,
        },
        video = {
            type = "list",
            member = M.VideoConfiguration,
        },
    },
}

M.EmbeddingModelConfiguration = {
    type = "structure",
    id = "EmbeddingModelConfiguration",
    members = {
        bedrockEmbeddingModelConfiguration = M.BedrockEmbeddingModelConfiguration,
    },
}

M.SupplementalDataStorageLocationType = {
    S3 = "S3",
}

M.SupplementalDataStorageLocation = {
    type = "structure",
    id = "SupplementalDataStorageLocation",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = M.S3Location,
    },
}

M.SupplementalDataStorageConfiguration = {
    type = "structure",
    id = "SupplementalDataStorageConfiguration",
    members = {
        storageLocations = {
            type = "list",
            member = M.SupplementalDataStorageLocation,
            traits = {
                required = true,
            },
        },
    },
}

M.VectorKnowledgeBaseConfiguration = {
    type = "structure",
    id = "VectorKnowledgeBaseConfiguration",
    members = {
        embeddingModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        embeddingModelConfiguration = M.EmbeddingModelConfiguration,
        supplementalDataStorageConfiguration = M.SupplementalDataStorageConfiguration,
    },
}

M.KnowledgeBaseConfiguration = {
    type = "structure",
    id = "KnowledgeBaseConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vectorKnowledgeBaseConfiguration = M.VectorKnowledgeBaseConfiguration,
        kendraKnowledgeBaseConfiguration = M.KendraKnowledgeBaseConfiguration,
        sqlKnowledgeBaseConfiguration = M.SqlKnowledgeBaseConfiguration,
    },
}

M.MongoDbAtlasFieldMapping = {
    type = "structure",
    id = "MongoDbAtlasFieldMapping",
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
    id = "MongoDbAtlasConfiguration",
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
        fieldMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MongoDbAtlasFieldMapping }),
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
    id = "NeptuneAnalyticsFieldMapping",
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
    id = "NeptuneAnalyticsConfiguration",
    members = {
        graphArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NeptuneAnalyticsFieldMapping }),
    },
}

M.OpenSearchManagedClusterFieldMapping = {
    type = "structure",
    id = "OpenSearchManagedClusterFieldMapping",
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
    id = "OpenSearchManagedClusterConfiguration",
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
        fieldMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OpenSearchManagedClusterFieldMapping }),
    },
}

M.OpenSearchServerlessFieldMapping = {
    type = "structure",
    id = "OpenSearchServerlessFieldMapping",
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
    id = "OpenSearchServerlessConfiguration",
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
        fieldMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OpenSearchServerlessFieldMapping }),
    },
}

M.PineconeFieldMapping = {
    type = "structure",
    id = "PineconeFieldMapping",
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
    id = "PineconeConfiguration",
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
        fieldMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PineconeFieldMapping }),
    },
}

M.RdsFieldMapping = {
    type = "structure",
    id = "RdsFieldMapping",
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
    id = "RdsConfiguration",
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
        fieldMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RdsFieldMapping }),
    },
}

M.RedisEnterpriseCloudFieldMapping = {
    type = "structure",
    id = "RedisEnterpriseCloudFieldMapping",
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
    id = "RedisEnterpriseCloudConfiguration",
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
        fieldMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedisEnterpriseCloudFieldMapping }),
    },
}

M.S3VectorsConfiguration = {
    type = "structure",
    id = "S3VectorsConfiguration",
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
    id = "StorageConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        opensearchServerlessConfiguration = M.OpenSearchServerlessConfiguration,
        opensearchManagedClusterConfiguration = M.OpenSearchManagedClusterConfiguration,
        pineconeConfiguration = M.PineconeConfiguration,
        redisEnterpriseCloudConfiguration = M.RedisEnterpriseCloudConfiguration,
        rdsConfiguration = M.RdsConfiguration,
        mongoDbAtlasConfiguration = M.MongoDbAtlasConfiguration,
        neptuneAnalyticsConfiguration = M.NeptuneAnalyticsConfiguration,
        s3VectorsConfiguration = M.S3VectorsConfiguration,
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
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseConfiguration }),
        storageConfiguration = M.StorageConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "KnowledgeBase",
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
        knowledgeBaseConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseConfiguration }),
        storageConfiguration = M.StorageConfiguration,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateKnowledgeBaseOutput = {
    type = "structure",
    id = "CreateKnowledgeBaseOutput",
    members = {
        knowledgeBase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBase }),
    },
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
    id = "DisassociateAgentKnowledgeBaseInput",
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
    id = "DisassociateAgentKnowledgeBaseOutput",
}

M.GetAgentKnowledgeBaseInput = {
    type = "structure",
    id = "GetAgentKnowledgeBaseInput",
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
    id = "GetAgentKnowledgeBaseOutput",
    members = {
        agentKnowledgeBase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentKnowledgeBase }),
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
        knowledgeBase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBase }),
    },
}

M.ListAgentKnowledgeBasesInput = {
    type = "structure",
    id = "ListAgentKnowledgeBasesInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgentKnowledgeBasesOutput = {
    type = "structure",
    id = "ListAgentKnowledgeBasesOutput",
    members = {
        agentKnowledgeBaseSummaries = {
            type = "list",
            member = M.AgentKnowledgeBaseSummary,
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
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
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
                timestamp_format = "date-time",
            },
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

M.UpdateAgentKnowledgeBaseInput = {
    type = "structure",
    id = "UpdateAgentKnowledgeBaseInput",
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
    id = "UpdateAgentKnowledgeBaseOutput",
    members = {
        agentKnowledgeBase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentKnowledgeBase }),
    },
}

M.UpdateKnowledgeBaseInput = {
    type = "structure",
    id = "UpdateKnowledgeBaseInput",
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
        knowledgeBaseConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseConfiguration }),
        storageConfiguration = M.StorageConfiguration,
    },
}

M.UpdateKnowledgeBaseOutput = {
    type = "structure",
    id = "UpdateKnowledgeBaseOutput",
    members = {
        knowledgeBase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBase }),
    },
}

M.PromptAgentResource = {
    type = "structure",
    id = "PromptAgentResource",
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
    id = "PromptGenAiResource",
    members = {
        agent = M.PromptAgentResource,
    },
}

M.PromptMetadataEntry = {
    type = "structure",
    id = "PromptMetadataEntry",
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
    id = "PromptVariant",
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
        templateConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptTemplateConfiguration }),
        modelId = {
            type = "string",
        },
        inferenceConfiguration = M.PromptInferenceConfiguration,
        metadata = {
            type = "list",
            member = M.PromptMetadataEntry,
        },
        additionalModelRequestFields = {
            type = "document",
        },
        genAiResource = M.PromptGenAiResource,
    },
}

M.CreatePromptInput = {
    type = "structure",
    id = "CreatePromptInput",
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
            member = M.PromptVariant,
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

M.CreatePromptOutput = {
    type = "structure",
    id = "CreatePromptOutput",
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
            member = M.PromptVariant,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreatePromptVersionInput = {
    type = "structure",
    id = "CreatePromptVersionInput",
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

M.CreatePromptVersionOutput = {
    type = "structure",
    id = "CreatePromptVersionOutput",
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
            member = M.PromptVariant,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeletePromptInput = {
    type = "structure",
    id = "DeletePromptInput",
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
    id = "DeletePromptOutput",
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
    id = "GetPromptInput",
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
    id = "GetPromptOutput",
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
            member = M.PromptVariant,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPromptsInput = {
    type = "structure",
    id = "ListPromptsInput",
    members = {
        promptIdentifier = {
            type = "string",
            traits = {
                http_query = "promptIdentifier",
            },
        },
        maxResults = {
            type = "integer",
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
    id = "PromptSummary",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPromptsOutput = {
    type = "structure",
    id = "ListPromptsOutput",
    members = {
        promptSummaries = {
            type = "list",
            member = M.PromptSummary,
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
    id = "UpdatePromptInput",
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
            member = M.PromptVariant,
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
    id = "UpdatePromptOutput",
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
            member = M.PromptVariant,
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
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

M.ValidateFlowDefinitionOutput = {
    type = "structure",
    id = "ValidateFlowDefinitionOutput",
    members = {
        validations = {
            type = "list",
            member = M.FlowValidation,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentVersionInput = {
    type = "structure",
    id = "DeleteAgentVersionInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteAgentVersionOutput = {
    type = "structure",
    id = "DeleteAgentVersionOutput",
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
    id = "GetAgentVersionInput",
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
    id = "GetAgentVersionOutput",
    members = {
        agentVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentVersion }),
    },
}

M.ListAgentVersionsInput = {
    type = "structure",
    id = "ListAgentVersionsInput",
    members = {
        agentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgentVersionsOutput = {
    type = "structure",
    id = "ListAgentVersionsOutput",
    members = {
        agentVersionSummaries = {
            type = "list",
            member = M.AgentVersionSummary,
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
    id = "FlowDefinition",
    members = {
        nodes = {
            type = "list",
            member = M.FlowNode,
        },
        connections = {
            type = "list",
            member = M.FlowConnection,
        },
    },
}

M.FlowNode = {
    type = "structure",
    id = "FlowNode",
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
        configuration = M.FlowNodeConfiguration,
        inputs = {
            type = "list",
            member = M.FlowNodeInput,
        },
        outputs = {
            type = "list",
            member = M.FlowNodeOutput,
        },
    },
}

M.FlowNodeConfiguration = {
    type = "union",
    id = "FlowNodeConfiguration",
    members = {
        input = M.InputFlowNodeConfiguration,
        output = M.OutputFlowNodeConfiguration,
        knowledgeBase = M.KnowledgeBaseFlowNodeConfiguration,
        condition = M.ConditionFlowNodeConfiguration,
        lex = M.LexFlowNodeConfiguration,
        prompt = M.PromptFlowNodeConfiguration,
        lambdaFunction = M.LambdaFunctionFlowNodeConfiguration,
        storage = M.StorageFlowNodeConfiguration,
        agent = M.AgentFlowNodeConfiguration,
        retrieval = M.RetrievalFlowNodeConfiguration,
        iterator = M.IteratorFlowNodeConfiguration,
        collector = M.CollectorFlowNodeConfiguration,
        inlineCode = M.InlineCodeFlowNodeConfiguration,
        loop = M.LoopFlowNodeConfiguration,
        loopInput = M.LoopInputFlowNodeConfiguration,
        loopController = M.LoopControllerFlowNodeConfiguration,
    },
}

M.LoopFlowNodeConfiguration = {
    type = "structure",
    id = "LoopFlowNodeConfiguration",
    members = {
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowDefinition }),
    },
}

M.CreateFlowInput = {
    type = "structure",
    id = "CreateFlowInput",
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
        definition = M.FlowDefinition,
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

M.CreateFlowOutput = {
    type = "structure",
    id = "CreateFlowOutput",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = M.FlowDefinition,
    },
}

M.CreateFlowVersionOutput = {
    type = "structure",
    id = "CreateFlowVersionOutput",
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
                timestamp_format = "date-time",
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = M.FlowDefinition,
    },
}

M.GetFlowOutput = {
    type = "structure",
    id = "GetFlowOutput",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = M.FlowDefinition,
        validations = {
            type = "list",
            member = M.FlowValidation,
        },
    },
}

M.GetFlowVersionOutput = {
    type = "structure",
    id = "GetFlowVersionOutput",
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
                timestamp_format = "date-time",
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = M.FlowDefinition,
    },
}

M.UpdateFlowInput = {
    type = "structure",
    id = "UpdateFlowInput",
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
        definition = M.FlowDefinition,
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
    id = "UpdateFlowOutput",
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
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = M.FlowDefinition,
    },
}

M.ValidateFlowDefinitionInput = {
    type = "structure",
    id = "ValidateFlowDefinitionInput",
    members = {
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowDefinition }),
    },
}

return M
