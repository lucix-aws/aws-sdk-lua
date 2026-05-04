local M = {}

M.AbortAction = {
    CANCEL = "CANCEL",
}

M.JobExecutionFailureType = {
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.AbortCriteria = {
    type = "structure",
    members = {
        failureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thresholdPercentage = {
            type = "double",
            traits = {
                required = true,
            },
        },
        minNumberOfExecutedThings = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AbortConfig = {
    type = "structure",
    members = {
        criteriaList = {
            type = "list",
            member = M.AbortCriteria,
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptCertificateTransferInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        setAsActive = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "setAsActive",
            },
        },
    },
}

M.AcceptCertificateTransferOutput = {
    type = "structure",
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
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

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TransferAlreadyCompletedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudwatchAlarmAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudwatchLogsAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchMode = {
            type = "boolean",
        },
    },
}

M.CloudwatchMetricAction = {
    type = "structure",
    members = {
        roleArn = {
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
        metricName = {
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
        metricUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricTimestamp = {
            type = "string",
        },
    },
}

M.DynamoKeyType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
}

M.DynamoDBAction = {
    type = "structure",
    members = {
        tableName = {
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
        operation = {
            type = "string",
        },
        hashKeyField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hashKeyValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hashKeyType = {
            type = "string",
        },
        rangeKeyField = {
            type = "string",
        },
        rangeKeyValue = {
            type = "string",
        },
        rangeKeyType = {
            type = "string",
        },
        payloadField = {
            type = "string",
        },
    },
}

M.PutItemInput = {
    type = "structure",
    members = {
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynamoDBv2Action = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        putItem = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PutItemInput }),
    },
}

M.ElasticsearchAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        index = {
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
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FirehoseAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        separator = {
            type = "string",
        },
        batchMode = {
            type = "boolean",
        },
    },
}

M.SigV4Authorization = {
    type = "structure",
    members = {
        signingRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
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
    },
}

M.HttpAuthorization = {
    type = "structure",
    members = {
        sigv4 = M.SigV4Authorization,
    },
}

M.BatchConfig = {
    type = "structure",
    members = {
        maxBatchOpenMs = {
            type = "integer",
        },
        maxBatchSize = {
            type = "integer",
        },
        maxBatchSizeBytes = {
            type = "integer",
        },
        batchAcrossTopics = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.HttpActionHeader = {
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

M.HttpAction = {
    type = "structure",
    members = {
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        confirmationUrl = {
            type = "string",
        },
        headers = {
            type = "list",
            member = M.HttpActionHeader,
        },
        auth = M.HttpAuthorization,
        enableBatching = {
            type = "boolean",
        },
        batchConfig = M.BatchConfig,
    },
}

M.IotAnalyticsAction = {
    type = "structure",
    members = {
        channelArn = {
            type = "string",
        },
        channelName = {
            type = "string",
        },
        batchMode = {
            type = "boolean",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.IotEventsAction = {
    type = "structure",
    members = {
        inputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageId = {
            type = "string",
        },
        batchMode = {
            type = "boolean",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetPropertyTimestamp = {
    type = "structure",
    members = {
        timeInSeconds = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offsetInNanos = {
            type = "string",
        },
    },
}

M.AssetPropertyVariant = {
    type = "union",
    members = {
        stringValue = {
            type = "string",
        },
        integerValue = {
            type = "string",
        },
        doubleValue = {
            type = "string",
        },
        booleanValue = {
            type = "string",
        },
    },
}

M.AssetPropertyValue = {
    type = "structure",
    members = {
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetPropertyVariant }),
        timestamp = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetPropertyTimestamp }),
        quality = {
            type = "string",
        },
    },
}

M.PutAssetPropertyValueEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
        },
        assetId = {
            type = "string",
        },
        propertyId = {
            type = "string",
        },
        propertyAlias = {
            type = "string",
        },
        propertyValues = {
            type = "list",
            member = M.AssetPropertyValue,
            traits = {
                required = true,
            },
        },
    },
}

M.IotSiteWiseAction = {
    type = "structure",
    members = {
        putAssetPropertyValueEntries = {
            type = "list",
            member = M.PutAssetPropertyValueEntry,
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

M.KafkaActionHeader = {
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

M.KafkaAction = {
    type = "structure",
    members = {
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        topic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
        },
        partition = {
            type = "string",
        },
        clientProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        headers = {
            type = "list",
            member = M.KafkaActionHeader,
        },
    },
}

M.KinesisAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partitionKey = {
            type = "string",
        },
    },
}

M.LambdaAction = {
    type = "structure",
    members = {
        functionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LocationTimestamp = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
        },
    },
}

M.LocationAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trackerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = M.LocationTimestamp,
        latitude = {
            type = "string",
            traits = {
                required = true,
            },
        },
        longitude = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenSearchAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        index = {
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
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserProperty = {
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

M.MqttHeaders = {
    type = "structure",
    members = {
        payloadFormatIndicator = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
        responseTopic = {
            type = "string",
        },
        correlationData = {
            type = "string",
        },
        messageExpiry = {
            type = "string",
        },
        userProperties = {
            type = "list",
            member = M.UserProperty,
        },
    },
}

M.RepublishAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        topic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qos = {
            type = "integer",
        },
        headers = M.MqttHeaders,
    },
}

M.CannedAccessControlList = {
    Private = "private",
    PublicRead = "public-read",
    PublicReadWrite = "public-read-write",
    AwsExecRead = "aws-exec-read",
    AuthenticatedRead = "authenticated-read",
    BucketOwnerRead = "bucket-owner-read",
    BucketOwnerFullControl = "bucket-owner-full-control",
    LogDeliveryWrite = "log-delivery-write",
}

M.S3Action = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketName = {
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
        cannedAcl = {
            type = "string",
        },
    },
}

M.SalesforceAction = {
    type = "structure",
    members = {
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageFormat = {
    RAW = "RAW",
    JSON = "JSON",
}

M.SnsAction = {
    type = "structure",
    members = {
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
        messageFormat = {
            type = "string",
        },
    },
}

M.SqsAction = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        useBase64 = {
            type = "boolean",
        },
    },
}

M.StepFunctionsAction = {
    type = "structure",
    members = {
        executionNamePrefix = {
            type = "string",
        },
        stateMachineName = {
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
    },
}

M.TimestreamDimension = {
    type = "structure",
    members = {
        name = {
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

M.TimestreamTimestamp = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TimestreamAction = {
    type = "structure",
    members = {
        roleArn = {
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
        dimensions = {
            type = "list",
            member = M.TimestreamDimension,
            traits = {
                required = true,
            },
        },
        timestamp = M.TimestreamTimestamp,
    },
}

M.Action = {
    type = "structure",
    members = {
        dynamoDB = M.DynamoDBAction,
        dynamoDBv2 = M.DynamoDBv2Action,
        lambda = M.LambdaAction,
        sns = M.SnsAction,
        sqs = M.SqsAction,
        kinesis = M.KinesisAction,
        republish = M.RepublishAction,
        s3 = M.S3Action,
        firehose = M.FirehoseAction,
        cloudwatchMetric = M.CloudwatchMetricAction,
        cloudwatchAlarm = M.CloudwatchAlarmAction,
        cloudwatchLogs = M.CloudwatchLogsAction,
        elasticsearch = M.ElasticsearchAction,
        salesforce = M.SalesforceAction,
        iotAnalytics = M.IotAnalyticsAction,
        iotEvents = M.IotEventsAction,
        iotSiteWise = M.IotSiteWiseAction,
        stepFunctions = M.StepFunctionsAction,
        timestream = M.TimestreamAction,
        http = M.HttpAction,
        kafka = M.KafkaAction,
        openSearch = M.OpenSearchAction,
        location = M.LocationAction,
    },
}

M.ActionType = {
    PUBLISH = "PUBLISH",
    SUBSCRIBE = "SUBSCRIBE",
    RECEIVE = "RECEIVE",
    CONNECT = "CONNECT",
}

M.ComparisonOperator = {
    LESS_THAN = "less-than",
    LESS_THAN_EQUALS = "less-than-equals",
    GREATER_THAN = "greater-than",
    GREATER_THAN_EQUALS = "greater-than-equals",
    IN_CIDR_SET = "in-cidr-set",
    NOT_IN_CIDR_SET = "not-in-cidr-set",
    IN_PORT_SET = "in-port-set",
    NOT_IN_PORT_SET = "not-in-port-set",
    IN_SET = "in-set",
    NOT_IN_SET = "not-in-set",
}

M.ConfidenceLevel = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.MachineLearningDetectionConfig = {
    type = "structure",
    members = {
        confidenceLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatisticalThreshold = {
    type = "structure",
    members = {
        statistic = {
            type = "string",
        },
    },
}

M.MetricValue = {
    type = "structure",
    members = {
        count = {
            type = "long",
        },
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
        ports = {
            type = "list",
            member = { type = "integer" },
        },
        number = {
            type = "double",
        },
        numbers = {
            type = "list",
            member = { type = "double" },
        },
        strings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BehaviorCriteria = {
    type = "structure",
    members = {
        comparisonOperator = {
            type = "string",
        },
        value = M.MetricValue,
        durationSeconds = {
            type = "integer",
        },
        consecutiveDatapointsToAlarm = {
            type = "integer",
        },
        consecutiveDatapointsToClear = {
            type = "integer",
        },
        statisticalThreshold = M.StatisticalThreshold,
        mlDetectionConfig = M.MachineLearningDetectionConfig,
    },
}

M.DimensionValueOperator = {
    IN = "IN",
    NOT_IN = "NOT_IN",
}

M.MetricDimension = {
    type = "structure",
    members = {
        dimensionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
        },
    },
}

M.Behavior = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metric = {
            type = "string",
        },
        metricDimension = M.MetricDimension,
        criteria = M.BehaviorCriteria,
        suppressAlerts = {
            type = "boolean",
        },
        exportMetric = {
            type = "boolean",
        },
    },
}

M.VerificationState = {
    FALSE_POSITIVE = "FALSE_POSITIVE",
    BENIGN_POSITIVE = "BENIGN_POSITIVE",
    TRUE_POSITIVE = "TRUE_POSITIVE",
    UNKNOWN = "UNKNOWN",
}

M.ViolationEventAdditionalInfo = {
    type = "structure",
    members = {
        confidenceLevel = {
            type = "string",
        },
    },
}

M.ActiveViolation = {
    type = "structure",
    members = {
        violationId = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        securityProfileName = {
            type = "string",
        },
        behavior = M.Behavior,
        lastViolationValue = M.MetricValue,
        violationEventAdditionalInfo = M.ViolationEventAdditionalInfo,
        verificationState = {
            type = "string",
        },
        verificationStateDescription = {
            type = "string",
        },
        lastViolationTime = {
            type = "timestamp",
        },
        violationStartTime = {
            type = "timestamp",
        },
    },
}

M.MetricToRetain = {
    type = "structure",
    members = {
        metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricDimension = M.MetricDimension,
        exportMetric = {
            type = "boolean",
        },
    },
}

M.AddThingsToThingGroupParams = {
    type = "structure",
    members = {
        thingGroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        overrideDynamicGroups = {
            type = "boolean",
        },
    },
}

M.AddThingToBillingGroupInput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
        },
        billingGroupArn = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
    },
}

M.AddThingToBillingGroupOutput = {
    type = "structure",
}

M.AddThingToThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
        },
        thingGroupArn = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
        overrideDynamicGroups = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AddThingToThingGroupOutput = {
    type = "structure",
}

M.AggregationTypeName = {
    STATISTICS = "Statistics",
    PERCENTILES = "Percentiles",
    CARDINALITY = "Cardinality",
}

M.AggregationType = {
    type = "structure",
    members = {
        name = {
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

M.AlertTarget = {
    type = "structure",
    members = {
        alertTargetArn = {
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
    },
}

M.AlertTargetType = {
    SNS = "SNS",
}

M.Policy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        policyArn = {
            type = "string",
        },
    },
}

M.Allowed = {
    type = "structure",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
    },
}

M.ApplicationProtocol = {
    SECURE_MQTT = "SECURE_MQTT",
    MQTT_WSS = "MQTT_WSS",
    HTTPS = "HTTPS",
    DEFAULT = "DEFAULT",
}

M.S3Location = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        key = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.Sbom = {
    type = "structure",
    members = {
        s3Location = M.S3Location,
    },
}

M.AssociateSbomWithPackageVersionInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sbom = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Sbom }),
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.SbomValidationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.AssociateSbomWithPackageVersionOutput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
        },
        versionName = {
            type = "string",
        },
        sbom = M.Sbom,
        sbomValidationStatus = {
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
        resourceId = {
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

M.ServiceQuotaExceededException = {
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

M.AssociateTargetsWithJobInput = {
    type = "structure",
    members = {
        targets = {
            type = "list",
            member = { type = "string" },
            traits = {
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
        comment = {
            type = "string",
        },
        namespaceId = {
            type = "string",
            traits = {
                http_query = "namespaceId",
            },
        },
    },
}

M.AssociateTargetsWithJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        description = {
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

M.AttachPolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachPolicyOutput = {
    type = "structure",
}

M.AttachPrincipalPolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principal = {
            type = "string",
            traits = {
                http_header = "x-amzn-iot-principal",
                required = true,
            },
        },
    },
}

M.AttachPrincipalPolicyOutput = {
    type = "structure",
}

M.AttachSecurityProfileInput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        securityProfileTargetArn = {
            type = "string",
            traits = {
                http_query = "securityProfileTargetArn",
                required = true,
            },
        },
    },
}

M.AttachSecurityProfileOutput = {
    type = "structure",
}

M.VersionConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThingPrincipalType = {
    EXCLUSIVE_THING = "EXCLUSIVE_THING",
    NON_EXCLUSIVE_THING = "NON_EXCLUSIVE_THING",
}

M.AttachThingPrincipalInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principal = {
            type = "string",
            traits = {
                http_header = "x-amzn-principal",
                required = true,
            },
        },
        thingPrincipalType = {
            type = "string",
            traits = {
                http_query = "thingPrincipalType",
            },
        },
    },
}

M.AttachThingPrincipalOutput = {
    type = "structure",
}

M.AttributePayload = {
    type = "structure",
    members = {
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        merge = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ConfigName = {
    CERT_AGE_THRESHOLD_IN_DAYS = "CERT_AGE_THRESHOLD_IN_DAYS",
    CERT_EXPIRATION_THRESHOLD_IN_DAYS = "CERT_EXPIRATION_THRESHOLD_IN_DAYS",
}

M.AuditCheckConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AuditCheckRunStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    WAITING_FOR_DATA_COLLECTION = "WAITING_FOR_DATA_COLLECTION",
    CANCELED = "CANCELED",
    COMPLETED_COMPLIANT = "COMPLETED_COMPLIANT",
    COMPLETED_NON_COMPLIANT = "COMPLETED_NON_COMPLIANT",
    FAILED = "FAILED",
}

M.AuditCheckDetails = {
    type = "structure",
    members = {
        checkRunStatus = {
            type = "string",
        },
        checkCompliant = {
            type = "boolean",
        },
        totalResourcesCount = {
            type = "long",
        },
        nonCompliantResourcesCount = {
            type = "long",
        },
        suppressedNonCompliantResourcesCount = {
            type = "long",
        },
        errorCode = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.IssuerCertificateIdentifier = {
    type = "structure",
    members = {
        issuerCertificateSubject = {
            type = "string",
        },
        issuerId = {
            type = "string",
        },
        issuerCertificateSerialNumber = {
            type = "string",
        },
    },
}

M.PolicyVersionIdentifier = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        policyVersionId = {
            type = "string",
        },
    },
}

M.ResourceIdentifier = {
    type = "structure",
    members = {
        deviceCertificateId = {
            type = "string",
        },
        caCertificateId = {
            type = "string",
        },
        cognitoIdentityPoolId = {
            type = "string",
        },
        clientId = {
            type = "string",
        },
        policyVersionIdentifier = M.PolicyVersionIdentifier,
        account = {
            type = "string",
        },
        iamRoleArn = {
            type = "string",
        },
        roleAliasArn = {
            type = "string",
        },
        issuerCertificateIdentifier = M.IssuerCertificateIdentifier,
        deviceCertificateArn = {
            type = "string",
        },
    },
}

M.ResourceType = {
    DEVICE_CERTIFICATE = "DEVICE_CERTIFICATE",
    CA_CERTIFICATE = "CA_CERTIFICATE",
    IOT_POLICY = "IOT_POLICY",
    COGNITO_IDENTITY_POOL = "COGNITO_IDENTITY_POOL",
    CLIENT_ID = "CLIENT_ID",
    ACCOUNT_SETTINGS = "ACCOUNT_SETTINGS",
    ROLE_ALIAS = "ROLE_ALIAS",
    IAM_ROLE = "IAM_ROLE",
    ISSUER_CERTIFICATE = "ISSUER_CERTIFICATE",
}

M.NonCompliantResource = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        resourceIdentifier = M.ResourceIdentifier,
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RelatedResource = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
        },
        resourceIdentifier = M.ResourceIdentifier,
        additionalInfo = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AuditFindingSeverity = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.AuditFinding = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
        },
        taskId = {
            type = "string",
        },
        checkName = {
            type = "string",
        },
        taskStartTime = {
            type = "timestamp",
        },
        findingTime = {
            type = "timestamp",
        },
        severity = {
            type = "string",
        },
        nonCompliantResource = M.NonCompliantResource,
        relatedResources = {
            type = "list",
            member = M.RelatedResource,
        },
        reasonForNonCompliance = {
            type = "string",
        },
        reasonForNonComplianceCode = {
            type = "string",
        },
        isSuppressed = {
            type = "boolean",
        },
    },
}

M.AuditFrequency = {
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    BIWEEKLY = "BIWEEKLY",
    MONTHLY = "MONTHLY",
}

M.AuditMitigationActionsExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
    SKIPPED = "SKIPPED",
    PENDING = "PENDING",
}

M.AuditMitigationActionExecutionMetadata = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        findingId = {
            type = "string",
        },
        actionName = {
            type = "string",
        },
        actionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        errorCode = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.AuditMitigationActionsTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.AuditMitigationActionsTaskMetadata = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        taskStatus = {
            type = "string",
        },
    },
}

M.TaskStatisticsForAuditCheck = {
    type = "structure",
    members = {
        totalFindingsCount = {
            type = "long",
        },
        failedFindingsCount = {
            type = "long",
        },
        succeededFindingsCount = {
            type = "long",
        },
        skippedFindingsCount = {
            type = "long",
        },
        canceledFindingsCount = {
            type = "long",
        },
    },
}

M.AuditMitigationActionsTaskTarget = {
    type = "structure",
    members = {
        auditTaskId = {
            type = "string",
        },
        findingIds = {
            type = "list",
            member = { type = "string" },
        },
        auditCheckToReasonCodeFilter = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.AuditNotificationTarget = {
    type = "structure",
    members = {
        targetArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AuditNotificationType = {
    SNS = "SNS",
}

M.AuditSuppression = {
    type = "structure",
    members = {
        checkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceIdentifier }),
        expirationDate = {
            type = "timestamp",
        },
        suppressIndefinitely = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
    },
}

M.AuditTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.AuditTaskType = {
    ON_DEMAND_AUDIT_TASK = "ON_DEMAND_AUDIT_TASK",
    SCHEDULED_AUDIT_TASK = "SCHEDULED_AUDIT_TASK",
}

M.AuditTaskMetadata = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        taskStatus = {
            type = "string",
        },
        taskType = {
            type = "string",
        },
    },
}

M.AuthDecision = {
    ALLOWED = "ALLOWED",
    EXPLICIT_DENY = "EXPLICIT_DENY",
    IMPLICIT_DENY = "IMPLICIT_DENY",
}

M.AuthenticationType = {
    CUSTOM_AUTH_X509 = "CUSTOM_AUTH_X509",
    CUSTOM_AUTH = "CUSTOM_AUTH",
    AWS_X509 = "AWS_X509",
    AWS_SIGV4 = "AWS_SIGV4",
    DEFAULT = "DEFAULT",
}

M.AuthInfo = {
    type = "structure",
    members = {
        actionType = {
            type = "string",
        },
        resources = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AuthorizerConfig = {
    type = "structure",
    members = {
        defaultAuthorizerName = {
            type = "string",
        },
        allowAuthorizerOverride = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.AuthorizerStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AuthorizerDescription = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
        },
        authorizerArn = {
            type = "string",
        },
        authorizerFunctionArn = {
            type = "string",
        },
        tokenKeyName = {
            type = "string",
        },
        tokenSigningPublicKeys = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        signingDisabled = {
            type = "boolean",
        },
        enableCachingForHttp = {
            type = "boolean",
        },
    },
}

M.AuthorizerSummary = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
        },
        authorizerArn = {
            type = "string",
        },
    },
}

M.ExplicitDeny = {
    type = "structure",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
    },
}

M.ImplicitDeny = {
    type = "structure",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
    },
}

M.Denied = {
    type = "structure",
    members = {
        implicitDeny = M.ImplicitDeny,
        explicitDeny = M.ExplicitDeny,
    },
}

M.AuthResult = {
    type = "structure",
    members = {
        authInfo = M.AuthInfo,
        allowed = M.Allowed,
        denied = M.Denied,
        authDecision = {
            type = "string",
        },
        missingContextValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AutoRegistrationStatus = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.CancelAuditMitigationActionsTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelAuditMitigationActionsTaskOutput = {
    type = "structure",
}

M.CancelAuditTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelAuditTaskOutput = {
    type = "structure",
}

M.CancelCertificateTransferInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelCertificateTransferOutput = {
    type = "structure",
}

M.CancelDetectMitigationActionsTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelDetectMitigationActionsTaskOutput = {
    type = "structure",
}

M.CancelJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        reasonCode = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
    },
}

M.CancelJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CancelJobExecutionInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
        expectedVersion = {
            type = "long",
        },
        statusDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CancelJobExecutionOutput = {
    type = "structure",
}

M.InvalidStateTransitionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClearDefaultAuthorizerInput = {
    type = "structure",
}

M.ClearDefaultAuthorizerOutput = {
    type = "structure",
}

M.ConfirmTopicRuleDestinationInput = {
    type = "structure",
    members = {
        confirmationToken = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ConfirmTopicRuleDestinationOutput = {
    type = "structure",
}

M.ConflictingResourceUpdateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAuditSuppressionInput = {
    type = "structure",
    members = {
        checkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceIdentifier }),
        expirationDate = {
            type = "timestamp",
        },
        suppressIndefinitely = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAuditSuppressionOutput = {
    type = "structure",
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateAuthorizerInput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizerFunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenKeyName = {
            type = "string",
        },
        tokenSigningPublicKeys = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        signingDisabled = {
            type = "boolean",
        },
        enableCachingForHttp = {
            type = "boolean",
        },
    },
}

M.CreateAuthorizerOutput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
        },
        authorizerArn = {
            type = "string",
        },
    },
}

M.BillingGroupProperties = {
    type = "structure",
    members = {
        billingGroupDescription = {
            type = "string",
        },
    },
}

M.CreateBillingGroupInput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        billingGroupProperties = M.BillingGroupProperties,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateBillingGroupOutput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
        },
        billingGroupArn = {
            type = "string",
        },
        billingGroupId = {
            type = "string",
        },
    },
}

M.CreateCertificateFromCsrInput = {
    type = "structure",
    members = {
        certificateSigningRequest = {
            type = "string",
            traits = {
                required = true,
            },
        },
        setAsActive = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "setAsActive",
            },
        },
    },
}

M.CreateCertificateFromCsrOutput = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
        certificatePem = {
            type = "string",
        },
    },
}

M.CertificateProviderOperation = {
    CreateCertificateFromCsr = "CreateCertificateFromCsr",
}

M.CreateCertificateProviderInput = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        lambdaFunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountDefaultForOperations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCertificateProviderOutput = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
        },
        certificateProviderArn = {
            type = "string",
        },
    },
}

M.CommandParameterValue = {
    type = "structure",
    members = {
        S = {
            type = "string",
        },
        B = {
            type = "boolean",
        },
        I = {
            type = "integer",
        },
        L = {
            type = "long",
        },
        D = {
            type = "double",
        },
        BIN = {
            type = "blob",
        },
        UL = {
            type = "string",
        },
    },
}

M.CommandParameterType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    DOUBLE = "DOUBLE",
    LONG = "LONG",
    UNSIGNEDLONG = "UNSIGNEDLONG",
    BOOLEAN = "BOOLEAN",
    BINARY = "BINARY",
}

M.CommandParameterValueComparisonOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_EQUALS = "LESS_THAN_EQUALS",
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_EQUALS = "GREATER_THAN_EQUALS",
    IN_SET = "IN_SET",
    NOT_IN_SET = "NOT_IN_SET",
    IN_RANGE = "IN_RANGE",
    NOT_IN_RANGE = "NOT_IN_RANGE",
}

M.CommandParameterValueNumberRange = {
    type = "structure",
    members = {
        min = {
            type = "string",
            traits = {
                required = true,
            },
        },
        max = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CommandParameterValueComparisonOperand = {
    type = "structure",
    members = {
        number = {
            type = "string",
        },
        numbers = {
            type = "list",
            member = { type = "string" },
        },
        string = {
            type = "string",
        },
        strings = {
            type = "list",
            member = { type = "string" },
        },
        numberRange = M.CommandParameterValueNumberRange,
    },
}

M.CommandParameterValueCondition = {
    type = "structure",
    members = {
        comparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operand = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CommandParameterValueComparisonOperand }),
    },
}

M.CommandParameter = {
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
        value = M.CommandParameterValue,
        defaultValue = M.CommandParameterValue,
        valueConditions = {
            type = "list",
            member = M.CommandParameterValueCondition,
        },
        description = {
            type = "string",
        },
    },
}

M.CommandNamespace = {
    AWSIoT = "AWS-IoT",
    AWSIoTFleetWise = "AWS-IoT-FleetWise",
}

M.CommandPayload = {
    type = "structure",
    members = {
        content = {
            type = "blob",
        },
        contentType = {
            type = "string",
        },
    },
}

M.OutputFormat = {
    JSON = "JSON",
    CBOR = "CBOR",
}

M.AwsJsonSubstitutionCommandPreprocessorConfig = {
    type = "structure",
    members = {
        outputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CommandPreprocessor = {
    type = "structure",
    members = {
        awsJsonSubstitution = M.AwsJsonSubstitutionCommandPreprocessorConfig,
    },
}

M.CreateCommandInput = {
    type = "structure",
    members = {
        commandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        payload = M.CommandPayload,
        payloadTemplate = {
            type = "string",
        },
        preprocessor = M.CommandPreprocessor,
        mandatoryParameters = {
            type = "list",
            member = M.CommandParameter,
        },
        roleArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCommandOutput = {
    type = "structure",
    members = {
        commandId = {
            type = "string",
        },
        commandArn = {
            type = "string",
        },
    },
}

M.CustomMetricType = {
    STRING_LIST = "string-list",
    IP_ADDRESS_LIST = "ip-address-list",
    NUMBER_LIST = "number-list",
    NUMBER = "number",
}

M.CreateCustomMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        metricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientRequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomMetricOutput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
        },
        metricArn = {
            type = "string",
        },
    },
}

M.DimensionType = {
    TOPIC_FILTER = "TOPIC_FILTER",
}

M.CreateDimensionInput = {
    type = "structure",
    members = {
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
                required = true,
            },
        },
        stringValues = {
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
        clientRequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDimensionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.CertificateValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClientCertificateConfig = {
    type = "structure",
    members = {
        clientCertificateCallbackArn = {
            type = "string",
        },
    },
}

M.ServerCertificateConfig = {
    type = "structure",
    members = {
        enableOCSPCheck = {
            type = "boolean",
        },
        ocspLambdaArn = {
            type = "string",
        },
        ocspAuthorizedResponderArn = {
            type = "string",
        },
    },
}

M.ServiceType = {
    DATA = "DATA",
    CREDENTIAL_PROVIDER = "CREDENTIAL_PROVIDER",
    JOBS = "JOBS",
}

M.TlsConfig = {
    type = "structure",
    members = {
        securityPolicy = {
            type = "string",
        },
    },
}

M.CreateDomainConfigurationInput = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainName = {
            type = "string",
        },
        serverCertificateArns = {
            type = "list",
            member = { type = "string" },
        },
        validationCertificateArn = {
            type = "string",
        },
        authorizerConfig = M.AuthorizerConfig,
        serviceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        tlsConfig = M.TlsConfig,
        serverCertificateConfig = M.ServerCertificateConfig,
        authenticationType = {
            type = "string",
        },
        applicationProtocol = {
            type = "string",
        },
        clientCertificateConfig = M.ClientCertificateConfig,
    },
}

M.CreateDomainConfigurationOutput = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
        },
        domainConfigurationArn = {
            type = "string",
        },
    },
}

M.ThingGroupProperties = {
    type = "structure",
    members = {
        thingGroupDescription = {
            type = "string",
        },
        attributePayload = M.AttributePayload,
    },
}

M.CreateDynamicThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingGroupProperties = M.ThingGroupProperties,
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryVersion = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDynamicThingGroupOutput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
        },
        thingGroupArn = {
            type = "string",
        },
        thingGroupId = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
    },
}

M.InvalidQueryException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FleetMetricUnit = {
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

M.CreateFleetMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AggregationType }),
        period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        aggregationField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateFleetMetricOutput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
        },
        metricArn = {
            type = "string",
        },
    },
}

M.IndexNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAggregationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RetryableFailureType = {
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.RetryCriteria = {
    type = "structure",
    members = {
        failureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        numberOfRetries = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.JobExecutionsRetryConfig = {
    type = "structure",
    members = {
        criteriaList = {
            type = "list",
            member = M.RetryCriteria,
            traits = {
                required = true,
            },
        },
    },
}

M.RateIncreaseCriteria = {
    type = "structure",
    members = {
        numberOfNotifiedThings = {
            type = "integer",
        },
        numberOfSucceededThings = {
            type = "integer",
        },
    },
}

M.ExponentialRolloutRate = {
    type = "structure",
    members = {
        baseRatePerMinute = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        incrementFactor = {
            type = "double",
            traits = {
                required = true,
            },
        },
        rateIncreaseCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RateIncreaseCriteria }),
    },
}

M.JobExecutionsRolloutConfig = {
    type = "structure",
    members = {
        maximumPerMinute = {
            type = "integer",
        },
        exponentialRate = M.ExponentialRolloutRate,
    },
}

M.PresignedUrlConfig = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        expiresInSec = {
            type = "long",
        },
    },
}

M.JobEndBehavior = {
    STOP_ROLLOUT = "STOP_ROLLOUT",
    CANCEL = "CANCEL",
    FORCE_CANCEL = "FORCE_CANCEL",
}

M.MaintenanceWindow = {
    type = "structure",
    members = {
        startTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        durationInMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SchedulingConfig = {
    type = "structure",
    members = {
        startTime = {
            type = "string",
        },
        endTime = {
            type = "string",
        },
        endBehavior = {
            type = "string",
        },
        maintenanceWindows = {
            type = "list",
            member = M.MaintenanceWindow,
        },
    },
}

M.TargetSelection = {
    CONTINUOUS = "CONTINUOUS",
    SNAPSHOT = "SNAPSHOT",
}

M.TimeoutConfig = {
    type = "structure",
    members = {
        inProgressTimeoutInMinutes = {
            type = "long",
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        documentSource = {
            type = "string",
        },
        document = {
            type = "string",
        },
        description = {
            type = "string",
        },
        presignedUrlConfig = M.PresignedUrlConfig,
        targetSelection = {
            type = "string",
        },
        jobExecutionsRolloutConfig = M.JobExecutionsRolloutConfig,
        abortConfig = M.AbortConfig,
        timeoutConfig = M.TimeoutConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
        namespaceId = {
            type = "string",
        },
        jobTemplateArn = {
            type = "string",
        },
        jobExecutionsRetryConfig = M.JobExecutionsRetryConfig,
        documentParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        schedulingConfig = M.SchedulingConfig,
        destinationPackageVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CreateJobTemplateInput = {
    type = "structure",
    members = {
        jobTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobArn = {
            type = "string",
        },
        documentSource = {
            type = "string",
        },
        document = {
            type = "string",
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        presignedUrlConfig = M.PresignedUrlConfig,
        jobExecutionsRolloutConfig = M.JobExecutionsRolloutConfig,
        abortConfig = M.AbortConfig,
        timeoutConfig = M.TimeoutConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
        jobExecutionsRetryConfig = M.JobExecutionsRetryConfig,
        maintenanceWindows = {
            type = "list",
            member = M.MaintenanceWindow,
        },
        destinationPackageVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateJobTemplateOutput = {
    type = "structure",
    members = {
        jobTemplateArn = {
            type = "string",
        },
        jobTemplateId = {
            type = "string",
        },
    },
}

M.CreateKeysAndCertificateInput = {
    type = "structure",
    members = {
        setAsActive = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "setAsActive",
            },
        },
    },
}

M.KeyPair = {
    type = "structure",
    members = {
        PublicKey = {
            type = "string",
        },
        PrivateKey = {
            type = "string",
        },
    },
}

M.CreateKeysAndCertificateOutput = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
        certificatePem = {
            type = "string",
        },
        keyPair = M.KeyPair,
    },
}

M.LogLevel = {
    DEBUG = "DEBUG",
    INFO = "INFO",
    ERROR = "ERROR",
    WARN = "WARN",
    DISABLED = "DISABLED",
}

M.EnableIoTLoggingParams = {
    type = "structure",
    members = {
        roleArnForLogging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PublishFindingToSnsParams = {
    type = "structure",
    members = {
        topicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyTemplateName = {
    BLANK_POLICY = "BLANK_POLICY",
}

M.ReplaceDefaultPolicyVersionParams = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CACertificateUpdateAction = {
    DEACTIVATE = "DEACTIVATE",
}

M.UpdateCACertificateParams = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceCertificateUpdateAction = {
    DEACTIVATE = "DEACTIVATE",
}

M.UpdateDeviceCertificateParams = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MitigationActionParams = {
    type = "structure",
    members = {
        updateDeviceCertificateParams = M.UpdateDeviceCertificateParams,
        updateCACertificateParams = M.UpdateCACertificateParams,
        addThingsToThingGroupParams = M.AddThingsToThingGroupParams,
        replaceDefaultPolicyVersionParams = M.ReplaceDefaultPolicyVersionParams,
        enableIoTLoggingParams = M.EnableIoTLoggingParams,
        publishFindingToSnsParams = M.PublishFindingToSnsParams,
    },
}

M.CreateMitigationActionInput = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionParams = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MitigationActionParams }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateMitigationActionOutput = {
    type = "structure",
    members = {
        actionArn = {
            type = "string",
        },
        actionId = {
            type = "string",
        },
    },
}

M.AwsJobAbortCriteriaAbortAction = {
    CANCEL = "CANCEL",
}

M.AwsJobAbortCriteriaFailureType = {
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.AwsJobAbortCriteria = {
    type = "structure",
    members = {
        failureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thresholdPercentage = {
            type = "double",
            traits = {
                required = true,
            },
        },
        minNumberOfExecutedThings = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AwsJobAbortConfig = {
    type = "structure",
    members = {
        abortCriteriaList = {
            type = "list",
            member = M.AwsJobAbortCriteria,
            traits = {
                required = true,
            },
        },
    },
}

M.AwsJobRateIncreaseCriteria = {
    type = "structure",
    members = {
        numberOfNotifiedThings = {
            type = "integer",
        },
        numberOfSucceededThings = {
            type = "integer",
        },
    },
}

M.AwsJobExponentialRolloutRate = {
    type = "structure",
    members = {
        baseRatePerMinute = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        incrementFactor = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        rateIncreaseCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsJobRateIncreaseCriteria }),
    },
}

M.AwsJobExecutionsRolloutConfig = {
    type = "structure",
    members = {
        maximumPerMinute = {
            type = "integer",
        },
        exponentialRate = M.AwsJobExponentialRolloutRate,
    },
}

M.AwsJobPresignedUrlConfig = {
    type = "structure",
    members = {
        expiresInSec = {
            type = "long",
        },
    },
}

M.AwsJobTimeoutConfig = {
    type = "structure",
    members = {
        inProgressTimeoutInMinutes = {
            type = "long",
        },
    },
}

M.CodeSigningCertificateChain = {
    type = "structure",
    members = {
        certificateName = {
            type = "string",
        },
        inlineDocument = {
            type = "string",
        },
    },
}

M.CodeSigningSignature = {
    type = "structure",
    members = {
        inlineDocument = {
            type = "blob",
        },
    },
}

M.CustomCodeSigning = {
    type = "structure",
    members = {
        signature = M.CodeSigningSignature,
        certificateChain = M.CodeSigningCertificateChain,
        hashAlgorithm = {
            type = "string",
        },
        signatureAlgorithm = {
            type = "string",
        },
    },
}

M.S3Destination = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.Destination = {
    type = "structure",
    members = {
        s3Destination = M.S3Destination,
    },
}

M.SigningProfileParameter = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        certificatePathOnDevice = {
            type = "string",
        },
    },
}

M.StartSigningJobParameter = {
    type = "structure",
    members = {
        signingProfileParameter = M.SigningProfileParameter,
        signingProfileName = {
            type = "string",
        },
        destination = M.Destination,
    },
}

M.CodeSigning = {
    type = "structure",
    members = {
        awsSignerJobId = {
            type = "string",
        },
        startSigningJobParameter = M.StartSigningJobParameter,
        customCodeSigning = M.CustomCodeSigning,
    },
}

M.Stream = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
        },
        fileId = {
            type = "integer",
        },
    },
}

M.FileLocation = {
    type = "structure",
    members = {
        stream = M.Stream,
        s3Location = M.S3Location,
    },
}

M.OTAUpdateFile = {
    type = "structure",
    members = {
        fileName = {
            type = "string",
        },
        fileType = {
            type = "integer",
        },
        fileVersion = {
            type = "string",
        },
        fileLocation = M.FileLocation,
        codeSigning = M.CodeSigning,
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Protocol = {
    MQTT = "MQTT",
    HTTP = "HTTP",
}

M.CreateOTAUpdateInput = {
    type = "structure",
    members = {
        otaUpdateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        protocols = {
            type = "list",
            member = { type = "string" },
        },
        targetSelection = {
            type = "string",
        },
        awsJobExecutionsRolloutConfig = M.AwsJobExecutionsRolloutConfig,
        awsJobPresignedUrlConfig = M.AwsJobPresignedUrlConfig,
        awsJobAbortConfig = M.AwsJobAbortConfig,
        awsJobTimeoutConfig = M.AwsJobTimeoutConfig,
        files = {
            type = "list",
            member = M.OTAUpdateFile,
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
        additionalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.OTAUpdateStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateOTAUpdateOutput = {
    type = "structure",
    members = {
        otaUpdateId = {
            type = "string",
        },
        awsIotJobId = {
            type = "string",
        },
        otaUpdateArn = {
            type = "string",
        },
        awsIotJobArn = {
            type = "string",
        },
        otaUpdateStatus = {
            type = "string",
        },
    },
}

M.CreatePackageInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.CreatePackageOutput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
        },
        packageArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.PackageVersionArtifact = {
    type = "structure",
    members = {
        s3Location = M.S3Location,
    },
}

M.CreatePackageVersionInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        artifact = M.PackageVersionArtifact,
        recipe = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.PackageVersionStatus = {
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
    DEPRECATED = "DEPRECATED",
}

M.CreatePackageVersionOutput = {
    type = "structure",
    members = {
        packageVersionArn = {
            type = "string",
        },
        packageName = {
            type = "string",
        },
        versionName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        errorReason = {
            type = "string",
        },
    },
}

M.CreatePolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyDocument = {
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

M.CreatePolicyOutput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        policyArn = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        policyVersionId = {
            type = "string",
        },
    },
}

M.MalformedPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePolicyVersionInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        setAsDefault = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "setAsDefault",
            },
        },
    },
}

M.CreatePolicyVersionOutput = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        policyVersionId = {
            type = "string",
        },
        isDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.VersionsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateProvisioningClaimInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateProvisioningClaimOutput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
        },
        certificatePem = {
            type = "string",
        },
        keyPair = M.KeyPair,
        expiration = {
            type = "timestamp",
        },
    },
}

M.ProvisioningHook = {
    type = "structure",
    members = {
        payloadVersion = {
            type = "string",
        },
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateType = {
    FLEET_PROVISIONING = "FLEET_PROVISIONING",
    JITP = "JITP",
}

M.CreateProvisioningTemplateInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        templateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enabled = {
            type = "boolean",
        },
        provisioningRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        preProvisioningHook = M.ProvisioningHook,
        tags = {
            type = "list",
            member = M.Tag,
        },
        type = {
            type = "string",
        },
    },
}

M.CreateProvisioningTemplateOutput = {
    type = "structure",
    members = {
        templateArn = {
            type = "string",
        },
        templateName = {
            type = "string",
        },
        defaultVersionId = {
            type = "integer",
        },
    },
}

M.CreateProvisioningTemplateVersionInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        setAsDefault = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "setAsDefault",
            },
        },
    },
}

M.CreateProvisioningTemplateVersionOutput = {
    type = "structure",
    members = {
        templateArn = {
            type = "string",
        },
        templateName = {
            type = "string",
        },
        versionId = {
            type = "integer",
        },
        isDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateRoleAliasInput = {
    type = "structure",
    members = {
        roleAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialDurationSeconds = {
            type = "integer",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRoleAliasOutput = {
    type = "structure",
    members = {
        roleAlias = {
            type = "string",
        },
        roleAliasArn = {
            type = "string",
        },
    },
}

M.DayOfWeek = {
    SUN = "SUN",
    MON = "MON",
    TUE = "TUE",
    WED = "WED",
    THU = "THU",
    FRI = "FRI",
    SAT = "SAT",
}

M.CreateScheduledAuditInput = {
    type = "structure",
    members = {
        frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dayOfMonth = {
            type = "string",
        },
        dayOfWeek = {
            type = "string",
        },
        targetCheckNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        scheduledAuditName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateScheduledAuditOutput = {
    type = "structure",
    members = {
        scheduledAuditArn = {
            type = "string",
        },
    },
}

M.MetricsExportConfig = {
    type = "structure",
    members = {
        mqttTopic = {
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
    },
}

M.CreateSecurityProfileInput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        securityProfileDescription = {
            type = "string",
        },
        behaviors = {
            type = "list",
            member = M.Behavior,
        },
        alertTargets = {
            type = "map",
            key = { type = "string" },
            value = M.AlertTarget,
        },
        additionalMetricsToRetain = {
            type = "list",
            member = { type = "string" },
        },
        additionalMetricsToRetainV2 = {
            type = "list",
            member = M.MetricToRetain,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        metricsExportConfig = M.MetricsExportConfig,
    },
}

M.CreateSecurityProfileOutput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
        },
        securityProfileArn = {
            type = "string",
        },
    },
}

M.StreamFile = {
    type = "structure",
    members = {
        fileId = {
            type = "integer",
        },
        s3Location = M.S3Location,
    },
}

M.CreateStreamInput = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        files = {
            type = "list",
            member = M.StreamFile,
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateStreamOutput = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
        },
        streamArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        streamVersion = {
            type = "integer",
        },
    },
}

M.CreateThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingTypeName = {
            type = "string",
        },
        attributePayload = M.AttributePayload,
        billingGroupName = {
            type = "string",
        },
    },
}

M.CreateThingOutput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
        thingId = {
            type = "string",
        },
    },
}

M.CreateThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parentGroupName = {
            type = "string",
        },
        thingGroupProperties = M.ThingGroupProperties,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateThingGroupOutput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
        },
        thingGroupArn = {
            type = "string",
        },
        thingGroupId = {
            type = "string",
        },
    },
}

M.PropagatingAttribute = {
    type = "structure",
    members = {
        userPropertyKey = {
            type = "string",
        },
        thingAttribute = {
            type = "string",
        },
        connectionAttribute = {
            type = "string",
        },
    },
}

M.Mqtt5Configuration = {
    type = "structure",
    members = {
        propagatingAttributes = {
            type = "list",
            member = M.PropagatingAttribute,
        },
    },
}

M.ThingTypeProperties = {
    type = "structure",
    members = {
        thingTypeDescription = {
            type = "string",
        },
        searchableAttributes = {
            type = "list",
            member = { type = "string" },
        },
        mqtt5Configuration = M.Mqtt5Configuration,
    },
}

M.CreateThingTypeInput = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingTypeProperties = M.ThingTypeProperties,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateThingTypeOutput = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
        },
        thingTypeArn = {
            type = "string",
        },
        thingTypeId = {
            type = "string",
        },
    },
}

M.TopicRulePayload = {
    type = "structure",
    members = {
        sql = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        ruleDisabled = {
            type = "boolean",
        },
        awsIotSqlVersion = {
            type = "string",
        },
        errorAction = M.Action,
    },
}

M.CreateTopicRuleInput = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        topicRulePayload = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TopicRulePayload }),
        tags = {
            type = "string",
            traits = {
                http_header = "x-amz-tagging",
            },
        },
    },
}

M.CreateTopicRuleOutput = {
    type = "structure",
}

M.SqlParseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HttpUrlDestinationConfiguration = {
    type = "structure",
    members = {
        confirmationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcDestinationConfiguration = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        vpcId = {
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
    },
}

M.TopicRuleDestinationConfiguration = {
    type = "structure",
    members = {
        httpUrlConfiguration = M.HttpUrlDestinationConfiguration,
        vpcConfiguration = M.VpcDestinationConfiguration,
    },
}

M.CreateTopicRuleDestinationInput = {
    type = "structure",
    members = {
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TopicRuleDestinationConfiguration }),
    },
}

M.HttpUrlDestinationProperties = {
    type = "structure",
    members = {
        confirmationUrl = {
            type = "string",
        },
    },
}

M.TopicRuleDestinationStatus = {
    ENABLED = "ENABLED",
    IN_PROGRESS = "IN_PROGRESS",
    DISABLED = "DISABLED",
    ERROR = "ERROR",
    DELETING = "DELETING",
}

M.VpcDestinationProperties = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        vpcId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.TopicRuleDestination = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        statusReason = {
            type = "string",
        },
        httpUrlProperties = M.HttpUrlDestinationProperties,
        vpcProperties = M.VpcDestinationProperties,
    },
}

M.CreateTopicRuleDestinationOutput = {
    type = "structure",
    members = {
        topicRuleDestination = M.TopicRuleDestination,
    },
}

M.DeleteAccountAuditConfigurationInput = {
    type = "structure",
    members = {
        deleteScheduledAudits = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "deleteScheduledAudits",
            },
        },
    },
}

M.DeleteAccountAuditConfigurationOutput = {
    type = "structure",
}

M.DeleteAuditSuppressionInput = {
    type = "structure",
    members = {
        checkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceIdentifier }),
    },
}

M.DeleteAuditSuppressionOutput = {
    type = "structure",
}

M.DeleteAuthorizerInput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAuthorizerOutput = {
    type = "structure",
}

M.DeleteConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteBillingGroupInput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedVersion = {
            type = "long",
            traits = {
                http_query = "expectedVersion",
            },
        },
    },
}

M.DeleteBillingGroupOutput = {
    type = "structure",
}

M.CertificateStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCACertificateInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCACertificateOutput = {
    type = "structure",
}

M.DeleteCertificateInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "forceDelete",
            },
        },
    },
}

M.DeleteCertificateOutput = {
    type = "structure",
}

M.DeleteCertificateProviderInput = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCertificateProviderOutput = {
    type = "structure",
}

M.DeleteCommandInput = {
    type = "structure",
    members = {
        commandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCommandOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteCommandExecutionInput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetArn = {
            type = "string",
            traits = {
                http_query = "targetArn",
                required = true,
            },
        },
    },
}

M.DeleteCommandExecutionOutput = {
    type = "structure",
}

M.DeleteCustomMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCustomMetricOutput = {
    type = "structure",
}

M.DeleteDimensionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDimensionOutput = {
    type = "structure",
}

M.DeleteDomainConfigurationInput = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainConfigurationOutput = {
    type = "structure",
}

M.DeleteDynamicThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedVersion = {
            type = "long",
            traits = {
                http_query = "expectedVersion",
            },
        },
    },
}

M.DeleteDynamicThingGroupOutput = {
    type = "structure",
}

M.DeleteFleetMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedVersion = {
            type = "long",
            traits = {
                http_query = "expectedVersion",
            },
        },
    },
}

M.DeleteFleetMetricOutput = {
    type = "structure",
}

M.DeleteJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
        namespaceId = {
            type = "string",
            traits = {
                http_query = "namespaceId",
            },
        },
    },
}

M.DeleteJobOutput = {
    type = "structure",
}

M.DeleteJobExecutionInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionNumber = {
            type = "long",
            traits = {
                http_label = true,
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
        namespaceId = {
            type = "string",
            traits = {
                http_query = "namespaceId",
            },
        },
    },
}

M.DeleteJobExecutionOutput = {
    type = "structure",
}

M.DeleteJobTemplateInput = {
    type = "structure",
    members = {
        jobTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteJobTemplateOutput = {
    type = "structure",
}

M.DeleteMitigationActionInput = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMitigationActionOutput = {
    type = "structure",
}

M.DeleteOTAUpdateInput = {
    type = "structure",
    members = {
        otaUpdateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        deleteStream = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "deleteStream",
            },
        },
        forceDeleteAWSJob = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "forceDeleteAWSJob",
            },
        },
    },
}

M.DeleteOTAUpdateOutput = {
    type = "structure",
}

M.DeletePackageInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeletePackageOutput = {
    type = "structure",
}

M.DeletePackageVersionInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeletePackageVersionOutput = {
    type = "structure",
}

M.DeletePolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePolicyOutput = {
    type = "structure",
}

M.DeletePolicyVersionInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePolicyVersionOutput = {
    type = "structure",
}

M.DeleteProvisioningTemplateInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProvisioningTemplateOutput = {
    type = "structure",
}

M.DeleteProvisioningTemplateVersionInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionId = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProvisioningTemplateVersionOutput = {
    type = "structure",
}

M.DeleteRegistrationCodeInput = {
    type = "structure",
}

M.DeleteRegistrationCodeOutput = {
    type = "structure",
}

M.DeleteRoleAliasInput = {
    type = "structure",
    members = {
        roleAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoleAliasOutput = {
    type = "structure",
}

M.DeleteScheduledAuditInput = {
    type = "structure",
    members = {
        scheduledAuditName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteScheduledAuditOutput = {
    type = "structure",
}

M.DeleteSecurityProfileInput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedVersion = {
            type = "long",
            traits = {
                http_query = "expectedVersion",
            },
        },
    },
}

M.DeleteSecurityProfileOutput = {
    type = "structure",
}

M.DeleteStreamInput = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteStreamOutput = {
    type = "structure",
}

M.DeleteThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedVersion = {
            type = "long",
            traits = {
                http_query = "expectedVersion",
            },
        },
    },
}

M.DeleteThingOutput = {
    type = "structure",
}

M.DeleteThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedVersion = {
            type = "long",
            traits = {
                http_query = "expectedVersion",
            },
        },
    },
}

M.DeleteThingGroupOutput = {
    type = "structure",
}

M.DeleteThingTypeInput = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteThingTypeOutput = {
    type = "structure",
}

M.DeleteTopicRuleInput = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTopicRuleOutput = {
    type = "structure",
}

M.DeleteTopicRuleDestinationInput = {
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

M.DeleteTopicRuleDestinationOutput = {
    type = "structure",
}

M.LogTargetType = {
    DEFAULT = "DEFAULT",
    THING_GROUP = "THING_GROUP",
    CLIENT_ID = "CLIENT_ID",
    SOURCE_IP = "SOURCE_IP",
    PRINCIPAL_ID = "PRINCIPAL_ID",
}

M.DeleteV2LoggingLevelInput = {
    type = "structure",
    members = {
        targetType = {
            type = "string",
            traits = {
                http_query = "targetType",
                required = true,
            },
        },
        targetName = {
            type = "string",
            traits = {
                http_query = "targetName",
                required = true,
            },
        },
    },
}

M.DeleteV2LoggingLevelOutput = {
    type = "structure",
}

M.DeprecateThingTypeInput = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        undoDeprecate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeprecateThingTypeOutput = {
    type = "structure",
}

M.DescribeAccountAuditConfigurationInput = {
    type = "structure",
}

M.DescribeAccountAuditConfigurationOutput = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        auditNotificationTargetConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.AuditNotificationTarget,
        },
        auditCheckConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.AuditCheckConfiguration,
        },
    },
}

M.DescribeAuditFindingInput = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAuditFindingOutput = {
    type = "structure",
    members = {
        finding = M.AuditFinding,
    },
}

M.DescribeAuditMitigationActionsTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MitigationAction = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        actionParams = M.MitigationActionParams,
    },
}

M.DescribeAuditMitigationActionsTaskOutput = {
    type = "structure",
    members = {
        taskStatus = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        taskStatistics = {
            type = "map",
            key = { type = "string" },
            value = M.TaskStatisticsForAuditCheck,
        },
        target = M.AuditMitigationActionsTaskTarget,
        auditCheckToActionsMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        actionsDefinition = {
            type = "list",
            member = M.MitigationAction,
        },
    },
}

M.DescribeAuditSuppressionInput = {
    type = "structure",
    members = {
        checkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceIdentifier }),
    },
}

M.DescribeAuditSuppressionOutput = {
    type = "structure",
    members = {
        checkName = {
            type = "string",
        },
        resourceIdentifier = M.ResourceIdentifier,
        expirationDate = {
            type = "timestamp",
        },
        suppressIndefinitely = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
    },
}

M.DescribeAuditTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TaskStatistics = {
    type = "structure",
    members = {
        totalChecks = {
            type = "integer",
        },
        inProgressChecks = {
            type = "integer",
        },
        waitingForDataCollectionChecks = {
            type = "integer",
        },
        compliantChecks = {
            type = "integer",
        },
        nonCompliantChecks = {
            type = "integer",
        },
        failedChecks = {
            type = "integer",
        },
        canceledChecks = {
            type = "integer",
        },
    },
}

M.DescribeAuditTaskOutput = {
    type = "structure",
    members = {
        taskStatus = {
            type = "string",
        },
        taskType = {
            type = "string",
        },
        taskStartTime = {
            type = "timestamp",
        },
        taskStatistics = M.TaskStatistics,
        scheduledAuditName = {
            type = "string",
        },
        auditDetails = {
            type = "map",
            key = { type = "string" },
            value = M.AuditCheckDetails,
        },
    },
}

M.DescribeAuthorizerInput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAuthorizerOutput = {
    type = "structure",
    members = {
        authorizerDescription = M.AuthorizerDescription,
    },
}

M.DescribeBillingGroupInput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BillingGroupMetadata = {
    type = "structure",
    members = {
        creationDate = {
            type = "timestamp",
        },
    },
}

M.DescribeBillingGroupOutput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
        },
        billingGroupId = {
            type = "string",
        },
        billingGroupArn = {
            type = "string",
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        billingGroupProperties = M.BillingGroupProperties,
        billingGroupMetadata = M.BillingGroupMetadata,
    },
}

M.DescribeCACertificateInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CertificateMode = {
    DEFAULT = "DEFAULT",
    SNI_ONLY = "SNI_ONLY",
}

M.CACertificateStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.CertificateValidity = {
    type = "structure",
    members = {
        notBefore = {
            type = "timestamp",
        },
        notAfter = {
            type = "timestamp",
        },
    },
}

M.CACertificateDescription = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        certificatePem = {
            type = "string",
        },
        ownedBy = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        autoRegistrationStatus = {
            type = "string",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        customerVersion = {
            type = "integer",
        },
        generationId = {
            type = "string",
        },
        validity = M.CertificateValidity,
        certificateMode = {
            type = "string",
        },
    },
}

M.RegistrationConfig = {
    type = "structure",
    members = {
        templateBody = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        templateName = {
            type = "string",
        },
    },
}

M.DescribeCACertificateOutput = {
    type = "structure",
    members = {
        certificateDescription = M.CACertificateDescription,
        registrationConfig = M.RegistrationConfig,
    },
}

M.DescribeCertificateInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CertificateStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    REVOKED = "REVOKED",
    PENDING_TRANSFER = "PENDING_TRANSFER",
    REGISTER_INACTIVE = "REGISTER_INACTIVE",
    PENDING_ACTIVATION = "PENDING_ACTIVATION",
}

M.TransferData = {
    type = "structure",
    members = {
        transferMessage = {
            type = "string",
        },
        rejectReason = {
            type = "string",
        },
        transferDate = {
            type = "timestamp",
        },
        acceptDate = {
            type = "timestamp",
        },
        rejectDate = {
            type = "timestamp",
        },
    },
}

M.CertificateDescription = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
        caCertificateId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        certificatePem = {
            type = "string",
        },
        ownedBy = {
            type = "string",
        },
        previousOwnedBy = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        customerVersion = {
            type = "integer",
        },
        transferData = M.TransferData,
        generationId = {
            type = "string",
        },
        validity = M.CertificateValidity,
        certificateMode = {
            type = "string",
        },
    },
}

M.DescribeCertificateOutput = {
    type = "structure",
    members = {
        certificateDescription = M.CertificateDescription,
    },
}

M.DescribeCertificateProviderInput = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeCertificateProviderOutput = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
        },
        certificateProviderArn = {
            type = "string",
        },
        lambdaFunctionArn = {
            type = "string",
        },
        accountDefaultForOperations = {
            type = "list",
            member = { type = "string" },
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeCustomMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeCustomMetricOutput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
        },
        metricArn = {
            type = "string",
        },
        metricType = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeDefaultAuthorizerInput = {
    type = "structure",
}

M.DescribeDefaultAuthorizerOutput = {
    type = "structure",
    members = {
        authorizerDescription = M.AuthorizerDescription,
    },
}

M.DescribeDetectMitigationActionsTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DetectMitigationActionsTaskTarget = {
    type = "structure",
    members = {
        violationIds = {
            type = "list",
            member = { type = "string" },
        },
        securityProfileName = {
            type = "string",
        },
        behaviorName = {
            type = "string",
        },
    },
}

M.DetectMitigationActionsTaskStatistics = {
    type = "structure",
    members = {
        actionsExecuted = {
            type = "long",
        },
        actionsSkipped = {
            type = "long",
        },
        actionsFailed = {
            type = "long",
        },
    },
}

M.DetectMitigationActionsTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.ViolationEventOccurrenceRange = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.DetectMitigationActionsTaskSummary = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        taskStatus = {
            type = "string",
        },
        taskStartTime = {
            type = "timestamp",
        },
        taskEndTime = {
            type = "timestamp",
        },
        target = M.DetectMitigationActionsTaskTarget,
        violationEventOccurrenceRange = M.ViolationEventOccurrenceRange,
        onlyActiveViolationsIncluded = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        suppressedAlertsIncluded = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        actionsDefinition = {
            type = "list",
            member = M.MitigationAction,
        },
        taskStatistics = M.DetectMitigationActionsTaskStatistics,
    },
}

M.DescribeDetectMitigationActionsTaskOutput = {
    type = "structure",
    members = {
        taskSummary = M.DetectMitigationActionsTaskSummary,
    },
}

M.DescribeDimensionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDimensionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        stringValues = {
            type = "list",
            member = { type = "string" },
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeDomainConfigurationInput = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DomainConfigurationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DomainType = {
    ENDPOINT = "ENDPOINT",
    AWS_MANAGED = "AWS_MANAGED",
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
}

M.ServerCertificateStatus = {
    INVALID = "INVALID",
    VALID = "VALID",
}

M.ServerCertificateSummary = {
    type = "structure",
    members = {
        serverCertificateArn = {
            type = "string",
        },
        serverCertificateStatus = {
            type = "string",
        },
        serverCertificateStatusDetail = {
            type = "string",
        },
    },
}

M.DescribeDomainConfigurationOutput = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
        },
        domainConfigurationArn = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        serverCertificates = {
            type = "list",
            member = M.ServerCertificateSummary,
        },
        authorizerConfig = M.AuthorizerConfig,
        domainConfigurationStatus = {
            type = "string",
        },
        serviceType = {
            type = "string",
        },
        domainType = {
            type = "string",
        },
        lastStatusChangeDate = {
            type = "timestamp",
        },
        tlsConfig = M.TlsConfig,
        serverCertificateConfig = M.ServerCertificateConfig,
        authenticationType = {
            type = "string",
        },
        applicationProtocol = {
            type = "string",
        },
        clientCertificateConfig = M.ClientCertificateConfig,
    },
}

M.DescribeEncryptionConfigurationInput = {
    type = "structure",
}

M.ConfigurationStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.ConfigurationDetails = {
    type = "structure",
    members = {
        configurationStatus = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
}

M.DescribeEncryptionConfigurationOutput = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        kmsAccessRoleArn = {
            type = "string",
        },
        configurationDetails = M.ConfigurationDetails,
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeEndpointInput = {
    type = "structure",
    members = {
        endpointType = {
            type = "string",
            traits = {
                http_query = "endpointType",
            },
        },
    },
}

M.DescribeEndpointOutput = {
    type = "structure",
    members = {
        endpointAddress = {
            type = "string",
        },
    },
}

M.DescribeEventConfigurationsInput = {
    type = "structure",
}

M.EventType = {
    THING = "THING",
    THING_GROUP = "THING_GROUP",
    THING_TYPE = "THING_TYPE",
    THING_GROUP_MEMBERSHIP = "THING_GROUP_MEMBERSHIP",
    THING_GROUP_HIERARCHY = "THING_GROUP_HIERARCHY",
    THING_TYPE_ASSOCIATION = "THING_TYPE_ASSOCIATION",
    JOB = "JOB",
    JOB_EXECUTION = "JOB_EXECUTION",
    POLICY = "POLICY",
    CERTIFICATE = "CERTIFICATE",
    CA_CERTIFICATE = "CA_CERTIFICATE",
}

M.Configuration = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeEventConfigurationsOutput = {
    type = "structure",
    members = {
        eventConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.Configuration,
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeFleetMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeFleetMetricOutput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        aggregationType = M.AggregationType,
        period = {
            type = "integer",
        },
        aggregationField = {
            type = "string",
        },
        description = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
        indexName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        unit = {
            type = "string",
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        metricArn = {
            type = "string",
        },
    },
}

M.DescribeIndexInput = {
    type = "structure",
    members = {
        indexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IndexStatus = {
    ACTIVE = "ACTIVE",
    BUILDING = "BUILDING",
    REBUILDING = "REBUILDING",
}

M.DescribeIndexOutput = {
    type = "structure",
    members = {
        indexName = {
            type = "string",
        },
        indexStatus = {
            type = "string",
        },
        schema = {
            type = "string",
        },
    },
}

M.DescribeJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        beforeSubstitution = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "beforeSubstitution",
            },
        },
    },
}

M.JobProcessDetails = {
    type = "structure",
    members = {
        processingTargets = {
            type = "list",
            member = { type = "string" },
        },
        numberOfCanceledThings = {
            type = "integer",
        },
        numberOfSucceededThings = {
            type = "integer",
        },
        numberOfFailedThings = {
            type = "integer",
        },
        numberOfRejectedThings = {
            type = "integer",
        },
        numberOfQueuedThings = {
            type = "integer",
        },
        numberOfInProgressThings = {
            type = "integer",
        },
        numberOfRemovedThings = {
            type = "integer",
        },
        numberOfTimedOutThings = {
            type = "integer",
        },
    },
}

M.ScheduledJobRollout = {
    type = "structure",
    members = {
        startTime = {
            type = "string",
        },
    },
}

M.JobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELED = "CANCELED",
    COMPLETED = "COMPLETED",
    DELETION_IN_PROGRESS = "DELETION_IN_PROGRESS",
    SCHEDULED = "SCHEDULED",
}

M.Job = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        targetSelection = {
            type = "string",
        },
        status = {
            type = "string",
        },
        forceCanceled = {
            type = "boolean",
        },
        reasonCode = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        targets = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
        presignedUrlConfig = M.PresignedUrlConfig,
        jobExecutionsRolloutConfig = M.JobExecutionsRolloutConfig,
        abortConfig = M.AbortConfig,
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
        jobProcessDetails = M.JobProcessDetails,
        timeoutConfig = M.TimeoutConfig,
        namespaceId = {
            type = "string",
        },
        jobTemplateArn = {
            type = "string",
        },
        jobExecutionsRetryConfig = M.JobExecutionsRetryConfig,
        documentParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        isConcurrent = {
            type = "boolean",
        },
        schedulingConfig = M.SchedulingConfig,
        scheduledJobRollouts = {
            type = "list",
            member = M.ScheduledJobRollout,
        },
        destinationPackageVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeJobOutput = {
    type = "structure",
    members = {
        documentSource = {
            type = "string",
        },
        job = M.Job,
    },
}

M.DescribeJobExecutionInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionNumber = {
            type = "long",
            traits = {
                http_query = "executionNumber",
            },
        },
    },
}

M.JobExecutionStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    REJECTED = "REJECTED",
    REMOVED = "REMOVED",
    CANCELED = "CANCELED",
}

M.JobExecutionStatusDetails = {
    type = "structure",
    members = {
        detailsMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.JobExecution = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        forceCanceled = {
            type = "boolean",
        },
        statusDetails = M.JobExecutionStatusDetails,
        thingArn = {
            type = "string",
        },
        queuedAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        executionNumber = {
            type = "long",
        },
        versionNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        approximateSecondsBeforeTimedOut = {
            type = "long",
        },
    },
}

M.DescribeJobExecutionOutput = {
    type = "structure",
    members = {
        execution = M.JobExecution,
    },
}

M.DescribeJobTemplateInput = {
    type = "structure",
    members = {
        jobTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeJobTemplateOutput = {
    type = "structure",
    members = {
        jobTemplateArn = {
            type = "string",
        },
        jobTemplateId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        documentSource = {
            type = "string",
        },
        document = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        presignedUrlConfig = M.PresignedUrlConfig,
        jobExecutionsRolloutConfig = M.JobExecutionsRolloutConfig,
        abortConfig = M.AbortConfig,
        timeoutConfig = M.TimeoutConfig,
        jobExecutionsRetryConfig = M.JobExecutionsRetryConfig,
        maintenanceWindows = {
            type = "list",
            member = M.MaintenanceWindow,
        },
        destinationPackageVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeManagedJobTemplateInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateVersion = {
            type = "string",
            traits = {
                http_query = "templateVersion",
            },
        },
    },
}

M.DocumentParameter = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        description = {
            type = "string",
        },
        regex = {
            type = "string",
        },
        example = {
            type = "string",
        },
        optional = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeManagedJobTemplateOutput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
        },
        templateArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        templateVersion = {
            type = "string",
        },
        environments = {
            type = "list",
            member = { type = "string" },
        },
        documentParameters = {
            type = "list",
            member = M.DocumentParameter,
        },
        document = {
            type = "string",
        },
    },
}

M.DescribeMitigationActionInput = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MitigationActionType = {
    UPDATE_DEVICE_CERTIFICATE = "UPDATE_DEVICE_CERTIFICATE",
    UPDATE_CA_CERTIFICATE = "UPDATE_CA_CERTIFICATE",
    ADD_THINGS_TO_THING_GROUP = "ADD_THINGS_TO_THING_GROUP",
    REPLACE_DEFAULT_POLICY_VERSION = "REPLACE_DEFAULT_POLICY_VERSION",
    ENABLE_IOT_LOGGING = "ENABLE_IOT_LOGGING",
    PUBLISH_FINDING_TO_SNS = "PUBLISH_FINDING_TO_SNS",
}

M.DescribeMitigationActionOutput = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
        },
        actionType = {
            type = "string",
        },
        actionArn = {
            type = "string",
        },
        actionId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        actionParams = M.MitigationActionParams,
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeProvisioningTemplateInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeProvisioningTemplateOutput = {
    type = "structure",
    members = {
        templateArn = {
            type = "string",
        },
        templateName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        defaultVersionId = {
            type = "integer",
        },
        templateBody = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        provisioningRoleArn = {
            type = "string",
        },
        preProvisioningHook = M.ProvisioningHook,
        type = {
            type = "string",
        },
    },
}

M.DescribeProvisioningTemplateVersionInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionId = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeProvisioningTemplateVersionOutput = {
    type = "structure",
    members = {
        versionId = {
            type = "integer",
        },
        creationDate = {
            type = "timestamp",
        },
        templateBody = {
            type = "string",
        },
        isDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeRoleAliasInput = {
    type = "structure",
    members = {
        roleAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RoleAliasDescription = {
    type = "structure",
    members = {
        roleAlias = {
            type = "string",
        },
        roleAliasArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        credentialDurationSeconds = {
            type = "integer",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeRoleAliasOutput = {
    type = "structure",
    members = {
        roleAliasDescription = M.RoleAliasDescription,
    },
}

M.DescribeScheduledAuditInput = {
    type = "structure",
    members = {
        scheduledAuditName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeScheduledAuditOutput = {
    type = "structure",
    members = {
        frequency = {
            type = "string",
        },
        dayOfMonth = {
            type = "string",
        },
        dayOfWeek = {
            type = "string",
        },
        targetCheckNames = {
            type = "list",
            member = { type = "string" },
        },
        scheduledAuditName = {
            type = "string",
        },
        scheduledAuditArn = {
            type = "string",
        },
    },
}

M.DescribeSecurityProfileInput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeSecurityProfileOutput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
        },
        securityProfileArn = {
            type = "string",
        },
        securityProfileDescription = {
            type = "string",
        },
        behaviors = {
            type = "list",
            member = M.Behavior,
        },
        alertTargets = {
            type = "map",
            key = { type = "string" },
            value = M.AlertTarget,
        },
        additionalMetricsToRetain = {
            type = "list",
            member = { type = "string" },
        },
        additionalMetricsToRetainV2 = {
            type = "list",
            member = M.MetricToRetain,
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        metricsExportConfig = M.MetricsExportConfig,
    },
}

M.DescribeStreamInput = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StreamInfo = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
        },
        streamArn = {
            type = "string",
        },
        streamVersion = {
            type = "integer",
        },
        description = {
            type = "string",
        },
        files = {
            type = "list",
            member = M.StreamFile,
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.DescribeStreamOutput = {
    type = "structure",
    members = {
        streamInfo = M.StreamInfo,
    },
}

M.DescribeThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeThingOutput = {
    type = "structure",
    members = {
        defaultClientId = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        thingId = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
        thingTypeName = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        billingGroupName = {
            type = "string",
        },
    },
}

M.DescribeThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DynamicGroupStatus = {
    ACTIVE = "ACTIVE",
    BUILDING = "BUILDING",
    REBUILDING = "REBUILDING",
}

M.GroupNameAndArn = {
    type = "structure",
    members = {
        groupName = {
            type = "string",
        },
        groupArn = {
            type = "string",
        },
    },
}

M.ThingGroupMetadata = {
    type = "structure",
    members = {
        parentGroupName = {
            type = "string",
        },
        rootToParentThingGroups = {
            type = "list",
            member = M.GroupNameAndArn,
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.DescribeThingGroupOutput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
        },
        thingGroupId = {
            type = "string",
        },
        thingGroupArn = {
            type = "string",
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        thingGroupProperties = M.ThingGroupProperties,
        thingGroupMetadata = M.ThingGroupMetadata,
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DescribeThingRegistrationTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Status = {
    InProgress = "InProgress",
    Completed = "Completed",
    Failed = "Failed",
    Cancelled = "Cancelled",
    Cancelling = "Cancelling",
}

M.DescribeThingRegistrationTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        templateBody = {
            type = "string",
        },
        inputFileBucket = {
            type = "string",
        },
        inputFileKey = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        message = {
            type = "string",
        },
        successCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        failureCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        percentageProgress = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeThingTypeInput = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ThingTypeMetadata = {
    type = "structure",
    members = {
        deprecated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        deprecationDate = {
            type = "timestamp",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.DescribeThingTypeOutput = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
        },
        thingTypeId = {
            type = "string",
        },
        thingTypeArn = {
            type = "string",
        },
        thingTypeProperties = M.ThingTypeProperties,
        thingTypeMetadata = M.ThingTypeMetadata,
    },
}

M.DetachPolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachPolicyOutput = {
    type = "structure",
}

M.DetachPrincipalPolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principal = {
            type = "string",
            traits = {
                http_header = "x-amzn-iot-principal",
                required = true,
            },
        },
    },
}

M.DetachPrincipalPolicyOutput = {
    type = "structure",
}

M.DetachSecurityProfileInput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        securityProfileTargetArn = {
            type = "string",
            traits = {
                http_query = "securityProfileTargetArn",
                required = true,
            },
        },
    },
}

M.DetachSecurityProfileOutput = {
    type = "structure",
}

M.DetachThingPrincipalInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principal = {
            type = "string",
            traits = {
                http_header = "x-amzn-principal",
                required = true,
            },
        },
    },
}

M.DetachThingPrincipalOutput = {
    type = "structure",
}

M.DisableTopicRuleInput = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisableTopicRuleOutput = {
    type = "structure",
}

M.DisassociateSbomFromPackageVersionInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DisassociateSbomFromPackageVersionOutput = {
    type = "structure",
}

M.EnableTopicRuleInput = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EnableTopicRuleOutput = {
    type = "structure",
}

M.GetBehaviorModelTrainingSummariesInput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
            traits = {
                http_query = "securityProfileName",
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
    },
}

M.ModelStatus = {
    PENDING_BUILD = "PENDING_BUILD",
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
}

M.BehaviorModelTrainingSummary = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
        },
        behaviorName = {
            type = "string",
        },
        trainingDataCollectionStartDate = {
            type = "timestamp",
        },
        modelStatus = {
            type = "string",
        },
        datapointsCollectionPercentage = {
            type = "double",
        },
        lastModelRefreshDate = {
            type = "timestamp",
        },
    },
}

M.GetBehaviorModelTrainingSummariesOutput = {
    type = "structure",
    members = {
        summaries = {
            type = "list",
            member = M.BehaviorModelTrainingSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TermsAggregation = {
    type = "structure",
    members = {
        maxBuckets = {
            type = "integer",
        },
    },
}

M.BucketsAggregationType = {
    type = "structure",
    members = {
        termsAggregation = M.TermsAggregation,
    },
}

M.GetBucketsAggregationInput = {
    type = "structure",
    members = {
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryVersion = {
            type = "string",
        },
        bucketsAggregationType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BucketsAggregationType }),
    },
}

M.Bucket = {
    type = "structure",
    members = {
        keyValue = {
            type = "string",
        },
        count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetBucketsAggregationOutput = {
    type = "structure",
    members = {
        totalCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        buckets = {
            type = "list",
            member = M.Bucket,
        },
    },
}

M.GetCardinalityInput = {
    type = "structure",
    members = {
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationField = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
    },
}

M.GetCardinalityOutput = {
    type = "structure",
    members = {
        cardinality = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetCommandInput = {
    type = "structure",
    members = {
        commandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCommandOutput = {
    type = "structure",
    members = {
        commandId = {
            type = "string",
        },
        commandArn = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        mandatoryParameters = {
            type = "list",
            member = M.CommandParameter,
        },
        payload = M.CommandPayload,
        payloadTemplate = {
            type = "string",
        },
        preprocessor = M.CommandPreprocessor,
        roleArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        deprecated = {
            type = "boolean",
        },
        pendingDeletion = {
            type = "boolean",
        },
    },
}

M.GetCommandExecutionInput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetArn = {
            type = "string",
            traits = {
                http_query = "targetArn",
                required = true,
            },
        },
        includeResult = {
            type = "boolean",
            traits = {
                http_query = "includeResult",
            },
        },
    },
}

M.CommandExecutionResult = {
    type = "structure",
    members = {
        S = {
            type = "string",
        },
        B = {
            type = "boolean",
        },
        BIN = {
            type = "blob",
        },
    },
}

M.CommandExecutionStatus = {
    CREATED = "CREATED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
}

M.StatusReason = {
    type = "structure",
    members = {
        reasonCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reasonDescription = {
            type = "string",
        },
    },
}

M.GetCommandExecutionOutput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
        },
        commandArn = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = M.StatusReason,
        result = {
            type = "map",
            key = { type = "string" },
            value = M.CommandExecutionResult,
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.CommandParameterValue,
        },
        executionTimeoutSeconds = {
            type = "long",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
        timeToLive = {
            type = "timestamp",
        },
    },
}

M.GetEffectivePoliciesInput = {
    type = "structure",
    members = {
        principal = {
            type = "string",
        },
        cognitoIdentityPoolId = {
            type = "string",
        },
        thingName = {
            type = "string",
            traits = {
                http_query = "thingName",
            },
        },
    },
}

M.EffectivePolicy = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
        },
        policyArn = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
    },
}

M.GetEffectivePoliciesOutput = {
    type = "structure",
    members = {
        effectivePolicies = {
            type = "list",
            member = M.EffectivePolicy,
        },
    },
}

M.GetIndexingConfigurationInput = {
    type = "structure",
}

M.FieldType = {
    NUMBER = "Number",
    STRING = "String",
    BOOLEAN = "Boolean",
}

M.Field = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.ThingGroupIndexingMode = {
    OFF = "OFF",
    ON = "ON",
}

M.ThingGroupIndexingConfiguration = {
    type = "structure",
    members = {
        thingGroupIndexingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedFields = {
            type = "list",
            member = M.Field,
        },
        customFields = {
            type = "list",
            member = M.Field,
        },
    },
}

M.DeviceDefenderIndexingMode = {
    OFF = "OFF",
    VIOLATIONS = "VIOLATIONS",
}

M.TargetFieldOrder = {
    LatLon = "LatLon",
    LonLat = "LonLat",
}

M.GeoLocationTarget = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        order = {
            type = "string",
        },
    },
}

M.IndexingFilter = {
    type = "structure",
    members = {
        namedShadowNames = {
            type = "list",
            member = { type = "string" },
        },
        geoLocations = {
            type = "list",
            member = M.GeoLocationTarget,
        },
    },
}

M.NamedShadowIndexingMode = {
    OFF = "OFF",
    ON = "ON",
}

M.ThingConnectivityIndexingMode = {
    OFF = "OFF",
    STATUS = "STATUS",
}

M.ThingIndexingMode = {
    OFF = "OFF",
    REGISTRY = "REGISTRY",
    REGISTRY_AND_SHADOW = "REGISTRY_AND_SHADOW",
}

M.ThingIndexingConfiguration = {
    type = "structure",
    members = {
        thingIndexingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thingConnectivityIndexingMode = {
            type = "string",
        },
        deviceDefenderIndexingMode = {
            type = "string",
        },
        namedShadowIndexingMode = {
            type = "string",
        },
        managedFields = {
            type = "list",
            member = M.Field,
        },
        customFields = {
            type = "list",
            member = M.Field,
        },
        filter = M.IndexingFilter,
    },
}

M.GetIndexingConfigurationOutput = {
    type = "structure",
    members = {
        thingIndexingConfiguration = M.ThingIndexingConfiguration,
        thingGroupIndexingConfiguration = M.ThingGroupIndexingConfiguration,
    },
}

M.GetJobDocumentInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        beforeSubstitution = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "beforeSubstitution",
            },
        },
    },
}

M.GetJobDocumentOutput = {
    type = "structure",
    members = {
        document = {
            type = "string",
        },
    },
}

M.GetLoggingOptionsInput = {
    type = "structure",
}

M.GetLoggingOptionsOutput = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        logLevel = {
            type = "string",
        },
    },
}

M.GetOTAUpdateInput = {
    type = "structure",
    members = {
        otaUpdateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ErrorInfo = {
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

M.OTAUpdateInfo = {
    type = "structure",
    members = {
        otaUpdateId = {
            type = "string",
        },
        otaUpdateArn = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        targets = {
            type = "list",
            member = { type = "string" },
        },
        protocols = {
            type = "list",
            member = { type = "string" },
        },
        awsJobExecutionsRolloutConfig = M.AwsJobExecutionsRolloutConfig,
        awsJobPresignedUrlConfig = M.AwsJobPresignedUrlConfig,
        targetSelection = {
            type = "string",
        },
        otaUpdateFiles = {
            type = "list",
            member = M.OTAUpdateFile,
        },
        otaUpdateStatus = {
            type = "string",
        },
        awsIotJobId = {
            type = "string",
        },
        awsIotJobArn = {
            type = "string",
        },
        errorInfo = M.ErrorInfo,
        additionalParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetOTAUpdateOutput = {
    type = "structure",
    members = {
        otaUpdateInfo = M.OTAUpdateInfo,
    },
}

M.GetPackageInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPackageOutput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
        },
        packageArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        defaultVersionName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.GetPackageConfigurationInput = {
    type = "structure",
}

M.VersionUpdateByJobsConfig = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.GetPackageConfigurationOutput = {
    type = "structure",
    members = {
        versionUpdateByJobsConfig = M.VersionUpdateByJobsConfig,
    },
}

M.GetPackageVersionInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPackageVersionOutput = {
    type = "structure",
    members = {
        packageVersionArn = {
            type = "string",
        },
        packageName = {
            type = "string",
        },
        versionName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        artifact = M.PackageVersionArtifact,
        status = {
            type = "string",
        },
        errorReason = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        sbom = M.Sbom,
        sbomValidationStatus = {
            type = "string",
        },
        recipe = {
            type = "string",
        },
    },
}

M.GetPercentilesInput = {
    type = "structure",
    members = {
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationField = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
        percents = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.PercentPair = {
    type = "structure",
    members = {
        percent = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetPercentilesOutput = {
    type = "structure",
    members = {
        percentiles = {
            type = "list",
            member = M.PercentPair,
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    members = {
        policyName = {
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
        policyName = {
            type = "string",
        },
        policyArn = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        defaultVersionId = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        generationId = {
            type = "string",
        },
    },
}

M.GetPolicyVersionInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPolicyVersionOutput = {
    type = "structure",
    members = {
        policyArn = {
            type = "string",
        },
        policyName = {
            type = "string",
        },
        policyDocument = {
            type = "string",
        },
        policyVersionId = {
            type = "string",
        },
        isDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        generationId = {
            type = "string",
        },
    },
}

M.GetRegistrationCodeInput = {
    type = "structure",
}

M.GetRegistrationCodeOutput = {
    type = "structure",
    members = {
        registrationCode = {
            type = "string",
        },
    },
}

M.GetStatisticsInput = {
    type = "structure",
    members = {
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationField = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
    },
}

M.Statistics = {
    type = "structure",
    members = {
        count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        average = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        sum = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        minimum = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        maximum = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        sumOfSquares = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        variance = {
            type = "double",
            traits = {
                default = nil,
            },
        },
        stdDeviation = {
            type = "double",
            traits = {
                default = nil,
            },
        },
    },
}

M.GetStatisticsOutput = {
    type = "structure",
    members = {
        statistics = M.Statistics,
    },
}

M.GetThingConnectivityDataInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisconnectReasonValue = {
    AUTH_ERROR = "AUTH_ERROR",
    CLIENT_INITIATED_DISCONNECT = "CLIENT_INITIATED_DISCONNECT",
    CLIENT_ERROR = "CLIENT_ERROR",
    CONNECTION_LOST = "CONNECTION_LOST",
    DUPLICATE_CLIENTID = "DUPLICATE_CLIENTID",
    FORBIDDEN_ACCESS = "FORBIDDEN_ACCESS",
    MQTT_KEEP_ALIVE_TIMEOUT = "MQTT_KEEP_ALIVE_TIMEOUT",
    SERVER_ERROR = "SERVER_ERROR",
    SERVER_INITIATED_DISCONNECT = "SERVER_INITIATED_DISCONNECT",
    THROTTLED = "THROTTLED",
    WEBSOCKET_TTL_EXPIRATION = "WEBSOCKET_TTL_EXPIRATION",
    CUSTOMAUTH_TTL_EXPIRATION = "CUSTOMAUTH_TTL_EXPIRATION",
    UNKNOWN = "UNKNOWN",
    NONE = "NONE",
}

M.GetThingConnectivityDataOutput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        connected = {
            type = "boolean",
        },
        timestamp = {
            type = "timestamp",
        },
        disconnectReason = {
            type = "string",
        },
    },
}

M.GetTopicRuleInput = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TopicRule = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
        },
        sql = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        actions = {
            type = "list",
            member = M.Action,
        },
        ruleDisabled = {
            type = "boolean",
        },
        awsIotSqlVersion = {
            type = "string",
        },
        errorAction = M.Action,
    },
}

M.GetTopicRuleOutput = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
        },
        rule = M.TopicRule,
    },
}

M.GetTopicRuleDestinationInput = {
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

M.GetTopicRuleDestinationOutput = {
    type = "structure",
    members = {
        topicRuleDestination = M.TopicRuleDestination,
    },
}

M.GetV2LoggingOptionsInput = {
    type = "structure",
    members = {
        verbose = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "verbose",
            },
        },
    },
}

M.LogEventConfiguration = {
    type = "structure",
    members = {
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logLevel = {
            type = "string",
        },
        logDestination = {
            type = "string",
        },
    },
}

M.GetV2LoggingOptionsOutput = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        defaultLogLevel = {
            type = "string",
        },
        disableAllLogs = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        eventConfigurations = {
            type = "list",
            member = M.LogEventConfiguration,
        },
    },
}

M.NotConfiguredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BehaviorCriteriaType = {
    STATIC = "STATIC",
    STATISTICAL = "STATISTICAL",
    MACHINE_LEARNING = "MACHINE_LEARNING",
}

M.ListActiveViolationsInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_query = "thingName",
            },
        },
        securityProfileName = {
            type = "string",
            traits = {
                http_query = "securityProfileName",
            },
        },
        behaviorCriteriaType = {
            type = "string",
            traits = {
                http_query = "behaviorCriteriaType",
            },
        },
        listSuppressedAlerts = {
            type = "boolean",
            traits = {
                http_query = "listSuppressedAlerts",
            },
        },
        verificationState = {
            type = "string",
            traits = {
                http_query = "verificationState",
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

M.ListActiveViolationsOutput = {
    type = "structure",
    members = {
        activeViolations = {
            type = "list",
            member = M.ActiveViolation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAttachedPoliciesInput = {
    type = "structure",
    members = {
        target = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recursive = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "recursive",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListAttachedPoliciesOutput = {
    type = "structure",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListAuditFindingsInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        checkName = {
            type = "string",
        },
        resourceIdentifier = M.ResourceIdentifier,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        listSuppressedFindings = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListAuditFindingsOutput = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member = M.AuditFinding,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAuditMitigationActionsExecutionsInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_query = "taskId",
                required = true,
            },
        },
        actionStatus = {
            type = "string",
            traits = {
                http_query = "actionStatus",
            },
        },
        findingId = {
            type = "string",
            traits = {
                http_query = "findingId",
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
    },
}

M.ListAuditMitigationActionsExecutionsOutput = {
    type = "structure",
    members = {
        actionsExecutions = {
            type = "list",
            member = M.AuditMitigationActionExecutionMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAuditMitigationActionsTasksInput = {
    type = "structure",
    members = {
        auditTaskId = {
            type = "string",
            traits = {
                http_query = "auditTaskId",
            },
        },
        findingId = {
            type = "string",
            traits = {
                http_query = "findingId",
            },
        },
        taskStatus = {
            type = "string",
            traits = {
                http_query = "taskStatus",
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
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
            },
        },
    },
}

M.ListAuditMitigationActionsTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.AuditMitigationActionsTaskMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAuditSuppressionsInput = {
    type = "structure",
    members = {
        checkName = {
            type = "string",
        },
        resourceIdentifier = M.ResourceIdentifier,
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
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

M.ListAuditSuppressionsOutput = {
    type = "structure",
    members = {
        suppressions = {
            type = "list",
            member = M.AuditSuppression,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAuditTasksInput = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
            },
        },
        taskType = {
            type = "string",
            traits = {
                http_query = "taskType",
            },
        },
        taskStatus = {
            type = "string",
            traits = {
                http_query = "taskStatus",
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

M.ListAuditTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.AuditTaskMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAuthorizersInput = {
    type = "structure",
    members = {
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
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

M.ListAuthorizersOutput = {
    type = "structure",
    members = {
        authorizers = {
            type = "list",
            member = M.AuthorizerSummary,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListBillingGroupsInput = {
    type = "structure",
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
        namePrefixFilter = {
            type = "string",
            traits = {
                http_query = "namePrefixFilter",
            },
        },
    },
}

M.ListBillingGroupsOutput = {
    type = "structure",
    members = {
        billingGroups = {
            type = "list",
            member = M.GroupNameAndArn,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCACertificatesInput = {
    type = "structure",
    members = {
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
        templateName = {
            type = "string",
            traits = {
                http_query = "templateName",
            },
        },
    },
}

M.CACertificate = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListCACertificatesOutput = {
    type = "structure",
    members = {
        certificates = {
            type = "list",
            member = M.CACertificate,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListCertificateProvidersInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.CertificateProviderSummary = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
        },
        certificateProviderArn = {
            type = "string",
        },
    },
}

M.ListCertificateProvidersOutput = {
    type = "structure",
    members = {
        certificateProviders = {
            type = "list",
            member = M.CertificateProviderSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCertificatesInput = {
    type = "structure",
    members = {
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.Certificate = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        certificateMode = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListCertificatesOutput = {
    type = "structure",
    members = {
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListCertificatesByCAInput = {
    type = "structure",
    members = {
        caCertificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.ListCertificatesByCAOutput = {
    type = "structure",
    members = {
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.TimeFilter = {
    type = "structure",
    members = {
        after = {
            type = "string",
        },
        before = {
            type = "string",
        },
    },
}

M.SortOrder = {
    Ascending = "ASCENDING",
    Descending = "DESCENDING",
}

M.ListCommandExecutionsInput = {
    type = "structure",
    members = {
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
        namespace = {
            type = "string",
        },
        status = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        startedTimeFilter = M.TimeFilter,
        completedTimeFilter = M.TimeFilter,
        targetArn = {
            type = "string",
        },
        commandArn = {
            type = "string",
        },
    },
}

M.CommandExecutionSummary = {
    type = "structure",
    members = {
        commandArn = {
            type = "string",
        },
        executionId = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
    },
}

M.ListCommandExecutionsOutput = {
    type = "structure",
    members = {
        commandExecutions = {
            type = "list",
            member = M.CommandExecutionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCommandsInput = {
    type = "structure",
    members = {
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
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        commandParameterName = {
            type = "string",
            traits = {
                http_query = "commandParameterName",
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                http_query = "sortOrder",
            },
        },
    },
}

M.CommandSummary = {
    type = "structure",
    members = {
        commandArn = {
            type = "string",
        },
        commandId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        deprecated = {
            type = "boolean",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        pendingDeletion = {
            type = "boolean",
        },
    },
}

M.ListCommandsOutput = {
    type = "structure",
    members = {
        commands = {
            type = "list",
            member = M.CommandSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCustomMetricsInput = {
    type = "structure",
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

M.ListCustomMetricsOutput = {
    type = "structure",
    members = {
        metricNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectMitigationActionsExecutionsInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_query = "taskId",
            },
        },
        violationId = {
            type = "string",
            traits = {
                http_query = "violationId",
            },
        },
        thingName = {
            type = "string",
            traits = {
                http_query = "thingName",
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
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
    },
}

M.DetectMitigationActionExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.DetectMitigationActionExecution = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        violationId = {
            type = "string",
        },
        actionName = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        executionStartDate = {
            type = "timestamp",
        },
        executionEndDate = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ListDetectMitigationActionsExecutionsOutput = {
    type = "structure",
    members = {
        actionsExecutions = {
            type = "list",
            member = M.DetectMitigationActionExecution,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectMitigationActionsTasksInput = {
    type = "structure",
    members = {
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
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
            },
        },
    },
}

M.ListDetectMitigationActionsTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.DetectMitigationActionsTaskSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDimensionsInput = {
    type = "structure",
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

M.ListDimensionsOutput = {
    type = "structure",
    members = {
        dimensionNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDomainConfigurationsInput = {
    type = "structure",
    members = {
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        serviceType = {
            type = "string",
            traits = {
                http_query = "serviceType",
            },
        },
    },
}

M.DomainConfigurationSummary = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
        },
        domainConfigurationArn = {
            type = "string",
        },
        serviceType = {
            type = "string",
        },
    },
}

M.ListDomainConfigurationsOutput = {
    type = "structure",
    members = {
        domainConfigurations = {
            type = "list",
            member = M.DomainConfigurationSummary,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListFleetMetricsInput = {
    type = "structure",
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

M.FleetMetricNameAndArn = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
        },
        metricArn = {
            type = "string",
        },
    },
}

M.ListFleetMetricsOutput = {
    type = "structure",
    members = {
        fleetMetrics = {
            type = "list",
            member = M.FleetMetricNameAndArn,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIndicesInput = {
    type = "structure",
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

M.ListIndicesOutput = {
    type = "structure",
    members = {
        indexNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobExecutionsForJobInput = {
    type = "structure",
    members = {
        jobId = {
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
    },
}

M.JobExecutionSummary = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        queuedAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        executionNumber = {
            type = "long",
        },
        retryAttempt = {
            type = "integer",
        },
    },
}

M.JobExecutionSummaryForJob = {
    type = "structure",
    members = {
        thingArn = {
            type = "string",
        },
        jobExecutionSummary = M.JobExecutionSummary,
    },
}

M.ListJobExecutionsForJobOutput = {
    type = "structure",
    members = {
        executionSummaries = {
            type = "list",
            member = M.JobExecutionSummaryForJob,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobExecutionsForThingInput = {
    type = "structure",
    members = {
        thingName = {
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
        namespaceId = {
            type = "string",
            traits = {
                http_query = "namespaceId",
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
        jobId = {
            type = "string",
            traits = {
                http_query = "jobId",
            },
        },
    },
}

M.JobExecutionSummaryForThing = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        jobExecutionSummary = M.JobExecutionSummary,
    },
}

M.ListJobExecutionsForThingOutput = {
    type = "structure",
    members = {
        executionSummaries = {
            type = "list",
            member = M.JobExecutionSummaryForThing,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        targetSelection = {
            type = "string",
            traits = {
                http_query = "targetSelection",
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
        thingGroupName = {
            type = "string",
            traits = {
                http_query = "thingGroupName",
            },
        },
        thingGroupId = {
            type = "string",
            traits = {
                http_query = "thingGroupId",
            },
        },
        namespaceId = {
            type = "string",
            traits = {
                http_query = "namespaceId",
            },
        },
    },
}

M.JobSummary = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        thingGroupId = {
            type = "string",
        },
        targetSelection = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
        isConcurrent = {
            type = "boolean",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
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

M.ListJobTemplatesInput = {
    type = "structure",
    members = {
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
    },
}

M.JobTemplateSummary = {
    type = "structure",
    members = {
        jobTemplateArn = {
            type = "string",
        },
        jobTemplateId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.ListJobTemplatesOutput = {
    type = "structure",
    members = {
        jobTemplates = {
            type = "list",
            member = M.JobTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListManagedJobTemplatesInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_query = "templateName",
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
    },
}

M.ManagedJobTemplateSummary = {
    type = "structure",
    members = {
        templateArn = {
            type = "string",
        },
        templateName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        environments = {
            type = "list",
            member = { type = "string" },
        },
        templateVersion = {
            type = "string",
        },
    },
}

M.ListManagedJobTemplatesOutput = {
    type = "structure",
    members = {
        managedJobTemplates = {
            type = "list",
            member = M.ManagedJobTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMetricValuesInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_query = "thingName",
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                http_query = "metricName",
                required = true,
            },
        },
        dimensionName = {
            type = "string",
            traits = {
                http_query = "dimensionName",
            },
        },
        dimensionValueOperator = {
            type = "string",
            traits = {
                http_query = "dimensionValueOperator",
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
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
    },
}

M.MetricDatum = {
    type = "structure",
    members = {
        timestamp = {
            type = "timestamp",
        },
        value = M.MetricValue,
    },
}

M.ListMetricValuesOutput = {
    type = "structure",
    members = {
        metricDatumList = {
            type = "list",
            member = M.MetricDatum,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMitigationActionsInput = {
    type = "structure",
    members = {
        actionType = {
            type = "string",
            traits = {
                http_query = "actionType",
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
    },
}

M.MitigationActionIdentifier = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
        },
        actionArn = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListMitigationActionsOutput = {
    type = "structure",
    members = {
        actionIdentifiers = {
            type = "list",
            member = M.MitigationActionIdentifier,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOTAUpdatesInput = {
    type = "structure",
    members = {
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
        otaUpdateStatus = {
            type = "string",
            traits = {
                http_query = "otaUpdateStatus",
            },
        },
    },
}

M.OTAUpdateSummary = {
    type = "structure",
    members = {
        otaUpdateId = {
            type = "string",
        },
        otaUpdateArn = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListOTAUpdatesOutput = {
    type = "structure",
    members = {
        otaUpdates = {
            type = "list",
            member = M.OTAUpdateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOutgoingCertificatesInput = {
    type = "structure",
    members = {
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.OutgoingCertificate = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
        transferredTo = {
            type = "string",
        },
        transferDate = {
            type = "timestamp",
        },
        transferMessage = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
    },
}

M.ListOutgoingCertificatesOutput = {
    type = "structure",
    members = {
        outgoingCertificates = {
            type = "list",
            member = M.OutgoingCertificate,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListPackagesInput = {
    type = "structure",
    members = {
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
    },
}

M.PackageSummary = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
        },
        defaultVersionName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.ListPackagesOutput = {
    type = "structure",
    members = {
        packageSummaries = {
            type = "list",
            member = M.PackageSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPackageVersionsInput = {
    type = "structure",
    members = {
        packageName = {
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
    },
}

M.PackageVersionSummary = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
        },
        versionName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.ListPackageVersionsOutput = {
    type = "structure",
    members = {
        packageVersionSummaries = {
            type = "list",
            member = M.PackageVersionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPoliciesInput = {
    type = "structure",
    members = {
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.ListPoliciesOutput = {
    type = "structure",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListPolicyPrincipalsInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_header = "x-amzn-iot-policy",
                required = true,
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.ListPolicyPrincipalsOutput = {
    type = "structure",
    members = {
        principals = {
            type = "list",
            member = { type = "string" },
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListPolicyVersionsInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PolicyVersion = {
    type = "structure",
    members = {
        versionId = {
            type = "string",
        },
        isDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createDate = {
            type = "timestamp",
        },
    },
}

M.ListPolicyVersionsOutput = {
    type = "structure",
    members = {
        policyVersions = {
            type = "list",
            member = M.PolicyVersion,
        },
    },
}

M.ListPrincipalPoliciesInput = {
    type = "structure",
    members = {
        principal = {
            type = "string",
            traits = {
                http_header = "x-amzn-iot-principal",
                required = true,
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.ListPrincipalPoliciesOutput = {
    type = "structure",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListPrincipalThingsInput = {
    type = "structure",
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
        principal = {
            type = "string",
            traits = {
                http_header = "x-amzn-principal",
                required = true,
            },
        },
    },
}

M.ListPrincipalThingsOutput = {
    type = "structure",
    members = {
        things = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPrincipalThingsV2Input = {
    type = "structure",
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
        principal = {
            type = "string",
            traits = {
                http_header = "x-amzn-principal",
                required = true,
            },
        },
        thingPrincipalType = {
            type = "string",
            traits = {
                http_query = "thingPrincipalType",
            },
        },
    },
}

M.PrincipalThingObject = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thingPrincipalType = {
            type = "string",
        },
    },
}

M.ListPrincipalThingsV2Output = {
    type = "structure",
    members = {
        principalThingObjects = {
            type = "list",
            member = M.PrincipalThingObject,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProvisioningTemplatesInput = {
    type = "structure",
    members = {
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
    },
}

M.ProvisioningTemplateSummary = {
    type = "structure",
    members = {
        templateArn = {
            type = "string",
        },
        templateName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        enabled = {
            type = "boolean",
        },
        type = {
            type = "string",
        },
    },
}

M.ListProvisioningTemplatesOutput = {
    type = "structure",
    members = {
        templates = {
            type = "list",
            member = M.ProvisioningTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProvisioningTemplateVersionsInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
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
    },
}

M.ProvisioningTemplateVersionSummary = {
    type = "structure",
    members = {
        versionId = {
            type = "integer",
        },
        creationDate = {
            type = "timestamp",
        },
        isDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListProvisioningTemplateVersionsOutput = {
    type = "structure",
    members = {
        versions = {
            type = "list",
            member = M.ProvisioningTemplateVersionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRelatedResourcesForAuditFindingInput = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
            traits = {
                http_query = "findingId",
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

M.ListRelatedResourcesForAuditFindingOutput = {
    type = "structure",
    members = {
        relatedResources = {
            type = "list",
            member = M.RelatedResource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRoleAliasesInput = {
    type = "structure",
    members = {
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.ListRoleAliasesOutput = {
    type = "structure",
    members = {
        roleAliases = {
            type = "list",
            member = { type = "string" },
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.SbomValidationResult = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.ListSbomValidationResultsInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        validationResult = {
            type = "string",
            traits = {
                http_query = "validationResult",
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
    },
}

M.SbomValidationErrorCode = {
    INCOMPATIBLE_FORMAT = "INCOMPATIBLE_FORMAT",
    FILE_SIZE_LIMIT_EXCEEDED = "FILE_SIZE_LIMIT_EXCEEDED",
}

M.SbomValidationResultSummary = {
    type = "structure",
    members = {
        fileName = {
            type = "string",
        },
        validationResult = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.ListSbomValidationResultsOutput = {
    type = "structure",
    members = {
        validationResultSummaries = {
            type = "list",
            member = M.SbomValidationResultSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListScheduledAuditsInput = {
    type = "structure",
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

M.ScheduledAuditMetadata = {
    type = "structure",
    members = {
        scheduledAuditName = {
            type = "string",
        },
        scheduledAuditArn = {
            type = "string",
        },
        frequency = {
            type = "string",
        },
        dayOfMonth = {
            type = "string",
        },
        dayOfWeek = {
            type = "string",
        },
    },
}

M.ListScheduledAuditsOutput = {
    type = "structure",
    members = {
        scheduledAudits = {
            type = "list",
            member = M.ScheduledAuditMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSecurityProfilesInput = {
    type = "structure",
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
        dimensionName = {
            type = "string",
            traits = {
                http_query = "dimensionName",
            },
        },
        metricName = {
            type = "string",
            traits = {
                http_query = "metricName",
            },
        },
    },
}

M.SecurityProfileIdentifier = {
    type = "structure",
    members = {
        name = {
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
    },
}

M.ListSecurityProfilesOutput = {
    type = "structure",
    members = {
        securityProfileIdentifiers = {
            type = "list",
            member = M.SecurityProfileIdentifier,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSecurityProfilesForTargetInput = {
    type = "structure",
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
        recursive = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "recursive",
            },
        },
        securityProfileTargetArn = {
            type = "string",
            traits = {
                http_query = "securityProfileTargetArn",
                required = true,
            },
        },
    },
}

M.SecurityProfileTarget = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SecurityProfileTargetMapping = {
    type = "structure",
    members = {
        securityProfileIdentifier = M.SecurityProfileIdentifier,
        target = M.SecurityProfileTarget,
    },
}

M.ListSecurityProfilesForTargetOutput = {
    type = "structure",
    members = {
        securityProfileTargetMappings = {
            type = "list",
            member = M.SecurityProfileTargetMapping,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
    members = {
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
        ascendingOrder = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isAscendingOrder",
            },
        },
    },
}

M.StreamSummary = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
        },
        streamArn = {
            type = "string",
        },
        streamVersion = {
            type = "integer",
        },
        description = {
            type = "string",
        },
    },
}

M.ListStreamsOutput = {
    type = "structure",
    members = {
        streams = {
            type = "list",
            member = M.StreamSummary,
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
                http_query = "resourceArn",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
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

M.ListTargetsForPolicyInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListTargetsForPolicyOutput = {
    type = "structure",
    members = {
        targets = {
            type = "list",
            member = { type = "string" },
        },
        nextMarker = {
            type = "string",
        },
    },
}

M.ListTargetsForSecurityProfileInput = {
    type = "structure",
    members = {
        securityProfileName = {
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

M.ListTargetsForSecurityProfileOutput = {
    type = "structure",
    members = {
        securityProfileTargets = {
            type = "list",
            member = M.SecurityProfileTarget,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingGroupsInput = {
    type = "structure",
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
        parentGroup = {
            type = "string",
            traits = {
                http_query = "parentGroup",
            },
        },
        namePrefixFilter = {
            type = "string",
            traits = {
                http_query = "namePrefixFilter",
            },
        },
        recursive = {
            type = "boolean",
            traits = {
                http_query = "recursive",
            },
        },
    },
}

M.ListThingGroupsOutput = {
    type = "structure",
    members = {
        thingGroups = {
            type = "list",
            member = M.GroupNameAndArn,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingGroupsForThingInput = {
    type = "structure",
    members = {
        thingName = {
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

M.ListThingGroupsForThingOutput = {
    type = "structure",
    members = {
        thingGroups = {
            type = "list",
            member = M.GroupNameAndArn,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingPrincipalsInput = {
    type = "structure",
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
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListThingPrincipalsOutput = {
    type = "structure",
    members = {
        principals = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingPrincipalsV2Input = {
    type = "structure",
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
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingPrincipalType = {
            type = "string",
            traits = {
                http_query = "thingPrincipalType",
            },
        },
    },
}

M.ThingPrincipalObject = {
    type = "structure",
    members = {
        principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thingPrincipalType = {
            type = "string",
        },
    },
}

M.ListThingPrincipalsV2Output = {
    type = "structure",
    members = {
        thingPrincipalObjects = {
            type = "list",
            member = M.ThingPrincipalObject,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ReportType = {
    ERRORS = "ERRORS",
    RESULTS = "RESULTS",
}

M.ListThingRegistrationTaskReportsInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        reportType = {
            type = "string",
            traits = {
                http_query = "reportType",
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

M.ListThingRegistrationTaskReportsOutput = {
    type = "structure",
    members = {
        resourceLinks = {
            type = "list",
            member = { type = "string" },
        },
        reportType = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingRegistrationTasksInput = {
    type = "structure",
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

M.ListThingRegistrationTasksOutput = {
    type = "structure",
    members = {
        taskIds = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingsInput = {
    type = "structure",
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
        attributeName = {
            type = "string",
            traits = {
                http_query = "attributeName",
            },
        },
        attributeValue = {
            type = "string",
            traits = {
                http_query = "attributeValue",
            },
        },
        thingTypeName = {
            type = "string",
            traits = {
                http_query = "thingTypeName",
            },
        },
        usePrefixAttributeValue = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "usePrefixAttributeValue",
            },
        },
    },
}

M.ThingAttribute = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        thingTypeName = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListThingsOutput = {
    type = "structure",
    members = {
        things = {
            type = "list",
            member = M.ThingAttribute,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingsInBillingGroupInput = {
    type = "structure",
    members = {
        billingGroupName = {
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

M.ListThingsInBillingGroupOutput = {
    type = "structure",
    members = {
        things = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingsInThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recursive = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "recursive",
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

M.ListThingsInThingGroupOutput = {
    type = "structure",
    members = {
        things = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListThingTypesInput = {
    type = "structure",
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
        thingTypeName = {
            type = "string",
            traits = {
                http_query = "thingTypeName",
            },
        },
    },
}

M.ThingTypeDefinition = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
        },
        thingTypeArn = {
            type = "string",
        },
        thingTypeProperties = M.ThingTypeProperties,
        thingTypeMetadata = M.ThingTypeMetadata,
    },
}

M.ListThingTypesOutput = {
    type = "structure",
    members = {
        thingTypes = {
            type = "list",
            member = M.ThingTypeDefinition,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTopicRuleDestinationsInput = {
    type = "structure",
    members = {
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
    },
}

M.HttpUrlDestinationSummary = {
    type = "structure",
    members = {
        confirmationUrl = {
            type = "string",
        },
    },
}

M.VpcDestinationSummary = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        vpcId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.TopicRuleDestinationSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        statusReason = {
            type = "string",
        },
        httpUrlSummary = M.HttpUrlDestinationSummary,
        vpcDestinationSummary = M.VpcDestinationSummary,
    },
}

M.ListTopicRuleDestinationsOutput = {
    type = "structure",
    members = {
        destinationSummaries = {
            type = "list",
            member = M.TopicRuleDestinationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTopicRulesInput = {
    type = "structure",
    members = {
        topic = {
            type = "string",
            traits = {
                http_query = "topic",
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
        ruleDisabled = {
            type = "boolean",
            traits = {
                http_query = "ruleDisabled",
            },
        },
    },
}

M.TopicRuleListItem = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
        },
        ruleName = {
            type = "string",
        },
        topicPattern = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        ruleDisabled = {
            type = "boolean",
        },
    },
}

M.ListTopicRulesOutput = {
    type = "structure",
    members = {
        rules = {
            type = "list",
            member = M.TopicRuleListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListV2LoggingLevelsInput = {
    type = "structure",
    members = {
        targetType = {
            type = "string",
            traits = {
                http_query = "targetType",
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

M.LogTarget = {
    type = "structure",
    members = {
        targetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetName = {
            type = "string",
        },
    },
}

M.LogTargetConfiguration = {
    type = "structure",
    members = {
        logTarget = M.LogTarget,
        logLevel = {
            type = "string",
        },
    },
}

M.ListV2LoggingLevelsOutput = {
    type = "structure",
    members = {
        logTargetConfigurations = {
            type = "list",
            member = M.LogTargetConfiguration,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListViolationEventsInput = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
            },
        },
        thingName = {
            type = "string",
            traits = {
                http_query = "thingName",
            },
        },
        securityProfileName = {
            type = "string",
            traits = {
                http_query = "securityProfileName",
            },
        },
        behaviorCriteriaType = {
            type = "string",
            traits = {
                http_query = "behaviorCriteriaType",
            },
        },
        listSuppressedAlerts = {
            type = "boolean",
            traits = {
                http_query = "listSuppressedAlerts",
            },
        },
        verificationState = {
            type = "string",
            traits = {
                http_query = "verificationState",
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

M.ViolationEventType = {
    IN_ALARM = "in-alarm",
    ALARM_CLEARED = "alarm-cleared",
    ALARM_INVALIDATED = "alarm-invalidated",
}

M.ViolationEvent = {
    type = "structure",
    members = {
        violationId = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        securityProfileName = {
            type = "string",
        },
        behavior = M.Behavior,
        metricValue = M.MetricValue,
        violationEventAdditionalInfo = M.ViolationEventAdditionalInfo,
        violationEventType = {
            type = "string",
        },
        verificationState = {
            type = "string",
        },
        verificationStateDescription = {
            type = "string",
        },
        violationEventTime = {
            type = "timestamp",
        },
    },
}

M.ListViolationEventsOutput = {
    type = "structure",
    members = {
        violationEvents = {
            type = "list",
            member = M.ViolationEvent,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutVerificationStateOnViolationInput = {
    type = "structure",
    members = {
        violationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        verificationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        verificationStateDescription = {
            type = "string",
        },
    },
}

M.PutVerificationStateOnViolationOutput = {
    type = "structure",
}

M.RegisterCACertificateInput = {
    type = "structure",
    members = {
        caCertificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        verificationCertificate = {
            type = "string",
        },
        setAsActive = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "setAsActive",
            },
        },
        allowAutoRegistration = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "allowAutoRegistration",
            },
        },
        registrationConfig = M.RegistrationConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
        certificateMode = {
            type = "string",
        },
    },
}

M.RegisterCACertificateOutput = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
    },
}

M.RegistrationCodeValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CertificateConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterCertificateInput = {
    type = "structure",
    members = {
        certificatePem = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caCertificatePem = {
            type = "string",
        },
        setAsActive = {
            type = "boolean",
            traits = {
                http_query = "setAsActive",
            },
        },
        status = {
            type = "string",
        },
    },
}

M.RegisterCertificateOutput = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
    },
}

M.RegisterCertificateWithoutCAInput = {
    type = "structure",
    members = {
        certificatePem = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
    },
}

M.RegisterCertificateWithoutCAOutput = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateId = {
            type = "string",
        },
    },
}

M.RegisterThingInput = {
    type = "structure",
    members = {
        templateBody = {
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

M.RegisterThingOutput = {
    type = "structure",
    members = {
        certificatePem = {
            type = "string",
        },
        resourceArns = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResourceRegistrationFailureException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RejectCertificateTransferInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        rejectReason = {
            type = "string",
        },
    },
}

M.RejectCertificateTransferOutput = {
    type = "structure",
}

M.RemoveThingFromBillingGroupInput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
        },
        billingGroupArn = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
    },
}

M.RemoveThingFromBillingGroupOutput = {
    type = "structure",
}

M.RemoveThingFromThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
        },
        thingGroupArn = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
    },
}

M.RemoveThingFromThingGroupOutput = {
    type = "structure",
}

M.ReplaceTopicRuleInput = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        topicRulePayload = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TopicRulePayload }),
    },
}

M.ReplaceTopicRuleOutput = {
    type = "structure",
}

M.SearchIndexInput = {
    type = "structure",
    members = {
        indexName = {
            type = "string",
        },
        queryString = {
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
        queryVersion = {
            type = "string",
        },
    },
}

M.ThingGroupDocument = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
        },
        thingGroupId = {
            type = "string",
        },
        thingGroupDescription = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        parentGroupNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ThingConnectivity = {
    type = "structure",
    members = {
        connected = {
            type = "boolean",
        },
        timestamp = {
            type = "long",
        },
        disconnectReason = {
            type = "string",
        },
    },
}

M.ThingDocument = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        thingId = {
            type = "string",
        },
        thingTypeName = {
            type = "string",
        },
        thingGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        shadow = {
            type = "string",
        },
        deviceDefender = {
            type = "string",
        },
        connectivity = M.ThingConnectivity,
    },
}

M.SearchIndexOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        things = {
            type = "list",
            member = M.ThingDocument,
        },
        thingGroups = {
            type = "list",
            member = M.ThingGroupDocument,
        },
    },
}

M.SetDefaultAuthorizerInput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetDefaultAuthorizerOutput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
        },
        authorizerArn = {
            type = "string",
        },
    },
}

M.SetDefaultPolicyVersionInput = {
    type = "structure",
    members = {
        policyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SetDefaultPolicyVersionOutput = {
    type = "structure",
}

M.LoggingOptionsPayload = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logLevel = {
            type = "string",
        },
    },
}

M.SetLoggingOptionsInput = {
    type = "structure",
    members = {
        loggingOptionsPayload = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.LoggingOptionsPayload }),
    },
}

M.SetLoggingOptionsOutput = {
    type = "structure",
}

M.SetV2LoggingLevelInput = {
    type = "structure",
    members = {
        logTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogTarget }),
        logLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetV2LoggingLevelOutput = {
    type = "structure",
}

M.SetV2LoggingOptionsInput = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        defaultLogLevel = {
            type = "string",
        },
        disableAllLogs = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        eventConfigurations = {
            type = "list",
            member = M.LogEventConfiguration,
        },
    },
}

M.SetV2LoggingOptionsOutput = {
    type = "structure",
}

M.StartAuditMitigationActionsTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuditMitigationActionsTaskTarget }),
        auditCheckToActionsMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAuditMitigationActionsTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.TaskAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartDetectMitigationActionsTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DetectMitigationActionsTaskTarget }),
        actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        violationEventOccurrenceRange = M.ViolationEventOccurrenceRange,
        includeOnlyActiveViolations = {
            type = "boolean",
        },
        includeSuppressedAlerts = {
            type = "boolean",
        },
        clientRequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDetectMitigationActionsTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.StartOnDemandAuditTaskInput = {
    type = "structure",
    members = {
        targetCheckNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartOnDemandAuditTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.StartThingRegistrationTaskInput = {
    type = "structure",
    members = {
        templateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputFileBucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputFileKey = {
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
    },
}

M.StartThingRegistrationTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.StopThingRegistrationTaskInput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopThingRegistrationTaskOutput = {
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

M.TestAuthorizationInput = {
    type = "structure",
    members = {
        principal = {
            type = "string",
        },
        cognitoIdentityPoolId = {
            type = "string",
        },
        authInfos = {
            type = "list",
            member = M.AuthInfo,
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                http_query = "clientId",
            },
        },
        policyNamesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        policyNamesToSkip = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TestAuthorizationOutput = {
    type = "structure",
    members = {
        authResults = {
            type = "list",
            member = M.AuthResult,
        },
    },
}

M.InvalidResponseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HttpContext = {
    type = "structure",
    members = {
        headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        queryString = {
            type = "string",
        },
    },
}

M.MqttContext = {
    type = "structure",
    members = {
        username = {
            type = "string",
        },
        password = {
            type = "blob",
        },
        clientId = {
            type = "string",
        },
    },
}

M.TlsContext = {
    type = "structure",
    members = {
        serverName = {
            type = "string",
        },
    },
}

M.TestInvokeAuthorizerInput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        token = {
            type = "string",
        },
        tokenSignature = {
            type = "string",
        },
        httpContext = M.HttpContext,
        mqttContext = M.MqttContext,
        tlsContext = M.TlsContext,
    },
}

M.TestInvokeAuthorizerOutput = {
    type = "structure",
    members = {
        isAuthenticated = {
            type = "boolean",
        },
        principalId = {
            type = "string",
        },
        policyDocuments = {
            type = "list",
            member = { type = "string" },
        },
        refreshAfterInSeconds = {
            type = "integer",
        },
        disconnectAfterInSeconds = {
            type = "integer",
        },
    },
}

M.TransferCertificateInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetAwsAccount = {
            type = "string",
            traits = {
                http_query = "targetAwsAccount",
                required = true,
            },
        },
        transferMessage = {
            type = "string",
        },
    },
}

M.TransferCertificateOutput = {
    type = "structure",
    members = {
        transferredCertificateArn = {
            type = "string",
        },
    },
}

M.TransferConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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

M.UpdateAccountAuditConfigurationInput = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        auditNotificationTargetConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.AuditNotificationTarget,
        },
        auditCheckConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.AuditCheckConfiguration,
        },
    },
}

M.UpdateAccountAuditConfigurationOutput = {
    type = "structure",
}

M.UpdateAuditSuppressionInput = {
    type = "structure",
    members = {
        checkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceIdentifier }),
        expirationDate = {
            type = "timestamp",
        },
        suppressIndefinitely = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateAuditSuppressionOutput = {
    type = "structure",
}

M.UpdateAuthorizerInput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizerFunctionArn = {
            type = "string",
        },
        tokenKeyName = {
            type = "string",
        },
        tokenSigningPublicKeys = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        enableCachingForHttp = {
            type = "boolean",
        },
    },
}

M.UpdateAuthorizerOutput = {
    type = "structure",
    members = {
        authorizerName = {
            type = "string",
        },
        authorizerArn = {
            type = "string",
        },
    },
}

M.UpdateBillingGroupInput = {
    type = "structure",
    members = {
        billingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        billingGroupProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BillingGroupProperties }),
        expectedVersion = {
            type = "long",
        },
    },
}

M.UpdateBillingGroupOutput = {
    type = "structure",
    members = {
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateCACertificateInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        newStatus = {
            type = "string",
            traits = {
                http_query = "newStatus",
            },
        },
        newAutoRegistrationStatus = {
            type = "string",
            traits = {
                http_query = "newAutoRegistrationStatus",
            },
        },
        registrationConfig = M.RegistrationConfig,
        removeAutoRegistration = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateCACertificateOutput = {
    type = "structure",
}

M.UpdateCertificateInput = {
    type = "structure",
    members = {
        certificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        newStatus = {
            type = "string",
            traits = {
                http_query = "newStatus",
                required = true,
            },
        },
    },
}

M.UpdateCertificateOutput = {
    type = "structure",
}

M.UpdateCertificateProviderInput = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        lambdaFunctionArn = {
            type = "string",
        },
        accountDefaultForOperations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateCertificateProviderOutput = {
    type = "structure",
    members = {
        certificateProviderName = {
            type = "string",
        },
        certificateProviderArn = {
            type = "string",
        },
    },
}

M.UpdateCommandInput = {
    type = "structure",
    members = {
        commandId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        deprecated = {
            type = "boolean",
        },
    },
}

M.UpdateCommandOutput = {
    type = "structure",
    members = {
        commandId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        deprecated = {
            type = "boolean",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.UpdateCustomMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomMetricOutput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
        },
        metricArn = {
            type = "string",
        },
        metricType = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.UpdateDimensionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stringValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDimensionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        stringValues = {
            type = "list",
            member = { type = "string" },
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.UpdateDomainConfigurationInput = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizerConfig = M.AuthorizerConfig,
        domainConfigurationStatus = {
            type = "string",
        },
        removeAuthorizerConfig = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        tlsConfig = M.TlsConfig,
        serverCertificateConfig = M.ServerCertificateConfig,
        authenticationType = {
            type = "string",
        },
        applicationProtocol = {
            type = "string",
        },
        clientCertificateConfig = M.ClientCertificateConfig,
    },
}

M.UpdateDomainConfigurationOutput = {
    type = "structure",
    members = {
        domainConfigurationName = {
            type = "string",
        },
        domainConfigurationArn = {
            type = "string",
        },
    },
}

M.UpdateDynamicThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingGroupProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ThingGroupProperties }),
        expectedVersion = {
            type = "long",
        },
        indexName = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
    },
}

M.UpdateDynamicThingGroupOutput = {
    type = "structure",
    members = {
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateEncryptionConfigurationInput = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        kmsAccessRoleArn = {
            type = "string",
        },
    },
}

M.UpdateEncryptionConfigurationOutput = {
    type = "structure",
}

M.UpdateEventConfigurationsInput = {
    type = "structure",
    members = {
        eventConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.Configuration,
        },
    },
}

M.UpdateEventConfigurationsOutput = {
    type = "structure",
}

M.UpdateFleetMetricInput = {
    type = "structure",
    members = {
        metricName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryString = {
            type = "string",
        },
        aggregationType = M.AggregationType,
        period = {
            type = "integer",
        },
        aggregationField = {
            type = "string",
        },
        description = {
            type = "string",
        },
        queryVersion = {
            type = "string",
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
        },
        expectedVersion = {
            type = "long",
        },
    },
}

M.UpdateFleetMetricOutput = {
    type = "structure",
}

M.UpdateIndexingConfigurationInput = {
    type = "structure",
    members = {
        thingIndexingConfiguration = M.ThingIndexingConfiguration,
        thingGroupIndexingConfiguration = M.ThingGroupIndexingConfiguration,
    },
}

M.UpdateIndexingConfigurationOutput = {
    type = "structure",
}

M.UpdateJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        presignedUrlConfig = M.PresignedUrlConfig,
        jobExecutionsRolloutConfig = M.JobExecutionsRolloutConfig,
        abortConfig = M.AbortConfig,
        timeoutConfig = M.TimeoutConfig,
        namespaceId = {
            type = "string",
            traits = {
                http_query = "namespaceId",
            },
        },
        jobExecutionsRetryConfig = M.JobExecutionsRetryConfig,
    },
}

M.UpdateJobOutput = {
    type = "structure",
}

M.UpdateMitigationActionInput = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        actionParams = M.MitigationActionParams,
    },
}

M.UpdateMitigationActionOutput = {
    type = "structure",
    members = {
        actionArn = {
            type = "string",
        },
        actionId = {
            type = "string",
        },
    },
}

M.UpdatePackageInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        defaultVersionName = {
            type = "string",
        },
        unsetDefaultVersion = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.UpdatePackageOutput = {
    type = "structure",
}

M.UpdatePackageConfigurationInput = {
    type = "structure",
    members = {
        versionUpdateByJobsConfig = M.VersionUpdateByJobsConfig,
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.UpdatePackageConfigurationOutput = {
    type = "structure",
}

M.PackageVersionAction = {
    PUBLISH = "PUBLISH",
    DEPRECATE = "DEPRECATE",
}

M.UpdatePackageVersionInput = {
    type = "structure",
    members = {
        packageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        artifact = M.PackageVersionArtifact,
        action = {
            type = "string",
        },
        recipe = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.UpdatePackageVersionOutput = {
    type = "structure",
}

M.UpdateProvisioningTemplateInput = {
    type = "structure",
    members = {
        templateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        defaultVersionId = {
            type = "integer",
        },
        provisioningRoleArn = {
            type = "string",
        },
        preProvisioningHook = M.ProvisioningHook,
        removePreProvisioningHook = {
            type = "boolean",
        },
    },
}

M.UpdateProvisioningTemplateOutput = {
    type = "structure",
}

M.UpdateRoleAliasInput = {
    type = "structure",
    members = {
        roleAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        credentialDurationSeconds = {
            type = "integer",
        },
    },
}

M.UpdateRoleAliasOutput = {
    type = "structure",
    members = {
        roleAlias = {
            type = "string",
        },
        roleAliasArn = {
            type = "string",
        },
    },
}

M.UpdateScheduledAuditInput = {
    type = "structure",
    members = {
        frequency = {
            type = "string",
        },
        dayOfMonth = {
            type = "string",
        },
        dayOfWeek = {
            type = "string",
        },
        targetCheckNames = {
            type = "list",
            member = { type = "string" },
        },
        scheduledAuditName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateScheduledAuditOutput = {
    type = "structure",
    members = {
        scheduledAuditArn = {
            type = "string",
        },
    },
}

M.UpdateSecurityProfileInput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        securityProfileDescription = {
            type = "string",
        },
        behaviors = {
            type = "list",
            member = M.Behavior,
        },
        alertTargets = {
            type = "map",
            key = { type = "string" },
            value = M.AlertTarget,
        },
        additionalMetricsToRetain = {
            type = "list",
            member = { type = "string" },
        },
        additionalMetricsToRetainV2 = {
            type = "list",
            member = M.MetricToRetain,
        },
        deleteBehaviors = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        deleteAlertTargets = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        deleteAdditionalMetricsToRetain = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        expectedVersion = {
            type = "long",
            traits = {
                http_query = "expectedVersion",
            },
        },
        metricsExportConfig = M.MetricsExportConfig,
        deleteMetricsExportConfig = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateSecurityProfileOutput = {
    type = "structure",
    members = {
        securityProfileName = {
            type = "string",
        },
        securityProfileArn = {
            type = "string",
        },
        securityProfileDescription = {
            type = "string",
        },
        behaviors = {
            type = "list",
            member = M.Behavior,
        },
        alertTargets = {
            type = "map",
            key = { type = "string" },
            value = M.AlertTarget,
        },
        additionalMetricsToRetain = {
            type = "list",
            member = { type = "string" },
        },
        additionalMetricsToRetainV2 = {
            type = "list",
            member = M.MetricToRetain,
        },
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        metricsExportConfig = M.MetricsExportConfig,
    },
}

M.UpdateStreamInput = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        files = {
            type = "list",
            member = M.StreamFile,
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateStreamOutput = {
    type = "structure",
    members = {
        streamId = {
            type = "string",
        },
        streamArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        streamVersion = {
            type = "integer",
        },
    },
}

M.UpdateThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingTypeName = {
            type = "string",
        },
        attributePayload = M.AttributePayload,
        expectedVersion = {
            type = "long",
        },
        removeThingType = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateThingOutput = {
    type = "structure",
}

M.UpdateThingGroupInput = {
    type = "structure",
    members = {
        thingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingGroupProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ThingGroupProperties }),
        expectedVersion = {
            type = "long",
        },
    },
}

M.UpdateThingGroupOutput = {
    type = "structure",
    members = {
        version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateThingGroupsForThingInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
        },
        thingGroupsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        thingGroupsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        overrideDynamicGroups = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateThingGroupsForThingOutput = {
    type = "structure",
}

M.UpdateThingTypeInput = {
    type = "structure",
    members = {
        thingTypeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingTypeProperties = M.ThingTypeProperties,
    },
}

M.UpdateThingTypeOutput = {
    type = "structure",
}

M.UpdateTopicRuleDestinationInput = {
    type = "structure",
    members = {
        arn = {
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

M.UpdateTopicRuleDestinationOutput = {
    type = "structure",
}

M.ValidateSecurityProfileBehaviorsInput = {
    type = "structure",
    members = {
        behaviors = {
            type = "list",
            member = M.Behavior,
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationError = {
    type = "structure",
    members = {
        errorMessage = {
            type = "string",
        },
    },
}

M.ValidateSecurityProfileBehaviorsOutput = {
    type = "structure",
    members = {
        valid = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        validationErrors = {
            type = "list",
            member = M.ValidationError,
        },
    },
}

return M
