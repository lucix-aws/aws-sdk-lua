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
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationAbortedException = {
    type = "structure",
    error = "client",
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

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DataSource = {
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
        },
    },
}

M.AssociateSourceToS3TableIntegrationInput = {
    type = "structure",
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
    members = {
        identifier = {
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

M.CancelExportTaskInput = {
    type = "structure",
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
}

M.InvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelImportTaskInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyValueEntry = {
    type = "structure",
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
    members = {
        delivery = M.Delivery,
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

M.CreateExportTaskInput = {
    type = "structure",
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
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImportFilter = {
    type = "structure",
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
}

M.CreateLogStreamInput = {
    type = "structure",
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
}

M.CreateLookupTableInput = {
    type = "structure",
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
}

M.DeleteDataProtectionPolicyInput = {
    type = "structure",
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
}

M.DeleteDeliveryInput = {
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

M.DeleteDeliveryOutput = {
    type = "structure",
}

M.DeleteDeliveryDestinationInput = {
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

M.DeleteDeliveryDestinationOutput = {
    type = "structure",
}

M.DeleteDeliveryDestinationPolicyInput = {
    type = "structure",
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
}

M.DeleteDeliverySourceInput = {
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

M.DeleteDeliverySourceOutput = {
    type = "structure",
}

M.DeleteDestinationInput = {
    type = "structure",
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
}

M.DeleteIndexPolicyInput = {
    type = "structure",
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
}

M.DeleteIntegrationInput = {
    type = "structure",
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
}

M.DeleteKeys = {
    type = "structure",
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
}

M.DeleteLogGroupInput = {
    type = "structure",
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
}

M.DeleteLogStreamInput = {
    type = "structure",
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
}

M.DeleteLookupTableInput = {
    type = "structure",
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
}

M.DeleteMetricFilterInput = {
    type = "structure",
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
}

M.DeleteQueryDefinitionInput = {
    type = "structure",
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
}

M.DeleteRetentionPolicyInput = {
    type = "structure",
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
}

M.DeleteScheduledQueryInput = {
    type = "structure",
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
}

M.DeleteSubscriptionFilterInput = {
    type = "structure",
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
}

M.DeleteTransformerInput = {
    type = "structure",
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
}

M.DeliveryDestinationConfiguration = {
    type = "structure",
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
}

M.DisassociateSourceFromS3TableIntegrationInput = {
    type = "structure",
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
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.Entity = {
    type = "structure",
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
    members = {
        data = {
            type = "blob",
        },
    },
}

M.FilteredLogEvent = {
    type = "structure",
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
    members = {
        delivery = M.Delivery,
    },
}

M.GetDeliveryDestinationInput = {
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

M.GetDeliveryDestinationOutput = {
    type = "structure",
    members = {
        deliveryDestination = M.DeliveryDestination,
    },
}

M.GetDeliveryDestinationPolicyInput = {
    type = "structure",
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
    members = {
        deliveryDestinationPolicy = {
            type = "string",
        },
    },
}

M.GetDeliveryDestinationPolicyOutput = {
    type = "structure",
    members = {
        policy = M.Policy,
    },
}

M.GetDeliverySourceInput = {
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

M.GetDeliverySourceOutput = {
    type = "structure",
    members = {
        deliverySource = M.DeliverySource,
    },
}

M.GetIntegrationInput = {
    type = "structure",
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
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchApplication = {
    type = "structure",
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
    members = {
        dataSourceName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchEncryptionPolicy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchLifecyclePolicy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchNetworkPolicy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchWorkspace = {
    type = "structure",
    members = {
        workspaceId = {
            type = "string",
        },
        status = M.OpenSearchResourceStatus,
    },
}

M.OpenSearchIntegrationDetails = {
    type = "structure",
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
    members = {
        logGroupFields = {
            type = "list",
            member = M.LogGroupField,
        },
    },
}

M.GetLogObjectInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetLogObjectResponseStream = {
    type = "union",
    members = {
        fields = M.FieldsData,
        InternalStreamingException = M.InternalStreamingException,
    },
}

M.GetLogObjectOutput = {
    type = "structure",
    members = {
        fieldStream = M.GetLogObjectResponseStream,
    },
}

M.GetLogRecordInput = {
    type = "structure",
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
    members = {
        source = {
            type = "string",
        },
    },
}

M.ParseJSON = {
    type = "structure",
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
    members = {
        source = {
            type = "string",
        },
    },
}

M.ParseRoute53 = {
    type = "structure",
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
    members = {
        source = {
            type = "string",
        },
    },
}

M.ParseWAF = {
    type = "structure",
    members = {
        source = {
            type = "string",
        },
    },
}

M.RenameKeyEntry = {
    type = "structure",
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
    members = {
        integrationSummaries = {
            type = "list",
            member = M.IntegrationSummary,
        },
    },
}

M.ListLogAnomalyDetectorsInput = {
    type = "structure",
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
    members = {
        accountPolicy = M.AccountPolicy,
    },
}

M.PutBearerTokenAuthenticationInput = {
    type = "structure",
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
}

M.PutDataProtectionPolicyInput = {
    type = "structure",
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
    members = {
        deliveryDestination = M.DeliveryDestination,
    },
}

M.PutDeliveryDestinationPolicyInput = {
    type = "structure",
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
    members = {
        policy = M.Policy,
    },
}

M.PutDeliverySourceInput = {
    type = "structure",
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
    members = {
        deliverySource = M.DeliverySource,
    },
}

M.PutDestinationInput = {
    type = "structure",
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
    members = {
        destination = M.Destination,
    },
}

M.PutDestinationPolicyInput = {
    type = "structure",
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
}

M.PutIndexPolicyInput = {
    type = "structure",
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
    members = {
        indexPolicy = M.IndexPolicy,
    },
}

M.OpenSearchResourceConfig = {
    type = "structure",
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
    members = {
        openSearchResourceConfig = M.OpenSearchResourceConfig,
    },
}

M.PutIntegrationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutLogGroupDeletionProtectionInput = {
    type = "structure",
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
}

M.PutMetricFilterInput = {
    type = "structure",
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
}

M.PutQueryDefinitionInput = {
    type = "structure",
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
        },
        parameters = {
            type = "list",
            member = M.QueryParameter,
        },
    },
}

M.PutQueryDefinitionOutput = {
    type = "structure",
    members = {
        queryDefinitionId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
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
    members = {
        resourcePolicy = M.ResourcePolicy,
        revisionId = {
            type = "string",
        },
    },
}

M.PutRetentionPolicyInput = {
    type = "structure",
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
}

M.PutSubscriptionFilterInput = {
    type = "structure",
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
}

M.PutTransformerInput = {
    type = "structure",
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
}

M.StartLiveTailInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SessionTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartLiveTailResponseStream = {
    type = "union",
    members = {
        sessionStart = M.LiveTailSessionStart,
        sessionUpdate = M.LiveTailSessionUpdate,
        SessionTimeoutException = M.SessionTimeoutException,
        SessionStreamingException = M.SessionStreamingException,
    },
}

M.StartLiveTailOutput = {
    type = "structure",
    members = {
        responseStream = M.StartLiveTailResponseStream,
    },
}

M.QueryCompileErrorLocation = {
    type = "structure",
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
    members = {
        location = M.QueryCompileErrorLocation,
        message = {
            type = "string",
        },
    },
}

M.MalformedQueryException = {
    type = "structure",
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
    members = {
        queryId = {
            type = "string",
        },
    },
}

M.StopQueryInput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
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

M.TestMetricFilterInput = {
    type = "structure",
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
    members = {
        matches = {
            type = "list",
            member = M.MetricFilterMatchRecord,
        },
    },
}

M.TestTransformerInput = {
    type = "structure",
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
    members = {
        transformedLogs = {
            type = "list",
            member = M.TransformedLogRecord,
        },
    },
}

M.UntagLogGroupInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.SuppressionUnit = {
    SECONDS = "SECONDS",
    MINUTES = "MINUTES",
    HOURS = "HOURS",
}

M.SuppressionPeriod = {
    type = "structure",
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
}

M.UpdateDeliveryConfigurationInput = {
    type = "structure",
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
}

M.UpdateLogAnomalyDetectorInput = {
    type = "structure",
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
}

M.UpdateLookupTableInput = {
    type = "structure",
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
    members = {
        logFieldName = {
            type = "string",
        },
        logFieldType = M.LogFieldType,
    },
}

M.GetLogFieldsOutput = {
    type = "structure",
    members = {
        logFields = {
            type = "list",
            member = M.LogFieldsListItem,
        },
    },
}

return M
