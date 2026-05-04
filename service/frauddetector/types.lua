local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        logOddsMetrics = {
            type = "list",
            member = M.AggregatedLogOddsMetric,
        },
    },
}

M.AllowDenyList = {
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
    members = {
        asi = {
            type = "float",
        },
    },
}

M.ATITrainingMetricsValue = {
    type = "structure",
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
    members = {
        errors = {
            type = "list",
            member = M.BatchCreateVariableError,
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
    },
}

M.CancelBatchPredictionJobInput = {
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

M.CancelBatchPredictionJobOutput = {
    type = "structure",
}

M.CreateBatchImportJobInput = {
    type = "structure",
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
}

M.CreateBatchPredictionJobInput = {
    type = "structure",
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
}

M.ModelTypeEnum = {
    ONLINE_FRAUD_INSIGHTS = "ONLINE_FRAUD_INSIGHTS",
    TRANSACTION_FRAUD_INSIGHTS = "TRANSACTION_FRAUD_INSIGHTS",
    ACCOUNT_TAKEOVER_INSIGHTS = "ACCOUNT_TAKEOVER_INSIGHTS",
}

M.ModelVersion = {
    type = "structure",
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
}

M.CreateModelInput = {
    type = "structure",
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
}

M.ExternalEventsDetail = {
    type = "structure",
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
    members = {
        rule = M.Rule,
    },
}

M.CreateVariableInput = {
    type = "structure",
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
}

M.DeleteBatchImportJobInput = {
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

M.DeleteBatchImportJobOutput = {
    type = "structure",
}

M.DeleteBatchPredictionJobInput = {
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

M.DeleteBatchPredictionJobOutput = {
    type = "structure",
}

M.ConflictException = {
    type = "structure",
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
}

M.DeleteDetectorVersionInput = {
    type = "structure",
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
}

M.DeleteEntityTypeInput = {
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

M.DeleteEntityTypeOutput = {
    type = "structure",
}

M.DeleteEventInput = {
    type = "structure",
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
}

M.DeleteEventsByEventTypeInput = {
    type = "structure",
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
}

M.DeleteExternalModelInput = {
    type = "structure",
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
}

M.DeleteLabelInput = {
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

M.DeleteLabelOutput = {
    type = "structure",
}

M.DeleteListInput = {
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

M.DeleteListOutput = {
    type = "structure",
}

M.DeleteModelInput = {
    type = "structure",
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
}

M.DeleteModelVersionInput = {
    type = "structure",
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
}

M.DeleteOutcomeInput = {
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

M.DeleteOutcomeOutput = {
    type = "structure",
}

M.DeleteRuleInput = {
    type = "structure",
    members = {
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
    },
}

M.DeleteRuleOutput = {
    type = "structure",
}

M.DeleteVariableInput = {
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

M.DeleteVariableOutput = {
    type = "structure",
}

M.DescribeDetectorInput = {
    type = "structure",
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
    members = {
        logOddsMetrics = {
            type = "list",
            member = M.LogOddsMetric,
        },
    },
}

M.TrainingResult = {
    type = "structure",
    members = {
        dataValidationMetrics = M.DataValidationMetrics,
        trainingMetrics = M.TrainingMetrics,
        variableImportanceMetrics = M.VariableImportanceMetrics,
    },
}

M.OFIMetricDataPoint = {
    type = "structure",
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
    members = {
        auc = {
            type = "float",
        },
        uncertaintyRange = M.UncertaintyRange,
    },
}

M.OFITrainingMetricsValue = {
    type = "structure",
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
    members = {
        auc = {
            type = "float",
        },
        uncertaintyRange = M.UncertaintyRange,
    },
}

M.TFITrainingMetricsValue = {
    type = "structure",
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
    members = {
        ofi = M.OFITrainingMetricsValue,
        tfi = M.TFITrainingMetricsValue,
        ati = M.ATITrainingMetricsValue,
    },
}

M.TrainingResultV2 = {
    type = "structure",
    members = {
        dataValidationMetrics = M.DataValidationMetrics,
        trainingMetricsV2 = M.TrainingMetricsV2,
        variableImportanceMetrics = M.VariableImportanceMetrics,
        aggregatedVariablesImportanceMetrics = M.AggregatedVariablesImportanceMetrics,
    },
}

M.ModelVersionDetail = {
    type = "structure",
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
    members = {
        event = M.Event,
    },
}

M.ModelEndpointDataBlob = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetEventPredictionMetadataInput = {
    type = "structure",
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
}

M.KMSKey = {
    type = "structure",
    members = {
        kmsEncryptionKeyArn = {
            type = "string",
        },
    },
}

M.GetKMSEncryptionKeyOutput = {
    type = "structure",
    members = {
        kmsKey = M.KMSKey,
    },
}

M.GetLabelsInput = {
    type = "structure",
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
    members = {
        value = {
            type = "string",
        },
    },
}

M.PredictionTimeRange = {
    type = "structure",
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
}

M.PutEntityTypeInput = {
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutEntityTypeOutput = {
    type = "structure",
}

M.PutEventTypeInput = {
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
}

M.PutExternalModelInput = {
    type = "structure",
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
}

M.PutKMSEncryptionKeyInput = {
    type = "structure",
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
}

M.PutLabelInput = {
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutLabelOutput = {
    type = "structure",
}

M.PutOutcomeInput = {
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutOutcomeOutput = {
    type = "structure",
}

M.SendEventInput = {
    type = "structure",
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

M.UpdateDetectorVersionInput = {
    type = "structure",
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
}

M.UpdateDetectorVersionMetadataInput = {
    type = "structure",
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
}

M.UpdateDetectorVersionStatusInput = {
    type = "structure",
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
}

M.UpdateEventLabelInput = {
    type = "structure",
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
}

M.ListUpdateMode = {
    REPLACE = "REPLACE",
    APPEND = "APPEND",
    REMOVE = "REMOVE",
}

M.UpdateListInput = {
    type = "structure",
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
}

M.UpdateModelInput = {
    type = "structure",
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
}

M.UpdateModelVersionInput = {
    type = "structure",
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
}

M.UpdateRuleMetadataInput = {
    type = "structure",
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
}

M.UpdateRuleVersionInput = {
    type = "structure",
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
    members = {
        rule = M.Rule,
    },
}

M.UpdateVariableInput = {
    type = "structure",
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
}

return M
