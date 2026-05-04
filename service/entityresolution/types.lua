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

M.StatementEffect = {
    Allow = "Allow",
    Deny = "Deny",
}

M.AddPolicyStatementInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "list",
            member_type = "string",
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
    error = "client",
    members = {
        message = {
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

M.AttributeMatchingModel = {
    ONE_TO_ONE = "ONE_TO_ONE",
    MANY_TO_MANY = "MANY_TO_MANY",
}

M.BatchDeleteUniqueIdInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_header = "uniqueIds",
                required = true,
            },
        },
    },
}

M.DeletedUniqueId = {
    type = "structure",
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
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        deleted = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        disconnectedUniqueIds = {
            type = "list",
            member_type = "string",
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
        intermediateSourceConfiguration = {
            type = "structure",
        },
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
    members = {
        ruleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchingKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdMappingRuleBasedProperties = {
    type = "structure",
    members = {
        rules = {
            type = "list",
            member_type = "structure",
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
    members = {
        idMappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleBasedProperties = {
            type = "structure",
        },
        providerProperties = {
            type = "structure",
        },
    },
}

M.IdMappingIncrementalRunType = {
    ON_DEMAND = "ON_DEMAND",
}

M.IdMappingIncrementalRunConfig = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
        idMappingTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateIdMappingWorkflowOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
        idMappingTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.ExceedsLimitException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        quotaName = {
            type = "string",
        },
        quotaValue = {
            type = "number",
        },
    },
}

M.NamespaceProviderProperties = {
    type = "structure",
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
    members = {
        rules = {
            type = "list",
            member_type = "structure",
        },
        ruleDefinitionTypes = {
            type = "list",
            member_type = "string",
        },
        attributeMatchingModel = {
            type = "string",
        },
        recordMatchingModels = {
            type = "list",
            member_type = "string",
        },
    },
}

M.IdNamespaceIdMappingWorkflowProperties = {
    type = "structure",
    members = {
        idMappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleBasedProperties = {
            type = "structure",
        },
        providerProperties = {
            type = "structure",
        },
    },
}

M.IdNamespaceInputSource = {
    type = "structure",
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
            member_type = "structure",
        },
        idMappingWorkflowProperties = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateIdNamespaceOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        idMappingWorkflowProperties = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.IncrementalRunType = {
    IMMEDIATE = "IMMEDIATE",
}

M.IncrementalRunConfig = {
    type = "structure",
    members = {
        incrementalRunType = {
            type = "string",
        },
    },
}

M.InputSource = {
    type = "structure",
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
    members = {
        KMSArn = {
            type = "string",
        },
        outputS3Path = {
            type = "string",
        },
        output = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        applyNormalization = {
            type = "boolean",
        },
        customerProfilesIntegrationConfig = {
            type = "structure",
        },
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
    members = {
        rules = {
            type = "list",
            member_type = "structure",
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
    members = {
        enableTransitiveMatching = {
            type = "boolean",
        },
    },
}

M.RuleCondition = {
    type = "structure",
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
    members = {
        rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        matchingConfig = {
            type = "structure",
        },
    },
}

M.ResolutionTechniques = {
    type = "structure",
    members = {
        resolutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleBasedProperties = {
            type = "structure",
        },
        ruleConditionProperties = {
            type = "structure",
        },
        providerProperties = {
            type = "structure",
        },
    },
}

M.CreateMatchingWorkflowInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resolutionTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateMatchingWorkflowOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resolutionTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateSchemaMappingOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdMappingWorkflowInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateMatchIdInput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        records = {
            type = "list",
            member_type = "structure",
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
    members = {
        matchGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdMappingJobInput = {
    type = "structure",
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
    members = {
        inputRecords = {
            type = "number",
        },
        totalRecordsProcessed = {
            type = "number",
        },
        recordsNotProcessed = {
            type = "number",
        },
        deleteRecordsProcessed = {
            type = "number",
        },
        totalMappedRecords = {
            type = "number",
        },
        totalMappedSourceRecords = {
            type = "number",
        },
        totalMappedTargetRecords = {
            type = "number",
        },
        uniqueRecordsLoaded = {
            type = "number",
        },
        newMappedRecords = {
            type = "number",
        },
        newMappedSourceRecords = {
            type = "number",
        },
        newMappedTargetRecords = {
            type = "number",
        },
        newUniqueRecordsLoaded = {
            type = "number",
        },
        mappedRecordsRemoved = {
            type = "number",
        },
        mappedSourceRecordsRemoved = {
            type = "number",
        },
        mappedTargetRecordsRemoved = {
            type = "number",
        },
    },
}

M.IdMappingJobOutputSource = {
    type = "structure",
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
        metrics = {
            type = "structure",
        },
        errorDetails = {
            type = "structure",
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
        jobType = {
            type = "string",
        },
    },
}

M.GetIdMappingWorkflowInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
        idMappingTechniques = {
            type = "structure",
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
        incrementalRunConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetIdNamespaceInput = {
    type = "structure",
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
            member_type = "structure",
        },
        idMappingWorkflowProperties = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetMatchIdInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        applyNormalization = {
            type = "boolean",
        },
    },
}

M.GetMatchIdOutput = {
    type = "structure",
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
    members = {
        inputRecords = {
            type = "number",
        },
        totalRecordsProcessed = {
            type = "number",
        },
        recordsNotProcessed = {
            type = "number",
        },
        deleteRecordsProcessed = {
            type = "number",
        },
        matchIDs = {
            type = "number",
        },
    },
}

M.JobOutputSource = {
    type = "structure",
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
        metrics = {
            type = "structure",
        },
        errorDetails = {
            type = "structure",
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMatchingWorkflowInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resolutionTechniques = {
            type = "structure",
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
        incrementalRunConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
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
    members = {
        schemas = {
            type = "list",
            member_type = "list",
        },
        providerSchemaAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProviderMarketplaceConfiguration = {
    type = "structure",
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
    members = {
        marketplaceConfiguration = {
            type = "structure",
        },
    },
}

M.ProviderIdNameSpaceConfiguration = {
    type = "structure",
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
    members = {
        awsAccountIds = {
            type = "list",
            member_type = "string",
        },
        requiredBucketActions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ServiceType = {
    ASSIGNMENT = "ASSIGNMENT",
    ID_MAPPING = "ID_MAPPING",
}

M.GetProviderServiceOutput = {
    type = "structure",
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
        providerIdNameSpaceConfiguration = {
            type = "structure",
        },
        providerJobConfiguration = {
            type = "document",
        },
        providerEndpointConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        providerIntermediateDataAccessConfiguration = {
            type = "structure",
        },
        providerComponentSchema = {
            type = "structure",
        },
    },
}

M.GetSchemaMappingInput = {
    type = "structure",
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.JobSummary = {
    type = "structure",
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
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIdMappingWorkflowsInput = {
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
    },
}

M.IdMappingWorkflowSummary = {
    type = "structure",
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
    members = {
        workflowSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIdNamespacesInput = {
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
    },
}

M.IdNamespaceIdMappingWorkflowMetadata = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        idNamespaceSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMatchingJobsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListMatchingJobsOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMatchingWorkflowsInput = {
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
    },
}

M.MatchingWorkflowSummary = {
    type = "structure",
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
    members = {
        workflowSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProviderServicesInput = {
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
    members = {
        providerServiceSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSchemaMappingsInput = {
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
    },
}

M.SchemaMappingSummary = {
    type = "structure",
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
    members = {
        schemaList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
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
            traits = {
                required = true,
            },
        },
    },
}

M.PutPolicyInput = {
    type = "structure",
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
            member_type = "structure",
        },
        jobType = {
            type = "string",
        },
    },
}

M.StartIdMappingJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
        jobType = {
            type = "string",
        },
    },
}

M.StartMatchingJobInput = {
    type = "structure",
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

M.UpdateIdMappingWorkflowInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
        idMappingTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateIdMappingWorkflowOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
        },
        idMappingTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateIdNamespaceInput = {
    type = "structure",
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
            member_type = "structure",
        },
        idMappingWorkflowProperties = {
            type = "list",
            member_type = "structure",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateIdNamespaceOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        idMappingWorkflowProperties = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resolutionTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        outputSourceConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resolutionTechniques = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        incrementalRunConfig = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSchemaMappingOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
