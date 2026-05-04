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

M.ModelEnforcement = {
    type = "structure",
    id = "ModelEnforcement",
    members = {
        includedModels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        excludedModels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SelectiveGuardingMode = {
    SELECTIVE = "SELECTIVE",
    COMPREHENSIVE = "COMPREHENSIVE",
}

M.SelectiveContentGuarding = {
    type = "structure",
    id = "SelectiveContentGuarding",
    members = {
        system = {
            type = "string",
        },
        messages = {
            type = "string",
        },
    },
}

M.AccountEnforcedGuardrailInferenceInputConfiguration = {
    type = "structure",
    id = "AccountEnforcedGuardrailInferenceInputConfiguration",
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
        selectiveContentGuarding = M.SelectiveContentGuarding,
        modelEnforcement = M.ModelEnforcement,
    },
}

M.InputTags = {
    HONOR = "HONOR",
    IGNORE = "IGNORE",
}

M.ConfigurationOwner = {
    ACCOUNT = "ACCOUNT",
}

M.AccountEnforcedGuardrailOutputConfiguration = {
    type = "structure",
    id = "AccountEnforcedGuardrailOutputConfiguration",
    members = {
        configId = {
            type = "string",
        },
        guardrailArn = {
            type = "string",
        },
        guardrailId = {
            type = "string",
        },
        inputTags = {
            type = "string",
        },
        selectiveContentGuarding = M.SelectiveContentGuarding,
        guardrailVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        modelEnforcement = M.ModelEnforcement,
    },
}

M.AgreementStatus = {
    AVAILABLE = "AVAILABLE",
    PENDING = "PENDING",
    NOT_AVAILABLE = "NOT_AVAILABLE",
    ERROR = "ERROR",
}

M.AgreementAvailability = {
    type = "structure",
    id = "AgreementAvailability",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.GetUseCaseForModelAccessInput = {
    type = "structure",
    id = "GetUseCaseForModelAccessInput",
}

M.GetUseCaseForModelAccessOutput = {
    type = "structure",
    id = "GetUseCaseForModelAccessOutput",
    members = {
        formData = {
            type = "blob",
            traits = {
                required = true,
            },
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

M.PutUseCaseForModelAccessInput = {
    type = "structure",
    id = "PutUseCaseForModelAccessInput",
    members = {
        formData = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.PutUseCaseForModelAccessOutput = {
    type = "structure",
    id = "PutUseCaseForModelAccessOutput",
}

M.CancelAutomatedReasoningPolicyBuildWorkflowInput = {
    type = "structure",
    id = "CancelAutomatedReasoningPolicyBuildWorkflowInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelAutomatedReasoningPolicyBuildWorkflowOutput = {
    type = "structure",
    id = "CancelAutomatedReasoningPolicyBuildWorkflowOutput",
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

M.AutomatedReasoningPolicyDefinitionRule = {
    type = "structure",
    id = "AutomatedReasoningPolicyDefinitionRule",
    members = {
        id = {
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
        alternateExpression = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyDefinitionTypeValue = {
    type = "structure",
    id = "AutomatedReasoningPolicyDefinitionTypeValue",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyDefinitionType = {
    type = "structure",
    id = "AutomatedReasoningPolicyDefinitionType",
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
        values = {
            type = "list",
            member = M.AutomatedReasoningPolicyDefinitionTypeValue,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDefinitionVariable = {
    type = "structure",
    id = "AutomatedReasoningPolicyDefinitionVariable",
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDefinition = {
    type = "structure",
    id = "AutomatedReasoningPolicyDefinition",
    members = {
        version = {
            type = "string",
            traits = {
                default = "1",
            },
        },
        types = {
            type = "list",
            member = M.AutomatedReasoningPolicyDefinitionType,
        },
        rules = {
            type = "list",
            member = M.AutomatedReasoningPolicyDefinitionRule,
        },
        variables = {
            type = "list",
            member = M.AutomatedReasoningPolicyDefinitionVariable,
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

M.CreateAutomatedReasoningPolicyInput = {
    type = "structure",
    id = "CreateAutomatedReasoningPolicyInput",
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
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        policyDefinition = M.AutomatedReasoningPolicyDefinition,
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAutomatedReasoningPolicyOutput = {
    type = "structure",
    id = "CreateAutomatedReasoningPolicyOutput",
    members = {
        policyArn = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        definitionHash = {
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

M.AutomatedReasoningCheckResult = {
    VALID = "VALID",
    INVALID = "INVALID",
    SATISFIABLE = "SATISFIABLE",
    IMPOSSIBLE = "IMPOSSIBLE",
    TRANSLATION_AMBIGUOUS = "TRANSLATION_AMBIGUOUS",
    TOO_COMPLEX = "TOO_COMPLEX",
    NO_TRANSLATION = "NO_TRANSLATION",
}

M.CreateAutomatedReasoningPolicyTestCaseInput = {
    type = "structure",
    id = "CreateAutomatedReasoningPolicyTestCaseInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        guardContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryContent = {
            type = "string",
        },
        expectedAggregatedFindingsResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        confidenceThreshold = {
            type = "double",
        },
    },
}

M.CreateAutomatedReasoningPolicyTestCaseOutput = {
    type = "structure",
    id = "CreateAutomatedReasoningPolicyTestCaseOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testCaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAutomatedReasoningPolicyVersionInput = {
    type = "structure",
    id = "CreateAutomatedReasoningPolicyVersionInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        lastUpdatedDefinitionHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAutomatedReasoningPolicyVersionOutput = {
    type = "structure",
    id = "CreateAutomatedReasoningPolicyVersionOutput",
    members = {
        policyArn = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        definitionHash = {
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

M.DeleteAutomatedReasoningPolicyInput = {
    type = "structure",
    id = "DeleteAutomatedReasoningPolicyInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
    },
}

M.DeleteAutomatedReasoningPolicyOutput = {
    type = "structure",
    id = "DeleteAutomatedReasoningPolicyOutput",
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAutomatedReasoningPolicyBuildWorkflowInput = {
    type = "structure",
    id = "DeleteAutomatedReasoningPolicyBuildWorkflowInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                http_query = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteAutomatedReasoningPolicyBuildWorkflowOutput = {
    type = "structure",
    id = "DeleteAutomatedReasoningPolicyBuildWorkflowOutput",
}

M.DeleteAutomatedReasoningPolicyTestCaseInput = {
    type = "structure",
    id = "DeleteAutomatedReasoningPolicyTestCaseInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        testCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                http_query = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteAutomatedReasoningPolicyTestCaseOutput = {
    type = "structure",
    id = "DeleteAutomatedReasoningPolicyTestCaseOutput",
}

M.ExportAutomatedReasoningPolicyVersionInput = {
    type = "structure",
    id = "ExportAutomatedReasoningPolicyVersionInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExportAutomatedReasoningPolicyVersionOutput = {
    type = "structure",
    id = "ExportAutomatedReasoningPolicyVersionOutput",
    members = {
        policyDefinition = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinition }),
    },
}

M.GetAutomatedReasoningPolicyInput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAutomatedReasoningPolicyOutput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyOutput",
    members = {
        policyArn = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        definitionHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
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

M.GetAutomatedReasoningPolicyAnnotationsInput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyAnnotationsInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddRuleAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddRuleAnnotation",
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation",
    members = {
        naturalLanguage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddTypeAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddTypeAnnotation",
    members = {
        name = {
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
        values = {
            type = "list",
            member = M.AutomatedReasoningPolicyDefinitionTypeValue,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddVariableAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddVariableAnnotation",
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDeleteRuleAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyDeleteRuleAnnotation",
    members = {
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDeleteTypeAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyDeleteTypeAnnotation",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDeleteVariableAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyDeleteVariableAnnotation",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyIngestContentAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyIngestContentAnnotation",
    members = {
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation",
    members = {
        ruleIds = {
            type = "list",
            member = { type = "string" },
        },
        feedback = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation",
    members = {
        ruleIds = {
            type = "list",
            member = { type = "string" },
        },
        scenarioExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        feedback = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyUpdateRuleAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateRuleAnnotation",
    members = {
        ruleId = {
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

M.AutomatedReasoningPolicyAddTypeValue = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddTypeValue",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyDeleteTypeValue = {
    type = "structure",
    id = "AutomatedReasoningPolicyDeleteTypeValue",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyUpdateTypeValue = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateTypeValue",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newValue = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyTypeValueAnnotation = {
    type = "union",
    id = "AutomatedReasoningPolicyTypeValueAnnotation",
    members = {
        addTypeValue = M.AutomatedReasoningPolicyAddTypeValue,
        updateTypeValue = M.AutomatedReasoningPolicyUpdateTypeValue,
        deleteTypeValue = M.AutomatedReasoningPolicyDeleteTypeValue,
    },
}

M.AutomatedReasoningPolicyUpdateTypeAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateTypeAnnotation",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        values = {
            type = "list",
            member = M.AutomatedReasoningPolicyTypeValueAnnotation,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyUpdateVariableAnnotation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateVariableAnnotation",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newName = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyAnnotation = {
    type = "union",
    id = "AutomatedReasoningPolicyAnnotation",
    members = {
        addType = M.AutomatedReasoningPolicyAddTypeAnnotation,
        updateType = M.AutomatedReasoningPolicyUpdateTypeAnnotation,
        deleteType = M.AutomatedReasoningPolicyDeleteTypeAnnotation,
        addVariable = M.AutomatedReasoningPolicyAddVariableAnnotation,
        updateVariable = M.AutomatedReasoningPolicyUpdateVariableAnnotation,
        deleteVariable = M.AutomatedReasoningPolicyDeleteVariableAnnotation,
        addRule = M.AutomatedReasoningPolicyAddRuleAnnotation,
        updateRule = M.AutomatedReasoningPolicyUpdateRuleAnnotation,
        deleteRule = M.AutomatedReasoningPolicyDeleteRuleAnnotation,
        addRuleFromNaturalLanguage = M.AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation,
        updateFromRulesFeedback = M.AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation,
        updateFromScenarioFeedback = M.AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation,
        ingestContent = M.AutomatedReasoningPolicyIngestContentAnnotation,
    },
}

M.GetAutomatedReasoningPolicyAnnotationsOutput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyAnnotationsOutput",
    members = {
        policyArn = {
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
        buildWorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        annotations = {
            type = "list",
            member = M.AutomatedReasoningPolicyAnnotation,
            traits = {
                required = true,
            },
        },
        annotationSetHash = {
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

M.GetAutomatedReasoningPolicyBuildWorkflowInput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyBuildWorkflowInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyBuildWorkflowType = {
    INGEST_CONTENT = "INGEST_CONTENT",
    REFINE_POLICY = "REFINE_POLICY",
    IMPORT_POLICY = "IMPORT_POLICY",
    GENERATE_FIDELITY_REPORT = "GENERATE_FIDELITY_REPORT",
    GENERATE_POLICY_SCENARIOS = "GENERATE_POLICY_SCENARIOS",
}

M.AutomatedReasoningPolicyBuildDocumentContentType = {
    PDF = "pdf",
    TEXT = "txt",
}

M.AutomatedReasoningPolicyBuildWorkflowStatus = {
    SCHEDULED = "SCHEDULED",
    CANCEL_REQUESTED = "CANCEL_REQUESTED",
    PREPROCESSING = "PREPROCESSING",
    BUILDING = "BUILDING",
    TESTING = "TESTING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.GetAutomatedReasoningPolicyBuildWorkflowOutput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyBuildWorkflowOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        buildWorkflowId = {
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
        buildWorkflowType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentName = {
            type = "string",
        },
        documentContentType = {
            type = "string",
        },
        documentDescription = {
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
    },
}

M.AutomatedReasoningPolicyBuildResultAssetType = {
    BUILD_LOG = "BUILD_LOG",
    QUALITY_REPORT = "QUALITY_REPORT",
    POLICY_DEFINITION = "POLICY_DEFINITION",
    GENERATED_TEST_CASES = "GENERATED_TEST_CASES",
    POLICY_SCENARIOS = "POLICY_SCENARIOS",
    FIDELITY_REPORT = "FIDELITY_REPORT",
    ASSET_MANIFEST = "ASSET_MANIFEST",
    SOURCE_DOCUMENT = "SOURCE_DOCUMENT",
}

M.GetAutomatedReasoningPolicyBuildWorkflowResultAssetsInput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyBuildWorkflowResultAssetsInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetType = {
            type = "string",
            traits = {
                http_query = "assetType",
                required = true,
            },
        },
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
    },
}

M.AutomatedReasoningPolicyBuildResultAssetManifestEntry = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildResultAssetManifestEntry",
    members = {
        assetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetName = {
            type = "string",
        },
        assetId = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyBuildResultAssetManifest = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildResultAssetManifest",
    members = {
        entries = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildResultAssetManifestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddRuleMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddRuleMutation",
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionRule }),
    },
}

M.AutomatedReasoningPolicyAddTypeMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddTypeMutation",
    members = {
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionType }),
    },
}

M.AutomatedReasoningPolicyAddVariableMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyAddVariableMutation",
    members = {
        variable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionVariable }),
    },
}

M.AutomatedReasoningPolicyDeleteRuleMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyDeleteRuleMutation",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDeleteTypeMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyDeleteTypeMutation",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDeleteVariableMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyDeleteVariableMutation",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyUpdateRuleMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateRuleMutation",
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionRule }),
    },
}

M.AutomatedReasoningPolicyUpdateTypeMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateTypeMutation",
    members = {
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionType }),
    },
}

M.AutomatedReasoningPolicyUpdateVariableMutation = {
    type = "structure",
    id = "AutomatedReasoningPolicyUpdateVariableMutation",
    members = {
        variable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionVariable }),
    },
}

M.AutomatedReasoningPolicyMutation = {
    type = "union",
    id = "AutomatedReasoningPolicyMutation",
    members = {
        addType = M.AutomatedReasoningPolicyAddTypeMutation,
        updateType = M.AutomatedReasoningPolicyUpdateTypeMutation,
        deleteType = M.AutomatedReasoningPolicyDeleteTypeMutation,
        addVariable = M.AutomatedReasoningPolicyAddVariableMutation,
        updateVariable = M.AutomatedReasoningPolicyUpdateVariableMutation,
        deleteVariable = M.AutomatedReasoningPolicyDeleteVariableMutation,
        addRule = M.AutomatedReasoningPolicyAddRuleMutation,
        updateRule = M.AutomatedReasoningPolicyUpdateRuleMutation,
        deleteRule = M.AutomatedReasoningPolicyDeleteRuleMutation,
    },
}

M.AutomatedReasoningPolicyPlanning = {
    type = "structure",
    id = "AutomatedReasoningPolicyPlanning",
}

M.AutomatedReasoningPolicyBuildStepContext = {
    type = "union",
    id = "AutomatedReasoningPolicyBuildStepContext",
    members = {
        planning = M.AutomatedReasoningPolicyPlanning,
        mutation = M.AutomatedReasoningPolicyMutation,
    },
}

M.AutomatedReasoningPolicyBuildMessageType = {
    INFO = "INFO",
    WARNING = "WARNING",
    ERROR = "ERROR",
}

M.AutomatedReasoningPolicyBuildStepMessage = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildStepMessage",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDefinitionElement = {
    type = "union",
    id = "AutomatedReasoningPolicyDefinitionElement",
    members = {
        policyDefinitionVariable = M.AutomatedReasoningPolicyDefinitionVariable,
        policyDefinitionType = M.AutomatedReasoningPolicyDefinitionType,
        policyDefinitionRule = M.AutomatedReasoningPolicyDefinitionRule,
    },
}

M.AutomatedReasoningPolicyBuildStep = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildStep",
    members = {
        context = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyBuildStepContext }),
        priorElement = M.AutomatedReasoningPolicyDefinitionElement,
        messages = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildStepMessage,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAnnotationStatus = {
    APPLIED = "APPLIED",
    FAILED = "FAILED",
}

M.AutomatedReasoningPolicyBuildLogEntry = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildLogEntry",
    members = {
        annotation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyAnnotation }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        buildSteps = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildStep,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyBuildLog = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildLog",
    members = {
        entries = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildLogEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicySourceDocument = {
    type = "structure",
    id = "AutomatedReasoningPolicySourceDocument",
    members = {
        document = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        documentContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentDescription = {
            type = "string",
        },
        documentHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyStatementLocation = {
    type = "structure",
    id = "AutomatedReasoningPolicyStatementLocation",
    members = {
        lines = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAtomicStatement = {
    type = "structure",
    id = "AutomatedReasoningPolicyAtomicStatement",
    members = {
        id = {
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
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyStatementLocation }),
    },
}

M.AutomatedReasoningPolicyAnnotatedLine = {
    type = "structure",
    id = "AutomatedReasoningPolicyAnnotatedLine",
    members = {
        lineNumber = {
            type = "integer",
        },
        lineText = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyAnnotatedContent = {
    type = "union",
    id = "AutomatedReasoningPolicyAnnotatedContent",
    members = {
        line = M.AutomatedReasoningPolicyAnnotatedLine,
    },
}

M.AutomatedReasoningPolicyAnnotatedChunk = {
    type = "structure",
    id = "AutomatedReasoningPolicyAnnotatedChunk",
    members = {
        pageNumber = {
            type = "integer",
        },
        content = {
            type = "list",
            member = M.AutomatedReasoningPolicyAnnotatedContent,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyReportSourceDocument = {
    type = "structure",
    id = "AutomatedReasoningPolicyReportSourceDocument",
    members = {
        documentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        atomicStatements = {
            type = "list",
            member = M.AutomatedReasoningPolicyAtomicStatement,
            traits = {
                required = true,
            },
        },
        documentContent = {
            type = "list",
            member = M.AutomatedReasoningPolicyAnnotatedChunk,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyStatementReference = {
    type = "structure",
    id = "AutomatedReasoningPolicyStatementReference",
    members = {
        documentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyRuleReport = {
    type = "structure",
    id = "AutomatedReasoningPolicyRuleReport",
    members = {
        rule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groundingStatements = {
            type = "list",
            member = M.AutomatedReasoningPolicyStatementReference,
        },
        groundingJustifications = {
            type = "list",
            member = { type = "string" },
        },
        accuracyScore = {
            type = "double",
        },
        accuracyJustification = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyVariableReport = {
    type = "structure",
    id = "AutomatedReasoningPolicyVariableReport",
    members = {
        policyVariable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groundingStatements = {
            type = "list",
            member = M.AutomatedReasoningPolicyStatementReference,
        },
        groundingJustifications = {
            type = "list",
            member = { type = "string" },
        },
        accuracyScore = {
            type = "double",
        },
        accuracyJustification = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyFidelityReport = {
    type = "structure",
    id = "AutomatedReasoningPolicyFidelityReport",
    members = {
        coverageScore = {
            type = "double",
            traits = {
                required = true,
            },
        },
        accuracyScore = {
            type = "double",
            traits = {
                required = true,
            },
        },
        ruleReports = {
            type = "map",
            key = { type = "string" },
            value = M.AutomatedReasoningPolicyRuleReport,
            traits = {
                required = true,
            },
        },
        variableReports = {
            type = "map",
            key = { type = "string" },
            value = M.AutomatedReasoningPolicyVariableReport,
            traits = {
                required = true,
            },
        },
        documentSources = {
            type = "list",
            member = M.AutomatedReasoningPolicyReportSourceDocument,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyGeneratedTestCase = {
    type = "structure",
    id = "AutomatedReasoningPolicyGeneratedTestCase",
    members = {
        queryContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedAggregatedFindingsResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyGeneratedTestCases = {
    type = "structure",
    id = "AutomatedReasoningPolicyGeneratedTestCases",
    members = {
        generatedTestCases = {
            type = "list",
            member = M.AutomatedReasoningPolicyGeneratedTestCase,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyScenario = {
    type = "structure",
    id = "AutomatedReasoningPolicyScenario",
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alternateExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyScenarios = {
    type = "structure",
    id = "AutomatedReasoningPolicyScenarios",
    members = {
        policyScenarios = {
            type = "list",
            member = M.AutomatedReasoningPolicyScenario,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDisjointRuleSet = {
    type = "structure",
    id = "AutomatedReasoningPolicyDisjointRuleSet",
    members = {
        variables = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDefinitionTypeValuePair = {
    type = "structure",
    id = "AutomatedReasoningPolicyDefinitionTypeValuePair",
    members = {
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyDefinitionQualityReport = {
    type = "structure",
    id = "AutomatedReasoningPolicyDefinitionQualityReport",
    members = {
        typeCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        variableCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ruleCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        unusedTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        unusedTypeValues = {
            type = "list",
            member = M.AutomatedReasoningPolicyDefinitionTypeValuePair,
            traits = {
                required = true,
            },
        },
        unusedVariables = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        conflictingRules = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        disjointRuleSets = {
            type = "list",
            member = M.AutomatedReasoningPolicyDisjointRuleSet,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyBuildResultAssets = {
    type = "union",
    id = "AutomatedReasoningPolicyBuildResultAssets",
    members = {
        policyDefinition = M.AutomatedReasoningPolicyDefinition,
        qualityReport = M.AutomatedReasoningPolicyDefinitionQualityReport,
        buildLog = M.AutomatedReasoningPolicyBuildLog,
        generatedTestCases = M.AutomatedReasoningPolicyGeneratedTestCases,
        policyScenarios = M.AutomatedReasoningPolicyScenarios,
        assetManifest = M.AutomatedReasoningPolicyBuildResultAssetManifest,
        document = M.AutomatedReasoningPolicySourceDocument,
        fidelityReport = M.AutomatedReasoningPolicyFidelityReport,
    },
}

M.GetAutomatedReasoningPolicyBuildWorkflowResultAssetsOutput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyBuildWorkflowResultAssetsOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        buildWorkflowAssets = M.AutomatedReasoningPolicyBuildResultAssets,
    },
}

M.GetAutomatedReasoningPolicyNextScenarioInput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyNextScenarioInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAutomatedReasoningPolicyNextScenarioOutput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyNextScenarioOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scenario = M.AutomatedReasoningPolicyScenario,
    },
}

M.GetAutomatedReasoningPolicyTestCaseInput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyTestCaseInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        testCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyTestCase = {
    type = "structure",
    id = "AutomatedReasoningPolicyTestCase",
    members = {
        testCaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryContent = {
            type = "string",
        },
        expectedAggregatedFindingsResult = {
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
        confidenceThreshold = {
            type = "double",
        },
    },
}

M.GetAutomatedReasoningPolicyTestCaseOutput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyTestCaseOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testCase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyTestCase }),
    },
}

M.GetAutomatedReasoningPolicyTestResultInput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyTestResultInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        testCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AutomatedReasoningCheckRule = {
    type = "structure",
    id = "AutomatedReasoningCheckRule",
    members = {
        id = {
            type = "string",
        },
        policyVersionArn = {
            type = "string",
        },
    },
}

M.AutomatedReasoningLogicStatement = {
    type = "structure",
    id = "AutomatedReasoningLogicStatement",
    members = {
        logic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        naturalLanguage = {
            type = "string",
        },
    },
}

M.AutomatedReasoningCheckLogicWarningType = {
    ALWAYS_TRUE = "ALWAYS_TRUE",
    ALWAYS_FALSE = "ALWAYS_FALSE",
}

M.AutomatedReasoningCheckLogicWarning = {
    type = "structure",
    id = "AutomatedReasoningCheckLogicWarning",
    members = {
        type = {
            type = "string",
        },
        premises = {
            type = "list",
            member = M.AutomatedReasoningLogicStatement,
        },
        claims = {
            type = "list",
            member = M.AutomatedReasoningLogicStatement,
        },
    },
}

M.AutomatedReasoningCheckInputTextReference = {
    type = "structure",
    id = "AutomatedReasoningCheckInputTextReference",
    members = {
        text = {
            type = "string",
        },
    },
}

M.AutomatedReasoningCheckTranslation = {
    type = "structure",
    id = "AutomatedReasoningCheckTranslation",
    members = {
        premises = {
            type = "list",
            member = M.AutomatedReasoningLogicStatement,
        },
        claims = {
            type = "list",
            member = M.AutomatedReasoningLogicStatement,
            traits = {
                required = true,
            },
        },
        untranslatedPremises = {
            type = "list",
            member = M.AutomatedReasoningCheckInputTextReference,
        },
        untranslatedClaims = {
            type = "list",
            member = M.AutomatedReasoningCheckInputTextReference,
        },
        confidence = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningCheckImpossibleFinding = {
    type = "structure",
    id = "AutomatedReasoningCheckImpossibleFinding",
    members = {
        translation = M.AutomatedReasoningCheckTranslation,
        contradictingRules = {
            type = "list",
            member = M.AutomatedReasoningCheckRule,
        },
        logicWarning = M.AutomatedReasoningCheckLogicWarning,
    },
}

M.AutomatedReasoningCheckInvalidFinding = {
    type = "structure",
    id = "AutomatedReasoningCheckInvalidFinding",
    members = {
        translation = M.AutomatedReasoningCheckTranslation,
        contradictingRules = {
            type = "list",
            member = M.AutomatedReasoningCheckRule,
        },
        logicWarning = M.AutomatedReasoningCheckLogicWarning,
    },
}

M.AutomatedReasoningCheckNoTranslationsFinding = {
    type = "structure",
    id = "AutomatedReasoningCheckNoTranslationsFinding",
}

M.AutomatedReasoningCheckScenario = {
    type = "structure",
    id = "AutomatedReasoningCheckScenario",
    members = {
        statements = {
            type = "list",
            member = M.AutomatedReasoningLogicStatement,
        },
    },
}

M.AutomatedReasoningCheckSatisfiableFinding = {
    type = "structure",
    id = "AutomatedReasoningCheckSatisfiableFinding",
    members = {
        translation = M.AutomatedReasoningCheckTranslation,
        claimsTrueScenario = M.AutomatedReasoningCheckScenario,
        claimsFalseScenario = M.AutomatedReasoningCheckScenario,
        logicWarning = M.AutomatedReasoningCheckLogicWarning,
    },
}

M.AutomatedReasoningCheckTooComplexFinding = {
    type = "structure",
    id = "AutomatedReasoningCheckTooComplexFinding",
}

M.AutomatedReasoningCheckTranslationOption = {
    type = "structure",
    id = "AutomatedReasoningCheckTranslationOption",
    members = {
        translations = {
            type = "list",
            member = M.AutomatedReasoningCheckTranslation,
        },
    },
}

M.AutomatedReasoningCheckTranslationAmbiguousFinding = {
    type = "structure",
    id = "AutomatedReasoningCheckTranslationAmbiguousFinding",
    members = {
        options = {
            type = "list",
            member = M.AutomatedReasoningCheckTranslationOption,
        },
        differenceScenarios = {
            type = "list",
            member = M.AutomatedReasoningCheckScenario,
        },
    },
}

M.AutomatedReasoningCheckValidFinding = {
    type = "structure",
    id = "AutomatedReasoningCheckValidFinding",
    members = {
        translation = M.AutomatedReasoningCheckTranslation,
        claimsTrueScenario = M.AutomatedReasoningCheckScenario,
        supportingRules = {
            type = "list",
            member = M.AutomatedReasoningCheckRule,
        },
        logicWarning = M.AutomatedReasoningCheckLogicWarning,
    },
}

M.AutomatedReasoningCheckFinding = {
    type = "union",
    id = "AutomatedReasoningCheckFinding",
    members = {
        valid = M.AutomatedReasoningCheckValidFinding,
        invalid = M.AutomatedReasoningCheckInvalidFinding,
        satisfiable = M.AutomatedReasoningCheckSatisfiableFinding,
        impossible = M.AutomatedReasoningCheckImpossibleFinding,
        translationAmbiguous = M.AutomatedReasoningCheckTranslationAmbiguousFinding,
        tooComplex = M.AutomatedReasoningCheckTooComplexFinding,
        noTranslations = M.AutomatedReasoningCheckNoTranslationsFinding,
    },
}

M.AutomatedReasoningPolicyTestRunResult = {
    PASSED = "PASSED",
    FAILED = "FAILED",
}

M.AutomatedReasoningPolicyTestRunStatus = {
    NOT_STARTED = "NOT_STARTED",
    SCHEDULED = "SCHEDULED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.AutomatedReasoningPolicyTestResult = {
    type = "structure",
    id = "AutomatedReasoningPolicyTestResult",
    members = {
        testCase = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyTestCase }),
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testFindings = {
            type = "list",
            member = M.AutomatedReasoningCheckFinding,
        },
        testRunResult = {
            type = "string",
        },
        aggregatedTestFindingsResult = {
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

M.GetAutomatedReasoningPolicyTestResultOutput = {
    type = "structure",
    id = "GetAutomatedReasoningPolicyTestResultOutput",
    members = {
        testResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyTestResult }),
    },
}

M.ListAutomatedReasoningPoliciesInput = {
    type = "structure",
    id = "ListAutomatedReasoningPoliciesInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_query = "policyArn",
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
                default = 25,
                http_query = "maxResults",
            },
        },
    },
}

M.AutomatedReasoningPolicySummary = {
    type = "structure",
    id = "AutomatedReasoningPolicySummary",
    members = {
        policyArn = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
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

M.ListAutomatedReasoningPoliciesOutput = {
    type = "structure",
    id = "ListAutomatedReasoningPoliciesOutput",
    members = {
        automatedReasoningPolicySummaries = {
            type = "list",
            member = M.AutomatedReasoningPolicySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomatedReasoningPolicyBuildWorkflowsInput = {
    type = "structure",
    id = "ListAutomatedReasoningPolicyBuildWorkflowsInput",
    members = {
        policyArn = {
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
                default = 25,
                http_query = "maxResults",
            },
        },
    },
}

M.AutomatedReasoningPolicyBuildWorkflowSummary = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildWorkflowSummary",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        buildWorkflowId = {
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
        buildWorkflowType = {
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

M.ListAutomatedReasoningPolicyBuildWorkflowsOutput = {
    type = "structure",
    id = "ListAutomatedReasoningPolicyBuildWorkflowsOutput",
    members = {
        automatedReasoningPolicyBuildWorkflowSummaries = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildWorkflowSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomatedReasoningPolicyTestCasesInput = {
    type = "structure",
    id = "ListAutomatedReasoningPolicyTestCasesInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                default = nil,
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 25,
                http_query = "maxResults",
            },
        },
    },
}

M.ListAutomatedReasoningPolicyTestCasesOutput = {
    type = "structure",
    id = "ListAutomatedReasoningPolicyTestCasesOutput",
    members = {
        testCases = {
            type = "list",
            member = M.AutomatedReasoningPolicyTestCase,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomatedReasoningPolicyTestResultsInput = {
    type = "structure",
    id = "ListAutomatedReasoningPolicyTestResultsInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                default = nil,
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 25,
                http_query = "maxResults",
            },
        },
    },
}

M.ListAutomatedReasoningPolicyTestResultsOutput = {
    type = "structure",
    id = "ListAutomatedReasoningPolicyTestResultsOutput",
    members = {
        testResults = {
            type = "list",
            member = M.AutomatedReasoningPolicyTestResult,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyBuildWorkflowDocument = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildWorkflowDocument",
    members = {
        document = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        documentContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentDescription = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyGenerateFidelityReportContent = {
    type = "union",
    id = "AutomatedReasoningPolicyGenerateFidelityReportContent",
    members = {
        documents = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildWorkflowDocument,
        },
    },
}

M.AutomatedReasoningPolicyBuildWorkflowRepairContent = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildWorkflowRepairContent",
    members = {
        annotations = {
            type = "list",
            member = M.AutomatedReasoningPolicyAnnotation,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyWorkflowTypeContent = {
    type = "union",
    id = "AutomatedReasoningPolicyWorkflowTypeContent",
    members = {
        documents = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildWorkflowDocument,
        },
        policyRepairAssets = M.AutomatedReasoningPolicyBuildWorkflowRepairContent,
        generateFidelityReportContent = M.AutomatedReasoningPolicyGenerateFidelityReportContent,
    },
}

M.AutomatedReasoningPolicyBuildWorkflowSource = {
    type = "structure",
    id = "AutomatedReasoningPolicyBuildWorkflowSource",
    members = {
        policyDefinition = M.AutomatedReasoningPolicyDefinition,
        workflowContent = M.AutomatedReasoningPolicyWorkflowTypeContent,
    },
}

M.StartAutomatedReasoningPolicyBuildWorkflowInput = {
    type = "structure",
    id = "StartAutomatedReasoningPolicyBuildWorkflowInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                http_header = "x-amz-client-token",
                idempotency_token = true,
            },
        },
        sourceContent = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyBuildWorkflowSource }),
    },
}

M.StartAutomatedReasoningPolicyBuildWorkflowOutput = {
    type = "structure",
    id = "StartAutomatedReasoningPolicyBuildWorkflowOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAutomatedReasoningPolicyTestWorkflowInput = {
    type = "structure",
    id = "StartAutomatedReasoningPolicyTestWorkflowInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        testCaseIds = {
            type = "list",
            member = { type = "string" },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartAutomatedReasoningPolicyTestWorkflowOutput = {
    type = "structure",
    id = "StartAutomatedReasoningPolicyTestWorkflowOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAutomatedReasoningPolicyInput = {
    type = "structure",
    id = "UpdateAutomatedReasoningPolicyInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinition }),
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateAutomatedReasoningPolicyOutput = {
    type = "structure",
    id = "UpdateAutomatedReasoningPolicyOutput",
    members = {
        policyArn = {
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
        definitionHash = {
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

M.UpdateAutomatedReasoningPolicyAnnotationsInput = {
    type = "structure",
    id = "UpdateAutomatedReasoningPolicyAnnotationsInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        annotations = {
            type = "list",
            member = M.AutomatedReasoningPolicyAnnotation,
            traits = {
                required = true,
            },
        },
        lastUpdatedAnnotationSetHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAutomatedReasoningPolicyAnnotationsOutput = {
    type = "structure",
    id = "UpdateAutomatedReasoningPolicyAnnotationsOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        buildWorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        annotationSetHash = {
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

M.UpdateAutomatedReasoningPolicyTestCaseInput = {
    type = "structure",
    id = "UpdateAutomatedReasoningPolicyTestCaseInput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        testCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        guardContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryContent = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        expectedAggregatedFindingsResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "double",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateAutomatedReasoningPolicyTestCaseOutput = {
    type = "structure",
    id = "UpdateAutomatedReasoningPolicyTestCaseOutput",
    members = {
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testCaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SageMakerEndpoint = {
    type = "structure",
    id = "SageMakerEndpoint",
    members = {
        initialInstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsEncryptionKey = {
            type = "string",
        },
        vpc = M.VpcConfig,
    },
}

M.EndpointConfig = {
    type = "union",
    id = "EndpointConfig",
    members = {
        sageMaker = M.SageMakerEndpoint,
    },
}

M.CreateMarketplaceModelEndpointInput = {
    type = "structure",
    id = "CreateMarketplaceModelEndpointInput",
    members = {
        modelSourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointConfig }),
        acceptEula = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        endpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Status = {
    REGISTERED = "REGISTERED",
    INCOMPATIBLE_ENDPOINT = "INCOMPATIBLE_ENDPOINT",
}

M.MarketplaceModelEndpoint = {
    type = "structure",
    id = "MarketplaceModelEndpoint",
    members = {
        endpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelSourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusMessage = {
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
        endpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointConfig }),
        endpointStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpointStatusMessage = {
            type = "string",
        },
    },
}

M.CreateMarketplaceModelEndpointOutput = {
    type = "structure",
    id = "CreateMarketplaceModelEndpointOutput",
    members = {
        marketplaceModelEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MarketplaceModelEndpoint }),
    },
}

M.DeleteMarketplaceModelEndpointInput = {
    type = "structure",
    id = "DeleteMarketplaceModelEndpointInput",
    members = {
        endpointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMarketplaceModelEndpointOutput = {
    type = "structure",
    id = "DeleteMarketplaceModelEndpointOutput",
}

M.DeregisterMarketplaceModelEndpointInput = {
    type = "structure",
    id = "DeregisterMarketplaceModelEndpointInput",
    members = {
        endpointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeregisterMarketplaceModelEndpointOutput = {
    type = "structure",
    id = "DeregisterMarketplaceModelEndpointOutput",
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

M.GetMarketplaceModelEndpointInput = {
    type = "structure",
    id = "GetMarketplaceModelEndpointInput",
    members = {
        endpointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMarketplaceModelEndpointOutput = {
    type = "structure",
    id = "GetMarketplaceModelEndpointOutput",
    members = {
        marketplaceModelEndpoint = M.MarketplaceModelEndpoint,
    },
}

M.ListMarketplaceModelEndpointsInput = {
    type = "structure",
    id = "ListMarketplaceModelEndpointsInput",
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
        modelSourceEquals = {
            type = "string",
            traits = {
                http_query = "modelSourceIdentifier",
            },
        },
    },
}

M.MarketplaceModelEndpointSummary = {
    type = "structure",
    id = "MarketplaceModelEndpointSummary",
    members = {
        endpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelSourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusMessage = {
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
    },
}

M.ListMarketplaceModelEndpointsOutput = {
    type = "structure",
    id = "ListMarketplaceModelEndpointsOutput",
    members = {
        marketplaceModelEndpoints = {
            type = "list",
            member = M.MarketplaceModelEndpointSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RegisterMarketplaceModelEndpointInput = {
    type = "structure",
    id = "RegisterMarketplaceModelEndpointInput",
    members = {
        endpointIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelSourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterMarketplaceModelEndpointOutput = {
    type = "structure",
    id = "RegisterMarketplaceModelEndpointOutput",
    members = {
        marketplaceModelEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MarketplaceModelEndpoint }),
    },
}

M.UpdateMarketplaceModelEndpointInput = {
    type = "structure",
    id = "UpdateMarketplaceModelEndpointInput",
    members = {
        endpointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        endpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndpointConfig }),
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateMarketplaceModelEndpointOutput = {
    type = "structure",
    id = "UpdateMarketplaceModelEndpointOutput",
    members = {
        marketplaceModelEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MarketplaceModelEndpoint }),
    },
}

M.CreateCustomModelDeploymentInput = {
    type = "structure",
    id = "CreateCustomModelDeploymentInput",
    members = {
        modelDeploymentName = {
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
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateCustomModelDeploymentOutput = {
    type = "structure",
    id = "CreateCustomModelDeploymentOutput",
    members = {
        customModelDeploymentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomModelDeploymentInput = {
    type = "structure",
    id = "DeleteCustomModelDeploymentInput",
    members = {
        customModelDeploymentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCustomModelDeploymentOutput = {
    type = "structure",
    id = "DeleteCustomModelDeploymentOutput",
}

M.GetCustomModelDeploymentInput = {
    type = "structure",
    id = "GetCustomModelDeploymentInput",
    members = {
        customModelDeploymentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CustomModelDeploymentStatus = {
    CREATING = "Creating",
    ACTIVE = "Active",
    FAILED = "Failed",
}

M.CustomModelDeploymentUpdateStatus = {
    UPDATING = "Updating",
    UPDATE_COMPLETED = "UpdateCompleted",
    UPDATE_FAILED = "UpdateFailed",
}

M.CustomModelDeploymentUpdateDetails = {
    type = "structure",
    id = "CustomModelDeploymentUpdateDetails",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCustomModelDeploymentOutput = {
    type = "structure",
    id = "GetCustomModelDeploymentOutput",
    members = {
        customModelDeploymentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelDeploymentName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
        updateDetails = M.CustomModelDeploymentUpdateDetails,
        failureMessage = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SortModelsBy = {
    CREATION_TIME = "CreationTime",
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListCustomModelDeploymentsInput = {
    type = "structure",
    id = "ListCustomModelDeploymentsInput",
    members = {
        createdBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdBefore",
                timestamp_format = "date-time",
            },
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
                timestamp_format = "date-time",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
            },
        },
        modelArnEquals = {
            type = "string",
            traits = {
                http_query = "modelArnEquals",
            },
        },
    },
}

M.CustomModelDeploymentSummary = {
    type = "structure",
    id = "CustomModelDeploymentSummary",
    members = {
        customModelDeploymentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customModelDeploymentName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.ListCustomModelDeploymentsOutput = {
    type = "structure",
    id = "ListCustomModelDeploymentsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        modelDeploymentSummaries = {
            type = "list",
            member = M.CustomModelDeploymentSummary,
        },
    },
}

M.UpdateCustomModelDeploymentInput = {
    type = "structure",
    id = "UpdateCustomModelDeploymentInput",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customModelDeploymentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateCustomModelDeploymentOutput = {
    type = "structure",
    id = "UpdateCustomModelDeploymentOutput",
    members = {
        customModelDeploymentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3DataSource = {
    type = "structure",
    id = "S3DataSource",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelDataSource = {
    type = "union",
    id = "ModelDataSource",
    members = {
        s3DataSource = M.S3DataSource,
    },
}

M.CreateCustomModelInput = {
    type = "structure",
    id = "CreateCustomModelInput",
    members = {
        modelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelSourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelDataSource }),
        modelKmsKeyArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        modelTags = {
            type = "list",
            member = M.Tag,
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateCustomModelOutput = {
    type = "structure",
    id = "CreateCustomModelOutput",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomModelInput = {
    type = "structure",
    id = "DeleteCustomModelInput",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCustomModelOutput = {
    type = "structure",
    id = "DeleteCustomModelOutput",
}

M.GetCustomModelInput = {
    type = "structure",
    id = "GetCustomModelInput",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TeacherModelConfig = {
    type = "structure",
    id = "TeacherModelConfig",
    members = {
        teacherModelIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResponseLengthForInference = {
            type = "integer",
        },
    },
}

M.DistillationConfig = {
    type = "structure",
    id = "DistillationConfig",
    members = {
        teacherModelConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TeacherModelConfig }),
    },
}

M.LambdaGraderConfig = {
    type = "structure",
    id = "LambdaGraderConfig",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GraderConfig = {
    type = "union",
    id = "GraderConfig",
    members = {
        lambdaGrader = M.LambdaGraderConfig,
    },
}

M.ReasoningEffort = {
    LOW = "low",
    MEDIUM = "medium",
    HIGH = "high",
}

M.RFTHyperParameters = {
    type = "structure",
    id = "RFTHyperParameters",
    members = {
        epochCount = {
            type = "integer",
        },
        batchSize = {
            type = "integer",
        },
        learningRate = {
            type = "float",
        },
        maxPromptLength = {
            type = "integer",
        },
        trainingSamplePerPrompt = {
            type = "integer",
        },
        inferenceMaxTokens = {
            type = "integer",
        },
        reasoningEffort = {
            type = "string",
        },
        evalInterval = {
            type = "integer",
        },
    },
}

M.RFTConfig = {
    type = "structure",
    id = "RFTConfig",
    members = {
        graderConfig = M.GraderConfig,
        hyperParameters = M.RFTHyperParameters,
    },
}

M.CustomizationConfig = {
    type = "union",
    id = "CustomizationConfig",
    members = {
        distillationConfig = M.DistillationConfig,
        rftConfig = M.RFTConfig,
    },
}

M.CustomizationType = {
    FINE_TUNING = "FINE_TUNING",
    CONTINUED_PRE_TRAINING = "CONTINUED_PRE_TRAINING",
    DISTILLATION = "DISTILLATION",
    REINFORCEMENT_FINE_TUNING = "REINFORCEMENT_FINE_TUNING",
    IMPORTED = "IMPORTED",
}

M.ModelStatus = {
    ACTIVE = "Active",
    CREATING = "Creating",
    FAILED = "Failed",
}

M.OutputDataConfig = {
    type = "structure",
    id = "OutputDataConfig",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvocationLogSource = {
    type = "union",
    id = "InvocationLogSource",
    members = {
        s3Uri = {
            type = "string",
        },
    },
}

M.RequestMetadataBaseFilters = {
    type = "structure",
    id = "RequestMetadataBaseFilters",
    members = {
        equals = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        notEquals = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RequestMetadataFilters = {
    type = "union",
    id = "RequestMetadataFilters",
    members = {
        equals = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        notEquals = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        andAll = {
            type = "list",
            member = M.RequestMetadataBaseFilters,
        },
        orAll = {
            type = "list",
            member = M.RequestMetadataBaseFilters,
        },
    },
}

M.InvocationLogsConfig = {
    type = "structure",
    id = "InvocationLogsConfig",
    members = {
        usePromptResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        invocationLogSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvocationLogSource }),
        requestMetadataFilters = M.RequestMetadataFilters,
    },
}

M.TrainingDataConfig = {
    type = "structure",
    id = "TrainingDataConfig",
    members = {
        s3Uri = {
            type = "string",
        },
        invocationLogsConfig = M.InvocationLogsConfig,
    },
}

M.TrainingMetrics = {
    type = "structure",
    id = "TrainingMetrics",
    members = {
        trainingLoss = {
            type = "float",
        },
    },
}

M.Validator = {
    type = "structure",
    id = "Validator",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationDataConfig = {
    type = "structure",
    id = "ValidationDataConfig",
    members = {
        validators = {
            type = "list",
            member = M.Validator,
            traits = {
                required = true,
            },
        },
    },
}

M.ValidatorMetric = {
    type = "structure",
    id = "ValidatorMetric",
    members = {
        validationLoss = {
            type = "float",
        },
    },
}

M.GetCustomModelOutput = {
    type = "structure",
    id = "GetCustomModelOutput",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
        },
        jobArn = {
            type = "string",
        },
        baseModelArn = {
            type = "string",
        },
        customizationType = {
            type = "string",
        },
        modelKmsKeyArn = {
            type = "string",
        },
        hyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        trainingDataConfig = M.TrainingDataConfig,
        validationDataConfig = M.ValidationDataConfig,
        outputDataConfig = M.OutputDataConfig,
        trainingMetrics = M.TrainingMetrics,
        validationMetrics = {
            type = "list",
            member = M.ValidatorMetric,
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        customizationConfig = M.CustomizationConfig,
        modelStatus = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.ListCustomModelsInput = {
    type = "structure",
    id = "ListCustomModelsInput",
    members = {
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
                timestamp_format = "date-time",
            },
        },
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
            },
        },
        baseModelArnEquals = {
            type = "string",
            traits = {
                http_query = "baseModelArnEquals",
            },
        },
        foundationModelArnEquals = {
            type = "string",
            traits = {
                http_query = "foundationModelArnEquals",
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
                http_query = "sortBy",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
        isOwned = {
            type = "boolean",
            traits = {
                http_query = "isOwned",
            },
        },
        modelStatus = {
            type = "string",
            traits = {
                http_query = "modelStatus",
            },
        },
    },
}

M.CustomModelSummary = {
    type = "structure",
    id = "CustomModelSummary",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        baseModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customizationType = {
            type = "string",
        },
        ownerAccountId = {
            type = "string",
        },
        modelStatus = {
            type = "string",
        },
    },
}

M.ListCustomModelsOutput = {
    type = "structure",
    id = "ListCustomModelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        modelSummaries = {
            type = "list",
            member = M.CustomModelSummary,
        },
    },
}

M.DeleteEnforcedGuardrailConfigurationInput = {
    type = "structure",
    id = "DeleteEnforcedGuardrailConfigurationInput",
    members = {
        configId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnforcedGuardrailConfigurationOutput = {
    type = "structure",
    id = "DeleteEnforcedGuardrailConfigurationOutput",
}

M.ListEnforcedGuardrailsConfigurationInput = {
    type = "structure",
    id = "ListEnforcedGuardrailsConfigurationInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListEnforcedGuardrailsConfigurationOutput = {
    type = "structure",
    id = "ListEnforcedGuardrailsConfigurationOutput",
    members = {
        guardrailsConfig = {
            type = "list",
            member = M.AccountEnforcedGuardrailOutputConfiguration,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutEnforcedGuardrailConfigurationInput = {
    type = "structure",
    id = "PutEnforcedGuardrailConfigurationInput",
    members = {
        configId = {
            type = "string",
        },
        guardrailInferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountEnforcedGuardrailInferenceInputConfiguration }),
    },
}

M.PutEnforcedGuardrailConfigurationOutput = {
    type = "structure",
    id = "PutEnforcedGuardrailConfigurationOutput",
    members = {
        configId = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.BatchDeleteEvaluationJobInput = {
    type = "structure",
    id = "BatchDeleteEvaluationJobInput",
    members = {
        jobIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteEvaluationJobError = {
    type = "structure",
    id = "BatchDeleteEvaluationJobError",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.EvaluationJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    DELETING = "Deleting",
}

M.BatchDeleteEvaluationJobItem = {
    type = "structure",
    id = "BatchDeleteEvaluationJobItem",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteEvaluationJobOutput = {
    type = "structure",
    id = "BatchDeleteEvaluationJobOutput",
    members = {
        errors = {
            type = "list",
            member = M.BatchDeleteEvaluationJobError,
            traits = {
                required = true,
            },
        },
        evaluationJobs = {
            type = "list",
            member = M.BatchDeleteEvaluationJobItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationType = {
    MODEL_EVALUATION = "ModelEvaluation",
    RAG_EVALUATION = "RagEvaluation",
}

M.RatingScaleItemValue = {
    type = "union",
    id = "RatingScaleItemValue",
    members = {
        stringValue = {
            type = "string",
        },
        floatValue = {
            type = "float",
        },
    },
}

M.RatingScaleItem = {
    type = "structure",
    id = "RatingScaleItem",
    members = {
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RatingScaleItemValue }),
    },
}

M.CustomMetricDefinition = {
    type = "structure",
    id = "CustomMetricDefinition",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instructions = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ratingScale = {
            type = "list",
            member = M.RatingScaleItem,
        },
    },
}

M.AutomatedEvaluationCustomMetricSource = {
    type = "union",
    id = "AutomatedEvaluationCustomMetricSource",
    members = {
        customMetricDefinition = M.CustomMetricDefinition,
    },
}

M.CustomMetricBedrockEvaluatorModel = {
    type = "structure",
    id = "CustomMetricBedrockEvaluatorModel",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomMetricEvaluatorModelConfig = {
    type = "structure",
    id = "CustomMetricEvaluatorModelConfig",
    members = {
        bedrockEvaluatorModels = {
            type = "list",
            member = M.CustomMetricBedrockEvaluatorModel,
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedEvaluationCustomMetricConfig = {
    type = "structure",
    id = "AutomatedEvaluationCustomMetricConfig",
    members = {
        customMetrics = {
            type = "list",
            member = M.AutomatedEvaluationCustomMetricSource,
            traits = {
                required = true,
            },
        },
        evaluatorModelConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomMetricEvaluatorModelConfig }),
    },
}

M.EvaluationDatasetLocation = {
    type = "union",
    id = "EvaluationDatasetLocation",
    members = {
        s3Uri = {
            type = "string",
        },
    },
}

M.EvaluationDataset = {
    type = "structure",
    id = "EvaluationDataset",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetLocation = M.EvaluationDatasetLocation,
    },
}

M.EvaluationTaskType = {
    SUMMARIZATION = "Summarization",
    CLASSIFICATION = "Classification",
    QUESTION_AND_ANSWER = "QuestionAndAnswer",
    GENERATION = "Generation",
    CUSTOM = "Custom",
}

M.EvaluationDatasetMetricConfig = {
    type = "structure",
    id = "EvaluationDatasetMetricConfig",
    members = {
        taskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationDataset }),
        metricNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BedrockEvaluatorModel = {
    type = "structure",
    id = "BedrockEvaluatorModel",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluatorModelConfig = {
    type = "union",
    id = "EvaluatorModelConfig",
    members = {
        bedrockEvaluatorModels = {
            type = "list",
            member = M.BedrockEvaluatorModel,
        },
    },
}

M.AutomatedEvaluationConfig = {
    type = "structure",
    id = "AutomatedEvaluationConfig",
    members = {
        datasetMetricConfigs = {
            type = "list",
            member = M.EvaluationDatasetMetricConfig,
            traits = {
                required = true,
            },
        },
        evaluatorModelConfig = M.EvaluatorModelConfig,
        customMetricConfig = M.AutomatedEvaluationCustomMetricConfig,
    },
}

M.HumanEvaluationCustomMetric = {
    type = "structure",
    id = "HumanEvaluationCustomMetric",
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
        ratingMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HumanWorkflowConfig = {
    type = "structure",
    id = "HumanWorkflowConfig",
    members = {
        flowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instructions = {
            type = "string",
        },
    },
}

M.HumanEvaluationConfig = {
    type = "structure",
    id = "HumanEvaluationConfig",
    members = {
        humanWorkflowConfig = M.HumanWorkflowConfig,
        customMetrics = {
            type = "list",
            member = M.HumanEvaluationCustomMetric,
        },
        datasetMetricConfigs = {
            type = "list",
            member = M.EvaluationDatasetMetricConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationConfig = {
    type = "union",
    id = "EvaluationConfig",
    members = {
        automated = M.AutomatedEvaluationConfig,
        human = M.HumanEvaluationConfig,
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
        },
    },
}

M.EvaluationBedrockModel = {
    type = "structure",
    id = "EvaluationBedrockModel",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inferenceParams = {
            type = "string",
            traits = {
                default = "{}",
            },
        },
        performanceConfig = M.PerformanceConfiguration,
    },
}

M.EvaluationPrecomputedInferenceSource = {
    type = "structure",
    id = "EvaluationPrecomputedInferenceSource",
    members = {
        inferenceSourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationModelConfig = {
    type = "union",
    id = "EvaluationModelConfig",
    members = {
        bedrockModel = M.EvaluationBedrockModel,
        precomputedInferenceSource = M.EvaluationPrecomputedInferenceSource,
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

M.KbInferenceConfig = {
    type = "structure",
    id = "KbInferenceConfig",
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
        kbInferenceConfig = M.KbInferenceConfig,
        additionalModelRequestFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
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
        kbInferenceConfig = M.KbInferenceConfig,
        additionalModelRequestFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
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
        queryTransformationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryTransformationConfiguration }),
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

M.RetrieveAndGenerateType = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
    EXTERNAL_SOURCES = "EXTERNAL_SOURCES",
}

M.EvaluationPrecomputedRetrieveAndGenerateSourceConfig = {
    type = "structure",
    id = "EvaluationPrecomputedRetrieveAndGenerateSourceConfig",
    members = {
        ragSourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationPrecomputedRetrieveSourceConfig = {
    type = "structure",
    id = "EvaluationPrecomputedRetrieveSourceConfig",
    members = {
        ragSourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationPrecomputedRagSourceConfig = {
    type = "union",
    id = "EvaluationPrecomputedRagSourceConfig",
    members = {
        retrieveSourceConfig = M.EvaluationPrecomputedRetrieveSourceConfig,
        retrieveAndGenerateSourceConfig = M.EvaluationPrecomputedRetrieveAndGenerateSourceConfig,
    },
}

M.EvaluationOutputDataConfig = {
    type = "structure",
    id = "EvaluationOutputDataConfig",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEvaluationJobOutput = {
    type = "structure",
    id = "CreateEvaluationJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEvaluationJobInput = {
    type = "structure",
    id = "GetEvaluationJobInput",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EvaluationJobType = {
    HUMAN = "Human",
    AUTOMATED = "Automated",
}

M.SortJobsBy = {
    CREATION_TIME = "CreationTime",
}

M.ListEvaluationJobsInput = {
    type = "structure",
    id = "ListEvaluationJobsInput",
    members = {
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
                timestamp_format = "date-time",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
            },
        },
        applicationTypeEquals = {
            type = "string",
            traits = {
                http_query = "applicationTypeEquals",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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

M.EvaluationModelConfigSummary = {
    type = "structure",
    id = "EvaluationModelConfigSummary",
    members = {
        bedrockModelIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        precomputedInferenceSourceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvaluationRagConfigSummary = {
    type = "structure",
    id = "EvaluationRagConfigSummary",
    members = {
        bedrockKnowledgeBaseIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        precomputedRagSourceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvaluationInferenceConfigSummary = {
    type = "structure",
    id = "EvaluationInferenceConfigSummary",
    members = {
        modelConfigSummary = M.EvaluationModelConfigSummary,
        ragConfigSummary = M.EvaluationRagConfigSummary,
    },
}

M.EvaluationSummary = {
    type = "structure",
    id = "EvaluationSummary",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        jobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluationTaskTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        modelIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        ragIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        evaluatorModelIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        customMetricsEvaluatorModelIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        inferenceConfigSummary = M.EvaluationInferenceConfigSummary,
        applicationType = {
            type = "string",
        },
    },
}

M.ListEvaluationJobsOutput = {
    type = "structure",
    id = "ListEvaluationJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        jobSummaries = {
            type = "list",
            member = M.EvaluationSummary,
        },
    },
}

M.StopEvaluationJobInput = {
    type = "structure",
    id = "StopEvaluationJobInput",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopEvaluationJobOutput = {
    type = "structure",
    id = "StopEvaluationJobOutput",
}

M.GuardrailAutomatedReasoningPolicyConfig = {
    type = "structure",
    id = "GuardrailAutomatedReasoningPolicyConfig",
    members = {
        policies = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "double",
        },
    },
}

M.GuardrailContentFilterAction = {
    BLOCK = "BLOCK",
    NONE = "NONE",
}

M.GuardrailModality = {
    TEXT = "TEXT",
    IMAGE = "IMAGE",
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
    id = "GuardrailContentFilterConfig",
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
        inputModalities = {
            type = "list",
            member = { type = "string" },
        },
        outputModalities = {
            type = "list",
            member = { type = "string" },
        },
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailContentFiltersTierName = {
    CLASSIC = "CLASSIC",
    STANDARD = "STANDARD",
}

M.GuardrailContentFiltersTierConfig = {
    type = "structure",
    id = "GuardrailContentFiltersTierConfig",
    members = {
        tierName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailContentPolicyConfig = {
    type = "structure",
    id = "GuardrailContentPolicyConfig",
    members = {
        filtersConfig = {
            type = "list",
            member = M.GuardrailContentFilterConfig,
            traits = {
                required = true,
            },
        },
        tierConfig = M.GuardrailContentFiltersTierConfig,
    },
}

M.GuardrailContextualGroundingAction = {
    BLOCK = "BLOCK",
    NONE = "NONE",
}

M.GuardrailContextualGroundingFilterType = {
    GROUNDING = "GROUNDING",
    RELEVANCE = "RELEVANCE",
}

M.GuardrailContextualGroundingFilterConfig = {
    type = "structure",
    id = "GuardrailContextualGroundingFilterConfig",
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
        action = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
    },
}

M.GuardrailContextualGroundingPolicyConfig = {
    type = "structure",
    id = "GuardrailContextualGroundingPolicyConfig",
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

M.GuardrailCrossRegionConfig = {
    type = "structure",
    id = "GuardrailCrossRegionConfig",
    members = {
        guardrailProfileIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailSensitiveInformationAction = {
    BLOCK = "BLOCK",
    ANONYMIZE = "ANONYMIZE",
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

M.GuardrailPiiEntityConfig = {
    type = "structure",
    id = "GuardrailPiiEntityConfig",
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
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailRegexConfig = {
    type = "structure",
    id = "GuardrailRegexConfig",
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
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailSensitiveInformationPolicyConfig = {
    type = "structure",
    id = "GuardrailSensitiveInformationPolicyConfig",
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

M.GuardrailTopicsTierName = {
    CLASSIC = "CLASSIC",
    STANDARD = "STANDARD",
}

M.GuardrailTopicsTierConfig = {
    type = "structure",
    id = "GuardrailTopicsTierConfig",
    members = {
        tierName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailTopicAction = {
    BLOCK = "BLOCK",
    NONE = "NONE",
}

M.GuardrailTopicType = {
    DENY = "DENY",
}

M.GuardrailTopicConfig = {
    type = "structure",
    id = "GuardrailTopicConfig",
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
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailTopicPolicyConfig = {
    type = "structure",
    id = "GuardrailTopicPolicyConfig",
    members = {
        topicsConfig = {
            type = "list",
            member = M.GuardrailTopicConfig,
            traits = {
                required = true,
            },
        },
        tierConfig = M.GuardrailTopicsTierConfig,
    },
}

M.GuardrailWordAction = {
    BLOCK = "BLOCK",
    NONE = "NONE",
}

M.GuardrailManagedWordsType = {
    PROFANITY = "PROFANITY",
}

M.GuardrailManagedWordsConfig = {
    type = "structure",
    id = "GuardrailManagedWordsConfig",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailWordConfig = {
    type = "structure",
    id = "GuardrailWordConfig",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailWordPolicyConfig = {
    type = "structure",
    id = "GuardrailWordPolicyConfig",
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

M.CreateGuardrailInput = {
    type = "structure",
    id = "CreateGuardrailInput",
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
        topicPolicyConfig = M.GuardrailTopicPolicyConfig,
        contentPolicyConfig = M.GuardrailContentPolicyConfig,
        wordPolicyConfig = M.GuardrailWordPolicyConfig,
        sensitiveInformationPolicyConfig = M.GuardrailSensitiveInformationPolicyConfig,
        contextualGroundingPolicyConfig = M.GuardrailContextualGroundingPolicyConfig,
        automatedReasoningPolicyConfig = M.GuardrailAutomatedReasoningPolicyConfig,
        crossRegionConfig = M.GuardrailCrossRegionConfig,
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
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateGuardrailOutput = {
    type = "structure",
    id = "CreateGuardrailOutput",
    members = {
        guardrailId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardrailArn = {
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
    },
}

M.CreateGuardrailVersionInput = {
    type = "structure",
    id = "CreateGuardrailVersionInput",
    members = {
        guardrailIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateGuardrailVersionOutput = {
    type = "structure",
    id = "CreateGuardrailVersionOutput",
    members = {
        guardrailId = {
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

M.DeleteGuardrailInput = {
    type = "structure",
    id = "DeleteGuardrailInput",
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
                http_query = "guardrailVersion",
            },
        },
    },
}

M.DeleteGuardrailOutput = {
    type = "structure",
    id = "DeleteGuardrailOutput",
}

M.GetGuardrailInput = {
    type = "structure",
    id = "GetGuardrailInput",
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
                http_query = "guardrailVersion",
            },
        },
    },
}

M.GuardrailAutomatedReasoningPolicy = {
    type = "structure",
    id = "GuardrailAutomatedReasoningPolicy",
    members = {
        policies = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "double",
        },
    },
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
        inputModalities = {
            type = "list",
            member = { type = "string" },
        },
        outputModalities = {
            type = "list",
            member = { type = "string" },
        },
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailContentFiltersTier = {
    type = "structure",
    id = "GuardrailContentFiltersTier",
    members = {
        tierName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailContentPolicy = {
    type = "structure",
    id = "GuardrailContentPolicy",
    members = {
        filters = {
            type = "list",
            member = M.GuardrailContentFilter,
        },
        tier = M.GuardrailContentFiltersTier,
    },
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
        action = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
    },
}

M.GuardrailContextualGroundingPolicy = {
    type = "structure",
    id = "GuardrailContextualGroundingPolicy",
    members = {
        filters = {
            type = "list",
            member = M.GuardrailContextualGroundingFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.GuardrailCrossRegionDetails = {
    type = "structure",
    id = "GuardrailCrossRegionDetails",
    members = {
        guardrailProfileId = {
            type = "string",
        },
        guardrailProfileArn = {
            type = "string",
        },
    },
}

M.GuardrailPiiEntity = {
    type = "structure",
    id = "GuardrailPiiEntity",
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
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailRegex = {
    type = "structure",
    id = "GuardrailRegex",
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
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailSensitiveInformationPolicy = {
    type = "structure",
    id = "GuardrailSensitiveInformationPolicy",
    members = {
        piiEntities = {
            type = "list",
            member = M.GuardrailPiiEntity,
        },
        regexes = {
            type = "list",
            member = M.GuardrailRegex,
        },
    },
}

M.GuardrailStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    VERSIONING = "VERSIONING",
    READY = "READY",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.GuardrailTopicsTier = {
    type = "structure",
    id = "GuardrailTopicsTier",
    members = {
        tierName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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
        },
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailTopicPolicy = {
    type = "structure",
    id = "GuardrailTopicPolicy",
    members = {
        topics = {
            type = "list",
            member = M.GuardrailTopic,
            traits = {
                required = true,
            },
        },
        tier = M.GuardrailTopicsTier,
    },
}

M.GuardrailManagedWords = {
    type = "structure",
    id = "GuardrailManagedWords",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailWord = {
    type = "structure",
    id = "GuardrailWord",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputAction = {
            type = "string",
        },
        outputAction = {
            type = "string",
        },
        inputEnabled = {
            type = "boolean",
        },
        outputEnabled = {
            type = "boolean",
        },
    },
}

M.GuardrailWordPolicy = {
    type = "structure",
    id = "GuardrailWordPolicy",
    members = {
        words = {
            type = "list",
            member = M.GuardrailWord,
        },
        managedWordLists = {
            type = "list",
            member = M.GuardrailManagedWords,
        },
    },
}

M.GetGuardrailOutput = {
    type = "structure",
    id = "GetGuardrailOutput",
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
        guardrailId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardrailArn = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        topicPolicy = M.GuardrailTopicPolicy,
        contentPolicy = M.GuardrailContentPolicy,
        wordPolicy = M.GuardrailWordPolicy,
        sensitiveInformationPolicy = M.GuardrailSensitiveInformationPolicy,
        contextualGroundingPolicy = M.GuardrailContextualGroundingPolicy,
        automatedReasoningPolicy = M.GuardrailAutomatedReasoningPolicy,
        crossRegionDetails = M.GuardrailCrossRegionDetails,
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
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        failureRecommendations = {
            type = "list",
            member = { type = "string" },
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
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.ListGuardrailsInput = {
    type = "structure",
    id = "ListGuardrailsInput",
    members = {
        guardrailIdentifier = {
            type = "string",
            traits = {
                http_query = "guardrailIdentifier",
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

M.GuardrailSummary = {
    type = "structure",
    id = "GuardrailSummary",
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
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
        crossRegionDetails = M.GuardrailCrossRegionDetails,
    },
}

M.ListGuardrailsOutput = {
    type = "structure",
    id = "ListGuardrailsOutput",
    members = {
        guardrails = {
            type = "list",
            member = M.GuardrailSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateGuardrailInput = {
    type = "structure",
    id = "UpdateGuardrailInput",
    members = {
        guardrailIdentifier = {
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
        topicPolicyConfig = M.GuardrailTopicPolicyConfig,
        contentPolicyConfig = M.GuardrailContentPolicyConfig,
        wordPolicyConfig = M.GuardrailWordPolicyConfig,
        sensitiveInformationPolicyConfig = M.GuardrailSensitiveInformationPolicyConfig,
        contextualGroundingPolicyConfig = M.GuardrailContextualGroundingPolicyConfig,
        automatedReasoningPolicyConfig = M.GuardrailAutomatedReasoningPolicyConfig,
        crossRegionConfig = M.GuardrailCrossRegionConfig,
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
        kmsKeyId = {
            type = "string",
        },
    },
}

M.UpdateGuardrailOutput = {
    type = "structure",
    id = "UpdateGuardrailOutput",
    members = {
        guardrailId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardrailArn = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.InferenceProfileModelSource = {
    type = "union",
    id = "InferenceProfileModelSource",
    members = {
        copyFrom = {
            type = "string",
        },
    },
}

M.CreateInferenceProfileInput = {
    type = "structure",
    id = "CreateInferenceProfileInput",
    members = {
        inferenceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        modelSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceProfileModelSource }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InferenceProfileStatus = {
    ACTIVE = "ACTIVE",
}

M.CreateInferenceProfileOutput = {
    type = "structure",
    id = "CreateInferenceProfileOutput",
    members = {
        inferenceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteInferenceProfileInput = {
    type = "structure",
    id = "DeleteInferenceProfileInput",
    members = {
        inferenceProfileIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInferenceProfileOutput = {
    type = "structure",
    id = "DeleteInferenceProfileOutput",
}

M.GetInferenceProfileInput = {
    type = "structure",
    id = "GetInferenceProfileInput",
    members = {
        inferenceProfileIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InferenceProfileModel = {
    type = "structure",
    id = "InferenceProfileModel",
    members = {
        modelArn = {
            type = "string",
        },
    },
}

M.InferenceProfileType = {
    SYSTEM_DEFINED = "SYSTEM_DEFINED",
    APPLICATION = "APPLICATION",
}

M.GetInferenceProfileOutput = {
    type = "structure",
    id = "GetInferenceProfileOutput",
    members = {
        inferenceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        inferenceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member = M.InferenceProfileModel,
            traits = {
                required = true,
            },
        },
        inferenceProfileId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInferenceProfilesInput = {
    type = "structure",
    id = "ListInferenceProfilesInput",
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
        typeEquals = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.InferenceProfileSummary = {
    type = "structure",
    id = "InferenceProfileSummary",
    members = {
        inferenceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        inferenceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member = M.InferenceProfileModel,
            traits = {
                required = true,
            },
        },
        inferenceProfileId = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInferenceProfilesOutput = {
    type = "structure",
    id = "ListInferenceProfilesOutput",
    members = {
        inferenceProfileSummaries = {
            type = "list",
            member = M.InferenceProfileSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeleteModelInvocationLoggingConfigurationInput = {
    type = "structure",
    id = "DeleteModelInvocationLoggingConfigurationInput",
}

M.DeleteModelInvocationLoggingConfigurationOutput = {
    type = "structure",
    id = "DeleteModelInvocationLoggingConfigurationOutput",
}

M.GetModelInvocationLoggingConfigurationInput = {
    type = "structure",
    id = "GetModelInvocationLoggingConfigurationInput",
}

M.S3Config = {
    type = "structure",
    id = "S3Config",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyPrefix = {
            type = "string",
        },
    },
}

M.CloudWatchConfig = {
    type = "structure",
    id = "CloudWatchConfig",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        largeDataDeliveryS3Config = M.S3Config,
    },
}

M.LoggingConfig = {
    type = "structure",
    id = "LoggingConfig",
    members = {
        cloudWatchConfig = M.CloudWatchConfig,
        s3Config = M.S3Config,
        textDataDeliveryEnabled = {
            type = "boolean",
        },
        imageDataDeliveryEnabled = {
            type = "boolean",
        },
        embeddingDataDeliveryEnabled = {
            type = "boolean",
        },
        videoDataDeliveryEnabled = {
            type = "boolean",
        },
        audioDataDeliveryEnabled = {
            type = "boolean",
        },
    },
}

M.GetModelInvocationLoggingConfigurationOutput = {
    type = "structure",
    id = "GetModelInvocationLoggingConfigurationOutput",
    members = {
        loggingConfig = M.LoggingConfig,
    },
}

M.PutModelInvocationLoggingConfigurationInput = {
    type = "structure",
    id = "PutModelInvocationLoggingConfigurationInput",
    members = {
        loggingConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfig }),
    },
}

M.PutModelInvocationLoggingConfigurationOutput = {
    type = "structure",
    id = "PutModelInvocationLoggingConfigurationOutput",
}

M.CreateModelCopyJobInput = {
    type = "structure",
    id = "CreateModelCopyJobInput",
    members = {
        sourceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelKmsKeyId = {
            type = "string",
        },
        targetModelTags = {
            type = "list",
            member = M.Tag,
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateModelCopyJobOutput = {
    type = "structure",
    id = "CreateModelCopyJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetModelCopyJobInput = {
    type = "structure",
    id = "GetModelCopyJobInput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ModelCopyJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.GetModelCopyJobOutput = {
    type = "structure",
    id = "GetModelCopyJobOutput",
    members = {
        jobArn = {
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        targetModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetModelName = {
            type = "string",
        },
        sourceAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetModelKmsKeyArn = {
            type = "string",
        },
        targetModelTags = {
            type = "list",
            member = M.Tag,
        },
        failureMessage = {
            type = "string",
        },
        sourceModelName = {
            type = "string",
        },
    },
}

M.ListModelCopyJobsInput = {
    type = "structure",
    id = "ListModelCopyJobsInput",
    members = {
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
                timestamp_format = "date-time",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
            },
        },
        sourceAccountEquals = {
            type = "string",
            traits = {
                http_query = "sourceAccountEquals",
            },
        },
        sourceModelArnEquals = {
            type = "string",
            traits = {
                http_query = "sourceModelArnEquals",
            },
        },
        targetModelNameContains = {
            type = "string",
            traits = {
                http_query = "outputModelNameContains",
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

M.ModelCopyJobSummary = {
    type = "structure",
    id = "ModelCopyJobSummary",
    members = {
        jobArn = {
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        targetModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetModelName = {
            type = "string",
        },
        sourceAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetModelKmsKeyArn = {
            type = "string",
        },
        targetModelTags = {
            type = "list",
            member = M.Tag,
        },
        failureMessage = {
            type = "string",
        },
        sourceModelName = {
            type = "string",
        },
    },
}

M.ListModelCopyJobsOutput = {
    type = "structure",
    id = "ListModelCopyJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        modelCopyJobSummaries = {
            type = "list",
            member = M.ModelCopyJobSummary,
        },
    },
}

M.CreateModelImportJobInput = {
    type = "structure",
    id = "CreateModelImportJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importedModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelDataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelDataSource }),
        jobTags = {
            type = "list",
            member = M.Tag,
        },
        importedModelTags = {
            type = "list",
            member = M.Tag,
        },
        clientRequestToken = {
            type = "string",
        },
        vpcConfig = M.VpcConfig,
        importedModelKmsKeyId = {
            type = "string",
        },
    },
}

M.CreateModelImportJobOutput = {
    type = "structure",
    id = "CreateModelImportJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteImportedModelInput = {
    type = "structure",
    id = "DeleteImportedModelInput",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteImportedModelOutput = {
    type = "structure",
    id = "DeleteImportedModelOutput",
}

M.GetImportedModelInput = {
    type = "structure",
    id = "GetImportedModelInput",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CustomModelUnits = {
    type = "structure",
    id = "CustomModelUnits",
    members = {
        customModelUnitsPerModelCopy = {
            type = "integer",
        },
        customModelUnitsVersion = {
            type = "string",
        },
    },
}

M.GetImportedModelOutput = {
    type = "structure",
    id = "GetImportedModelOutput",
    members = {
        modelArn = {
            type = "string",
        },
        modelName = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        jobArn = {
            type = "string",
        },
        modelDataSource = M.ModelDataSource,
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        modelArchitecture = {
            type = "string",
        },
        modelKmsKeyArn = {
            type = "string",
        },
        instructSupported = {
            type = "boolean",
        },
        customModelUnits = M.CustomModelUnits,
    },
}

M.GetModelImportJobInput = {
    type = "structure",
    id = "GetModelImportJobInput",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ModelImportJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.GetModelImportJobOutput = {
    type = "structure",
    id = "GetModelImportJobOutput",
    members = {
        jobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        importedModelName = {
            type = "string",
        },
        importedModelArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        modelDataSource = M.ModelDataSource,
        status = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
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
        vpcConfig = M.VpcConfig,
        importedModelKmsKeyArn = {
            type = "string",
        },
    },
}

M.ListImportedModelsInput = {
    type = "structure",
    id = "ListImportedModelsInput",
    members = {
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
                timestamp_format = "date-time",
            },
        },
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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

M.ImportedModelSummary = {
    type = "structure",
    id = "ImportedModelSummary",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        instructSupported = {
            type = "boolean",
        },
        modelArchitecture = {
            type = "string",
        },
    },
}

M.ListImportedModelsOutput = {
    type = "structure",
    id = "ListImportedModelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        modelSummaries = {
            type = "list",
            member = M.ImportedModelSummary,
        },
    },
}

M.ListModelImportJobsInput = {
    type = "structure",
    id = "ListModelImportJobsInput",
    members = {
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
                timestamp_format = "date-time",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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

M.ModelImportJobSummary = {
    type = "structure",
    id = "ModelImportJobSummary",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
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
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        importedModelArn = {
            type = "string",
        },
        importedModelName = {
            type = "string",
        },
    },
}

M.ListModelImportJobsOutput = {
    type = "structure",
    id = "ListModelImportJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        modelImportJobSummaries = {
            type = "list",
            member = M.ModelImportJobSummary,
        },
    },
}

M.S3InputFormat = {
    JSONL = "JSONL",
}

M.ModelInvocationJobS3InputDataConfig = {
    type = "structure",
    id = "ModelInvocationJobS3InputDataConfig",
    members = {
        s3InputFormat = {
            type = "string",
        },
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketOwner = {
            type = "string",
        },
    },
}

M.ModelInvocationJobInputDataConfig = {
    type = "union",
    id = "ModelInvocationJobInputDataConfig",
    members = {
        s3InputDataConfig = M.ModelInvocationJobS3InputDataConfig,
    },
}

M.ModelInvocationType = {
    InvokeModel = "InvokeModel",
    Converse = "Converse",
}

M.ModelInvocationJobS3OutputDataConfig = {
    type = "structure",
    id = "ModelInvocationJobS3OutputDataConfig",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3EncryptionKeyId = {
            type = "string",
        },
        s3BucketOwner = {
            type = "string",
        },
    },
}

M.ModelInvocationJobOutputDataConfig = {
    type = "union",
    id = "ModelInvocationJobOutputDataConfig",
    members = {
        s3OutputDataConfig = M.ModelInvocationJobS3OutputDataConfig,
    },
}

M.CreateModelInvocationJobInput = {
    type = "structure",
    id = "CreateModelInvocationJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        inputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInvocationJobInputDataConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInvocationJobOutputDataConfig }),
        vpcConfig = M.VpcConfig,
        timeoutDurationInHours = {
            type = "integer",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        modelInvocationType = {
            type = "string",
            traits = {
                default = "InvokeModel",
            },
        },
    },
}

M.CreateModelInvocationJobOutput = {
    type = "structure",
    id = "CreateModelInvocationJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetModelInvocationJobInput = {
    type = "structure",
    id = "GetModelInvocationJobInput",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ModelInvocationJobStatus = {
    SUBMITTED = "Submitted",
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    PARTIALLY_COMPLETED = "PartiallyCompleted",
    EXPIRED = "Expired",
    VALIDATING = "Validating",
    SCHEDULED = "Scheduled",
}

M.GetModelInvocationJobOutput = {
    type = "structure",
    id = "GetModelInvocationJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        message = {
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
        inputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInvocationJobInputDataConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInvocationJobOutputDataConfig }),
        vpcConfig = M.VpcConfig,
        timeoutDurationInHours = {
            type = "integer",
        },
        jobExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        modelInvocationType = {
            type = "string",
        },
        totalRecordCount = {
            type = "long",
        },
        processedRecordCount = {
            type = "long",
        },
        successRecordCount = {
            type = "long",
        },
        errorRecordCount = {
            type = "long",
        },
    },
}

M.ListModelInvocationJobsInput = {
    type = "structure",
    id = "ListModelInvocationJobsInput",
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
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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

M.ModelInvocationJobSummary = {
    type = "structure",
    id = "ModelInvocationJobSummary",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
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
        clientRequestToken = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        message = {
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
        inputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInvocationJobInputDataConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInvocationJobOutputDataConfig }),
        vpcConfig = M.VpcConfig,
        timeoutDurationInHours = {
            type = "integer",
        },
        jobExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        modelInvocationType = {
            type = "string",
        },
        totalRecordCount = {
            type = "long",
        },
        processedRecordCount = {
            type = "long",
        },
        successRecordCount = {
            type = "long",
        },
        errorRecordCount = {
            type = "long",
        },
    },
}

M.ListModelInvocationJobsOutput = {
    type = "structure",
    id = "ListModelInvocationJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        invocationJobSummaries = {
            type = "list",
            member = M.ModelInvocationJobSummary,
        },
    },
}

M.StopModelInvocationJobInput = {
    type = "structure",
    id = "StopModelInvocationJobInput",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopModelInvocationJobOutput = {
    type = "structure",
    id = "StopModelInvocationJobOutput",
}

M.GetFoundationModelInput = {
    type = "structure",
    id = "GetFoundationModelInput",
    members = {
        modelIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ModelCustomization = {
    FINE_TUNING = "FINE_TUNING",
    CONTINUED_PRE_TRAINING = "CONTINUED_PRE_TRAINING",
    DISTILLATION = "DISTILLATION",
}

M.InferenceType = {
    ON_DEMAND = "ON_DEMAND",
    PROVISIONED = "PROVISIONED",
}

M.ModelModality = {
    TEXT = "TEXT",
    IMAGE = "IMAGE",
    EMBEDDING = "EMBEDDING",
}

M.FoundationModelLifecycleStatus = {
    ACTIVE = "ACTIVE",
    LEGACY = "LEGACY",
}

M.FoundationModelLifecycle = {
    type = "structure",
    id = "FoundationModelLifecycle",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startOfLifeTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endOfLifeTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        legacyTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        publicExtendedAccessTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.FoundationModelDetails = {
    type = "structure",
    id = "FoundationModelDetails",
    members = {
        modelArn = {
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
        modelName = {
            type = "string",
        },
        providerName = {
            type = "string",
        },
        inputModalities = {
            type = "list",
            member = { type = "string" },
        },
        outputModalities = {
            type = "list",
            member = { type = "string" },
        },
        responseStreamingSupported = {
            type = "boolean",
        },
        customizationsSupported = {
            type = "list",
            member = { type = "string" },
        },
        inferenceTypesSupported = {
            type = "list",
            member = { type = "string" },
        },
        modelLifecycle = M.FoundationModelLifecycle,
    },
}

M.GetFoundationModelOutput = {
    type = "structure",
    id = "GetFoundationModelOutput",
    members = {
        modelDetails = M.FoundationModelDetails,
    },
}

M.ListFoundationModelsInput = {
    type = "structure",
    id = "ListFoundationModelsInput",
    members = {
        byProvider = {
            type = "string",
            traits = {
                http_query = "byProvider",
            },
        },
        byCustomizationType = {
            type = "string",
            traits = {
                http_query = "byCustomizationType",
            },
        },
        byOutputModality = {
            type = "string",
            traits = {
                http_query = "byOutputModality",
            },
        },
        byInferenceType = {
            type = "string",
            traits = {
                http_query = "byInferenceType",
            },
        },
    },
}

M.FoundationModelSummary = {
    type = "structure",
    id = "FoundationModelSummary",
    members = {
        modelArn = {
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
        modelName = {
            type = "string",
        },
        providerName = {
            type = "string",
        },
        inputModalities = {
            type = "list",
            member = { type = "string" },
        },
        outputModalities = {
            type = "list",
            member = { type = "string" },
        },
        responseStreamingSupported = {
            type = "boolean",
        },
        customizationsSupported = {
            type = "list",
            member = { type = "string" },
        },
        inferenceTypesSupported = {
            type = "list",
            member = { type = "string" },
        },
        modelLifecycle = M.FoundationModelLifecycle,
    },
}

M.ListFoundationModelsOutput = {
    type = "structure",
    id = "ListFoundationModelsOutput",
    members = {
        modelSummaries = {
            type = "list",
            member = M.FoundationModelSummary,
        },
    },
}

M.PromptRouterTargetModel = {
    type = "structure",
    id = "PromptRouterTargetModel",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutingCriteria = {
    type = "structure",
    id = "RoutingCriteria",
    members = {
        responseQualityDifference = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePromptRouterInput = {
    type = "structure",
    id = "CreatePromptRouterInput",
    members = {
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        promptRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member = M.PromptRouterTargetModel,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        routingCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingCriteria }),
        fallbackModel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptRouterTargetModel }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePromptRouterOutput = {
    type = "structure",
    id = "CreatePromptRouterOutput",
    members = {
        promptRouterArn = {
            type = "string",
        },
    },
}

M.DeletePromptRouterInput = {
    type = "structure",
    id = "DeletePromptRouterInput",
    members = {
        promptRouterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePromptRouterOutput = {
    type = "structure",
    id = "DeletePromptRouterOutput",
}

M.GetPromptRouterInput = {
    type = "structure",
    id = "GetPromptRouterInput",
    members = {
        promptRouterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PromptRouterStatus = {
    AVAILABLE = "AVAILABLE",
}

M.PromptRouterType = {
    CUSTOM = "custom",
    DEFAULT = "default",
}

M.GetPromptRouterOutput = {
    type = "structure",
    id = "GetPromptRouterOutput",
    members = {
        promptRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        routingCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingCriteria }),
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        promptRouterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member = M.PromptRouterTargetModel,
            traits = {
                required = true,
            },
        },
        fallbackModel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptRouterTargetModel }),
        status = {
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

M.ListPromptRoutersInput = {
    type = "structure",
    id = "ListPromptRoutersInput",
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
        type = {
            type = "string",
            traits = {
                default = "default",
                http_query = "type",
            },
        },
    },
}

M.PromptRouterSummary = {
    type = "structure",
    id = "PromptRouterSummary",
    members = {
        promptRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        routingCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingCriteria }),
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        promptRouterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member = M.PromptRouterTargetModel,
            traits = {
                required = true,
            },
        },
        fallbackModel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptRouterTargetModel }),
        status = {
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

M.ListPromptRoutersOutput = {
    type = "structure",
    id = "ListPromptRoutersOutput",
    members = {
        promptRouterSummaries = {
            type = "list",
            member = M.PromptRouterSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CommitmentDuration = {
    ONE_MONTH = "OneMonth",
    SIX_MONTHS = "SixMonths",
}

M.CreateProvisionedModelThroughputInput = {
    type = "structure",
    id = "CreateProvisionedModelThroughputInput",
    members = {
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        modelUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        provisionedModelName = {
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
        commitmentDuration = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProvisionedModelThroughputOutput = {
    type = "structure",
    id = "CreateProvisionedModelThroughputOutput",
    members = {
        provisionedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProvisionedModelThroughputInput = {
    type = "structure",
    id = "DeleteProvisionedModelThroughputInput",
    members = {
        provisionedModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProvisionedModelThroughputOutput = {
    type = "structure",
    id = "DeleteProvisionedModelThroughputOutput",
}

M.GetProvisionedModelThroughputInput = {
    type = "structure",
    id = "GetProvisionedModelThroughputInput",
    members = {
        provisionedModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ProvisionedModelStatus = {
    CREATING = "Creating",
    IN_SERVICE = "InService",
    UPDATING = "Updating",
    FAILED = "Failed",
}

M.GetProvisionedModelThroughputOutput = {
    type = "structure",
    id = "GetProvisionedModelThroughputOutput",
    members = {
        modelUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        desiredModelUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        provisionedModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisionedModelArn = {
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
        desiredModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        foundationModelArn = {
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
        creationTime = {
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
        failureMessage = {
            type = "string",
        },
        commitmentDuration = {
            type = "string",
        },
        commitmentExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SortByProvisionedModels = {
    CREATION_TIME = "CreationTime",
}

M.ListProvisionedModelThroughputsInput = {
    type = "structure",
    id = "ListProvisionedModelThroughputsInput",
    members = {
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
                timestamp_format = "date-time",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
            },
        },
        modelArnEquals = {
            type = "string",
            traits = {
                http_query = "modelArnEquals",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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

M.ProvisionedModelSummary = {
    type = "structure",
    id = "ProvisionedModelSummary",
    members = {
        provisionedModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisionedModelArn = {
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
        desiredModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        foundationModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        desiredModelUnits = {
            type = "integer",
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
        commitmentDuration = {
            type = "string",
        },
        commitmentExpirationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        creationTime = {
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
    },
}

M.ListProvisionedModelThroughputsOutput = {
    type = "structure",
    id = "ListProvisionedModelThroughputsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        provisionedModelSummaries = {
            type = "list",
            member = M.ProvisionedModelSummary,
        },
    },
}

M.UpdateProvisionedModelThroughputInput = {
    type = "structure",
    id = "UpdateProvisionedModelThroughputInput",
    members = {
        provisionedModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        desiredProvisionedModelName = {
            type = "string",
        },
        desiredModelId = {
            type = "string",
        },
    },
}

M.UpdateProvisionedModelThroughputOutput = {
    type = "structure",
    id = "UpdateProvisionedModelThroughputOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
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

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        resourcePolicy = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        resourceArn = {
            type = "string",
        },
    },
}

M.CreateFoundationModelAgreementInput = {
    type = "structure",
    id = "CreateFoundationModelAgreementInput",
    members = {
        offerToken = {
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
    },
}

M.CreateFoundationModelAgreementOutput = {
    type = "structure",
    id = "CreateFoundationModelAgreementOutput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFoundationModelAgreementInput = {
    type = "structure",
    id = "DeleteFoundationModelAgreementInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFoundationModelAgreementOutput = {
    type = "structure",
    id = "DeleteFoundationModelAgreementOutput",
}

M.GetFoundationModelAvailabilityInput = {
    type = "structure",
    id = "GetFoundationModelAvailabilityInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AuthorizationStatus = {
    AUTHORIZED = "AUTHORIZED",
    NOT_AUTHORIZED = "NOT_AUTHORIZED",
}

M.EntitlementAvailability = {
    AVAILABLE = "AVAILABLE",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.RegionAvailability = {
    AVAILABLE = "AVAILABLE",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.GetFoundationModelAvailabilityOutput = {
    type = "structure",
    id = "GetFoundationModelAvailabilityOutput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agreementAvailability = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgreementAvailability }),
        authorizationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entitlementAvailability = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regionAvailability = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OfferType = {
    ALL = "ALL",
    PUBLIC = "PUBLIC",
}

M.ListFoundationModelAgreementOffersInput = {
    type = "structure",
    id = "ListFoundationModelAgreementOffersInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        offerType = {
            type = "string",
            traits = {
                http_query = "offerType",
            },
        },
    },
}

M.LegalTerm = {
    type = "structure",
    id = "LegalTerm",
    members = {
        url = {
            type = "string",
        },
    },
}

M.SupportTerm = {
    type = "structure",
    id = "SupportTerm",
    members = {
        refundPolicyDescription = {
            type = "string",
        },
    },
}

M.DimensionalPriceRate = {
    type = "structure",
    id = "DimensionalPriceRate",
    members = {
        dimension = {
            type = "string",
        },
        price = {
            type = "string",
        },
        description = {
            type = "string",
        },
        unit = {
            type = "string",
        },
    },
}

M.PricingTerm = {
    type = "structure",
    id = "PricingTerm",
    members = {
        rateCard = {
            type = "list",
            member = M.DimensionalPriceRate,
            traits = {
                required = true,
            },
        },
    },
}

M.ValidityTerm = {
    type = "structure",
    id = "ValidityTerm",
    members = {
        agreementDuration = {
            type = "string",
        },
    },
}

M.TermDetails = {
    type = "structure",
    id = "TermDetails",
    members = {
        usageBasedPricingTerm = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PricingTerm }),
        legalTerm = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LegalTerm }),
        supportTerm = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SupportTerm }),
        validityTerm = M.ValidityTerm,
    },
}

M.Offer = {
    type = "structure",
    id = "Offer",
    members = {
        offerId = {
            type = "string",
        },
        offerToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        termDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TermDetails }),
    },
}

M.ListFoundationModelAgreementOffersOutput = {
    type = "structure",
    id = "ListFoundationModelAgreementOffersOutput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offers = {
            type = "list",
            member = M.Offer,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceARN = {
            type = "string",
            traits = {
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.CreateModelCustomizationJobInput = {
    type = "structure",
    id = "CreateModelCustomizationJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        baseModelIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customizationType = {
            type = "string",
        },
        customModelKmsKeyId = {
            type = "string",
        },
        jobTags = {
            type = "list",
            member = M.Tag,
        },
        customModelTags = {
            type = "list",
            member = M.Tag,
        },
        trainingDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingDataConfig }),
        validationDataConfig = M.ValidationDataConfig,
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        hyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        vpcConfig = M.VpcConfig,
        customizationConfig = M.CustomizationConfig,
    },
}

M.CreateModelCustomizationJobOutput = {
    type = "structure",
    id = "CreateModelCustomizationJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetModelCustomizationJobInput = {
    type = "structure",
    id = "GetModelCustomizationJobInput",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ModelCustomizationJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.JobStatusDetails = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    FAILED = "Failed",
    NOT_STARTED = "NotStarted",
}

M.DataProcessingDetails = {
    type = "structure",
    id = "DataProcessingDetails",
    members = {
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.TrainingDetails = {
    type = "structure",
    id = "TrainingDetails",
    members = {
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ValidationDetails = {
    type = "structure",
    id = "ValidationDetails",
    members = {
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.StatusDetails = {
    type = "structure",
    id = "StatusDetails",
    members = {
        validationDetails = M.ValidationDetails,
        dataProcessingDetails = M.DataProcessingDetails,
        trainingDetails = M.TrainingDetails,
    },
}

M.GetModelCustomizationJobOutput = {
    type = "structure",
    id = "GetModelCustomizationJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputModelArn = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusDetails = M.StatusDetails,
        failureMessage = {
            type = "string",
        },
        creationTime = {
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
        baseModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        trainingDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingDataConfig }),
        validationDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ValidationDataConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        customizationType = {
            type = "string",
        },
        outputModelKmsKeyArn = {
            type = "string",
        },
        trainingMetrics = M.TrainingMetrics,
        validationMetrics = {
            type = "list",
            member = M.ValidatorMetric,
        },
        vpcConfig = M.VpcConfig,
        customizationConfig = M.CustomizationConfig,
    },
}

M.FineTuningJobStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
}

M.ListModelCustomizationJobsInput = {
    type = "structure",
    id = "ListModelCustomizationJobsInput",
    members = {
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
                timestamp_format = "date-time",
            },
        },
        statusEquals = {
            type = "string",
            traits = {
                http_query = "statusEquals",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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

M.ModelCustomizationJobSummary = {
    type = "structure",
    id = "ModelCustomizationJobSummary",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
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
        statusDetails = M.StatusDetails,
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        customModelArn = {
            type = "string",
        },
        customModelName = {
            type = "string",
        },
        customizationType = {
            type = "string",
        },
    },
}

M.ListModelCustomizationJobsOutput = {
    type = "structure",
    id = "ListModelCustomizationJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        modelCustomizationJobSummaries = {
            type = "list",
            member = M.ModelCustomizationJobSummary,
        },
    },
}

M.StopModelCustomizationJobInput = {
    type = "structure",
    id = "StopModelCustomizationJobInput",
    members = {
        jobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopModelCustomizationJobOutput = {
    type = "structure",
    id = "StopModelCustomizationJobOutput",
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
        },
        overrideSearchType = {
            type = "string",
        },
        filter = M.RetrievalFilter,
        implicitFilterConfiguration = M.ImplicitFilterConfiguration,
        rerankingConfiguration = M.VectorSearchRerankingConfiguration,
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

M.RetrieveConfig = {
    type = "structure",
    id = "RetrieveConfig",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseRetrievalConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseRetrievalConfiguration }),
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

M.KnowledgeBaseConfig = {
    type = "union",
    id = "KnowledgeBaseConfig",
    members = {
        retrieveConfig = M.RetrieveConfig,
        retrieveAndGenerateConfig = M.RetrieveAndGenerateConfiguration,
    },
}

M.RAGConfig = {
    type = "union",
    id = "RAGConfig",
    members = {
        knowledgeBaseConfig = M.KnowledgeBaseConfig,
        precomputedRagSourceConfig = M.EvaluationPrecomputedRagSourceConfig,
    },
}

M.EvaluationInferenceConfig = {
    type = "union",
    id = "EvaluationInferenceConfig",
    members = {
        models = {
            type = "list",
            member = M.EvaluationModelConfig,
        },
        ragConfigs = {
            type = "list",
            member = M.RAGConfig,
        },
    },
}

M.CreateEvaluationJobInput = {
    type = "structure",
    id = "CreateEvaluationJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobDescription = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyId = {
            type = "string",
        },
        jobTags = {
            type = "list",
            member = M.Tag,
        },
        applicationType = {
            type = "string",
        },
        evaluationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationConfig }),
        inferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationInferenceConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationOutputDataConfig }),
    },
}

M.GetEvaluationJobOutput = {
    type = "structure",
    id = "GetEvaluationJobOutput",
    members = {
        jobName = {
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
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobDescription = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerEncryptionKeyId = {
            type = "string",
        },
        jobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationType = {
            type = "string",
        },
        evaluationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationConfig }),
        inferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationInferenceConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationOutputDataConfig }),
        creationTime = {
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
        failureMessages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

return M
