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

M.PolicyType = {
    DATA_PROTECTION_POLICY = "DATA_PROTECTION_POLICY",
    SUBSCRIPTION_FILTER_POLICY = "SUBSCRIPTION_FILTER_POLICY",
    FIELD_INDEX_POLICY = "FIELD_INDEX_POLICY",
    TRANSFORMER_POLICY = "TRANSFORMER_POLICY",
    METRIC_EXTRACTION_POLICY = "METRIC_EXTRACTION_POLICY",
}

M.Scope = {
    ALL = "ALL",
}

M.AccountPolicy = {
    type = "structure",
    id = "AccountPolicy",
    members = {
        policyName = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "long",
        },
        policyType = {
            type = "string",
        },
        scope = {
            type = "string",
        },
        selectionCriteria = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
    },
}

M.ActionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CLIENT_ERROR = "CLIENT_ERROR",
    FAILED = "FAILED",
    COMPLETE = "COMPLETE",
}

M.AddKeyEntry = {
    type = "structure",
    id = "AddKeyEntry",
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
        overwriteIfExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AddKeys = {
    type = "structure",
    id = "AddKeys",
    members = {
        entries = {
            type = "list",
            member = M.AddKeyEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.GroupingIdentifier = {
    type = "structure",
    id = "GroupingIdentifier",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.AggregateLogGroupSummary = {
    type = "structure",
    id = "AggregateLogGroupSummary",
    members = {
        logGroupCount = {
            type = "integer",
        },
        groupingIdentifiers = {
            type = "list",
            member = M.GroupingIdentifier,
        },
    },
}

M.RecordField = {
    type = "structure",
    id = "RecordField",
    members = {
        name = {
            type = "string",
        },
        mandatory = {
            type = "boolean",
        },
    },
}

M.LogEvent = {
    type = "structure",
    id = "LogEvent",
    members = {
        timestamp = {
            type = "long",
        },
        message = {
            type = "string",
        },
    },
}

M.PatternToken = {
    type = "structure",
    id = "PatternToken",
    members = {
        dynamicTokenPosition = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        isDynamic = {
            type = "boolean",
        },
        tokenString = {
            type = "string",
        },
        enumerations = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
        },
        inferredTokenName = {
            type = "string",
        },
    },
}

M.State = {
    Active = "Active",
    Suppressed = "Suppressed",
    Baseline = "Baseline",
}

M.Anomaly = {
    type = "structure",
    id = "Anomaly",
    members = {
        anomalyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        patternId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        anomalyDetectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        patternString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        patternRegex = {
            type = "string",
        },
        priority = {
            type = "string",
        },
        firstSeen = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        lastSeen = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        active = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        histogram = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
            traits = {
                required = true,
            },
        },
        logSamples = {
            type = "list",
            member = M.LogEvent,
            traits = {
                required = true,
            },
        },
        patternTokens = {
            type = "list",
            member = M.PatternToken,
            traits = {
                required = true,
            },
        },
        logGroupArnList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        suppressed = {
            type = "boolean",
        },
        suppressedDate = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        suppressedUntil = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        isPatternLevelSuppression = {
            type = "boolean",
        },
    },
}

M.AnomalyDetectorStatus = {
    INITIALIZING = "INITIALIZING",
    TRAINING = "TRAINING",
    ANALYZING = "ANALYZING",
    FAILED = "FAILED",
    DELETED = "DELETED",
    PAUSED = "PAUSED",
}

M.EvaluationFrequency = {
    ONE_MIN = "ONE_MIN",
    FIVE_MIN = "FIVE_MIN",
    TEN_MIN = "TEN_MIN",
    FIFTEEN_MIN = "FIFTEEN_MIN",
    THIRTY_MIN = "THIRTY_MIN",
    ONE_HOUR = "ONE_HOUR",
}

M.AnomalyDetector = {
    type = "structure",
    id = "AnomalyDetector",
    members = {
        anomalyDetectorArn = {
            type = "string",
        },
        detectorName = {
            type = "string",
        },
        logGroupArnList = {
            type = "list",
            member = { type = "string" },
        },
        evaluationFrequency = {
            type = "string",
        },
        filterPattern = {
            type = "string",
        },
        anomalyDetectorStatus = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        creationTimeStamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTimeStamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        anomalyVisibilityTime = {
            type = "long",
        },
    },
}

M.AssociateKmsKeyInput = {
    type = "structure",
    id = "AssociateKmsKeyInput",
    members = {
        logGroupName = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
        },
    },
}

M.AssociateKmsKeyOutput = {
    type = "structure",
    id = "AssociateKmsKeyOutput",
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationAbortedException = {
    type = "structure",
    id = "OperationAbortedException",
    error = "client",
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

M.DataSource = {
    type = "structure",
    id = "DataSource",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.AssociateSourceToS3TableIntegrationInput = {
    type = "structure",
    id = "AssociateSourceToS3TableIntegrationInput",
    members = {
        integrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
    },
}

M.AssociateSourceToS3TableIntegrationOutput = {
    type = "structure",
    id = "AssociateSourceToS3TableIntegrationOutput",
    members = {
        identifier = {
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

M.CancelExportTaskInput = {
    type = "structure",
    id = "CancelExportTaskInput",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelExportTaskOutput = {
    type = "structure",
    id = "CancelExportTaskOutput",
}

M.InvalidOperationException = {
    type = "structure",
    id = "InvalidOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelImportTaskInput = {
    type = "structure",
    id = "CancelImportTaskInput",
    members = {
        importId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportStatistics = {
    type = "structure",
    id = "ImportStatistics",
    members = {
        bytesImported = {
            type = "long",
        },
    },
}

M.ImportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLED = "CANCELLED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.CancelImportTaskOutput = {
    type = "structure",
    id = "CancelImportTaskOutput",
    members = {
        importId = {
            type = "string",
        },
        importStatistics = M.ImportStatistics,
        importStatus = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
        lastUpdatedTime = {
            type = "long",
        },
    },
}

M.OutputFormat = {
    JSON = "json",
    PLAIN = "plain",
    W3C = "w3c",
    RAW = "raw",
    PARQUET = "parquet",
}

M.S3DeliveryConfiguration = {
    type = "structure",
    id = "S3DeliveryConfiguration",
    members = {
        suffixPath = {
            type = "string",
        },
        enableHiveCompatiblePath = {
            type = "boolean",
        },
    },
}

M.ConfigurationTemplateDeliveryConfigValues = {
    type = "structure",
    id = "ConfigurationTemplateDeliveryConfigValues",
    members = {
        recordFields = {
            type = "list",
            member = { type = "string" },
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = M.S3DeliveryConfiguration,
    },
}

M.DeliveryDestinationType = {
    S3 = "S3",
    CWL = "CWL",
    FH = "FH",
    XRAY = "XRAY",
}

M.ConfigurationTemplate = {
    type = "structure",
    id = "ConfigurationTemplate",
    members = {
        service = {
            type = "string",
        },
        logType = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        deliveryDestinationType = {
            type = "string",
        },
        defaultDeliveryConfigValues = M.ConfigurationTemplateDeliveryConfigValues,
        allowedFields = {
            type = "list",
            member = M.RecordField,
        },
        allowedOutputFormats = {
            type = "list",
            member = { type = "string" },
        },
        allowedActionForAllowVendedLogsDeliveryForResource = {
            type = "string",
        },
        allowedFieldDelimiters = {
            type = "list",
            member = { type = "string" },
        },
        allowedSuffixPathFields = {
            type = "list",
            member = { type = "string" },
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

M.CopyValueEntry = {
    type = "structure",
    id = "CopyValueEntry",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        overwriteIfExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CopyValue = {
    type = "structure",
    id = "CopyValue",
    members = {
        entries = {
            type = "list",
            member = M.CopyValueEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDeliveryInput = {
    type = "structure",
    id = "CreateDeliveryInput",
    members = {
        deliverySourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deliveryDestinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordFields = {
            type = "list",
            member = { type = "string" },
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = M.S3DeliveryConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Delivery = {
    type = "structure",
    id = "Delivery",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        deliverySourceName = {
            type = "string",
        },
        deliveryDestinationArn = {
            type = "string",
        },
        deliveryDestinationType = {
            type = "string",
        },
        recordFields = {
            type = "list",
            member = { type = "string" },
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = M.S3DeliveryConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDeliveryOutput = {
    type = "structure",
    id = "CreateDeliveryOutput",
    members = {
        delivery = M.Delivery,
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

M.CreateExportTaskInput = {
    type = "structure",
    id = "CreateExportTaskInput",
    members = {
        taskName = {
            type = "string",
        },
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamNamePrefix = {
            type = "string",
        },
        from = {
            type = "long",
            traits = {
                required = true,
            },
        },
        to = {
            type = "long",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPrefix = {
            type = "string",
        },
    },
}

M.CreateExportTaskOutput = {
    type = "structure",
    id = "CreateExportTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImportFilter = {
    type = "structure",
    id = "ImportFilter",
    members = {
        startEventTime = {
            type = "long",
        },
        endEventTime = {
            type = "long",
        },
    },
}

M.CreateImportTaskInput = {
    type = "structure",
    id = "CreateImportTaskInput",
    members = {
        importSourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importFilter = M.ImportFilter,
    },
}

M.CreateImportTaskOutput = {
    type = "structure",
    id = "CreateImportTaskOutput",
    members = {
        importId = {
            type = "string",
        },
        importDestinationArn = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
    },
}

M.CreateLogAnomalyDetectorInput = {
    type = "structure",
    id = "CreateLogAnomalyDetectorInput",
    members = {
        logGroupArnList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        detectorName = {
            type = "string",
        },
        evaluationFrequency = {
            type = "string",
        },
        filterPattern = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        anomalyVisibilityTime = {
            type = "long",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateLogAnomalyDetectorOutput = {
    type = "structure",
    id = "CreateLogAnomalyDetectorOutput",
    members = {
        anomalyDetectorArn = {
            type = "string",
        },
    },
}

M.LogGroupClass = {
    STANDARD = "STANDARD",
    INFREQUENT_ACCESS = "INFREQUENT_ACCESS",
    DELIVERY = "DELIVERY",
}

M.CreateLogGroupInput = {
    type = "structure",
    id = "CreateLogGroupInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        logGroupClass = {
            type = "string",
        },
        deletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.CreateLogGroupOutput = {
    type = "structure",
    id = "CreateLogGroupOutput",
}

M.CreateLogStreamInput = {
    type = "structure",
    id = "CreateLogStreamInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLogStreamOutput = {
    type = "structure",
    id = "CreateLogStreamOutput",
}

M.CreateLookupTableInput = {
    type = "structure",
    id = "CreateLookupTableInput",
    members = {
        lookupTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tableBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateLookupTableOutput = {
    type = "structure",
    id = "CreateLookupTableOutput",
    members = {
        lookupTableArn = {
            type = "string",
        },
        createdAt = {
            type = "long",
        },
    },
}

M.S3Configuration = {
    type = "structure",
    id = "S3Configuration",
    members = {
        destinationIdentifier = {
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
        ownerAccountId = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.DestinationConfiguration = {
    type = "structure",
    id = "DestinationConfiguration",
    members = {
        s3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Configuration }),
    },
}

M.QueryLanguage = {
    CWLI = "CWLI",
    SQL = "SQL",
    PPL = "PPL",
}

M.ScheduledQueryState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateScheduledQueryInput = {
    type = "structure",
    id = "CreateScheduledQueryInput",
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
        queryLanguage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        scheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timezone = {
            type = "string",
        },
        startTimeOffset = {
            type = "long",
        },
        destinationConfiguration = M.DestinationConfiguration,
        scheduleStartTime = {
            type = "long",
        },
        scheduleEndTime = {
            type = "long",
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateScheduledQueryOutput = {
    type = "structure",
    id = "CreateScheduledQueryOutput",
    members = {
        scheduledQueryArn = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.CSV = {
    type = "structure",
    id = "CSV",
    members = {
        quoteCharacter = {
            type = "string",
        },
        delimiter = {
            type = "string",
        },
        columns = {
            type = "list",
            member = { type = "string" },
        },
        source = {
            type = "string",
        },
        destination = {
            type = "string",
        },
    },
}

M.DataAlreadyAcceptedException = {
    type = "structure",
    id = "DataAlreadyAcceptedException",
    error = "client",
    members = {
        expectedSequenceToken = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DataProtectionStatus = {
    ACTIVATED = "ACTIVATED",
    DELETED = "DELETED",
    ARCHIVED = "ARCHIVED",
    DISABLED = "DISABLED",
}

M.DataSourceFilter = {
    type = "structure",
    id = "DataSourceFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.DateTimeConverter = {
    type = "structure",
    id = "DateTimeConverter",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetFormat = {
            type = "string",
        },
        matchPatterns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        sourceTimezone = {
            type = "string",
        },
        targetTimezone = {
            type = "string",
        },
        locale = {
            type = "string",
        },
    },
}

M.DeleteAccountPolicyInput = {
    type = "structure",
    id = "DeleteAccountPolicyInput",
    members = {
        policyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccountPolicyOutput = {
    type = "structure",
    id = "DeleteAccountPolicyOutput",
}

M.DeleteDataProtectionPolicyInput = {
    type = "structure",
    id = "DeleteDataProtectionPolicyInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataProtectionPolicyOutput = {
    type = "structure",
    id = "DeleteDataProtectionPolicyOutput",
}

M.DeleteDeliveryInput = {
    type = "structure",
    id = "DeleteDeliveryInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeliveryOutput = {
    type = "structure",
    id = "DeleteDeliveryOutput",
}

M.DeleteDeliveryDestinationInput = {
    type = "structure",
    id = "DeleteDeliveryDestinationInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeliveryDestinationOutput = {
    type = "structure",
    id = "DeleteDeliveryDestinationOutput",
}

M.DeleteDeliveryDestinationPolicyInput = {
    type = "structure",
    id = "DeleteDeliveryDestinationPolicyInput",
    members = {
        deliveryDestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeliveryDestinationPolicyOutput = {
    type = "structure",
    id = "DeleteDeliveryDestinationPolicyOutput",
}

M.DeleteDeliverySourceInput = {
    type = "structure",
    id = "DeleteDeliverySourceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeliverySourceOutput = {
    type = "structure",
    id = "DeleteDeliverySourceOutput",
}

M.DeleteDestinationInput = {
    type = "structure",
    id = "DeleteDestinationInput",
    members = {
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDestinationOutput = {
    type = "structure",
    id = "DeleteDestinationOutput",
}

M.DeleteIndexPolicyInput = {
    type = "structure",
    id = "DeleteIndexPolicyInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIndexPolicyOutput = {
    type = "structure",
    id = "DeleteIndexPolicyOutput",
}

M.DeleteIntegrationInput = {
    type = "structure",
    id = "DeleteIntegrationInput",
    members = {
        integrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteIntegrationOutput = {
    type = "structure",
    id = "DeleteIntegrationOutput",
}

M.DeleteKeys = {
    type = "structure",
    id = "DeleteKeys",
    members = {
        withKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLogAnomalyDetectorInput = {
    type = "structure",
    id = "DeleteLogAnomalyDetectorInput",
    members = {
        anomalyDetectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLogAnomalyDetectorOutput = {
    type = "structure",
    id = "DeleteLogAnomalyDetectorOutput",
}

M.DeleteLogGroupInput = {
    type = "structure",
    id = "DeleteLogGroupInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLogGroupOutput = {
    type = "structure",
    id = "DeleteLogGroupOutput",
}

M.DeleteLogStreamInput = {
    type = "structure",
    id = "DeleteLogStreamInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLogStreamOutput = {
    type = "structure",
    id = "DeleteLogStreamOutput",
}

M.DeleteLookupTableInput = {
    type = "structure",
    id = "DeleteLookupTableInput",
    members = {
        lookupTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLookupTableOutput = {
    type = "structure",
    id = "DeleteLookupTableOutput",
}

M.DeleteMetricFilterInput = {
    type = "structure",
    id = "DeleteMetricFilterInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMetricFilterOutput = {
    type = "structure",
    id = "DeleteMetricFilterOutput",
}

M.DeleteQueryDefinitionInput = {
    type = "structure",
    id = "DeleteQueryDefinitionInput",
    members = {
        queryDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQueryDefinitionOutput = {
    type = "structure",
    id = "DeleteQueryDefinitionOutput",
    members = {
        success = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        policyName = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        expectedRevisionId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.DeleteRetentionPolicyInput = {
    type = "structure",
    id = "DeleteRetentionPolicyInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRetentionPolicyOutput = {
    type = "structure",
    id = "DeleteRetentionPolicyOutput",
}

M.DeleteScheduledQueryInput = {
    type = "structure",
    id = "DeleteScheduledQueryInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduledQueryOutput = {
    type = "structure",
    id = "DeleteScheduledQueryOutput",
}

M.DeleteSubscriptionFilterInput = {
    type = "structure",
    id = "DeleteSubscriptionFilterInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSubscriptionFilterOutput = {
    type = "structure",
    id = "DeleteSubscriptionFilterOutput",
}

M.DeleteTransformerInput = {
    type = "structure",
    id = "DeleteTransformerInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTransformerOutput = {
    type = "structure",
    id = "DeleteTransformerOutput",
}

M.DeliveryDestinationConfiguration = {
    type = "structure",
    id = "DeliveryDestinationConfiguration",
    members = {
        destinationResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeliveryDestination = {
    type = "structure",
    id = "DeliveryDestination",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        deliveryDestinationType = {
            type = "string",
        },
        outputFormat = {
            type = "string",
        },
        deliveryDestinationConfiguration = M.DeliveryDestinationConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeliverySource = {
    type = "structure",
    id = "DeliverySource",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        service = {
            type = "string",
        },
        logType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeAccountPoliciesInput = {
    type = "structure",
    id = "DescribeAccountPoliciesInput",
    members = {
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyName = {
            type = "string",
        },
        accountIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeAccountPoliciesOutput = {
    type = "structure",
    id = "DescribeAccountPoliciesOutput",
    members = {
        accountPolicies = {
            type = "list",
            member = M.AccountPolicy,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationTemplatesInput = {
    type = "structure",
    id = "DescribeConfigurationTemplatesInput",
    members = {
        service = {
            type = "string",
        },
        logTypes = {
            type = "list",
            member = { type = "string" },
        },
        resourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        deliveryDestinationTypes = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.DescribeConfigurationTemplatesOutput = {
    type = "structure",
    id = "DescribeConfigurationTemplatesOutput",
    members = {
        configurationTemplates = {
            type = "list",
            member = M.ConfigurationTemplate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDeliveriesInput = {
    type = "structure",
    id = "DescribeDeliveriesInput",
    members = {
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.DescribeDeliveriesOutput = {
    type = "structure",
    id = "DescribeDeliveriesOutput",
    members = {
        deliveries = {
            type = "list",
            member = M.Delivery,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDeliveryDestinationsInput = {
    type = "structure",
    id = "DescribeDeliveryDestinationsInput",
    members = {
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.DescribeDeliveryDestinationsOutput = {
    type = "structure",
    id = "DescribeDeliveryDestinationsOutput",
    members = {
        deliveryDestinations = {
            type = "list",
            member = M.DeliveryDestination,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDeliverySourcesInput = {
    type = "structure",
    id = "DescribeDeliverySourcesInput",
    members = {
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.DescribeDeliverySourcesOutput = {
    type = "structure",
    id = "DescribeDeliverySourcesOutput",
    members = {
        deliverySources = {
            type = "list",
            member = M.DeliverySource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeDestinationsInput = {
    type = "structure",
    id = "DescribeDestinationsInput",
    members = {
        DestinationNamePrefix = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.Destination = {
    type = "structure",
    id = "Destination",
    members = {
        destinationName = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        accessPolicy = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
    },
}

M.DescribeDestinationsOutput = {
    type = "structure",
    id = "DescribeDestinationsOutput",
    members = {
        destinations = {
            type = "list",
            member = M.Destination,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExportTaskStatusCode = {
    CANCELLED = "CANCELLED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    PENDING = "PENDING",
    PENDING_CANCEL = "PENDING_CANCEL",
    RUNNING = "RUNNING",
}

M.DescribeExportTasksInput = {
    type = "structure",
    id = "DescribeExportTasksInput",
    members = {
        taskId = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.ExportTaskExecutionInfo = {
    type = "structure",
    id = "ExportTaskExecutionInfo",
    members = {
        creationTime = {
            type = "long",
        },
        completionTime = {
            type = "long",
        },
    },
}

M.ExportTaskStatus = {
    type = "structure",
    id = "ExportTaskStatus",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ExportTask = {
    type = "structure",
    id = "ExportTask",
    members = {
        taskId = {
            type = "string",
        },
        taskName = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        from = {
            type = "long",
        },
        to = {
            type = "long",
        },
        destination = {
            type = "string",
        },
        destinationPrefix = {
            type = "string",
        },
        status = M.ExportTaskStatus,
        executionInfo = M.ExportTaskExecutionInfo,
    },
}

M.DescribeExportTasksOutput = {
    type = "structure",
    id = "DescribeExportTasksOutput",
    members = {
        exportTasks = {
            type = "list",
            member = M.ExportTask,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeFieldIndexesInput = {
    type = "structure",
    id = "DescribeFieldIndexesInput",
    members = {
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IndexType = {
    FACET = "FACET",
    FIELD_INDEX = "FIELD_INDEX",
}

M.FieldIndex = {
    type = "structure",
    id = "FieldIndex",
    members = {
        logGroupIdentifier = {
            type = "string",
        },
        fieldIndexName = {
            type = "string",
        },
        lastScanTime = {
            type = "long",
        },
        firstEventTime = {
            type = "long",
        },
        lastEventTime = {
            type = "long",
        },
        type = {
            type = "string",
        },
    },
}

M.DescribeFieldIndexesOutput = {
    type = "structure",
    id = "DescribeFieldIndexesOutput",
    members = {
        fieldIndexes = {
            type = "list",
            member = M.FieldIndex,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeImportTaskBatchesInput = {
    type = "structure",
    id = "DescribeImportTaskBatchesInput",
    members = {
        importId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchImportStatus = {
            type = "list",
            member = { type = "string" },
        },
        limit = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImportBatch = {
    type = "structure",
    id = "ImportBatch",
    members = {
        batchId = {
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
        errorMessage = {
            type = "string",
        },
    },
}

M.DescribeImportTaskBatchesOutput = {
    type = "structure",
    id = "DescribeImportTaskBatchesOutput",
    members = {
        importSourceArn = {
            type = "string",
        },
        importId = {
            type = "string",
        },
        importBatches = {
            type = "list",
            member = M.ImportBatch,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeImportTasksInput = {
    type = "structure",
    id = "DescribeImportTasksInput",
    members = {
        importId = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
        importSourceArn = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Import = {
    type = "structure",
    id = "Import",
    members = {
        importId = {
            type = "string",
        },
        importSourceArn = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
        importDestinationArn = {
            type = "string",
        },
        importStatistics = M.ImportStatistics,
        importFilter = M.ImportFilter,
        creationTime = {
            type = "long",
        },
        lastUpdatedTime = {
            type = "long",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.DescribeImportTasksOutput = {
    type = "structure",
    id = "DescribeImportTasksOutput",
    members = {
        imports = {
            type = "list",
            member = M.Import,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeIndexPoliciesInput = {
    type = "structure",
    id = "DescribeIndexPoliciesInput",
    members = {
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IndexSource = {
    ACCOUNT = "ACCOUNT",
    LOG_GROUP = "LOG_GROUP",
}

M.IndexPolicy = {
    type = "structure",
    id = "IndexPolicy",
    members = {
        logGroupIdentifier = {
            type = "string",
        },
        lastUpdateTime = {
            type = "long",
        },
        policyDocument = {
            type = "string",
        },
        policyName = {
            type = "string",
        },
        source = {
            type = "string",
        },
    },
}

M.DescribeIndexPoliciesOutput = {
    type = "structure",
    id = "DescribeIndexPoliciesOutput",
    members = {
        indexPolicies = {
            type = "list",
            member = M.IndexPolicy,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLogGroupsInput = {
    type = "structure",
    id = "DescribeLogGroupsInput",
    members = {
        accountIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        logGroupNamePrefix = {
            type = "string",
        },
        logGroupNamePattern = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        includeLinkedAccounts = {
            type = "boolean",
        },
        logGroupClass = {
            type = "string",
        },
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InheritedProperty = {
    ACCOUNT_DATA_PROTECTION = "ACCOUNT_DATA_PROTECTION",
}

M.LogGroup = {
    type = "structure",
    id = "LogGroup",
    members = {
        logGroupName = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
        retentionInDays = {
            type = "integer",
        },
        metricFilterCount = {
            type = "integer",
        },
        arn = {
            type = "string",
        },
        storedBytes = {
            type = "long",
        },
        kmsKeyId = {
            type = "string",
        },
        dataProtectionStatus = {
            type = "string",
        },
        inheritedProperties = {
            type = "list",
            member = { type = "string" },
        },
        logGroupClass = {
            type = "string",
        },
        logGroupArn = {
            type = "string",
        },
        deletionProtectionEnabled = {
            type = "boolean",
        },
        bearerTokenAuthenticationEnabled = {
            type = "boolean",
        },
    },
}

M.DescribeLogGroupsOutput = {
    type = "structure",
    id = "DescribeLogGroupsOutput",
    members = {
        logGroups = {
            type = "list",
            member = M.LogGroup,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OrderBy = {
    LogStreamName = "LogStreamName",
    LastEventTime = "LastEventTime",
}

M.DescribeLogStreamsInput = {
    type = "structure",
    id = "DescribeLogStreamsInput",
    members = {
        logGroupName = {
            type = "string",
        },
        logGroupIdentifier = {
            type = "string",
        },
        logStreamNamePrefix = {
            type = "string",
        },
        orderBy = {
            type = "string",
        },
        descending = {
            type = "boolean",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.LogStream = {
    type = "structure",
    id = "LogStream",
    members = {
        logStreamName = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
        firstEventTimestamp = {
            type = "long",
        },
        lastEventTimestamp = {
            type = "long",
        },
        lastIngestionTime = {
            type = "long",
        },
        uploadSequenceToken = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        storedBytes = {
            type = "long",
        },
    },
}

M.DescribeLogStreamsOutput = {
    type = "structure",
    id = "DescribeLogStreamsOutput",
    members = {
        logStreams = {
            type = "list",
            member = M.LogStream,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeLookupTablesInput = {
    type = "structure",
    id = "DescribeLookupTablesInput",
    members = {
        lookupTableNamePrefix = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LookupTable = {
    type = "structure",
    id = "LookupTable",
    members = {
        lookupTableArn = {
            type = "string",
        },
        lookupTableName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tableFields = {
            type = "list",
            member = { type = "string" },
        },
        recordsCount = {
            type = "long",
        },
        sizeBytes = {
            type = "long",
        },
        lastUpdatedTime = {
            type = "long",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.DescribeLookupTablesOutput = {
    type = "structure",
    id = "DescribeLookupTablesOutput",
    members = {
        lookupTables = {
            type = "list",
            member = M.LookupTable,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeMetricFiltersInput = {
    type = "structure",
    id = "DescribeMetricFiltersInput",
    members = {
        logGroupName = {
            type = "string",
        },
        filterNamePrefix = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        metricName = {
            type = "string",
        },
        metricNamespace = {
            type = "string",
        },
    },
}

M.StandardUnit = {
    Seconds = "Seconds",
    Microseconds = "Microseconds",
    Milliseconds = "Milliseconds",
    Bytes = "Bytes",
    Kilobytes = "Kilobytes",
    Megabytes = "Megabytes",
    Gigabytes = "Gigabytes",
    Terabytes = "Terabytes",
    Bits = "Bits",
    Kilobits = "Kilobits",
    Megabits = "Megabits",
    Gigabits = "Gigabits",
    Terabits = "Terabits",
    Percent = "Percent",
    Count = "Count",
    BytesSecond = "Bytes/Second",
    KilobytesSecond = "Kilobytes/Second",
    MegabytesSecond = "Megabytes/Second",
    GigabytesSecond = "Gigabytes/Second",
    TerabytesSecond = "Terabytes/Second",
    BitsSecond = "Bits/Second",
    KilobitsSecond = "Kilobits/Second",
    MegabitsSecond = "Megabits/Second",
    GigabitsSecond = "Gigabits/Second",
    TerabitsSecond = "Terabits/Second",
    CountSecond = "Count/Second",
    None = "None",
}

M.MetricTransformation = {
    type = "structure",
    id = "MetricTransformation",
    members = {
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultValue = {
            type = "double",
        },
        dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        unit = {
            type = "string",
        },
    },
}

M.MetricFilter = {
    type = "structure",
    id = "MetricFilter",
    members = {
        filterName = {
            type = "string",
        },
        filterPattern = {
            type = "string",
        },
        metricTransformations = {
            type = "list",
            member = M.MetricTransformation,
        },
        creationTime = {
            type = "long",
        },
        logGroupName = {
            type = "string",
        },
        applyOnTransformedLogs = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFieldDimensions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeMetricFiltersOutput = {
    type = "structure",
    id = "DescribeMetricFiltersOutput",
    members = {
        metricFilters = {
            type = "list",
            member = M.MetricFilter,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.QueryStatus = {
    Scheduled = "Scheduled",
    Running = "Running",
    Complete = "Complete",
    Failed = "Failed",
    Cancelled = "Cancelled",
    Timeout = "Timeout",
    Unknown = "Unknown",
}

M.DescribeQueriesInput = {
    type = "structure",
    id = "DescribeQueriesInput",
    members = {
        logGroupName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        queryLanguage = {
            type = "string",
        },
    },
}

M.QueryInfo = {
    type = "structure",
    id = "QueryInfo",
    members = {
        queryLanguage = {
            type = "string",
        },
        queryId = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createTime = {
            type = "long",
        },
        logGroupName = {
            type = "string",
        },
        queryDuration = {
            type = "long",
        },
        bytesScanned = {
            type = "double",
        },
        userIdentity = {
            type = "string",
        },
    },
}

M.DescribeQueriesOutput = {
    type = "structure",
    id = "DescribeQueriesOutput",
    members = {
        queries = {
            type = "list",
            member = M.QueryInfo,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeQueryDefinitionsInput = {
    type = "structure",
    id = "DescribeQueryDefinitionsInput",
    members = {
        queryLanguage = {
            type = "string",
        },
        queryDefinitionNamePrefix = {
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

M.QueryParameter = {
    type = "structure",
    id = "QueryParameter",
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
    },
}

M.QueryDefinition = {
    type = "structure",
    id = "QueryDefinition",
    members = {
        queryLanguage = {
            type = "string",
        },
        queryDefinitionId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        lastModified = {
            type = "long",
        },
        logGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        parameters = {
            type = "list",
            member = M.QueryParameter,
        },
    },
}

M.DescribeQueryDefinitionsOutput = {
    type = "structure",
    id = "DescribeQueryDefinitionsOutput",
    members = {
        queryDefinitions = {
            type = "list",
            member = M.QueryDefinition,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PolicyScope = {
    ACCOUNT = "ACCOUNT",
    RESOURCE = "RESOURCE",
}

M.DescribeResourcePoliciesInput = {
    type = "structure",
    id = "DescribeResourcePoliciesInput",
    members = {
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        resourceArn = {
            type = "string",
        },
        policyScope = {
            type = "string",
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    id = "ResourcePolicy",
    members = {
        policyName = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "long",
        },
        policyScope = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
    },
}

M.DescribeResourcePoliciesOutput = {
    type = "structure",
    id = "DescribeResourcePoliciesOutput",
    members = {
        resourcePolicies = {
            type = "list",
            member = M.ResourcePolicy,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeSubscriptionFiltersInput = {
    type = "structure",
    id = "DescribeSubscriptionFiltersInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterNamePrefix = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.Distribution = {
    Random = "Random",
    ByLogStream = "ByLogStream",
}

M.SubscriptionFilter = {
    type = "structure",
    id = "SubscriptionFilter",
    members = {
        filterName = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        filterPattern = {
            type = "string",
        },
        destinationArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        distribution = {
            type = "string",
        },
        applyOnTransformedLogs = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        creationTime = {
            type = "long",
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeSubscriptionFiltersOutput = {
    type = "structure",
    id = "DescribeSubscriptionFiltersOutput",
    members = {
        subscriptionFilters = {
            type = "list",
            member = M.SubscriptionFilter,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DisassociateKmsKeyInput = {
    type = "structure",
    id = "DisassociateKmsKeyInput",
    members = {
        logGroupName = {
            type = "string",
        },
        resourceIdentifier = {
            type = "string",
        },
    },
}

M.DisassociateKmsKeyOutput = {
    type = "structure",
    id = "DisassociateKmsKeyOutput",
}

M.DisassociateSourceFromS3TableIntegrationInput = {
    type = "structure",
    id = "DisassociateSourceFromS3TableIntegrationInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSourceFromS3TableIntegrationOutput = {
    type = "structure",
    id = "DisassociateSourceFromS3TableIntegrationOutput",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.Entity = {
    type = "structure",
    id = "Entity",
    members = {
        keyAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EntityRejectionErrorType = {
    INVALID_ENTITY = "InvalidEntity",
    INVALID_TYPE_VALUE = "InvalidTypeValue",
    INVALID_KEY_ATTRIBUTE = "InvalidKeyAttributes",
    INVALID_ATTRIBUTES = "InvalidAttributes",
    ENTITY_SIZE_TOO_LARGE = "EntitySizeTooLarge",
    UNSUPPORTED_LOG_GROUP_TYPE = "UnsupportedLogGroupType",
    MISSING_REQUIRED_FIELDS = "MissingRequiredFields",
}

M.EventSource = {
    CLOUD_TRAIL = "CloudTrail",
    ROUTE53_RESOLVER = "Route53Resolver",
    VPC_FLOW = "VPCFlow",
    EKS_AUDIT = "EKSAudit",
    AWSWAF = "AWSWAF",
}

M.ExecutionStatus = {
    Running = "Running",
    InvalidQuery = "InvalidQuery",
    Complete = "Complete",
    Failed = "Failed",
    Timeout = "Timeout",
}

M.FieldsData = {
    type = "structure",
    id = "FieldsData",
    members = {
        data = {
            type = "blob",
        },
    },
}

M.FilteredLogEvent = {
    type = "structure",
    id = "FilteredLogEvent",
    members = {
        logStreamName = {
            type = "string",
        },
        timestamp = {
            type = "long",
        },
        message = {
            type = "string",
        },
        ingestionTime = {
            type = "long",
        },
        eventId = {
            type = "string",
        },
    },
}

M.FilterLogEventsInput = {
    type = "structure",
    id = "FilterLogEventsInput",
    members = {
        logGroupName = {
            type = "string",
        },
        logGroupIdentifier = {
            type = "string",
        },
        logStreamNames = {
            type = "list",
            member = { type = "string" },
        },
        logStreamNamePrefix = {
            type = "string",
        },
        startTime = {
            type = "long",
        },
        endTime = {
            type = "long",
        },
        filterPattern = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        interleaved = {
            type = "boolean",
        },
        unmask = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SearchedLogStream = {
    type = "structure",
    id = "SearchedLogStream",
    members = {
        logStreamName = {
            type = "string",
        },
        searchedCompletely = {
            type = "boolean",
        },
    },
}

M.FilterLogEventsOutput = {
    type = "structure",
    id = "FilterLogEventsOutput",
    members = {
        events = {
            type = "list",
            member = M.FilteredLogEvent,
        },
        searchedLogStreams = {
            type = "list",
            member = M.SearchedLogStream,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FlattenedElement = {
    FIRST = "first",
    LAST = "last",
}

M.GetDataProtectionPolicyInput = {
    type = "structure",
    id = "GetDataProtectionPolicyInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDataProtectionPolicyOutput = {
    type = "structure",
    id = "GetDataProtectionPolicyOutput",
    members = {
        logGroupIdentifier = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "long",
        },
    },
}

M.GetDeliveryInput = {
    type = "structure",
    id = "GetDeliveryInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeliveryOutput = {
    type = "structure",
    id = "GetDeliveryOutput",
    members = {
        delivery = M.Delivery,
    },
}

M.GetDeliveryDestinationInput = {
    type = "structure",
    id = "GetDeliveryDestinationInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeliveryDestinationOutput = {
    type = "structure",
    id = "GetDeliveryDestinationOutput",
    members = {
        deliveryDestination = M.DeliveryDestination,
    },
}

M.GetDeliveryDestinationPolicyInput = {
    type = "structure",
    id = "GetDeliveryDestinationPolicyInput",
    members = {
        deliveryDestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Policy = {
    type = "structure",
    id = "Policy",
    members = {
        deliveryDestinationPolicy = {
            type = "string",
        },
    },
}

M.GetDeliveryDestinationPolicyOutput = {
    type = "structure",
    id = "GetDeliveryDestinationPolicyOutput",
    members = {
        policy = M.Policy,
    },
}

M.GetDeliverySourceInput = {
    type = "structure",
    id = "GetDeliverySourceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeliverySourceOutput = {
    type = "structure",
    id = "GetDeliverySourceOutput",
    members = {
        deliverySource = M.DeliverySource,
    },
}

M.GetIntegrationInput = {
    type = "structure",
    id = "GetIntegrationInput",
    members = {
        integrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenSearchResourceStatusType = {
    ACTIVE = "ACTIVE",
    NOT_FOUND = "NOT_FOUND",
    ERROR = "ERROR",
}

M.OpenSearchResourceStatus = {
    type = "structure",
    id = "OpenSearchResourceStatus",
    members = {
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.OpenSearchDataAccessPolicy = {
    type = "structure",
    id = "OpenSearchDataAccessPolicy",
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchApplication = {
    type = "structure",
    id = "OpenSearchApplication",
    members = {
        applicationEndpoint = {
            type = "string",
        },
        applicationArn = {
            type = "string",
        },
        applicationId = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchCollection = {
    type = "structure",
    id = "OpenSearchCollection",
    members = {
        collectionEndpoint = {
            type = "string",
        },
        collectionArn = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchDataSource = {
    type = "structure",
    id = "OpenSearchDataSource",
    members = {
        dataSourceName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchEncryptionPolicy = {
    type = "structure",
    id = "OpenSearchEncryptionPolicy",
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchLifecyclePolicy = {
    type = "structure",
    id = "OpenSearchLifecyclePolicy",
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchNetworkPolicy = {
    type = "structure",
    id = "OpenSearchNetworkPolicy",
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchWorkspace = {
    type = "structure",
    id = "OpenSearchWorkspace",
    members = {
        workspaceId = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchIntegrationDetails = {
    type = "structure",
    id = "OpenSearchIntegrationDetails",
    members = {
        dataSource = M.OpenSearchDataSource,
        application = M.OpenSearchApplication,
        collection = M.OpenSearchCollection,
        workspace = M.OpenSearchWorkspace,
        encryptionPolicy = M.OpenSearchEncryptionPolicy,
        networkPolicy = M.OpenSearchNetworkPolicy,
        accessPolicy = M.OpenSearchDataAccessPolicy,
        lifecyclePolicy = M.OpenSearchLifecyclePolicy,
    },
}

M.IntegrationDetails = {
    type = "union",
    id = "IntegrationDetails",
    members = {
        openSearchIntegrationDetails = M.OpenSearchIntegrationDetails,
    },
}

M.IntegrationStatus = {
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.IntegrationType = {
    OPENSEARCH = "OPENSEARCH",
}

M.GetIntegrationOutput = {
    type = "structure",
    id = "GetIntegrationOutput",
    members = {
        integrationName = {
            type = "string",
        },
        integrationType = {
            type = "string",
        },
        integrationStatus = {
            type = "string",
        },
        integrationDetails = M.IntegrationDetails,
    },
}

M.GetLogAnomalyDetectorInput = {
    type = "structure",
    id = "GetLogAnomalyDetectorInput",
    members = {
        anomalyDetectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLogAnomalyDetectorOutput = {
    type = "structure",
    id = "GetLogAnomalyDetectorOutput",
    members = {
        detectorName = {
            type = "string",
        },
        logGroupArnList = {
            type = "list",
            member = { type = "string" },
        },
        evaluationFrequency = {
            type = "string",
        },
        filterPattern = {
            type = "string",
        },
        anomalyDetectorStatus = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        creationTimeStamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTimeStamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        anomalyVisibilityTime = {
            type = "long",
        },
    },
}

M.GetLogEventsInput = {
    type = "structure",
    id = "GetLogEventsInput",
    members = {
        logGroupName = {
            type = "string",
        },
        logGroupIdentifier = {
            type = "string",
        },
        logStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "long",
        },
        endTime = {
            type = "long",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        startFromHead = {
            type = "boolean",
        },
        unmask = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.OutputLogEvent = {
    type = "structure",
    id = "OutputLogEvent",
    members = {
        timestamp = {
            type = "long",
        },
        message = {
            type = "string",
        },
        ingestionTime = {
            type = "long",
        },
    },
}

M.GetLogEventsOutput = {
    type = "structure",
    id = "GetLogEventsOutput",
    members = {
        events = {
            type = "list",
            member = M.OutputLogEvent,
        },
        nextForwardToken = {
            type = "string",
        },
        nextBackwardToken = {
            type = "string",
        },
    },
}

M.GetLogFieldsInput = {
    type = "structure",
    id = "GetLogFieldsInput",
    members = {
        dataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLogGroupFieldsInput = {
    type = "structure",
    id = "GetLogGroupFieldsInput",
    members = {
        logGroupName = {
            type = "string",
        },
        time = {
            type = "long",
        },
        logGroupIdentifier = {
            type = "string",
        },
    },
}

M.LogGroupField = {
    type = "structure",
    id = "LogGroupField",
    members = {
        name = {
            type = "string",
        },
        percent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetLogGroupFieldsOutput = {
    type = "structure",
    id = "GetLogGroupFieldsOutput",
    members = {
        logGroupFields = {
            type = "list",
            member = M.LogGroupField,
        },
    },
}

M.GetLogObjectInput = {
    type = "structure",
    id = "GetLogObjectInput",
    members = {
        unmask = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        logObjectPointer = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalStreamingException = {
    type = "structure",
    id = "InternalStreamingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetLogObjectResponseStream = {
    type = "union",
    id = "GetLogObjectResponseStream",
    members = {
        fields = M.FieldsData,
        InternalStreamingException = M.InternalStreamingException,
    },
}

M.GetLogObjectOutput = {
    type = "structure",
    id = "GetLogObjectOutput",
    members = {
        fieldStream = M.GetLogObjectResponseStream,
    },
}

M.GetLogRecordInput = {
    type = "structure",
    id = "GetLogRecordInput",
    members = {
        logRecordPointer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unmask = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetLogRecordOutput = {
    type = "structure",
    id = "GetLogRecordOutput",
    members = {
        logRecord = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetLookupTableInput = {
    type = "structure",
    id = "GetLookupTableInput",
    members = {
        lookupTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLookupTableOutput = {
    type = "structure",
    id = "GetLookupTableOutput",
    members = {
        lookupTableArn = {
            type = "string",
        },
        lookupTableName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tableBody = {
            type = "string",
        },
        sizeBytes = {
            type = "long",
        },
        lastUpdatedTime = {
            type = "long",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.GetQueryResultsInput = {
    type = "structure",
    id = "GetQueryResultsInput",
    members = {
        queryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxItems = {
            type = "integer",
        },
    },
}

M.ResultField = {
    type = "structure",
    id = "ResultField",
    members = {
        field = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.QueryStatistics = {
    type = "structure",
    id = "QueryStatistics",
    members = {
        recordsMatched = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        recordsScanned = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedRecordsSkipped = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        bytesScanned = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        estimatedBytesSkipped = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        logGroupsScanned = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetQueryResultsOutput = {
    type = "structure",
    id = "GetQueryResultsOutput",
    members = {
        queryLanguage = {
            type = "string",
        },
        results = {
            type = "list",
            member = { type = "list" },
        },
        statistics = M.QueryStatistics,
        status = {
            type = "string",
        },
        encryptionKey = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetScheduledQueryInput = {
    type = "structure",
    id = "GetScheduledQueryInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetScheduledQueryOutput = {
    type = "structure",
    id = "GetScheduledQueryOutput",
    members = {
        scheduledQueryArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        queryLanguage = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        scheduleExpression = {
            type = "string",
        },
        timezone = {
            type = "string",
        },
        startTimeOffset = {
            type = "long",
        },
        destinationConfiguration = M.DestinationConfiguration,
        state = {
            type = "string",
        },
        lastTriggeredTime = {
            type = "long",
        },
        lastExecutionStatus = {
            type = "string",
        },
        scheduleStartTime = {
            type = "long",
        },
        scheduleEndTime = {
            type = "long",
        },
        executionRoleArn = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
        lastUpdatedTime = {
            type = "long",
        },
    },
}

M.GetScheduledQueryHistoryInput = {
    type = "structure",
    id = "GetScheduledQueryHistoryInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "long",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "long",
            traits = {
                required = true,
            },
        },
        executionStatuses = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ScheduledQueryDestinationType = {
    S3 = "S3",
}

M.ScheduledQueryDestination = {
    type = "structure",
    id = "ScheduledQueryDestination",
    members = {
        destinationType = {
            type = "string",
        },
        destinationIdentifier = {
            type = "string",
        },
        status = {
            type = "string",
        },
        processedIdentifier = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.TriggerHistoryRecord = {
    type = "structure",
    id = "TriggerHistoryRecord",
    members = {
        queryId = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
        triggeredTimestamp = {
            type = "long",
        },
        errorMessage = {
            type = "string",
        },
        destinations = {
            type = "list",
            member = M.ScheduledQueryDestination,
        },
    },
}

M.GetScheduledQueryHistoryOutput = {
    type = "structure",
    id = "GetScheduledQueryHistoryOutput",
    members = {
        name = {
            type = "string",
        },
        scheduledQueryArn = {
            type = "string",
        },
        triggerHistory = {
            type = "list",
            member = M.TriggerHistoryRecord,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetTransformerInput = {
    type = "structure",
    id = "GetTransformerInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Grok = {
    type = "structure",
    id = "Grok",
    members = {
        source = {
            type = "string",
        },
        match = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListToMap = {
    type = "structure",
    id = "ListToMap",
    members = {
        source = {
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
        valueKey = {
            type = "string",
        },
        target = {
            type = "string",
        },
        flatten = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        flattenedElement = {
            type = "string",
        },
    },
}

M.LowerCaseString = {
    type = "structure",
    id = "LowerCaseString",
    members = {
        withKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.MoveKeyEntry = {
    type = "structure",
    id = "MoveKeyEntry",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        overwriteIfExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.MoveKeys = {
    type = "structure",
    id = "MoveKeys",
    members = {
        entries = {
            type = "list",
            member = M.MoveKeyEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.ParseCloudfront = {
    type = "structure",
    id = "ParseCloudfront",
    members = {
        source = {
            type = "string",
        },
    },
}

M.ParseJSON = {
    type = "structure",
    id = "ParseJSON",
    members = {
        source = {
            type = "string",
        },
        destination = {
            type = "string",
        },
    },
}

M.ParseKeyValue = {
    type = "structure",
    id = "ParseKeyValue",
    members = {
        source = {
            type = "string",
        },
        destination = {
            type = "string",
        },
        fieldDelimiter = {
            type = "string",
        },
        keyValueDelimiter = {
            type = "string",
        },
        keyPrefix = {
            type = "string",
        },
        nonMatchValue = {
            type = "string",
        },
        overwriteIfExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ParsePostgres = {
    type = "structure",
    id = "ParsePostgres",
    members = {
        source = {
            type = "string",
        },
    },
}

M.ParseRoute53 = {
    type = "structure",
    id = "ParseRoute53",
    members = {
        source = {
            type = "string",
        },
    },
}

M.OCSFVersion = {
    V1_1 = "V1.1",
    V1_5 = "V1.5",
}

M.ParseToOCSF = {
    type = "structure",
    id = "ParseToOCSF",
    members = {
        source = {
            type = "string",
        },
        eventSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ocsfVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mappingVersion = {
            type = "string",
        },
    },
}

M.ParseVPC = {
    type = "structure",
    id = "ParseVPC",
    members = {
        source = {
            type = "string",
        },
    },
}

M.ParseWAF = {
    type = "structure",
    id = "ParseWAF",
    members = {
        source = {
            type = "string",
        },
    },
}

M.RenameKeyEntry = {
    type = "structure",
    id = "RenameKeyEntry",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        renameTo = {
            type = "string",
            traits = {
                required = true,
            },
        },
        overwriteIfExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RenameKeys = {
    type = "structure",
    id = "RenameKeys",
    members = {
        entries = {
            type = "list",
            member = M.RenameKeyEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.SplitStringEntry = {
    type = "structure",
    id = "SplitStringEntry",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        delimiter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SplitString = {
    type = "structure",
    id = "SplitString",
    members = {
        entries = {
            type = "list",
            member = M.SplitStringEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.SubstituteStringEntry = {
    type = "structure",
    id = "SubstituteStringEntry",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        from = {
            type = "string",
            traits = {
                required = true,
            },
        },
        to = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubstituteString = {
    type = "structure",
    id = "SubstituteString",
    members = {
        entries = {
            type = "list",
            member = M.SubstituteStringEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.TrimString = {
    type = "structure",
    id = "TrimString",
    members = {
        withKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Type = {
    BOOLEAN = "boolean",
    INTEGER = "integer",
    DOUBLE = "double",
    STRING = "string",
}

M.TypeConverterEntry = {
    type = "structure",
    id = "TypeConverterEntry",
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
    },
}

M.TypeConverter = {
    type = "structure",
    id = "TypeConverter",
    members = {
        entries = {
            type = "list",
            member = M.TypeConverterEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.UpperCaseString = {
    type = "structure",
    id = "UpperCaseString",
    members = {
        withKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Processor = {
    type = "structure",
    id = "Processor",
    members = {
        addKeys = M.AddKeys,
        copyValue = M.CopyValue,
        csv = M.CSV,
        dateTimeConverter = M.DateTimeConverter,
        deleteKeys = M.DeleteKeys,
        grok = M.Grok,
        listToMap = M.ListToMap,
        lowerCaseString = M.LowerCaseString,
        moveKeys = M.MoveKeys,
        parseCloudfront = M.ParseCloudfront,
        parseJSON = M.ParseJSON,
        parseKeyValue = M.ParseKeyValue,
        parseRoute53 = M.ParseRoute53,
        parseToOCSF = M.ParseToOCSF,
        parsePostgres = M.ParsePostgres,
        parseVPC = M.ParseVPC,
        parseWAF = M.ParseWAF,
        renameKeys = M.RenameKeys,
        splitString = M.SplitString,
        substituteString = M.SubstituteString,
        trimString = M.TrimString,
        typeConverter = M.TypeConverter,
        upperCaseString = M.UpperCaseString,
    },
}

M.GetTransformerOutput = {
    type = "structure",
    id = "GetTransformerOutput",
    members = {
        logGroupIdentifier = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
        lastModifiedTime = {
            type = "long",
        },
        transformerConfig = {
            type = "list",
            member = M.Processor,
        },
    },
}

M.InputLogEvent = {
    type = "structure",
    id = "InputLogEvent",
    members = {
        timestamp = {
            type = "long",
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

M.IntegrationSummary = {
    type = "structure",
    id = "IntegrationSummary",
    members = {
        integrationName = {
            type = "string",
        },
        integrationType = {
            type = "string",
        },
        integrationStatus = {
            type = "string",
        },
    },
}

M.InvalidSequenceTokenException = {
    type = "structure",
    id = "InvalidSequenceTokenException",
    error = "client",
    members = {
        expectedSequenceToken = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ListAggregateLogGroupSummariesGroupBy = {
    DATA_SOURCE_NAME_TYPE_AND_FORMAT = "DATA_SOURCE_NAME_TYPE_AND_FORMAT",
    DATA_SOURCE_NAME_AND_TYPE = "DATA_SOURCE_NAME_AND_TYPE",
}

M.ListAggregateLogGroupSummariesInput = {
    type = "structure",
    id = "ListAggregateLogGroupSummariesInput",
    members = {
        accountIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        includeLinkedAccounts = {
            type = "boolean",
        },
        logGroupClass = {
            type = "string",
        },
        logGroupNamePattern = {
            type = "string",
        },
        dataSources = {
            type = "list",
            member = M.DataSourceFilter,
        },
        groupBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.ListAggregateLogGroupSummariesOutput = {
    type = "structure",
    id = "ListAggregateLogGroupSummariesOutput",
    members = {
        aggregateLogGroupSummaries = {
            type = "list",
            member = M.AggregateLogGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SuppressionState = {
    SUPPRESSED = "SUPPRESSED",
    UNSUPPRESSED = "UNSUPPRESSED",
}

M.ListAnomaliesInput = {
    type = "structure",
    id = "ListAnomaliesInput",
    members = {
        anomalyDetectorArn = {
            type = "string",
        },
        suppressionState = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAnomaliesOutput = {
    type = "structure",
    id = "ListAnomaliesOutput",
    members = {
        anomalies = {
            type = "list",
            member = M.Anomaly,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntegrationsInput = {
    type = "structure",
    id = "ListIntegrationsInput",
    members = {
        integrationNamePrefix = {
            type = "string",
        },
        integrationType = {
            type = "string",
        },
        integrationStatus = {
            type = "string",
        },
    },
}

M.ListIntegrationsOutput = {
    type = "structure",
    id = "ListIntegrationsOutput",
    members = {
        integrationSummaries = {
            type = "list",
            member = M.IntegrationSummary,
        },
    },
}

M.ListLogAnomalyDetectorsInput = {
    type = "structure",
    id = "ListLogAnomalyDetectorsInput",
    members = {
        filterLogGroupArn = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLogAnomalyDetectorsOutput = {
    type = "structure",
    id = "ListLogAnomalyDetectorsOutput",
    members = {
        anomalyDetectors = {
            type = "list",
            member = M.AnomalyDetector,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TagFilter = {
    type = "structure",
    id = "TagFilter",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListLogGroupsInput = {
    type = "structure",
    id = "ListLogGroupsInput",
    members = {
        logGroupNamePattern = {
            type = "string",
        },
        logGroupClass = {
            type = "string",
        },
        includeLinkedAccounts = {
            type = "boolean",
        },
        accountIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
        dataSources = {
            type = "list",
            member = M.DataSourceFilter,
        },
        fieldIndexNames = {
            type = "list",
            member = { type = "string" },
        },
        logGroupTags = {
            type = "list",
            member = M.TagFilter,
        },
    },
}

M.LogGroupSummary = {
    type = "structure",
    id = "LogGroupSummary",
    members = {
        logGroupName = {
            type = "string",
        },
        logGroupArn = {
            type = "string",
        },
        logGroupClass = {
            type = "string",
        },
    },
}

M.ListLogGroupsOutput = {
    type = "structure",
    id = "ListLogGroupsOutput",
    members = {
        logGroups = {
            type = "list",
            member = M.LogGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListLogGroupsForQueryInput = {
    type = "structure",
    id = "ListLogGroupsForQueryInput",
    members = {
        queryId = {
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

M.ListLogGroupsForQueryOutput = {
    type = "structure",
    id = "ListLogGroupsForQueryOutput",
    members = {
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListScheduledQueriesInput = {
    type = "structure",
    id = "ListScheduledQueriesInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.ScheduledQuerySummary = {
    type = "structure",
    id = "ScheduledQuerySummary",
    members = {
        scheduledQueryArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        state = {
            type = "string",
        },
        lastTriggeredTime = {
            type = "long",
        },
        lastExecutionStatus = {
            type = "string",
        },
        scheduleExpression = {
            type = "string",
        },
        timezone = {
            type = "string",
        },
        destinationConfiguration = M.DestinationConfiguration,
        creationTime = {
            type = "long",
        },
        lastUpdatedTime = {
            type = "long",
        },
    },
}

M.ListScheduledQueriesOutput = {
    type = "structure",
    id = "ListScheduledQueriesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        scheduledQueries = {
            type = "list",
            member = M.ScheduledQuerySummary,
        },
    },
}

M.ListSourcesForS3TableIntegrationInput = {
    type = "structure",
    id = "ListSourcesForS3TableIntegrationInput",
    members = {
        integrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.S3TableIntegrationSourceStatus = {
    ACTIVE = "ACTIVE",
    UNHEALTHY = "UNHEALTHY",
    FAILED = "FAILED",
    DATA_SOURCE_DELETE_IN_PROGRESS = "DATA_SOURCE_DELETE_IN_PROGRESS",
}

M.S3TableIntegrationSource = {
    type = "structure",
    id = "S3TableIntegrationSource",
    members = {
        identifier = {
            type = "string",
        },
        dataSource = M.DataSource,
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createdTimeStamp = {
            type = "long",
        },
        parentSourceIdentifier = {
            type = "string",
        },
    },
}

M.ListSourcesForS3TableIntegrationOutput = {
    type = "structure",
    id = "ListSourcesForS3TableIntegrationOutput",
    members = {
        sources = {
            type = "list",
            member = M.S3TableIntegrationSource,
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
        },
    },
}

M.ListTagsLogGroupInput = {
    type = "structure",
    id = "ListTagsLogGroupInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsLogGroupOutput = {
    type = "structure",
    id = "ListTagsLogGroupOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LiveTailSessionLogEvent = {
    type = "structure",
    id = "LiveTailSessionLogEvent",
    members = {
        logStreamName = {
            type = "string",
        },
        logGroupIdentifier = {
            type = "string",
        },
        message = {
            type = "string",
        },
        timestamp = {
            type = "long",
        },
        ingestionTime = {
            type = "long",
        },
    },
}

M.LiveTailSessionMetadata = {
    type = "structure",
    id = "LiveTailSessionMetadata",
    members = {
        sampled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.LiveTailSessionStart = {
    type = "structure",
    id = "LiveTailSessionStart",
    members = {
        requestId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        logStreamNames = {
            type = "list",
            member = { type = "string" },
        },
        logStreamNamePrefixes = {
            type = "list",
            member = { type = "string" },
        },
        logEventFilterPattern = {
            type = "string",
        },
    },
}

M.LiveTailSessionUpdate = {
    type = "structure",
    id = "LiveTailSessionUpdate",
    members = {
        sessionMetadata = M.LiveTailSessionMetadata,
        sessionResults = {
            type = "list",
            member = M.LiveTailSessionLogEvent,
        },
    },
}

M.PutAccountPolicyInput = {
    type = "structure",
    id = "PutAccountPolicyInput",
    members = {
        policyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "string",
        },
        selectionCriteria = {
            type = "string",
        },
    },
}

M.PutAccountPolicyOutput = {
    type = "structure",
    id = "PutAccountPolicyOutput",
    members = {
        accountPolicy = M.AccountPolicy,
    },
}

M.PutBearerTokenAuthenticationInput = {
    type = "structure",
    id = "PutBearerTokenAuthenticationInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bearerTokenAuthenticationEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.PutBearerTokenAuthenticationOutput = {
    type = "structure",
    id = "PutBearerTokenAuthenticationOutput",
}

M.PutDataProtectionPolicyInput = {
    type = "structure",
    id = "PutDataProtectionPolicyInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDataProtectionPolicyOutput = {
    type = "structure",
    id = "PutDataProtectionPolicyOutput",
    members = {
        logGroupIdentifier = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "long",
        },
    },
}

M.PutDeliveryDestinationInput = {
    type = "structure",
    id = "PutDeliveryDestinationInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputFormat = {
            type = "string",
        },
        deliveryDestinationConfiguration = M.DeliveryDestinationConfiguration,
        deliveryDestinationType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutDeliveryDestinationOutput = {
    type = "structure",
    id = "PutDeliveryDestinationOutput",
    members = {
        deliveryDestination = M.DeliveryDestination,
    },
}

M.PutDeliveryDestinationPolicyInput = {
    type = "structure",
    id = "PutDeliveryDestinationPolicyInput",
    members = {
        deliveryDestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deliveryDestinationPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDeliveryDestinationPolicyOutput = {
    type = "structure",
    id = "PutDeliveryDestinationPolicyOutput",
    members = {
        policy = M.Policy,
    },
}

M.PutDeliverySourceInput = {
    type = "structure",
    id = "PutDeliverySourceInput",
    members = {
        name = {
            type = "string",
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
        logType = {
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

M.PutDeliverySourceOutput = {
    type = "structure",
    id = "PutDeliverySourceOutput",
    members = {
        deliverySource = M.DeliverySource,
    },
}

M.PutDestinationInput = {
    type = "structure",
    id = "PutDestinationInput",
    members = {
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetArn = {
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

M.PutDestinationOutput = {
    type = "structure",
    id = "PutDestinationOutput",
    members = {
        destination = M.Destination,
    },
}

M.PutDestinationPolicyInput = {
    type = "structure",
    id = "PutDestinationPolicyInput",
    members = {
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceUpdate = {
            type = "boolean",
        },
    },
}

M.PutDestinationPolicyOutput = {
    type = "structure",
    id = "PutDestinationPolicyOutput",
}

M.PutIndexPolicyInput = {
    type = "structure",
    id = "PutIndexPolicyInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutIndexPolicyOutput = {
    type = "structure",
    id = "PutIndexPolicyOutput",
    members = {
        indexPolicy = M.IndexPolicy,
    },
}

M.OpenSearchResourceConfig = {
    type = "structure",
    id = "OpenSearchResourceConfig",
    members = {
        kmsKeyArn = {
            type = "string",
        },
        dataSourceRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardViewerPrincipals = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        applicationArn = {
            type = "string",
        },
        retentionDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceConfig = {
    type = "union",
    id = "ResourceConfig",
    members = {
        openSearchResourceConfig = M.OpenSearchResourceConfig,
    },
}

M.PutIntegrationInput = {
    type = "structure",
    id = "PutIntegrationInput",
    members = {
        integrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceConfig }),
        integrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutIntegrationOutput = {
    type = "structure",
    id = "PutIntegrationOutput",
    members = {
        integrationName = {
            type = "string",
        },
        integrationStatus = {
            type = "string",
        },
    },
}

M.PutLogEventsInput = {
    type = "structure",
    id = "PutLogEventsInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logEvents = {
            type = "list",
            member = M.InputLogEvent,
            traits = {
                required = true,
            },
        },
        sequenceToken = {
            type = "string",
        },
        entity = M.Entity,
    },
}

M.RejectedEntityInfo = {
    type = "structure",
    id = "RejectedEntityInfo",
    members = {
        errorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectedLogEventsInfo = {
    type = "structure",
    id = "RejectedLogEventsInfo",
    members = {
        tooNewLogEventStartIndex = {
            type = "integer",
        },
        tooOldLogEventEndIndex = {
            type = "integer",
        },
        expiredLogEventEndIndex = {
            type = "integer",
        },
    },
}

M.PutLogEventsOutput = {
    type = "structure",
    id = "PutLogEventsOutput",
    members = {
        nextSequenceToken = {
            type = "string",
        },
        rejectedLogEventsInfo = M.RejectedLogEventsInfo,
        rejectedEntityInfo = M.RejectedEntityInfo,
    },
}

M.UnrecognizedClientException = {
    type = "structure",
    id = "UnrecognizedClientException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutLogGroupDeletionProtectionInput = {
    type = "structure",
    id = "PutLogGroupDeletionProtectionInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLogGroupDeletionProtectionOutput = {
    type = "structure",
    id = "PutLogGroupDeletionProtectionOutput",
}

M.PutMetricFilterInput = {
    type = "structure",
    id = "PutMetricFilterInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricTransformations = {
            type = "list",
            member = M.MetricTransformation,
            traits = {
                required = true,
            },
        },
        applyOnTransformedLogs = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFieldDimensions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutMetricFilterOutput = {
    type = "structure",
    id = "PutMetricFilterOutput",
}

M.PutQueryDefinitionInput = {
    type = "structure",
    id = "PutQueryDefinitionInput",
    members = {
        queryLanguage = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryDefinitionId = {
            type = "string",
        },
        logGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        parameters = {
            type = "list",
            member = M.QueryParameter,
        },
    },
}

M.PutQueryDefinitionOutput = {
    type = "structure",
    id = "PutQueryDefinitionOutput",
    members = {
        queryDefinitionId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        policyName = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        expectedRevisionId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        resourcePolicy = M.ResourcePolicy,
        revisionId = {
            type = "string",
        },
    },
}

M.PutRetentionPolicyInput = {
    type = "structure",
    id = "PutRetentionPolicyInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retentionInDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRetentionPolicyOutput = {
    type = "structure",
    id = "PutRetentionPolicyOutput",
}

M.PutSubscriptionFilterInput = {
    type = "structure",
    id = "PutSubscriptionFilterInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        distribution = {
            type = "string",
        },
        applyOnTransformedLogs = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutSubscriptionFilterOutput = {
    type = "structure",
    id = "PutSubscriptionFilterOutput",
}

M.PutTransformerInput = {
    type = "structure",
    id = "PutTransformerInput",
    members = {
        logGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transformerConfig = {
            type = "list",
            member = M.Processor,
            traits = {
                required = true,
            },
        },
    },
}

M.PutTransformerOutput = {
    type = "structure",
    id = "PutTransformerOutput",
}

M.StartLiveTailInput = {
    type = "structure",
    id = "StartLiveTailInput",
    members = {
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        logStreamNames = {
            type = "list",
            member = { type = "string" },
        },
        logStreamNamePrefixes = {
            type = "list",
            member = { type = "string" },
        },
        logEventFilterPattern = {
            type = "string",
        },
    },
}

M.SessionStreamingException = {
    type = "structure",
    id = "SessionStreamingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SessionTimeoutException = {
    type = "structure",
    id = "SessionTimeoutException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartLiveTailResponseStream = {
    type = "union",
    id = "StartLiveTailResponseStream",
    members = {
        sessionStart = M.LiveTailSessionStart,
        sessionUpdate = M.LiveTailSessionUpdate,
        SessionTimeoutException = M.SessionTimeoutException,
        SessionStreamingException = M.SessionStreamingException,
    },
}

M.StartLiveTailOutput = {
    type = "structure",
    id = "StartLiveTailOutput",
    members = {
        responseStream = M.StartLiveTailResponseStream,
    },
}

M.QueryCompileErrorLocation = {
    type = "structure",
    id = "QueryCompileErrorLocation",
    members = {
        startCharOffset = {
            type = "integer",
        },
        endCharOffset = {
            type = "integer",
        },
    },
}

M.QueryCompileError = {
    type = "structure",
    id = "QueryCompileError",
    members = {
        location = M.QueryCompileErrorLocation,
        message = {
            type = "string",
        },
    },
}

M.MalformedQueryException = {
    type = "structure",
    id = "MalformedQueryException",
    error = "client",
    members = {
        queryCompileError = M.QueryCompileError,
        message = {
            type = "string",
        },
    },
}

M.StartQueryInput = {
    type = "structure",
    id = "StartQueryInput",
    members = {
        queryLanguage = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        logGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        startTime = {
            type = "long",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "long",
            traits = {
                required = true,
            },
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limit = {
            type = "integer",
        },
    },
}

M.StartQueryOutput = {
    type = "structure",
    id = "StartQueryOutput",
    members = {
        queryId = {
            type = "string",
        },
    },
}

M.StopQueryInput = {
    type = "structure",
    id = "StopQueryInput",
    members = {
        queryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopQueryOutput = {
    type = "structure",
    id = "StopQueryOutput",
    members = {
        success = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.TagLogGroupInput = {
    type = "structure",
    id = "TagLogGroupInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
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

M.TagLogGroupOutput = {
    type = "structure",
    id = "TagLogGroupOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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

M.TestMetricFilterInput = {
    type = "structure",
    id = "TestMetricFilterInput",
    members = {
        filterPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logEventMessages = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.MetricFilterMatchRecord = {
    type = "structure",
    id = "MetricFilterMatchRecord",
    members = {
        eventNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        eventMessage = {
            type = "string",
        },
        extractedValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TestMetricFilterOutput = {
    type = "structure",
    id = "TestMetricFilterOutput",
    members = {
        matches = {
            type = "list",
            member = M.MetricFilterMatchRecord,
        },
    },
}

M.TestTransformerInput = {
    type = "structure",
    id = "TestTransformerInput",
    members = {
        transformerConfig = {
            type = "list",
            member = M.Processor,
            traits = {
                required = true,
            },
        },
        logEventMessages = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TransformedLogRecord = {
    type = "structure",
    id = "TransformedLogRecord",
    members = {
        eventNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        eventMessage = {
            type = "string",
        },
        transformedEventMessage = {
            type = "string",
        },
    },
}

M.TestTransformerOutput = {
    type = "structure",
    id = "TestTransformerOutput",
    members = {
        transformedLogs = {
            type = "list",
            member = M.TransformedLogRecord,
        },
    },
}

M.UntagLogGroupInput = {
    type = "structure",
    id = "UntagLogGroupInput",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagLogGroupOutput = {
    type = "structure",
    id = "UntagLogGroupOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
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

M.SuppressionUnit = {
    SECONDS = "SECONDS",
    MINUTES = "MINUTES",
    HOURS = "HOURS",
}

M.SuppressionPeriod = {
    type = "structure",
    id = "SuppressionPeriod",
    members = {
        value = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        suppressionUnit = {
            type = "string",
        },
    },
}

M.SuppressionType = {
    LIMITED = "LIMITED",
    INFINITE = "INFINITE",
}

M.UpdateAnomalyInput = {
    type = "structure",
    id = "UpdateAnomalyInput",
    members = {
        anomalyId = {
            type = "string",
        },
        patternId = {
            type = "string",
        },
        anomalyDetectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        suppressionType = {
            type = "string",
        },
        suppressionPeriod = M.SuppressionPeriod,
        baseline = {
            type = "boolean",
        },
    },
}

M.UpdateAnomalyOutput = {
    type = "structure",
    id = "UpdateAnomalyOutput",
}

M.UpdateDeliveryConfigurationInput = {
    type = "structure",
    id = "UpdateDeliveryConfigurationInput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordFields = {
            type = "list",
            member = { type = "string" },
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = M.S3DeliveryConfiguration,
    },
}

M.UpdateDeliveryConfigurationOutput = {
    type = "structure",
    id = "UpdateDeliveryConfigurationOutput",
}

M.UpdateLogAnomalyDetectorInput = {
    type = "structure",
    id = "UpdateLogAnomalyDetectorInput",
    members = {
        anomalyDetectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluationFrequency = {
            type = "string",
        },
        filterPattern = {
            type = "string",
        },
        anomalyVisibilityTime = {
            type = "long",
        },
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLogAnomalyDetectorOutput = {
    type = "structure",
    id = "UpdateLogAnomalyDetectorOutput",
}

M.UpdateLookupTableInput = {
    type = "structure",
    id = "UpdateLookupTableInput",
    members = {
        lookupTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tableBody = {
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

M.UpdateLookupTableOutput = {
    type = "structure",
    id = "UpdateLookupTableOutput",
    members = {
        lookupTableArn = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "long",
        },
    },
}

M.UpdateScheduledQueryInput = {
    type = "structure",
    id = "UpdateScheduledQueryInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        queryLanguage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        scheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timezone = {
            type = "string",
        },
        startTimeOffset = {
            type = "long",
        },
        destinationConfiguration = M.DestinationConfiguration,
        scheduleStartTime = {
            type = "long",
        },
        scheduleEndTime = {
            type = "long",
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
    },
}

M.UpdateScheduledQueryOutput = {
    type = "structure",
    id = "UpdateScheduledQueryOutput",
    members = {
        scheduledQueryArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        queryLanguage = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        logGroupIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        scheduleExpression = {
            type = "string",
        },
        timezone = {
            type = "string",
        },
        startTimeOffset = {
            type = "long",
        },
        destinationConfiguration = M.DestinationConfiguration,
        state = {
            type = "string",
        },
        lastTriggeredTime = {
            type = "long",
        },
        lastExecutionStatus = {
            type = "string",
        },
        scheduleStartTime = {
            type = "long",
        },
        scheduleEndTime = {
            type = "long",
        },
        executionRoleArn = {
            type = "string",
        },
        creationTime = {
            type = "long",
        },
        lastUpdatedTime = {
            type = "long",
        },
    },
}

M.LogFieldType = {
    type = "structure",
    id = "LogFieldType",
    members = {
        type = {
            type = "string",
        },
        element = M.LogFieldType,
        fields = {
            type = "list",
            member = M.LogFieldsListItem,
        },
    },
}

M.LogFieldsListItem = {
    type = "structure",
    id = "LogFieldsListItem",
    members = {
        logFieldName = {
            type = "string",
        },
        logFieldType = M.LogFieldType,
    },
}

M.GetLogFieldsOutput = {
    type = "structure",
    id = "GetLogFieldsOutput",
    members = {
        logFields = {
            type = "list",
            member = M.LogFieldsListItem,
        },
    },
}

return M
