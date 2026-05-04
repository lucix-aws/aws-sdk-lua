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

M.StatementEffect = {
    Allow = "Allow",
    Deny = "Deny",
}

M.AddPolicyStatementInput = {
    type = "structure",
    id = "AddPolicyStatementInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statementId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        principal = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
        },
    },
}

M.AddPolicyStatementOutput = {
    type = "structure",
    id = "AddPolicyStatementOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
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

M.AttributeMatchingModel = {
    ONE_TO_ONE = "ONE_TO_ONE",
    MANY_TO_MANY = "MANY_TO_MANY",
}

M.BatchDeleteUniqueIdInput = {
    type = "structure",
    id = "BatchDeleteUniqueIdInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inputSource = {
            type = "string",
            traits = {
                http_header = "inputSource",
            },
        },
        uniqueIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_header = "uniqueIds",
                required = true,
            },
        },
    },
}

M.DeletedUniqueId = {
    type = "structure",
    id = "DeletedUniqueId",
    members = {
        uniqueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUniqueIdErrorType = {
    SERVICE_ERROR = "SERVICE_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
}

M.DeleteUniqueIdError = {
    type = "structure",
    id = "DeleteUniqueIdError",
    members = {
        uniqueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUniqueIdStatus = {
    COMPLETED = "COMPLETED",
    ACCEPTED = "ACCEPTED",
}

M.BatchDeleteUniqueIdOutput = {
    type = "structure",
    id = "BatchDeleteUniqueIdOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.DeleteUniqueIdError,
            traits = {
                required = true,
            },
        },
        deleted = {
            type = "list",
            member = M.DeletedUniqueId,
            traits = {
                required = true,
            },
        },
        disconnectedUniqueIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IdMappingType = {
    PROVIDER = "PROVIDER",
    RULE_BASED = "RULE_BASED",
}

M.IntermediateSourceConfiguration = {
    type = "structure",
    id = "IntermediateSourceConfiguration",
    members = {
        intermediateS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProviderProperties = {
    type = "structure",
    id = "ProviderProperties",
    members = {
        providerServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerConfiguration = {
            type = "document",
        },
        intermediateSourceConfiguration = M.IntermediateSourceConfiguration,
    },
}

M.RecordMatchingModel = {
    ONE_SOURCE_TO_ONE_TARGET = "ONE_SOURCE_TO_ONE_TARGET",
    MANY_SOURCE_TO_ONE_TARGET = "MANY_SOURCE_TO_ONE_TARGET",
}

M.IdMappingWorkflowRuleDefinitionType = {
    SOURCE = "SOURCE",
    TARGET = "TARGET",
}

M.Rule = {
    type = "structure",
    id = "Rule",
    members = {
        ruleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchingKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IdMappingRuleBasedProperties = {
    type = "structure",
    id = "IdMappingRuleBasedProperties",
    members = {
        rules = {
            type = "list",
            member = M.Rule,
        },
        ruleDefinitionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributeMatchingModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordMatchingModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdMappingTechniques = {
    type = "structure",
    id = "IdMappingTechniques",
    members = {
        idMappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleBasedProperties = M.IdMappingRuleBasedProperties,
        providerProperties = M.ProviderProperties,
    },
}

M.IdMappingIncrementalRunType = {
    ON_DEMAND = "ON_DEMAND",
}

M.IdMappingIncrementalRunConfig = {
    type = "structure",
    id = "IdMappingIncrementalRunConfig",
    members = {
        incrementalRunType = {
            type = "string",
        },
    },
}

M.IdNamespaceType = {
    SOURCE = "SOURCE",
    TARGET = "TARGET",
}

M.IdMappingWorkflowInputSource = {
    type = "structure",
    id = "IdMappingWorkflowInputSource",
    members = {
        inputSourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaName = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.IdMappingWorkflowOutputSource = {
    type = "structure",
    id = "IdMappingWorkflowOutputSource",
    members = {
        KMSArn = {
            type = "string",
        },
        outputS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIdMappingWorkflowInput = {
    type = "structure",
    id = "CreateIdMappingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowInputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowOutputSource,
        },
        idMappingTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTechniques }),
        incrementalRunConfig = M.IdMappingIncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                default = "",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIdMappingWorkflowOutput = {
    type = "structure",
    id = "CreateIdMappingWorkflowOutput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowInputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowOutputSource,
        },
        idMappingTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTechniques }),
        incrementalRunConfig = M.IdMappingIncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                default = "",
            },
        },
    },
}

M.ExceedsLimitException = {
    type = "structure",
    id = "ExceedsLimitException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        quotaName = {
            type = "string",
        },
        quotaValue = {
            type = "integer",
        },
    },
}

M.NamespaceProviderProperties = {
    type = "structure",
    id = "NamespaceProviderProperties",
    members = {
        providerServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerConfiguration = {
            type = "document",
        },
    },
}

M.NamespaceRuleBasedProperties = {
    type = "structure",
    id = "NamespaceRuleBasedProperties",
    members = {
        rules = {
            type = "list",
            member = M.Rule,
        },
        ruleDefinitionTypes = {
            type = "list",
            member = { type = "string" },
        },
        attributeMatchingModel = {
            type = "string",
        },
        recordMatchingModels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IdNamespaceIdMappingWorkflowProperties = {
    type = "structure",
    id = "IdNamespaceIdMappingWorkflowProperties",
    members = {
        idMappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleBasedProperties = M.NamespaceRuleBasedProperties,
        providerProperties = M.NamespaceProviderProperties,
    },
}

M.IdNamespaceInputSource = {
    type = "structure",
    id = "IdNamespaceInputSource",
    members = {
        inputSourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaName = {
            type = "string",
        },
    },
}

M.CreateIdNamespaceInput = {
    type = "structure",
    id = "CreateIdNamespaceInput",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdNamespaceInputSource,
        },
        idMappingWorkflowProperties = {
            type = "list",
            member = M.IdNamespaceIdMappingWorkflowProperties,
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIdNamespaceOutput = {
    type = "structure",
    id = "CreateIdNamespaceOutput",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idNamespaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdNamespaceInputSource,
        },
        idMappingWorkflowProperties = {
            type = "list",
            member = M.IdNamespaceIdMappingWorkflowProperties,
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.IncrementalRunType = {
    IMMEDIATE = "IMMEDIATE",
}

M.IncrementalRunConfig = {
    type = "structure",
    id = "IncrementalRunConfig",
    members = {
        incrementalRunType = {
            type = "string",
        },
    },
}

M.InputSource = {
    type = "structure",
    id = "InputSource",
    members = {
        inputSourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applyNormalization = {
            type = "boolean",
        },
    },
}

M.CustomerProfilesIntegrationConfig = {
    type = "structure",
    id = "CustomerProfilesIntegrationConfig",
    members = {
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectTypeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputAttribute = {
    type = "structure",
    id = "OutputAttribute",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hashed = {
            type = "boolean",
        },
    },
}

M.OutputSource = {
    type = "structure",
    id = "OutputSource",
    members = {
        KMSArn = {
            type = "string",
        },
        outputS3Path = {
            type = "string",
            traits = {
                default = "",
            },
        },
        output = {
            type = "list",
            member = M.OutputAttribute,
            traits = {
                required = true,
            },
        },
        applyNormalization = {
            type = "boolean",
        },
        customerProfilesIntegrationConfig = M.CustomerProfilesIntegrationConfig,
    },
}

M.ResolutionType = {
    RULE_MATCHING = "RULE_MATCHING",
    ML_MATCHING = "ML_MATCHING",
    PROVIDER = "PROVIDER",
}

M.MatchPurpose = {
    IDENTIFIER_GENERATION = "IDENTIFIER_GENERATION",
    INDEXING = "INDEXING",
}

M.RuleBasedProperties = {
    type = "structure",
    id = "RuleBasedProperties",
    members = {
        rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
        attributeMatchingModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchPurpose = {
            type = "string",
        },
    },
}

M.MatchingConfig = {
    type = "structure",
    id = "MatchingConfig",
    members = {
        enableTransitiveMatching = {
            type = "boolean",
        },
    },
}

M.RuleCondition = {
    type = "structure",
    id = "RuleCondition",
    members = {
        ruleName = {
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
    },
}

M.RuleConditionProperties = {
    type = "structure",
    id = "RuleConditionProperties",
    members = {
        rules = {
            type = "list",
            member = M.RuleCondition,
            traits = {
                required = true,
            },
        },
        matchingConfig = M.MatchingConfig,
    },
}

M.ResolutionTechniques = {
    type = "structure",
    id = "ResolutionTechniques",
    members = {
        resolutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleBasedProperties = M.RuleBasedProperties,
        ruleConditionProperties = M.RuleConditionProperties,
        providerProperties = M.ProviderProperties,
    },
}

M.CreateMatchingWorkflowInput = {
    type = "structure",
    id = "CreateMatchingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.InputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.OutputSource,
            traits = {
                required = true,
            },
        },
        resolutionTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResolutionTechniques }),
        incrementalRunConfig = M.IncrementalRunConfig,
        roleArn = {
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

M.CreateMatchingWorkflowOutput = {
    type = "structure",
    id = "CreateMatchingWorkflowOutput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.InputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.OutputSource,
            traits = {
                required = true,
            },
        },
        resolutionTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResolutionTechniques }),
        incrementalRunConfig = M.IncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaAttributeType = {
    NAME = "NAME",
    NAME_FIRST = "NAME_FIRST",
    NAME_MIDDLE = "NAME_MIDDLE",
    NAME_LAST = "NAME_LAST",
    ADDRESS = "ADDRESS",
    ADDRESS_STREET1 = "ADDRESS_STREET1",
    ADDRESS_STREET2 = "ADDRESS_STREET2",
    ADDRESS_STREET3 = "ADDRESS_STREET3",
    ADDRESS_CITY = "ADDRESS_CITY",
    ADDRESS_STATE = "ADDRESS_STATE",
    ADDRESS_COUNTRY = "ADDRESS_COUNTRY",
    ADDRESS_POSTALCODE = "ADDRESS_POSTALCODE",
    PHONE = "PHONE",
    PHONE_NUMBER = "PHONE_NUMBER",
    PHONE_COUNTRYCODE = "PHONE_COUNTRYCODE",
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
    UNIQUE_ID = "UNIQUE_ID",
    DATE = "DATE",
    STRING = "STRING",
    PROVIDER_ID = "PROVIDER_ID",
    IPV4 = "IPV4",
    IPV6 = "IPV6",
    MAID = "MAID",
}

M.SchemaInputAttribute = {
    type = "structure",
    id = "SchemaInputAttribute",
    members = {
        fieldName = {
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
        groupName = {
            type = "string",
        },
        matchKey = {
            type = "string",
        },
        subType = {
            type = "string",
        },
        hashed = {
            type = "boolean",
        },
    },
}

M.CreateSchemaMappingInput = {
    type = "structure",
    id = "CreateSchemaMappingInput",
    members = {
        schemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        mappedInputFields = {
            type = "list",
            member = M.SchemaInputAttribute,
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

M.CreateSchemaMappingOutput = {
    type = "structure",
    id = "CreateSchemaMappingOutput",
    members = {
        schemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaArn = {
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
        mappedInputFields = {
            type = "list",
            member = M.SchemaInputAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdMappingWorkflowInput = {
    type = "structure",
    id = "DeleteIdMappingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIdMappingWorkflowOutput = {
    type = "structure",
    id = "DeleteIdMappingWorkflowOutput",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdNamespaceInput = {
    type = "structure",
    id = "DeleteIdNamespaceInput",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIdNamespaceOutput = {
    type = "structure",
    id = "DeleteIdNamespaceOutput",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMatchingWorkflowInput = {
    type = "structure",
    id = "DeleteMatchingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMatchingWorkflowOutput = {
    type = "structure",
    id = "DeleteMatchingWorkflowOutput",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyStatementInput = {
    type = "structure",
    id = "DeletePolicyStatementInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statementId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePolicyStatementOutput = {
    type = "structure",
    id = "DeletePolicyStatementOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
        },
    },
}

M.DeleteSchemaMappingInput = {
    type = "structure",
    id = "DeleteSchemaMappingInput",
    members = {
        schemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSchemaMappingOutput = {
    type = "structure",
    id = "DeleteSchemaMappingOutput",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcessingType = {
    CONSISTENT = "CONSISTENT",
    EVENTUAL = "EVENTUAL",
    EVENTUAL_NO_LOOKUP = "EVENTUAL_NO_LOOKUP",
}

M.Record = {
    type = "structure",
    id = "Record",
    members = {
        inputSourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uniqueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordAttributeMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateMatchIdInput = {
    type = "structure",
    id = "GenerateMatchIdInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        records = {
            type = "list",
            member = M.Record,
            traits = {
                required = true,
            },
        },
        processingType = {
            type = "string",
        },
    },
}

M.FailedRecord = {
    type = "structure",
    id = "FailedRecord",
    members = {
        inputSourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uniqueId = {
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

M.MatchedRecord = {
    type = "structure",
    id = "MatchedRecord",
    members = {
        inputSourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MatchGroup = {
    type = "structure",
    id = "MatchGroup",
    members = {
        records = {
            type = "list",
            member = M.MatchedRecord,
            traits = {
                required = true,
            },
        },
        matchId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchRule = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateMatchIdOutput = {
    type = "structure",
    id = "GenerateMatchIdOutput",
    members = {
        matchGroups = {
            type = "list",
            member = M.MatchGroup,
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member = M.FailedRecord,
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdMappingJobInput = {
    type = "structure",
    id = "GetIdMappingJobInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
    members = {
        errorMessage = {
            type = "string",
        },
    },
}

M.JobType = {
    BATCH = "BATCH",
    INCREMENTAL = "INCREMENTAL",
    DELETE_ONLY = "DELETE_ONLY",
}

M.IdMappingJobMetrics = {
    type = "structure",
    id = "IdMappingJobMetrics",
    members = {
        inputRecords = {
            type = "integer",
        },
        totalRecordsProcessed = {
            type = "integer",
        },
        recordsNotProcessed = {
            type = "integer",
        },
        deleteRecordsProcessed = {
            type = "integer",
        },
        totalMappedRecords = {
            type = "integer",
        },
        totalMappedSourceRecords = {
            type = "integer",
        },
        totalMappedTargetRecords = {
            type = "integer",
        },
        uniqueRecordsLoaded = {
            type = "integer",
        },
        newMappedRecords = {
            type = "integer",
        },
        newMappedSourceRecords = {
            type = "integer",
        },
        newMappedTargetRecords = {
            type = "integer",
        },
        newUniqueRecordsLoaded = {
            type = "integer",
        },
        mappedRecordsRemoved = {
            type = "integer",
        },
        mappedSourceRecordsRemoved = {
            type = "integer",
        },
        mappedTargetRecordsRemoved = {
            type = "integer",
        },
    },
}

M.IdMappingJobOutputSource = {
    type = "structure",
    id = "IdMappingJobOutputSource",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSArn = {
            type = "string",
        },
    },
}

M.JobStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    QUEUED = "QUEUED",
}

M.GetIdMappingJobOutput = {
    type = "structure",
    id = "GetIdMappingJobOutput",
    members = {
        jobId = {
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
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        metrics = M.IdMappingJobMetrics,
        errorDetails = M.ErrorDetails,
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingJobOutputSource,
        },
        jobType = {
            type = "string",
        },
    },
}

M.GetIdMappingWorkflowInput = {
    type = "structure",
    id = "GetIdMappingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIdMappingWorkflowOutput = {
    type = "structure",
    id = "GetIdMappingWorkflowOutput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowInputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowOutputSource,
        },
        idMappingTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTechniques }),
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
        incrementalRunConfig = M.IdMappingIncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                default = "",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetIdNamespaceInput = {
    type = "structure",
    id = "GetIdNamespaceInput",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIdNamespaceOutput = {
    type = "structure",
    id = "GetIdNamespaceOutput",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idNamespaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdNamespaceInputSource,
        },
        idMappingWorkflowProperties = {
            type = "list",
            member = M.IdNamespaceIdMappingWorkflowProperties,
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetMatchIdInput = {
    type = "structure",
    id = "GetMatchIdInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        record = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        applyNormalization = {
            type = "boolean",
            traits = {
                default = true,
            },
        },
    },
}

M.GetMatchIdOutput = {
    type = "structure",
    id = "GetMatchIdOutput",
    members = {
        matchId = {
            type = "string",
        },
        matchRule = {
            type = "string",
        },
    },
}

M.GetMatchingJobInput = {
    type = "structure",
    id = "GetMatchingJobInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobMetrics = {
    type = "structure",
    id = "JobMetrics",
    members = {
        inputRecords = {
            type = "integer",
        },
        totalRecordsProcessed = {
            type = "integer",
        },
        recordsNotProcessed = {
            type = "integer",
        },
        deleteRecordsProcessed = {
            type = "integer",
        },
        matchIDs = {
            type = "integer",
        },
    },
}

M.JobOutputSource = {
    type = "structure",
    id = "JobOutputSource",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSArn = {
            type = "string",
        },
    },
}

M.GetMatchingJobOutput = {
    type = "structure",
    id = "GetMatchingJobOutput",
    members = {
        jobId = {
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
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        metrics = M.JobMetrics,
        errorDetails = M.ErrorDetails,
        outputSourceConfig = {
            type = "list",
            member = M.JobOutputSource,
        },
    },
}

M.GetMatchingWorkflowInput = {
    type = "structure",
    id = "GetMatchingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMatchingWorkflowOutput = {
    type = "structure",
    id = "GetMatchingWorkflowOutput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.InputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.OutputSource,
            traits = {
                required = true,
            },
        },
        resolutionTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResolutionTechniques }),
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
        incrementalRunConfig = M.IncrementalRunConfig,
        roleArn = {
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

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    id = "GetPolicyOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
        },
    },
}

M.GetProviderServiceInput = {
    type = "structure",
    id = "GetProviderServiceInput",
    members = {
        providerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        providerServiceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ProviderSchemaAttribute = {
    type = "structure",
    id = "ProviderSchemaAttribute",
    members = {
        fieldName = {
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
        subType = {
            type = "string",
        },
        hashing = {
            type = "boolean",
        },
    },
}

M.ProviderComponentSchema = {
    type = "structure",
    id = "ProviderComponentSchema",
    members = {
        schemas = {
            type = "list",
            member = { type = "list" },
        },
        providerSchemaAttributes = {
            type = "list",
            member = M.ProviderSchemaAttribute,
        },
    },
}

M.ProviderMarketplaceConfiguration = {
    type = "structure",
    id = "ProviderMarketplaceConfiguration",
    members = {
        dataSetId = {
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
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProviderEndpointConfiguration = {
    type = "union",
    id = "ProviderEndpointConfiguration",
    members = {
        marketplaceConfiguration = M.ProviderMarketplaceConfiguration,
    },
}

M.ProviderIdNameSpaceConfiguration = {
    type = "structure",
    id = "ProviderIdNameSpaceConfiguration",
    members = {
        description = {
            type = "string",
        },
        providerTargetConfigurationDefinition = {
            type = "document",
        },
        providerSourceConfigurationDefinition = {
            type = "document",
        },
    },
}

M.ProviderIntermediateDataAccessConfiguration = {
    type = "structure",
    id = "ProviderIntermediateDataAccessConfiguration",
    members = {
        awsAccountIds = {
            type = "list",
            member = { type = "string" },
        },
        requiredBucketActions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ServiceType = {
    ASSIGNMENT = "ASSIGNMENT",
    ID_MAPPING = "ID_MAPPING",
}

M.GetProviderServiceOutput = {
    type = "structure",
    id = "GetProviderServiceOutput",
    members = {
        providerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerServiceDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerConfigurationDefinition = {
            type = "document",
        },
        providerIdNameSpaceConfiguration = M.ProviderIdNameSpaceConfiguration,
        providerJobConfiguration = {
            type = "document",
        },
        providerEndpointConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProviderEndpointConfiguration }),
        anonymizedOutput = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        providerEntityOutputDefinition = {
            type = "document",
            traits = {
                required = true,
            },
        },
        providerIntermediateDataAccessConfiguration = M.ProviderIntermediateDataAccessConfiguration,
        providerComponentSchema = M.ProviderComponentSchema,
    },
}

M.GetSchemaMappingInput = {
    type = "structure",
    id = "GetSchemaMappingInput",
    members = {
        schemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSchemaMappingOutput = {
    type = "structure",
    id = "GetSchemaMappingOutput",
    members = {
        schemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        mappedInputFields = {
            type = "list",
            member = M.SchemaInputAttribute,
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        hasWorkflows = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIdMappingJobsInput = {
    type = "structure",
    id = "ListIdMappingJobsInput",
    members = {
        workflowName = {
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

M.JobSummary = {
    type = "structure",
    id = "JobSummary",
    members = {
        jobId = {
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
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ListIdMappingJobsOutput = {
    type = "structure",
    id = "ListIdMappingJobsOutput",
    members = {
        jobs = {
            type = "list",
            member = M.JobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIdMappingWorkflowsInput = {
    type = "structure",
    id = "ListIdMappingWorkflowsInput",
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

M.IdMappingWorkflowSummary = {
    type = "structure",
    id = "IdMappingWorkflowSummary",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowArn = {
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

M.ListIdMappingWorkflowsOutput = {
    type = "structure",
    id = "ListIdMappingWorkflowsOutput",
    members = {
        workflowSummaries = {
            type = "list",
            member = M.IdMappingWorkflowSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIdNamespacesInput = {
    type = "structure",
    id = "ListIdNamespacesInput",
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

M.IdNamespaceIdMappingWorkflowMetadata = {
    type = "structure",
    id = "IdNamespaceIdMappingWorkflowMetadata",
    members = {
        idMappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdNamespaceSummary = {
    type = "structure",
    id = "IdNamespaceSummary",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idNamespaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        idMappingWorkflowProperties = {
            type = "list",
            member = M.IdNamespaceIdMappingWorkflowMetadata,
        },
        type = {
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

M.ListIdNamespacesOutput = {
    type = "structure",
    id = "ListIdNamespacesOutput",
    members = {
        idNamespaceSummaries = {
            type = "list",
            member = M.IdNamespaceSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMatchingJobsInput = {
    type = "structure",
    id = "ListMatchingJobsInput",
    members = {
        workflowName = {
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

M.ListMatchingJobsOutput = {
    type = "structure",
    id = "ListMatchingJobsOutput",
    members = {
        jobs = {
            type = "list",
            member = M.JobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMatchingWorkflowsInput = {
    type = "structure",
    id = "ListMatchingWorkflowsInput",
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

M.MatchingWorkflowSummary = {
    type = "structure",
    id = "MatchingWorkflowSummary",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowArn = {
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
        resolutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMatchingWorkflowsOutput = {
    type = "structure",
    id = "ListMatchingWorkflowsOutput",
    members = {
        workflowSummaries = {
            type = "list",
            member = M.MatchingWorkflowSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProviderServicesInput = {
    type = "structure",
    id = "ListProviderServicesInput",
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
        providerName = {
            type = "string",
            traits = {
                http_query = "providerName",
            },
        },
    },
}

M.ProviderServiceSummary = {
    type = "structure",
    id = "ProviderServiceSummary",
    members = {
        providerServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerServiceDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProviderServicesOutput = {
    type = "structure",
    id = "ListProviderServicesOutput",
    members = {
        providerServiceSummaries = {
            type = "list",
            member = M.ProviderServiceSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSchemaMappingsInput = {
    type = "structure",
    id = "ListSchemaMappingsInput",
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

M.SchemaMappingSummary = {
    type = "structure",
    id = "SchemaMappingSummary",
    members = {
        schemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaArn = {
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
        hasWorkflows = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSchemaMappingsOutput = {
    type = "structure",
    id = "ListSchemaMappingsOutput",
    members = {
        schemaList = {
            type = "list",
            member = M.SchemaMappingSummary,
        },
        nextToken = {
            type = "string",
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
            traits = {
                required = true,
            },
        },
    },
}

M.PutPolicyInput = {
    type = "structure",
    id = "PutPolicyInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        token = {
            type = "string",
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutPolicyOutput = {
    type = "structure",
    id = "PutPolicyOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
        },
    },
}

M.StartIdMappingJobInput = {
    type = "structure",
    id = "StartIdMappingJobInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingJobOutputSource,
        },
        jobType = {
            type = "string",
        },
    },
}

M.StartIdMappingJobOutput = {
    type = "structure",
    id = "StartIdMappingJobOutput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingJobOutputSource,
        },
        jobType = {
            type = "string",
        },
    },
}

M.StartMatchingJobInput = {
    type = "structure",
    id = "StartMatchingJobInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartMatchingJobOutput = {
    type = "structure",
    id = "StartMatchingJobOutput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
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

M.UpdateIdMappingWorkflowInput = {
    type = "structure",
    id = "UpdateIdMappingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowInputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowOutputSource,
        },
        idMappingTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTechniques }),
        incrementalRunConfig = M.IdMappingIncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                default = "",
            },
        },
    },
}

M.UpdateIdMappingWorkflowOutput = {
    type = "structure",
    id = "UpdateIdMappingWorkflowOutput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowInputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.IdMappingWorkflowOutputSource,
        },
        idMappingTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTechniques }),
        incrementalRunConfig = M.IdMappingIncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                default = "",
            },
        },
    },
}

M.UpdateIdNamespaceInput = {
    type = "structure",
    id = "UpdateIdNamespaceInput",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdNamespaceInputSource,
        },
        idMappingWorkflowProperties = {
            type = "list",
            member = M.IdNamespaceIdMappingWorkflowProperties,
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateIdNamespaceOutput = {
    type = "structure",
    id = "UpdateIdNamespaceOutput",
    members = {
        idNamespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idNamespaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.IdNamespaceInputSource,
        },
        idMappingWorkflowProperties = {
            type = "list",
            member = M.IdNamespaceIdMappingWorkflowProperties,
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
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

M.UpdateMatchingWorkflowInput = {
    type = "structure",
    id = "UpdateMatchingWorkflowInput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.InputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.OutputSource,
            traits = {
                required = true,
            },
        },
        resolutionTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResolutionTechniques }),
        incrementalRunConfig = M.IncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMatchingWorkflowOutput = {
    type = "structure",
    id = "UpdateMatchingWorkflowOutput",
    members = {
        workflowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputSourceConfig = {
            type = "list",
            member = M.InputSource,
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member = M.OutputSource,
            traits = {
                required = true,
            },
        },
        resolutionTechniques = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResolutionTechniques }),
        incrementalRunConfig = M.IncrementalRunConfig,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSchemaMappingInput = {
    type = "structure",
    id = "UpdateSchemaMappingInput",
    members = {
        schemaName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        mappedInputFields = {
            type = "list",
            member = M.SchemaInputAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSchemaMappingOutput = {
    type = "structure",
    id = "UpdateSchemaMappingOutput",
    members = {
        schemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        mappedInputFields = {
            type = "list",
            member = M.SchemaInputAttribute,
            traits = {
                required = true,
            },
        },
    },
}

return M
