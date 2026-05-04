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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        excludedModels = {
            type = "list",
            member_type = "string",
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
        selectiveContentGuarding = {
            type = "structure",
        },
        modelEnforcement = {
            type = "structure",
        },
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
        selectiveContentGuarding = {
            type = "structure",
        },
        guardrailVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        modelEnforcement = {
            type = "structure",
        },
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
            member_type = "structure",
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
        },
        types = {
            type = "list",
            member_type = "structure",
        },
        rules = {
            type = "list",
            member_type = "structure",
        },
        variables = {
            type = "list",
            member_type = "structure",
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
        },
        policyDefinition = {
            type = "structure",
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
        },
        confidenceThreshold = {
            type = "number",
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
        },
        lastUpdatedDefinitionHash = {
            type = "string",
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
        policyDefinition = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
        addTypeValue = {
            type = "structure",
        },
        updateTypeValue = {
            type = "structure",
        },
        deleteTypeValue = {
            type = "structure",
        },
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
            member_type = "union",
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
        addType = {
            type = "structure",
        },
        updateType = {
            type = "structure",
        },
        deleteType = {
            type = "structure",
        },
        addVariable = {
            type = "structure",
        },
        updateVariable = {
            type = "structure",
        },
        deleteVariable = {
            type = "structure",
        },
        addRule = {
            type = "structure",
        },
        updateRule = {
            type = "structure",
        },
        deleteRule = {
            type = "structure",
        },
        addRuleFromNaturalLanguage = {
            type = "structure",
        },
        updateFromRulesFeedback = {
            type = "structure",
        },
        updateFromScenarioFeedback = {
            type = "structure",
        },
        ingestContent = {
            type = "structure",
        },
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
            member_type = "union",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddRuleMutation = {
    type = "structure",
    members = {
        rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddTypeMutation = {
    type = "structure",
    members = {
        type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAddVariableMutation = {
    type = "structure",
    members = {
        variable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyUpdateTypeMutation = {
    type = "structure",
    members = {
        type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyUpdateVariableMutation = {
    type = "structure",
    members = {
        variable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyMutation = {
    type = "union",
    members = {
        addType = {
            type = "structure",
        },
        updateType = {
            type = "structure",
        },
        deleteType = {
            type = "structure",
        },
        addVariable = {
            type = "structure",
        },
        updateVariable = {
            type = "structure",
        },
        deleteVariable = {
            type = "structure",
        },
        addRule = {
            type = "structure",
        },
        updateRule = {
            type = "structure",
        },
        deleteRule = {
            type = "structure",
        },
    },
}

M.AutomatedReasoningPolicyPlanning = {
    type = "structure",
}

M.AutomatedReasoningPolicyBuildStepContext = {
    type = "union",
    members = {
        planning = {
            type = "structure",
        },
        mutation = {
            type = "union",
        },
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
        policyDefinitionVariable = {
            type = "structure",
        },
        policyDefinitionType = {
            type = "structure",
        },
        policyDefinitionRule = {
            type = "structure",
        },
    },
}

M.AutomatedReasoningPolicyBuildStep = {
    type = "structure",
    members = {
        context = {
            type = "union",
            traits = {
                required = true,
            },
        },
        priorElement = {
            type = "union",
        },
        messages = {
            type = "list",
            member_type = "structure",
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
        annotation = {
            type = "union",
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
        buildSteps = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "number",
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
        location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyAnnotatedLine = {
    type = "structure",
    members = {
        lineNumber = {
            type = "number",
        },
        lineText = {
            type = "string",
        },
    },
}

M.AutomatedReasoningPolicyAnnotatedContent = {
    type = "union",
    members = {
        line = {
            type = "structure",
        },
    },
}

M.AutomatedReasoningPolicyAnnotatedChunk = {
    type = "structure",
    members = {
        pageNumber = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        documentContent = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        groundingJustifications = {
            type = "list",
            member_type = "string",
        },
        accuracyScore = {
            type = "number",
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
            member_type = "structure",
        },
        groundingJustifications = {
            type = "list",
            member_type = "string",
        },
        accuracyScore = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        accuracyScore = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ruleReports = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        variableReports = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        documentSources = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        variableCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ruleCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unusedTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        unusedTypeValues = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        unusedVariables = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        conflictingRules = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        disjointRuleSets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningPolicyBuildResultAssets = {
    type = "union",
    members = {
        policyDefinition = {
            type = "structure",
        },
        qualityReport = {
            type = "structure",
        },
        buildLog = {
            type = "structure",
        },
        generatedTestCases = {
            type = "structure",
        },
        policyScenarios = {
            type = "structure",
        },
        assetManifest = {
            type = "structure",
        },
        document = {
            type = "structure",
        },
        fidelityReport = {
            type = "structure",
        },
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
        buildWorkflowAssets = {
            type = "union",
        },
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
        scenario = {
            type = "structure",
        },
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "number",
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
        testCase = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        claims = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        claims = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
    },
}

M.AutomatedReasoningCheckImpossibleFinding = {
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

M.AutomatedReasoningCheckInvalidFinding = {
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

M.AutomatedReasoningCheckNoTranslationsFinding = {
    type = "structure",
}

M.AutomatedReasoningCheckScenario = {
    type = "structure",
    members = {
        statements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutomatedReasoningCheckSatisfiableFinding = {
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

M.AutomatedReasoningCheckTooComplexFinding = {
    type = "structure",
}

M.AutomatedReasoningCheckTranslationOption = {
    type = "structure",
    members = {
        translations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutomatedReasoningCheckTranslationAmbiguousFinding = {
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

M.AutomatedReasoningCheckValidFinding = {
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

M.AutomatedReasoningCheckFinding = {
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
        testCase = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "union",
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
            },
        },
    },
}

M.GetAutomatedReasoningPolicyTestResultOutput = {
    type = "structure",
    members = {
        testResult = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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

M.ListAutomatedReasoningPoliciesOutput = {
    type = "structure",
    members = {
        automatedReasoningPolicySummaries = {
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
            type = "number",
            traits = {
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

M.ListAutomatedReasoningPolicyBuildWorkflowsOutput = {
    type = "structure",
    members = {
        automatedReasoningPolicyBuildWorkflowSummaries = {
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

M.ListAutomatedReasoningPolicyTestCasesOutput = {
    type = "structure",
    members = {
        testCases = {
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

M.ListAutomatedReasoningPolicyTestResultsOutput = {
    type = "structure",
    members = {
        testResults = {
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
            member_type = "structure",
        },
    },
}

M.AutomatedReasoningPolicyBuildWorkflowRepairContent = {
    type = "structure",
    members = {
        annotations = {
            type = "list",
            member_type = "union",
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
            member_type = "structure",
        },
        policyRepairAssets = {
            type = "structure",
        },
        generateFidelityReportContent = {
            type = "union",
        },
    },
}

M.AutomatedReasoningPolicyBuildWorkflowSource = {
    type = "structure",
    members = {
        policyDefinition = {
            type = "structure",
        },
        workflowContent = {
            type = "union",
        },
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
            },
        },
        sourceContent = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
            member_type = "string",
        },
        clientRequestToken = {
            type = "string",
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
        policyDefinition = {
            type = "structure",
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
            member_type = "union",
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
            },
        },
        expectedAggregatedFindingsResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "number",
        },
        clientRequestToken = {
            type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
        vpc = {
            type = "structure",
        },
    },
}

M.EndpointConfig = {
    type = "union",
    members = {
        sageMaker = {
            type = "structure",
        },
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
        endpointConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        acceptEula = {
            type = "boolean",
        },
        endpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endpointConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        marketplaceModelEndpoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        marketplaceModelEndpoint = {
            type = "structure",
        },
    },
}

M.ListMarketplaceModelEndpointsInput = {
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

M.ListMarketplaceModelEndpointsOutput = {
    type = "structure",
    members = {
        marketplaceModelEndpoints = {
            type = "list",
            member_type = "structure",
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
        marketplaceModelEndpoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        endpointConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.UpdateMarketplaceModelEndpointOutput = {
    type = "structure",
    members = {
        marketplaceModelEndpoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
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
        updateDetails = {
            type = "structure",
        },
        failureMessage = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
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
            },
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAfter",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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
            member_type = "structure",
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
        s3DataSource = {
            type = "structure",
        },
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
        modelSourceConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        modelKmsKeyArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        modelTags = {
            type = "list",
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
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
            type = "number",
        },
    },
}

M.DistillationConfig = {
    type = "structure",
    members = {
        teacherModelConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        lambdaGrader = {
            type = "structure",
        },
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
            type = "number",
        },
        batchSize = {
            type = "number",
        },
        learningRate = {
            type = "number",
        },
        maxPromptLength = {
            type = "number",
        },
        trainingSamplePerPrompt = {
            type = "number",
        },
        inferenceMaxTokens = {
            type = "number",
        },
        reasoningEffort = {
            type = "string",
        },
        evalInterval = {
            type = "number",
        },
    },
}

M.RFTConfig = {
    type = "structure",
    members = {
        graderConfig = {
            type = "union",
        },
        hyperParameters = {
            type = "structure",
        },
    },
}

M.CustomizationConfig = {
    type = "union",
    members = {
        distillationConfig = {
            type = "structure",
        },
        rftConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        notEquals = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RequestMetadataFilters = {
    type = "union",
    members = {
        equals = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        notEquals = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        andAll = {
            type = "list",
            member_type = "structure",
        },
        orAll = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvocationLogsConfig = {
    type = "structure",
    members = {
        usePromptResponse = {
            type = "boolean",
        },
        invocationLogSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        requestMetadataFilters = {
            type = "union",
        },
    },
}

M.TrainingDataConfig = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
        },
        invocationLogsConfig = {
            type = "structure",
        },
    },
}

M.TrainingMetrics = {
    type = "structure",
    members = {
        trainingLoss = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        trainingDataConfig = {
            type = "structure",
        },
        validationDataConfig = {
            type = "structure",
        },
        outputDataConfig = {
            type = "structure",
        },
        trainingMetrics = {
            type = "structure",
        },
        validationMetrics = {
            type = "list",
            member_type = "structure",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        customizationConfig = {
            type = "union",
        },
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
            },
        },
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
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
            member_type = "structure",
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

M.PutEnforcedGuardrailConfigurationInput = {
    type = "structure",
    members = {
        configId = {
            type = "string",
        },
        guardrailInferenceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        evaluationJobs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        value = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
    },
}

M.AutomatedEvaluationCustomMetricSource = {
    type = "union",
    members = {
        customMetricDefinition = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        evaluatorModelConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        datasetLocation = {
            type = "union",
        },
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
        dataset = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metricNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.AutomatedEvaluationConfig = {
    type = "structure",
    members = {
        datasetMetricConfigs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        evaluatorModelConfig = {
            type = "union",
        },
        customMetricConfig = {
            type = "structure",
        },
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
        humanWorkflowConfig = {
            type = "structure",
        },
        customMetrics = {
            type = "list",
            member_type = "structure",
        },
        datasetMetricConfigs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationConfig = {
    type = "union",
    members = {
        automated = {
            type = "structure",
        },
        human = {
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
        },
        performanceConfig = {
            type = "structure",
        },
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
        bedrockModel = {
            type = "structure",
        },
        precomputedInferenceSource = {
            type = "structure",
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

M.KbInferenceConfig = {
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
        kbInferenceConfig = {
            type = "structure",
        },
        additionalModelRequestFields = {
            type = "map",
            key_type = "string",
            value_type = "document",
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
        kbInferenceConfig = {
            type = "structure",
        },
        additionalModelRequestFields = {
            type = "map",
            key_type = "string",
            value_type = "document",
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
        queryTransformationConfiguration = {
            type = "structure",
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
        retrieveSourceConfig = {
            type = "structure",
        },
        retrieveAndGenerateSourceConfig = {
            type = "structure",
        },
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
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
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

M.EvaluationModelConfigSummary = {
    type = "structure",
    members = {
        bedrockModelIdentifiers = {
            type = "list",
            member_type = "string",
        },
        precomputedInferenceSourceIdentifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EvaluationRagConfigSummary = {
    type = "structure",
    members = {
        bedrockKnowledgeBaseIdentifiers = {
            type = "list",
            member_type = "string",
        },
        precomputedRagSourceIdentifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EvaluationInferenceConfigSummary = {
    type = "structure",
    members = {
        modelConfigSummary = {
            type = "structure",
        },
        ragConfigSummary = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        modelIdentifiers = {
            type = "list",
            member_type = "string",
        },
        ragIdentifiers = {
            type = "list",
            member_type = "string",
        },
        evaluatorModelIdentifiers = {
            type = "list",
            member_type = "string",
        },
        customMetricsEvaluatorModelIdentifiers = {
            type = "list",
            member_type = "string",
        },
        inferenceConfigSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "number",
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
            member_type = "string",
        },
        outputModalities = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tierConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        regexesConfig = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tierConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        managedWordListsConfig = {
            type = "list",
            member_type = "structure",
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
        topicPolicyConfig = {
            type = "structure",
        },
        contentPolicyConfig = {
            type = "structure",
        },
        wordPolicyConfig = {
            type = "structure",
        },
        sensitiveInformationPolicyConfig = {
            type = "structure",
        },
        contextualGroundingPolicyConfig = {
            type = "structure",
        },
        automatedReasoningPolicyConfig = {
            type = "structure",
        },
        crossRegionConfig = {
            type = "structure",
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
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "number",
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
            member_type = "string",
        },
        outputModalities = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        tier = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        regexes = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tier = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        managedWordLists = {
            type = "list",
            member_type = "structure",
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
        crossRegionDetails = {
            type = "structure",
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
        statusReasons = {
            type = "list",
            member_type = "string",
        },
        failureRecommendations = {
            type = "list",
            member_type = "string",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        crossRegionDetails = {
            type = "structure",
        },
    },
}

M.ListGuardrailsOutput = {
    type = "structure",
    members = {
        guardrails = {
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
        topicPolicyConfig = {
            type = "structure",
        },
        contentPolicyConfig = {
            type = "structure",
        },
        wordPolicyConfig = {
            type = "structure",
        },
        sensitiveInformationPolicyConfig = {
            type = "structure",
        },
        contextualGroundingPolicyConfig = {
            type = "structure",
        },
        automatedReasoningPolicyConfig = {
            type = "structure",
        },
        crossRegionConfig = {
            type = "structure",
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
        },
        modelSource = {
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
        },
        updatedAt = {
            type = "timestamp",
        },
        inferenceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member_type = "structure",
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
        },
        updatedAt = {
            type = "timestamp",
        },
        inferenceProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        largeDataDeliveryS3Config = {
            type = "structure",
        },
    },
}

M.LoggingConfig = {
    type = "structure",
    members = {
        cloudWatchConfig = {
            type = "structure",
        },
        s3Config = {
            type = "structure",
        },
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
        loggingConfig = {
            type = "structure",
        },
    },
}

M.PutModelInvocationLoggingConfigurationInput = {
    type = "structure",
    members = {
        loggingConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
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
            member_type = "structure",
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
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
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
            member_type = "structure",
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
            member_type = "structure",
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
        modelDataSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        jobTags = {
            type = "list",
            member_type = "structure",
        },
        importedModelTags = {
            type = "list",
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
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
            type = "number",
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
        modelDataSource = {
            type = "union",
        },
        creationTime = {
            type = "timestamp",
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
        customModelUnits = {
            type = "structure",
        },
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
        modelDataSource = {
            type = "union",
        },
        status = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        vpcConfig = {
            type = "structure",
        },
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
            },
        },
        creationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeAfter",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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
            member_type = "structure",
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
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
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
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
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
            member_type = "structure",
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
        s3InputDataConfig = {
            type = "structure",
        },
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
        s3OutputDataConfig = {
            type = "structure",
        },
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
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputDataConfig = {
            type = "union",
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
        vpcConfig = {
            type = "structure",
        },
        timeoutDurationInHours = {
            type = "number",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        modelInvocationType = {
            type = "string",
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
            },
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        inputDataConfig = {
            type = "union",
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
        vpcConfig = {
            type = "structure",
        },
        timeoutDurationInHours = {
            type = "number",
        },
        jobExpirationTime = {
            type = "timestamp",
        },
        modelInvocationType = {
            type = "string",
        },
        totalRecordCount = {
            type = "number",
        },
        processedRecordCount = {
            type = "number",
        },
        successRecordCount = {
            type = "number",
        },
        errorRecordCount = {
            type = "number",
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
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
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
            },
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        inputDataConfig = {
            type = "union",
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
        vpcConfig = {
            type = "structure",
        },
        timeoutDurationInHours = {
            type = "number",
        },
        jobExpirationTime = {
            type = "timestamp",
        },
        modelInvocationType = {
            type = "string",
        },
        totalRecordCount = {
            type = "number",
        },
        processedRecordCount = {
            type = "number",
        },
        successRecordCount = {
            type = "number",
        },
        errorRecordCount = {
            type = "number",
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
            member_type = "structure",
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
        },
        endOfLifeTime = {
            type = "timestamp",
        },
        legacyTime = {
            type = "timestamp",
        },
        publicExtendedAccessTime = {
            type = "timestamp",
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
            member_type = "string",
        },
        outputModalities = {
            type = "list",
            member_type = "string",
        },
        responseStreamingSupported = {
            type = "boolean",
        },
        customizationsSupported = {
            type = "list",
            member_type = "string",
        },
        inferenceTypesSupported = {
            type = "list",
            member_type = "string",
        },
        modelLifecycle = {
            type = "structure",
        },
    },
}

M.GetFoundationModelOutput = {
    type = "structure",
    members = {
        modelDetails = {
            type = "structure",
        },
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
            member_type = "string",
        },
        outputModalities = {
            type = "list",
            member_type = "string",
        },
        responseStreamingSupported = {
            type = "boolean",
        },
        customizationsSupported = {
            type = "list",
            member_type = "string",
        },
        inferenceTypesSupported = {
            type = "list",
            member_type = "string",
        },
        modelLifecycle = {
            type = "structure",
        },
    },
}

M.ListFoundationModelsOutput = {
    type = "structure",
    members = {
        modelSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        },
        promptRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        routingCriteria = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        fallbackModel = {
            type = "structure",
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
        routingCriteria = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        promptRouterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        fallbackModel = {
            type = "structure",
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

M.ListPromptRoutersInput = {
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
        type = {
            type = "string",
            traits = {
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
        routingCriteria = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        promptRouterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        models = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        fallbackModel = {
            type = "structure",
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

M.ListPromptRoutersOutput = {
    type = "structure",
    members = {
        promptRouterSummaries = {
            type = "list",
            member_type = "structure",
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
        },
        modelUnits = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        desiredModelUnits = {
            type = "number",
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
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        desiredModelUnits = {
            type = "number",
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
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
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
            member_type = "structure",
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
        agreementAvailability = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        usageBasedPricingTerm = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        legalTerm = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        supportTerm = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        validityTerm = {
            type = "structure",
        },
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
        termDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        customModelTags = {
            type = "list",
            member_type = "structure",
        },
        trainingDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        validationDataConfig = {
            type = "structure",
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        hyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        vpcConfig = {
            type = "structure",
        },
        customizationConfig = {
            type = "union",
        },
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
        },
        lastModifiedTime = {
            type = "timestamp",
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
        },
        lastModifiedTime = {
            type = "timestamp",
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
        },
        lastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.StatusDetails = {
    type = "structure",
    members = {
        validationDetails = {
            type = "structure",
        },
        dataProcessingDetails = {
            type = "structure",
        },
        trainingDetails = {
            type = "structure",
        },
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
        statusDetails = {
            type = "structure",
        },
        failureMessage = {
            type = "string",
        },
        creationTime = {
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
        baseModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        trainingDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        validationDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        customizationType = {
            type = "string",
        },
        outputModelKmsKeyArn = {
            type = "string",
        },
        trainingMetrics = {
            type = "structure",
        },
        validationMetrics = {
            type = "list",
            member_type = "structure",
        },
        vpcConfig = {
            type = "structure",
        },
        customizationConfig = {
            type = "union",
        },
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
            },
        },
        creationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "creationTimeBefore",
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
        statusDetails = {
            type = "structure",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
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
            member_type = "structure",
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
        implicitFilterConfiguration = {
            type = "structure",
        },
        rerankingConfiguration = {
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

M.RetrieveConfig = {
    type = "structure",
    members = {
        knowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        knowledgeBaseRetrievalConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
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

M.KnowledgeBaseConfig = {
    type = "union",
    members = {
        retrieveConfig = {
            type = "structure",
        },
        retrieveAndGenerateConfig = {
            type = "structure",
        },
    },
}

M.RAGConfig = {
    type = "union",
    members = {
        knowledgeBaseConfig = {
            type = "union",
        },
        precomputedRagSourceConfig = {
            type = "union",
        },
    },
}

M.EvaluationInferenceConfig = {
    type = "union",
    members = {
        models = {
            type = "list",
            member_type = "union",
        },
        ragConfigs = {
            type = "list",
            member_type = "union",
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
            member_type = "structure",
        },
        applicationType = {
            type = "string",
        },
        evaluationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        inferenceConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        evaluationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        inferenceConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        failureMessages = {
            type = "list",
            member_type = "string",
        },
    },
}

return M
