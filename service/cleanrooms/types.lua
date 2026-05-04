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
    id = "AccessBudgetDetails",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "integer",
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
    id = "AccessBudget",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "list",
            member = M.AccessBudgetDetails,
            traits = {
                required = true,
            },
        },
        aggregateRemainingBudget = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.BudgetParameter = {
    type = "structure",
    id = "BudgetParameter",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "integer",
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
    id = "AccessBudgetsPrivacyTemplateParametersInput",
    members = {
        budgetParameters = {
            type = "list",
            member = M.BudgetParameter,
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
    id = "AccessBudgetsPrivacyTemplateParametersOutput",
    members = {
        budgetParameters = {
            type = "list",
            member = M.BudgetParameter,
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
    id = "AccessBudgetsPrivacyTemplateUpdateParameters",
    members = {
        budgetParameters = {
            type = "list",
            member = M.BudgetParameter,
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
    id = "AccessDeniedException",
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
    id = "AggregateColumn",
    members = {
        columnNames = {
            type = "list",
            member = { type = "string" },
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
    id = "AggregationConstraint",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimum = {
            type = "integer",
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
    id = "AnalysisParameter",
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
    id = "ConfiguredTableAssociationAnalysisRuleAggregation",
    members = {
        allowedResultReceivers = {
            type = "list",
            member = { type = "string" },
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConfiguredTableAssociationAnalysisRuleCustom = {
    type = "structure",
    id = "ConfiguredTableAssociationAnalysisRuleCustom",
    members = {
        allowedResultReceivers = {
            type = "list",
            member = { type = "string" },
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConfiguredTableAssociationAnalysisRuleList = {
    type = "structure",
    id = "ConfiguredTableAssociationAnalysisRuleList",
    members = {
        allowedResultReceivers = {
            type = "list",
            member = { type = "string" },
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConfiguredTableAssociationAnalysisRulePolicyV1 = {
    type = "union",
    id = "ConfiguredTableAssociationAnalysisRulePolicyV1",
    members = {
        list = M.ConfiguredTableAssociationAnalysisRuleList,
        aggregation = M.ConfiguredTableAssociationAnalysisRuleAggregation,
        custom = M.ConfiguredTableAssociationAnalysisRuleCustom,
    },
}

M.ConfiguredTableAssociationAnalysisRulePolicy = {
    type = "union",
    id = "ConfiguredTableAssociationAnalysisRulePolicy",
    members = {
        v1 = M.ConfiguredTableAssociationAnalysisRulePolicyV1,
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
    id = "ConsolidatedPolicyAggregation",
    members = {
        aggregateColumns = {
            type = "list",
            member = M.AggregateColumn,
            traits = {
                required = true,
            },
        },
        joinColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        joinRequired = {
            type = "string",
        },
        allowedJoinOperators = {
            type = "list",
            member = { type = "string" },
        },
        dimensionColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        scalarFunctions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        outputConstraints = {
            type = "list",
            member = M.AggregationConstraint,
            traits = {
                required = true,
            },
        },
        additionalAnalyses = {
            type = "string",
        },
        allowedResultReceivers = {
            type = "list",
            member = { type = "string" },
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DifferentialPrivacyColumn = {
    type = "structure",
    id = "DifferentialPrivacyColumn",
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
    id = "DifferentialPrivacyConfiguration",
    members = {
        columns = {
            type = "list",
            member = M.DifferentialPrivacyColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.ConsolidatedPolicyCustom = {
    type = "structure",
    id = "ConsolidatedPolicyCustom",
    members = {
        allowedAnalyses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedAnalysisProviders = {
            type = "list",
            member = { type = "string" },
        },
        additionalAnalyses = {
            type = "string",
        },
        disallowedOutputColumns = {
            type = "list",
            member = { type = "string" },
        },
        differentialPrivacy = M.DifferentialPrivacyConfiguration,
        allowedResultReceivers = {
            type = "list",
            member = { type = "string" },
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConsolidatedPolicyList = {
    type = "structure",
    id = "ConsolidatedPolicyList",
    members = {
        joinColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedJoinOperators = {
            type = "list",
            member = { type = "string" },
        },
        listColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        additionalAnalyses = {
            type = "string",
        },
        allowedResultReceivers = {
            type = "list",
            member = { type = "string" },
        },
        allowedAdditionalAnalyses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConsolidatedPolicyV1 = {
    type = "union",
    id = "ConsolidatedPolicyV1",
    members = {
        list = M.ConsolidatedPolicyList,
        aggregation = M.ConsolidatedPolicyAggregation,
        custom = M.ConsolidatedPolicyCustom,
    },
}

M.ConsolidatedPolicy = {
    type = "union",
    id = "ConsolidatedPolicy",
    members = {
        v1 = M.ConsolidatedPolicyV1,
    },
}

M.AnalysisRuleAggregation = {
    type = "structure",
    id = "AnalysisRuleAggregation",
    members = {
        aggregateColumns = {
            type = "list",
            member = M.AggregateColumn,
            traits = {
                required = true,
            },
        },
        joinColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        joinRequired = {
            type = "string",
        },
        allowedJoinOperators = {
            type = "list",
            member = { type = "string" },
        },
        dimensionColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        scalarFunctions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        outputConstraints = {
            type = "list",
            member = M.AggregationConstraint,
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
    id = "AnalysisRuleCustom",
    members = {
        allowedAnalyses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedAnalysisProviders = {
            type = "list",
            member = { type = "string" },
        },
        additionalAnalyses = {
            type = "string",
        },
        disallowedOutputColumns = {
            type = "list",
            member = { type = "string" },
        },
        differentialPrivacy = M.DifferentialPrivacyConfiguration,
    },
}

M.QueryConstraintRequireOverlap = {
    type = "structure",
    id = "QueryConstraintRequireOverlap",
    members = {
        columns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QueryConstraint = {
    type = "union",
    id = "QueryConstraint",
    members = {
        requireOverlap = M.QueryConstraintRequireOverlap,
    },
}

M.AnalysisRuleIdMappingTable = {
    type = "structure",
    id = "AnalysisRuleIdMappingTable",
    members = {
        joinColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        queryConstraints = {
            type = "list",
            member = M.QueryConstraint,
            traits = {
                required = true,
            },
        },
        dimensionColumns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AnalysisRuleList = {
    type = "structure",
    id = "AnalysisRuleList",
    members = {
        joinColumns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedJoinOperators = {
            type = "list",
            member = { type = "string" },
        },
        listColumns = {
            type = "list",
            member = { type = "string" },
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
    id = "AnalysisRulePolicyV1",
    members = {
        list = M.AnalysisRuleList,
        aggregation = M.AnalysisRuleAggregation,
        custom = M.AnalysisRuleCustom,
        idMappingTable = M.AnalysisRuleIdMappingTable,
    },
}

M.AnalysisRulePolicy = {
    type = "union",
    id = "AnalysisRulePolicy",
    members = {
        v1 = M.AnalysisRulePolicyV1,
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
    id = "AnalysisRule",
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
        policy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisRulePolicy }),
        collaborationPolicy = M.ConfiguredTableAssociationAnalysisRulePolicy,
        consolidatedPolicy = M.ConsolidatedPolicy,
    },
}

M.AnalysisSchema = {
    type = "structure",
    id = "AnalysisSchema",
    members = {
        referencedTables = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
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
    id = "AnalysisTemplateArtifact",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.AnalysisTemplateArtifacts = {
    type = "structure",
    id = "AnalysisTemplateArtifacts",
    members = {
        entryPoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisTemplateArtifact }),
        additionalArtifacts = {
            type = "list",
            member = M.AnalysisTemplateArtifact,
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
    id = "AnalysisSource",
    members = {
        text = {
            type = "string",
        },
        artifacts = M.AnalysisTemplateArtifacts,
    },
}

M.Hash = {
    type = "structure",
    id = "Hash",
    members = {
        sha256 = {
            type = "string",
        },
    },
}

M.AnalysisTemplateArtifactMetadata = {
    type = "structure",
    id = "AnalysisTemplateArtifactMetadata",
    members = {
        entryPointHash = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Hash }),
        additionalArtifactHashes = {
            type = "list",
            member = M.Hash,
        },
    },
}

M.AnalysisSourceMetadata = {
    type = "union",
    id = "AnalysisSourceMetadata",
    members = {
        artifacts = M.AnalysisTemplateArtifactMetadata,
    },
}

M.ErrorMessageType = {
    DETAILED = "DETAILED",
}

M.ErrorMessageConfiguration = {
    type = "structure",
    id = "ErrorMessageConfiguration",
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
    id = "SyntheticDataColumnProperties",
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
    id = "ColumnClassificationDetails",
    members = {
        columnMapping = {
            type = "list",
            member = M.SyntheticDataColumnProperties,
            traits = {
                required = true,
            },
        },
    },
}

M.MLSyntheticDataParameters = {
    type = "structure",
    id = "MLSyntheticDataParameters",
    members = {
        epsilon = {
            type = "double",
            traits = {
                required = true,
            },
        },
        maxMembershipInferenceAttackScore = {
            type = "double",
            traits = {
                required = true,
            },
        },
        columnClassification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnClassificationDetails }),
    },
}

M.SyntheticDataParameters = {
    type = "union",
    id = "SyntheticDataParameters",
    members = {
        mlSyntheticDataParameters = M.MLSyntheticDataParameters,
    },
}

M.AnalysisTemplateValidationStatusReason = {
    type = "structure",
    id = "AnalysisTemplateValidationStatusReason",
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
    id = "AnalysisTemplateValidationStatusDetail",
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
            member = M.AnalysisTemplateValidationStatusReason,
        },
    },
}

M.AnalysisTemplate = {
    type = "structure",
    id = "AnalysisTemplate",
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
        schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisSchema }),
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisSource }),
        sourceMetadata = M.AnalysisSourceMetadata,
        analysisParameters = {
            type = "list",
            member = M.AnalysisParameter,
        },
        validations = {
            type = "list",
            member = M.AnalysisTemplateValidationStatusDetail,
        },
        errorMessageConfiguration = M.ErrorMessageConfiguration,
        syntheticDataParameters = M.SyntheticDataParameters,
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
    id = "ConflictException",
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
    id = "CreateAnalysisTemplateInput",
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
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisSource }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        analysisParameters = {
            type = "list",
            member = M.AnalysisParameter,
        },
        schema = M.AnalysisSchema,
        errorMessageConfiguration = M.ErrorMessageConfiguration,
        syntheticDataParameters = M.SyntheticDataParameters,
    },
}

M.CreateAnalysisTemplateOutput = {
    type = "structure",
    id = "CreateAnalysisTemplateOutput",
    members = {
        analysisTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisTemplate }),
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
    id = "ServiceQuotaExceededException",
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
            type = "double",
            traits = {
                required = true,
            },
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

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteAnalysisTemplateInput = {
    type = "structure",
    id = "DeleteAnalysisTemplateInput",
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
    id = "DeleteAnalysisTemplateOutput",
}

M.GetAnalysisTemplateInput = {
    type = "structure",
    id = "GetAnalysisTemplateInput",
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
    id = "GetAnalysisTemplateOutput",
    members = {
        analysisTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisTemplate }),
    },
}

M.ListAnalysisTemplatesInput = {
    type = "structure",
    id = "ListAnalysisTemplatesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.AnalysisTemplateSummary = {
    type = "structure",
    id = "AnalysisTemplateSummary",
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
    id = "ListAnalysisTemplatesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        analysisTemplateSummaries = {
            type = "list",
            member = M.AnalysisTemplateSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAnalysisTemplateInput = {
    type = "structure",
    id = "UpdateAnalysisTemplateInput",
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
    id = "UpdateAnalysisTemplateOutput",
    members = {
        analysisTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisTemplate }),
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
    id = "ApprovalStatusDetails",
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
    id = "AthenaTableReference",
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
    id = "BatchGetCollaborationAnalysisTemplateInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CollaborationAnalysisTemplate = {
    type = "structure",
    id = "CollaborationAnalysisTemplate",
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
        schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisSchema }),
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = M.AnalysisSource,
        sourceMetadata = M.AnalysisSourceMetadata,
        analysisParameters = {
            type = "list",
            member = M.AnalysisParameter,
        },
        validations = {
            type = "list",
            member = M.AnalysisTemplateValidationStatusDetail,
        },
        errorMessageConfiguration = M.ErrorMessageConfiguration,
        syntheticDataParameters = M.SyntheticDataParameters,
    },
}

M.BatchGetCollaborationAnalysisTemplateError = {
    type = "structure",
    id = "BatchGetCollaborationAnalysisTemplateError",
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
    id = "BatchGetCollaborationAnalysisTemplateOutput",
    members = {
        collaborationAnalysisTemplates = {
            type = "list",
            member = M.CollaborationAnalysisTemplate,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetCollaborationAnalysisTemplateError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSchemaInput = {
    type = "structure",
    id = "BatchGetSchemaInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSchemaError = {
    type = "structure",
    id = "BatchGetSchemaError",
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
    id = "Column",
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
    id = "SchemaStatusReason",
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
    id = "SchemaStatusDetail",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reasons = {
            type = "list",
            member = M.SchemaStatusReason,
        },
        analysisRuleType = {
            type = "string",
        },
        configurations = {
            type = "list",
            member = { type = "string" },
        },
        analysisType = {
            type = "string",
            traits = {
                default = nil,
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
    id = "IdMappingTableInputSource",
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
    id = "IdMappingTableSchemaTypeProperties",
    members = {
        idMappingTableInputSource = {
            type = "list",
            member = M.IdMappingTableInputSource,
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaTypeProperties = {
    type = "union",
    id = "SchemaTypeProperties",
    members = {
        idMappingTable = M.IdMappingTableSchemaTypeProperties,
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
    id = "Schema",
    members = {
        columns = {
            type = "list",
            member = M.Column,
            traits = {
                required = true,
            },
        },
        partitionKeys = {
            type = "list",
            member = M.Column,
            traits = {
                required = true,
            },
        },
        analysisRuleTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        analysisMethod = {
            type = "string",
        },
        selectedAnalysisMethods = {
            type = "list",
            member = { type = "string" },
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
            member = M.SchemaStatusDetail,
            traits = {
                default = {},
                required = true,
            },
        },
        resourceArn = {
            type = "string",
        },
        schemaTypeProperties = M.SchemaTypeProperties,
    },
}

M.BatchGetSchemaOutput = {
    type = "structure",
    id = "BatchGetSchemaOutput",
    members = {
        schemas = {
            type = "list",
            member = M.Schema,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetSchemaError,
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaAnalysisRuleRequest = {
    type = "structure",
    id = "SchemaAnalysisRuleRequest",
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
    id = "BatchGetSchemaAnalysisRuleInput",
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
            member = M.SchemaAnalysisRuleRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSchemaAnalysisRuleError = {
    type = "structure",
    id = "BatchGetSchemaAnalysisRuleError",
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
    id = "BatchGetSchemaAnalysisRuleOutput",
    members = {
        analysisRules = {
            type = "list",
            member = M.AnalysisRule,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetSchemaAnalysisRuleError,
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
    id = "MLMemberAbilities",
    members = {
        customMLMemberAbilities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.JobComputePaymentConfig = {
    type = "structure",
    id = "JobComputePaymentConfig",
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
    id = "ModelInferencePaymentConfig",
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
    id = "ModelTrainingPaymentConfig",
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
    id = "SyntheticDataGenerationPaymentConfig",
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
    id = "MLPaymentConfig",
    members = {
        modelTraining = M.ModelTrainingPaymentConfig,
        modelInference = M.ModelInferencePaymentConfig,
        syntheticDataGeneration = M.SyntheticDataGenerationPaymentConfig,
    },
}

M.QueryComputePaymentConfig = {
    type = "structure",
    id = "QueryComputePaymentConfig",
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
    id = "PaymentConfiguration",
    members = {
        queryCompute = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryComputePaymentConfig }),
        machineLearning = M.MLPaymentConfig,
        jobCompute = M.JobComputePaymentConfig,
    },
}

M.DataEncryptionMetadata = {
    type = "structure",
    id = "DataEncryptionMetadata",
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
    id = "MemberSpecification",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberAbilities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        mlMemberAbilities = M.MLMemberAbilities,
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        paymentConfiguration = M.PaymentConfiguration,
    },
}

M.CollaborationQueryLogStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateCollaborationInput = {
    type = "structure",
    id = "CreateCollaborationInput",
    members = {
        members = {
            type = "list",
            member = M.MemberSpecification,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        creatorMLMemberAbilities = M.MLMemberAbilities,
        creatorDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataEncryptionMetadata = M.DataEncryptionMetadata,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        creatorPaymentConfiguration = M.PaymentConfiguration,
        analyticsEngine = {
            type = "string",
        },
        autoApprovedChangeRequestTypes = {
            type = "list",
            member = { type = "string" },
        },
        allowedResultRegions = {
            type = "list",
            member = { type = "string" },
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
    id = "Collaboration",
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
        dataEncryptionMetadata = M.DataEncryptionMetadata,
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
            member = { type = "string" },
        },
        allowedResultRegions = {
            type = "list",
            member = { type = "string" },
        },
        isMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateCollaborationOutput = {
    type = "structure",
    id = "CreateCollaborationOutput",
    members = {
        collaboration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Collaboration }),
    },
}

M.CollaborationChangeSpecification = {
    type = "structure",
    id = "CollaborationChangeSpecification",
    members = {
        autoApprovedChangeTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MemberChangeSpecification = {
    type = "structure",
    id = "MemberChangeSpecification",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberAbilities = {
            type = "list",
            member = { type = "string" },
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
    id = "ChangeSpecification",
    members = {
        member = M.MemberChangeSpecification,
        collaboration = M.CollaborationChangeSpecification,
    },
}

M.ChangeSpecificationType = {
    MEMBER = "MEMBER",
    COLLABORATION = "COLLABORATION",
}

M.ChangeInput = {
    type = "structure",
    id = "ChangeInput",
    members = {
        specificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeSpecification }),
    },
}

M.CreateCollaborationChangeRequestInput = {
    type = "structure",
    id = "CreateCollaborationChangeRequestInput",
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
            member = M.ChangeInput,
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
    id = "Change",
    members = {
        specificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeSpecification }),
        types = {
            type = "list",
            member = { type = "string" },
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
    id = "CollaborationChangeRequest",
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
            member = M.Change,
            traits = {
                required = true,
            },
        },
        approvals = {
            type = "map",
            key = { type = "string" },
            value = M.ApprovalStatusDetails,
        },
    },
}

M.CreateCollaborationChangeRequestOutput = {
    type = "structure",
    id = "CreateCollaborationChangeRequestOutput",
    members = {
        collaborationChangeRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollaborationChangeRequest }),
    },
}

M.DeleteCollaborationInput = {
    type = "structure",
    id = "DeleteCollaborationInput",
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
    id = "DeleteCollaborationOutput",
}

M.DeleteMemberInput = {
    type = "structure",
    id = "DeleteMemberInput",
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
    id = "DeleteMemberOutput",
}

M.GetCollaborationInput = {
    type = "structure",
    id = "GetCollaborationInput",
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
    id = "GetCollaborationOutput",
    members = {
        collaboration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Collaboration }),
    },
}

M.GetCollaborationAnalysisTemplateInput = {
    type = "structure",
    id = "GetCollaborationAnalysisTemplateInput",
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
    id = "GetCollaborationAnalysisTemplateOutput",
    members = {
        collaborationAnalysisTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollaborationAnalysisTemplate }),
    },
}

M.GetCollaborationChangeRequestInput = {
    type = "structure",
    id = "GetCollaborationChangeRequestInput",
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
    id = "GetCollaborationChangeRequestOutput",
    members = {
        collaborationChangeRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollaborationChangeRequest }),
    },
}

M.GetCollaborationConfiguredAudienceModelAssociationInput = {
    type = "structure",
    id = "GetCollaborationConfiguredAudienceModelAssociationInput",
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
    id = "CollaborationConfiguredAudienceModelAssociation",
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
    id = "GetCollaborationConfiguredAudienceModelAssociationOutput",
    members = {
        collaborationConfiguredAudienceModelAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollaborationConfiguredAudienceModelAssociation }),
    },
}

M.GetCollaborationIdNamespaceAssociationInput = {
    type = "structure",
    id = "GetCollaborationIdNamespaceAssociationInput",
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
    id = "IdMappingConfig",
    members = {
        allowUseAsDimensionColumn = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.IdNamespaceAssociationInputReferenceConfig = {
    type = "structure",
    id = "IdNamespaceAssociationInputReferenceConfig",
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
    id = "IdNamespaceAssociationInputReferenceProperties",
    members = {
        idNamespaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idMappingWorkflowsSupported = {
            type = "list",
            member = { type = "document" },
            traits = {
                required = true,
            },
        },
    },
}

M.CollaborationIdNamespaceAssociation = {
    type = "structure",
    id = "CollaborationIdNamespaceAssociation",
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
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferenceConfig }),
        inputReferenceProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferenceProperties }),
        idMappingConfig = M.IdMappingConfig,
    },
}

M.GetCollaborationIdNamespaceAssociationOutput = {
    type = "structure",
    id = "GetCollaborationIdNamespaceAssociationOutput",
    members = {
        collaborationIdNamespaceAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollaborationIdNamespaceAssociation }),
    },
}

M.GetCollaborationPrivacyBudgetTemplateInput = {
    type = "structure",
    id = "GetCollaborationPrivacyBudgetTemplateInput",
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
    id = "DifferentialPrivacyTemplateParametersOutput",
    members = {
        epsilon = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        usersNoisePerQuery = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyBudgetTemplateParametersOutput = {
    type = "union",
    id = "PrivacyBudgetTemplateParametersOutput",
    members = {
        differentialPrivacy = M.DifferentialPrivacyTemplateParametersOutput,
        accessBudget = M.AccessBudgetsPrivacyTemplateParametersOutput,
    },
}

M.PrivacyBudgetType = {
    DIFFERENTIAL_PRIVACY = "DIFFERENTIAL_PRIVACY",
    ACCESS_BUDGET = "ACCESS_BUDGET",
}

M.CollaborationPrivacyBudgetTemplate = {
    type = "structure",
    id = "CollaborationPrivacyBudgetTemplate",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudgetTemplateParametersOutput }),
    },
}

M.GetCollaborationPrivacyBudgetTemplateOutput = {
    type = "structure",
    id = "GetCollaborationPrivacyBudgetTemplateOutput",
    members = {
        collaborationPrivacyBudgetTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollaborationPrivacyBudgetTemplate }),
    },
}

M.GetSchemaInput = {
    type = "structure",
    id = "GetSchemaInput",
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
    id = "GetSchemaOutput",
    members = {
        schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schema }),
    },
}

M.GetSchemaAnalysisRuleInput = {
    type = "structure",
    id = "GetSchemaAnalysisRuleInput",
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
    id = "GetSchemaAnalysisRuleOutput",
    members = {
        analysisRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisRule }),
    },
}

M.ListCollaborationAnalysisTemplatesInput = {
    type = "structure",
    id = "ListCollaborationAnalysisTemplatesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CollaborationAnalysisTemplateSummary = {
    type = "structure",
    id = "CollaborationAnalysisTemplateSummary",
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
    id = "ListCollaborationAnalysisTemplatesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationAnalysisTemplateSummaries = {
            type = "list",
            member = M.CollaborationAnalysisTemplateSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationChangeRequestsInput = {
    type = "structure",
    id = "ListCollaborationChangeRequestsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CollaborationChangeRequestSummary = {
    type = "structure",
    id = "CollaborationChangeRequestSummary",
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
            member = M.Change,
            traits = {
                required = true,
            },
        },
        approvals = {
            type = "map",
            key = { type = "string" },
            value = M.ApprovalStatusDetails,
        },
    },
}

M.ListCollaborationChangeRequestsOutput = {
    type = "structure",
    id = "ListCollaborationChangeRequestsOutput",
    members = {
        collaborationChangeRequestSummaries = {
            type = "list",
            member = M.CollaborationChangeRequestSummary,
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
    id = "ListCollaborationConfiguredAudienceModelAssociationsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CollaborationConfiguredAudienceModelAssociationSummary = {
    type = "structure",
    id = "CollaborationConfiguredAudienceModelAssociationSummary",
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
    id = "ListCollaborationConfiguredAudienceModelAssociationsOutput",
    members = {
        collaborationConfiguredAudienceModelAssociationSummaries = {
            type = "list",
            member = M.CollaborationConfiguredAudienceModelAssociationSummary,
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
    id = "ListCollaborationIdNamespaceAssociationsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.IdNamespaceAssociationInputReferencePropertiesSummary = {
    type = "structure",
    id = "IdNamespaceAssociationInputReferencePropertiesSummary",
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
    id = "CollaborationIdNamespaceAssociationSummary",
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
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferenceConfig }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputReferenceProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferencePropertiesSummary }),
    },
}

M.ListCollaborationIdNamespaceAssociationsOutput = {
    type = "structure",
    id = "ListCollaborationIdNamespaceAssociationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationIdNamespaceAssociationSummaries = {
            type = "list",
            member = M.CollaborationIdNamespaceAssociationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationPrivacyBudgetsInput = {
    type = "structure",
    id = "ListCollaborationPrivacyBudgetsInput",
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
    id = "DifferentialPrivacyPrivacyBudgetAggregation",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        remainingCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyPrivacyBudget = {
    type = "structure",
    id = "DifferentialPrivacyPrivacyBudget",
    members = {
        aggregations = {
            type = "list",
            member = M.DifferentialPrivacyPrivacyBudgetAggregation,
            traits = {
                required = true,
            },
        },
        epsilon = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyBudget = {
    type = "union",
    id = "PrivacyBudget",
    members = {
        differentialPrivacy = M.DifferentialPrivacyPrivacyBudget,
        accessBudget = M.AccessBudget,
    },
}

M.CollaborationPrivacyBudgetSummary = {
    type = "structure",
    id = "CollaborationPrivacyBudgetSummary",
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
        budget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudget }),
    },
}

M.ListCollaborationPrivacyBudgetsOutput = {
    type = "structure",
    id = "ListCollaborationPrivacyBudgetsOutput",
    members = {
        collaborationPrivacyBudgetSummaries = {
            type = "list",
            member = M.CollaborationPrivacyBudgetSummary,
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
    id = "ListCollaborationPrivacyBudgetTemplatesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CollaborationPrivacyBudgetTemplateSummary = {
    type = "structure",
    id = "CollaborationPrivacyBudgetTemplateSummary",
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
    id = "ListCollaborationPrivacyBudgetTemplatesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationPrivacyBudgetTemplateSummaries = {
            type = "list",
            member = M.CollaborationPrivacyBudgetTemplateSummary,
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
    id = "ListCollaborationsInput",
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
    id = "CollaborationSummary",
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
    id = "ListCollaborationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationList = {
            type = "list",
            member = M.CollaborationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    id = "ListMembersInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.MemberSummary = {
    type = "structure",
    id = "MemberSummary",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        mlAbilities = M.MLMemberAbilities,
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
        paymentConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PaymentConfiguration }),
    },
}

M.ListMembersOutput = {
    type = "structure",
    id = "ListMembersOutput",
    members = {
        nextToken = {
            type = "string",
        },
        memberSummaries = {
            type = "list",
            member = M.MemberSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListSchemasInput = {
    type = "structure",
    id = "ListSchemasInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SchemaSummary = {
    type = "structure",
    id = "SchemaSummary",
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
            member = { type = "string" },
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
            member = { type = "string" },
        },
    },
}

M.ListSchemasOutput = {
    type = "structure",
    id = "ListSchemasOutput",
    members = {
        schemaSummaries = {
            type = "list",
            member = M.SchemaSummary,
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
    id = "UpdateCollaborationInput",
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
    id = "UpdateCollaborationOutput",
    members = {
        collaboration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Collaboration }),
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
    id = "UpdateCollaborationChangeRequestInput",
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
    id = "UpdateCollaborationChangeRequestOutput",
    members = {
        collaborationChangeRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollaborationChangeRequest }),
    },
}

M.CreateConfiguredAudienceModelAssociationInput = {
    type = "structure",
    id = "CreateConfiguredAudienceModelAssociationInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.ConfiguredAudienceModelAssociation = {
    type = "structure",
    id = "ConfiguredAudienceModelAssociation",
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
    id = "CreateConfiguredAudienceModelAssociationOutput",
    members = {
        configuredAudienceModelAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredAudienceModelAssociation }),
    },
}

M.DeleteConfiguredAudienceModelAssociationInput = {
    type = "structure",
    id = "DeleteConfiguredAudienceModelAssociationInput",
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
    id = "DeleteConfiguredAudienceModelAssociationOutput",
}

M.GetConfiguredAudienceModelAssociationInput = {
    type = "structure",
    id = "GetConfiguredAudienceModelAssociationInput",
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
    id = "GetConfiguredAudienceModelAssociationOutput",
    members = {
        configuredAudienceModelAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredAudienceModelAssociation }),
    },
}

M.ListConfiguredAudienceModelAssociationsInput = {
    type = "structure",
    id = "ListConfiguredAudienceModelAssociationsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ConfiguredAudienceModelAssociationSummary = {
    type = "structure",
    id = "ConfiguredAudienceModelAssociationSummary",
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
    id = "ListConfiguredAudienceModelAssociationsOutput",
    members = {
        configuredAudienceModelAssociationSummaries = {
            type = "list",
            member = M.ConfiguredAudienceModelAssociationSummary,
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
    id = "UpdateConfiguredAudienceModelAssociationInput",
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
    id = "UpdateConfiguredAudienceModelAssociationOutput",
    members = {
        configuredAudienceModelAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredAudienceModelAssociation }),
    },
}

M.CreateConfiguredTableAssociationInput = {
    type = "structure",
    id = "CreateConfiguredTableAssociationInput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "ConfiguredTableAssociation",
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
            member = { type = "string" },
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
    id = "CreateConfiguredTableAssociationOutput",
    members = {
        configuredTableAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociation }),
    },
}

M.CreateConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    id = "CreateConfiguredTableAssociationAnalysisRuleInput",
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
        analysisRulePolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociationAnalysisRulePolicy }),
    },
}

M.ConfiguredTableAssociationAnalysisRule = {
    type = "structure",
    id = "ConfiguredTableAssociationAnalysisRule",
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
        policy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociationAnalysisRulePolicy }),
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
    id = "CreateConfiguredTableAssociationAnalysisRuleOutput",
    members = {
        analysisRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociationAnalysisRule }),
    },
}

M.DeleteConfiguredTableAssociationInput = {
    type = "structure",
    id = "DeleteConfiguredTableAssociationInput",
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
    id = "DeleteConfiguredTableAssociationOutput",
}

M.DeleteConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    id = "DeleteConfiguredTableAssociationAnalysisRuleInput",
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
    id = "DeleteConfiguredTableAssociationAnalysisRuleOutput",
}

M.GetConfiguredTableAssociationInput = {
    type = "structure",
    id = "GetConfiguredTableAssociationInput",
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
    id = "GetConfiguredTableAssociationOutput",
    members = {
        configuredTableAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociation }),
    },
}

M.GetConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    id = "GetConfiguredTableAssociationAnalysisRuleInput",
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
    id = "GetConfiguredTableAssociationAnalysisRuleOutput",
    members = {
        analysisRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociationAnalysisRule }),
    },
}

M.ListConfiguredTableAssociationsInput = {
    type = "structure",
    id = "ListConfiguredTableAssociationsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ConfiguredTableAssociationSummary = {
    type = "structure",
    id = "ConfiguredTableAssociationSummary",
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
            member = { type = "string" },
        },
    },
}

M.ListConfiguredTableAssociationsOutput = {
    type = "structure",
    id = "ListConfiguredTableAssociationsOutput",
    members = {
        configuredTableAssociationSummaries = {
            type = "list",
            member = M.ConfiguredTableAssociationSummary,
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
    id = "UpdateConfiguredTableAssociationInput",
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
    id = "UpdateConfiguredTableAssociationOutput",
    members = {
        configuredTableAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociation }),
    },
}

M.UpdateConfiguredTableAssociationAnalysisRuleInput = {
    type = "structure",
    id = "UpdateConfiguredTableAssociationAnalysisRuleInput",
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
        analysisRulePolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociationAnalysisRulePolicy }),
    },
}

M.UpdateConfiguredTableAssociationAnalysisRuleOutput = {
    type = "structure",
    id = "UpdateConfiguredTableAssociationAnalysisRuleOutput",
    members = {
        analysisRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAssociationAnalysisRule }),
    },
}

M.GlueTableReference = {
    type = "structure",
    id = "GlueTableReference",
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
    id = "SnowflakeTableSchemaV1",
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
    id = "SnowflakeTableSchema",
    members = {
        v1 = {
            type = "list",
            member = M.SnowflakeTableSchemaV1,
        },
    },
}

M.SnowflakeTableReference = {
    type = "structure",
    id = "SnowflakeTableReference",
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
        tableSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnowflakeTableSchema }),
    },
}

M.TableReference = {
    type = "union",
    id = "TableReference",
    members = {
        glue = M.GlueTableReference,
        snowflake = M.SnowflakeTableReference,
        athena = M.AthenaTableReference,
    },
}

M.CreateConfiguredTableInput = {
    type = "structure",
    id = "CreateConfiguredTableInput",
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
        tableReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableReference }),
        allowedColumns = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "ConfiguredTable",
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
        tableReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableReference }),
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
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        selectedAnalysisMethods = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateConfiguredTableOutput = {
    type = "structure",
    id = "CreateConfiguredTableOutput",
    members = {
        configuredTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTable }),
    },
}

M.ConfiguredTableAnalysisRulePolicyV1 = {
    type = "union",
    id = "ConfiguredTableAnalysisRulePolicyV1",
    members = {
        list = M.AnalysisRuleList,
        aggregation = M.AnalysisRuleAggregation,
        custom = M.AnalysisRuleCustom,
    },
}

M.ConfiguredTableAnalysisRulePolicy = {
    type = "union",
    id = "ConfiguredTableAnalysisRulePolicy",
    members = {
        v1 = M.ConfiguredTableAnalysisRulePolicyV1,
    },
}

M.CreateConfiguredTableAnalysisRuleInput = {
    type = "structure",
    id = "CreateConfiguredTableAnalysisRuleInput",
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
        analysisRulePolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAnalysisRulePolicy }),
    },
}

M.ConfiguredTableAnalysisRule = {
    type = "structure",
    id = "ConfiguredTableAnalysisRule",
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
        policy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAnalysisRulePolicy }),
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
    id = "CreateConfiguredTableAnalysisRuleOutput",
    members = {
        analysisRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAnalysisRule }),
    },
}

M.DeleteConfiguredTableInput = {
    type = "structure",
    id = "DeleteConfiguredTableInput",
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
    id = "DeleteConfiguredTableOutput",
}

M.DeleteConfiguredTableAnalysisRuleInput = {
    type = "structure",
    id = "DeleteConfiguredTableAnalysisRuleInput",
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
    id = "DeleteConfiguredTableAnalysisRuleOutput",
}

M.GetConfiguredTableInput = {
    type = "structure",
    id = "GetConfiguredTableInput",
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
    id = "GetConfiguredTableOutput",
    members = {
        configuredTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTable }),
    },
}

M.GetConfiguredTableAnalysisRuleInput = {
    type = "structure",
    id = "GetConfiguredTableAnalysisRuleInput",
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
    id = "GetConfiguredTableAnalysisRuleOutput",
    members = {
        analysisRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAnalysisRule }),
    },
}

M.ListConfiguredTablesInput = {
    type = "structure",
    id = "ListConfiguredTablesInput",
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

M.ConfiguredTableSummary = {
    type = "structure",
    id = "ConfiguredTableSummary",
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
            member = { type = "string" },
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
            member = { type = "string" },
        },
    },
}

M.ListConfiguredTablesOutput = {
    type = "structure",
    id = "ListConfiguredTablesOutput",
    members = {
        configuredTableSummaries = {
            type = "list",
            member = M.ConfiguredTableSummary,
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
    id = "UpdateConfiguredTableInput",
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
        tableReference = M.TableReference,
        allowedColumns = {
            type = "list",
            member = { type = "string" },
        },
        analysisMethod = {
            type = "string",
        },
        selectedAnalysisMethods = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateConfiguredTableOutput = {
    type = "structure",
    id = "UpdateConfiguredTableOutput",
    members = {
        configuredTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTable }),
    },
}

M.UpdateConfiguredTableAnalysisRuleInput = {
    type = "structure",
    id = "UpdateConfiguredTableAnalysisRuleInput",
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
        analysisRulePolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAnalysisRulePolicy }),
    },
}

M.UpdateConfiguredTableAnalysisRuleOutput = {
    type = "structure",
    id = "UpdateConfiguredTableAnalysisRuleOutput",
    members = {
        analysisRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredTableAnalysisRule }),
    },
}

M.IdMappingTableInputReferenceConfig = {
    type = "structure",
    id = "IdMappingTableInputReferenceConfig",
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
    id = "CreateIdMappingTableInput",
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
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTableInputReferenceConfig }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.IdMappingTableInputReferenceProperties = {
    type = "structure",
    id = "IdMappingTableInputReferenceProperties",
    members = {
        idMappingTableInputSource = {
            type = "list",
            member = M.IdMappingTableInputSource,
            traits = {
                required = true,
            },
        },
    },
}

M.IdMappingTable = {
    type = "structure",
    id = "IdMappingTable",
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
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTableInputReferenceConfig }),
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
        inputReferenceProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTableInputReferenceProperties }),
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.CreateIdMappingTableOutput = {
    type = "structure",
    id = "CreateIdMappingTableOutput",
    members = {
        idMappingTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTable }),
    },
}

M.DeleteIdMappingTableInput = {
    type = "structure",
    id = "DeleteIdMappingTableInput",
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
    id = "DeleteIdMappingTableOutput",
}

M.GetIdMappingTableInput = {
    type = "structure",
    id = "GetIdMappingTableInput",
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
    id = "GetIdMappingTableOutput",
    members = {
        idMappingTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTable }),
    },
}

M.ListIdMappingTablesInput = {
    type = "structure",
    id = "ListIdMappingTablesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.IdMappingTableSummary = {
    type = "structure",
    id = "IdMappingTableSummary",
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
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTableInputReferenceConfig }),
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
    id = "ListIdMappingTablesOutput",
    members = {
        idMappingTableSummaries = {
            type = "list",
            member = M.IdMappingTableSummary,
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
    id = "PopulateIdMappingTableInput",
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
    id = "PopulateIdMappingTableOutput",
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
    id = "UpdateIdMappingTableInput",
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
    id = "UpdateIdMappingTableOutput",
    members = {
        idMappingTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdMappingTable }),
    },
}

M.CreateIdNamespaceAssociationInput = {
    type = "structure",
    id = "CreateIdNamespaceAssociationInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferenceConfig }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        idMappingConfig = M.IdMappingConfig,
    },
}

M.IdNamespaceAssociation = {
    type = "structure",
    id = "IdNamespaceAssociation",
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
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferenceConfig }),
        inputReferenceProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferenceProperties }),
        idMappingConfig = M.IdMappingConfig,
    },
}

M.CreateIdNamespaceAssociationOutput = {
    type = "structure",
    id = "CreateIdNamespaceAssociationOutput",
    members = {
        idNamespaceAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociation }),
    },
}

M.DeleteIdNamespaceAssociationInput = {
    type = "structure",
    id = "DeleteIdNamespaceAssociationInput",
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
    id = "DeleteIdNamespaceAssociationOutput",
}

M.GetIdNamespaceAssociationInput = {
    type = "structure",
    id = "GetIdNamespaceAssociationInput",
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
    id = "GetIdNamespaceAssociationOutput",
    members = {
        idNamespaceAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociation }),
    },
}

M.ListIdNamespaceAssociationsInput = {
    type = "structure",
    id = "ListIdNamespaceAssociationsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.IdNamespaceAssociationSummary = {
    type = "structure",
    id = "IdNamespaceAssociationSummary",
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
        inputReferenceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferenceConfig }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        inputReferenceProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociationInputReferencePropertiesSummary }),
    },
}

M.ListIdNamespaceAssociationsOutput = {
    type = "structure",
    id = "ListIdNamespaceAssociationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        idNamespaceAssociationSummaries = {
            type = "list",
            member = M.IdNamespaceAssociationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIdNamespaceAssociationInput = {
    type = "structure",
    id = "UpdateIdNamespaceAssociationInput",
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
        idMappingConfig = M.IdMappingConfig,
    },
}

M.UpdateIdNamespaceAssociationOutput = {
    type = "structure",
    id = "UpdateIdNamespaceAssociationOutput",
    members = {
        idNamespaceAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdNamespaceAssociation }),
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

M.ProtectedJobS3OutputConfigurationInput = {
    type = "structure",
    id = "ProtectedJobS3OutputConfigurationInput",
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
    id = "MembershipProtectedJobOutputConfiguration",
    members = {
        s3 = M.ProtectedJobS3OutputConfigurationInput,
    },
}

M.MembershipProtectedJobResultConfiguration = {
    type = "structure",
    id = "MembershipProtectedJobResultConfiguration",
    members = {
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MembershipProtectedJobOutputConfiguration }),
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
    id = "ProtectedQueryS3OutputConfiguration",
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
    id = "MembershipProtectedQueryOutputConfiguration",
    members = {
        s3 = M.ProtectedQueryS3OutputConfiguration,
    },
}

M.MembershipProtectedQueryResultConfiguration = {
    type = "structure",
    id = "MembershipProtectedQueryResultConfiguration",
    members = {
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MembershipProtectedQueryOutputConfiguration }),
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
    id = "MembershipJobComputePaymentConfig",
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
    id = "MembershipModelInferencePaymentConfig",
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
    id = "MembershipModelTrainingPaymentConfig",
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
    id = "MembershipSyntheticDataGenerationPaymentConfig",
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
    id = "MembershipMLPaymentConfig",
    members = {
        modelTraining = M.MembershipModelTrainingPaymentConfig,
        modelInference = M.MembershipModelInferencePaymentConfig,
        syntheticDataGeneration = M.MembershipSyntheticDataGenerationPaymentConfig,
    },
}

M.MembershipQueryComputePaymentConfig = {
    type = "structure",
    id = "MembershipQueryComputePaymentConfig",
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
    id = "MembershipPaymentConfiguration",
    members = {
        queryCompute = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MembershipQueryComputePaymentConfig }),
        machineLearning = M.MembershipMLPaymentConfig,
        jobCompute = M.MembershipJobComputePaymentConfig,
    },
}

M.MembershipQueryLogStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateMembershipInput = {
    type = "structure",
    id = "CreateMembershipInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        defaultResultConfiguration = M.MembershipProtectedQueryResultConfiguration,
        defaultJobResultConfiguration = M.MembershipProtectedJobResultConfiguration,
        paymentConfiguration = M.MembershipPaymentConfiguration,
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
    id = "Membership",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        mlMemberAbilities = M.MLMemberAbilities,
        queryLogStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobLogStatus = {
            type = "string",
        },
        defaultResultConfiguration = M.MembershipProtectedQueryResultConfiguration,
        defaultJobResultConfiguration = M.MembershipProtectedJobResultConfiguration,
        paymentConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MembershipPaymentConfiguration }),
        isMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateMembershipOutput = {
    type = "structure",
    id = "CreateMembershipOutput",
    members = {
        membership = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Membership }),
    },
}

M.DeleteMembershipInput = {
    type = "structure",
    id = "DeleteMembershipInput",
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
    id = "DeleteMembershipOutput",
}

M.GetMembershipInput = {
    type = "structure",
    id = "GetMembershipInput",
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
    id = "GetMembershipOutput",
    members = {
        membership = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Membership }),
    },
}

M.GetProtectedJobInput = {
    type = "structure",
    id = "GetProtectedJobInput",
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
    id = "WorkerComputeConfigurationProperties",
    members = {
        spark = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ProtectedJobWorkerComputeType = {
    CR1X = "CR.1X",
    CR4X = "CR.4X",
}

M.ProtectedJobWorkerComputeConfiguration = {
    type = "structure",
    id = "ProtectedJobWorkerComputeConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        number = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        properties = M.WorkerComputeConfigurationProperties,
    },
}

M.ProtectedJobComputeConfiguration = {
    type = "union",
    id = "ProtectedJobComputeConfiguration",
    members = {
        worker = M.ProtectedJobWorkerComputeConfiguration,
    },
}

M.ProtectedJobError = {
    type = "structure",
    id = "ProtectedJobError",
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
    id = "ProtectedJobParameters",
    members = {
        analysisTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ProtectedJobSingleMemberOutput = {
    type = "structure",
    id = "ProtectedJobSingleMemberOutput",
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
    id = "ProtectedJobS3Output",
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
    id = "ProtectedJobOutput",
    members = {
        s3 = M.ProtectedJobS3Output,
        memberList = {
            type = "list",
            member = M.ProtectedJobSingleMemberOutput,
        },
    },
}

M.ProtectedJobResult = {
    type = "structure",
    id = "ProtectedJobResult",
    members = {
        output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedJobOutput }),
    },
}

M.ProtectedJobMemberOutputConfigurationOutput = {
    type = "structure",
    id = "ProtectedJobMemberOutputConfigurationOutput",
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
    id = "ProtectedJobS3OutputConfigurationOutput",
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
    id = "ProtectedJobOutputConfigurationOutput",
    members = {
        s3 = M.ProtectedJobS3OutputConfigurationOutput,
        member = M.ProtectedJobMemberOutputConfigurationOutput,
    },
}

M.ProtectedJobResultConfigurationOutput = {
    type = "structure",
    id = "ProtectedJobResultConfigurationOutput",
    members = {
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedJobOutputConfigurationOutput }),
    },
}

M.BilledJobResourceUtilization = {
    type = "structure",
    id = "BilledJobResourceUtilization",
    members = {
        units = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedJobStatistics = {
    type = "structure",
    id = "ProtectedJobStatistics",
    members = {
        totalDurationInMillis = {
            type = "long",
        },
        billedResourceUtilization = M.BilledJobResourceUtilization,
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
    id = "ProtectedJob",
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
        jobParameters = M.ProtectedJobParameters,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resultConfiguration = M.ProtectedJobResultConfigurationOutput,
        statistics = M.ProtectedJobStatistics,
        result = M.ProtectedJobResult,
        error = M.ProtectedJobError,
        computeConfiguration = M.ProtectedJobComputeConfiguration,
    },
}

M.GetProtectedJobOutput = {
    type = "structure",
    id = "GetProtectedJobOutput",
    members = {
        protectedJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedJob }),
    },
}

M.GetProtectedQueryInput = {
    type = "structure",
    id = "GetProtectedQueryInput",
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
    id = "WorkerComputeConfiguration",
    members = {
        type = {
            type = "string",
        },
        number = {
            type = "integer",
        },
        properties = M.WorkerComputeConfigurationProperties,
    },
}

M.ComputeConfiguration = {
    type = "union",
    id = "ComputeConfiguration",
    members = {
        worker = M.WorkerComputeConfiguration,
    },
}

M.DifferentialPrivacySensitivityParameters = {
    type = "structure",
    id = "DifferentialPrivacySensitivityParameters",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        minColumnValue = {
            type = "float",
        },
        maxColumnValue = {
            type = "float",
        },
    },
}

M.DifferentialPrivacyParameters = {
    type = "structure",
    id = "DifferentialPrivacyParameters",
    members = {
        sensitivityParameters = {
            type = "list",
            member = M.DifferentialPrivacySensitivityParameters,
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryError = {
    type = "structure",
    id = "ProtectedQueryError",
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
    id = "ProtectedQuerySingleMemberOutput",
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
    id = "ProtectedQueryS3Output",
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
    id = "ProtectedQueryDistributeOutput",
    members = {
        s3 = M.ProtectedQueryS3Output,
        memberList = {
            type = "list",
            member = M.ProtectedQuerySingleMemberOutput,
        },
    },
}

M.ProtectedQueryOutput = {
    type = "union",
    id = "ProtectedQueryOutput",
    members = {
        s3 = M.ProtectedQueryS3Output,
        memberList = {
            type = "list",
            member = M.ProtectedQuerySingleMemberOutput,
        },
        distribute = M.ProtectedQueryDistributeOutput,
    },
}

M.ProtectedQueryResult = {
    type = "structure",
    id = "ProtectedQueryResult",
    members = {
        output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedQueryOutput }),
    },
}

M.ProtectedQueryMemberOutputConfiguration = {
    type = "structure",
    id = "ProtectedQueryMemberOutputConfiguration",
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
    id = "ProtectedQueryDistributeOutputConfigurationLocation",
    members = {
        s3 = M.ProtectedQueryS3OutputConfiguration,
        member = M.ProtectedQueryMemberOutputConfiguration,
    },
}

M.ProtectedQueryDistributeOutputConfiguration = {
    type = "structure",
    id = "ProtectedQueryDistributeOutputConfiguration",
    members = {
        locations = {
            type = "list",
            member = M.ProtectedQueryDistributeOutputConfigurationLocation,
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryOutputConfiguration = {
    type = "union",
    id = "ProtectedQueryOutputConfiguration",
    members = {
        s3 = M.ProtectedQueryS3OutputConfiguration,
        member = M.ProtectedQueryMemberOutputConfiguration,
        distribute = M.ProtectedQueryDistributeOutputConfiguration,
    },
}

M.ProtectedQueryResultConfiguration = {
    type = "structure",
    id = "ProtectedQueryResultConfiguration",
    members = {
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedQueryOutputConfiguration }),
    },
}

M.ProtectedQuerySQLParameters = {
    type = "structure",
    id = "ProtectedQuerySQLParameters",
    members = {
        queryString = {
            type = "string",
        },
        analysisTemplateArn = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BilledResourceUtilization = {
    type = "structure",
    id = "BilledResourceUtilization",
    members = {
        units = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectedQueryStatistics = {
    type = "structure",
    id = "ProtectedQueryStatistics",
    members = {
        totalDurationInMillis = {
            type = "long",
        },
        billedResourceUtilization = M.BilledResourceUtilization,
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
    id = "ProtectedQuery",
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
        sqlParameters = M.ProtectedQuerySQLParameters,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resultConfiguration = M.ProtectedQueryResultConfiguration,
        statistics = M.ProtectedQueryStatistics,
        result = M.ProtectedQueryResult,
        error = M.ProtectedQueryError,
        differentialPrivacy = M.DifferentialPrivacyParameters,
        computeConfiguration = M.ComputeConfiguration,
    },
}

M.GetProtectedQueryOutput = {
    type = "structure",
    id = "GetProtectedQueryOutput",
    members = {
        protectedQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedQuery }),
    },
}

M.ListMembershipsInput = {
    type = "structure",
    id = "ListMembershipsInput",
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
    id = "MembershipSummary",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        mlMemberAbilities = M.MLMemberAbilities,
        paymentConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MembershipPaymentConfiguration }),
    },
}

M.ListMembershipsOutput = {
    type = "structure",
    id = "ListMembershipsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        membershipSummaries = {
            type = "list",
            member = M.MembershipSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPrivacyBudgetsInput = {
    type = "structure",
    id = "ListPrivacyBudgetsInput",
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
            type = "integer",
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
    id = "PrivacyBudgetSummary",
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
        budget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudget }),
    },
}

M.ListPrivacyBudgetsOutput = {
    type = "structure",
    id = "ListPrivacyBudgetsOutput",
    members = {
        privacyBudgetSummaries = {
            type = "list",
            member = M.PrivacyBudgetSummary,
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
    id = "ListProtectedJobsInput",
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
            type = "integer",
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
    id = "ProtectedJobDirectAnalysisConfigurationDetails",
    members = {
        receiverAccountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProtectedJobConfigurationDetails = {
    type = "union",
    id = "ProtectedJobConfigurationDetails",
    members = {
        directAnalysisConfigurationDetails = M.ProtectedJobDirectAnalysisConfigurationDetails,
    },
}

M.ProtectedJobReceiverConfiguration = {
    type = "structure",
    id = "ProtectedJobReceiverConfiguration",
    members = {
        analysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationDetails = M.ProtectedJobConfigurationDetails,
    },
}

M.ProtectedJobSummary = {
    type = "structure",
    id = "ProtectedJobSummary",
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
            member = M.ProtectedJobReceiverConfiguration,
            traits = {
                default = {},
                required = true,
            },
        },
    },
}

M.ListProtectedJobsOutput = {
    type = "structure",
    id = "ListProtectedJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        protectedJobs = {
            type = "list",
            member = M.ProtectedJobSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListProtectedQueriesInput = {
    type = "structure",
    id = "ListProtectedQueriesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DirectAnalysisConfigurationDetails = {
    type = "structure",
    id = "DirectAnalysisConfigurationDetails",
    members = {
        receiverAccountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConfigurationDetails = {
    type = "union",
    id = "ConfigurationDetails",
    members = {
        directAnalysisConfigurationDetails = M.DirectAnalysisConfigurationDetails,
    },
}

M.ReceiverConfiguration = {
    type = "structure",
    id = "ReceiverConfiguration",
    members = {
        analysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationDetails = M.ConfigurationDetails,
    },
}

M.ProtectedQuerySummary = {
    type = "structure",
    id = "ProtectedQuerySummary",
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
            member = M.ReceiverConfiguration,
            traits = {
                default = {},
                required = true,
            },
        },
    },
}

M.ListProtectedQueriesOutput = {
    type = "structure",
    id = "ListProtectedQueriesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        protectedQueries = {
            type = "list",
            member = M.ProtectedQuerySummary,
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyPreviewParametersInput = {
    type = "structure",
    id = "DifferentialPrivacyPreviewParametersInput",
    members = {
        epsilon = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        usersNoisePerQuery = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewPrivacyImpactParametersInput = {
    type = "union",
    id = "PreviewPrivacyImpactParametersInput",
    members = {
        differentialPrivacy = M.DifferentialPrivacyPreviewParametersInput,
    },
}

M.PreviewPrivacyImpactInput = {
    type = "structure",
    id = "PreviewPrivacyImpactInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PreviewPrivacyImpactParametersInput }),
    },
}

M.DifferentialPrivacyPreviewAggregation = {
    type = "structure",
    id = "DifferentialPrivacyPreviewAggregation",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyPrivacyImpact = {
    type = "structure",
    id = "DifferentialPrivacyPrivacyImpact",
    members = {
        aggregations = {
            type = "list",
            member = M.DifferentialPrivacyPreviewAggregation,
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyImpact = {
    type = "union",
    id = "PrivacyImpact",
    members = {
        differentialPrivacy = M.DifferentialPrivacyPrivacyImpact,
    },
}

M.PreviewPrivacyImpactOutput = {
    type = "structure",
    id = "PreviewPrivacyImpactOutput",
    members = {
        privacyImpact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyImpact }),
    },
}

M.ProtectedJobMemberOutputConfigurationInput = {
    type = "structure",
    id = "ProtectedJobMemberOutputConfigurationInput",
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
    id = "ProtectedJobOutputConfigurationInput",
    members = {
        member = M.ProtectedJobMemberOutputConfigurationInput,
    },
}

M.ProtectedJobResultConfigurationInput = {
    type = "structure",
    id = "ProtectedJobResultConfigurationInput",
    members = {
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedJobOutputConfigurationInput }),
    },
}

M.ProtectedJobType = {
    PYSPARK = "PYSPARK",
}

M.StartProtectedJobInput = {
    type = "structure",
    id = "StartProtectedJobInput",
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
        jobParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedJobParameters }),
        resultConfiguration = M.ProtectedJobResultConfigurationInput,
        computeConfiguration = M.ProtectedJobComputeConfiguration,
    },
}

M.StartProtectedJobOutput = {
    type = "structure",
    id = "StartProtectedJobOutput",
    members = {
        protectedJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedJob }),
    },
}

M.ProtectedQueryType = {
    SQL = "SQL",
}

M.StartProtectedQueryInput = {
    type = "structure",
    id = "StartProtectedQueryInput",
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
        sqlParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedQuerySQLParameters }),
        resultConfiguration = M.ProtectedQueryResultConfiguration,
        computeConfiguration = M.ComputeConfiguration,
    },
}

M.StartProtectedQueryOutput = {
    type = "structure",
    id = "StartProtectedQueryOutput",
    members = {
        protectedQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedQuery }),
    },
}

M.UpdateMembershipInput = {
    type = "structure",
    id = "UpdateMembershipInput",
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
        defaultResultConfiguration = M.MembershipProtectedQueryResultConfiguration,
        defaultJobResultConfiguration = M.MembershipProtectedJobResultConfiguration,
    },
}

M.UpdateMembershipOutput = {
    type = "structure",
    id = "UpdateMembershipOutput",
    members = {
        membership = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Membership }),
    },
}

M.TargetProtectedJobStatus = {
    CANCELLED = "CANCELLED",
}

M.UpdateProtectedJobInput = {
    type = "structure",
    id = "UpdateProtectedJobInput",
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
    id = "UpdateProtectedJobOutput",
    members = {
        protectedJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedJob }),
    },
}

M.TargetProtectedQueryStatus = {
    CANCELLED = "CANCELLED",
}

M.UpdateProtectedQueryInput = {
    type = "structure",
    id = "UpdateProtectedQueryInput",
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
    id = "UpdateProtectedQueryOutput",
    members = {
        protectedQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedQuery }),
    },
}

M.DifferentialPrivacyTemplateParametersInput = {
    type = "structure",
    id = "DifferentialPrivacyTemplateParametersInput",
    members = {
        epsilon = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        usersNoisePerQuery = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivacyBudgetTemplateParametersInput = {
    type = "union",
    id = "PrivacyBudgetTemplateParametersInput",
    members = {
        differentialPrivacy = M.DifferentialPrivacyTemplateParametersInput,
        accessBudget = M.AccessBudgetsPrivacyTemplateParametersInput,
    },
}

M.CreatePrivacyBudgetTemplateInput = {
    type = "structure",
    id = "CreatePrivacyBudgetTemplateInput",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudgetTemplateParametersInput }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PrivacyBudgetTemplate = {
    type = "structure",
    id = "PrivacyBudgetTemplate",
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
        parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudgetTemplateParametersOutput }),
    },
}

M.CreatePrivacyBudgetTemplateOutput = {
    type = "structure",
    id = "CreatePrivacyBudgetTemplateOutput",
    members = {
        privacyBudgetTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudgetTemplate }),
    },
}

M.DeletePrivacyBudgetTemplateInput = {
    type = "structure",
    id = "DeletePrivacyBudgetTemplateInput",
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
    id = "DeletePrivacyBudgetTemplateOutput",
}

M.GetPrivacyBudgetTemplateInput = {
    type = "structure",
    id = "GetPrivacyBudgetTemplateInput",
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
    id = "GetPrivacyBudgetTemplateOutput",
    members = {
        privacyBudgetTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudgetTemplate }),
    },
}

M.ListPrivacyBudgetTemplatesInput = {
    type = "structure",
    id = "ListPrivacyBudgetTemplatesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PrivacyBudgetTemplateSummary = {
    type = "structure",
    id = "PrivacyBudgetTemplateSummary",
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
    id = "ListPrivacyBudgetTemplatesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        privacyBudgetTemplateSummaries = {
            type = "list",
            member = M.PrivacyBudgetTemplateSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.DifferentialPrivacyTemplateUpdateParameters = {
    type = "structure",
    id = "DifferentialPrivacyTemplateUpdateParameters",
    members = {
        epsilon = {
            type = "integer",
        },
        usersNoisePerQuery = {
            type = "integer",
        },
    },
}

M.PrivacyBudgetTemplateUpdateParameters = {
    type = "union",
    id = "PrivacyBudgetTemplateUpdateParameters",
    members = {
        differentialPrivacy = M.DifferentialPrivacyTemplateUpdateParameters,
        accessBudget = M.AccessBudgetsPrivacyTemplateUpdateParameters,
    },
}

M.UpdatePrivacyBudgetTemplateInput = {
    type = "structure",
    id = "UpdatePrivacyBudgetTemplateInput",
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
        parameters = M.PrivacyBudgetTemplateUpdateParameters,
    },
}

M.UpdatePrivacyBudgetTemplateOutput = {
    type = "structure",
    id = "UpdatePrivacyBudgetTemplateOutput",
    members = {
        privacyBudgetTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyBudgetTemplate }),
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

return M
