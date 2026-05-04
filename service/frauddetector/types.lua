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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        aggregatedVariablesImportance = {
            type = "number",
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
            member_type = "string",
        },
        relativeImpact = {
            type = "string",
        },
        logOddsImpact = {
            type = "number",
        },
    },
}

M.AggregatedVariablesImportanceMetrics = {
    type = "structure",
    members = {
        logOddsMetrics = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        adr = {
            type = "number",
        },
        threshold = {
            type = "number",
        },
        atodr = {
            type = "number",
        },
    },
}

M.ATIModelPerformance = {
    type = "structure",
    members = {
        asi = {
            type = "number",
        },
    },
}

M.ATITrainingMetricsValue = {
    type = "structure",
    members = {
        metricDataPoints = {
            type = "list",
            member_type = "structure",
        },
        modelPerformance = {
            type = "structure",
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
            member_type = "structure",
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

M.BatchCreateVariableError = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        code = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        modelVersions = {
            type = "list",
            member_type = "structure",
        },
        ruleExecutionMode = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        variableType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        ingestedEventsTimeWindow = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "list",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        labelSchema = {
            type = "structure",
        },
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
        trainingDataSchema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        externalEventsDetail = {
            type = "structure",
        },
        ingestedEventsDetail = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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

M.CreateRuleOutput = {
    type = "structure",
    members = {
        rule = {
            type = "structure",
        },
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
            member_type = "structure",
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
        rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
        fieldLevelMessages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MetricDataPoint = {
    type = "structure",
    members = {
        fpr = {
            type = "number",
        },
        precision = {
            type = "number",
        },
        tpr = {
            type = "number",
        },
        threshold = {
            type = "number",
        },
    },
}

M.TrainingMetrics = {
    type = "structure",
    members = {
        auc = {
            type = "number",
        },
        metricDataPoints = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.TrainingResult = {
    type = "structure",
    members = {
        dataValidationMetrics = {
            type = "structure",
        },
        trainingMetrics = {
            type = "structure",
        },
        variableImportanceMetrics = {
            type = "structure",
        },
    },
}

M.OFIMetricDataPoint = {
    type = "structure",
    members = {
        fpr = {
            type = "number",
        },
        precision = {
            type = "number",
        },
        tpr = {
            type = "number",
        },
        threshold = {
            type = "number",
        },
    },
}

M.UncertaintyRange = {
    type = "structure",
    members = {
        lowerBoundValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        upperBoundValue = {
            type = "number",
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
            type = "number",
        },
        uncertaintyRange = {
            type = "structure",
        },
    },
}

M.OFITrainingMetricsValue = {
    type = "structure",
    members = {
        metricDataPoints = {
            type = "list",
            member_type = "structure",
        },
        modelPerformance = {
            type = "structure",
        },
    },
}

M.TFIMetricDataPoint = {
    type = "structure",
    members = {
        fpr = {
            type = "number",
        },
        precision = {
            type = "number",
        },
        tpr = {
            type = "number",
        },
        threshold = {
            type = "number",
        },
    },
}

M.TFIModelPerformance = {
    type = "structure",
    members = {
        auc = {
            type = "number",
        },
        uncertaintyRange = {
            type = "structure",
        },
    },
}

M.TFITrainingMetricsValue = {
    type = "structure",
    members = {
        metricDataPoints = {
            type = "list",
            member_type = "structure",
        },
        modelPerformance = {
            type = "structure",
        },
    },
}

M.TrainingMetricsV2 = {
    type = "structure",
    members = {
        ofi = {
            type = "structure",
        },
        tfi = {
            type = "structure",
        },
        ati = {
            type = "structure",
        },
    },
}

M.TrainingResultV2 = {
    type = "structure",
    members = {
        dataValidationMetrics = {
            type = "structure",
        },
        trainingMetricsV2 = {
            type = "structure",
        },
        variableImportanceMetrics = {
            type = "structure",
        },
        aggregatedVariablesImportanceMetrics = {
            type = "structure",
        },
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
        trainingDataSchema = {
            type = "structure",
        },
        externalEventsDetail = {
            type = "structure",
        },
        ingestedEventsDetail = {
            type = "structure",
        },
        trainingResult = {
            type = "structure",
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
        trainingResultV2 = {
            type = "structure",
        },
    },
}

M.DescribeModelVersionsOutput = {
    type = "structure",
    members = {
        modelVersionDetails = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        failedRecordsCount = {
            type = "number",
        },
        totalRecordsCount = {
            type = "number",
        },
    },
}

M.GetBatchImportJobsOutput = {
    type = "structure",
    members = {
        batchImports = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        totalRecordsCount = {
            type = "number",
        },
    },
}

M.GetBatchPredictionJobsOutput = {
    type = "structure",
    members = {
        batchPredictions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        modelVersions = {
            type = "list",
            member_type = "structure",
        },
        rules = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        currentLabel = {
            type = "string",
        },
        labelTimestamp = {
            type = "string",
        },
        entities = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetEventOutput = {
    type = "structure",
    members = {
        event = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        externalModelEndpointDataBlobs = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        externalModel = {
            type = "structure",
        },
        outputs = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ModelScores = {
    type = "structure",
    members = {
        modelVersion = {
            type = "structure",
        },
        scores = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            member_type = "string",
        },
    },
}

M.GetEventPredictionOutput = {
    type = "structure",
    members = {
        modelScores = {
            type = "list",
            member_type = "structure",
        },
        ruleResults = {
            type = "list",
            member_type = "structure",
        },
        externalModelOutputs = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        outputVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.PredictionExplanations = {
    type = "structure",
    members = {
        variableImpactExplanations = {
            type = "list",
            member_type = "structure",
        },
        aggregatedVariablesImpactExplanations = {
            type = "list",
            member_type = "structure",
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
        predictionExplanations = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        rules = {
            type = "list",
            member_type = "structure",
        },
        ruleExecutionMode = {
            type = "string",
        },
        outcomes = {
            type = "list",
            member_type = "string",
        },
        evaluatedModelVersions = {
            type = "list",
            member_type = "structure",
        },
        evaluatedExternalModels = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        eventDataSizeInBytes = {
            type = "number",
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
            member_type = "string",
        },
        labels = {
            type = "list",
            member_type = "string",
        },
        entityTypes = {
            type = "list",
            member_type = "string",
        },
        eventIngestion = {
            type = "string",
        },
        ingestedEventStatistics = {
            type = "structure",
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
        eventOrchestration = {
            type = "structure",
        },
    },
}

M.GetEventTypesOutput = {
    type = "structure",
    members = {
        eventTypes = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        csvIndexToVariableMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        inputConfiguration = {
            type = "structure",
        },
        outputConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
        kmsKey = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.GetListElementsOutput = {
    type = "structure",
    members = {
        elements = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
    },
}

M.GetListsMetadataOutput = {
    type = "structure",
    members = {
        lists = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        trainingDataSchema = {
            type = "structure",
        },
        externalEventsDetail = {
            type = "structure",
        },
        ingestedEventsDetail = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.GetVariablesOutput = {
    type = "structure",
    members = {
        variables = {
            type = "list",
            member_type = "structure",
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
        eventId = {
            type = "structure",
        },
        eventType = {
            type = "structure",
        },
        detectorId = {
            type = "structure",
        },
        detectorVersionId = {
            type = "structure",
        },
        predictionTimeRange = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        labels = {
            type = "list",
            member_type = "string",
        },
        entityTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        eventIngestion = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        eventOrchestration = {
            type = "structure",
        },
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
        inputConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        modelEndpointStatus = {
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
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        modelVersions = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        externalEventsDetail = {
            type = "structure",
        },
        ingestedEventsDetail = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
        rule = {
            type = "structure",
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

M.UpdateRuleMetadataOutput = {
    type = "structure",
}

M.UpdateRuleVersionInput = {
    type = "structure",
    members = {
        rule = {
            type = "structure",
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
            member_type = "string",
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

M.UpdateRuleVersionOutput = {
    type = "structure",
    members = {
        rule = {
            type = "structure",
        },
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
