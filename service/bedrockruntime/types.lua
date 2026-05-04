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

M.GetAsyncInvokeInput = {
    type = "structure",
    id = "GetAsyncInvokeInput",
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
    id = "AsyncInvokeS3OutputDataConfig",
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
    id = "AsyncInvokeOutputDataConfig",
    members = {
        s3OutputDataConfig = M.AsyncInvokeS3OutputDataConfig,
    },
}

M.AsyncInvokeStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.GetAsyncInvokeOutput = {
    type = "structure",
    id = "GetAsyncInvokeOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
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
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AsyncInvokeOutputDataConfig }),
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

M.SortAsyncInvocationBy = {
    SUBMISSION_TIME = "SubmissionTime",
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListAsyncInvokesInput = {
    type = "structure",
    id = "ListAsyncInvokesInput",
    members = {
        submitTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "submitTimeAfter",
                timestamp_format = "date-time",
            },
        },
        submitTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "submitTimeBefore",
                timestamp_format = "date-time",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
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
        sortBy = {
            type = "string",
            traits = {
                default = "SubmissionTime",
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                default = "Descending",
                http_query = "sortOrder",
            },
        },
    },
}

M.AsyncInvokeSummary = {
    type = "structure",
    id = "AsyncInvokeSummary",
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
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
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
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AsyncInvokeOutputDataConfig }),
    },
}

M.ListAsyncInvokesOutput = {
    type = "structure",
    id = "ListAsyncInvokesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        asyncInvokeSummaries = {
            type = "list",
            member = M.AsyncInvokeSummary,
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

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "StartAsyncInvokeInput",
    members = {
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AsyncInvokeOutputDataConfig }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartAsyncInvokeOutput = {
    type = "structure",
    id = "StartAsyncInvokeOutput",
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
    id = "GuardrailImageSource",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.GuardrailImageBlock = {
    type = "structure",
    id = "GuardrailImageBlock",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GuardrailImageSource }),
    },
}

M.GuardrailContentQualifier = {
    GROUNDING_SOURCE = "grounding_source",
    QUERY = "query",
    GUARD_CONTENT = "guard_content",
}

M.GuardrailTextBlock = {
    type = "structure",
    id = "GuardrailTextBlock",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qualifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GuardrailContentBlock = {
    type = "union",
    id = "GuardrailContentBlock",
    members = {
        text = M.GuardrailTextBlock,
        image = M.GuardrailImageBlock,
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
    id = "ApplyGuardrailInput",
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
            member = M.GuardrailContentBlock,
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
    id = "AppliedGuardrailDetails",
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
            member = { type = "string" },
        },
        guardrailOwnership = {
            type = "string",
        },
    },
}

M.GuardrailAutomatedReasoningRule = {
    type = "structure",
    id = "GuardrailAutomatedReasoningRule",
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
    id = "GuardrailAutomatedReasoningStatement",
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
    id = "GuardrailAutomatedReasoningLogicWarning",
    members = {
        type = {
            type = "string",
        },
        premises = {
            type = "list",
            member = M.GuardrailAutomatedReasoningStatement,
        },
        claims = {
            type = "list",
            member = M.GuardrailAutomatedReasoningStatement,
        },
    },
}

M.GuardrailAutomatedReasoningInputTextReference = {
    type = "structure",
    id = "GuardrailAutomatedReasoningInputTextReference",
    members = {
        text = {
            type = "string",
        },
    },
}

M.GuardrailAutomatedReasoningTranslation = {
    type = "structure",
    id = "GuardrailAutomatedReasoningTranslation",
    members = {
        premises = {
            type = "list",
            member = M.GuardrailAutomatedReasoningStatement,
        },
        claims = {
            type = "list",
            member = M.GuardrailAutomatedReasoningStatement,
        },
        untranslatedPremises = {
            type = "list",
            member = M.GuardrailAutomatedReasoningInputTextReference,
        },
        untranslatedClaims = {
            type = "list",
            member = M.GuardrailAutomatedReasoningInputTextReference,
        },
        confidence = {
            type = "double",
        },
    },
}

M.GuardrailAutomatedReasoningImpossibleFinding = {
    type = "structure",
    id = "GuardrailAutomatedReasoningImpossibleFinding",
    members = {
        translation = M.GuardrailAutomatedReasoningTranslation,
        contradictingRules = {
            type = "list",
            member = M.GuardrailAutomatedReasoningRule,
        },
        logicWarning = M.GuardrailAutomatedReasoningLogicWarning,
    },
}

M.GuardrailAutomatedReasoningInvalidFinding = {
    type = "structure",
    id = "GuardrailAutomatedReasoningInvalidFinding",
    members = {
        translation = M.GuardrailAutomatedReasoningTranslation,
        contradictingRules = {
            type = "list",
            member = M.GuardrailAutomatedReasoningRule,
        },
        logicWarning = M.GuardrailAutomatedReasoningLogicWarning,
    },
}

M.GuardrailAutomatedReasoningNoTranslationsFinding = {
    type = "structure",
    id = "GuardrailAutomatedReasoningNoTranslationsFinding",
}

M.GuardrailAutomatedReasoningScenario = {
    type = "structure",
    id = "GuardrailAutomatedReasoningScenario",
    members = {
        statements = {
            type = "list",
            member = M.GuardrailAutomatedReasoningStatement,
        },
    },
}

M.GuardrailAutomatedReasoningSatisfiableFinding = {
    type = "structure",
    id = "GuardrailAutomatedReasoningSatisfiableFinding",
    members = {
        translation = M.GuardrailAutomatedReasoningTranslation,
        claimsTrueScenario = M.GuardrailAutomatedReasoningScenario,
        claimsFalseScenario = M.GuardrailAutomatedReasoningScenario,
        logicWarning = M.GuardrailAutomatedReasoningLogicWarning,
    },
}

M.GuardrailAutomatedReasoningTooComplexFinding = {
    type = "structure",
    id = "GuardrailAutomatedReasoningTooComplexFinding",
}

M.GuardrailAutomatedReasoningTranslationOption = {
    type = "structure",
    id = "GuardrailAutomatedReasoningTranslationOption",
    members = {
        translations = {
            type = "list",
            member = M.GuardrailAutomatedReasoningTranslation,
        },
    },
}

M.GuardrailAutomatedReasoningTranslationAmbiguousFinding = {
    type = "structure",
    id = "GuardrailAutomatedReasoningTranslationAmbiguousFinding",
    members = {
        options = {
            type = "list",
            member = M.GuardrailAutomatedReasoningTranslationOption,
        },
        differenceScenarios = {
            type = "list",
            member = M.GuardrailAutomatedReasoningScenario,
        },
    },
}

M.GuardrailAutomatedReasoningValidFinding = {
    type = "structure",
    id = "GuardrailAutomatedReasoningValidFinding",
    members = {
        translation = M.GuardrailAutomatedReasoningTranslation,
        claimsTrueScenario = M.GuardrailAutomatedReasoningScenario,
        supportingRules = {
            type = "list",
            member = M.GuardrailAutomatedReasoningRule,
        },
        logicWarning = M.GuardrailAutomatedReasoningLogicWarning,
    },
}

M.GuardrailAutomatedReasoningFinding = {
    type = "union",
    id = "GuardrailAutomatedReasoningFinding",
    members = {
        valid = M.GuardrailAutomatedReasoningValidFinding,
        invalid = M.GuardrailAutomatedReasoningInvalidFinding,
        satisfiable = M.GuardrailAutomatedReasoningSatisfiableFinding,
        impossible = M.GuardrailAutomatedReasoningImpossibleFinding,
        translationAmbiguous = M.GuardrailAutomatedReasoningTranslationAmbiguousFinding,
        tooComplex = M.GuardrailAutomatedReasoningTooComplexFinding,
        noTranslations = M.GuardrailAutomatedReasoningNoTranslationsFinding,
    },
}

M.GuardrailAutomatedReasoningPolicyAssessment = {
    type = "structure",
    id = "GuardrailAutomatedReasoningPolicyAssessment",
    members = {
        findings = {
            type = "list",
            member = M.GuardrailAutomatedReasoningFinding,
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
    id = "GuardrailContentFilter",
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
    id = "GuardrailContentPolicyAssessment",
    members = {
        filters = {
            type = "list",
            member = M.GuardrailContentFilter,
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
    id = "GuardrailContextualGroundingFilter",
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
                required = true,
            },
        },
        score = {
            type = "double",
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
    id = "GuardrailContextualGroundingPolicyAssessment",
    members = {
        filters = {
            type = "list",
            member = M.GuardrailContextualGroundingFilter,
        },
    },
}

M.GuardrailImageCoverage = {
    type = "structure",
    id = "GuardrailImageCoverage",
    members = {
        guarded = {
            type = "integer",
        },
        total = {
            type = "integer",
        },
    },
}

M.GuardrailTextCharactersCoverage = {
    type = "structure",
    id = "GuardrailTextCharactersCoverage",
    members = {
        guarded = {
            type = "integer",
        },
        total = {
            type = "integer",
        },
    },
}

M.GuardrailCoverage = {
    type = "structure",
    id = "GuardrailCoverage",
    members = {
        textCharacters = M.GuardrailTextCharactersCoverage,
        images = M.GuardrailImageCoverage,
    },
}

M.GuardrailUsage = {
    type = "structure",
    id = "GuardrailUsage",
    members = {
        topicPolicyUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        contentPolicyUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        wordPolicyUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        sensitiveInformationPolicyUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        sensitiveInformationPolicyFreeUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        contextualGroundingPolicyUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        contentPolicyImageUnits = {
            type = "integer",
        },
        automatedReasoningPolicyUnits = {
            type = "integer",
        },
        automatedReasoningPolicies = {
            type = "integer",
        },
    },
}

M.GuardrailInvocationMetrics = {
    type = "structure",
    id = "GuardrailInvocationMetrics",
    members = {
        guardrailProcessingLatency = {
            type = "long",
        },
        usage = M.GuardrailUsage,
        guardrailCoverage = M.GuardrailCoverage,
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
    id = "GuardrailPiiEntityFilter",
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
    id = "GuardrailRegexFilter",
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
    id = "GuardrailSensitiveInformationPolicyAssessment",
    members = {
        piiEntities = {
            type = "list",
            member = M.GuardrailPiiEntityFilter,
            traits = {
                required = true,
            },
        },
        regexes = {
            type = "list",
            member = M.GuardrailRegexFilter,
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
    id = "GuardrailTopic",
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
    id = "GuardrailTopicPolicyAssessment",
    members = {
        topics = {
            type = "list",
            member = M.GuardrailTopic,
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
    id = "GuardrailCustomWord",
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
    id = "GuardrailManagedWord",
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
    id = "GuardrailWordPolicyAssessment",
    members = {
        customWords = {
            type = "list",
            member = M.GuardrailCustomWord,
            traits = {
                required = true,
            },
        },
        managedWordLists = {
            type = "list",
            member = M.GuardrailManagedWord,
            traits = {
                required = true,
            },
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
        contextualGroundingPolicy = M.GuardrailContextualGroundingPolicyAssessment,
        automatedReasoningPolicy = M.GuardrailAutomatedReasoningPolicyAssessment,
        invocationMetrics = M.GuardrailInvocationMetrics,
        appliedGuardrailDetails = M.AppliedGuardrailDetails,
    },
}

M.GuardrailOutputContent = {
    type = "structure",
    id = "GuardrailOutputContent",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ApplyGuardrailOutput = {
    type = "structure",
    id = "ApplyGuardrailOutput",
    members = {
        usage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GuardrailUsage }),
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
            member = M.GuardrailOutputContent,
            traits = {
                required = true,
            },
        },
        assessments = {
            type = "list",
            member = M.GuardrailAssessment,
            traits = {
                required = true,
            },
        },
        guardrailCoverage = M.GuardrailCoverage,
    },
}

M.GuardrailTrace = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    ENABLED_FULL = "enabled_full",
}

M.GuardrailConfiguration = {
    type = "structure",
    id = "GuardrailConfiguration",
    members = {
        guardrailIdentifier = {
            type = "string",
            traits = {
                default = "",
            },
        },
        guardrailVersion = {
            type = "string",
            traits = {
                default = "",
            },
        },
        trace = {
            type = "string",
            traits = {
                default = "disabled",
            },
        },
    },
}

M.InferenceConfiguration = {
    type = "structure",
    id = "InferenceConfiguration",
    members = {
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
        stopSequences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ErrorBlock = {
    type = "structure",
    id = "ErrorBlock",
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
    id = "S3Location",
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
    id = "AudioSource",
    members = {
        bytes = {
            type = "blob",
        },
        s3Location = M.S3Location,
    },
}

M.AudioBlock = {
    type = "structure",
    id = "AudioBlock",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudioSource }),
        error = M.ErrorBlock,
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
    id = "CachePointBlock",
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
    id = "DocumentCharLocation",
    members = {
        documentIndex = {
            type = "integer",
        },
        start = {
            type = "integer",
        },
        end = {
            type = "integer",
        },
    },
}

M.DocumentChunkLocation = {
    type = "structure",
    id = "DocumentChunkLocation",
    members = {
        documentIndex = {
            type = "integer",
        },
        start = {
            type = "integer",
        },
        end = {
            type = "integer",
        },
    },
}

M.DocumentPageLocation = {
    type = "structure",
    id = "DocumentPageLocation",
    members = {
        documentIndex = {
            type = "integer",
        },
        start = {
            type = "integer",
        },
        end = {
            type = "integer",
        },
    },
}

M.SearchResultLocation = {
    type = "structure",
    id = "SearchResultLocation",
    members = {
        searchResultIndex = {
            type = "integer",
        },
        start = {
            type = "integer",
        },
        end = {
            type = "integer",
        },
    },
}

M.WebLocation = {
    type = "structure",
    id = "WebLocation",
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
    id = "CitationLocation",
    members = {
        web = M.WebLocation,
        documentChar = M.DocumentCharLocation,
        documentPage = M.DocumentPageLocation,
        documentChunk = M.DocumentChunkLocation,
        searchResultLocation = M.SearchResultLocation,
    },
}

M.CitationSourceContent = {
    type = "union",
    id = "CitationSourceContent",
    members = {
        text = {
            type = "string",
        },
    },
}

M.Citation = {
    type = "structure",
    id = "Citation",
    members = {
        title = {
            type = "string",
        },
        source = {
            type = "string",
        },
        sourceContent = {
            type = "list",
            member = M.CitationSourceContent,
        },
        location = M.CitationLocation,
    },
}

M.CitationGeneratedContent = {
    type = "union",
    id = "CitationGeneratedContent",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CitationsContentBlock = {
    type = "structure",
    id = "CitationsContentBlock",
    members = {
        content = {
            type = "list",
            member = M.CitationGeneratedContent,
        },
        citations = {
            type = "list",
            member = M.Citation,
        },
    },
}

M.CitationsConfig = {
    type = "structure",
    id = "CitationsConfig",
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
    id = "DocumentContentBlock",
    members = {
        text = {
            type = "string",
        },
    },
}

M.DocumentSource = {
    type = "union",
    id = "DocumentSource",
    members = {
        bytes = {
            type = "blob",
        },
        s3Location = M.S3Location,
        text = {
            type = "string",
        },
        content = {
            type = "list",
            member = M.DocumentContentBlock,
        },
    },
}

M.DocumentBlock = {
    type = "structure",
    id = "DocumentBlock",
    members = {
        format = {
            type = "string",
            traits = {
                default = "txt",
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentSource }),
        context = {
            type = "string",
        },
        citations = M.CitationsConfig,
    },
}

M.GuardrailConverseImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
}

M.GuardrailConverseImageSource = {
    type = "union",
    id = "GuardrailConverseImageSource",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.GuardrailConverseImageBlock = {
    type = "structure",
    id = "GuardrailConverseImageBlock",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GuardrailConverseImageSource }),
    },
}

M.GuardrailConverseContentQualifier = {
    GROUNDING_SOURCE = "grounding_source",
    QUERY = "query",
    GUARD_CONTENT = "guard_content",
}

M.GuardrailConverseTextBlock = {
    type = "structure",
    id = "GuardrailConverseTextBlock",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qualifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GuardrailConverseContentBlock = {
    type = "union",
    id = "GuardrailConverseContentBlock",
    members = {
        text = M.GuardrailConverseTextBlock,
        image = M.GuardrailConverseImageBlock,
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
        error = M.ErrorBlock,
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

M.SearchResultContentBlock = {
    type = "structure",
    id = "SearchResultContentBlock",
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
    id = "SearchResultBlock",
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
            member = M.SearchResultContentBlock,
            traits = {
                required = true,
            },
        },
        citations = M.CitationsConfig,
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
    id = "VideoSource",
    members = {
        bytes = {
            type = "blob",
        },
        s3Location = M.S3Location,
    },
}

M.VideoBlock = {
    type = "structure",
    id = "VideoBlock",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VideoSource }),
    },
}

M.ToolResultContentBlock = {
    type = "union",
    id = "ToolResultContentBlock",
    members = {
        json = {
            type = "document",
        },
        text = {
            type = "string",
        },
        image = M.ImageBlock,
        document = M.DocumentBlock,
        video = M.VideoBlock,
        searchResult = M.SearchResultBlock,
    },
}

M.ToolResultStatus = {
    SUCCESS = "success",
    ERROR = "error",
}

M.ToolResultBlock = {
    type = "structure",
    id = "ToolResultBlock",
    members = {
        toolUseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "list",
            member = M.ToolResultContentBlock,
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
    id = "ToolUseBlock",
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
    id = "ContentBlock",
    members = {
        text = {
            type = "string",
        },
        image = M.ImageBlock,
        document = M.DocumentBlock,
        video = M.VideoBlock,
        audio = M.AudioBlock,
        toolUse = M.ToolUseBlock,
        toolResult = M.ToolResultBlock,
        guardContent = M.GuardrailConverseContentBlock,
        cachePoint = M.CachePointBlock,
        reasoningContent = M.ReasoningContentBlock,
        citationsContent = M.CitationsContentBlock,
        searchResult = M.SearchResultBlock,
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

M.JsonSchemaDefinition = {
    type = "structure",
    id = "JsonSchemaDefinition",
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
    id = "OutputFormatStructure",
    members = {
        jsonSchema = M.JsonSchemaDefinition,
    },
}

M.OutputFormatType = {
    JSON_SCHEMA = "json_schema",
}

M.OutputFormat = {
    type = "structure",
    id = "OutputFormat",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        structure = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputFormatStructure }),
    },
}

M.OutputConfig = {
    type = "structure",
    id = "OutputConfig",
    members = {
        textFormat = M.OutputFormat,
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

M.PromptVariableValues = {
    type = "union",
    id = "PromptVariableValues",
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
    id = "ServiceTier",
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
    id = "SystemContentBlock",
    members = {
        text = {
            type = "string",
        },
        guardContent = M.GuardrailConverseContentBlock,
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

M.SystemTool = {
    type = "structure",
    id = "SystemTool",
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
        systemTool = M.SystemTool,
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

M.ConverseInput = {
    type = "structure",
    id = "ConverseInput",
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
            member = M.Message,
        },
        system = {
            type = "list",
            member = M.SystemContentBlock,
        },
        inferenceConfig = M.InferenceConfiguration,
        toolConfig = M.ToolConfiguration,
        guardrailConfig = M.GuardrailConfiguration,
        additionalModelRequestFields = {
            type = "document",
        },
        promptVariables = {
            type = "map",
            key = { type = "string" },
            value = M.PromptVariableValues,
        },
        additionalModelResponseFieldPaths = {
            type = "list",
            member = { type = "string" },
        },
        requestMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        performanceConfig = M.PerformanceConfiguration,
        serviceTier = M.ServiceTier,
        outputConfig = M.OutputConfig,
    },
}

M.ConverseMetrics = {
    type = "structure",
    id = "ConverseMetrics",
    members = {
        latencyMs = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ConverseOutput = {
    type = "union",
    id = "ConverseOutput",
    members = {
        message = M.Message,
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
    id = "GuardrailTraceAssessment",
    members = {
        modelOutput = {
            type = "list",
            member = { type = "string" },
        },
        inputAssessment = {
            type = "map",
            key = { type = "string" },
            value = M.GuardrailAssessment,
        },
        outputAssessments = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        actionReason = {
            type = "string",
        },
    },
}

M.PromptRouterTrace = {
    type = "structure",
    id = "PromptRouterTrace",
    members = {
        invokedModelId = {
            type = "string",
        },
    },
}

M.ConverseTrace = {
    type = "structure",
    id = "ConverseTrace",
    members = {
        guardrail = M.GuardrailTraceAssessment,
        promptRouter = M.PromptRouterTrace,
    },
}

M.CacheDetail = {
    type = "structure",
    id = "CacheDetail",
    members = {
        ttl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.TokenUsage = {
    type = "structure",
    id = "TokenUsage",
    members = {
        inputTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        outputTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        totalTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        cacheReadInputTokens = {
            type = "integer",
        },
        cacheWriteInputTokens = {
            type = "integer",
        },
        cacheDetails = {
            type = "list",
            member = M.CacheDetail,
        },
    },
}

M.ConverseOperationOutput = {
    type = "structure",
    id = "ConverseOperationOutput",
    members = {
        output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConverseOutput }),
        stopReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TokenUsage }),
        metrics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConverseMetrics }),
        additionalModelResponseFields = {
            type = "document",
        },
        trace = M.ConverseTrace,
        performanceConfig = M.PerformanceConfiguration,
        serviceTier = M.ServiceTier,
    },
}

M.ModelErrorException = {
    type = "structure",
    id = "ModelErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        originalStatusCode = {
            type = "integer",
        },
        resourceName = {
            type = "string",
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

M.ModelTimeoutException = {
    type = "structure",
    id = "ModelTimeoutException",
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
    id = "GuardrailStreamConfiguration",
    members = {
        guardrailIdentifier = {
            type = "string",
            traits = {
                default = "",
            },
        },
        guardrailVersion = {
            type = "string",
            traits = {
                default = "",
            },
        },
        trace = {
            type = "string",
            traits = {
                default = "disabled",
            },
        },
        streamProcessingMode = {
            type = "string",
            traits = {
                default = "sync",
            },
        },
    },
}

M.ConverseStreamInput = {
    type = "structure",
    id = "ConverseStreamInput",
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
            member = M.Message,
        },
        system = {
            type = "list",
            member = M.SystemContentBlock,
        },
        inferenceConfig = M.InferenceConfiguration,
        toolConfig = M.ToolConfiguration,
        guardrailConfig = M.GuardrailStreamConfiguration,
        additionalModelRequestFields = {
            type = "document",
        },
        promptVariables = {
            type = "map",
            key = { type = "string" },
            value = M.PromptVariableValues,
        },
        additionalModelResponseFieldPaths = {
            type = "list",
            member = { type = "string" },
        },
        requestMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        performanceConfig = M.PerformanceConfiguration,
        serviceTier = M.ServiceTier,
        outputConfig = M.OutputConfig,
    },
}

M.CitationSourceContentDelta = {
    type = "structure",
    id = "CitationSourceContentDelta",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CitationsDelta = {
    type = "structure",
    id = "CitationsDelta",
    members = {
        title = {
            type = "string",
        },
        source = {
            type = "string",
        },
        sourceContent = {
            type = "list",
            member = M.CitationSourceContentDelta,
        },
        location = M.CitationLocation,
    },
}

M.ImageBlockDelta = {
    type = "structure",
    id = "ImageBlockDelta",
    members = {
        source = M.ImageSource,
        error = M.ErrorBlock,
    },
}

M.ReasoningContentBlockDelta = {
    type = "union",
    id = "ReasoningContentBlockDelta",
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
    id = "ToolResultBlockDelta",
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
    id = "ToolUseBlockDelta",
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
    id = "ContentBlockDelta",
    members = {
        text = {
            type = "string",
        },
        toolUse = M.ToolUseBlockDelta,
        toolResult = {
            type = "list",
            member = M.ToolResultBlockDelta,
        },
        reasoningContent = M.ReasoningContentBlockDelta,
        citation = M.CitationsDelta,
        image = M.ImageBlockDelta,
    },
}

M.ContentBlockDeltaEvent = {
    type = "structure",
    id = "ContentBlockDeltaEvent",
    members = {
        delta = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentBlockDelta }),
        contentBlockIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageBlockStart = {
    type = "structure",
    id = "ImageBlockStart",
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
    id = "ToolResultBlockStart",
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
    id = "ToolUseBlockStart",
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
    id = "ContentBlockStart",
    members = {
        toolUse = M.ToolUseBlockStart,
        toolResult = M.ToolResultBlockStart,
        image = M.ImageBlockStart,
    },
}

M.ContentBlockStartEvent = {
    type = "structure",
    id = "ContentBlockStartEvent",
    members = {
        start = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContentBlockStart }),
        contentBlockIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentBlockStopEvent = {
    type = "structure",
    id = "ContentBlockStopEvent",
    members = {
        contentBlockIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageStartEvent = {
    type = "structure",
    id = "MessageStartEvent",
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
    id = "MessageStopEvent",
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
    id = "ConverseStreamMetrics",
    members = {
        latencyMs = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ConverseStreamTrace = {
    type = "structure",
    id = "ConverseStreamTrace",
    members = {
        guardrail = M.GuardrailTraceAssessment,
        promptRouter = M.PromptRouterTrace,
    },
}

M.ConverseStreamMetadataEvent = {
    type = "structure",
    id = "ConverseStreamMetadataEvent",
    members = {
        usage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TokenUsage }),
        metrics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConverseStreamMetrics }),
        trace = M.ConverseStreamTrace,
        performanceConfig = M.PerformanceConfiguration,
        serviceTier = M.ServiceTier,
    },
}

M.ModelStreamErrorException = {
    type = "structure",
    id = "ModelStreamErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        originalStatusCode = {
            type = "integer",
        },
        originalMessage = {
            type = "string",
        },
    },
}

M.ConverseStreamOutput = {
    type = "union",
    id = "ConverseStreamOutput",
    members = {
        messageStart = M.MessageStartEvent,
        contentBlockStart = M.ContentBlockStartEvent,
        contentBlockDelta = M.ContentBlockDeltaEvent,
        contentBlockStop = M.ContentBlockStopEvent,
        messageStop = M.MessageStopEvent,
        metadata = M.ConverseStreamMetadataEvent,
        internalServerException = M.InternalServerException,
        modelStreamErrorException = M.ModelStreamErrorException,
        validationException = M.ValidationException,
        throttlingException = M.ThrottlingException,
        serviceUnavailableException = M.ServiceUnavailableException,
    },
}

M.ConverseStreamOperationOutput = {
    type = "structure",
    id = "ConverseStreamOperationOutput",
    members = {
        stream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConverseStreamOutput }),
    },
}

M.Trace = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLED_FULL = "ENABLED_FULL",
}

M.InvokeModelInput = {
    type = "structure",
    id = "InvokeModelInput",
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
                default = "standard",
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
    id = "InvokeModelOutput",
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
    id = "BidirectionalInputPayloadPart",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.InvokeModelWithBidirectionalStreamInput = {
    type = "union",
    id = "InvokeModelWithBidirectionalStreamInput",
    members = {
        chunk = M.BidirectionalInputPayloadPart,
    },
}

M.InvokeModelWithBidirectionalStreamOperationInput = {
    type = "structure",
    id = "InvokeModelWithBidirectionalStreamOperationInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InvokeModelWithBidirectionalStreamInput }),
    },
}

M.BidirectionalOutputPayloadPart = {
    type = "structure",
    id = "BidirectionalOutputPayloadPart",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.InvokeModelWithBidirectionalStreamOutput = {
    type = "union",
    id = "InvokeModelWithBidirectionalStreamOutput",
    members = {
        chunk = M.BidirectionalOutputPayloadPart,
        internalServerException = M.InternalServerException,
        modelStreamErrorException = M.ModelStreamErrorException,
        validationException = M.ValidationException,
        throttlingException = M.ThrottlingException,
        modelTimeoutException = M.ModelTimeoutException,
        serviceUnavailableException = M.ServiceUnavailableException,
    },
}

M.InvokeModelWithBidirectionalStreamOperationOutput = {
    type = "structure",
    id = "InvokeModelWithBidirectionalStreamOperationOutput",
    members = {
        body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InvokeModelWithBidirectionalStreamOutput }),
    },
}

M.InvokeModelWithResponseStreamInput = {
    type = "structure",
    id = "InvokeModelWithResponseStreamInput",
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
                default = "standard",
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
    id = "PayloadPart",
    members = {
        bytes = {
            type = "blob",
        },
    },
}

M.ResponseStream = {
    type = "union",
    id = "ResponseStream",
    members = {
        chunk = M.PayloadPart,
        internalServerException = M.InternalServerException,
        modelStreamErrorException = M.ModelStreamErrorException,
        validationException = M.ValidationException,
        throttlingException = M.ThrottlingException,
        modelTimeoutException = M.ModelTimeoutException,
        serviceUnavailableException = M.ServiceUnavailableException,
    },
}

M.InvokeModelWithResponseStreamOutput = {
    type = "structure",
    id = "InvokeModelWithResponseStreamOutput",
    members = {
        body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ResponseStream }),
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
    id = "ConverseTokensRequest",
    members = {
        messages = {
            type = "list",
            member = M.Message,
        },
        system = {
            type = "list",
            member = M.SystemContentBlock,
        },
        toolConfig = M.ToolConfiguration,
        additionalModelRequestFields = {
            type = "document",
        },
    },
}

M.InvokeModelTokensRequest = {
    type = "structure",
    id = "InvokeModelTokensRequest",
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
    id = "CountTokensInput",
    members = {
        invokeModel = M.InvokeModelTokensRequest,
        converse = M.ConverseTokensRequest,
    },
}

M.CountTokensOperationInput = {
    type = "structure",
    id = "CountTokensOperationInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CountTokensInput }),
    },
}

M.CountTokensOutput = {
    type = "structure",
    id = "CountTokensOutput",
    members = {
        inputTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

return M
