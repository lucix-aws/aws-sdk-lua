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

M.ModelEnforcement = {
    type = "structure",
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
}

M.GetUseCaseForModelAccessOutput = {
    type = "structure",
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

M.PutUseCaseForModelAccessInput = {
    type = "structure",
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
}

M.CancelAutomatedReasoningPolicyBuildWorkflowInput = {
    type = "structure",
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

M.AutomatedReasoningPolicyDefinitionRule = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAutomatedReasoningPolicyBuildWorkflowInput = {
    type = "structure",
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
}

M.DeleteAutomatedReasoningPolicyTestCaseInput = {
    type = "structure",
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
}

M.ExportAutomatedReasoningPolicyVersionInput = {
    type = "structure",
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
    members = {
        policyDefinition = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinition }),
    },
}

M.GetAutomatedReasoningPolicyInput = {
    type = "structure",
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
    members = {
        addTypeValue = M.AutomatedReasoningPolicyAddTypeValue,
        updateTypeValue = M.AutomatedReasoningPolicyUpdateTypeValue,
        deleteTypeValue = M.AutomatedReasoningPolicyDeleteTypeValue,
    },
}

M.AutomatedReasoningPolicyUpdateTypeAnnotation = {
    type = "structure",
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
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionRule }),
    },
}

M.AutomatedReasoningPolicyAddTypeMutation = {
    type = "structure",
    members = {
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionType }),
    },
}

M.AutomatedReasoningPolicyAddVariableMutation = {
    type = "structure",
    members = {
        variable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionVariable }),
    },
}

M.AutomatedReasoningPolicyDeleteRuleMutation = {
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

M.AutomatedReasoningPolicyDeleteTypeMutation = {
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

M.AutomatedReasoningPolicyDeleteVariableMutation = {
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

M.AutomatedReasoningPolicyUpdateRuleMutation = {
    type = "structure",
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionRule }),
    },
}

M.AutomatedReasoningPolicyUpdateTypeMutation = {
    type = "structure",
    members = {
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionType }),
    },
}

M.AutomatedReasoningPolicyUpdateVariableMutation = {
    type = "structure",
    members = {
        variable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyDefinitionVariable }),
    },
}

M.AutomatedReasoningPolicyMutation = {
    type = "union",
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
}

M.AutomatedReasoningPolicyBuildStepContext = {
    type = "union",
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
    members = {
        policyDefinitionVariable = M.AutomatedReasoningPolicyDefinitionVariable,
        policyDefinitionType = M.AutomatedReasoningPolicyDefinitionType,
        policyDefinitionRule = M.AutomatedReasoningPolicyDefinitionRule,
    },
}

M.AutomatedReasoningPolicyBuildStep = {
    type = "structure",
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
    members = {
        line = M.AutomatedReasoningPolicyAnnotatedLine,
    },
}

M.AutomatedReasoningPolicyAnnotatedChunk = {
    type = "structure",
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
    members = {
        text = {
            type = "string",
        },
    },
}

M.AutomatedReasoningCheckTranslation = {
    type = "structure",
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
}

M.AutomatedReasoningCheckScenario = {
    type = "structure",
    members = {
        statements = {
            type = "list",
            member = M.AutomatedReasoningLogicStatement,
        },
    },
}

M.AutomatedReasoningCheckSatisfiableFinding = {
    type = "structure",
    members = {
        translation = M.AutomatedReasoningCheckTranslation,
        claimsTrueScenario = M.AutomatedReasoningCheckScenario,
        claimsFalseScenario = M.AutomatedReasoningCheckScenario,
        logicWarning = M.AutomatedReasoningCheckLogicWarning,
    },
}

M.AutomatedReasoningCheckTooComplexFinding = {
    type = "structure",
}

M.AutomatedReasoningCheckTranslationOption = {
    type = "structure",
    members = {
        translations = {
            type = "list",
            member = M.AutomatedReasoningCheckTranslation,
        },
    },
}

M.AutomatedReasoningCheckTranslationAmbiguousFinding = {
    type = "structure",
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
    members = {
        testResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomatedReasoningPolicyTestResult }),
    },
}

M.ListAutomatedReasoningPoliciesInput = {
    type = "structure",
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
    members = {
        documents = {
            type = "list",
            member = M.AutomatedReasoningPolicyBuildWorkflowDocument,
        },
    },
}

M.AutomatedReasoningPolicyBuildWorkflowRepairContent = {
    type = "structure",
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
    members = {
        policyDefinition = M.AutomatedReasoningPolicyDefinition,
        workflowContent = M.AutomatedReasoningPolicyWorkflowTypeContent,
    },
}

M.StartAutomatedReasoningPolicyBuildWorkflowInput = {
    type = "structure",
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
    members = {
        sageMaker = M.SageMakerEndpoint,
    },
}

M.CreateMarketplaceModelEndpointInput = {
    type = "structure",
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
    members = {
        marketplaceModelEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MarketplaceModelEndpoint }),
    },
}

M.DeleteMarketplaceModelEndpointInput = {
    type = "structure",
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
}

M.DeregisterMarketplaceModelEndpointInput = {
    type = "structure",
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

M.GetMarketplaceModelEndpointInput = {
    type = "structure",
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
    members = {
        marketplaceModelEndpoint = M.MarketplaceModelEndpoint,
    },
}

M.ListMarketplaceModelEndpointsInput = {
    type = "structure",
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
    members = {
        marketplaceModelEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MarketplaceModelEndpoint }),
    },
}

M.UpdateMarketplaceModelEndpointInput = {
    type = "structure",
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
    members = {
        marketplaceModelEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MarketplaceModelEndpoint }),
    },
}

M.CreateCustomModelDeploymentInput = {
    type = "structure",
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
}

M.GetCustomModelDeploymentInput = {
    type = "structure",
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
    members = {
        s3DataSource = M.S3DataSource,
    },
}

M.CreateCustomModelInput = {
    type = "structure",
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
}

M.GetCustomModelInput = {
    type = "structure",
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
    members = {
        teacherModelConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TeacherModelConfig }),
    },
}

M.LambdaGraderConfig = {
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

M.GraderConfig = {
    type = "union",
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
    members = {
        graderConfig = M.GraderConfig,
        hyperParameters = M.RFTHyperParameters,
    },
}

M.CustomizationConfig = {
    type = "union",
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
    members = {
        s3Uri = {
            type = "string",
        },
    },
}

M.RequestMetadataBaseFilters = {
    type = "structure",
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
    members = {
        s3Uri = {
            type = "string",
        },
        invocationLogsConfig = M.InvocationLogsConfig,
    },
}

M.TrainingMetrics = {
    type = "structure",
    members = {
        trainingLoss = {
            type = "float",
        },
    },
}

M.Validator = {
    type = "structure",
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
    members = {
        validationLoss = {
            type = "float",
        },
    },
}

M.GetCustomModelOutput = {
    type = "structure",
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
}

M.ListEnforcedGuardrailsConfigurationInput = {
    type = "structure",
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
    members = {
        customMetricDefinition = M.CustomMetricDefinition,
    },
}

M.CustomMetricBedrockEvaluatorModel = {
    type = "structure",
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
    members = {
        s3Uri = {
            type = "string",
        },
    },
}

M.EvaluationDataset = {
    type = "structure",
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
    members = {
        bedrockEvaluatorModels = {
            type = "list",
            member = M.BedrockEvaluatorModel,
        },
    },
}

M.AutomatedEvaluationConfig = {
    type = "structure",
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
    members = {
        latency = {
            type = "string",
        },
    },
}

M.EvaluationBedrockModel = {
    type = "structure",
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
    members = {
        bedrockModel = M.EvaluationBedrockModel,
        precomputedInferenceSource = M.EvaluationPrecomputedInferenceSource,
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
    members = {
        textInferenceConfig = M.TextInferenceConfig,
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
        s3Location = M.S3ObjectDoc,
        byteContent = M.ByteContentDoc,
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
        queryTransformationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryTransformationConfiguration }),
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
    members = {
        retrieveSourceConfig = M.EvaluationPrecomputedRetrieveSourceConfig,
        retrieveAndGenerateSourceConfig = M.EvaluationPrecomputedRetrieveAndGenerateSourceConfig,
    },
}

M.EvaluationOutputDataConfig = {
    type = "structure",
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
    members = {
        modelConfigSummary = M.EvaluationModelConfigSummary,
        ragConfigSummary = M.EvaluationRagConfigSummary,
    },
}

M.EvaluationSummary = {
    type = "structure",
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
}

M.GuardrailAutomatedReasoningPolicyConfig = {
    type = "structure",
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
}

M.GetGuardrailInput = {
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
                http_query = "guardrailVersion",
            },
        },
    },
}

M.GuardrailAutomatedReasoningPolicy = {
    type = "structure",
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
    members = {
        copyFrom = {
            type = "string",
        },
    },
}

M.CreateInferenceProfileInput = {
    type = "structure",
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
}

M.GetInferenceProfileInput = {
    type = "structure",
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
}

M.DeleteModelInvocationLoggingConfigurationOutput = {
    type = "structure",
}

M.GetModelInvocationLoggingConfigurationInput = {
    type = "structure",
}

M.S3Config = {
    type = "structure",
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
    members = {
        loggingConfig = M.LoggingConfig,
    },
}

M.PutModelInvocationLoggingConfigurationInput = {
    type = "structure",
    members = {
        loggingConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfig }),
    },
}

M.PutModelInvocationLoggingConfigurationOutput = {
    type = "structure",
}

M.CreateModelCopyJobInput = {
    type = "structure",
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
}

M.GetImportedModelInput = {
    type = "structure",
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
    members = {
        s3OutputDataConfig = M.ModelInvocationJobS3OutputDataConfig,
    },
}

M.CreateModelInvocationJobInput = {
    type = "structure",
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
}

M.GetFoundationModelInput = {
    type = "structure",
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
    members = {
        modelDetails = M.FoundationModelDetails,
    },
}

M.ListFoundationModelsInput = {
    type = "structure",
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
    members = {
        modelSummaries = {
            type = "list",
            member = M.FoundationModelSummary,
        },
    },
}

M.PromptRouterTargetModel = {
    type = "structure",
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
    members = {
        promptRouterArn = {
            type = "string",
        },
    },
}

M.DeletePromptRouterInput = {
    type = "structure",
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
}

M.GetPromptRouterInput = {
    type = "structure",
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
}

M.GetProvisionedModelThroughputInput = {
    type = "structure",
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
}

M.DeleteResourcePolicyInput = {
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

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.GetResourcePolicyInput = {
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

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        resourcePolicy = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
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
    members = {
        resourceArn = {
            type = "string",
        },
    },
}

M.CreateFoundationModelAgreementInput = {
    type = "structure",
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
}

M.GetFoundationModelAvailabilityInput = {
    type = "structure",
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
    members = {
        url = {
            type = "string",
        },
    },
}

M.SupportTerm = {
    type = "structure",
    members = {
        refundPolicyDescription = {
            type = "string",
        },
    },
}

M.DimensionalPriceRate = {
    type = "structure",
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
    members = {
        agreementDuration = {
            type = "string",
        },
    },
}

M.TermDetails = {
    type = "structure",
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
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.CreateModelCustomizationJobInput = {
    type = "structure",
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
    members = {
        validationDetails = M.ValidationDetails,
        dataProcessingDetails = M.DataProcessingDetails,
        trainingDetails = M.TrainingDetails,
    },
}

M.GetModelCustomizationJobOutput = {
    type = "structure",
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
}

M.RetrievalFilter = {
    type = "union",
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
    members = {
        vectorSearchConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnowledgeBaseVectorSearchConfiguration }),
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
        retrievalConfiguration = M.KnowledgeBaseRetrievalConfiguration,
        generationConfiguration = M.GenerationConfiguration,
        orchestrationConfiguration = M.OrchestrationConfiguration,
    },
}

M.RetrieveConfig = {
    type = "structure",
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
    members = {
        retrieveConfig = M.RetrieveConfig,
        retrieveAndGenerateConfig = M.RetrieveAndGenerateConfiguration,
    },
}

M.RAGConfig = {
    type = "union",
    members = {
        knowledgeBaseConfig = M.KnowledgeBaseConfig,
        precomputedRagSourceConfig = M.EvaluationPrecomputedRagSourceConfig,
    },
}

M.EvaluationInferenceConfig = {
    type = "union",
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
