local M = {}

M.AutoRefreshMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AccessBudgetType = {
    CALENDAR_DAY = "CALENDAR_DAY",
    CALENDAR_MONTH = "CALENDAR_MONTH",
    CALENDAR_WEEK = "CALENDAR_WEEK",
    LIFETIME = "LIFETIME",
}

M.AccessBudgetDetails = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        remainingBudget = {
            type = "number",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "number",
            traits = {
                required = true,
            },
        },
        budgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoRefresh = {
            type = "string",
        },
    },
}

M.AccessBudget = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        aggregateRemainingBudget = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BudgetParameter = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "number",
            traits = {
                required = true,
            },
        },
        autoRefresh = {
            type = "string",
        },
    },
}

M.AccessBudgetsPrivacyTemplateParametersInput = {
    type = "structure",
    members = {
        budgetParameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessBudgetsPrivacyTemplateParametersOutput = {
    type = "structure",
    members = {
        budgetParameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessBudgetsPrivacyTemplateUpdateParameters = {
    type = "structure",
    members = {
        budgetParameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedExceptionReason = {
    INSUFFICIENT_PERMISSIONS = "INSUFFICIENT_PERMISSIONS",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.AdditionalAnalyses = {
    ALLOWED = "ALLOWED",
    REQUIRED = "REQUIRED",
    NOT_ALLOWED = "NOT_ALLOWED",
}

M.AggregateFunctionName = {
    SUM = "SUM",
    SUM_DISTINCT = "SUM_DISTINCT",
    COUNT = "COUNT",
    COUNT_DISTINCT = "COUNT_DISTINCT",
    AVG = "AVG",
}

M.AggregateColumn = {
    type = "structure",
    members = {
        columnNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        function = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregationType = {
    COUNT_DISTINCT = "COUNT_DISTINCT",
}

M.AggregationConstraint = {
    type = "structure",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimum = {
            type = "number",
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

M.SupportedS3Region = {
    US_WEST_1 = "us-west-1",
    US_WEST_2 = "us-west-2",
    US_EAST_1 = "us-east-1",
    US_EAST_2 = "us-east-2",
    AF_SOUTH_1 = "af-south-1",
    AP_EAST_1 = "ap-east-1",
    AP_EAST_2 = "ap-east-2",
    AP_SOUTH_2 = "ap-south-2",
    AP_SOUTHEAST_1 = "ap-southeast-1",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    AP_SOUTHEAST_3 = "ap-southeast-3",
    AP_SOUTHEAST_5 = "ap-southeast-5",
    AP_SOUTHEAST_4 = "ap-southeast-4",
    AP_SOUTHEAST_7 = "ap-southeast-7",
    AP_SOUTH_1 = "ap-south-1",
    AP_NORTHEAST_3 = "ap-northeast-3",
    AP_NORTHEAST_1 = "ap-northeast-1",
    AP_NORTHEAST_2 = "ap-northeast-2",
    CA_CENTRAL_1 = "ca-central-1",
    CA_WEST_1 = "ca-west-1",
    EU_SOUTH_1 = "eu-south-1",
    EU_WEST_3 = "eu-west-3",
    EU_SOUTH_2 = "eu-south-2",
    EU_CENTRAL_2 = "eu-central-2",
    EU_CENTRAL_1 = "eu-central-1",
    EU_NORTH_1 = "eu-north-1",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    ME_SOUTH_1 = "me-south-1",
    ME_CENTRAL_1 = "me-central-1",
    IL_CENTRAL_1 = "il-central-1",
    SA_EAST_1 = "sa-east-1",
    MX_CENTRAL_1 = "mx-central-1",
}

M.AnalysisFormat = {
    SQL = "SQL",
    PYSPARK_1_0 = "PYSPARK_1_0",
}

M.AnalysisMethod = {
    DIRECT_QUERY = "DIRECT_QUERY",
    DIRECT_JOB = "DIRECT_JOB",
    MULTIPLE = "MULTIPLE",
}

M.ParameterType = {
    SMALLINT = "SMALLINT",
    INTEGER = "INTEGER",
    BIGINT = "BIGINT",
    DECIMAL = "DECIMAL",
    REAL = "REAL",
    DOUBLE_PRECISION = "DOUBLE_PRECISION",
    BOOLEAN = "BOOLEAN",
    CHAR = "CHAR",
    VARCHAR = "VARCHAR",
    DATE = "DATE",
    TIMESTAMP = "TIMESTAMP",
    TIMESTAMPTZ = "TIMESTAMPTZ",
    TIME = "TIME",
    TIMETZ = "TIMETZ",
    VARBYTE = "VARBYTE",
    BINARY = "BINARY",
    BYTE = "BYTE",
    CHARACTER = "CHARACTER",
    DOUBLE = "DOUBLE",
    FLOAT = "FLOAT",
    INT = "INT",
    LONG = "LONG",
    NUMERIC = "NUMERIC",
    SHORT = "SHORT",
    STRING = "STRING",
    TIMESTAMP_LTZ = "TIMESTAMP_LTZ",
    TIMESTAMP_NTZ = "TIMESTAMP_NTZ",
    TINYINT = "TINYINT",
}

M.AnalysisParameter = {
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
        defaultValue = {
            type = "string",
        },
    },
}

M.ConfiguredTableAssociationAnalysisRuleAggregation = {
    type = "structure",
    members = {
        allowedResultReceivers = {
            type = "list",
            member_type = "string",
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConfiguredTableAssociationAnalysisRuleCustom = {
    type = "structure",
    members = {
        allowedResultReceivers = {
            type = "list",
            member_type = "string",
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConfiguredTableAssociationAnalysisRuleList = {
    type = "structure",
    members = {
        allowedResultReceivers = {
            type = "list",
            member_type = "string",
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConfiguredTableAssociationAnalysisRulePolicyV1 = {
    type = "union",
    members = {
        list = {
            type = "structure",
        },
        aggregation = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
    },
}

M.ConfiguredTableAssociationAnalysisRulePolicy = {
    type = "union",
    members = {
        v1 = {
            type = "union",
        },
    },
}

M.JoinOperator = {
    OR = "OR",
    AND = "AND",
}

M.JoinRequiredOption = {
    QUERY_RUNNER = "QUERY_RUNNER",
}

M.ScalarFunctions = {
    ABS = "ABS",
    CAST = "CAST",
    CEILING = "CEILING",
    COALESCE = "COALESCE",
    CONVERT = "CONVERT",
    CURRENT_DATE = "CURRENT_DATE",
    DATEADD = "DATEADD",
    EXTRACT = "EXTRACT",
    FLOOR = "FLOOR",
    GETDATE = "GETDATE",
    LN = "LN",
    LOG = "LOG",
    LOWER = "LOWER",
    ROUND = "ROUND",
    RTRIM = "RTRIM",
    SQRT = "SQRT",
    SUBSTRING = "SUBSTRING",
    TO_CHAR = "TO_CHAR",
    TO_DATE = "TO_DATE",
    TO_NUMBER = "TO_NUMBER",
    TO_TIMESTAMP = "TO_TIMESTAMP",
    TRIM = "TRIM",
    TRUNC = "TRUNC",
    UPPER = "UPPER",
}

M.ConsolidatedPolicyAggregation = {
    type = "structure",
    members = {
        aggregateColumns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        joinColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        joinRequired = {
            type = "string",
        },
        allowedJoinOperators = {
            type = "list",
            member_type = "string",
        },
        dimensionColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        scalarFunctions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        outputConstraints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        additionalAnalyses = {
            type = "string",
        },
        allowedResultReceivers = {
            type = "list",
            member_type = "string",
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DifferentialPrivacyColumn = {
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

M.DifferentialPrivacyConfiguration = {
    type = "structure",
    members = {
        columns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConsolidatedPolicyCustom = {
    type = "structure",
    members = {
        allowedAnalyses = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        allowedAnalysisProviders = {
            type = "list",
            member_type = "string",
        },
        additionalAnalyses = {
            type = "string",
        },
        disallowedOutputColumns = {
            type = "list",
            member_type = "string",
        },
        differentialPrivacy = {
            type = "structure",
        },
        allowedResultReceivers = {
            type = "list",
            member_type = "string",
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConsolidatedPolicyList = {
    type = "structure",
    members = {
        joinColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        allowedJoinOperators = {
            type = "list",
            member_type = "string",
        },
        listColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        additionalAnalyses = {
            type = "string",
        },
        allowedResultReceivers = {
            type = "list",
            member_type = "string",
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConsolidatedPolicyV1 = {
    type = "union",
    members = {
        list = {
            type = "structure",
        },
        aggregation = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
    },
}

M.ConsolidatedPolicy = {
    type = "union",
    members = {
        v1 = {
            type = "union",
        },
    },
}

M.AnalysisRuleAggregation = {
    type = "structure",
    members = {
        aggregateColumns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        joinColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        joinRequired = {
            type = "string",
        },
        allowedJoinOperators = {
            type = "list",
            member_type = "string",
        },
        dimensionColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        scalarFunctions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        outputConstraints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        additionalAnalyses = {
            type = "string",
        },
    },
}

M.AnalysisRuleCustom = {
    type = "structure",
    members = {
        allowedAnalyses = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        allowedAnalysisProviders = {
            type = "list",
            member_type = "string",
        },
        additionalAnalyses = {
            type = "string",
        },
        disallowedOutputColumns = {
            type = "list",
            member_type = "string",
        },
        differentialPrivacy = {
            type = "structure",
        },
    },
}

M.QueryConstraintRequireOverlap = {
    type = "structure",
    members = {
        columns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.QueryConstraint = {
    type = "union",
    members = {
        requireOverlap = {
            type = "structure",
        },
    },
}

M.AnalysisRuleIdMappingTable = {
    type = "structure",
    members = {
        joinColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        queryConstraints = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        dimensionColumns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AnalysisRuleList = {
    type = "structure",
    members = {
        joinColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        allowedJoinOperators = {
            type = "list",
            member_type = "string",
        },
        listColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        additionalAnalyses = {
            type = "string",
        },
    },
}

M.AnalysisRulePolicyV1 = {
    type = "union",
    members = {
        list = {
            type = "structure",
        },
        aggregation = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
        idMappingTable = {
            type = "structure",
        },
    },
}

M.AnalysisRulePolicy = {
    type = "union",
    members = {
        v1 = {
            type = "union",
        },
    },
}

M.AnalysisRuleType = {
    AGGREGATION = "AGGREGATION",
    LIST = "LIST",
    CUSTOM = "CUSTOM",
    ID_MAPPING_TABLE = "ID_MAPPING_TABLE",
}

M.AnalysisRule = {
    type = "structure",
    members = {
        collaborationId = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "union",
            traits = {
                required = true,
            },
        },
        collaborationPolicy = {
            type = "union",
        },
        consolidatedPolicy = {
            type = "union",
        },
    },
}

M.AnalysisSchema = {
    type = "structure",
    members = {
        referencedTables = {
            type = "list",
            member_type = "string",
        },
    },
}

M.S3Location = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalysisTemplateArtifact = {
    type = "structure",
    members = {
        location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalysisTemplateArtifacts = {
    type = "structure",
    members = {
        entryPoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        additionalArtifacts = {
            type = "list",
            member_type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalysisSource = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        artifacts = {
            type = "structure",
        },
    },
}

M.Hash = {
    type = "structure",
    members = {
        sha256 = {
            type = "string",
        },
    },
}

M.AnalysisTemplateArtifactMetadata = {
    type = "structure",
    members = {
        entryPointHash = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        additionalArtifactHashes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalysisSourceMetadata = {
    type = "union",
    members = {
        artifacts = {
            type = "structure",
        },
    },
}

M.ErrorMessageType = {
    DETAILED = "DETAILED",
}

M.ErrorMessageConfiguration = {
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

M.SyntheticDataColumnType = {
    CATEGORICAL = "CATEGORICAL",
    NUMERICAL = "NUMERICAL",
}

M.SyntheticDataColumnProperties = {
    type = "structure",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        columnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isPredictiveValue = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnClassificationDetails = {
    type = "structure",
    members = {
        columnMapping = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MLSyntheticDataParameters = {
    type = "structure",
    members = {
        epsilon = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxMembershipInferenceAttackScore = {
            type = "number",
            traits = {
                required = true,
            },
        },
        columnClassification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SyntheticDataParameters = {
    type = "union",
    members = {
        mlSyntheticDataParameters = {
            type = "structure",
        },
    },
}

M.AnalysisTemplateValidationStatusReason = {
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

M.AnalysisTemplateValidationStatus = {
    VALID = "VALID",
    INVALID = "INVALID",
    UNABLE_TO_VALIDATE = "UNABLE_TO_VALIDATE",
}

M.AnalysisTemplateValidationType = {
    DIFFERENTIAL_PRIVACY = "DIFFERENTIAL_PRIVACY",
}

M.AnalysisTemplateValidationStatusDetail = {
    type = "structure",
    members = {
        type = {
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
        reasons = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalysisTemplate = {
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
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        schema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        sourceMetadata = {
            type = "union",
        },
        analysisParameters = {
            type = "list",
            member_type = "structure",
        },
        validations = {
            type = "list",
            member_type = "structure",
        },
        errorMessageConfiguration = {
            type = "structure",
        },
        syntheticDataParameters = {
            type = "union",
        },
    },
}

M.ConflictExceptionReason = {
    ALREADY_EXISTS = "ALREADY_EXISTS",
    SUBRESOURCES_EXIST = "SUBRESOURCES_EXIST",
    INVALID_STATE = "INVALID_STATE",
}

M.ResourceType = {
    CONFIGURED_TABLE = "CONFIGURED_TABLE",
    COLLABORATION = "COLLABORATION",
    MEMBERSHIP = "MEMBERSHIP",
    CONFIGURED_TABLE_ASSOCIATION = "CONFIGURED_TABLE_ASSOCIATION",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.CreateAnalysisTemplateInput = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        membershipIdentifier = {
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        analysisParameters = {
            type = "list",
            member_type = "structure",
        },
        schema = {
            type = "structure",
        },
        errorMessageConfiguration = {
            type = "structure",
        },
        syntheticDataParameters = {
            type = "union",
        },
    },
}

M.CreateAnalysisTemplateOutput = {
    type = "structure",
    members = {
        analysisTemplate = {
            type = "structure",
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
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
            traits = {
                required = true,
            },
        },
        quotaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaValue = {
            type = "number",
            traits = {
                required = true,
            },
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

M.ValidationExceptionField = {
    type = "structure",
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

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    INVALID_CONFIGURATION = "INVALID_CONFIGURATION",
    INVALID_QUERY = "INVALID_QUERY",
    IAM_SYNCHRONIZATION_DELAY = "IAM_SYNCHRONIZATION_DELAY",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteAnalysisTemplateInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisTemplateIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAnalysisTemplateOutput = {
    type = "structure",
}

M.GetAnalysisTemplateInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisTemplateIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAnalysisTemplateOutput = {
    type = "structure",
    members = {
        analysisTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAnalysisTemplatesInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
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

M.AnalysisTemplateSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        isSyntheticData = {
            type = "boolean",
        },
    },
}

M.ListAnalysisTemplatesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        analysisTemplateSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAnalysisTemplateInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisTemplateIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateAnalysisTemplateOutput = {
    type = "structure",
    members = {
        analysisTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalysisType = {
    DIRECT_ANALYSIS = "DIRECT_ANALYSIS",
    ADDITIONAL_ANALYSIS = "ADDITIONAL_ANALYSIS",
}

M.AnalyticsEngine = {
    SPARK = "SPARK",
    CLEAN_ROOMS_SQL = "CLEAN_ROOMS_SQL",
}

M.ApprovalStatus = {
    APPROVED = "APPROVED",
    DENIED = "DENIED",
    PENDING = "PENDING",
}

M.ApprovalStatusDetails = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CommercialRegion = {
    US_WEST_1 = "us-west-1",
    US_WEST_2 = "us-west-2",
    US_EAST_1 = "us-east-1",
    US_EAST_2 = "us-east-2",
    AF_SOUTH_1 = "af-south-1",
    AP_EAST_1 = "ap-east-1",
    AP_SOUTH_2 = "ap-south-2",
    AP_SOUTHEAST_1 = "ap-southeast-1",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    AP_SOUTHEAST_3 = "ap-southeast-3",
    AP_SOUTHEAST_5 = "ap-southeast-5",
    AP_SOUTHEAST_4 = "ap-southeast-4",
    AP_SOUTHEAST_7 = "ap-southeast-7",
    AP_SOUTH_1 = "ap-south-1",
    AP_NORTHEAST_3 = "ap-northeast-3",
    AP_NORTHEAST_1 = "ap-northeast-1",
    AP_NORTHEAST_2 = "ap-northeast-2",
    CA_CENTRAL_1 = "ca-central-1",
    CA_WEST_1 = "ca-west-1",
    EU_SOUTH_1 = "eu-south-1",
    EU_WEST_3 = "eu-west-3",
    EU_SOUTH_2 = "eu-south-2",
    EU_CENTRAL_2 = "eu-central-2",
    EU_CENTRAL_1 = "eu-central-1",
    EU_NORTH_1 = "eu-north-1",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    ME_SOUTH_1 = "me-south-1",
    ME_CENTRAL_1 = "me-central-1",
    IL_CENTRAL_1 = "il-central-1",
    SA_EAST_1 = "sa-east-1",
    MX_CENTRAL_1 = "mx-central-1",
    AP_EAST_2 = "ap-east-2",
}

M.AthenaTableReference = {
    type = "structure",
    members = {
        region = {
            type = "string",
        },
        workGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputLocation = {
            type = "string",
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
        catalogName = {
            type = "string",
        },
    },
}

M.AutoApprovedChangeType = {
    ADD_MEMBER = "ADD_MEMBER",
    GRANT_RECEIVE_RESULTS_ABILITY = "GRANT_RECEIVE_RESULTS_ABILITY",
    REVOKE_RECEIVE_RESULTS_ABILITY = "REVOKE_RECEIVE_RESULTS_ABILITY",
}

M.BatchGetCollaborationAnalysisTemplateInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisTemplateArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CollaborationAnalysisTemplate = {
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
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        creatorAccountId = {
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        schema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "union",
        },
        sourceMetadata = {
            type = "union",
        },
        analysisParameters = {
            type = "list",
            member_type = "structure",
        },
        validations = {
            type = "list",
            member_type = "structure",
        },
        errorMessageConfiguration = {
            type = "structure",
        },
        syntheticDataParameters = {
            type = "union",
        },
    },
}

M.BatchGetCollaborationAnalysisTemplateError = {
    type = "structure",
    members = {
        arn = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetCollaborationAnalysisTemplateOutput = {
    type = "structure",
    members = {
        collaborationAnalysisTemplates = {
            type = "list",
            member_type = "structure",
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
    },
}

M.BatchGetSchemaInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        names = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSchemaError = {
    type = "structure",
    members = {
        name = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.Column = {
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
    },
}

M.SchemaConfiguration = {
    DIFFERENTIAL_PRIVACY = "DIFFERENTIAL_PRIVACY",
}

M.SchemaStatusReasonCode = {
    ANALYSIS_RULE_MISSING = "ANALYSIS_RULE_MISSING",
    ANALYSIS_TEMPLATES_NOT_CONFIGURED = "ANALYSIS_TEMPLATES_NOT_CONFIGURED",
    ANALYSIS_PROVIDERS_NOT_CONFIGURED = "ANALYSIS_PROVIDERS_NOT_CONFIGURED",
    DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED = "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED",
    ID_MAPPING_TABLE_NOT_POPULATED = "ID_MAPPING_TABLE_NOT_POPULATED",
    COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED = "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED",
    ADDITIONAL_ANALYSES_NOT_CONFIGURED = "ADDITIONAL_ANALYSES_NOT_CONFIGURED",
    RESULT_RECEIVERS_NOT_CONFIGURED = "RESULT_RECEIVERS_NOT_CONFIGURED",
    ADDITIONAL_ANALYSES_NOT_ALLOWED = "ADDITIONAL_ANALYSES_NOT_ALLOWED",
    RESULT_RECEIVERS_NOT_ALLOWED = "RESULT_RECEIVERS_NOT_ALLOWED",
    ANALYSIS_RULE_TYPES_NOT_COMPATIBLE = "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE",
}

M.SchemaStatusReason = {
    type = "structure",
    members = {
        code = {
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

M.SchemaStatus = {
    READY = "READY",
    NOT_READY = "NOT_READY",
}

M.SchemaStatusDetail = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reasons = {
            type = "list",
            member_type = "structure",
        },
        analysisRuleType = {
            type = "string",
        },
        configurations = {
            type = "list",
            member_type = "string",
        },
        analysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdNamespaceType = {
    SOURCE = "SOURCE",
    TARGET = "TARGET",
}

M.IdMappingTableInputSource = {
    type = "structure",
    members = {
        idNamespaceAssociationId = {
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

M.IdMappingTableSchemaTypeProperties = {
    type = "structure",
    members = {
        idMappingTableInputSource = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaTypeProperties = {
    type = "union",
    members = {
        idMappingTable = {
            type = "structure",
        },
    },
}

M.SelectedAnalysisMethod = {
    DIRECT_QUERY = "DIRECT_QUERY",
    DIRECT_JOB = "DIRECT_JOB",
}

M.SchemaType = {
    TABLE = "TABLE",
    ID_MAPPING_TABLE = "ID_MAPPING_TABLE",
}

M.Schema = {
    type = "structure",
    members = {
        columns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        partitionKeys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        analysisRuleTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        analysisMethod = {
            type = "string",
        },
        selectedAnalysisMethods = {
            type = "list",
            member_type = "string",
        },
        creatorAccountId = {
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
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
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
        schemaStatusDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
        },
        schemaTypeProperties = {
            type = "union",
        },
    },
}

M.BatchGetSchemaOutput = {
    type = "structure",
    members = {
        schemas = {
            type = "list",
            member_type = "structure",
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
    },
}

M.SchemaAnalysisRuleRequest = {
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
    },
}

M.BatchGetSchemaAnalysisRuleInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        schemaAnalysisRuleRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSchemaAnalysisRuleError = {
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
        code = {
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

M.BatchGetSchemaAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRules = {
            type = "list",
            member_type = "structure",
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
    },
}

M.MemberAbility = {
    CAN_QUERY = "CAN_QUERY",
    CAN_RECEIVE_RESULTS = "CAN_RECEIVE_RESULTS",
    CAN_RUN_JOB = "CAN_RUN_JOB",
}

M.CustomMLMemberAbility = {
    CAN_RECEIVE_MODEL_OUTPUT = "CAN_RECEIVE_MODEL_OUTPUT",
    CAN_RECEIVE_INFERENCE_OUTPUT = "CAN_RECEIVE_INFERENCE_OUTPUT",
}

M.MLMemberAbilities = {
    type = "structure",
    members = {
        customMLMemberAbilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobComputePaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelInferencePaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelTrainingPaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SyntheticDataGenerationPaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.MLPaymentConfig = {
    type = "structure",
    members = {
        modelTraining = {
            type = "structure",
        },
        modelInference = {
            type = "structure",
        },
        syntheticDataGeneration = {
            type = "structure",
        },
    },
}

M.QueryComputePaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.PaymentConfiguration = {
    type = "structure",
    members = {
        queryCompute = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        machineLearning = {
            type = "structure",
        },
        jobCompute = {
            type = "structure",
        },
    },
}

M.DataEncryptionMetadata = {
    type = "structure",
    members = {
        allowCleartext = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        allowDuplicates = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        allowJoinsOnColumnsWithDifferentNames = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        preserveNulls = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CollaborationJobLogStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MemberSpecification = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberAbilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        mlMemberAbilities = {
            type = "structure",
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        paymentConfiguration = {
            type = "structure",
        },
    },
}

M.CollaborationQueryLogStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateCollaborationInput = {
    type = "structure",
    members = {
        members = {
            type = "list",
            member_type = "structure",
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
            traits = {
                required = true,
            },
        },
        creatorMemberAbilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        creatorMLMemberAbilities = {
            type = "structure",
        },
        creatorDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataEncryptionMetadata = {
            type = "structure",
        },
        queryLogStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobLogStatus = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        creatorPaymentConfiguration = {
            type = "structure",
        },
        analyticsEngine = {
            type = "string",
        },
        autoApprovedChangeRequestTypes = {
            type = "list",
            member_type = "string",
        },
        allowedResultRegions = {
            type = "list",
            member_type = "string",
        },
        isMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.MemberStatus = {
    INVITED = "INVITED",
    ACTIVE = "ACTIVE",
    LEFT = "LEFT",
    REMOVED = "REMOVED",
}

M.Collaboration = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        memberStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
        },
        membershipArn = {
            type = "string",
        },
        dataEncryptionMetadata = {
            type = "structure",
        },
        queryLogStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobLogStatus = {
            type = "string",
        },
        analyticsEngine = {
            type = "string",
        },
        autoApprovedChangeTypes = {
            type = "list",
            member_type = "string",
        },
        allowedResultRegions = {
            type = "list",
            member_type = "string",
        },
        isMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateCollaborationOutput = {
    type = "structure",
    members = {
        collaboration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CollaborationChangeSpecification = {
    type = "structure",
    members = {
        autoApprovedChangeTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MemberChangeSpecification = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberAbilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
    },
}

M.ChangeSpecification = {
    type = "union",
    members = {
        member = {
            type = "structure",
        },
        collaboration = {
            type = "structure",
        },
    },
}

M.ChangeSpecificationType = {
    MEMBER = "MEMBER",
    COLLABORATION = "COLLABORATION",
}

M.ChangeInput = {
    type = "structure",
    members = {
        specificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specification = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCollaborationChangeRequestInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeType = {
    ADD_MEMBER = "ADD_MEMBER",
    GRANT_RECEIVE_RESULTS_ABILITY = "GRANT_RECEIVE_RESULTS_ABILITY",
    REVOKE_RECEIVE_RESULTS_ABILITY = "REVOKE_RECEIVE_RESULTS_ABILITY",
    EDIT_AUTO_APPROVED_CHANGE_TYPES = "EDIT_AUTO_APPROVED_CHANGE_TYPES",
}

M.Change = {
    type = "structure",
    members = {
        specificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specification = {
            type = "union",
            traits = {
                required = true,
            },
        },
        types = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeRequestStatus = {
    PENDING = "PENDING",
    APPROVED = "APPROVED",
    CANCELLED = "CANCELLED",
    DENIED = "DENIED",
    COMMITTED = "COMMITTED",
}

M.CollaborationChangeRequest = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
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
        isAutoApproved = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        changes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        approvals = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CreateCollaborationChangeRequestOutput = {
    type = "structure",
    members = {
        collaborationChangeRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCollaborationInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCollaborationOutput = {
    type = "structure",
}

M.DeleteMemberInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMemberOutput = {
    type = "structure",
}

M.GetCollaborationInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCollaborationOutput = {
    type = "structure",
    members = {
        collaboration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCollaborationAnalysisTemplateInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisTemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCollaborationAnalysisTemplateOutput = {
    type = "structure",
    members = {
        collaborationAnalysisTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCollaborationChangeRequestInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changeRequestIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCollaborationChangeRequestOutput = {
    type = "structure",
    members = {
        collaborationChangeRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCollaborationConfiguredAudienceModelAssociationInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredAudienceModelAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CollaborationConfiguredAudienceModelAssociation = {
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
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredAudienceModelArn = {
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
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCollaborationConfiguredAudienceModelAssociationOutput = {
    type = "structure",
    members = {
        collaborationConfiguredAudienceModelAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCollaborationIdNamespaceAssociationInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        idNamespaceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IdMappingConfig = {
    type = "structure",
    members = {
        allowUseAsDimensionColumn = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.IdNamespaceAssociationInputReferenceConfig = {
    type = "structure",
    members = {
        inputReferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        manageResourcePolicies = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.IdNamespaceAssociationInputReferenceProperties = {
    type = "structure",
    members = {
        idNamespaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idMappingWorkflowsSupported = {
            type = "list",
            member_type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.CollaborationIdNamespaceAssociation = {
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
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
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
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        inputReferenceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        inputReferenceProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        idMappingConfig = {
            type = "structure",
        },
    },
}

M.GetCollaborationIdNamespaceAssociationOutput = {
    type = "structure",
    members = {
        collaborationIdNamespaceAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCollaborationPrivacyBudgetTemplateInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        privacyBudgetTemplateIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PrivacyBudgetTemplateAutoRefresh = {
    CALENDAR_MONTH = "CALENDAR_MONTH",
    NONE = "NONE",
}

M.DifferentialPrivacyTemplateParametersOutput = {
    type = "structure",
    members = {
        epsilon = {
            type = "number",
            traits = {
                required = true,
            },
        },
        usersNoisePerQuery = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyBudgetTemplateParametersOutput = {
    type = "union",
    members = {
        differentialPrivacy = {
            type = "structure",
        },
        accessBudget = {
            type = "structure",
        },
    },
}

M.PrivacyBudgetType = {
    DIFFERENTIAL_PRIVACY = "DIFFERENTIAL_PRIVACY",
    ACCESS_BUDGET = "ACCESS_BUDGET",
}

M.CollaborationPrivacyBudgetTemplate = {
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
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoRefresh = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCollaborationPrivacyBudgetTemplateOutput = {
    type = "structure",
    members = {
        collaborationPrivacyBudgetTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSchemaInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSchemaOutput = {
    type = "structure",
    members = {
        schema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSchemaAnalysisRuleInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSchemaAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationAnalysisTemplatesInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
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

M.CollaborationAnalysisTemplateSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        isSyntheticData = {
            type = "boolean",
        },
    },
}

M.ListCollaborationAnalysisTemplatesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationAnalysisTemplateSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationChangeRequestsInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
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

M.CollaborationChangeRequestSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
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
        isAutoApproved = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        changes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        approvals = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ListCollaborationChangeRequestsOutput = {
    type = "structure",
    members = {
        collaborationChangeRequestSummaries = {
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

M.ListCollaborationConfiguredAudienceModelAssociationsInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
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

M.CollaborationConfiguredAudienceModelAssociationSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
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

M.ListCollaborationConfiguredAudienceModelAssociationsOutput = {
    type = "structure",
    members = {
        collaborationConfiguredAudienceModelAssociationSummaries = {
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

M.ListCollaborationIdNamespaceAssociationsInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
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

M.IdNamespaceAssociationInputReferencePropertiesSummary = {
    type = "structure",
    members = {
        idNamespaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CollaborationIdNamespaceAssociationSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
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
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputReferenceConfig = {
            type = "structure",
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
        inputReferenceProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationIdNamespaceAssociationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationIdNamespaceAssociationSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationPrivacyBudgetsInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                http_query = "privacyBudgetType",
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
        accessBudgetResourceArn = {
            type = "string",
            traits = {
                http_query = "accessBudgetResourceArn",
            },
        },
    },
}

M.DifferentialPrivacyAggregationType = {
    AVG = "AVG",
    COUNT = "COUNT",
    COUNT_DISTINCT = "COUNT_DISTINCT",
    SUM = "SUM",
    STDDEV = "STDDEV",
}

M.DifferentialPrivacyPrivacyBudgetAggregation = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        remainingCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyPrivacyBudget = {
    type = "structure",
    members = {
        aggregations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        epsilon = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyBudget = {
    type = "union",
    members = {
        differentialPrivacy = {
            type = "structure",
        },
        accessBudget = {
            type = "structure",
        },
    },
}

M.CollaborationPrivacyBudgetSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyBudgetTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyBudgetTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationPrivacyBudgetsOutput = {
    type = "structure",
    members = {
        collaborationPrivacyBudgetSummaries = {
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

M.ListCollaborationPrivacyBudgetTemplatesInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
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

M.CollaborationPrivacyBudgetTemplateSummary = {
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
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationPrivacyBudgetTemplatesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationPrivacyBudgetTemplateSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterableMemberStatus = {
    INVITED = "INVITED",
    ACTIVE = "ACTIVE",
}

M.ListCollaborationsInput = {
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
        memberStatus = {
            type = "string",
            traits = {
                http_query = "memberStatus",
            },
        },
    },
}

M.CollaborationSummary = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        memberStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
        },
        membershipArn = {
            type = "string",
        },
        analyticsEngine = {
            type = "string",
        },
    },
}

M.ListCollaborationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
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

M.MemberSummary = {
    type = "structure",
    members = {
        accountId = {
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
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        abilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        mlAbilities = {
            type = "structure",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
        },
        membershipArn = {
            type = "string",
        },
        paymentConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        memberSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSchemasInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        schemaType = {
            type = "string",
            traits = {
                http_query = "schemaType",
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

M.SchemaSummary = {
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
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        analysisRuleTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        analysisMethod = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        selectedAnalysisMethods = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListSchemasOutput = {
    type = "structure",
    members = {
        schemaSummaries = {
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

M.UpdateCollaborationInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        analyticsEngine = {
            type = "string",
        },
    },
}

M.UpdateCollaborationOutput = {
    type = "structure",
    members = {
        collaboration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeRequestAction = {
    APPROVE = "APPROVE",
    DENY = "DENY",
    CANCEL = "CANCEL",
    COMMIT = "COMMIT",
}

M.UpdateCollaborationChangeRequestInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changeRequestIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCollaborationChangeRequestOutput = {
    type = "structure",
    members = {
        collaborationChangeRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredAudienceModelAssociationInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredAudienceModelAssociationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        manageResourcePolicies = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ConfiguredAudienceModelAssociation = {
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
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
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
        manageResourcePolicies = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredAudienceModelAssociationOutput = {
    type = "structure",
    members = {
        configuredAudienceModelAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfiguredAudienceModelAssociationInput = {
    type = "structure",
    members = {
        configuredAudienceModelAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredAudienceModelAssociationOutput = {
    type = "structure",
}

M.GetConfiguredAudienceModelAssociationInput = {
    type = "structure",
    members = {
        configuredAudienceModelAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredAudienceModelAssociationOutput = {
    type = "structure",
    members = {
        configuredAudienceModelAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConfiguredAudienceModelAssociationsInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
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

M.ConfiguredAudienceModelAssociationSummary = {
    type = "structure",
    members = {
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredAudienceModelArn = {
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

M.ListConfiguredAudienceModelAssociationsOutput = {
    type = "structure",
    members = {
        configuredAudienceModelAssociationSummaries = {
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

M.UpdateConfiguredAudienceModelAssociationInput = {
    type = "structure",
    members = {
        configuredAudienceModelAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.UpdateConfiguredAudienceModelAssociationOutput = {
    type = "structure",
    members = {
        configuredAudienceModelAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredTableAssociationInput = {
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
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredTableIdentifier = {
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConfiguredTableAssociationAnalysisRuleType = {
    AGGREGATION = "AGGREGATION",
    LIST = "LIST",
    CUSTOM = "CUSTOM",
}

M.ConfiguredTableAssociation = {
    type = "structure",
    members = {
        arn = {
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
        configuredTableId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        analysisRuleTypes = {
            type = "list",
            member_type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredTableAssociationOutput = {
    type = "structure",
    members = {
        configuredTableAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredTableAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        analysisRulePolicy = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfiguredTableAssociationAnalysisRule = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredTableAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredTableAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "union",
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredTableAssociationAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfiguredTableAssociationInput = {
    type = "structure",
    members = {
        configuredTableAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredTableAssociationOutput = {
    type = "structure",
}

M.DeleteConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredTableAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredTableAssociationAnalysisRuleOutput = {
    type = "structure",
}

M.GetConfiguredTableAssociationInput = {
    type = "structure",
    members = {
        configuredTableAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredTableAssociationOutput = {
    type = "structure",
    members = {
        configuredTableAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredTableAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredTableAssociationAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConfiguredTableAssociationsInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
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

M.ConfiguredTableAssociationSummary = {
    type = "structure",
    members = {
        configuredTableId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
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
        analysisRuleTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListConfiguredTableAssociationsOutput = {
    type = "structure",
    members = {
        configuredTableAssociationSummaries = {
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

M.UpdateConfiguredTableAssociationInput = {
    type = "structure",
    members = {
        configuredTableAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateConfiguredTableAssociationOutput = {
    type = "structure",
    members = {
        configuredTableAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredTableAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRulePolicy = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfiguredTableAssociationAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GlueTableReference = {
    type = "structure",
    members = {
        region = {
            type = "string",
        },
        tableName = {
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
    },
}

M.SnowflakeTableSchemaV1 = {
    type = "structure",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        columnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnowflakeTableSchema = {
    type = "union",
    members = {
        v1 = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SnowflakeTableReference = {
    type = "structure",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountIdentifier = {
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
        schemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableSchema = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.TableReference = {
    type = "union",
    members = {
        glue = {
            type = "structure",
        },
        snowflake = {
            type = "structure",
        },
        athena = {
            type = "structure",
        },
    },
}

M.CreateConfiguredTableInput = {
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
        tableReference = {
            type = "union",
            traits = {
                required = true,
            },
        },
        allowedColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        analysisMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        selectedAnalysisMethods = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConfiguredTableAnalysisRuleType = {
    AGGREGATION = "AGGREGATION",
    LIST = "LIST",
    CUSTOM = "CUSTOM",
}

M.ConfiguredTable = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tableReference = {
            type = "union",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        analysisRuleTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        analysisMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedColumns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        selectedAnalysisMethods = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateConfiguredTableOutput = {
    type = "structure",
    members = {
        configuredTable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfiguredTableAnalysisRulePolicyV1 = {
    type = "union",
    members = {
        list = {
            type = "structure",
        },
        aggregation = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
    },
}

M.ConfiguredTableAnalysisRulePolicy = {
    type = "union",
    members = {
        v1 = {
            type = "union",
        },
    },
}

M.CreateConfiguredTableAnalysisRuleInput = {
    type = "structure",
    members = {
        configuredTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        analysisRulePolicy = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfiguredTableAnalysisRule = {
    type = "structure",
    members = {
        configuredTableId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "union",
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredTableAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfiguredTableInput = {
    type = "structure",
    members = {
        configuredTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredTableOutput = {
    type = "structure",
}

M.DeleteConfiguredTableAnalysisRuleInput = {
    type = "structure",
    members = {
        configuredTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredTableAnalysisRuleOutput = {
    type = "structure",
}

M.GetConfiguredTableInput = {
    type = "structure",
    members = {
        configuredTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredTableOutput = {
    type = "structure",
    members = {
        configuredTable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfiguredTableAnalysisRuleInput = {
    type = "structure",
    members = {
        configuredTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredTableAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConfiguredTablesInput = {
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

M.ConfiguredTableSummary = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        analysisRuleTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        analysisMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        selectedAnalysisMethods = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListConfiguredTablesOutput = {
    type = "structure",
    members = {
        configuredTableSummaries = {
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

M.UpdateConfiguredTableInput = {
    type = "structure",
    members = {
        configuredTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tableReference = {
            type = "union",
        },
        allowedColumns = {
            type = "list",
            member_type = "string",
        },
        analysisMethod = {
            type = "string",
        },
        selectedAnalysisMethods = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateConfiguredTableOutput = {
    type = "structure",
    members = {
        configuredTable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfiguredTableAnalysisRuleInput = {
    type = "structure",
    members = {
        configuredTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRuleType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisRulePolicy = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfiguredTableAnalysisRuleOutput = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IdMappingTableInputReferenceConfig = {
    type = "structure",
    members = {
        inputReferenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        manageResourcePolicies = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIdMappingTableInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
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
        inputReferenceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.IdMappingTableInputReferenceProperties = {
    type = "structure",
    members = {
        idMappingTableInputSource = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IdMappingTable = {
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
        inputReferenceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        inputReferenceProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.CreateIdMappingTableOutput = {
    type = "structure",
    members = {
        idMappingTable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdMappingTableInput = {
    type = "structure",
    members = {
        idMappingTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIdMappingTableOutput = {
    type = "structure",
}

M.GetIdMappingTableInput = {
    type = "structure",
    members = {
        idMappingTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIdMappingTableOutput = {
    type = "structure",
    members = {
        idMappingTable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIdMappingTablesInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
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

M.IdMappingTableSummary = {
    type = "structure",
    members = {
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
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
        description = {
            type = "string",
        },
        inputReferenceConfig = {
            type = "structure",
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
    },
}

M.ListIdMappingTablesOutput = {
    type = "structure",
    members = {
        idMappingTableSummaries = {
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

M.JobType = {
    BATCH = "BATCH",
    INCREMENTAL = "INCREMENTAL",
    DELETE_ONLY = "DELETE_ONLY",
}

M.PopulateIdMappingTableInput = {
    type = "structure",
    members = {
        idMappingTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobType = {
            type = "string",
        },
    },
}

M.PopulateIdMappingTableOutput = {
    type = "structure",
    members = {
        idMappingJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIdMappingTableInput = {
    type = "structure",
    members = {
        idMappingTableIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.UpdateIdMappingTableOutput = {
    type = "structure",
    members = {
        idMappingTable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIdNamespaceAssociationInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inputReferenceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        idMappingConfig = {
            type = "structure",
        },
    },
}

M.IdNamespaceAssociation = {
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
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        inputReferenceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        inputReferenceProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        idMappingConfig = {
            type = "structure",
        },
    },
}

M.CreateIdNamespaceAssociationOutput = {
    type = "structure",
    members = {
        idNamespaceAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdNamespaceAssociationInput = {
    type = "structure",
    members = {
        idNamespaceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIdNamespaceAssociationOutput = {
    type = "structure",
}

M.GetIdNamespaceAssociationInput = {
    type = "structure",
    members = {
        idNamespaceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIdNamespaceAssociationOutput = {
    type = "structure",
    members = {
        idNamespaceAssociation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIdNamespaceAssociationsInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
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

M.IdNamespaceAssociationSummary = {
    type = "structure",
    members = {
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
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
        inputReferenceConfig = {
            type = "structure",
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
        inputReferenceProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIdNamespaceAssociationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        idNamespaceAssociationSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIdNamespaceAssociationInput = {
    type = "structure",
    members = {
        idNamespaceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        idMappingConfig = {
            type = "structure",
        },
    },
}

M.UpdateIdNamespaceAssociationOutput = {
    type = "structure",
    members = {
        idNamespaceAssociation = {
            type = "structure",
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
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobS3OutputConfigurationInput = {
    type = "structure",
    members = {
        bucket = {
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

M.MembershipProtectedJobOutputConfiguration = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
    },
}

M.MembershipProtectedJobResultConfiguration = {
    type = "structure",
    members = {
        outputConfiguration = {
            type = "union",
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
    },
}

M.ResultFormat = {
    CSV = "CSV",
    PARQUET = "PARQUET",
}

M.ProtectedQueryS3OutputConfiguration = {
    type = "structure",
    members = {
        resultFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyPrefix = {
            type = "string",
        },
        singleFileOutput = {
            type = "boolean",
        },
    },
}

M.MembershipProtectedQueryOutputConfiguration = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
    },
}

M.MembershipProtectedQueryResultConfiguration = {
    type = "structure",
    members = {
        outputConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
    },
}

M.MembershipJobLogStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MembershipJobComputePaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipModelInferencePaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipModelTrainingPaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipSyntheticDataGenerationPaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipMLPaymentConfig = {
    type = "structure",
    members = {
        modelTraining = {
            type = "structure",
        },
        modelInference = {
            type = "structure",
        },
        syntheticDataGeneration = {
            type = "structure",
        },
    },
}

M.MembershipQueryComputePaymentConfig = {
    type = "structure",
    members = {
        isResponsible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipPaymentConfiguration = {
    type = "structure",
    members = {
        queryCompute = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        machineLearning = {
            type = "structure",
        },
        jobCompute = {
            type = "structure",
        },
    },
}

M.MembershipQueryLogStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateMembershipInput = {
    type = "structure",
    members = {
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryLogStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobLogStatus = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        defaultResultConfiguration = {
            type = "structure",
        },
        defaultJobResultConfiguration = {
            type = "structure",
        },
        paymentConfiguration = {
            type = "structure",
        },
        isMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.MembershipStatus = {
    ACTIVE = "ACTIVE",
    REMOVED = "REMOVED",
    COLLABORATION_DELETED = "COLLABORATION_DELETED",
}

M.Membership = {
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
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationCreatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationCreatorDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
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
        memberAbilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        mlMemberAbilities = {
            type = "structure",
        },
        queryLogStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobLogStatus = {
            type = "string",
        },
        defaultResultConfiguration = {
            type = "structure",
        },
        defaultJobResultConfiguration = {
            type = "structure",
        },
        paymentConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        isMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateMembershipOutput = {
    type = "structure",
    members = {
        membership = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMembershipInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMembershipOutput = {
    type = "structure",
}

M.GetMembershipInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMembershipOutput = {
    type = "structure",
    members = {
        membership = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProtectedJobInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        protectedJobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkerComputeConfigurationProperties = {
    type = "union",
    members = {
        spark = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ProtectedJobWorkerComputeType = {
    CR1X = "CR.1X",
    CR4X = "CR.4X",
}

M.ProtectedJobWorkerComputeConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        number = {
            type = "number",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "union",
        },
    },
}

M.ProtectedJobComputeConfiguration = {
    type = "union",
    members = {
        worker = {
            type = "structure",
        },
    },
}

M.ProtectedJobError = {
    type = "structure",
    members = {
        message = {
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
    },
}

M.ProtectedJobParameters = {
    type = "structure",
    members = {
        analysisTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ProtectedJobSingleMemberOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobS3Output = {
    type = "structure",
    members = {
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobOutput = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
        memberList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProtectedJobResult = {
    type = "structure",
    members = {
        output = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobMemberOutputConfigurationOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobS3OutputConfigurationOutput = {
    type = "structure",
    members = {
        bucket = {
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

M.ProtectedJobOutputConfigurationOutput = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
        member = {
            type = "structure",
        },
    },
}

M.ProtectedJobResultConfigurationOutput = {
    type = "structure",
    members = {
        outputConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BilledJobResourceUtilization = {
    type = "structure",
    members = {
        units = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobStatistics = {
    type = "structure",
    members = {
        totalDurationInMillis = {
            type = "number",
        },
        billedResourceUtilization = {
            type = "structure",
        },
    },
}

M.ProtectedJobStatus = {
    SUBMITTED = "SUBMITTED",
    STARTED = "STARTED",
    CANCELLED = "CANCELLED",
    CANCELLING = "CANCELLING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
}

M.ProtectedJob = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        jobParameters = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resultConfiguration = {
            type = "structure",
        },
        statistics = {
            type = "structure",
        },
        result = {
            type = "structure",
        },
        error = {
            type = "structure",
        },
        computeConfiguration = {
            type = "union",
        },
    },
}

M.GetProtectedJobOutput = {
    type = "structure",
    members = {
        protectedJob = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProtectedQueryInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        protectedQueryIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkerComputeType = {
    CR1X = "CR.1X",
    CR4X = "CR.4X",
}

M.WorkerComputeConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        number = {
            type = "number",
        },
        properties = {
            type = "union",
        },
    },
}

M.ComputeConfiguration = {
    type = "union",
    members = {
        worker = {
            type = "structure",
        },
    },
}

M.DifferentialPrivacySensitivityParameters = {
    type = "structure",
    members = {
        aggregationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userContributionLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        minColumnValue = {
            type = "number",
        },
        maxColumnValue = {
            type = "number",
        },
    },
}

M.DifferentialPrivacyParameters = {
    type = "structure",
    members = {
        sensitivityParameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryError = {
    type = "structure",
    members = {
        message = {
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
    },
}

M.ProtectedQuerySingleMemberOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryS3Output = {
    type = "structure",
    members = {
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryDistributeOutput = {
    type = "structure",
    members = {
        s3 = {
            type = "structure",
        },
        memberList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProtectedQueryOutput = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
        memberList = {
            type = "list",
            member_type = "structure",
        },
        distribute = {
            type = "structure",
        },
    },
}

M.ProtectedQueryResult = {
    type = "structure",
    members = {
        output = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryMemberOutputConfiguration = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryDistributeOutputConfigurationLocation = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
        member = {
            type = "structure",
        },
    },
}

M.ProtectedQueryDistributeOutputConfiguration = {
    type = "structure",
    members = {
        locations = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryOutputConfiguration = {
    type = "union",
    members = {
        s3 = {
            type = "structure",
        },
        member = {
            type = "structure",
        },
        distribute = {
            type = "structure",
        },
    },
}

M.ProtectedQueryResultConfiguration = {
    type = "structure",
    members = {
        outputConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQuerySQLParameters = {
    type = "structure",
    members = {
        queryString = {
            type = "string",
        },
        analysisTemplateArn = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BilledResourceUtilization = {
    type = "structure",
    members = {
        units = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryStatistics = {
    type = "structure",
    members = {
        totalDurationInMillis = {
            type = "number",
        },
        billedResourceUtilization = {
            type = "structure",
        },
    },
}

M.ProtectedQueryStatus = {
    SUBMITTED = "SUBMITTED",
    STARTED = "STARTED",
    CANCELLED = "CANCELLED",
    CANCELLING = "CANCELLING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
    TIMED_OUT = "TIMED_OUT",
}

M.ProtectedQuery = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        sqlParameters = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resultConfiguration = {
            type = "structure",
        },
        statistics = {
            type = "structure",
        },
        result = {
            type = "structure",
        },
        error = {
            type = "structure",
        },
        differentialPrivacy = {
            type = "structure",
        },
        computeConfiguration = {
            type = "union",
        },
    },
}

M.GetProtectedQueryOutput = {
    type = "structure",
    members = {
        protectedQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMembershipsInput = {
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
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.MembershipSummary = {
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
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationCreatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationCreatorDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
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
        memberAbilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        mlMemberAbilities = {
            type = "structure",
        },
        paymentConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMembershipsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        membershipSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPrivacyBudgetsInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                http_query = "privacyBudgetType",
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
        accessBudgetResourceArn = {
            type = "string",
            traits = {
                http_query = "accessBudgetResourceArn",
            },
        },
    },
}

M.PrivacyBudgetSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyBudgetTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyBudgetTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
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
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPrivacyBudgetsOutput = {
    type = "structure",
    members = {
        privacyBudgetSummaries = {
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

M.ListProtectedJobsInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
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

M.ProtectedJobAnalysisType = {
    DIRECT_ANALYSIS = "DIRECT_ANALYSIS",
}

M.ProtectedJobDirectAnalysisConfigurationDetails = {
    type = "structure",
    members = {
        receiverAccountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ProtectedJobConfigurationDetails = {
    type = "union",
    members = {
        directAnalysisConfigurationDetails = {
            type = "structure",
        },
    },
}

M.ProtectedJobReceiverConfiguration = {
    type = "structure",
    members = {
        analysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationDetails = {
            type = "union",
        },
    },
}

M.ProtectedJobSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
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
        receiverConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProtectedJobsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        protectedJobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProtectedQueriesInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
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

M.DirectAnalysisConfigurationDetails = {
    type = "structure",
    members = {
        receiverAccountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConfigurationDetails = {
    type = "union",
    members = {
        directAnalysisConfigurationDetails = {
            type = "structure",
        },
    },
}

M.ReceiverConfiguration = {
    type = "structure",
    members = {
        analysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationDetails = {
            type = "union",
        },
    },
}

M.ProtectedQuerySummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
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
        receiverConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProtectedQueriesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        protectedQueries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyPreviewParametersInput = {
    type = "structure",
    members = {
        epsilon = {
            type = "number",
            traits = {
                required = true,
            },
        },
        usersNoisePerQuery = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewPrivacyImpactParametersInput = {
    type = "union",
    members = {
        differentialPrivacy = {
            type = "structure",
        },
    },
}

M.PreviewPrivacyImpactInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyPreviewAggregation = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyPrivacyImpact = {
    type = "structure",
    members = {
        aggregations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyImpact = {
    type = "union",
    members = {
        differentialPrivacy = {
            type = "structure",
        },
    },
}

M.PreviewPrivacyImpactOutput = {
    type = "structure",
    members = {
        privacyImpact = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobMemberOutputConfigurationInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobOutputConfigurationInput = {
    type = "union",
    members = {
        member = {
            type = "structure",
        },
    },
}

M.ProtectedJobResultConfigurationInput = {
    type = "structure",
    members = {
        outputConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobType = {
    PYSPARK = "PYSPARK",
}

M.StartProtectedJobInput = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        resultConfiguration = {
            type = "structure",
        },
        computeConfiguration = {
            type = "union",
        },
    },
}

M.StartProtectedJobOutput = {
    type = "structure",
    members = {
        protectedJob = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryType = {
    SQL = "SQL",
}

M.StartProtectedQueryInput = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sqlParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        resultConfiguration = {
            type = "structure",
        },
        computeConfiguration = {
            type = "union",
        },
    },
}

M.StartProtectedQueryOutput = {
    type = "structure",
    members = {
        protectedQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMembershipInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryLogStatus = {
            type = "string",
        },
        jobLogStatus = {
            type = "string",
        },
        defaultResultConfiguration = {
            type = "structure",
        },
        defaultJobResultConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateMembershipOutput = {
    type = "structure",
    members = {
        membership = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetProtectedJobStatus = {
    CANCELLED = "CANCELLED",
}

M.UpdateProtectedJobInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        protectedJobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProtectedJobOutput = {
    type = "structure",
    members = {
        protectedJob = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetProtectedQueryStatus = {
    CANCELLED = "CANCELLED",
}

M.UpdateProtectedQueryInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        protectedQueryIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProtectedQueryOutput = {
    type = "structure",
    members = {
        protectedQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyTemplateParametersInput = {
    type = "structure",
    members = {
        epsilon = {
            type = "number",
            traits = {
                required = true,
            },
        },
        usersNoisePerQuery = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyBudgetTemplateParametersInput = {
    type = "union",
    members = {
        differentialPrivacy = {
            type = "structure",
        },
        accessBudget = {
            type = "structure",
        },
    },
}

M.CreatePrivacyBudgetTemplateInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        autoRefresh = {
            type = "string",
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "union",
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

M.PrivacyBudgetTemplate = {
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
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoRefresh = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePrivacyBudgetTemplateOutput = {
    type = "structure",
    members = {
        privacyBudgetTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePrivacyBudgetTemplateInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        privacyBudgetTemplateIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePrivacyBudgetTemplateOutput = {
    type = "structure",
}

M.GetPrivacyBudgetTemplateInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        privacyBudgetTemplateIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPrivacyBudgetTemplateOutput = {
    type = "structure",
    members = {
        privacyBudgetTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPrivacyBudgetTemplatesInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
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

M.PrivacyBudgetTemplateSummary = {
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
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPrivacyBudgetTemplatesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        privacyBudgetTemplateSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyTemplateUpdateParameters = {
    type = "structure",
    members = {
        epsilon = {
            type = "number",
        },
        usersNoisePerQuery = {
            type = "number",
        },
    },
}

M.PrivacyBudgetTemplateUpdateParameters = {
    type = "union",
    members = {
        differentialPrivacy = {
            type = "structure",
        },
        accessBudget = {
            type = "structure",
        },
    },
}

M.UpdatePrivacyBudgetTemplateInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        privacyBudgetTemplateIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        privacyBudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "union",
        },
    },
}

M.UpdatePrivacyBudgetTemplateOutput = {
    type = "structure",
    members = {
        privacyBudgetTemplate = {
            type = "structure",
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

return M
