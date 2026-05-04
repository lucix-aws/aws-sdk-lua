local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregatedLogOddsMetric = {
    type = "structure",
    id = "AggregatedLogOddsMetric",
    members = {
        variableNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        aggregatedVariablesImportance = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregatedVariablesImpactExplanation = {
    type = "structure",
    id = "AggregatedVariablesImpactExplanation",
    members = {
        eventVariableNames = {
            type = "list",
            member = { type = "string" },
        },
        relativeImpact = {
            type = "string",
        },
        logOddsImpact = {
            type = "float",
        },
    },
}

M.AggregatedVariablesImportanceMetrics = {
    type = "structure",
    id = "AggregatedVariablesImportanceMetrics",
    members = {
        logOddsMetrics = {
            type = "list",
            member = M.AggregatedLogOddsMetric,
        },
    },
}

M.AllowDenyList = {
    type = "structure",
    id = "AllowDenyList",
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
        variableType = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        updatedTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.AsyncJobStatus = {
    IN_PROGRESS_INITIALIZING = "IN_PROGRESS_INITIALIZING",
    IN_PROGRESS = "IN_PROGRESS",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCELED = "CANCELED",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.ATIMetricDataPoint = {
    type = "structure",
    id = "ATIMetricDataPoint",
    members = {
        cr = {
            type = "float",
        },
        adr = {
            type = "float",
        },
        threshold = {
            type = "float",
        },
        atodr = {
            type = "float",
        },
    },
}

M.ATIModelPerformance = {
    type = "structure",
    id = "ATIModelPerformance",
    members = {
        asi = {
            type = "float",
        },
    },
}

M.ATITrainingMetricsValue = {
    type = "structure",
    id = "ATITrainingMetricsValue",
    members = {
        metricDataPoints = {
            type = "list",
            member = M.ATIMetricDataPoint,
        },
        modelPerformance = M.ATIModelPerformance,
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

M.VariableEntry = {
    type = "structure",
    id = "VariableEntry",
    members = {
        name = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        dataSource = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
        description = {
            type = "string",
        },
        variableType = {
            type = "string",
        },
    },
}

M.BatchCreateVariableInput = {
    type = "structure",
    id = "BatchCreateVariableInput",
    members = {
        variableEntries = {
            type = "list",
            member = M.VariableEntry,
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

M.BatchCreateVariableError = {
    type = "structure",
    id = "BatchCreateVariableError",
    members = {
        name = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.BatchCreateVariableOutput = {
    type = "structure",
    id = "BatchCreateVariableOutput",
    members = {
        errors = {
            type = "list",
            member = M.BatchCreateVariableError,
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
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetVariableInput = {
    type = "structure",
    id = "BatchGetVariableInput",
    members = {
        names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetVariableError = {
    type = "structure",
    id = "BatchGetVariableError",
    members = {
        name = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.DataSource = {
    EVENT = "EVENT",
    MODEL_SCORE = "MODEL_SCORE",
    EXTERNAL_MODEL_SCORE = "EXTERNAL_MODEL_SCORE",
}

M.DataType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    FLOAT = "FLOAT",
    BOOLEAN = "BOOLEAN",
    DATETIME = "DATETIME",
}

M.Variable = {
    type = "structure",
    id = "Variable",
    members = {
        name = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        dataSource = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
        description = {
            type = "string",
        },
        variableType = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.BatchGetVariableOutput = {
    type = "structure",
    id = "BatchGetVariableOutput",
    members = {
        variables = {
            type = "list",
            member = M.Variable,
        },
        errors = {
            type = "list",
            member = M.BatchGetVariableError,
        },
    },
}

M.CancelBatchImportJobInput = {
    type = "structure",
    id = "CancelBatchImportJobInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelBatchImportJobOutput = {
    type = "structure",
    id = "CancelBatchImportJobOutput",
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
    },
}

M.CancelBatchPredictionJobInput = {
    type = "structure",
    id = "CancelBatchPredictionJobInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelBatchPredictionJobOutput = {
    type = "structure",
    id = "CancelBatchPredictionJobOutput",
}

M.CreateBatchImportJobInput = {
    type = "structure",
    id = "CreateBatchImportJobInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        iamRoleArn = {
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

M.CreateBatchImportJobOutput = {
    type = "structure",
    id = "CreateBatchImportJobOutput",
}

M.CreateBatchPredictionJobInput = {
    type = "structure",
    id = "CreateBatchPredictionJobInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersion = {
            type = "string",
        },
        iamRoleArn = {
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

M.CreateBatchPredictionJobOutput = {
    type = "structure",
    id = "CreateBatchPredictionJobOutput",
}

M.ModelTypeEnum = {
    ONLINE_FRAUD_INSIGHTS = "ONLINE_FRAUD_INSIGHTS",
    TRANSACTION_FRAUD_INSIGHTS = "TRANSACTION_FRAUD_INSIGHTS",
    ACCOUNT_TAKEOVER_INSIGHTS = "ACCOUNT_TAKEOVER_INSIGHTS",
}

M.ModelVersion = {
    type = "structure",
    id = "ModelVersion",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelVersionNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
    },
}

M.RuleExecutionMode = {
    ALL_MATCHED = "ALL_MATCHED",
    FIRST_MATCHED = "FIRST_MATCHED",
}

M.Rule = {
    type = "structure",
    id = "Rule",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDetectorVersionInput = {
    type = "structure",
    id = "CreateDetectorVersionInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        externalModelEndpoints = {
            type = "list",
            member = { type = "string" },
        },
        rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
        modelVersions = {
            type = "list",
            member = M.ModelVersion,
        },
        ruleExecutionMode = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DetectorVersionStatus = {
    DRAFT = "DRAFT",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.CreateDetectorVersionOutput = {
    type = "structure",
    id = "CreateDetectorVersionOutput",
    members = {
        detectorId = {
            type = "string",
        },
        detectorVersionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CreateListInput = {
    type = "structure",
    id = "CreateListInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        elements = {
            type = "list",
            member = { type = "string" },
        },
        variableType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateListOutput = {
    type = "structure",
    id = "CreateListOutput",
}

M.CreateModelInput = {
    type = "structure",
    id = "CreateModelInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        eventTypeName = {
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

M.CreateModelOutput = {
    type = "structure",
    id = "CreateModelOutput",
}

M.ExternalEventsDetail = {
    type = "structure",
    id = "ExternalEventsDetail",
    members = {
        dataLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestedEventsTimeWindow = {
    type = "structure",
    id = "IngestedEventsTimeWindow",
    members = {
        startTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestedEventsDetail = {
    type = "structure",
    id = "IngestedEventsDetail",
    members = {
        ingestedEventsTimeWindow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestedEventsTimeWindow }),
    },
}

M.UnlabeledEventsTreatment = {
    IGNORE = "IGNORE",
    FRAUD = "FRAUD",
    LEGIT = "LEGIT",
    AUTO = "AUTO",
}

M.LabelSchema = {
    type = "structure",
    id = "LabelSchema",
    members = {
        labelMapper = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        unlabeledEventsTreatment = {
            type = "string",
        },
    },
}

M.TrainingDataSchema = {
    type = "structure",
    id = "TrainingDataSchema",
    members = {
        modelVariables = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        labelSchema = M.LabelSchema,
    },
}

M.TrainingDataSourceEnum = {
    EXTERNAL_EVENTS = "EXTERNAL_EVENTS",
    INGESTED_EVENTS = "INGESTED_EVENTS",
}

M.CreateModelVersionInput = {
    type = "structure",
    id = "CreateModelVersionInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingDataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingDataSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainingDataSchema }),
        externalEventsDetail = M.ExternalEventsDetail,
        ingestedEventsDetail = M.IngestedEventsDetail,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateModelVersionOutput = {
    type = "structure",
    id = "CreateModelVersionOutput",
    members = {
        modelId = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        modelVersionNumber = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.Language = {
    DETECTORPL = "DETECTORPL",
}

M.CreateRuleInput = {
    type = "structure",
    id = "CreateRuleInput",
    members = {
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outcomes = {
            type = "list",
            member = { type = "string" },
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

M.CreateRuleOutput = {
    type = "structure",
    id = "CreateRuleOutput",
    members = {
        rule = M.Rule,
    },
}

M.CreateVariableInput = {
    type = "structure",
    id = "CreateVariableInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        variableType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateVariableOutput = {
    type = "structure",
    id = "CreateVariableOutput",
}

M.DeleteBatchImportJobInput = {
    type = "structure",
    id = "DeleteBatchImportJobInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBatchImportJobOutput = {
    type = "structure",
    id = "DeleteBatchImportJobOutput",
}

M.DeleteBatchPredictionJobInput = {
    type = "structure",
    id = "DeleteBatchPredictionJobInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBatchPredictionJobOutput = {
    type = "structure",
    id = "DeleteBatchPredictionJobOutput",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDetectorInput = {
    type = "structure",
    id = "DeleteDetectorInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDetectorOutput = {
    type = "structure",
    id = "DeleteDetectorOutput",
}

M.DeleteDetectorVersionInput = {
    type = "structure",
    id = "DeleteDetectorVersionInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDetectorVersionOutput = {
    type = "structure",
    id = "DeleteDetectorVersionOutput",
}

M.DeleteEntityTypeInput = {
    type = "structure",
    id = "DeleteEntityTypeInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEntityTypeOutput = {
    type = "structure",
    id = "DeleteEntityTypeOutput",
}

M.DeleteEventInput = {
    type = "structure",
    id = "DeleteEventInput",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deleteAuditHistory = {
            type = "boolean",
        },
    },
}

M.DeleteEventOutput = {
    type = "structure",
    id = "DeleteEventOutput",
}

M.DeleteEventsByEventTypeInput = {
    type = "structure",
    id = "DeleteEventsByEventTypeInput",
    members = {
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventsByEventTypeOutput = {
    type = "structure",
    id = "DeleteEventsByEventTypeOutput",
    members = {
        eventTypeName = {
            type = "string",
        },
        eventsDeletionStatus = {
            type = "string",
        },
    },
}

M.DeleteEventTypeInput = {
    type = "structure",
    id = "DeleteEventTypeInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventTypeOutput = {
    type = "structure",
    id = "DeleteEventTypeOutput",
}

M.DeleteExternalModelInput = {
    type = "structure",
    id = "DeleteExternalModelInput",
    members = {
        modelEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExternalModelOutput = {
    type = "structure",
    id = "DeleteExternalModelOutput",
}

M.DeleteLabelInput = {
    type = "structure",
    id = "DeleteLabelInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLabelOutput = {
    type = "structure",
    id = "DeleteLabelOutput",
}

M.DeleteListInput = {
    type = "structure",
    id = "DeleteListInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteListOutput = {
    type = "structure",
    id = "DeleteListOutput",
}

M.DeleteModelInput = {
    type = "structure",
    id = "DeleteModelInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelOutput = {
    type = "structure",
    id = "DeleteModelOutput",
}

M.DeleteModelVersionInput = {
    type = "structure",
    id = "DeleteModelVersionInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelVersionNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelVersionOutput = {
    type = "structure",
    id = "DeleteModelVersionOutput",
}

M.DeleteOutcomeInput = {
    type = "structure",
    id = "DeleteOutcomeInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOutcomeOutput = {
    type = "structure",
    id = "DeleteOutcomeOutput",
}

M.DeleteRuleInput = {
    type = "structure",
    id = "DeleteRuleInput",
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
    },
}

M.DeleteRuleOutput = {
    type = "structure",
    id = "DeleteRuleOutput",
}

M.DeleteVariableInput = {
    type = "structure",
    id = "DeleteVariableInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVariableOutput = {
    type = "structure",
    id = "DeleteVariableOutput",
}

M.DescribeDetectorInput = {
    type = "structure",
    id = "DescribeDetectorInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DetectorVersionSummary = {
    type = "structure",
    id = "DetectorVersionSummary",
    members = {
        detectorVersionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
    },
}

M.DescribeDetectorOutput = {
    type = "structure",
    id = "DescribeDetectorOutput",
    members = {
        detectorId = {
            type = "string",
        },
        detectorVersionSummaries = {
            type = "list",
            member = M.DetectorVersionSummary,
        },
        nextToken = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.DescribeModelVersionsInput = {
    type = "structure",
    id = "DescribeModelVersionsInput",
    members = {
        modelId = {
            type = "string",
        },
        modelVersionNumber = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.FieldValidationMessage = {
    type = "structure",
    id = "FieldValidationMessage",
    members = {
        fieldName = {
            type = "string",
        },
        identifier = {
            type = "string",
        },
        title = {
            type = "string",
        },
        content = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.FileValidationMessage = {
    type = "structure",
    id = "FileValidationMessage",
    members = {
        title = {
            type = "string",
        },
        content = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.DataValidationMetrics = {
    type = "structure",
    id = "DataValidationMetrics",
    members = {
        fileLevelMessages = {
            type = "list",
            member = M.FileValidationMessage,
        },
        fieldLevelMessages = {
            type = "list",
            member = M.FieldValidationMessage,
        },
    },
}

M.MetricDataPoint = {
    type = "structure",
    id = "MetricDataPoint",
    members = {
        fpr = {
            type = "float",
        },
        precision = {
            type = "float",
        },
        tpr = {
            type = "float",
        },
        threshold = {
            type = "float",
        },
    },
}

M.TrainingMetrics = {
    type = "structure",
    id = "TrainingMetrics",
    members = {
        auc = {
            type = "float",
        },
        metricDataPoints = {
            type = "list",
            member = M.MetricDataPoint,
        },
    },
}

M.LogOddsMetric = {
    type = "structure",
    id = "LogOddsMetric",
    members = {
        variableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variableType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variableImportance = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.VariableImportanceMetrics = {
    type = "structure",
    id = "VariableImportanceMetrics",
    members = {
        logOddsMetrics = {
            type = "list",
            member = M.LogOddsMetric,
        },
    },
}

M.TrainingResult = {
    type = "structure",
    id = "TrainingResult",
    members = {
        dataValidationMetrics = M.DataValidationMetrics,
        trainingMetrics = M.TrainingMetrics,
        variableImportanceMetrics = M.VariableImportanceMetrics,
    },
}

M.OFIMetricDataPoint = {
    type = "structure",
    id = "OFIMetricDataPoint",
    members = {
        fpr = {
            type = "float",
        },
        precision = {
            type = "float",
        },
        tpr = {
            type = "float",
        },
        threshold = {
            type = "float",
        },
    },
}

M.UncertaintyRange = {
    type = "structure",
    id = "UncertaintyRange",
    members = {
        lowerBoundValue = {
            type = "float",
            traits = {
                required = true,
            },
        },
        upperBoundValue = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.OFIModelPerformance = {
    type = "structure",
    id = "OFIModelPerformance",
    members = {
        auc = {
            type = "float",
        },
        uncertaintyRange = M.UncertaintyRange,
    },
}

M.OFITrainingMetricsValue = {
    type = "structure",
    id = "OFITrainingMetricsValue",
    members = {
        metricDataPoints = {
            type = "list",
            member = M.OFIMetricDataPoint,
        },
        modelPerformance = M.OFIModelPerformance,
    },
}

M.TFIMetricDataPoint = {
    type = "structure",
    id = "TFIMetricDataPoint",
    members = {
        fpr = {
            type = "float",
        },
        precision = {
            type = "float",
        },
        tpr = {
            type = "float",
        },
        threshold = {
            type = "float",
        },
    },
}

M.TFIModelPerformance = {
    type = "structure",
    id = "TFIModelPerformance",
    members = {
        auc = {
            type = "float",
        },
        uncertaintyRange = M.UncertaintyRange,
    },
}

M.TFITrainingMetricsValue = {
    type = "structure",
    id = "TFITrainingMetricsValue",
    members = {
        metricDataPoints = {
            type = "list",
            member = M.TFIMetricDataPoint,
        },
        modelPerformance = M.TFIModelPerformance,
    },
}

M.TrainingMetricsV2 = {
    type = "structure",
    id = "TrainingMetricsV2",
    members = {
        ofi = M.OFITrainingMetricsValue,
        tfi = M.TFITrainingMetricsValue,
        ati = M.ATITrainingMetricsValue,
    },
}

M.TrainingResultV2 = {
    type = "structure",
    id = "TrainingResultV2",
    members = {
        dataValidationMetrics = M.DataValidationMetrics,
        trainingMetricsV2 = M.TrainingMetricsV2,
        variableImportanceMetrics = M.VariableImportanceMetrics,
        aggregatedVariablesImportanceMetrics = M.AggregatedVariablesImportanceMetrics,
    },
}

M.ModelVersionDetail = {
    type = "structure",
    id = "ModelVersionDetail",
    members = {
        modelId = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        modelVersionNumber = {
            type = "string",
        },
        status = {
            type = "string",
        },
        trainingDataSource = {
            type = "string",
        },
        trainingDataSchema = M.TrainingDataSchema,
        externalEventsDetail = M.ExternalEventsDetail,
        ingestedEventsDetail = M.IngestedEventsDetail,
        trainingResult = M.TrainingResult,
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        trainingResultV2 = M.TrainingResultV2,
    },
}

M.DescribeModelVersionsOutput = {
    type = "structure",
    id = "DescribeModelVersionsOutput",
    members = {
        modelVersionDetails = {
            type = "list",
            member = M.ModelVersionDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBatchImportJobsInput = {
    type = "structure",
    id = "GetBatchImportJobsInput",
    members = {
        jobId = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BatchImport = {
    type = "structure",
    id = "BatchImport",
    members = {
        jobId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        startTime = {
            type = "string",
        },
        completionTime = {
            type = "string",
        },
        inputPath = {
            type = "string",
        },
        outputPath = {
            type = "string",
        },
        eventTypeName = {
            type = "string",
        },
        iamRoleArn = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        processedRecordsCount = {
            type = "integer",
        },
        failedRecordsCount = {
            type = "integer",
        },
        totalRecordsCount = {
            type = "integer",
        },
    },
}

M.GetBatchImportJobsOutput = {
    type = "structure",
    id = "GetBatchImportJobsOutput",
    members = {
        batchImports = {
            type = "list",
            member = M.BatchImport,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBatchPredictionJobsInput = {
    type = "structure",
    id = "GetBatchPredictionJobsInput",
    members = {
        jobId = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BatchPrediction = {
    type = "structure",
    id = "BatchPrediction",
    members = {
        jobId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        startTime = {
            type = "string",
        },
        completionTime = {
            type = "string",
        },
        lastHeartbeatTime = {
            type = "string",
        },
        inputPath = {
            type = "string",
        },
        outputPath = {
            type = "string",
        },
        eventTypeName = {
            type = "string",
        },
        detectorName = {
            type = "string",
        },
        detectorVersion = {
            type = "string",
        },
        iamRoleArn = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        processedRecordsCount = {
            type = "integer",
        },
        totalRecordsCount = {
            type = "integer",
        },
    },
}

M.GetBatchPredictionJobsOutput = {
    type = "structure",
    id = "GetBatchPredictionJobsOutput",
    members = {
        batchPredictions = {
            type = "list",
            member = M.BatchPrediction,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetDeleteEventsByEventTypeStatusInput = {
    type = "structure",
    id = "GetDeleteEventsByEventTypeStatusInput",
    members = {
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeleteEventsByEventTypeStatusOutput = {
    type = "structure",
    id = "GetDeleteEventsByEventTypeStatusOutput",
    members = {
        eventTypeName = {
            type = "string",
        },
        eventsDeletionStatus = {
            type = "string",
        },
    },
}

M.GetDetectorsInput = {
    type = "structure",
    id = "GetDetectorsInput",
    members = {
        detectorId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.Detector = {
    type = "structure",
    id = "Detector",
    members = {
        detectorId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        eventTypeName = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetDetectorsOutput = {
    type = "structure",
    id = "GetDetectorsOutput",
    members = {
        detectors = {
            type = "list",
            member = M.Detector,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetDetectorVersionInput = {
    type = "structure",
    id = "GetDetectorVersionInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDetectorVersionOutput = {
    type = "structure",
    id = "GetDetectorVersionOutput",
    members = {
        detectorId = {
            type = "string",
        },
        detectorVersionId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        externalModelEndpoints = {
            type = "list",
            member = { type = "string" },
        },
        modelVersions = {
            type = "list",
            member = M.ModelVersion,
        },
        rules = {
            type = "list",
            member = M.Rule,
        },
        status = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        ruleExecutionMode = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetEntityTypesInput = {
    type = "structure",
    id = "GetEntityTypesInput",
    members = {
        name = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EntityType = {
    type = "structure",
    id = "EntityType",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetEntityTypesOutput = {
    type = "structure",
    id = "GetEntityTypesOutput",
    members = {
        entityTypes = {
            type = "list",
            member = M.EntityType,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEventInput = {
    type = "structure",
    id = "GetEventInput",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Entity = {
    type = "structure",
    id = "Entity",
    members = {
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        eventId = {
            type = "string",
        },
        eventTypeName = {
            type = "string",
        },
        eventTimestamp = {
            type = "string",
        },
        eventVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        currentLabel = {
            type = "string",
        },
        labelTimestamp = {
            type = "string",
        },
        entities = {
            type = "list",
            member = M.Entity,
        },
    },
}

M.GetEventOutput = {
    type = "structure",
    id = "GetEventOutput",
    members = {
        event = M.Event,
    },
}

M.ModelEndpointDataBlob = {
    type = "structure",
    id = "ModelEndpointDataBlob",
    members = {
        byteBuffer = {
            type = "blob",
        },
        contentType = {
            type = "string",
        },
    },
}

M.GetEventPredictionInput = {
    type = "structure",
    id = "GetEventPredictionInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersionId = {
            type = "string",
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entities = {
            type = "list",
            member = M.Entity,
            traits = {
                required = true,
            },
        },
        eventTimestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        externalModelEndpointDataBlobs = {
            type = "map",
            key = { type = "string" },
            value = M.ModelEndpointDataBlob,
        },
    },
}

M.ModelSource = {
    SAGEMAKER = "SAGEMAKER",
}

M.ExternalModelSummary = {
    type = "structure",
    id = "ExternalModelSummary",
    members = {
        modelEndpoint = {
            type = "string",
        },
        modelSource = {
            type = "string",
        },
    },
}

M.ExternalModelOutputs = {
    type = "structure",
    id = "ExternalModelOutputs",
    members = {
        externalModel = M.ExternalModelSummary,
        outputs = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ModelScores = {
    type = "structure",
    id = "ModelScores",
    members = {
        modelVersion = M.ModelVersion,
        scores = {
            type = "map",
            key = { type = "string" },
            value = { type = "float" },
        },
    },
}

M.RuleResult = {
    type = "structure",
    id = "RuleResult",
    members = {
        ruleId = {
            type = "string",
        },
        outcomes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetEventPredictionOutput = {
    type = "structure",
    id = "GetEventPredictionOutput",
    members = {
        modelScores = {
            type = "list",
            member = M.ModelScores,
        },
        ruleResults = {
            type = "list",
            member = M.RuleResult,
        },
        externalModelOutputs = {
            type = "list",
            member = M.ExternalModelOutputs,
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    id = "ResourceUnavailableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetEventPredictionMetadataInput = {
    type = "structure",
    id = "GetEventPredictionMetadataInput",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        predictionTimestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluatedExternalModel = {
    type = "structure",
    id = "EvaluatedExternalModel",
    members = {
        modelEndpoint = {
            type = "string",
        },
        useEventVariables = {
            type = "boolean",
        },
        inputVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        outputVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.VariableImpactExplanation = {
    type = "structure",
    id = "VariableImpactExplanation",
    members = {
        eventVariableName = {
            type = "string",
        },
        relativeImpact = {
            type = "string",
        },
        logOddsImpact = {
            type = "float",
        },
    },
}

M.PredictionExplanations = {
    type = "structure",
    id = "PredictionExplanations",
    members = {
        variableImpactExplanations = {
            type = "list",
            member = M.VariableImpactExplanation,
        },
        aggregatedVariablesImpactExplanations = {
            type = "list",
            member = M.AggregatedVariablesImpactExplanation,
        },
    },
}

M.ModelVersionEvaluation = {
    type = "structure",
    id = "ModelVersionEvaluation",
    members = {
        outputVariableName = {
            type = "string",
        },
        evaluationScore = {
            type = "string",
        },
        predictionExplanations = M.PredictionExplanations,
    },
}

M.EvaluatedModelVersion = {
    type = "structure",
    id = "EvaluatedModelVersion",
    members = {
        modelId = {
            type = "string",
        },
        modelVersion = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        evaluations = {
            type = "list",
            member = M.ModelVersionEvaluation,
        },
    },
}

M.EventVariableSummary = {
    type = "structure",
    id = "EventVariableSummary",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
        source = {
            type = "string",
        },
    },
}

M.EvaluatedRule = {
    type = "structure",
    id = "EvaluatedRule",
    members = {
        ruleId = {
            type = "string",
        },
        ruleVersion = {
            type = "string",
        },
        expression = {
            type = "string",
        },
        expressionWithValues = {
            type = "string",
        },
        outcomes = {
            type = "list",
            member = { type = "string" },
        },
        evaluated = {
            type = "boolean",
        },
        matched = {
            type = "boolean",
        },
    },
}

M.GetEventPredictionMetadataOutput = {
    type = "structure",
    id = "GetEventPredictionMetadataOutput",
    members = {
        eventId = {
            type = "string",
        },
        eventTypeName = {
            type = "string",
        },
        entityId = {
            type = "string",
        },
        entityType = {
            type = "string",
        },
        eventTimestamp = {
            type = "string",
        },
        detectorId = {
            type = "string",
        },
        detectorVersionId = {
            type = "string",
        },
        detectorVersionStatus = {
            type = "string",
        },
        eventVariables = {
            type = "list",
            member = M.EventVariableSummary,
        },
        rules = {
            type = "list",
            member = M.EvaluatedRule,
        },
        ruleExecutionMode = {
            type = "string",
        },
        outcomes = {
            type = "list",
            member = { type = "string" },
        },
        evaluatedModelVersions = {
            type = "list",
            member = M.EvaluatedModelVersion,
        },
        evaluatedExternalModels = {
            type = "list",
            member = M.EvaluatedExternalModel,
        },
        predictionTimestamp = {
            type = "string",
        },
    },
}

M.GetEventTypesInput = {
    type = "structure",
    id = "GetEventTypesInput",
    members = {
        name = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EventIngestion = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EventOrchestration = {
    type = "structure",
    id = "EventOrchestration",
    members = {
        eventBridgeEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestedEventStatistics = {
    type = "structure",
    id = "IngestedEventStatistics",
    members = {
        numberOfEvents = {
            type = "long",
        },
        eventDataSizeInBytes = {
            type = "long",
        },
        leastRecentEvent = {
            type = "string",
        },
        mostRecentEvent = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
    },
}

M.EventType = {
    type = "structure",
    id = "EventType",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        eventVariables = {
            type = "list",
            member = { type = "string" },
        },
        labels = {
            type = "list",
            member = { type = "string" },
        },
        entityTypes = {
            type = "list",
            member = { type = "string" },
        },
        eventIngestion = {
            type = "string",
        },
        ingestedEventStatistics = M.IngestedEventStatistics,
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        eventOrchestration = M.EventOrchestration,
    },
}

M.GetEventTypesOutput = {
    type = "structure",
    id = "GetEventTypesOutput",
    members = {
        eventTypes = {
            type = "list",
            member = M.EventType,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetExternalModelsInput = {
    type = "structure",
    id = "GetExternalModelsInput",
    members = {
        modelEndpoint = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ModelInputDataFormat = {
    CSV = "TEXT_CSV",
    JSON = "APPLICATION_JSON",
}

M.ModelInputConfiguration = {
    type = "structure",
    id = "ModelInputConfiguration",
    members = {
        eventTypeName = {
            type = "string",
        },
        format = {
            type = "string",
        },
        useEventVariables = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        jsonInputTemplate = {
            type = "string",
        },
        csvInputTemplate = {
            type = "string",
        },
    },
}

M.ModelEndpointStatus = {
    ASSOCIATED = "ASSOCIATED",
    DISSOCIATED = "DISSOCIATED",
}

M.ModelOutputDataFormat = {
    CSV = "TEXT_CSV",
    JSONLINES = "APPLICATION_JSONLINES",
}

M.ModelOutputConfiguration = {
    type = "structure",
    id = "ModelOutputConfiguration",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jsonKeyToVariableMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        csvIndexToVariableMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ExternalModel = {
    type = "structure",
    id = "ExternalModel",
    members = {
        modelEndpoint = {
            type = "string",
        },
        modelSource = {
            type = "string",
        },
        invokeModelEndpointRoleArn = {
            type = "string",
        },
        inputConfiguration = M.ModelInputConfiguration,
        outputConfiguration = M.ModelOutputConfiguration,
        modelEndpointStatus = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetExternalModelsOutput = {
    type = "structure",
    id = "GetExternalModelsOutput",
    members = {
        externalModels = {
            type = "list",
            member = M.ExternalModel,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetKMSEncryptionKeyInput = {
    type = "structure",
    id = "GetKMSEncryptionKeyInput",
}

M.KMSKey = {
    type = "structure",
    id = "KMSKey",
    members = {
        kmsEncryptionKeyArn = {
            type = "string",
        },
    },
}

M.GetKMSEncryptionKeyOutput = {
    type = "structure",
    id = "GetKMSEncryptionKeyOutput",
    members = {
        kmsKey = M.KMSKey,
    },
}

M.GetLabelsInput = {
    type = "structure",
    id = "GetLabelsInput",
    members = {
        name = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.Label = {
    type = "structure",
    id = "Label",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetLabelsOutput = {
    type = "structure",
    id = "GetLabelsOutput",
    members = {
        labels = {
            type = "list",
            member = M.Label,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetListElementsInput = {
    type = "structure",
    id = "GetListElementsInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.GetListElementsOutput = {
    type = "structure",
    id = "GetListElementsOutput",
    members = {
        elements = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetListsMetadataInput = {
    type = "structure",
    id = "GetListsMetadataInput",
    members = {
        name = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.GetListsMetadataOutput = {
    type = "structure",
    id = "GetListsMetadataOutput",
    members = {
        lists = {
            type = "list",
            member = M.AllowDenyList,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetModelsInput = {
    type = "structure",
    id = "GetModelsInput",
    members = {
        modelId = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.Model = {
    type = "structure",
    id = "Model",
    members = {
        modelId = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        eventTypeName = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetModelsOutput = {
    type = "structure",
    id = "GetModelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        models = {
            type = "list",
            member = M.Model,
        },
    },
}

M.GetModelVersionInput = {
    type = "structure",
    id = "GetModelVersionInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelVersionNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetModelVersionOutput = {
    type = "structure",
    id = "GetModelVersionOutput",
    members = {
        modelId = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        modelVersionNumber = {
            type = "string",
        },
        trainingDataSource = {
            type = "string",
        },
        trainingDataSchema = M.TrainingDataSchema,
        externalEventsDetail = M.ExternalEventsDetail,
        ingestedEventsDetail = M.IngestedEventsDetail,
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetOutcomesInput = {
    type = "structure",
    id = "GetOutcomesInput",
    members = {
        name = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.Outcome = {
    type = "structure",
    id = "Outcome",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetOutcomesOutput = {
    type = "structure",
    id = "GetOutcomesOutput",
    members = {
        outcomes = {
            type = "list",
            member = M.Outcome,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetRulesInput = {
    type = "structure",
    id = "GetRulesInput",
    members = {
        ruleId = {
            type = "string",
        },
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleVersion = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.RuleDetail = {
    type = "structure",
    id = "RuleDetail",
    members = {
        ruleId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        detectorId = {
            type = "string",
        },
        ruleVersion = {
            type = "string",
        },
        expression = {
            type = "string",
        },
        language = {
            type = "string",
        },
        outcomes = {
            type = "list",
            member = { type = "string" },
        },
        lastUpdatedTime = {
            type = "string",
        },
        createdTime = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetRulesOutput = {
    type = "structure",
    id = "GetRulesOutput",
    members = {
        ruleDetails = {
            type = "list",
            member = M.RuleDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetVariablesInput = {
    type = "structure",
    id = "GetVariablesInput",
    members = {
        name = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.GetVariablesOutput = {
    type = "structure",
    id = "GetVariablesOutput",
    members = {
        variables = {
            type = "list",
            member = M.Variable,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FilterCondition = {
    type = "structure",
    id = "FilterCondition",
    members = {
        value = {
            type = "string",
        },
    },
}

M.PredictionTimeRange = {
    type = "structure",
    id = "PredictionTimeRange",
    members = {
        startTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventPredictionsInput = {
    type = "structure",
    id = "ListEventPredictionsInput",
    members = {
        eventId = M.FilterCondition,
        eventType = M.FilterCondition,
        detectorId = M.FilterCondition,
        detectorVersionId = M.FilterCondition,
        predictionTimeRange = M.PredictionTimeRange,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EventPredictionSummary = {
    type = "structure",
    id = "EventPredictionSummary",
    members = {
        eventId = {
            type = "string",
        },
        eventTypeName = {
            type = "string",
        },
        eventTimestamp = {
            type = "string",
        },
        predictionTimestamp = {
            type = "string",
        },
        detectorId = {
            type = "string",
        },
        detectorVersionId = {
            type = "string",
        },
    },
}

M.ListEventPredictionsOutput = {
    type = "structure",
    id = "ListEventPredictionsOutput",
    members = {
        eventPredictionSummaries = {
            type = "list",
            member = M.EventPredictionSummary,
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
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
        nextToken = {
            type = "string",
        },
    },
}

M.PutDetectorInput = {
    type = "structure",
    id = "PutDetectorInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        eventTypeName = {
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

M.PutDetectorOutput = {
    type = "structure",
    id = "PutDetectorOutput",
}

M.PutEntityTypeInput = {
    type = "structure",
    id = "PutEntityTypeInput",
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutEntityTypeOutput = {
    type = "structure",
    id = "PutEntityTypeOutput",
}

M.PutEventTypeInput = {
    type = "structure",
    id = "PutEventTypeInput",
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
        eventVariables = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        labels = {
            type = "list",
            member = { type = "string" },
        },
        entityTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        eventIngestion = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        eventOrchestration = M.EventOrchestration,
    },
}

M.PutEventTypeOutput = {
    type = "structure",
    id = "PutEventTypeOutput",
}

M.PutExternalModelInput = {
    type = "structure",
    id = "PutExternalModelInput",
    members = {
        modelEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invokeModelEndpointRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInputConfiguration }),
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelOutputConfiguration }),
        modelEndpointStatus = {
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

M.PutExternalModelOutput = {
    type = "structure",
    id = "PutExternalModelOutput",
}

M.PutKMSEncryptionKeyInput = {
    type = "structure",
    id = "PutKMSEncryptionKeyInput",
    members = {
        kmsEncryptionKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutKMSEncryptionKeyOutput = {
    type = "structure",
    id = "PutKMSEncryptionKeyOutput",
}

M.PutLabelInput = {
    type = "structure",
    id = "PutLabelInput",
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutLabelOutput = {
    type = "structure",
    id = "PutLabelOutput",
}

M.PutOutcomeInput = {
    type = "structure",
    id = "PutOutcomeInput",
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutOutcomeOutput = {
    type = "structure",
    id = "PutOutcomeOutput",
}

M.SendEventInput = {
    type = "structure",
    id = "SendEventInput",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTimestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        assignedLabel = {
            type = "string",
        },
        labelTimestamp = {
            type = "string",
        },
        entities = {
            type = "list",
            member = M.Entity,
            traits = {
                required = true,
            },
        },
    },
}

M.SendEventOutput = {
    type = "structure",
    id = "SendEventOutput",
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

M.UpdateDetectorVersionInput = {
    type = "structure",
    id = "UpdateDetectorVersionInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalModelEndpoints = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        modelVersions = {
            type = "list",
            member = M.ModelVersion,
        },
        ruleExecutionMode = {
            type = "string",
        },
    },
}

M.UpdateDetectorVersionOutput = {
    type = "structure",
    id = "UpdateDetectorVersionOutput",
}

M.UpdateDetectorVersionMetadataInput = {
    type = "structure",
    id = "UpdateDetectorVersionMetadataInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersionId = {
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

M.UpdateDetectorVersionMetadataOutput = {
    type = "structure",
    id = "UpdateDetectorVersionMetadataOutput",
}

M.UpdateDetectorVersionStatusInput = {
    type = "structure",
    id = "UpdateDetectorVersionStatusInput",
    members = {
        detectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorVersionId = {
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
    },
}

M.UpdateDetectorVersionStatusOutput = {
    type = "structure",
    id = "UpdateDetectorVersionStatusOutput",
}

M.UpdateEventLabelInput = {
    type = "structure",
    id = "UpdateEventLabelInput",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assignedLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        labelTimestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEventLabelOutput = {
    type = "structure",
    id = "UpdateEventLabelOutput",
}

M.ListUpdateMode = {
    REPLACE = "REPLACE",
    APPEND = "APPEND",
    REMOVE = "REMOVE",
}

M.UpdateListInput = {
    type = "structure",
    id = "UpdateListInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        elements = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
        updateMode = {
            type = "string",
        },
        variableType = {
            type = "string",
        },
    },
}

M.UpdateListOutput = {
    type = "structure",
    id = "UpdateListOutput",
}

M.UpdateModelInput = {
    type = "structure",
    id = "UpdateModelInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
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

M.UpdateModelOutput = {
    type = "structure",
    id = "UpdateModelOutput",
}

M.UpdateModelVersionInput = {
    type = "structure",
    id = "UpdateModelVersionInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        majorVersionNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalEventsDetail = M.ExternalEventsDetail,
        ingestedEventsDetail = M.IngestedEventsDetail,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdateModelVersionOutput = {
    type = "structure",
    id = "UpdateModelVersionOutput",
    members = {
        modelId = {
            type = "string",
        },
        modelType = {
            type = "string",
        },
        modelVersionNumber = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ModelVersionStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    TRAINING_CANCELLED = "TRAINING_CANCELLED",
}

M.UpdateModelVersionStatusInput = {
    type = "structure",
    id = "UpdateModelVersionStatusInput",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelVersionNumber = {
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
    },
}

M.UpdateModelVersionStatusOutput = {
    type = "structure",
    id = "UpdateModelVersionStatusOutput",
}

M.UpdateRuleMetadataInput = {
    type = "structure",
    id = "UpdateRuleMetadataInput",
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRuleMetadataOutput = {
    type = "structure",
    id = "UpdateRuleMetadataOutput",
}

M.UpdateRuleVersionInput = {
    type = "structure",
    id = "UpdateRuleVersionInput",
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
        description = {
            type = "string",
        },
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outcomes = {
            type = "list",
            member = { type = "string" },
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

M.UpdateRuleVersionOutput = {
    type = "structure",
    id = "UpdateRuleVersionOutput",
    members = {
        rule = M.Rule,
    },
}

M.UpdateVariableInput = {
    type = "structure",
    id = "UpdateVariableInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultValue = {
            type = "string",
        },
        description = {
            type = "string",
        },
        variableType = {
            type = "string",
        },
    },
}

M.UpdateVariableOutput = {
    type = "structure",
    id = "UpdateVariableOutput",
}

return M
