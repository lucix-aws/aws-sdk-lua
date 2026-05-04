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

M.ExecutionType = {
    LAMBDA = "LAMBDA",
    RETURN_CONTROL = "RETURN_CONTROL",
}

M.Parameter = {
    type = "structure",
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
    members = {
        content = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.ActionGroupInvocationInput = {
    type = "structure",
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
            member_type = "structure",
        },
        requestBody = {
            type = "structure",
        },
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
    members = {
        inputTokens = {
            type = "number",
        },
        outputTokens = {
            type = "number",
        },
    },
}

M.Metadata = {
    type = "structure",
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
            type = "number",
        },
        operationTotalTimeMs = {
            type = "number",
        },
        clientRequestId = {
            type = "string",
        },
        usage = {
            type = "structure",
        },
    },
}

M.ActionGroupInvocationOutput = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
        metadata = {
            type = "structure",
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

M.ActionInvocationType = {
    RESULT = "RESULT",
    USER_CONFIRMATION = "USER_CONFIRMATION",
    USER_CONFIRMATION_AND_RESULT = "USER_CONFIRMATION_AND_RESULT",
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

M.ParameterType = {
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

M.FunctionDefinition = {
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

M.AgentActionGroup = {
    type = "structure",
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
        actionGroupExecutor = {
            type = "union",
        },
        apiSchema = {
            type = "union",
        },
        functionSchema = {
            type = "union",
        },
        parentActionGroupSignatureParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.ImageInput = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentBody = {
    type = "structure",
    members = {
        body = {
            type = "string",
        },
        images = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResponseState = {
    FAILURE = "FAILURE",
    REPROMPT = "REPROMPT",
}

M.ApiResult = {
    type = "structure",
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
            type = "number",
        },
        responseBody = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        agentId = {
            type = "string",
        },
    },
}

M.FunctionResult = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
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
    members = {
        apiResult = {
            type = "structure",
        },
        functionResult = {
            type = "structure",
        },
    },
}

M.ReturnControlResults = {
    type = "structure",
    members = {
        invocationId = {
            type = "string",
        },
        returnControlInvocationResults = {
            type = "list",
            member_type = "union",
        },
    },
}

M.PayloadType = {
    TEXT = "TEXT",
    RETURN_CONTROL = "RETURN_CONTROL",
}

M.AgentCollaboratorInputPayload = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        returnControlResults = {
            type = "structure",
        },
    },
}

M.AgentCollaboratorInvocationInput = {
    type = "structure",
    members = {
        agentCollaboratorName = {
            type = "string",
        },
        agentCollaboratorAliasArn = {
            type = "string",
        },
        input = {
            type = "structure",
        },
    },
}

M.ApiParameter = {
    type = "structure",
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
    members = {
        properties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ApiRequestBody = {
    type = "structure",
    members = {
        content = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ApiInvocationInput = {
    type = "structure",
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
            member_type = "structure",
        },
        requestBody = {
            type = "structure",
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

M.FunctionParameter = {
    type = "structure",
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
    members = {
        actionGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "list",
            member_type = "structure",
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
    members = {
        apiInvocationInput = {
            type = "structure",
        },
        functionInvocationInput = {
            type = "structure",
        },
    },
}

M.ReturnControlPayload = {
    type = "structure",
    members = {
        invocationInputs = {
            type = "list",
            member_type = "union",
        },
        invocationId = {
            type = "string",
        },
    },
}

M.AgentCollaboratorOutputPayload = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        returnControlPayload = {
            type = "structure",
        },
    },
}

M.AgentCollaboratorInvocationOutput = {
    type = "structure",
    members = {
        agentCollaboratorName = {
            type = "string",
        },
        agentCollaboratorAliasArn = {
            type = "string",
        },
        output = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.Caller = {
    type = "union",
    members = {
        agentAliasArn = {
            type = "string",
        },
    },
}

M.CustomOrchestrationTraceEvent = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CustomOrchestrationTrace = {
    type = "structure",
    members = {
        traceId = {
            type = "string",
        },
        event = {
            type = "structure",
        },
    },
}

M.FailureTrace = {
    type = "structure",
    members = {
        traceId = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        failureCode = {
            type = "number",
        },
        metadata = {
            type = "structure",
        },
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
    members = {
        filters = {
            type = "list",
            member_type = "structure",
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
    members = {
        piiEntities = {
            type = "list",
            member_type = "structure",
        },
        regexes = {
            type = "list",
            member_type = "structure",
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
    members = {
        topics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailWordPolicyAction = {
    BLOCKED = "BLOCKED",
}

M.GuardrailCustomWord = {
    type = "structure",
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
    members = {
        customWords = {
            type = "list",
            member_type = "structure",
        },
        managedWordLists = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailAssessment = {
    type = "structure",
    members = {
        topicPolicy = {
            type = "structure",
        },
        contentPolicy = {
            type = "structure",
        },
        wordPolicy = {
            type = "structure",
        },
        sensitiveInformationPolicy = {
            type = "structure",
        },
    },
}

M.GuardrailTrace = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        traceId = {
            type = "string",
        },
        inputAssessments = {
            type = "list",
            member_type = "structure",
        },
        outputAssessments = {
            type = "list",
            member_type = "structure",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.CodeInterpreterInvocationInput = {
    type = "structure",
    members = {
        code = {
            type = "string",
        },
        files = {
            type = "list",
            member_type = "string",
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
    members = {
        traceId = {
            type = "string",
        },
        invocationType = {
            type = "string",
        },
        actionGroupInvocationInput = {
            type = "structure",
        },
        knowledgeBaseLookupInput = {
            type = "structure",
        },
        codeInterpreterInvocationInput = {
            type = "structure",
        },
        agentCollaboratorInvocationInput = {
            type = "structure",
        },
    },
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

M.PromptType = {
    PRE_PROCESSING = "PRE_PROCESSING",
    ORCHESTRATION = "ORCHESTRATION",
    KNOWLEDGE_BASE_RESPONSE_GENERATION = "KNOWLEDGE_BASE_RESPONSE_GENERATION",
    POST_PROCESSING = "POST_PROCESSING",
    ROUTING_CLASSIFIER = "ROUTING_CLASSIFIER",
}

M.ModelInvocationInput = {
    type = "structure",
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
        inferenceConfiguration = {
            type = "structure",
        },
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
    members = {
        content = {
            type = "string",
        },
    },
}

M.ReasoningTextBlock = {
    type = "structure",
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
    members = {
        reasoningText = {
            type = "structure",
        },
        redactedContent = {
            type = "blob",
        },
    },
}

M.OrchestrationModelInvocationOutput = {
    type = "structure",
    members = {
        traceId = {
            type = "string",
        },
        rawResponse = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
        reasoningContent = {
            type = "union",
        },
    },
}

M.CodeInterpreterInvocationOutput = {
    type = "structure",
    members = {
        executionOutput = {
            type = "string",
        },
        executionError = {
            type = "string",
        },
        files = {
            type = "list",
            member_type = "string",
        },
        executionTimeout = {
            type = "boolean",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.FinalResponse = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.AudioSegment = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        byteContent = {
            type = "string",
        },
        video = {
            type = "structure",
        },
        audio = {
            type = "structure",
        },
        row = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RetrievalResultConfluenceLocation = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultCustomDocumentLocation = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.RetrievalResultKendraDocumentLocation = {
    type = "structure",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.RetrievalResultS3Location = {
    type = "structure",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.RetrievalResultSalesforceLocation = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultSharePointLocation = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultSqlLocation = {
    type = "structure",
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
    members = {
        url = {
            type = "string",
        },
    },
}

M.RetrievalResultLocation = {
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
        webLocation = {
            type = "structure",
        },
        confluenceLocation = {
            type = "structure",
        },
        salesforceLocation = {
            type = "structure",
        },
        sharePointLocation = {
            type = "structure",
        },
        customDocumentLocation = {
            type = "structure",
        },
        kendraDocumentLocation = {
            type = "structure",
        },
        sqlLocation = {
            type = "structure",
        },
    },
}

M.RetrievedReference = {
    type = "structure",
    members = {
        content = {
            type = "structure",
        },
        location = {
            type = "structure",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
    },
}

M.KnowledgeBaseLookupOutput = {
    type = "structure",
    members = {
        retrievedReferences = {
            type = "list",
            member_type = "structure",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.Source = {
    ACTION_GROUP = "ACTION_GROUP",
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    PARSER = "PARSER",
}

M.RepromptResponse = {
    type = "structure",
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
    members = {
        traceId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        actionGroupInvocationOutput = {
            type = "structure",
        },
        agentCollaboratorInvocationOutput = {
            type = "structure",
        },
        knowledgeBaseLookupOutput = {
            type = "structure",
        },
        finalResponse = {
            type = "structure",
        },
        repromptResponse = {
            type = "structure",
        },
        codeInterpreterInvocationOutput = {
            type = "structure",
        },
    },
}

M.Rationale = {
    type = "structure",
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
    members = {
        rationale = {
            type = "structure",
        },
        invocationInput = {
            type = "structure",
        },
        observation = {
            type = "structure",
        },
        modelInvocationInput = {
            type = "structure",
        },
        modelInvocationOutput = {
            type = "structure",
        },
    },
}

M.PostProcessingParsedResponse = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.PostProcessingModelInvocationOutput = {
    type = "structure",
    members = {
        traceId = {
            type = "string",
        },
        parsedResponse = {
            type = "structure",
        },
        rawResponse = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
        reasoningContent = {
            type = "union",
        },
    },
}

M.PostProcessingTrace = {
    type = "union",
    members = {
        modelInvocationInput = {
            type = "structure",
        },
        modelInvocationOutput = {
            type = "structure",
        },
    },
}

M.PreProcessingParsedResponse = {
    type = "structure",
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
    members = {
        traceId = {
            type = "string",
        },
        parsedResponse = {
            type = "structure",
        },
        rawResponse = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
        reasoningContent = {
            type = "union",
        },
    },
}

M.PreProcessingTrace = {
    type = "union",
    members = {
        modelInvocationInput = {
            type = "structure",
        },
        modelInvocationOutput = {
            type = "structure",
        },
    },
}

M.RoutingClassifierModelInvocationOutput = {
    type = "structure",
    members = {
        traceId = {
            type = "string",
        },
        rawResponse = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.RoutingClassifierTrace = {
    type = "union",
    members = {
        invocationInput = {
            type = "structure",
        },
        observation = {
            type = "structure",
        },
        modelInvocationInput = {
            type = "structure",
        },
        modelInvocationOutput = {
            type = "structure",
        },
    },
}

M.Trace = {
    type = "union",
    members = {
        guardrailTrace = {
            type = "structure",
        },
        preProcessingTrace = {
            type = "union",
        },
        orchestrationTrace = {
            type = "union",
        },
        postProcessingTrace = {
            type = "union",
        },
        routingClassifierTrace = {
            type = "union",
        },
        failureTrace = {
            type = "structure",
        },
        customOrchestrationTrace = {
            type = "structure",
        },
    },
}

M.TracePart = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
        },
        trace = {
            type = "union",
        },
        callerChain = {
            type = "list",
            member_type = "union",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetFlowExecutionInput = {
    type = "structure",
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
            },
        },
        endedAt = {
            type = "timestamp",
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            },
        },
        satisfiedConditions = {
            type = "list",
            member_type = "structure",
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
    members = {
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowInputField = {
    type = "structure",
    members = {
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
    },
}

M.FlowExecutionInputEvent = {
    type = "structure",
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
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowOutputField = {
    type = "structure",
    members = {
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
    },
}

M.FlowExecutionOutputEvent = {
    type = "structure",
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
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NodeActionEvent = {
    type = "structure",
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
    members = {
        agentTraces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NodeDependencyEvent = {
    type = "structure",
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
            },
        },
        traceElements = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        index = {
            type = "number",
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
    members = {
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
        source = {
            type = "structure",
        },
        type = {
            type = "string",
        },
        category = {
            type = "string",
        },
        executionChain = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NodeInputEvent = {
    type = "structure",
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
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NodeOutputNext = {
    type = "structure",
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
    members = {
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
        next = {
            type = "list",
            member_type = "structure",
        },
        type = {
            type = "string",
        },
    },
}

M.NodeOutputEvent = {
    type = "structure",
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
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowExecutionEvent = {
    type = "union",
    members = {
        flowInputEvent = {
            type = "structure",
        },
        flowOutputEvent = {
            type = "structure",
        },
        nodeInputEvent = {
            type = "structure",
        },
        nodeOutputEvent = {
            type = "structure",
        },
        conditionResultEvent = {
            type = "structure",
        },
        nodeFailureEvent = {
            type = "structure",
        },
        flowFailureEvent = {
            type = "structure",
        },
        nodeActionEvent = {
            type = "structure",
        },
        nodeDependencyEvent = {
            type = "structure",
        },
    },
}

M.ListFlowExecutionEventsOutput = {
    type = "structure",
    members = {
        flowExecutionEvents = {
            type = "list",
            member_type = "union",
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

M.FlowExecutionSummary = {
    type = "structure",
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
            },
        },
        endedAt = {
            type = "timestamp",
        },
    },
}

M.ListFlowExecutionsOutput = {
    type = "structure",
    members = {
        flowExecutionSummaries = {
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

M.BadGatewayException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DependencyFailedException = {
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

M.FlowInputContent = {
    type = "union",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowInput = {
    type = "structure",
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        latency = {
            type = "string",
        },
    },
}

M.ModelPerformanceConfiguration = {
    type = "structure",
    members = {
        performanceConfig = {
            type = "structure",
        },
    },
}

M.StartFlowExecutionInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        modelPerformanceConfiguration = {
            type = "structure",
        },
    },
}

M.StartFlowExecutionOutput = {
    type = "structure",
    members = {
        executionArn = {
            type = "string",
        },
    },
}

M.StopFlowExecutionInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        enableTrace = {
            type = "boolean",
        },
        modelPerformanceConfiguration = {
            type = "structure",
        },
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowOutputContent = {
    type = "union",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowOutputEvent = {
    type = "structure",
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceCondition = {
    type = "structure",
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
            },
        },
        satisfiedConditions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceNodeActionEvent = {
    type = "structure",
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
    members = {
        agentTraces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FlowTraceDependencyEvent = {
    type = "structure",
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
            },
        },
        traceElements = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceNodeInputContent = {
    type = "union",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowTraceNodeInputExecutionChainItem = {
    type = "structure",
    members = {
        nodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        index = {
            type = "number",
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
    members = {
        nodeInputName = {
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
        source = {
            type = "structure",
        },
        type = {
            type = "string",
        },
        category = {
            type = "string",
        },
        executionChain = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FlowTraceNodeInputEvent = {
    type = "structure",
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
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTraceNodeOutputContent = {
    type = "union",
    members = {
        document = {
            type = "document",
        },
    },
}

M.FlowTraceNodeOutputNext = {
    type = "structure",
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
    members = {
        nodeOutputName = {
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
        next = {
            type = "list",
            member_type = "structure",
        },
        type = {
            type = "string",
        },
    },
}

M.FlowTraceNodeOutputEvent = {
    type = "structure",
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
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowTrace = {
    type = "union",
    members = {
        nodeInputTrace = {
            type = "structure",
        },
        nodeOutputTrace = {
            type = "structure",
        },
        conditionNodeResultTrace = {
            type = "structure",
        },
        nodeActionTrace = {
            type = "structure",
        },
        nodeDependencyTrace = {
            type = "structure",
        },
    },
}

M.FlowTraceEvent = {
    type = "structure",
    members = {
        trace = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowResponseStream = {
    type = "union",
    members = {
        flowOutputEvent = {
            type = "structure",
        },
        flowCompletionEvent = {
            type = "structure",
        },
        flowTraceEvent = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        resourceNotFoundException = {
            type = "structure",
        },
        serviceQuotaExceededException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        conflictException = {
            type = "structure",
        },
        dependencyFailedException = {
            type = "structure",
        },
        badGatewayException = {
            type = "structure",
        },
        flowMultiTurnInputRequestEvent = {
            type = "structure",
        },
    },
}

M.InvokeFlowOutput = {
    type = "structure",
    members = {
        responseStream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = {
            type = "structure",
        },
    },
}

M.TransformationConfiguration = {
    type = "structure",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textToSqlConfiguration = {
            type = "structure",
        },
    },
}

M.GenerateQueryInput = {
    type = "structure",
    members = {
        queryGenerationInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        transformationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GeneratedQueryType = {
    REDSHIFT_SQL = "REDSHIFT_SQL",
}

M.GeneratedQuery = {
    type = "structure",
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
    members = {
        queries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BedrockModelConfigurations = {
    type = "structure",
    members = {
        performanceConfig = {
            type = "structure",
        },
    },
}

M.PromptCreationConfigurations = {
    type = "structure",
    members = {
        previousConversationTurnsToInclude = {
            type = "number",
        },
        excludePreviousThinkingSteps = {
            type = "boolean",
        },
    },
}

M.ContentBlock = {
    type = "union",
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

M.ConversationHistory = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ByteContentFile = {
    type = "structure",
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
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = {
            type = "structure",
        },
        byteContent = {
            type = "structure",
        },
    },
}

M.FileUseCase = {
    CODE_INTERPRETER = "CODE_INTERPRETER",
    CHAT = "CHAT",
}

M.InputFile = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        metadataAttributes = {
            type = "list",
            member_type = "structure",
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

M.StreamingConfigurations = {
    type = "structure",
    members = {
        streamFinalResponse = {
            type = "boolean",
        },
        applyGuardrailInterval = {
            type = "number",
        },
    },
}

M.Span = {
    type = "structure",
    members = {
        start = {
            type = "number",
        },
        end = {
            type = "number",
        },
    },
}

M.TextResponsePart = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
        span = {
            type = "structure",
        },
    },
}

M.GeneratedResponsePart = {
    type = "structure",
    members = {
        textResponsePart = {
            type = "structure",
        },
    },
}

M.Citation = {
    type = "structure",
    members = {
        generatedResponsePart = {
            type = "structure",
        },
        retrievedReferences = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Attribution = {
    type = "structure",
    members = {
        citations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PayloadPart = {
    type = "structure",
    members = {
        bytes = {
            type = "blob",
        },
        attribution = {
            type = "structure",
        },
    },
}

M.OutputFile = {
    type = "structure",
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
    members = {
        files = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModelNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResponseStream = {
    type = "union",
    members = {
        chunk = {
            type = "structure",
        },
        trace = {
            type = "structure",
        },
        returnControl = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        resourceNotFoundException = {
            type = "structure",
        },
        serviceQuotaExceededException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        conflictException = {
            type = "structure",
        },
        dependencyFailedException = {
            type = "structure",
        },
        badGatewayException = {
            type = "structure",
        },
        modelNotReadyException = {
            type = "structure",
        },
        files = {
            type = "structure",
        },
    },
}

M.InvokeAgentOutput = {
    type = "structure",
    members = {
        completion = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        performanceConfig = {
            type = "structure",
        },
    },
}

M.RelayConversationHistory = {
    TO_COLLABORATOR = "TO_COLLABORATOR",
    DISABLED = "DISABLED",
}

M.CollaboratorConfiguration = {
    type = "structure",
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

M.InlineSessionState = {
    type = "structure",
    members = {
        sessionAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        promptSessionAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        returnControlInvocationResults = {
            type = "list",
            member_type = "union",
        },
        invocationId = {
            type = "string",
        },
        files = {
            type = "list",
            member_type = "structure",
        },
        conversationHistory = {
            type = "structure",
        },
    },
}

M.OrchestrationType = {
    DEFAULT = "DEFAULT",
    CUSTOM_ORCHESTRATION = "CUSTOM_ORCHESTRATION",
}

M.InlineAgentPayloadPart = {
    type = "structure",
    members = {
        bytes = {
            type = "blob",
        },
        attribution = {
            type = "structure",
        },
    },
}

M.InlineAgentFilePart = {
    type = "structure",
    members = {
        files = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InlineAgentReturnControlPayload = {
    type = "structure",
    members = {
        invocationInputs = {
            type = "list",
            member_type = "union",
        },
        invocationId = {
            type = "string",
        },
    },
}

M.InlineAgentTracePart = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
        },
        trace = {
            type = "union",
        },
        callerChain = {
            type = "list",
            member_type = "union",
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
    members = {
        chunk = {
            type = "structure",
        },
        trace = {
            type = "structure",
        },
        returnControl = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        resourceNotFoundException = {
            type = "structure",
        },
        serviceQuotaExceededException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        conflictException = {
            type = "structure",
        },
        dependencyFailedException = {
            type = "structure",
        },
        badGatewayException = {
            type = "structure",
        },
        files = {
            type = "structure",
        },
    },
}

M.InvokeInlineAgentOutput = {
    type = "structure",
    members = {
        completion = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
}

M.MemoryType = {
    SESSION_SUMMARY = "SESSION_SUMMARY",
}

M.GetAgentMemoryInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxItems = {
            type = "number",
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
    members = {
        memoryId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        sessionStartTime = {
            type = "timestamp",
        },
        sessionExpiryTime = {
            type = "timestamp",
        },
        summaryText = {
            type = "string",
        },
    },
}

M.Memory = {
    type = "union",
    members = {
        sessionSummary = {
            type = "structure",
        },
    },
}

M.GetAgentMemoryOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        memoryContents = {
            type = "list",
            member_type = "union",
        },
    },
}

M.TextPrompt = {
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

M.InputPrompt = {
    type = "union",
    members = {
        textPrompt = {
            type = "structure",
        },
    },
}

M.OptimizePromptInput = {
    type = "structure",
    members = {
        input = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptimizedPrompt = {
    type = "union",
    members = {
        textPrompt = {
            type = "structure",
        },
    },
}

M.OptimizedPromptEvent = {
    type = "structure",
    members = {
        optimizedPrompt = {
            type = "union",
        },
    },
}

M.OptimizedPromptStream = {
    type = "union",
    members = {
        optimizedPromptEvent = {
            type = "structure",
        },
        analyzePromptEvent = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        dependencyFailedException = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        badGatewayException = {
            type = "structure",
        },
    },
}

M.OptimizePromptOutput = {
    type = "structure",
    members = {
        optimizedPrompt = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.RerankTextDocument = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BedrockRerankingModelConfiguration = {
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

M.BedrockRerankingConfiguration = {
    type = "structure",
    members = {
        numberOfResults = {
            type = "number",
        },
        modelConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RerankingConfigurationType = {
    BEDROCK_RERANKING_MODEL = "BEDROCK_RERANKING_MODEL",
}

M.RerankingConfiguration = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.RerankDocumentType = {
    TEXT = "TEXT",
    JSON = "JSON",
}

M.RerankDocument = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        textDocument = {
            type = "structure",
        },
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inlineDocumentSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RerankInput = {
    type = "structure",
    members = {
        queries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        rerankingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RerankResult = {
    type = "structure",
    members = {
        index = {
            type = "number",
            traits = {
                required = true,
            },
        },
        relevanceScore = {
            type = "number",
            traits = {
                required = true,
            },
        },
        document = {
            type = "structure",
        },
    },
}

M.RerankOutput = {
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

M.RetrieveAndGenerateInput = {
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

M.GuardrailConfiguration = {
    type = "structure",
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

M.InferenceConfig = {
    type = "structure",
    members = {
        textInferenceConfig = {
            type = "structure",
        },
    },
}

M.PromptTemplate = {
    type = "structure",
    members = {
        textPromptTemplate = {
            type = "string",
        },
    },
}

M.ExternalSourcesGenerationConfiguration = {
    type = "structure",
    members = {
        promptTemplate = {
            type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        inferenceConfig = {
            type = "structure",
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

M.ByteContentDoc = {
    type = "structure",
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
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Location = {
            type = "structure",
        },
        byteContent = {
            type = "structure",
        },
    },
}

M.ExternalSourcesRetrieveAndGenerateConfiguration = {
    type = "structure",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        generationConfiguration = {
            type = "structure",
        },
    },
}

M.GenerationConfiguration = {
    type = "structure",
    members = {
        promptTemplate = {
            type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        inferenceConfig = {
            type = "structure",
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

M.QueryTransformationType = {
    QUERY_DECOMPOSITION = "QUERY_DECOMPOSITION",
}

M.QueryTransformationConfiguration = {
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

M.OrchestrationConfiguration = {
    type = "structure",
    members = {
        promptTemplate = {
            type = "structure",
        },
        inferenceConfig = {
            type = "structure",
        },
        additionalModelRequestFields = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
        queryTransformationConfiguration = {
            type = "structure",
        },
        performanceConfig = {
            type = "structure",
        },
    },
}

M.RetrieveAndGenerateType = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    EXTERNAL_SOURCES = "EXTERNAL_SOURCES",
}

M.RetrieveAndGenerateSessionConfiguration = {
    type = "structure",
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
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        citations = {
            type = "list",
            member_type = "structure",
        },
        guardrailAction = {
            type = "string",
        },
    },
}

M.CitationEvent = {
    type = "structure",
    members = {
        citation = {
            type = "structure",
        },
        generatedResponsePart = {
            type = "structure",
        },
        retrievedReferences = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailEvent = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
    },
}

M.RetrieveAndGenerateOutputEvent = {
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

M.RetrieveAndGenerateStreamResponseOutput = {
    type = "union",
    members = {
        output = {
            type = "structure",
        },
        citation = {
            type = "structure",
        },
        guardrail = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        resourceNotFoundException = {
            type = "structure",
        },
        serviceQuotaExceededException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        conflictException = {
            type = "structure",
        },
        dependencyFailedException = {
            type = "structure",
        },
        badGatewayException = {
            type = "structure",
        },
    },
}

M.RetrieveAndGenerateStreamOutput = {
    type = "structure",
    members = {
        stream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        image = {
            type = "structure",
        },
    },
}

M.KnowledgeBaseRetrievalResult = {
    type = "structure",
    members = {
        content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        location = {
            type = "structure",
        },
        score = {
            type = "number",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "document",
        },
    },
}

M.RetrieveOutput = {
    type = "structure",
    members = {
        retrievalResults = {
            type = "list",
            member_type = "structure",
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
    members = {
        sessionMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            },
        },
    },
}

M.DeleteSessionInput = {
    type = "structure",
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
}

M.EndSessionInput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        sessionMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.CreateInvocationInput = {
    type = "structure",
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
            },
        },
    },
}

M.ListInvocationsInput = {
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
            },
        },
    },
}

M.ListInvocationsOutput = {
    type = "structure",
    members = {
        invocationSummaries = {
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

M.GetInvocationStepInput = {
    type = "structure",
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
    members = {
        bytes = {
            type = "blob",
        },
        s3Location = {
            type = "structure",
        },
    },
}

M.ImageBlock = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BedrockSessionContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        image = {
            type = "structure",
        },
    },
}

M.InvocationStepPayload = {
    type = "union",
    members = {
        contentBlocks = {
            type = "list",
            member_type = "union",
        },
    },
}

M.InvocationStep = {
    type = "structure",
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
            },
        },
        payload = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInvocationStepOutput = {
    type = "structure",
    members = {
        invocationStep = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInvocationStepsInput = {
    type = "structure",
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
            type = "number",
            traits = {
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
            },
        },
    },
}

M.ListInvocationStepsOutput = {
    type = "structure",
    members = {
        invocationStepSummaries = {
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

M.PutInvocationStepInput = {
    type = "structure",
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
            },
        },
        payload = {
            type = "union",
            traits = {
                required = true,
            },
        },
        invocationStepId = {
            type = "string",
        },
    },
}

M.PutInvocationStepOutput = {
    type = "structure",
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

M.ListSessionsOutput = {
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

M.UpdateSessionInput = {
    type = "structure",
    members = {
        sessionMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
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

M.RetrievalFilter = {
    type = "union",
    members = {
        equals = {
            type = "structure",
        },
        notEquals = {
            type = "structure",
        },
        greaterThan = {
            type = "structure",
        },
        greaterThanOrEquals = {
            type = "structure",
        },
        lessThan = {
            type = "structure",
        },
        lessThanOrEquals = {
            type = "structure",
        },
        in = {
            type = "structure",
        },
        notIn = {
            type = "structure",
        },
        startsWith = {
            type = "structure",
        },
        listContains = {
            type = "structure",
        },
        stringContains = {
            type = "structure",
        },
        andAll = {
            type = "list",
            member_type = "union",
        },
        orAll = {
            type = "list",
            member_type = "union",
        },
    },
}

M.KnowledgeBaseVectorSearchConfiguration = {
    type = "structure",
    members = {
        numberOfResults = {
            type = "number",
        },
        overrideSearchType = {
            type = "string",
        },
        filter = {
            type = "union",
        },
        rerankingConfiguration = {
            type = "structure",
        },
        implicitFilterConfiguration = {
            type = "structure",
        },
    },
}

M.KnowledgeBaseRetrievalConfiguration = {
    type = "structure",
    members = {
        vectorSearchConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retrievalConfiguration = {
            type = "structure",
        },
    },
}

M.KnowledgeBaseConfiguration = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retrievalConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.KnowledgeBaseRetrieveAndGenerateConfiguration = {
    type = "structure",
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
        retrievalConfiguration = {
            type = "structure",
        },
        generationConfiguration = {
            type = "structure",
        },
        orchestrationConfiguration = {
            type = "structure",
        },
    },
}

M.RetrieveInput = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        retrievalQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        retrievalConfiguration = {
            type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RetrieveAndGenerateConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseConfiguration = {
            type = "structure",
        },
        externalSourcesConfiguration = {
            type = "structure",
        },
    },
}

M.Collaborator = {
    type = "structure",
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
            type = "number",
        },
        actionGroups = {
            type = "list",
            member_type = "structure",
        },
        knowledgeBases = {
            type = "list",
            member_type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        promptOverrideConfiguration = {
            type = "structure",
        },
        agentCollaboration = {
            type = "string",
        },
        collaboratorConfigurations = {
            type = "list",
            member_type = "structure",
        },
        agentName = {
            type = "string",
        },
    },
}

M.RetrieveAndGenerateOperationInput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
        },
        input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        retrieveAndGenerateConfiguration = {
            type = "structure",
        },
        sessionConfiguration = {
            type = "structure",
        },
    },
}

M.RetrieveAndGenerateStreamInput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
        },
        input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        retrieveAndGenerateConfiguration = {
            type = "structure",
        },
        sessionConfiguration = {
            type = "structure",
        },
    },
}

M.SessionState = {
    type = "structure",
    members = {
        sessionAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        promptSessionAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        returnControlInvocationResults = {
            type = "list",
            member_type = "union",
        },
        invocationId = {
            type = "string",
        },
        files = {
            type = "list",
            member_type = "structure",
        },
        knowledgeBaseConfigurations = {
            type = "list",
            member_type = "structure",
        },
        conversationHistory = {
            type = "structure",
        },
    },
}

M.InvokeAgentInput = {
    type = "structure",
    members = {
        sessionState = {
            type = "structure",
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
        bedrockModelConfigurations = {
            type = "structure",
        },
        streamingConfigurations = {
            type = "structure",
        },
        promptCreationConfigurations = {
            type = "structure",
        },
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
            type = "number",
        },
        actionGroups = {
            type = "list",
            member_type = "structure",
        },
        knowledgeBases = {
            type = "list",
            member_type = "structure",
        },
        guardrailConfiguration = {
            type = "structure",
        },
        promptOverrideConfiguration = {
            type = "structure",
        },
        agentCollaboration = {
            type = "string",
        },
        collaboratorConfigurations = {
            type = "list",
            member_type = "structure",
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
        streamingConfigurations = {
            type = "structure",
        },
        promptCreationConfigurations = {
            type = "structure",
        },
        inlineSessionState = {
            type = "structure",
        },
        collaborators = {
            type = "list",
            member_type = "structure",
        },
        bedrockModelConfigurations = {
            type = "structure",
        },
        orchestrationType = {
            type = "string",
        },
        customOrchestration = {
            type = "structure",
        },
    },
}

return M
