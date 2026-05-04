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

M.GetAsyncInvokeInput = {
    type = "structure",
    members = {
        invocationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AsyncInvokeS3OutputDataConfig = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        bucketOwner = {
            type = "string",
        },
    },
}

M.AsyncInvokeOutputDataConfig = {
    type = "union",
    members = {
        s3OutputDataConfig = {
            type = "structure",
        },
    },
}

M.AsyncInvokeStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.GetAsyncInvokeOutput = {
    type = "structure",
    members = {
        invocationArn = {
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
        clientRequestToken = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureMessage = {
            type = "string",
        },
        submitTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        outputDataConfig = {
            type = "union",
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

M.SortAsyncInvocationBy = {
    SUBMISSION_TIME = "SubmissionTime",
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListAsyncInvokesInput = {
    type = "structure",
    members = {
        submitTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "submitTimeAfter",
            },
        },
        submitTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "submitTimeBefore",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
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
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
    },
}

M.AsyncInvokeSummary = {
    type = "structure",
    members = {
        invocationArn = {
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
        clientRequestToken = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        submitTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        outputDataConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAsyncInvokesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        asyncInvokeSummaries = {
            type = "list",
            member_type = "structure",
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

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
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

M.StartAsyncInvokeInput = {
    type = "structure",
    members = {
        clientRequestToken = {
            type = "string",
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelInput = {
            type = "document",
            traits = {
                required = true,
            },
        },
        outputDataConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartAsyncInvokeOutput = {
    type = "structure",
    members = {
        invocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
}

M.GuardrailImageSource = {
    type = "union",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.GuardrailImageBlock = {
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

M.GuardrailContentQualifier = {
    GROUNDING_SOURCE = "grounding_source",
    QUERY = "query",
    GUARD_CONTENT = "guard_content",
}

M.GuardrailTextBlock = {
    type = "structure",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qualifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GuardrailContentBlock = {
    type = "union",
    members = {
        text = {
            type = "structure",
        },
        image = {
            type = "structure",
        },
    },
}

M.GuardrailOutputScope = {
    INTERVENTIONS = "INTERVENTIONS",
    FULL = "FULL",
}

M.GuardrailContentSource = {
    INPUT = "INPUT",
    OUTPUT = "OUTPUT",
}

M.ApplyGuardrailInput = {
    type = "structure",
    members = {
        guardrailIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        guardrailVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        source = {
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
        outputScope = {
            type = "string",
        },
    },
}

M.GuardrailAction = {
    NONE = "NONE",
    GUARDRAIL_INTERVENED = "GUARDRAIL_INTERVENED",
}

M.GuardrailOrigin = {
    REQUEST = "REQUEST",
    ACCOUNT_ENFORCED = "ACCOUNT_ENFORCED",
    ORGANIZATION_ENFORCED = "ORGANIZATION_ENFORCED",
}

M.GuardrailOwnership = {
    SELF = "SELF",
    CROSS_ACCOUNT = "CROSS_ACCOUNT",
}

M.AppliedGuardrailDetails = {
    type = "structure",
    members = {
        guardrailId = {
            type = "string",
        },
        guardrailVersion = {
            type = "string",
        },
        guardrailArn = {
            type = "string",
        },
        guardrailOrigin = {
            type = "list",
            member_type = "string",
        },
        guardrailOwnership = {
            type = "string",
        },
    },
}

M.GuardrailAutomatedReasoningRule = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
        },
        policyVersionArn = {
            type = "string",
        },
    },
}

M.GuardrailAutomatedReasoningStatement = {
    type = "structure",
    members = {
        logic = {
            type = "string",
        },
        naturalLanguage = {
            type = "string",
        },
    },
}

M.GuardrailAutomatedReasoningLogicWarningType = {
    ALWAYS_FALSE = "ALWAYS_FALSE",
    ALWAYS_TRUE = "ALWAYS_TRUE",
}

M.GuardrailAutomatedReasoningLogicWarning = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        premises = {
            type = "list",
            member_type = "structure",
        },
        claims = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningInputTextReference = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.GuardrailAutomatedReasoningTranslation = {
    type = "structure",
    members = {
        premises = {
            type = "list",
            member_type = "structure",
        },
        claims = {
            type = "list",
            member_type = "structure",
        },
        untranslatedPremises = {
            type = "list",
            member_type = "structure",
        },
        untranslatedClaims = {
            type = "list",
            member_type = "structure",
        },
        confidence = {
            type = "number",
        },
    },
}

M.GuardrailAutomatedReasoningImpossibleFinding = {
    type = "structure",
    members = {
        translation = {
            type = "structure",
        },
        contradictingRules = {
            type = "list",
            member_type = "structure",
        },
        logicWarning = {
            type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningInvalidFinding = {
    type = "structure",
    members = {
        translation = {
            type = "structure",
        },
        contradictingRules = {
            type = "list",
            member_type = "structure",
        },
        logicWarning = {
            type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningNoTranslationsFinding = {
    type = "structure",
}

M.GuardrailAutomatedReasoningScenario = {
    type = "structure",
    members = {
        statements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningSatisfiableFinding = {
    type = "structure",
    members = {
        translation = {
            type = "structure",
        },
        claimsTrueScenario = {
            type = "structure",
        },
        claimsFalseScenario = {
            type = "structure",
        },
        logicWarning = {
            type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningTooComplexFinding = {
    type = "structure",
}

M.GuardrailAutomatedReasoningTranslationOption = {
    type = "structure",
    members = {
        translations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningTranslationAmbiguousFinding = {
    type = "structure",
    members = {
        options = {
            type = "list",
            member_type = "structure",
        },
        differenceScenarios = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningValidFinding = {
    type = "structure",
    members = {
        translation = {
            type = "structure",
        },
        claimsTrueScenario = {
            type = "structure",
        },
        supportingRules = {
            type = "list",
            member_type = "structure",
        },
        logicWarning = {
            type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningFinding = {
    type = "union",
    members = {
        valid = {
            type = "structure",
        },
        invalid = {
            type = "structure",
        },
        satisfiable = {
            type = "structure",
        },
        impossible = {
            type = "structure",
        },
        translationAmbiguous = {
            type = "structure",
        },
        tooComplex = {
            type = "structure",
        },
        noTranslations = {
            type = "structure",
        },
    },
}

M.GuardrailAutomatedReasoningPolicyAssessment = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member_type = "union",
        },
    },
}

M.GuardrailContentPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailContentFilterConfidence = {
    NONE = "NONE",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.GuardrailContentFilterStrength = {
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
            traits = {
                required = true,
            },
        },
        confidence = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterStrength = {
            type = "string",
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detected = {
            type = "boolean",
        },
    },
}

M.GuardrailContentPolicyAssessment = {
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

M.GuardrailContextualGroundingPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailContextualGroundingFilterType = {
    GROUNDING = "GROUNDING",
    RELEVANCE = "RELEVANCE",
}

M.GuardrailContextualGroundingFilter = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        score = {
            type = "number",
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
        detected = {
            type = "boolean",
        },
    },
}

M.GuardrailContextualGroundingPolicyAssessment = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GuardrailImageCoverage = {
    type = "structure",
    members = {
        guarded = {
            type = "number",
        },
        total = {
            type = "number",
        },
    },
}

M.GuardrailTextCharactersCoverage = {
    type = "structure",
    members = {
        guarded = {
            type = "number",
        },
        total = {
            type = "number",
        },
    },
}

M.GuardrailCoverage = {
    type = "structure",
    members = {
        textCharacters = {
            type = "structure",
        },
        images = {
            type = "structure",
        },
    },
}

M.GuardrailUsage = {
    type = "structure",
    members = {
        topicPolicyUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        contentPolicyUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        wordPolicyUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        sensitiveInformationPolicyUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        sensitiveInformationPolicyFreeUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        contextualGroundingPolicyUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        contentPolicyImageUnits = {
            type = "number",
        },
        automatedReasoningPolicyUnits = {
            type = "number",
        },
        automatedReasoningPolicies = {
            type = "number",
        },
    },
}

M.GuardrailInvocationMetrics = {
    type = "structure",
    members = {
        guardrailProcessingLatency = {
            type = "number",
        },
        usage = {
            type = "structure",
        },
        guardrailCoverage = {
            type = "structure",
        },
    },
}

M.GuardrailSensitiveInformationPolicyAction = {
    ANONYMIZED = "ANONYMIZED",
    BLOCKED = "BLOCKED",
    NONE = "NONE",
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
        match = {
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
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detected = {
            type = "boolean",
        },
    },
}

M.GuardrailRegexFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        match = {
            type = "string",
        },
        regex = {
            type = "string",
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detected = {
            type = "boolean",
        },
    },
}

M.GuardrailSensitiveInformationPolicyAssessment = {
    type = "structure",
    members = {
        piiEntities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        regexes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailTopicPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailTopicType = {
    DENY = "DENY",
}

M.GuardrailTopic = {
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
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detected = {
            type = "boolean",
        },
    },
}

M.GuardrailTopicPolicyAssessment = {
    type = "structure",
    members = {
        topics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailWordPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailCustomWord = {
    type = "structure",
    members = {
        match = {
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
        detected = {
            type = "boolean",
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
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detected = {
            type = "boolean",
        },
    },
}

M.GuardrailWordPolicyAssessment = {
    type = "structure",
    members = {
        customWords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        managedWordLists = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
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
        contextualGroundingPolicy = {
            type = "structure",
        },
        automatedReasoningPolicy = {
            type = "structure",
        },
        invocationMetrics = {
            type = "structure",
        },
        appliedGuardrailDetails = {
            type = "structure",
        },
    },
}

M.GuardrailOutputContent = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ApplyGuardrailOutput = {
    type = "structure",
    members = {
        usage = {
            type = "structure",
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
        actionReason = {
            type = "string",
        },
        outputs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assessments = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        guardrailCoverage = {
            type = "structure",
        },
    },
}

M.GuardrailTrace = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    ENABLED_FULL = "enabled_full",
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
        trace = {
            type = "string",
        },
    },
}

M.InferenceConfiguration = {
    type = "structure",
    members = {
        maxTokens = {
            type = "number",
        },
        temperature = {
            type = "number",
        },
        topP = {
            type = "number",
        },
        stopSequences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ErrorBlock = {
    type = "structure",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AudioFormat = {
    MP3 = "mp3",
    OPUS = "opus",
    WAV = "wav",
    AAC = "aac",
    FLAC = "flac",
    MP4 = "mp4",
    OGG = "ogg",
    MKV = "mkv",
    MKA = "mka",
    X_AAC = "x-aac",
    M4A = "m4a",
    MPEG = "mpeg",
    MPGA = "mpga",
    PCM = "pcm",
    WEBM = "webm",
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
        bucketOwner = {
            type = "string",
        },
    },
}

M.AudioSource = {
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

M.AudioBlock = {
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
        error = {
            type = "structure",
        },
    },
}

M.CacheTTL = {
    FIVE_MINUTES = "5m",
    ONE_HOUR = "1h",
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
        ttl = {
            type = "string",
        },
    },
}

M.DocumentCharLocation = {
    type = "structure",
    members = {
        documentIndex = {
            type = "number",
        },
        start = {
            type = "number",
        },
        end = {
            type = "number",
        },
    },
}

M.DocumentChunkLocation = {
    type = "structure",
    members = {
        documentIndex = {
            type = "number",
        },
        start = {
            type = "number",
        },
        end = {
            type = "number",
        },
    },
}

M.DocumentPageLocation = {
    type = "structure",
    members = {
        documentIndex = {
            type = "number",
        },
        start = {
            type = "number",
        },
        end = {
            type = "number",
        },
    },
}

M.SearchResultLocation = {
    type = "structure",
    members = {
        searchResultIndex = {
            type = "number",
        },
        start = {
            type = "number",
        },
        end = {
            type = "number",
        },
    },
}

M.WebLocation = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
        domain = {
            type = "string",
        },
    },
}

M.CitationLocation = {
    type = "union",
    members = {
        web = {
            type = "structure",
        },
        documentChar = {
            type = "structure",
        },
        documentPage = {
            type = "structure",
        },
        documentChunk = {
            type = "structure",
        },
        searchResultLocation = {
            type = "structure",
        },
    },
}

M.CitationSourceContent = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.Citation = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        source = {
            type = "string",
        },
        sourceContent = {
            type = "list",
            member_type = "union",
        },
        location = {
            type = "union",
        },
    },
}

M.CitationGeneratedContent = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CitationsContentBlock = {
    type = "structure",
    members = {
        content = {
            type = "list",
            member_type = "union",
        },
        citations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CitationsConfig = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentFormat = {
    PDF = "pdf",
    CSV = "csv",
    DOC = "doc",
    DOCX = "docx",
    XLS = "xls",
    XLSX = "xlsx",
    HTML = "html",
    TXT = "txt",
    MD = "md",
}

M.DocumentContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.DocumentSource = {
    type = "union",
    members = {
        bytes = {
            type = "blob",
        },
        s3Location = {
            type = "structure",
        },
        text = {
            type = "string",
        },
        content = {
            type = "list",
            member_type = "union",
        },
    },
}

M.DocumentBlock = {
    type = "structure",
    members = {
        format = {
            type = "string",
        },
        name = {
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
        context = {
            type = "string",
        },
        citations = {
            type = "structure",
        },
    },
}

M.GuardrailConverseImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
}

M.GuardrailConverseImageSource = {
    type = "union",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.GuardrailConverseImageBlock = {
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

M.GuardrailConverseContentQualifier = {
    GROUNDING_SOURCE = "grounding_source",
    QUERY = "query",
    GUARD_CONTENT = "guard_content",
}

M.GuardrailConverseTextBlock = {
    type = "structure",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qualifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GuardrailConverseContentBlock = {
    type = "union",
    members = {
        text = {
            type = "structure",
        },
        image = {
            type = "structure",
        },
    },
}

M.ImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
    GIF = "gif",
    WEBP = "webp",
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
        error = {
            type = "structure",
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

M.SearchResultContentBlock = {
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

M.SearchResultBlock = {
    type = "structure",
    members = {
        source = {
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
        content = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        citations = {
            type = "structure",
        },
    },
}

M.VideoFormat = {
    MKV = "mkv",
    MOV = "mov",
    MP4 = "mp4",
    WEBM = "webm",
    FLV = "flv",
    MPEG = "mpeg",
    MPG = "mpg",
    WMV = "wmv",
    THREE_GP = "three_gp",
}

M.VideoSource = {
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

M.VideoBlock = {
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

M.ToolResultContentBlock = {
    type = "union",
    members = {
        json = {
            type = "document",
        },
        text = {
            type = "string",
        },
        image = {
            type = "structure",
        },
        document = {
            type = "structure",
        },
        video = {
            type = "structure",
        },
        searchResult = {
            type = "structure",
        },
    },
}

M.ToolResultStatus = {
    SUCCESS = "success",
    ERROR = "error",
}

M.ToolResultBlock = {
    type = "structure",
    members = {
        toolUseId = {
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
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.ToolUseType = {
    SERVER_TOOL_USE = "server_tool_use",
}

M.ToolUseBlock = {
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
        input = {
            type = "document",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.ContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        image = {
            type = "structure",
        },
        document = {
            type = "structure",
        },
        video = {
            type = "structure",
        },
        audio = {
            type = "structure",
        },
        toolUse = {
            type = "structure",
        },
        toolResult = {
            type = "structure",
        },
        guardContent = {
            type = "union",
        },
        cachePoint = {
            type = "structure",
        },
        reasoningContent = {
            type = "union",
        },
        citationsContent = {
            type = "structure",
        },
        searchResult = {
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

M.JsonSchemaDefinition = {
    type = "structure",
    members = {
        schema = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.OutputFormatStructure = {
    type = "union",
    members = {
        jsonSchema = {
            type = "structure",
        },
    },
}

M.OutputFormatType = {
    JSON_SCHEMA = "json_schema",
}

M.OutputFormat = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        structure = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputConfig = {
    type = "structure",
    members = {
        textFormat = {
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

M.PromptVariableValues = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ServiceTierType = {
    PRIORITY = "priority",
    DEFAULT = "default",
    FLEX = "flex",
    RESERVED = "reserved",
}

M.ServiceTier = {
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

M.SystemContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        guardContent = {
            type = "union",
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

M.SystemTool = {
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
        systemTool = {
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

M.ConverseInput = {
    type = "structure",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messages = {
            type = "list",
            member_type = "structure",
        },
        system = {
            type = "list",
            member_type = "union",
        },
        inferenceConfig = {
            type = "structure",
        },
        toolConfig = {
            type = "structure",
        },
        guardrailConfig = {
            type = "structure",
        },
        additionalModelRequestFields = {
            type = "document",
        },
        promptVariables = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        additionalModelResponseFieldPaths = {
            type = "list",
            member_type = "string",
        },
        requestMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        performanceConfig = {
            type = "structure",
        },
        serviceTier = {
            type = "structure",
        },
        outputConfig = {
            type = "structure",
        },
    },
}

M.ConverseMetrics = {
    type = "structure",
    members = {
        latencyMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ConverseOutput = {
    type = "union",
    members = {
        message = {
            type = "structure",
        },
    },
}

M.StopReason = {
    END_TURN = "end_turn",
    TOOL_USE = "tool_use",
    MAX_TOKENS = "max_tokens",
    STOP_SEQUENCE = "stop_sequence",
    GUARDRAIL_INTERVENED = "guardrail_intervened",
    CONTENT_FILTERED = "content_filtered",
    MALFORMED_MODEL_OUTPUT = "malformed_model_output",
    MALFORMED_TOOL_USE = "malformed_tool_use",
    MODEL_CONTEXT_WINDOW_EXCEEDED = "model_context_window_exceeded",
}

M.GuardrailTraceAssessment = {
    type = "structure",
    members = {
        modelOutput = {
            type = "list",
            member_type = "string",
        },
        inputAssessment = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        outputAssessments = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        actionReason = {
            type = "string",
        },
    },
}

M.PromptRouterTrace = {
    type = "structure",
    members = {
        invokedModelId = {
            type = "string",
        },
    },
}

M.ConverseTrace = {
    type = "structure",
    members = {
        guardrail = {
            type = "structure",
        },
        promptRouter = {
            type = "structure",
        },
    },
}

M.CacheDetail = {
    type = "structure",
    members = {
        ttl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TokenUsage = {
    type = "structure",
    members = {
        inputTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
        outputTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
        totalTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
        cacheReadInputTokens = {
            type = "number",
        },
        cacheWriteInputTokens = {
            type = "number",
        },
        cacheDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConverseOperationOutput = {
    type = "structure",
    members = {
        output = {
            type = "union",
            traits = {
                required = true,
            },
        },
        stopReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        additionalModelResponseFields = {
            type = "document",
        },
        trace = {
            type = "structure",
        },
        performanceConfig = {
            type = "structure",
        },
        serviceTier = {
            type = "structure",
        },
    },
}

M.ModelErrorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        originalStatusCode = {
            type = "number",
        },
        resourceName = {
            type = "string",
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

M.ModelTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GuardrailStreamProcessingMode = {
    SYNC = "sync",
    ASYNC = "async",
}

M.GuardrailStreamConfiguration = {
    type = "structure",
    members = {
        guardrailIdentifier = {
            type = "string",
        },
        guardrailVersion = {
            type = "string",
        },
        trace = {
            type = "string",
        },
        streamProcessingMode = {
            type = "string",
        },
    },
}

M.ConverseStreamInput = {
    type = "structure",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messages = {
            type = "list",
            member_type = "structure",
        },
        system = {
            type = "list",
            member_type = "union",
        },
        inferenceConfig = {
            type = "structure",
        },
        toolConfig = {
            type = "structure",
        },
        guardrailConfig = {
            type = "structure",
        },
        additionalModelRequestFields = {
            type = "document",
        },
        promptVariables = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        additionalModelResponseFieldPaths = {
            type = "list",
            member_type = "string",
        },
        requestMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        performanceConfig = {
            type = "structure",
        },
        serviceTier = {
            type = "structure",
        },
        outputConfig = {
            type = "structure",
        },
    },
}

M.CitationSourceContentDelta = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CitationsDelta = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        source = {
            type = "string",
        },
        sourceContent = {
            type = "list",
            member_type = "structure",
        },
        location = {
            type = "union",
        },
    },
}

M.ImageBlockDelta = {
    type = "structure",
    members = {
        source = {
            type = "union",
        },
        error = {
            type = "structure",
        },
    },
}

M.ReasoningContentBlockDelta = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        redactedContent = {
            type = "blob",
        },
        signature = {
            type = "string",
        },
    },
}

M.ToolResultBlockDelta = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        json = {
            type = "document",
        },
    },
}

M.ToolUseBlockDelta = {
    type = "structure",
    members = {
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentBlockDelta = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        toolUse = {
            type = "structure",
        },
        toolResult = {
            type = "list",
            member_type = "union",
        },
        reasoningContent = {
            type = "union",
        },
        citation = {
            type = "structure",
        },
        image = {
            type = "structure",
        },
    },
}

M.ContentBlockDeltaEvent = {
    type = "structure",
    members = {
        delta = {
            type = "union",
            traits = {
                required = true,
            },
        },
        contentBlockIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageBlockStart = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ToolResultBlockStart = {
    type = "structure",
    members = {
        toolUseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ToolUseBlockStart = {
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
        type = {
            type = "string",
        },
    },
}

M.ContentBlockStart = {
    type = "union",
    members = {
        toolUse = {
            type = "structure",
        },
        toolResult = {
            type = "structure",
        },
        image = {
            type = "structure",
        },
    },
}

M.ContentBlockStartEvent = {
    type = "structure",
    members = {
        start = {
            type = "union",
            traits = {
                required = true,
            },
        },
        contentBlockIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentBlockStopEvent = {
    type = "structure",
    members = {
        contentBlockIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageStartEvent = {
    type = "structure",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageStopEvent = {
    type = "structure",
    members = {
        stopReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalModelResponseFields = {
            type = "document",
        },
    },
}

M.ConverseStreamMetrics = {
    type = "structure",
    members = {
        latencyMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ConverseStreamTrace = {
    type = "structure",
    members = {
        guardrail = {
            type = "structure",
        },
        promptRouter = {
            type = "structure",
        },
    },
}

M.ConverseStreamMetadataEvent = {
    type = "structure",
    members = {
        usage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        trace = {
            type = "structure",
        },
        performanceConfig = {
            type = "structure",
        },
        serviceTier = {
            type = "structure",
        },
    },
}

M.ModelStreamErrorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        originalStatusCode = {
            type = "number",
        },
        originalMessage = {
            type = "string",
        },
    },
}

M.ConverseStreamOutput = {
    type = "union",
    members = {
        messageStart = {
            type = "structure",
        },
        contentBlockStart = {
            type = "structure",
        },
        contentBlockDelta = {
            type = "structure",
        },
        contentBlockStop = {
            type = "structure",
        },
        messageStop = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        modelStreamErrorException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        serviceUnavailableException = {
            type = "structure",
        },
    },
}

M.ConverseStreamOperationOutput = {
    type = "structure",
    members = {
        stream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.Trace = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLED_FULL = "ENABLED_FULL",
}

M.InvokeModelInput = {
    type = "structure",
    members = {
        body = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trace = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Trace",
            },
        },
        guardrailIdentifier = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-GuardrailIdentifier",
            },
        },
        guardrailVersion = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-GuardrailVersion",
            },
        },
        performanceConfigLatency = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-PerformanceConfig-Latency",
            },
        },
        serviceTier = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Service-Tier",
            },
        },
    },
}

M.InvokeModelOutput = {
    type = "structure",
    members = {
        body = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
        performanceConfigLatency = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-PerformanceConfig-Latency",
            },
        },
        serviceTier = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Service-Tier",
            },
        },
    },
}

M.BidirectionalInputPayloadPart = {
    type = "structure",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.InvokeModelWithBidirectionalStreamInput = {
    type = "union",
    members = {
        chunk = {
            type = "structure",
        },
    },
}

M.InvokeModelWithBidirectionalStreamOperationInput = {
    type = "structure",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        body = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.BidirectionalOutputPayloadPart = {
    type = "structure",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.InvokeModelWithBidirectionalStreamOutput = {
    type = "union",
    members = {
        chunk = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        modelStreamErrorException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        modelTimeoutException = {
            type = "structure",
        },
        serviceUnavailableException = {
            type = "structure",
        },
    },
}

M.InvokeModelWithBidirectionalStreamOperationOutput = {
    type = "structure",
    members = {
        body = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.InvokeModelWithResponseStreamInput = {
    type = "structure",
    members = {
        body = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Accept",
            },
        },
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trace = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Trace",
            },
        },
        guardrailIdentifier = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-GuardrailIdentifier",
            },
        },
        guardrailVersion = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-GuardrailVersion",
            },
        },
        performanceConfigLatency = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-PerformanceConfig-Latency",
            },
        },
        serviceTier = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Service-Tier",
            },
        },
    },
}

M.PayloadPart = {
    type = "structure",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.ResponseStream = {
    type = "union",
    members = {
        chunk = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        modelStreamErrorException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        modelTimeoutException = {
            type = "structure",
        },
        serviceUnavailableException = {
            type = "structure",
        },
    },
}

M.InvokeModelWithResponseStreamOutput = {
    type = "structure",
    members = {
        body = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Content-Type",
                required = true,
            },
        },
        performanceConfigLatency = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-PerformanceConfig-Latency",
            },
        },
        serviceTier = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-Service-Tier",
            },
        },
    },
}

M.ConverseTokensRequest = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member_type = "structure",
        },
        system = {
            type = "list",
            member_type = "union",
        },
        toolConfig = {
            type = "structure",
        },
        additionalModelRequestFields = {
            type = "document",
        },
    },
}

M.InvokeModelTokensRequest = {
    type = "structure",
    members = {
        body = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.CountTokensInput = {
    type = "union",
    members = {
        invokeModel = {
            type = "structure",
        },
        converse = {
            type = "structure",
        },
    },
}

M.CountTokensOperationInput = {
    type = "structure",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        input = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CountTokensOutput = {
    type = "structure",
    members = {
        inputTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

return M
