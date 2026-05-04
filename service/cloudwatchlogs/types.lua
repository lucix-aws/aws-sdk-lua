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
            type = "number",
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
        },
    },
}

M.AddKeys = {
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
            type = "number",
        },
        groupingIdentifiers = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        isDynamic = {
            type = "boolean",
        },
        tokenString = {
            type = "string",
        },
        enumerations = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        lastSeen = {
            type = "number",
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
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
        logSamples = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        patternTokens = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        logGroupArnList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        suppressed = {
            type = "boolean",
        },
        suppressedDate = {
            type = "number",
        },
        suppressedUntil = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        lastModifiedTimeStamp = {
            type = "number",
        },
        anomalyVisibilityTime = {
            type = "number",
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
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        importStatistics = {
            type = "structure",
        },
        importStatus = {
            type = "string",
        },
        creationTime = {
            type = "number",
        },
        lastUpdatedTime = {
            type = "number",
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
            member_type = "string",
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = {
            type = "structure",
        },
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
        defaultDeliveryConfigValues = {
            type = "structure",
        },
        allowedFields = {
            type = "list",
            member_type = "structure",
        },
        allowedOutputFormats = {
            type = "list",
            member_type = "string",
        },
        allowedActionForAllowVendedLogsDeliveryForResource = {
            type = "string",
        },
        allowedFieldDelimiters = {
            type = "list",
            member_type = "string",
        },
        allowedSuffixPathFields = {
            type = "list",
            member_type = "string",
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
        },
    },
}

M.CopyValue = {
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
            member_type = "string",
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDeliveryOutput = {
    type = "structure",
    members = {
        delivery = {
            type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        to = {
            type = "number",
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
            type = "number",
        },
        endEventTime = {
            type = "number",
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
        importFilter = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.CreateLogAnomalyDetectorInput = {
    type = "structure",
    members = {
        logGroupArnList = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
        s3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
            type = "number",
        },
        destinationConfiguration = {
            type = "structure",
        },
        scheduleStartTime = {
            type = "number",
        },
        scheduleEndTime = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
        deliveryDestinationConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        service = {
            type = "string",
        },
        logType = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        resourceTypes = {
            type = "list",
            member_type = "string",
        },
        deliveryDestinationTypes = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "number",
        },
    },
}

M.DescribeConfigurationTemplatesOutput = {
    type = "structure",
    members = {
        configurationTemplates = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.DescribeDeliveriesOutput = {
    type = "structure",
    members = {
        deliveries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.DescribeDeliveryDestinationsOutput = {
    type = "structure",
    members = {
        deliveryDestinations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.DescribeDeliverySourcesOutput = {
    type = "structure",
    members = {
        deliverySources = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.DescribeDestinationsOutput = {
    type = "structure",
    members = {
        destinations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ExportTaskExecutionInfo = {
    type = "structure",
    members = {
        creationTime = {
            type = "number",
        },
        completionTime = {
            type = "number",
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
            type = "number",
        },
        to = {
            type = "number",
        },
        destination = {
            type = "string",
        },
        destinationPrefix = {
            type = "string",
        },
        status = {
            type = "structure",
        },
        executionInfo = {
            type = "structure",
        },
    },
}

M.DescribeExportTasksOutput = {
    type = "structure",
    members = {
        exportTasks = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        firstEventTime = {
            type = "number",
        },
        lastEventTime = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        limit = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        importStatistics = {
            type = "structure",
        },
        importFilter = {
            type = "structure",
        },
        creationTime = {
            type = "number",
        },
        lastUpdatedTime = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        includeLinkedAccounts = {
            type = "boolean",
        },
        logGroupClass = {
            type = "string",
        },
        logGroupIdentifiers = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        retentionInDays = {
            type = "number",
        },
        metricFilterCount = {
            type = "number",
        },
        arn = {
            type = "string",
        },
        storedBytes = {
            type = "number",
        },
        kmsKeyId = {
            type = "string",
        },
        dataProtectionStatus = {
            type = "string",
        },
        inheritedProperties = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        firstEventTimestamp = {
            type = "number",
        },
        lastEventTimestamp = {
            type = "number",
        },
        lastIngestionTime = {
            type = "number",
        },
        uploadSequenceToken = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        storedBytes = {
            type = "number",
        },
    },
}

M.DescribeLogStreamsOutput = {
    type = "structure",
    members = {
        logStreams = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
        },
        recordsCount = {
            type = "number",
        },
        sizeBytes = {
            type = "number",
        },
        lastUpdatedTime = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        dimensions = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        creationTime = {
            type = "number",
        },
        logGroupName = {
            type = "string",
        },
        applyOnTransformedLogs = {
            type = "boolean",
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFieldDimensions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeMetricFiltersOutput = {
    type = "structure",
    members = {
        metricFilters = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        logGroupName = {
            type = "string",
        },
        queryDuration = {
            type = "number",
        },
        bytesScanned = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        logGroupNames = {
            type = "list",
            member_type = "string",
        },
        parameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeQueryDefinitionsOutput = {
    type = "structure",
    members = {
        queryDefinitions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        },
        creationTime = {
            type = "number",
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFields = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeSubscriptionFiltersOutput = {
    type = "structure",
    members = {
        subscriptionFilters = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        message = {
            type = "string",
        },
        ingestionTime = {
            type = "number",
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
            member_type = "string",
        },
        logStreamNamePrefix = {
            type = "string",
        },
        startTime = {
            type = "number",
        },
        endTime = {
            type = "number",
        },
        filterPattern = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "number",
        },
        interleaved = {
            type = "boolean",
        },
        unmask = {
            type = "boolean",
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
            member_type = "structure",
        },
        searchedLogStreams = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        delivery = {
            type = "structure",
        },
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
        deliveryDestination = {
            type = "structure",
        },
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
        policy = {
            type = "structure",
        },
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
        deliverySource = {
            type = "structure",
        },
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
        status = {
            type = "structure",
        },
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
        status = {
            type = "structure",
        },
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
        status = {
            type = "structure",
        },
    },
}

M.OpenSearchDataSource = {
    type = "structure",
    members = {
        dataSourceName = {
            type = "string",
        },
        status = {
            type = "structure",
        },
    },
}

M.OpenSearchEncryptionPolicy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        status = {
            type = "structure",
        },
    },
}

M.OpenSearchLifecyclePolicy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        status = {
            type = "structure",
        },
    },
}

M.OpenSearchNetworkPolicy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        status = {
            type = "structure",
        },
    },
}

M.OpenSearchWorkspace = {
    type = "structure",
    members = {
        workspaceId = {
            type = "string",
        },
        status = {
            type = "structure",
        },
    },
}

M.OpenSearchIntegrationDetails = {
    type = "structure",
    members = {
        dataSource = {
            type = "structure",
        },
        application = {
            type = "structure",
        },
        collection = {
            type = "structure",
        },
        workspace = {
            type = "structure",
        },
        encryptionPolicy = {
            type = "structure",
        },
        networkPolicy = {
            type = "structure",
        },
        accessPolicy = {
            type = "structure",
        },
        lifecyclePolicy = {
            type = "structure",
        },
    },
}

M.IntegrationDetails = {
    type = "union",
    members = {
        openSearchIntegrationDetails = {
            type = "structure",
        },
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
        integrationDetails = {
            type = "union",
        },
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
            member_type = "string",
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
            type = "number",
        },
        lastModifiedTimeStamp = {
            type = "number",
        },
        anomalyVisibilityTime = {
            type = "number",
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
            type = "number",
        },
        endTime = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "number",
        },
        startFromHead = {
            type = "boolean",
        },
        unmask = {
            type = "boolean",
        },
    },
}

M.OutputLogEvent = {
    type = "structure",
    members = {
        timestamp = {
            type = "number",
        },
        message = {
            type = "string",
        },
        ingestionTime = {
            type = "number",
        },
    },
}

M.GetLogEventsOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.GetLogGroupFieldsOutput = {
    type = "structure",
    members = {
        logGroupFields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetLogObjectInput = {
    type = "structure",
    members = {
        unmask = {
            type = "boolean",
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
        fields = {
            type = "structure",
        },
        InternalStreamingException = {
            type = "structure",
        },
    },
}

M.GetLogObjectOutput = {
    type = "structure",
    members = {
        fieldStream = {
            type = "union",
        },
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
        },
    },
}

M.GetLogRecordOutput = {
    type = "structure",
    members = {
        logRecord = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        lastUpdatedTime = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        recordsScanned = {
            type = "number",
        },
        estimatedRecordsSkipped = {
            type = "number",
        },
        bytesScanned = {
            type = "number",
        },
        estimatedBytesSkipped = {
            type = "number",
        },
        logGroupsScanned = {
            type = "number",
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
            member_type = "list",
        },
        statistics = {
            type = "structure",
        },
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
            member_type = "string",
        },
        scheduleExpression = {
            type = "string",
        },
        timezone = {
            type = "string",
        },
        startTimeOffset = {
            type = "number",
        },
        destinationConfiguration = {
            type = "structure",
        },
        state = {
            type = "string",
        },
        lastTriggeredTime = {
            type = "number",
        },
        lastExecutionStatus = {
            type = "string",
        },
        scheduleStartTime = {
            type = "number",
        },
        scheduleEndTime = {
            type = "number",
        },
        executionRoleArn = {
            type = "string",
        },
        creationTime = {
            type = "number",
        },
        lastUpdatedTime = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "number",
            traits = {
                required = true,
            },
        },
        executionStatuses = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
        },
        errorMessage = {
            type = "string",
        },
        destinations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
        },
    },
}

M.MoveKeys = {
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
        },
    },
}

M.RenameKeys = {
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Processor = {
    type = "structure",
    members = {
        addKeys = {
            type = "structure",
        },
        copyValue = {
            type = "structure",
        },
        csv = {
            type = "structure",
        },
        dateTimeConverter = {
            type = "structure",
        },
        deleteKeys = {
            type = "structure",
        },
        grok = {
            type = "structure",
        },
        listToMap = {
            type = "structure",
        },
        lowerCaseString = {
            type = "structure",
        },
        moveKeys = {
            type = "structure",
        },
        parseCloudfront = {
            type = "structure",
        },
        parseJSON = {
            type = "structure",
        },
        parseKeyValue = {
            type = "structure",
        },
        parseRoute53 = {
            type = "structure",
        },
        parseToOCSF = {
            type = "structure",
        },
        parsePostgres = {
            type = "structure",
        },
        parseVPC = {
            type = "structure",
        },
        parseWAF = {
            type = "structure",
        },
        renameKeys = {
            type = "structure",
        },
        splitString = {
            type = "structure",
        },
        substituteString = {
            type = "structure",
        },
        trimString = {
            type = "structure",
        },
        typeConverter = {
            type = "structure",
        },
        upperCaseString = {
            type = "structure",
        },
    },
}

M.GetTransformerOutput = {
    type = "structure",
    members = {
        logGroupIdentifier = {
            type = "string",
        },
        creationTime = {
            type = "number",
        },
        lastModifiedTime = {
            type = "number",
        },
        transformerConfig = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InputLogEvent = {
    type = "structure",
    members = {
        timestamp = {
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListAggregateLogGroupSummariesOutput = {
    type = "structure",
    members = {
        aggregateLogGroupSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        limit = {
            type = "number",
        },
        dataSources = {
            type = "list",
            member_type = "structure",
        },
        fieldIndexNames = {
            type = "list",
            member_type = "string",
        },
        logGroupTags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListLogGroupsForQueryOutput = {
    type = "structure",
    members = {
        logGroupIdentifiers = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
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
        destinationConfiguration = {
            type = "structure",
        },
        creationTime = {
            type = "number",
        },
        lastUpdatedTime = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        dataSource = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createdTimeStamp = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        ingestionTime = {
            type = "number",
        },
    },
}

M.LiveTailSessionMetadata = {
    type = "structure",
    members = {
        sampled = {
            type = "boolean",
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
            member_type = "string",
        },
        logStreamNames = {
            type = "list",
            member_type = "string",
        },
        logStreamNamePrefixes = {
            type = "list",
            member_type = "string",
        },
        logEventFilterPattern = {
            type = "string",
        },
    },
}

M.LiveTailSessionUpdate = {
    type = "structure",
    members = {
        sessionMetadata = {
            type = "structure",
        },
        sessionResults = {
            type = "list",
            member_type = "structure",
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
        accountPolicy = {
            type = "structure",
        },
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
            type = "number",
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
        deliveryDestinationConfiguration = {
            type = "structure",
        },
        deliveryDestinationType = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutDeliveryDestinationOutput = {
    type = "structure",
    members = {
        deliveryDestination = {
            type = "structure",
        },
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
        policy = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutDeliverySourceOutput = {
    type = "structure",
    members = {
        deliverySource = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutDestinationOutput = {
    type = "structure",
    members = {
        destination = {
            type = "structure",
        },
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
        indexPolicy = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        applicationArn = {
            type = "string",
        },
        retentionDays = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceConfig = {
    type = "union",
    members = {
        openSearchResourceConfig = {
            type = "structure",
        },
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
        resourceConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        sequenceToken = {
            type = "string",
        },
        entity = {
            type = "structure",
        },
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
            type = "number",
        },
        tooOldLogEventEndIndex = {
            type = "number",
        },
        expiredLogEventEndIndex = {
            type = "number",
        },
    },
}

M.PutLogEventsOutput = {
    type = "structure",
    members = {
        nextSequenceToken = {
            type = "string",
        },
        rejectedLogEventsInfo = {
            type = "structure",
        },
        rejectedEntityInfo = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        applyOnTransformedLogs = {
            type = "boolean",
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFieldDimensions = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
        resourcePolicy = {
            type = "structure",
        },
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
            type = "number",
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
        },
        fieldSelectionCriteria = {
            type = "string",
        },
        emitSystemFields = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        logStreamNames = {
            type = "list",
            member_type = "string",
        },
        logStreamNamePrefixes = {
            type = "list",
            member_type = "string",
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
        sessionStart = {
            type = "structure",
        },
        sessionUpdate = {
            type = "structure",
        },
        SessionTimeoutException = {
            type = "structure",
        },
        SessionStreamingException = {
            type = "structure",
        },
    },
}

M.StartLiveTailOutput = {
    type = "structure",
    members = {
        responseStream = {
            type = "union",
        },
    },
}

M.QueryCompileErrorLocation = {
    type = "structure",
    members = {
        startCharOffset = {
            type = "number",
        },
        endCharOffset = {
            type = "number",
        },
    },
}

M.QueryCompileError = {
    type = "structure",
    members = {
        location = {
            type = "structure",
        },
        message = {
            type = "string",
        },
    },
}

M.MalformedQueryException = {
    type = "structure",
    error = "client",
    members = {
        queryCompileError = {
            type = "structure",
        },
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
            member_type = "string",
        },
        logGroupIdentifiers = {
            type = "list",
            member_type = "string",
        },
        startTime = {
            type = "number",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        eventMessage = {
            type = "string",
        },
        extractedValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TestMetricFilterOutput = {
    type = "structure",
    members = {
        matches = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TestTransformerInput = {
    type = "structure",
    members = {
        transformerConfig = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        logEventMessages = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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

M.SuppressionUnit = {
    SECONDS = "SECONDS",
    MINUTES = "MINUTES",
    HOURS = "HOURS",
}

M.SuppressionPeriod = {
    type = "structure",
    members = {
        value = {
            type = "number",
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
        suppressionPeriod = {
            type = "structure",
        },
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
            member_type = "string",
        },
        fieldDelimiter = {
            type = "string",
        },
        s3DeliveryConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        destinationConfiguration = {
            type = "structure",
        },
        scheduleStartTime = {
            type = "number",
        },
        scheduleEndTime = {
            type = "number",
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
            member_type = "string",
        },
        scheduleExpression = {
            type = "string",
        },
        timezone = {
            type = "string",
        },
        startTimeOffset = {
            type = "number",
        },
        destinationConfiguration = {
            type = "structure",
        },
        state = {
            type = "string",
        },
        lastTriggeredTime = {
            type = "number",
        },
        lastExecutionStatus = {
            type = "string",
        },
        scheduleStartTime = {
            type = "number",
        },
        scheduleEndTime = {
            type = "number",
        },
        executionRoleArn = {
            type = "string",
        },
        creationTime = {
            type = "number",
        },
        lastUpdatedTime = {
            type = "number",
        },
    },
}

M.LogFieldType = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        element = {
            type = "structure",
        },
        fields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LogFieldsListItem = {
    type = "structure",
    members = {
        logFieldName = {
            type = "string",
        },
        logFieldType = {
            type = "structure",
        },
    },
}

M.GetLogFieldsOutput = {
    type = "structure",
    members = {
        logFields = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
