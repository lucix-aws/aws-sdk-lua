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

M.ExecutionType = {
    LAMBDA = "LAMBDA",
    RETURN_CONTROL = "RETURN_CONTROL",
}

M.Parameter = {
    type = "structure",
    id = "Parameter",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.RequestBody = {
    type = "structure",
    id = "RequestBody",
    members = {
        content = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ActionGroupInvocationInput = {
    type = "structure",
    id = "ActionGroupInvocationInput",
    members = {
        actionGroupName = {
            type = "string",
        },
        verb = {
            type = "string",
        },
        apiPath = {
            type = "string",
        },
        parameters = {
            type = "list",
            member = M.Parameter,
        },
        requestBody = M.RequestBody,
        function = {
            type = "string",
        },
        executionType = {
            type = "string",
        },
        invocationId = {
            type = "string",
        },
    },
}

M.Usage = {
    type = "structure",
    id = "Usage",
    members = {
        inputTokens = {
            type = "integer",
        },
        outputTokens = {
            type = "integer",
        },
    },
}

M.Metadata = {
    type = "structure",
    id = "Metadata",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        totalTimeMs = {
            type = "long",
        },
        operationTotalTimeMs = {
            type = "long",
        },
        clientRequestId = {
            type = "string",
        },
        usage = M.Usage,
    },
}

M.ActionGroupInvocationOutput = {
    type = "structure",
    id = "ActionGroupInvocationOutput",
    members = {
        text = {
            type = "string",
        },
        metadata = M.Metadata,
    },
}

M.ActionGroupSignature = {
    AMAZON_USERINPUT = "AMAZON.UserInput",
    AMAZON_CODEINTERPRETER = "AMAZON.CodeInterpreter",
    ANTHROPIC_COMPUTER = "ANTHROPIC.Computer",
    ANTHROPIC_BASH = "ANTHROPIC.Bash",
    ANTHROPIC_TEXTEDITOR = "ANTHROPIC.TextEditor",
}

M.ActionInvocationType = {
    RESULT = "RESULT",
    USER_CONFIRMATION = "USER_CONFIRMATION",
    USER_CONFIRMATION_AND_RESULT = "USER_CONFIRMATION_AND_RESULT",
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

M.ParameterType = {
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

M.FunctionDefinition = {
    type = "structure",
    id = "FunctionDefinition",
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
            member = M.FunctionDefinition,
        },
    },
}

M.AgentActionGroup = {
    type = "structure",
    id = "AgentActionGroup",
    members = {
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
        actionGroupExecutor = M.ActionGroupExecutor,
        apiSchema = M.APISchema,
        functionSchema = M.FunctionSchema,
        parentActionGroupSignatureParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AgentCollaboration = {
    SUPERVISOR = "SUPERVISOR",
    SUPERVISOR_ROUTER = "SUPERVISOR_ROUTER",
    DISABLED = "DISABLED",
}

M.ConfirmationState = {
    CONFIRM = "CONFIRM",
    DENY = "DENY",
}

M.ImageInputFormat = {
    PNG = "png",
    JPEG = "jpeg",
    GIF = "gif",
    WEBP = "webp",
}

M.ImageInputSource = {
    type = "union",
    id = "ImageInputSource",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.ImageInput = {
    type = "structure",
    id = "ImageInput",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageInputSource }),
    },
}

M.ContentBody = {
    type = "structure",
    id = "ContentBody",
    members = {
        body = {
            type = "string",
        },
        images = {
            type = "list",
            member = M.ImageInput,
        },
    },
}

M.ResponseState = {
    FAILURE = "FAILURE",
    REPROMPT = "REPROMPT",
}

M.ApiResult = {
    type = "structure",
    id = "ApiResult",
    members = {
        actionGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        httpMethod = {
            type = "string",
        },
        apiPath = {
            type = "string",
        },
        confirmationState = {
            type = "string",
        },
        responseState = {
            type = "string",
        },
        httpStatusCode = {
            type = "integer",
        },
        responseBody = {
            type = "map",
            key = { type = "string" },
            value = M.ContentBody,
        },
        agentId = {
            type = "string",
        },
    },
}

M.FunctionResult = {
    type = "structure",
    id = "FunctionResult",
    members = {
        actionGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        confirmationState = {
            type = "string",
        },
        function = {
            type = "string",
        },
        responseBody = {
            type = "map",
            key = { type = "string" },
            value = M.ContentBody,
        },
        responseState = {
            type = "string",
        },
        agentId = {
            type = "string",
        },
    },
}

M.InvocationResultMember = {
    type = "union",
    id = "InvocationResultMember",
    members = {
        apiResult = M.ApiResult,
        functionResult = M.FunctionResult,
    },
}

M.ReturnControlResults = {
    type = "structure",
    id = "ReturnControlResults",
    members = {
        invocationId = {
            type = "string",
        },
        returnControlInvocationResults = {
            type = "list",
            member = M.InvocationResultMember,
        },
    },
}

M.PayloadType = {
    TEXT = "TEXT",
    RETURN_CONTROL = "RETURN_CONTROL",
}

M.AgentCollaboratorInputPayload = {
    type = "structure",
    id = "AgentCollaboratorInputPayload",
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        returnControlResults = M.ReturnControlResults,
    },
}

M.AgentCollaboratorInvocationInput = {
    type = "structure",
    id = "AgentCollaboratorInvocationInput",
    members = {
        agentCollaboratorName = {
            type = "string",
        },
        agentCollaboratorAliasArn = {
            type = "string",
        },
        input = M.AgentCollaboratorInputPayload,
    },
}

M.ApiParameter = {
    type = "structure",
    id = "ApiParameter",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.PropertyParameters = {
    type = "structure",
    id = "PropertyParameters",
    members = {
        properties = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.ApiRequestBody = {
    type = "structure",
    id = "ApiRequestBody",
    members = {
        content = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyParameters,
        },
    },
}

M.ApiInvocationInput = {
    type = "structure",
    id = "ApiInvocationInput",
    members = {
        actionGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        httpMethod = {
            type = "string",
        },
        apiPath = {
            type = "string",
        },
        parameters = {
            type = "list",
            member = M.ApiParameter,
        },
        requestBody = M.ApiRequestBody,
        actionInvocationType = {
            type = "string",
        },
        agentId = {
            type = "string",
        },
        collaboratorName = {
            type = "string",
        },
    },
}

M.FunctionParameter = {
    type = "structure",
    id = "FunctionParameter",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.FunctionInvocationInput = {
    type = "structure",
    id = "FunctionInvocationInput",
    members = {
        actionGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "list",
            member = M.FunctionParameter,
        },
        function = {
            type = "string",
        },
        actionInvocationType = {
            type = "string",
        },
        agentId = {
            type = "string",
        },
        collaboratorName = {
            type = "string",
        },
    },
}

M.InvocationInputMember = {
    type = "union",
    id = "InvocationInputMember",
    members = {
        apiInvocationInput = M.ApiInvocationInput,
        functionInvocationInput = M.FunctionInvocationInput,
    },
}

M.ReturnControlPayload = {
    type = "structure",
    id = "ReturnControlPayload",
    members = {
        invocationInputs = {
            type = "list",
            member = M.InvocationInputMember,
        },
        invocationId = {
            type = "string",
        },
    },
}

M.AgentCollaboratorOutputPayload = {
    type = "structure",
    id = "AgentCollaboratorOutputPayload",
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        returnControlPayload = M.ReturnControlPayload,
    },
}

M.AgentCollaboratorInvocationOutput = {
    type = "structure",
    id = "AgentCollaboratorInvocationOutput",
    members = {
        agentCollaboratorName = {
            type = "string",
        },
        agentCollaboratorAliasArn = {
            type = "string",
        },
        output = M.AgentCollaboratorOutputPayload,
        metadata = M.Metadata,
    },
}

M.Caller = {
    type = "union",
    id = "Caller",
    members = {
        agentAliasArn = {
            type = "string",
        },
    },
}

M.CustomOrchestrationTraceEvent = {
    type = "structure",
    id = "CustomOrchestrationTraceEvent",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CustomOrchestrationTrace = {
    type = "structure",
    id = "CustomOrchestrationTrace",
    members = {
        traceId = {
            type = "string",
        },
        event = M.CustomOrchestrationTraceEvent,
    },
}

M.FailureTrace = {
    type = "structure",
    id = "FailureTrace",
    members = {
        traceId = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        failureCode = {
            type = "integer",
        },
        metadata = M.Metadata,
    },
}

M.GuardrailAction = {
    INTERVENED = "INTERVENED",
    NONE = "NONE",
}

M.GuardrailContentPolicyAction = {
    BLOCKED = "BLOCKED",
}

M.GuardrailContentFilterConfidence = {
    NONE = "NONE",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.GuardrailContentFilterType = {
    INSULTS = "INSULTS",
    HATE = "HATE",
    SEXUAL = "SEXUAL",
    VIOLENCE = "VIOLENCE",
    MISCONDUCT = "MISCONDUCT",
    PROMPT_ATTACK = "PROMPT_ATTACK",
}

M.GuardrailContentFilter = {
    type = "structure",
    id = "GuardrailContentFilter",
    members = {
        type = {
            type = "string",
        },
        confidence = {
            type = "string",
        },
        action = {
            type = "string",
        },
    },
}

M.GuardrailContentPolicyAssessment = {
    type = "structure",
    id = "GuardrailContentPolicyAssessment",
    members = {
        filters = {
            type = "list",
            member = M.GuardrailContentFilter,
        },
    },
}

M.GuardrailSensitiveInformationPolicyAction = {
    BLOCKED = "BLOCKED",
    ANONYMIZED = "ANONYMIZED",
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

M.GuardrailPiiEntityFilter = {
    type = "structure",
    id = "GuardrailPiiEntityFilter",
    members = {
        type = {
            type = "string",
        },
        match = {
            type = "string",
        },
        action = {
            type = "string",
        },
    },
}

M.GuardrailRegexFilter = {
    type = "structure",
    id = "GuardrailRegexFilter",
    members = {
        name = {
            type = "string",
        },
        regex = {
            type = "string",
        },
        match = {
            type = "string",
        },
        action = {
            type = "string",
        },
    },
}

M.GuardrailSensitiveInformationPolicyAssessment = {
    type = "structure",
    id = "GuardrailSensitiveInformationPolicyAssessment",
    members = {
        piiEntities = {
            type = "list",
            member = M.GuardrailPiiEntityFilter,
        },
        regexes = {
            type = "list",
            member = M.GuardrailRegexFilter,
        },
    },
}

M.GuardrailTopicPolicyAction = {
    BLOCKED = "BLOCKED",
}

M.GuardrailTopicType = {
    DENY = "DENY",
}

M.GuardrailTopic = {
    type = "structure",
    id = "GuardrailTopic",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        action = {
            type = "string",
        },
    },
}

M.GuardrailTopicPolicyAssessment = {
    type = "structure",
    id = "GuardrailTopicPolicyAssessment",
    members = {
        topics = {
            type = "list",
            member = M.GuardrailTopic,
        },
    },
}

M.GuardrailWordPolicyAction = {
    BLOCKED = "BLOCKED",
}

M.GuardrailCustomWord = {
    type = "structure",
    id = "GuardrailCustomWord",
    members = {
        match = {
            type = "string",
        },
        action = {
            type = "string",
        },
    },
}

M.GuardrailManagedWordType = {
    PROFANITY = "PROFANITY",
}

M.GuardrailManagedWord = {
    type = "structure",
    id = "GuardrailManagedWord",
    members = {
        match = {
            type = "string",
        },
        type = {
            type = "string",
        },
        action = {
            type = "string",
        },
    },
}

M.GuardrailWordPolicyAssessment = {
    type = "structure",
    id = "GuardrailWordPolicyAssessment",
    members = {
        customWords = {
            type = "list",
            member = M.GuardrailCustomWord,
        },
        managedWordLists = {
            type = "list",
            member = M.GuardrailManagedWord,
        },
    },
}

M.GuardrailAssessment = {
    type = "structure",
    id = "GuardrailAssessment",
    members = {
        topicPolicy = M.GuardrailTopicPolicyAssessment,
        contentPolicy = M.GuardrailContentPolicyAssessment,
        wordPolicy = M.GuardrailWordPolicyAssessment,
        sensitiveInformationPolicy = M.GuardrailSensitiveInformationPolicyAssessment,
    },
}

M.GuardrailTrace = {
    type = "structure",
    id = "GuardrailTrace",
    members = {
        action = {
            type = "string",
        },
        traceId = {
            type = "string",
        },
        inputAssessments = {
            type = "list",
            member = M.GuardrailAssessment,
        },
        outputAssessments = {
            type = "list",
            member = M.GuardrailAssessment,
        },
        metadata = M.Metadata,
    },
}

M.CodeInterpreterInvocationInput = {
    type = "structure",
    id = "CodeInterpreterInvocationInput",
    members = {
        code = {
            type = "string",
        },
        files = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvocationType = {
    ACTION_GROUP = "ACTION_GROUP",
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    FINISH = "FINISH",
    ACTION_GROUP_CODE_INTERPRETER = "ACTION_GROUP_CODE_INTERPRETER",
    AGENT_COLLABORATOR = "AGENT_COLLABORATOR",
}

M.KnowledgeBaseLookupInput = {
    type = "structure",
    id = "KnowledgeBaseLookupInput",
    members = {
        text = {
            type = "string",
        },
        knowledgeBaseId = {
            type = "string",
        },
    },
}

M.InvocationInput = {
    type = "structure",
    id = "InvocationInput",
    members = {
        traceId = {
            type = "string",
        },
        invocationType = {
            type = "string",
        },
        actionGroupInvocationInput = M.ActionGroupInvocationInput,
        knowledgeBaseLookupInput = M.KnowledgeBaseLookupInput,
        codeInterpreterInvocationInput = M.CodeInterpreterInvocationInput,
        agentCollaboratorInvocationInput = M.AgentCollaboratorInvocationInput,
    },
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

M.PromptType = {
    PRE_PROCESSING = "PRE_PROCESSING",
    ORCHESTRATION = "ORCHESTRATION",
    KNOWLEDGE_BASE_RESPONSE_GENERATION = "KNOWLEDGE_BASE_RESPONSE_GENERATION",
    POST_PROCESSING = "POST_PROCESSING",
    ROUTING_CLASSIFIER = "ROUTING_CLASSIFIER",
}

M.ModelInvocationInput = {
    type = "structure",
    id = "ModelInvocationInput",
    members = {
        traceId = {
            type = "string",
        },
        text = {
            type = "string",
        },
        type = {
            type = "string",
        },
        overrideLambda = {
            type = "string",
        },
        promptCreationMode = {
            type = "string",
        },
        inferenceConfiguration = M.InferenceConfiguration,
        parserMode = {
            type = "string",
        },
        foundationModel = {
            type = "string",
        },
    },
}

M.RawResponse = {
    type = "structure",
    id = "RawResponse",
    members = {
        content = {
            type = "string",
        },
    },
}

M.ReasoningTextBlock = {
    type = "structure",
    id = "ReasoningTextBlock",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        signature = {
            type = "string",
        },
    },
}

M.ReasoningContentBlock = {
    type = "union",
    id = "ReasoningContentBlock",
    members = {
        reasoningText = M.ReasoningTextBlock,
        redactedContent = {
            type = "blob",
        },
    },
}

M.OrchestrationModelInvocationOutput = {
    type = "structure",
    id = "OrchestrationModelInvocationOutput",
    members = {
        traceId = {
            type = "string",
        },
        rawResponse = M.RawResponse,
        metadata = M.Metadata,
        reasoningContent = M.ReasoningContentBlock,
    },
}

M.CodeInterpreterInvocationOutput = {
    type = "structure",
    id = "CodeInterpreterInvocationOutput",
    members = {
        executionOutput = {
            type = "string",
        },
        executionError = {
            type = "string",
        },
        files = {
            type = "list",
            member = { type = "string" },
        },
        executionTimeout = {
            type = "boolean",
        },
        metadata = M.Metadata,
    },
}

M.FinalResponse = {
    type = "structure",
    id = "FinalResponse",
    members = {
        text = {
            type = "string",
        },
        metadata = M.Metadata,
    },
}

M.AudioSegment = {
    type = "structure",
    id = "AudioSegment",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transcription = {
            type = "string",
        },
    },
}

M.RetrievalResultContentColumnType = {
    BLOB = "BLOB",
    BOOLEAN = "BOOLEAN",
    DOUBLE = "DOUBLE",
    NULL = "NULL",
    LONG = "LONG",
    STRING = "STRING",
}

M.RetrievalResultContentColumn = {
    type = "structure",
    id = "RetrievalResultContentColumn",
    members = {
        columnName = {
            type = "string",
        },
        columnValue = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.RetrievalResultContentType = {
    TEXT = "TEXT",
    IMAGE = "IMAGE",
    ROW = "ROW",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.VideoSegment = {
    type = "structure",
    id = "VideoSegment",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        summary = {
            type = "string",
        },
    },
}

M.RetrievalResultContent = {
    type = "structure",
    id = "RetrievalResultContent",
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
            traits = {
                default = "",
            },
        },
        byteContent = {
            type = "string",
        },
        video = M.VideoSegment,
        audio = M.AudioSegment,
        row = {
            type = "list",
            member = M.RetrievalResultContentColumn,
        },
    },
}

M.RetrievalResultConfluenceLocation = {
    type = "structure",
    id = "RetrievalResultConfluenceLocation",
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultCustomDocumentLocation = {
    type = "structure",
    id = "RetrievalResultCustomDocumentLocation",
    members = {
        id = {
            type = "string",
        },
    },
}

M.RetrievalResultKendraDocumentLocation = {
    type = "structure",
    id = "RetrievalResultKendraDocumentLocation",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.RetrievalResultS3Location = {
    type = "structure",
    id = "RetrievalResultS3Location",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.RetrievalResultSalesforceLocation = {
    type = "structure",
    id = "RetrievalResultSalesforceLocation",
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultSharePointLocation = {
    type = "structure",
    id = "RetrievalResultSharePointLocation",
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultSqlLocation = {
    type = "structure",
    id = "RetrievalResultSqlLocation",
    members = {
        query = {
            type = "string",
        },
    },
}

M.RetrievalResultLocationType = {
    S3 = "S3",
    WEB = "WEB",
    CONFLUENCE = "CONFLUENCE",
    SALESFORCE = "SALESFORCE",
    SHAREPOINT = "SHAREPOINT",
    CUSTOM = "CUSTOM",
    KENDRA = "KENDRA",
    SQL = "SQL",
}

M.RetrievalResultWebLocation = {
    type = "structure",
    id = "RetrievalResultWebLocation",
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultLocation = {
    type = "structure",
    id = "RetrievalResultLocation",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = M.RetrievalResultS3Location,
        webLocation = M.RetrievalResultWebLocation,
        confluenceLocation = M.RetrievalResultConfluenceLocation,
        salesforceLocation = M.RetrievalResultSalesforceLocation,
        sharePointLocation = M.RetrievalResultSharePointLocation,
        customDocumentLocation = M.RetrievalResultCustomDocumentLocation,
        kendraDocumentLocation = M.RetrievalResultKendraDocumentLocation,
        sqlLocation = M.RetrievalResultSqlLocation,
    },
}

M.RetrievedReference = {
    type = "structure",
    id = "RetrievedReference",
    members = {
        content = M.RetrievalResultContent,
        location = M.RetrievalResultLocation,
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
    },
}

M.KnowledgeBaseLookupOutput = {
    type = "structure",
    id = "KnowledgeBaseLookupOutput",
    members = {
        retrievedReferences = {
            type = "list",
            member = M.RetrievedReference,
        },
        metadata = M.Metadata,
    },
}

M.Source = {
    ACTION_GROUP = "ACTION_GROUP",
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    PARSER = "PARSER",
}

M.RepromptResponse = {
    type = "structure",
    id = "RepromptResponse",
    members = {
        text = {
            type = "string",
        },
        source = {
            type = "string",
        },
    },
}

M.Type = {
    ACTION_GROUP = "ACTION_GROUP",
    AGENT_COLLABORATOR = "AGENT_COLLABORATOR",
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    FINISH = "FINISH",
    ASK_USER = "ASK_USER",
    REPROMPT = "REPROMPT",
}

M.Observation = {
    type = "structure",
    id = "Observation",
    members = {
        traceId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        actionGroupInvocationOutput = M.ActionGroupInvocationOutput,
        agentCollaboratorInvocationOutput = M.AgentCollaboratorInvocationOutput,
        knowledgeBaseLookupOutput = M.KnowledgeBaseLookupOutput,
        finalResponse = M.FinalResponse,
        repromptResponse = M.RepromptResponse,
        codeInterpreterInvocationOutput = M.CodeInterpreterInvocationOutput,
    },
}

M.Rationale = {
    type = "structure",
    id = "Rationale",
    members = {
        traceId = {
            type = "string",
        },
        text = {
            type = "string",
        },
    },
}

M.OrchestrationTrace = {
    type = "union",
    id = "OrchestrationTrace",
    members = {
        rationale = M.Rationale,
        invocationInput = M.InvocationInput,
        observation = M.Observation,
        modelInvocationInput = M.ModelInvocationInput,
        modelInvocationOutput = M.OrchestrationModelInvocationOutput,
    },
}

M.PostProcessingParsedResponse = {
    type = "structure",
    id = "PostProcessingParsedResponse",
    members = {
        text = {
            type = "string",
        },
    },
}

M.PostProcessingModelInvocationOutput = {
    type = "structure",
    id = "PostProcessingModelInvocationOutput",
    members = {
        traceId = {
            type = "string",
        },
        parsedResponse = M.PostProcessingParsedResponse,
        rawResponse = M.RawResponse,
        metadata = M.Metadata,
        reasoningContent = M.ReasoningContentBlock,
    },
}

M.PostProcessingTrace = {
    type = "union",
    id = "PostProcessingTrace",
    members = {
        modelInvocationInput = M.ModelInvocationInput,
        modelInvocationOutput = M.PostProcessingModelInvocationOutput,
    },
}

M.PreProcessingParsedResponse = {
    type = "structure",
    id = "PreProcessingParsedResponse",
    members = {
        rationale = {
            type = "string",
        },
        isValid = {
            type = "boolean",
        },
    },
}

M.PreProcessingModelInvocationOutput = {
    type = "structure",
    id = "PreProcessingModelInvocationOutput",
    members = {
        traceId = {
            type = "string",
        },
        parsedResponse = M.PreProcessingParsedResponse,
        rawResponse = M.RawResponse,
        metadata = M.Metadata,
        reasoningContent = M.ReasoningContentBlock,
    },
}

M.PreProcessingTrace = {
    type = "union",
    id = "PreProcessingTrace",
    members = {
        modelInvocationInput = M.ModelInvocationInput,
        modelInvocationOutput = M.PreProcessingModelInvocationOutput,
    },
}

M.RoutingClassifierModelInvocationOutput = {
    type = "structure",
    id = "RoutingClassifierModelInvocationOutput",
    members = {
        traceId = {
            type = "string",
        },
        rawResponse = M.RawResponse,
        metadata = M.Metadata,
    },
}

M.RoutingClassifierTrace = {
    type = "union",
    id = "RoutingClassifierTrace",
    members = {
        invocationInput = M.InvocationInput,
        observation = M.Observation,
        modelInvocationInput = M.ModelInvocationInput,
        modelInvocationOutput = M.RoutingClassifierModelInvocationOutput,
    },
}

M.Trace = {
    type = "union",
    id = "Trace",
    members = {
        guardrailTrace = M.GuardrailTrace,
        preProcessingTrace = M.PreProcessingTrace,
        orchestrationTrace = M.OrchestrationTrace,
        postProcessingTrace = M.PostProcessingTrace,
        routingClassifierTrace = M.RoutingClassifierTrace,
        failureTrace = M.FailureTrace,
        customOrchestrationTrace = M.CustomOrchestrationTrace,
    },
}

M.TracePart = {
    type = "structure",
    id = "TracePart",
    members = {
        sessionId = {
            type = "string",
        },
        trace = M.Trace,
        callerChain = {
            type = "list",
            member = M.Caller,
        },
        eventTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        collaboratorName = {
            type = "string",
        },
        agentId = {
            type = "string",
        },
        agentAliasId = {
            type = "string",
        },
        agentVersion = {
            type = "string",
        },
    },
}

M.GetExecutionFlowSnapshotInput = {
    type = "structure",
    id = "GetExecutionFlowSnapshotInput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetExecutionFlowSnapshotOutput = {
    type = "structure",
    id = "GetExecutionFlowSnapshotOutput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
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
        customerEncryptionKeyArn = {
            type = "string",
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
        },
        reason = {
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

M.GetFlowExecutionInput = {
    type = "structure",
    id = "GetFlowExecutionInput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FlowExecutionErrorType = {
    TIMED_OUT = "ExecutionTimedOut",
}

M.FlowExecutionError = {
    type = "structure",
    id = "FlowExecutionError",
    members = {
        nodeName = {
            type = "string",
        },
        error = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.FlowExecutionStatus = {
    RUNNING = "Running",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    TIMED_OUT = "TimedOut",
    ABORTED = "Aborted",
}

M.GetFlowExecutionOutput = {
    type = "structure",
    id = "GetFlowExecutionOutput",
    members = {
        executionArn = {
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
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        errors = {
            type = "list",
            member = M.FlowExecutionError,
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowExecutionEventType = {
    NODE = "Node",
    FLOW = "Flow",
}

M.ListFlowExecutionEventsInput = {
    type = "structure",
    id = "ListFlowExecutionEventsInput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionIdentifier = {
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
        eventType = {
            type = "string",
            traits = {
                http_query = "eventType",
                required = true,
            },
        },
    },
}

M.SatisfiedCondition = {
    type = "structure",
    id = "SatisfiedCondition",
    members = {
        conditionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConditionResultEvent = {
    type = "structure",
    id = "ConditionResultEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        satisfiedConditions = {
            type = "list",
            member = M.SatisfiedCondition,
            traits = {
                required = true,
            },
        },
    },
}

M.FlowErrorCode = {
    VALIDATION = "VALIDATION",
    INTERNAL_SERVER = "INTERNAL_SERVER",
    NODE_EXECUTION_FAILED = "NODE_EXECUTION_FAILED",
}

M.FlowFailureEvent = {
    type = "structure",
    id = "FlowFailureEvent",
    members = {
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowExecutionContent = {
    type = "union",
    id = "FlowExecutionContent",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowInputField = {
    type = "structure",
    id = "FlowInputField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowExecutionContent }),
    },
}

M.FlowExecutionInputEvent = {
    type = "structure",
    id = "FlowExecutionInputEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fields = {
            type = "list",
            member = M.FlowInputField,
            traits = {
                required = true,
            },
        },
    },
}

M.FlowOutputField = {
    type = "structure",
    id = "FlowOutputField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowExecutionContent }),
    },
}

M.FlowExecutionOutputEvent = {
    type = "structure",
    id = "FlowExecutionOutputEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fields = {
            type = "list",
            member = M.FlowOutputField,
            traits = {
                required = true,
            },
        },
    },
}

M.NodeActionEvent = {
    type = "structure",
    id = "NodeActionEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationRequest = {
            type = "document",
        },
        operationResponse = {
            type = "document",
        },
    },
}

M.NodeTraceElements = {
    type = "union",
    id = "NodeTraceElements",
    members = {
        agentTraces = {
            type = "list",
            member = M.TracePart,
        },
    },
}

M.NodeDependencyEvent = {
    type = "structure",
    id = "NodeDependencyEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        traceElements = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NodeTraceElements }),
    },
}

M.NodeErrorCode = {
    VALIDATION = "VALIDATION",
    DEPENDENCY_FAILED = "DEPENDENCY_FAILED",
    BAD_GATEWAY = "BAD_GATEWAY",
    INTERNAL_SERVER = "INTERNAL_SERVER",
}

M.NodeFailureEvent = {
    type = "structure",
    id = "NodeFailureEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
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

M.NodeExecutionContent = {
    type = "union",
    id = "NodeExecutionContent",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowControlNodeType = {
    ITERATOR = "Iterator",
    LOOP = "Loop",
}

M.NodeInputExecutionChainItem = {
    type = "structure",
    id = "NodeInputExecutionChainItem",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        index = {
            type = "integer",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NodeInputSource = {
    type = "structure",
    id = "NodeInputSource",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputFieldName = {
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

M.FlowNodeIODataType = {
    STRING = "String",
    NUMBER = "Number",
    BOOLEAN = "Boolean",
    OBJECT = "Object",
    ARRAY = "Array",
}

M.NodeInputField = {
    type = "structure",
    id = "NodeInputField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NodeExecutionContent }),
        source = M.NodeInputSource,
        type = {
            type = "string",
        },
        category = {
            type = "string",
        },
        executionChain = {
            type = "list",
            member = M.NodeInputExecutionChainItem,
        },
    },
}

M.NodeInputEvent = {
    type = "structure",
    id = "NodeInputEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fields = {
            type = "list",
            member = M.NodeInputField,
            traits = {
                required = true,
            },
        },
    },
}

M.NodeOutputNext = {
    type = "structure",
    id = "NodeOutputNext",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NodeOutputField = {
    type = "structure",
    id = "NodeOutputField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NodeExecutionContent }),
        next = {
            type = "list",
            member = M.NodeOutputNext,
        },
        type = {
            type = "string",
        },
    },
}

M.NodeOutputEvent = {
    type = "structure",
    id = "NodeOutputEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fields = {
            type = "list",
            member = M.NodeOutputField,
            traits = {
                required = true,
            },
        },
    },
}

M.FlowExecutionEvent = {
    type = "union",
    id = "FlowExecutionEvent",
    members = {
        flowInputEvent = M.FlowExecutionInputEvent,
        flowOutputEvent = M.FlowExecutionOutputEvent,
        nodeInputEvent = M.NodeInputEvent,
        nodeOutputEvent = M.NodeOutputEvent,
        conditionResultEvent = M.ConditionResultEvent,
        nodeFailureEvent = M.NodeFailureEvent,
        flowFailureEvent = M.FlowFailureEvent,
        nodeActionEvent = M.NodeActionEvent,
        nodeDependencyEvent = M.NodeDependencyEvent,
    },
}

M.ListFlowExecutionEventsOutput = {
    type = "structure",
    id = "ListFlowExecutionEventsOutput",
    members = {
        flowExecutionEvents = {
            type = "list",
            member = M.FlowExecutionEvent,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFlowExecutionsInput = {
    type = "structure",
    id = "ListFlowExecutionsInput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                http_query = "flowAliasIdentifier",
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

M.FlowExecutionSummary = {
    type = "structure",
    id = "FlowExecutionSummary",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowVersion = {
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
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListFlowExecutionsOutput = {
    type = "structure",
    id = "ListFlowExecutionsOutput",
    members = {
        flowExecutionSummaries = {
            type = "list",
            member = M.FlowExecutionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BadGatewayException = {
    type = "structure",
    id = "BadGatewayException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
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

M.DependencyFailedException = {
    type = "structure",
    id = "DependencyFailedException",
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

M.FlowInputContent = {
    type = "union",
    id = "FlowInputContent",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowInput = {
    type = "structure",
    id = "FlowInput",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nodeOutputName = {
            type = "string",
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowInputContent }),
        nodeInputName = {
            type = "string",
        },
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

M.ModelPerformanceConfiguration = {
    type = "structure",
    id = "ModelPerformanceConfiguration",
    members = {
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.StartFlowExecutionInput = {
    type = "structure",
    id = "StartFlowExecutionInput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowExecutionName = {
            type = "string",
        },
        inputs = {
            type = "list",
            member = M.FlowInput,
            traits = {
                required = true,
            },
        },
        modelPerformanceConfiguration = M.ModelPerformanceConfiguration,
    },
}

M.StartFlowExecutionOutput = {
    type = "structure",
    id = "StartFlowExecutionOutput",
    members = {
        executionArn = {
            type = "string",
        },
    },
}

M.StopFlowExecutionInput = {
    type = "structure",
    id = "StopFlowExecutionInput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopFlowExecutionOutput = {
    type = "structure",
    id = "StopFlowExecutionOutput",
    members = {
        executionArn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvokeFlowInput = {
    type = "structure",
    id = "InvokeFlowInput",
    members = {
        flowIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowAliasIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inputs = {
            type = "list",
            member = M.FlowInput,
            traits = {
                required = true,
            },
        },
        enableTrace = {
            type = "boolean",
        },
        modelPerformanceConfiguration = M.ModelPerformanceConfiguration,
        executionId = {
            type = "string",
        },
    },
}

M.FlowCompletionReason = {
    SUCCESS = "SUCCESS",
    INPUT_REQUIRED = "INPUT_REQUIRED",
}

M.FlowCompletionEvent = {
    type = "structure",
    id = "FlowCompletionEvent",
    members = {
        completionReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowMultiTurnInputContent = {
    type = "union",
    id = "FlowMultiTurnInputContent",
    members = {
        document = {
            type = "document",
        },
    },
}

M.NodeType = {
    FLOW_INPUT_NODE = "FlowInputNode",
    FLOW_OUTPUT_NODE = "FlowOutputNode",
    LAMBDA_FUNCTION_NODE = "LambdaFunctionNode",
    KNOWLEDGE_BASE_NODE = "KnowledgeBaseNode",
    PROMPT_NODE = "PromptNode",
    CONDITION_NODE = "ConditionNode",
    LEX_NODE = "LexNode",
}

M.FlowMultiTurnInputRequestEvent = {
    type = "structure",
    id = "FlowMultiTurnInputRequestEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowMultiTurnInputContent }),
    },
}

M.FlowOutputContent = {
    type = "union",
    id = "FlowOutputContent",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowOutputEvent = {
    type = "structure",
    id = "FlowOutputEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowOutputContent }),
    },
}

M.FlowTraceCondition = {
    type = "structure",
    id = "FlowTraceCondition",
    members = {
        conditionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceConditionNodeResultEvent = {
    type = "structure",
    id = "FlowTraceConditionNodeResultEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        satisfiedConditions = {
            type = "list",
            member = M.FlowTraceCondition,
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceNodeActionEvent = {
    type = "structure",
    id = "FlowTraceNodeActionEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationRequest = {
            type = "document",
        },
        operationResponse = {
            type = "document",
        },
    },
}

M.TraceElements = {
    type = "union",
    id = "TraceElements",
    members = {
        agentTraces = {
            type = "list",
            member = M.TracePart,
        },
    },
}

M.FlowTraceDependencyEvent = {
    type = "structure",
    id = "FlowTraceDependencyEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        traceElements = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TraceElements }),
    },
}

M.FlowTraceNodeInputContent = {
    type = "union",
    id = "FlowTraceNodeInputContent",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowTraceNodeInputExecutionChainItem = {
    type = "structure",
    id = "FlowTraceNodeInputExecutionChainItem",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        index = {
            type = "integer",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceNodeInputSource = {
    type = "structure",
    id = "FlowTraceNodeInputSource",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputFieldName = {
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

M.FlowTraceNodeInputField = {
    type = "structure",
    id = "FlowTraceNodeInputField",
    members = {
        nodeInputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowTraceNodeInputContent }),
        source = M.FlowTraceNodeInputSource,
        type = {
            type = "string",
        },
        category = {
            type = "string",
        },
        executionChain = {
            type = "list",
            member = M.FlowTraceNodeInputExecutionChainItem,
        },
    },
}

M.FlowTraceNodeInputEvent = {
    type = "structure",
    id = "FlowTraceNodeInputEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fields = {
            type = "list",
            member = M.FlowTraceNodeInputField,
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceNodeOutputContent = {
    type = "union",
    id = "FlowTraceNodeOutputContent",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowTraceNodeOutputNext = {
    type = "structure",
    id = "FlowTraceNodeOutputNext",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceNodeOutputField = {
    type = "structure",
    id = "FlowTraceNodeOutputField",
    members = {
        nodeOutputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowTraceNodeOutputContent }),
        next = {
            type = "list",
            member = M.FlowTraceNodeOutputNext,
        },
        type = {
            type = "string",
        },
    },
}

M.FlowTraceNodeOutputEvent = {
    type = "structure",
    id = "FlowTraceNodeOutputEvent",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fields = {
            type = "list",
            member = M.FlowTraceNodeOutputField,
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTrace = {
    type = "union",
    id = "FlowTrace",
    members = {
        nodeInputTrace = M.FlowTraceNodeInputEvent,
        nodeOutputTrace = M.FlowTraceNodeOutputEvent,
        conditionNodeResultTrace = M.FlowTraceConditionNodeResultEvent,
        nodeActionTrace = M.FlowTraceNodeActionEvent,
        nodeDependencyTrace = M.FlowTraceDependencyEvent,
    },
}

M.FlowTraceEvent = {
    type = "structure",
    id = "FlowTraceEvent",
    members = {
        trace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlowTrace }),
    },
}

M.FlowResponseStream = {
    type = "union",
    id = "FlowResponseStream",
    members = {
        flowOutputEvent = M.FlowOutputEvent,
        flowCompletionEvent = M.FlowCompletionEvent,
        flowTraceEvent = M.FlowTraceEvent,
        internalServerException = M.InternalServerException,
        validationException = M.ValidationException,
        resourceNotFoundException = M.ResourceNotFoundException,
        serviceQuotaExceededException = M.ServiceQuotaExceededException,
        throttlingException = M.ThrottlingException,
        accessDeniedException = M.AccessDeniedException,
        conflictException = M.ConflictException,
        dependencyFailedException = M.DependencyFailedException,
        badGatewayException = M.BadGatewayException,
        flowMultiTurnInputRequestEvent = M.FlowMultiTurnInputRequestEvent,
    },
}

M.InvokeFlowOutput = {
    type = "structure",
    id = "InvokeFlowOutput",
    members = {
        responseStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.FlowResponseStream }),
        executionId = {
            type = "string",
            traits = {
                http_header = "x-amz-bedrock-flow-execution-id",
            },
        },
    },
}

M.InputQueryType = {
    TEXT = "TEXT",
}

M.QueryGenerationInput = {
    type = "structure",
    id = "QueryGenerationInput",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryTransformationMode = {
    TEXT_TO_SQL = "TEXT_TO_SQL",
}

M.TextToSqlKnowledgeBaseConfiguration = {
    type = "structure",
    id = "TextToSqlKnowledgeBaseConfiguration",
    members = {
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TextToSqlConfigurationType = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
}

M.TextToSqlConfiguration = {
    type = "structure",
    id = "TextToSqlConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = M.TextToSqlKnowledgeBaseConfiguration,
    },
}

M.TransformationConfiguration = {
    type = "structure",
    id = "TransformationConfiguration",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textToSqlConfiguration = M.TextToSqlConfiguration,
    },
}

M.GenerateQueryInput = {
    type = "structure",
    id = "GenerateQueryInput",
    members = {
        queryGenerationInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryGenerationInput }),
        transformationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformationConfiguration }),
    },
}

M.GeneratedQueryType = {
    REDSHIFT_SQL = "REDSHIFT_SQL",
}

M.GeneratedQuery = {
    type = "structure",
    id = "GeneratedQuery",
    members = {
        type = {
            type = "string",
        },
        sql = {
            type = "string",
        },
    },
}

M.GenerateQueryOutput = {
    type = "structure",
    id = "GenerateQueryOutput",
    members = {
        queries = {
            type = "list",
            member = M.GeneratedQuery,
        },
    },
}

M.BedrockModelConfigurations = {
    type = "structure",
    id = "BedrockModelConfigurations",
    members = {
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.PromptCreationConfigurations = {
    type = "structure",
    id = "PromptCreationConfigurations",
    members = {
        previousConversationTurnsToInclude = {
            type = "integer",
        },
        excludePreviousThinkingSteps = {
            type = "boolean",
            traits = {
                default = false,
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

M.ConversationHistory = {
    type = "structure",
    id = "ConversationHistory",
    members = {
        messages = {
            type = "list",
            member = M.Message,
        },
    },
}

M.ByteContentFile = {
    type = "structure",
    id = "ByteContentFile",
    members = {
        mediaType = {
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

M.S3ObjectFile = {
    type = "structure",
    id = "S3ObjectFile",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FileSourceType = {
    S3 = "S3",
    BYTE_CONTENT = "BYTE_CONTENT",
}

M.FileSource = {
    type = "structure",
    id = "FileSource",
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = M.S3ObjectFile,
        byteContent = M.ByteContentFile,
    },
}

M.FileUseCase = {
    CODE_INTERPRETER = "CODE_INTERPRETER",
    CHAT = "CHAT",
}

M.InputFile = {
    type = "structure",
    id = "InputFile",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FileSource }),
        useCase = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterAttribute = {
    type = "structure",
    id = "FilterAttribute",
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

M.AttributeType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
    BOOLEAN = "BOOLEAN",
    STRING_LIST = "STRING_LIST",
}

M.MetadataAttributeSchema = {
    type = "structure",
    id = "MetadataAttributeSchema",
    members = {
        key = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.ImplicitFilterConfiguration = {
    type = "structure",
    id = "ImplicitFilterConfiguration",
    members = {
        metadataAttributes = {
            type = "list",
            member = M.MetadataAttributeSchema,
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

M.SearchType = {
    HYBRID = "HYBRID",
    SEMANTIC = "SEMANTIC",
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

M.StreamingConfigurations = {
    type = "structure",
    id = "StreamingConfigurations",
    members = {
        streamFinalResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        applyGuardrailInterval = {
            type = "integer",
        },
    },
}

M.Span = {
    type = "structure",
    id = "Span",
    members = {
        start = {
            type = "integer",
        },
        end = {
            type = "integer",
        },
    },
}

M.TextResponsePart = {
    type = "structure",
    id = "TextResponsePart",
    members = {
        text = {
            type = "string",
        },
        span = M.Span,
    },
}

M.GeneratedResponsePart = {
    type = "structure",
    id = "GeneratedResponsePart",
    members = {
        textResponsePart = M.TextResponsePart,
    },
}

M.Citation = {
    type = "structure",
    id = "Citation",
    members = {
        generatedResponsePart = M.GeneratedResponsePart,
        retrievedReferences = {
            type = "list",
            member = M.RetrievedReference,
        },
    },
}

M.Attribution = {
    type = "structure",
    id = "Attribution",
    members = {
        citations = {
            type = "list",
            member = M.Citation,
        },
    },
}

M.PayloadPart = {
    type = "structure",
    id = "PayloadPart",
    members = {
        bytes = {
            type = "blob",
        },
        attribution = M.Attribution,
    },
}

M.OutputFile = {
    type = "structure",
    id = "OutputFile",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        bytes = {
            type = "blob",
        },
    },
}

M.FilePart = {
    type = "structure",
    id = "FilePart",
    members = {
        files = {
            type = "list",
            member = M.OutputFile,
        },
    },
}

M.ModelNotReadyException = {
    type = "structure",
    id = "ModelNotReadyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResponseStream = {
    type = "union",
    id = "ResponseStream",
    members = {
        chunk = M.PayloadPart,
        trace = M.TracePart,
        returnControl = M.ReturnControlPayload,
        internalServerException = M.InternalServerException,
        validationException = M.ValidationException,
        resourceNotFoundException = M.ResourceNotFoundException,
        serviceQuotaExceededException = M.ServiceQuotaExceededException,
        throttlingException = M.ThrottlingException,
        accessDeniedException = M.AccessDeniedException,
        conflictException = M.ConflictException,
        dependencyFailedException = M.DependencyFailedException,
        badGatewayException = M.BadGatewayException,
        modelNotReadyException = M.ModelNotReadyException,
        files = M.FilePart,
    },
}

M.InvokeAgentOutput = {
    type = "structure",
    id = "InvokeAgentOutput",
    members = {
        completion = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ResponseStream }),
        contentType = {
            type = "string",
            traits = {
                http_header = "x-amzn-bedrock-agent-content-type",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amz-bedrock-agent-session-id",
                required = true,
            },
        },
        memoryId = {
            type = "string",
            traits = {
                http_header = "x-amz-bedrock-agent-memory-id",
            },
        },
    },
}

M.InlineBedrockModelConfigurations = {
    type = "structure",
    id = "InlineBedrockModelConfigurations",
    members = {
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.RelayConversationHistory = {
    TO_COLLABORATOR = "TO_COLLABORATOR",
    DISABLED = "DISABLED",
}

M.CollaboratorConfiguration = {
    type = "structure",
    id = "CollaboratorConfiguration",
    members = {
        collaboratorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaboratorInstruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentAliasArn = {
            type = "string",
        },
        relayConversationHistory = {
            type = "string",
        },
    },
}

M.GuardrailConfigurationWithArn = {
    type = "structure",
    id = "GuardrailConfigurationWithArn",
    members = {
        guardrailIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardrailVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PromptState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
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

M.InlineSessionState = {
    type = "structure",
    id = "InlineSessionState",
    members = {
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        promptSessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        returnControlInvocationResults = {
            type = "list",
            member = M.InvocationResultMember,
        },
        invocationId = {
            type = "string",
        },
        files = {
            type = "list",
            member = M.InputFile,
        },
        conversationHistory = M.ConversationHistory,
    },
}

M.OrchestrationType = {
    DEFAULT = "DEFAULT",
    CUSTOM_ORCHESTRATION = "CUSTOM_ORCHESTRATION",
}

M.InlineAgentPayloadPart = {
    type = "structure",
    id = "InlineAgentPayloadPart",
    members = {
        bytes = {
            type = "blob",
        },
        attribution = M.Attribution,
    },
}

M.InlineAgentFilePart = {
    type = "structure",
    id = "InlineAgentFilePart",
    members = {
        files = {
            type = "list",
            member = M.OutputFile,
        },
    },
}

M.InlineAgentReturnControlPayload = {
    type = "structure",
    id = "InlineAgentReturnControlPayload",
    members = {
        invocationInputs = {
            type = "list",
            member = M.InvocationInputMember,
        },
        invocationId = {
            type = "string",
        },
    },
}

M.InlineAgentTracePart = {
    type = "structure",
    id = "InlineAgentTracePart",
    members = {
        sessionId = {
            type = "string",
        },
        trace = M.Trace,
        callerChain = {
            type = "list",
            member = M.Caller,
        },
        eventTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        collaboratorName = {
            type = "string",
        },
    },
}

M.InlineAgentResponseStream = {
    type = "union",
    id = "InlineAgentResponseStream",
    members = {
        chunk = M.InlineAgentPayloadPart,
        trace = M.InlineAgentTracePart,
        returnControl = M.InlineAgentReturnControlPayload,
        internalServerException = M.InternalServerException,
        validationException = M.ValidationException,
        resourceNotFoundException = M.ResourceNotFoundException,
        serviceQuotaExceededException = M.ServiceQuotaExceededException,
        throttlingException = M.ThrottlingException,
        accessDeniedException = M.AccessDeniedException,
        conflictException = M.ConflictException,
        dependencyFailedException = M.DependencyFailedException,
        badGatewayException = M.BadGatewayException,
        files = M.InlineAgentFilePart,
    },
}

M.InvokeInlineAgentOutput = {
    type = "structure",
    id = "InvokeInlineAgentOutput",
    members = {
        completion = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InlineAgentResponseStream }),
        contentType = {
            type = "string",
            traits = {
                http_header = "x-amzn-bedrock-agent-content-type",
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amz-bedrock-agent-session-id",
                required = true,
            },
        },
    },
}

M.DeleteAgentMemoryInput = {
    type = "structure",
    id = "DeleteAgentMemoryInput",
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
        memoryId = {
            type = "string",
            traits = {
                http_query = "memoryId",
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
            },
        },
    },
}

M.DeleteAgentMemoryOutput = {
    type = "structure",
    id = "DeleteAgentMemoryOutput",
}

M.MemoryType = {
    SESSION_SUMMARY = "SESSION_SUMMARY",
}

M.GetAgentMemoryInput = {
    type = "structure",
    id = "GetAgentMemoryInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
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
        memoryType = {
            type = "string",
            traits = {
                http_query = "memoryType",
                required = true,
            },
        },
        memoryId = {
            type = "string",
            traits = {
                http_query = "memoryId",
                required = true,
            },
        },
    },
}

M.MemorySessionSummary = {
    type = "structure",
    id = "MemorySessionSummary",
    members = {
        memoryId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        sessionStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        sessionExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        summaryText = {
            type = "string",
        },
    },
}

M.Memory = {
    type = "union",
    id = "Memory",
    members = {
        sessionSummary = M.MemorySessionSummary,
    },
}

M.GetAgentMemoryOutput = {
    type = "structure",
    id = "GetAgentMemoryOutput",
    members = {
        nextToken = {
            type = "string",
        },
        memoryContents = {
            type = "list",
            member = M.Memory,
        },
    },
}

M.TextPrompt = {
    type = "structure",
    id = "TextPrompt",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputPrompt = {
    type = "union",
    id = "InputPrompt",
    members = {
        textPrompt = M.TextPrompt,
    },
}

M.OptimizePromptInput = {
    type = "structure",
    id = "OptimizePromptInput",
    members = {
        input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputPrompt }),
        targetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyzePromptEvent = {
    type = "structure",
    id = "AnalyzePromptEvent",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptimizedPrompt = {
    type = "union",
    id = "OptimizedPrompt",
    members = {
        textPrompt = M.TextPrompt,
    },
}

M.OptimizedPromptEvent = {
    type = "structure",
    id = "OptimizedPromptEvent",
    members = {
        optimizedPrompt = M.OptimizedPrompt,
    },
}

M.OptimizedPromptStream = {
    type = "union",
    id = "OptimizedPromptStream",
    members = {
        optimizedPromptEvent = M.OptimizedPromptEvent,
        analyzePromptEvent = M.AnalyzePromptEvent,
        internalServerException = M.InternalServerException,
        throttlingException = M.ThrottlingException,
        validationException = M.ValidationException,
        dependencyFailedException = M.DependencyFailedException,
        accessDeniedException = M.AccessDeniedException,
        badGatewayException = M.BadGatewayException,
    },
}

M.OptimizePromptOutput = {
    type = "structure",
    id = "OptimizePromptOutput",
    members = {
        optimizedPrompt = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.OptimizedPromptStream }),
    },
}

M.RerankTextDocument = {
    type = "structure",
    id = "RerankTextDocument",
    members = {
        text = {
            type = "string",
        },
    },
}

M.RerankQueryContentType = {
    TEXT = "TEXT",
}

M.RerankQuery = {
    type = "structure",
    id = "RerankQuery",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RerankTextDocument }),
    },
}

M.BedrockRerankingModelConfiguration = {
    type = "structure",
    id = "BedrockRerankingModelConfiguration",
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

M.BedrockRerankingConfiguration = {
    type = "structure",
    id = "BedrockRerankingConfiguration",
    members = {
        numberOfResults = {
            type = "integer",
        },
        modelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BedrockRerankingModelConfiguration }),
    },
}

M.RerankingConfigurationType = {
    BEDROCK_RERANKING_MODEL = "BEDROCK_RERANKING_MODEL",
}

M.RerankingConfiguration = {
    type = "structure",
    id = "RerankingConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bedrockRerankingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BedrockRerankingConfiguration }),
    },
}

M.RerankDocumentType = {
    TEXT = "TEXT",
    JSON = "JSON",
}

M.RerankDocument = {
    type = "structure",
    id = "RerankDocument",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textDocument = M.RerankTextDocument,
        jsonDocument = {
            type = "document",
        },
    },
}

M.RerankSourceType = {
    INLINE = "INLINE",
}

M.RerankSource = {
    type = "structure",
    id = "RerankSource",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inlineDocumentSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RerankDocument }),
    },
}

M.RerankInput = {
    type = "structure",
    id = "RerankInput",
    members = {
        queries = {
            type = "list",
            member = M.RerankQuery,
            traits = {
                required = true,
            },
        },
        sources = {
            type = "list",
            member = M.RerankSource,
            traits = {
                required = true,
            },
        },
        rerankingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RerankingConfiguration }),
        nextToken = {
            type = "string",
        },
    },
}

M.RerankResult = {
    type = "structure",
    id = "RerankResult",
    members = {
        index = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        relevanceScore = {
            type = "float",
            traits = {
                required = true,
            },
        },
        document = M.RerankDocument,
    },
}

M.RerankOutput = {
    type = "structure",
    id = "RerankOutput",
    members = {
        results = {
            type = "list",
            member = M.RerankResult,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RetrieveAndGenerateInput = {
    type = "structure",
    id = "RetrieveAndGenerateInput",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailConfiguration = {
    type = "structure",
    id = "GuardrailConfiguration",
    members = {
        guardrailId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardrailVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TextInferenceConfig = {
    type = "structure",
    id = "TextInferenceConfig",
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

M.InferenceConfig = {
    type = "structure",
    id = "InferenceConfig",
    members = {
        textInferenceConfig = M.TextInferenceConfig,
    },
}

M.PromptTemplate = {
    type = "structure",
    id = "PromptTemplate",
    members = {
        textPromptTemplate = {
            type = "string",
        },
    },
}

M.ExternalSourcesGenerationConfiguration = {
    type = "structure",
    id = "ExternalSourcesGenerationConfiguration",
    members = {
        promptTemplate = M.PromptTemplate,
        guardrailConfiguration = M.GuardrailConfiguration,
        inferenceConfig = M.InferenceConfig,
        additionalModelRequestFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.ByteContentDoc = {
    type = "structure",
    id = "ByteContentDoc",
    members = {
        identifier = {
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
        data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ObjectDoc = {
    type = "structure",
    id = "S3ObjectDoc",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExternalSourceType = {
    S3 = "S3",
    BYTE_CONTENT = "BYTE_CONTENT",
}

M.ExternalSource = {
    type = "structure",
    id = "ExternalSource",
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = M.S3ObjectDoc,
        byteContent = M.ByteContentDoc,
    },
}

M.ExternalSourcesRetrieveAndGenerateConfiguration = {
    type = "structure",
    id = "ExternalSourcesRetrieveAndGenerateConfiguration",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sources = {
            type = "list",
            member = M.ExternalSource,
            traits = {
                required = true,
            },
        },
        generationConfiguration = M.ExternalSourcesGenerationConfiguration,
    },
}

M.GenerationConfiguration = {
    type = "structure",
    id = "GenerationConfiguration",
    members = {
        promptTemplate = M.PromptTemplate,
        guardrailConfiguration = M.GuardrailConfiguration,
        inferenceConfig = M.InferenceConfig,
        additionalModelRequestFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.QueryTransformationType = {
    QUERY_DECOMPOSITION = "QUERY_DECOMPOSITION",
}

M.QueryTransformationConfiguration = {
    type = "structure",
    id = "QueryTransformationConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OrchestrationConfiguration = {
    type = "structure",
    id = "OrchestrationConfiguration",
    members = {
        promptTemplate = M.PromptTemplate,
        inferenceConfig = M.InferenceConfig,
        additionalModelRequestFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        queryTransformationConfiguration = M.QueryTransformationConfiguration,
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.RetrieveAndGenerateType = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    EXTERNAL_SOURCES = "EXTERNAL_SOURCES",
}

M.RetrieveAndGenerateSessionConfiguration = {
    type = "structure",
    id = "RetrieveAndGenerateSessionConfiguration",
    members = {
        kmsKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuadrailAction = {
    INTERVENED = "INTERVENED",
    NONE = "NONE",
}

M.RetrieveAndGenerateOutput = {
    type = "structure",
    id = "RetrieveAndGenerateOutput",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetrieveAndGenerateOperationOutput = {
    type = "structure",
    id = "RetrieveAndGenerateOperationOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetrieveAndGenerateOutput }),
        citations = {
            type = "list",
            member = M.Citation,
        },
        guardrailAction = {
            type = "string",
        },
    },
}

M.CitationEvent = {
    type = "structure",
    id = "CitationEvent",
    members = {
        citation = M.Citation,
        generatedResponsePart = M.GeneratedResponsePart,
        retrievedReferences = {
            type = "list",
            member = M.RetrievedReference,
        },
    },
}

M.GuardrailEvent = {
    type = "structure",
    id = "GuardrailEvent",
    members = {
        action = {
            type = "string",
        },
    },
}

M.RetrieveAndGenerateOutputEvent = {
    type = "structure",
    id = "RetrieveAndGenerateOutputEvent",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetrieveAndGenerateStreamResponseOutput = {
    type = "union",
    id = "RetrieveAndGenerateStreamResponseOutput",
    members = {
        output = M.RetrieveAndGenerateOutputEvent,
        citation = M.CitationEvent,
        guardrail = M.GuardrailEvent,
        internalServerException = M.InternalServerException,
        validationException = M.ValidationException,
        resourceNotFoundException = M.ResourceNotFoundException,
        serviceQuotaExceededException = M.ServiceQuotaExceededException,
        throttlingException = M.ThrottlingException,
        accessDeniedException = M.AccessDeniedException,
        conflictException = M.ConflictException,
        dependencyFailedException = M.DependencyFailedException,
        badGatewayException = M.BadGatewayException,
    },
}

M.RetrieveAndGenerateStreamOutput = {
    type = "structure",
    id = "RetrieveAndGenerateStreamOutput",
    members = {
        stream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RetrieveAndGenerateStreamResponseOutput }),
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-bedrock-knowledge-base-session-id",
                required = true,
            },
        },
    },
}

M.InputImageFormat = {
    png = "png",
    jpeg = "jpeg",
    gif = "gif",
    webp = "webp",
}

M.InputImage = {
    type = "structure",
    id = "InputImage",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inlineContent = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.KnowledgeBaseQueryType = {
    TEXT = "TEXT",
    IMAGE = "IMAGE",
}

M.KnowledgeBaseQuery = {
    type = "structure",
    id = "KnowledgeBaseQuery",
    members = {
        type = {
            type = "string",
            traits = {
                default = "TEXT",
            },
        },
        text = {
            type = "string",
            traits = {
                default = "",
            },
        },
        image = M.InputImage,
    },
}

M.KnowledgeBaseRetrievalResult = {
    type = "structure",
    id = "KnowledgeBaseRetrievalResult",
    members = {
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetrievalResultContent }),
        location = M.RetrievalResultLocation,
        score = {
            type = "double",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
    },
}

M.RetrieveOutput = {
    type = "structure",
    id = "RetrieveOutput",
    members = {
        retrievalResults = {
            type = "list",
            member = M.KnowledgeBaseRetrievalResult,
            traits = {
                required = true,
            },
        },
        guardrailAction = {
            type = "string",
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
        sessionMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        encryptionKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SessionStatus = {
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
    ENDED = "ENDED",
}

M.CreateSessionOutput = {
    type = "structure",
    id = "CreateSessionOutput",
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
        sessionStatus = {
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
    },
}

M.DeleteSessionInput = {
    type = "structure",
    id = "DeleteSessionInput",
    members = {
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSessionOutput = {
    type = "structure",
    id = "DeleteSessionOutput",
}

M.EndSessionInput = {
    type = "structure",
    id = "EndSessionInput",
    members = {
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EndSessionOutput = {
    type = "structure",
    id = "EndSessionOutput",
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
        sessionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    id = "GetSessionInput",
    members = {
        sessionIdentifier = {
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
        sessionStatus = {
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
        sessionMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.CreateInvocationInput = {
    type = "structure",
    id = "CreateInvocationInput",
    members = {
        invocationId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateInvocationOutput = {
    type = "structure",
    id = "CreateInvocationOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationId = {
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
    },
}

M.ListInvocationsInput = {
    type = "structure",
    id = "ListInvocationsInput",
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
                default = 10,
                http_query = "maxResults",
            },
        },
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InvocationSummary = {
    type = "structure",
    id = "InvocationSummary",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationId = {
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
    },
}

M.ListInvocationsOutput = {
    type = "structure",
    id = "ListInvocationsOutput",
    members = {
        invocationSummaries = {
            type = "list",
            member = M.InvocationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetInvocationStepInput = {
    type = "structure",
    id = "GetInvocationStepInput",
    members = {
        invocationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationStepId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
    GIF = "gif",
    WEBP = "webp",
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

M.ImageSource = {
    type = "union",
    id = "ImageSource",
    members = {
        bytes = {
            type = "blob",
        },
        s3Location = M.S3Location,
    },
}

M.ImageBlock = {
    type = "structure",
    id = "ImageBlock",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageSource }),
    },
}

M.BedrockSessionContentBlock = {
    type = "union",
    id = "BedrockSessionContentBlock",
    members = {
        text = {
            type = "string",
        },
        image = M.ImageBlock,
    },
}

M.InvocationStepPayload = {
    type = "union",
    id = "InvocationStepPayload",
    members = {
        contentBlocks = {
            type = "list",
            member = M.BedrockSessionContentBlock,
        },
    },
}

M.InvocationStep = {
    type = "structure",
    id = "InvocationStep",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationStepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationStepTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvocationStepPayload }),
    },
}

M.GetInvocationStepOutput = {
    type = "structure",
    id = "GetInvocationStepOutput",
    members = {
        invocationStep = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvocationStep }),
    },
}

M.ListInvocationStepsInput = {
    type = "structure",
    id = "ListInvocationStepsInput",
    members = {
        invocationIdentifier = {
            type = "string",
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
                default = 10,
                http_query = "maxResults",
            },
        },
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InvocationStepSummary = {
    type = "structure",
    id = "InvocationStepSummary",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationStepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationStepTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListInvocationStepsOutput = {
    type = "structure",
    id = "ListInvocationStepsOutput",
    members = {
        invocationStepSummaries = {
            type = "list",
            member = M.InvocationStepSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutInvocationStepInput = {
    type = "structure",
    id = "PutInvocationStepInput",
    members = {
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        invocationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invocationStepTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvocationStepPayload }),
        invocationStepId = {
            type = "string",
        },
    },
}

M.PutInvocationStepOutput = {
    type = "structure",
    id = "PutInvocationStepOutput",
    members = {
        invocationStepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
    id = "ListSessionsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
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
        sessionStatus = {
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

M.ListSessionsOutput = {
    type = "structure",
    id = "ListSessionsOutput",
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

M.UpdateSessionInput = {
    type = "structure",
    id = "UpdateSessionInput",
    members = {
        sessionMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateSessionOutput = {
    type = "structure",
    id = "UpdateSessionOutput",
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
        sessionStatus = {
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

M.RetrievalFilter = {
    type = "union",
    id = "RetrievalFilter",
    members = {
        equals = M.FilterAttribute,
        notEquals = M.FilterAttribute,
        greaterThan = M.FilterAttribute,
        greaterThanOrEquals = M.FilterAttribute,
        lessThan = M.FilterAttribute,
        lessThanOrEquals = M.FilterAttribute,
        in = M.FilterAttribute,
        notIn = M.FilterAttribute,
        startsWith = M.FilterAttribute,
        listContains = M.FilterAttribute,
        stringContains = M.FilterAttribute,
        andAll = {
            type = "list",
            member = M.RetrievalFilter,
        },
        orAll = {
            type = "list",
            member = M.RetrievalFilter,
        },
    },
}

M.KnowledgeBaseVectorSearchConfiguration = {
    type = "structure",
    id = "KnowledgeBaseVectorSearchConfiguration",
    members = {
        numberOfResults = {
            type = "integer",
            traits = {
                default = 5,
            },
        },
        overrideSearchType = {
            type = "string",
        },
        filter = M.RetrievalFilter,
        rerankingConfiguration = M.VectorSearchRerankingConfiguration,
        implicitFilterConfiguration = M.ImplicitFilterConfiguration,
    },
}

M.KnowledgeBaseRetrievalConfiguration = {
    type = "structure",
    id = "KnowledgeBaseRetrievalConfiguration",
    members = {
        vectorSearchConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseVectorSearchConfiguration }),
    },
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retrievalConfiguration = M.KnowledgeBaseRetrievalConfiguration,
    },
}

M.KnowledgeBaseConfiguration = {
    type = "structure",
    id = "KnowledgeBaseConfiguration",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retrievalConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseRetrievalConfiguration }),
    },
}

M.KnowledgeBaseRetrieveAndGenerateConfiguration = {
    type = "structure",
    id = "KnowledgeBaseRetrieveAndGenerateConfiguration",
    members = {
        knowledgeBaseId = {
            type = "string",
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
        retrievalConfiguration = M.KnowledgeBaseRetrievalConfiguration,
        generationConfiguration = M.GenerationConfiguration,
        orchestrationConfiguration = M.OrchestrationConfiguration,
    },
}

M.RetrieveInput = {
    type = "structure",
    id = "RetrieveInput",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        retrievalQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseQuery }),
        retrievalConfiguration = M.KnowledgeBaseRetrievalConfiguration,
        guardrailConfiguration = M.GuardrailConfiguration,
        nextToken = {
            type = "string",
        },
    },
}

M.RetrieveAndGenerateConfiguration = {
    type = "structure",
    id = "RetrieveAndGenerateConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = M.KnowledgeBaseRetrieveAndGenerateConfiguration,
        externalSourcesConfiguration = M.ExternalSourcesRetrieveAndGenerateConfiguration,
    },
}

M.Collaborator = {
    type = "structure",
    id = "Collaborator",
    members = {
        customerEncryptionKeyArn = {
            type = "string",
        },
        foundationModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        actionGroups = {
            type = "list",
            member = M.AgentActionGroup,
        },
        knowledgeBases = {
            type = "list",
            member = M.KnowledgeBase,
        },
        guardrailConfiguration = M.GuardrailConfigurationWithArn,
        promptOverrideConfiguration = M.PromptOverrideConfiguration,
        agentCollaboration = {
            type = "string",
        },
        collaboratorConfigurations = {
            type = "list",
            member = M.CollaboratorConfiguration,
        },
        agentName = {
            type = "string",
        },
    },
}

M.RetrieveAndGenerateOperationInput = {
    type = "structure",
    id = "RetrieveAndGenerateOperationInput",
    members = {
        sessionId = {
            type = "string",
        },
        input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetrieveAndGenerateInput }),
        retrieveAndGenerateConfiguration = M.RetrieveAndGenerateConfiguration,
        sessionConfiguration = M.RetrieveAndGenerateSessionConfiguration,
    },
}

M.RetrieveAndGenerateStreamInput = {
    type = "structure",
    id = "RetrieveAndGenerateStreamInput",
    members = {
        sessionId = {
            type = "string",
        },
        input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetrieveAndGenerateInput }),
        retrieveAndGenerateConfiguration = M.RetrieveAndGenerateConfiguration,
        sessionConfiguration = M.RetrieveAndGenerateSessionConfiguration,
    },
}

M.SessionState = {
    type = "structure",
    id = "SessionState",
    members = {
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        promptSessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        returnControlInvocationResults = {
            type = "list",
            member = M.InvocationResultMember,
        },
        invocationId = {
            type = "string",
        },
        files = {
            type = "list",
            member = M.InputFile,
        },
        knowledgeBaseConfigurations = {
            type = "list",
            member = M.KnowledgeBaseConfiguration,
        },
        conversationHistory = M.ConversationHistory,
    },
}

M.InvokeAgentInput = {
    type = "structure",
    id = "InvokeAgentInput",
    members = {
        sessionState = M.SessionState,
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
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        endSession = {
            type = "boolean",
        },
        enableTrace = {
            type = "boolean",
        },
        inputText = {
            type = "string",
        },
        memoryId = {
            type = "string",
        },
        bedrockModelConfigurations = M.BedrockModelConfigurations,
        streamingConfigurations = M.StreamingConfigurations,
        promptCreationConfigurations = M.PromptCreationConfigurations,
        sourceArn = {
            type = "string",
            traits = {
                http_header = "x-amz-source-arn",
            },
        },
    },
}

M.InvokeInlineAgentInput = {
    type = "structure",
    id = "InvokeInlineAgentInput",
    members = {
        customerEncryptionKeyArn = {
            type = "string",
        },
        foundationModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        actionGroups = {
            type = "list",
            member = M.AgentActionGroup,
        },
        knowledgeBases = {
            type = "list",
            member = M.KnowledgeBase,
        },
        guardrailConfiguration = M.GuardrailConfigurationWithArn,
        promptOverrideConfiguration = M.PromptOverrideConfiguration,
        agentCollaboration = {
            type = "string",
        },
        collaboratorConfigurations = {
            type = "list",
            member = M.CollaboratorConfiguration,
        },
        agentName = {
            type = "string",
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        endSession = {
            type = "boolean",
        },
        enableTrace = {
            type = "boolean",
        },
        inputText = {
            type = "string",
        },
        streamingConfigurations = M.StreamingConfigurations,
        promptCreationConfigurations = M.PromptCreationConfigurations,
        inlineSessionState = M.InlineSessionState,
        collaborators = {
            type = "list",
            member = M.Collaborator,
        },
        bedrockModelConfigurations = M.InlineBedrockModelConfigurations,
        orchestrationType = {
            type = "string",
        },
        customOrchestration = M.CustomOrchestration,
    },
}

return M
