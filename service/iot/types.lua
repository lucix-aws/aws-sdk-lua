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
    id = "AbortCriteria",
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
    id = "AbortConfig",
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
    id = "AcceptCertificateTransferInput",
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
    id = "AcceptCertificateTransferOutput",
}

M.InternalFailureException = {
    type = "structure",
    id = "InternalFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
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

M.TransferAlreadyCompletedException = {
    type = "structure",
    id = "TransferAlreadyCompletedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudwatchAlarmAction = {
    type = "structure",
    id = "CloudwatchAlarmAction",
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
    id = "CloudwatchLogsAction",
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
    id = "CloudwatchMetricAction",
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
    id = "DynamoDBAction",
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
    id = "PutItemInput",
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
    id = "DynamoDBv2Action",
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
    id = "ElasticsearchAction",
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
    id = "FirehoseAction",
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
    id = "SigV4Authorization",
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
    id = "HttpAuthorization",
    members = {
        sigv4 = M.SigV4Authorization,
    },
}

M.BatchConfig = {
    type = "structure",
    id = "BatchConfig",
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
    id = "HttpActionHeader",
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
    id = "HttpAction",
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
    id = "IotAnalyticsAction",
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
    id = "IotEventsAction",
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
    id = "AssetPropertyTimestamp",
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
    id = "AssetPropertyVariant",
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
    id = "AssetPropertyValue",
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
    id = "PutAssetPropertyValueEntry",
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
    id = "IotSiteWiseAction",
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
    id = "KafkaActionHeader",
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
    id = "KafkaAction",
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
    id = "KinesisAction",
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
    id = "LambdaAction",
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
    id = "LocationTimestamp",
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
    id = "LocationAction",
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
    id = "OpenSearchAction",
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
    id = "UserProperty",
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
    id = "MqttHeaders",
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
    id = "RepublishAction",
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
    id = "S3Action",
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
    id = "SalesforceAction",
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
    id = "SnsAction",
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
    id = "SqsAction",
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
    id = "StepFunctionsAction",
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
    id = "TimestreamDimension",
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
    id = "TimestreamTimestamp",
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
    id = "TimestreamAction",
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
    id = "Action",
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
    id = "MachineLearningDetectionConfig",
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
    id = "StatisticalThreshold",
    members = {
        statistic = {
            type = "string",
        },
    },
}

M.MetricValue = {
    type = "structure",
    id = "MetricValue",
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
    id = "BehaviorCriteria",
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
    id = "MetricDimension",
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
    id = "Behavior",
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
    id = "ViolationEventAdditionalInfo",
    members = {
        confidenceLevel = {
            type = "string",
        },
    },
}

M.ActiveViolation = {
    type = "structure",
    id = "ActiveViolation",
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
    id = "MetricToRetain",
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
    id = "AddThingsToThingGroupParams",
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
    id = "AddThingToBillingGroupInput",
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
    id = "AddThingToBillingGroupOutput",
}

M.AddThingToThingGroupInput = {
    type = "structure",
    id = "AddThingToThingGroupInput",
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
    id = "AddThingToThingGroupOutput",
}

M.AggregationTypeName = {
    STATISTICS = "Statistics",
    PERCENTILES = "Percentiles",
    CARDINALITY = "Cardinality",
}

M.AggregationType = {
    type = "structure",
    id = "AggregationType",
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
    id = "AlertTarget",
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
    id = "Policy",
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
    id = "Allowed",
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
    id = "S3Location",
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
    id = "Sbom",
    members = {
        s3Location = M.S3Location,
    },
}

M.AssociateSbomWithPackageVersionInput = {
    type = "structure",
    id = "AssociateSbomWithPackageVersionInput",
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
                idempotency_token = true,
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
    id = "AssociateSbomWithPackageVersionOutput",
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
    id = "ConflictException",
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
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
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

M.AssociateTargetsWithJobInput = {
    type = "structure",
    id = "AssociateTargetsWithJobInput",
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
    id = "AssociateTargetsWithJobOutput",
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
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachPolicyInput = {
    type = "structure",
    id = "AttachPolicyInput",
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
    id = "AttachPolicyOutput",
}

M.AttachPrincipalPolicyInput = {
    type = "structure",
    id = "AttachPrincipalPolicyInput",
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
    id = "AttachPrincipalPolicyOutput",
}

M.AttachSecurityProfileInput = {
    type = "structure",
    id = "AttachSecurityProfileInput",
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
    id = "AttachSecurityProfileOutput",
}

M.VersionConflictException = {
    type = "structure",
    id = "VersionConflictException",
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
    id = "AttachThingPrincipalInput",
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
    id = "AttachThingPrincipalOutput",
}

M.AttributePayload = {
    type = "structure",
    id = "AttributePayload",
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
    id = "AuditCheckConfiguration",
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
    id = "AuditCheckDetails",
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
    id = "IssuerCertificateIdentifier",
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
    id = "PolicyVersionIdentifier",
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
    id = "ResourceIdentifier",
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
    id = "NonCompliantResource",
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
    id = "RelatedResource",
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
    id = "AuditFinding",
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
    id = "AuditMitigationActionExecutionMetadata",
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
    id = "AuditMitigationActionsTaskMetadata",
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
    id = "TaskStatisticsForAuditCheck",
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
    id = "AuditMitigationActionsTaskTarget",
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
    id = "AuditNotificationTarget",
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
    id = "AuditSuppression",
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
    id = "AuditTaskMetadata",
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
    id = "AuthInfo",
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
    id = "AuthorizerConfig",
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
    id = "AuthorizerDescription",
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
    id = "AuthorizerSummary",
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
    id = "ExplicitDeny",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
    },
}

M.ImplicitDeny = {
    type = "structure",
    id = "ImplicitDeny",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
        },
    },
}

M.Denied = {
    type = "structure",
    id = "Denied",
    members = {
        implicitDeny = M.ImplicitDeny,
        explicitDeny = M.ExplicitDeny,
    },
}

M.AuthResult = {
    type = "structure",
    id = "AuthResult",
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
    id = "CancelAuditMitigationActionsTaskInput",
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
    id = "CancelAuditMitigationActionsTaskOutput",
}

M.CancelAuditTaskInput = {
    type = "structure",
    id = "CancelAuditTaskInput",
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
    id = "CancelAuditTaskOutput",
}

M.CancelCertificateTransferInput = {
    type = "structure",
    id = "CancelCertificateTransferInput",
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
    id = "CancelCertificateTransferOutput",
}

M.CancelDetectMitigationActionsTaskInput = {
    type = "structure",
    id = "CancelDetectMitigationActionsTaskInput",
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
    id = "CancelDetectMitigationActionsTaskOutput",
}

M.CancelJobInput = {
    type = "structure",
    id = "CancelJobInput",
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
    id = "CancelJobOutput",
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
    id = "CancelJobExecutionInput",
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
    id = "CancelJobExecutionOutput",
}

M.InvalidStateTransitionException = {
    type = "structure",
    id = "InvalidStateTransitionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClearDefaultAuthorizerInput = {
    type = "structure",
    id = "ClearDefaultAuthorizerInput",
}

M.ClearDefaultAuthorizerOutput = {
    type = "structure",
    id = "ClearDefaultAuthorizerOutput",
}

M.ConfirmTopicRuleDestinationInput = {
    type = "structure",
    id = "ConfirmTopicRuleDestinationInput",
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
    id = "ConfirmTopicRuleDestinationOutput",
}

M.ConflictingResourceUpdateException = {
    type = "structure",
    id = "ConflictingResourceUpdateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    id = "InternalException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAuditSuppressionInput = {
    type = "structure",
    id = "CreateAuditSuppressionInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateAuditSuppressionOutput = {
    type = "structure",
    id = "CreateAuditSuppressionOutput",
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
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
    id = "Tag",
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
    id = "CreateAuthorizerInput",
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
    id = "CreateAuthorizerOutput",
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
    id = "BillingGroupProperties",
    members = {
        billingGroupDescription = {
            type = "string",
        },
    },
}

M.CreateBillingGroupInput = {
    type = "structure",
    id = "CreateBillingGroupInput",
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
    id = "CreateBillingGroupOutput",
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
    id = "CreateCertificateFromCsrInput",
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
    id = "CreateCertificateFromCsrOutput",
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
    id = "CreateCertificateProviderInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCertificateProviderOutput = {
    type = "structure",
    id = "CreateCertificateProviderOutput",
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
    id = "CommandParameterValue",
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
    id = "CommandParameterValueNumberRange",
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
    id = "CommandParameterValueComparisonOperand",
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
    id = "CommandParameterValueCondition",
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
    id = "CommandParameter",
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
    id = "CommandPayload",
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
    id = "AwsJsonSubstitutionCommandPreprocessorConfig",
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
    id = "CommandPreprocessor",
    members = {
        awsJsonSubstitution = M.AwsJsonSubstitutionCommandPreprocessorConfig,
    },
}

M.CreateCommandInput = {
    type = "structure",
    id = "CreateCommandInput",
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
    id = "CreateCommandOutput",
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
    id = "CreateCustomMetricInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateCustomMetricOutput = {
    type = "structure",
    id = "CreateCustomMetricOutput",
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
    id = "CreateDimensionInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateDimensionOutput = {
    type = "structure",
    id = "CreateDimensionOutput",
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
    id = "CertificateValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClientCertificateConfig = {
    type = "structure",
    id = "ClientCertificateConfig",
    members = {
        clientCertificateCallbackArn = {
            type = "string",
        },
    },
}

M.ServerCertificateConfig = {
    type = "structure",
    id = "ServerCertificateConfig",
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
    id = "TlsConfig",
    members = {
        securityPolicy = {
            type = "string",
        },
    },
}

M.CreateDomainConfigurationInput = {
    type = "structure",
    id = "CreateDomainConfigurationInput",
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
    id = "CreateDomainConfigurationOutput",
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
    id = "ThingGroupProperties",
    members = {
        thingGroupDescription = {
            type = "string",
        },
        attributePayload = M.AttributePayload,
    },
}

M.CreateDynamicThingGroupInput = {
    type = "structure",
    id = "CreateDynamicThingGroupInput",
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
    id = "CreateDynamicThingGroupOutput",
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
    id = "InvalidQueryException",
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
    id = "CreateFleetMetricInput",
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
    id = "CreateFleetMetricOutput",
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
    id = "IndexNotReadyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAggregationException = {
    type = "structure",
    id = "InvalidAggregationException",
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
    id = "RetryCriteria",
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
    id = "JobExecutionsRetryConfig",
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
    id = "RateIncreaseCriteria",
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
    id = "ExponentialRolloutRate",
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
    id = "JobExecutionsRolloutConfig",
    members = {
        maximumPerMinute = {
            type = "integer",
        },
        exponentialRate = M.ExponentialRolloutRate,
    },
}

M.PresignedUrlConfig = {
    type = "structure",
    id = "PresignedUrlConfig",
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
    id = "MaintenanceWindow",
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
    id = "SchedulingConfig",
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
    id = "TimeoutConfig",
    members = {
        inProgressTimeoutInMinutes = {
            type = "long",
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    id = "CreateJobInput",
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
    id = "CreateJobOutput",
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
    id = "CreateJobTemplateInput",
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
    id = "CreateJobTemplateOutput",
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
    id = "CreateKeysAndCertificateInput",
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
    id = "KeyPair",
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
    id = "CreateKeysAndCertificateOutput",
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
    id = "EnableIoTLoggingParams",
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
    id = "PublishFindingToSnsParams",
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
    id = "ReplaceDefaultPolicyVersionParams",
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
    id = "UpdateCACertificateParams",
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
    id = "UpdateDeviceCertificateParams",
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
    id = "MitigationActionParams",
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
    id = "CreateMitigationActionInput",
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
    id = "CreateMitigationActionOutput",
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
    id = "AwsJobAbortCriteria",
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
    id = "AwsJobAbortConfig",
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
    id = "AwsJobRateIncreaseCriteria",
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
    id = "AwsJobExponentialRolloutRate",
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
    id = "AwsJobExecutionsRolloutConfig",
    members = {
        maximumPerMinute = {
            type = "integer",
        },
        exponentialRate = M.AwsJobExponentialRolloutRate,
    },
}

M.AwsJobPresignedUrlConfig = {
    type = "structure",
    id = "AwsJobPresignedUrlConfig",
    members = {
        expiresInSec = {
            type = "long",
        },
    },
}

M.AwsJobTimeoutConfig = {
    type = "structure",
    id = "AwsJobTimeoutConfig",
    members = {
        inProgressTimeoutInMinutes = {
            type = "long",
        },
    },
}

M.CodeSigningCertificateChain = {
    type = "structure",
    id = "CodeSigningCertificateChain",
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
    id = "CodeSigningSignature",
    members = {
        inlineDocument = {
            type = "blob",
        },
    },
}

M.CustomCodeSigning = {
    type = "structure",
    id = "CustomCodeSigning",
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
    id = "S3Destination",
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
    id = "Destination",
    members = {
        s3Destination = M.S3Destination,
    },
}

M.SigningProfileParameter = {
    type = "structure",
    id = "SigningProfileParameter",
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
    id = "StartSigningJobParameter",
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
    id = "CodeSigning",
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
    id = "Stream",
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
    id = "FileLocation",
    members = {
        stream = M.Stream,
        s3Location = M.S3Location,
    },
}

M.OTAUpdateFile = {
    type = "structure",
    id = "OTAUpdateFile",
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
    id = "CreateOTAUpdateInput",
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
    id = "CreateOTAUpdateOutput",
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
    id = "CreatePackageInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.CreatePackageOutput = {
    type = "structure",
    id = "CreatePackageOutput",
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
    id = "PackageVersionArtifact",
    members = {
        s3Location = M.S3Location,
    },
}

M.CreatePackageVersionInput = {
    type = "structure",
    id = "CreatePackageVersionInput",
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
                idempotency_token = true,
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
    id = "CreatePackageVersionOutput",
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
    id = "CreatePolicyInput",
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
    id = "CreatePolicyOutput",
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
    id = "MalformedPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePolicyVersionInput = {
    type = "structure",
    id = "CreatePolicyVersionInput",
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
    id = "CreatePolicyVersionOutput",
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
    id = "VersionsLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateProvisioningClaimInput = {
    type = "structure",
    id = "CreateProvisioningClaimInput",
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
    id = "CreateProvisioningClaimOutput",
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
    id = "ProvisioningHook",
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
    id = "CreateProvisioningTemplateInput",
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
    id = "CreateProvisioningTemplateOutput",
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
    id = "CreateProvisioningTemplateVersionInput",
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
    id = "CreateProvisioningTemplateVersionOutput",
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
    id = "CreateRoleAliasInput",
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
    id = "CreateRoleAliasOutput",
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
    id = "CreateScheduledAuditInput",
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
    id = "CreateScheduledAuditOutput",
    members = {
        scheduledAuditArn = {
            type = "string",
        },
    },
}

M.MetricsExportConfig = {
    type = "structure",
    id = "MetricsExportConfig",
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
    id = "CreateSecurityProfileInput",
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
    id = "CreateSecurityProfileOutput",
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
    id = "StreamFile",
    members = {
        fileId = {
            type = "integer",
        },
        s3Location = M.S3Location,
    },
}

M.CreateStreamInput = {
    type = "structure",
    id = "CreateStreamInput",
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
    id = "CreateStreamOutput",
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
    id = "CreateThingInput",
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
    id = "CreateThingOutput",
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
    id = "CreateThingGroupInput",
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
    id = "CreateThingGroupOutput",
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
    id = "PropagatingAttribute",
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
    id = "Mqtt5Configuration",
    members = {
        propagatingAttributes = {
            type = "list",
            member = M.PropagatingAttribute,
        },
    },
}

M.ThingTypeProperties = {
    type = "structure",
    id = "ThingTypeProperties",
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
    id = "CreateThingTypeInput",
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
    id = "CreateThingTypeOutput",
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
    id = "TopicRulePayload",
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
    id = "CreateTopicRuleInput",
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
    id = "CreateTopicRuleOutput",
}

M.SqlParseException = {
    type = "structure",
    id = "SqlParseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HttpUrlDestinationConfiguration = {
    type = "structure",
    id = "HttpUrlDestinationConfiguration",
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
    id = "VpcDestinationConfiguration",
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
    id = "TopicRuleDestinationConfiguration",
    members = {
        httpUrlConfiguration = M.HttpUrlDestinationConfiguration,
        vpcConfiguration = M.VpcDestinationConfiguration,
    },
}

M.CreateTopicRuleDestinationInput = {
    type = "structure",
    id = "CreateTopicRuleDestinationInput",
    members = {
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TopicRuleDestinationConfiguration }),
    },
}

M.HttpUrlDestinationProperties = {
    type = "structure",
    id = "HttpUrlDestinationProperties",
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
    id = "VpcDestinationProperties",
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
    id = "TopicRuleDestination",
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
    id = "CreateTopicRuleDestinationOutput",
    members = {
        topicRuleDestination = M.TopicRuleDestination,
    },
}

M.DeleteAccountAuditConfigurationInput = {
    type = "structure",
    id = "DeleteAccountAuditConfigurationInput",
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
    id = "DeleteAccountAuditConfigurationOutput",
}

M.DeleteAuditSuppressionInput = {
    type = "structure",
    id = "DeleteAuditSuppressionInput",
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
    id = "DeleteAuditSuppressionOutput",
}

M.DeleteAuthorizerInput = {
    type = "structure",
    id = "DeleteAuthorizerInput",
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
    id = "DeleteAuthorizerOutput",
}

M.DeleteConflictException = {
    type = "structure",
    id = "DeleteConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteBillingGroupInput = {
    type = "structure",
    id = "DeleteBillingGroupInput",
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
    id = "DeleteBillingGroupOutput",
}

M.CertificateStateException = {
    type = "structure",
    id = "CertificateStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCACertificateInput = {
    type = "structure",
    id = "DeleteCACertificateInput",
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
    id = "DeleteCACertificateOutput",
}

M.DeleteCertificateInput = {
    type = "structure",
    id = "DeleteCertificateInput",
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
    id = "DeleteCertificateOutput",
}

M.DeleteCertificateProviderInput = {
    type = "structure",
    id = "DeleteCertificateProviderInput",
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
    id = "DeleteCertificateProviderOutput",
}

M.DeleteCommandInput = {
    type = "structure",
    id = "DeleteCommandInput",
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
    id = "DeleteCommandOutput",
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
    id = "DeleteCommandExecutionInput",
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
    id = "DeleteCommandExecutionOutput",
}

M.DeleteCustomMetricInput = {
    type = "structure",
    id = "DeleteCustomMetricInput",
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
    id = "DeleteCustomMetricOutput",
}

M.DeleteDimensionInput = {
    type = "structure",
    id = "DeleteDimensionInput",
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
    id = "DeleteDimensionOutput",
}

M.DeleteDomainConfigurationInput = {
    type = "structure",
    id = "DeleteDomainConfigurationInput",
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
    id = "DeleteDomainConfigurationOutput",
}

M.DeleteDynamicThingGroupInput = {
    type = "structure",
    id = "DeleteDynamicThingGroupInput",
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
    id = "DeleteDynamicThingGroupOutput",
}

M.DeleteFleetMetricInput = {
    type = "structure",
    id = "DeleteFleetMetricInput",
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
    id = "DeleteFleetMetricOutput",
}

M.DeleteJobInput = {
    type = "structure",
    id = "DeleteJobInput",
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
    id = "DeleteJobOutput",
}

M.DeleteJobExecutionInput = {
    type = "structure",
    id = "DeleteJobExecutionInput",
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
    id = "DeleteJobExecutionOutput",
}

M.DeleteJobTemplateInput = {
    type = "structure",
    id = "DeleteJobTemplateInput",
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
    id = "DeleteJobTemplateOutput",
}

M.DeleteMitigationActionInput = {
    type = "structure",
    id = "DeleteMitigationActionInput",
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
    id = "DeleteMitigationActionOutput",
}

M.DeleteOTAUpdateInput = {
    type = "structure",
    id = "DeleteOTAUpdateInput",
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
    id = "DeleteOTAUpdateOutput",
}

M.DeletePackageInput = {
    type = "structure",
    id = "DeletePackageInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeletePackageOutput = {
    type = "structure",
    id = "DeletePackageOutput",
}

M.DeletePackageVersionInput = {
    type = "structure",
    id = "DeletePackageVersionInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeletePackageVersionOutput = {
    type = "structure",
    id = "DeletePackageVersionOutput",
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
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
    id = "DeletePolicyOutput",
}

M.DeletePolicyVersionInput = {
    type = "structure",
    id = "DeletePolicyVersionInput",
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
    id = "DeletePolicyVersionOutput",
}

M.DeleteProvisioningTemplateInput = {
    type = "structure",
    id = "DeleteProvisioningTemplateInput",
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
    id = "DeleteProvisioningTemplateOutput",
}

M.DeleteProvisioningTemplateVersionInput = {
    type = "structure",
    id = "DeleteProvisioningTemplateVersionInput",
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
    id = "DeleteProvisioningTemplateVersionOutput",
}

M.DeleteRegistrationCodeInput = {
    type = "structure",
    id = "DeleteRegistrationCodeInput",
}

M.DeleteRegistrationCodeOutput = {
    type = "structure",
    id = "DeleteRegistrationCodeOutput",
}

M.DeleteRoleAliasInput = {
    type = "structure",
    id = "DeleteRoleAliasInput",
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
    id = "DeleteRoleAliasOutput",
}

M.DeleteScheduledAuditInput = {
    type = "structure",
    id = "DeleteScheduledAuditInput",
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
    id = "DeleteScheduledAuditOutput",
}

M.DeleteSecurityProfileInput = {
    type = "structure",
    id = "DeleteSecurityProfileInput",
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
    id = "DeleteSecurityProfileOutput",
}

M.DeleteStreamInput = {
    type = "structure",
    id = "DeleteStreamInput",
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
    id = "DeleteStreamOutput",
}

M.DeleteThingInput = {
    type = "structure",
    id = "DeleteThingInput",
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
    id = "DeleteThingOutput",
}

M.DeleteThingGroupInput = {
    type = "structure",
    id = "DeleteThingGroupInput",
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
    id = "DeleteThingGroupOutput",
}

M.DeleteThingTypeInput = {
    type = "structure",
    id = "DeleteThingTypeInput",
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
    id = "DeleteThingTypeOutput",
}

M.DeleteTopicRuleInput = {
    type = "structure",
    id = "DeleteTopicRuleInput",
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
    id = "DeleteTopicRuleOutput",
}

M.DeleteTopicRuleDestinationInput = {
    type = "structure",
    id = "DeleteTopicRuleDestinationInput",
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
    id = "DeleteTopicRuleDestinationOutput",
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
    id = "DeleteV2LoggingLevelInput",
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
    id = "DeleteV2LoggingLevelOutput",
}

M.DeprecateThingTypeInput = {
    type = "structure",
    id = "DeprecateThingTypeInput",
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
    id = "DeprecateThingTypeOutput",
}

M.DescribeAccountAuditConfigurationInput = {
    type = "structure",
    id = "DescribeAccountAuditConfigurationInput",
}

M.DescribeAccountAuditConfigurationOutput = {
    type = "structure",
    id = "DescribeAccountAuditConfigurationOutput",
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
    id = "DescribeAuditFindingInput",
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
    id = "DescribeAuditFindingOutput",
    members = {
        finding = M.AuditFinding,
    },
}

M.DescribeAuditMitigationActionsTaskInput = {
    type = "structure",
    id = "DescribeAuditMitigationActionsTaskInput",
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
    id = "MitigationAction",
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
    id = "DescribeAuditMitigationActionsTaskOutput",
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
    id = "DescribeAuditSuppressionInput",
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
    id = "DescribeAuditSuppressionOutput",
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
    id = "DescribeAuditTaskInput",
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
    id = "TaskStatistics",
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
    id = "DescribeAuditTaskOutput",
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
    id = "DescribeAuthorizerInput",
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
    id = "DescribeAuthorizerOutput",
    members = {
        authorizerDescription = M.AuthorizerDescription,
    },
}

M.DescribeBillingGroupInput = {
    type = "structure",
    id = "DescribeBillingGroupInput",
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
    id = "BillingGroupMetadata",
    members = {
        creationDate = {
            type = "timestamp",
        },
    },
}

M.DescribeBillingGroupOutput = {
    type = "structure",
    id = "DescribeBillingGroupOutput",
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
    id = "DescribeCACertificateInput",
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
    id = "CertificateValidity",
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
    id = "CACertificateDescription",
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
    id = "RegistrationConfig",
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
    id = "DescribeCACertificateOutput",
    members = {
        certificateDescription = M.CACertificateDescription,
        registrationConfig = M.RegistrationConfig,
    },
}

M.DescribeCertificateInput = {
    type = "structure",
    id = "DescribeCertificateInput",
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
    id = "TransferData",
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
    id = "CertificateDescription",
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
    id = "DescribeCertificateOutput",
    members = {
        certificateDescription = M.CertificateDescription,
    },
}

M.DescribeCertificateProviderInput = {
    type = "structure",
    id = "DescribeCertificateProviderInput",
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
    id = "DescribeCertificateProviderOutput",
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
    id = "DescribeCustomMetricInput",
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
    id = "DescribeCustomMetricOutput",
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
    id = "DescribeDefaultAuthorizerInput",
}

M.DescribeDefaultAuthorizerOutput = {
    type = "structure",
    id = "DescribeDefaultAuthorizerOutput",
    members = {
        authorizerDescription = M.AuthorizerDescription,
    },
}

M.DescribeDetectMitigationActionsTaskInput = {
    type = "structure",
    id = "DescribeDetectMitigationActionsTaskInput",
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
    id = "DetectMitigationActionsTaskTarget",
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
    id = "DetectMitigationActionsTaskStatistics",
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
    id = "ViolationEventOccurrenceRange",
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
    id = "DetectMitigationActionsTaskSummary",
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
    id = "DescribeDetectMitigationActionsTaskOutput",
    members = {
        taskSummary = M.DetectMitigationActionsTaskSummary,
    },
}

M.DescribeDimensionInput = {
    type = "structure",
    id = "DescribeDimensionInput",
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
    id = "DescribeDimensionOutput",
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
    id = "DescribeDomainConfigurationInput",
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
    id = "ServerCertificateSummary",
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
    id = "DescribeDomainConfigurationOutput",
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
    id = "DescribeEncryptionConfigurationInput",
}

M.ConfigurationStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.ConfigurationDetails = {
    type = "structure",
    id = "ConfigurationDetails",
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
    id = "DescribeEncryptionConfigurationOutput",
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
    id = "DescribeEndpointInput",
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
    id = "DescribeEndpointOutput",
    members = {
        endpointAddress = {
            type = "string",
        },
    },
}

M.DescribeEventConfigurationsInput = {
    type = "structure",
    id = "DescribeEventConfigurationsInput",
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
    id = "Configuration",
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
    id = "DescribeEventConfigurationsOutput",
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
    id = "DescribeFleetMetricInput",
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
    id = "DescribeFleetMetricOutput",
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
    id = "DescribeIndexInput",
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
    id = "DescribeIndexOutput",
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
    id = "DescribeJobInput",
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
    id = "JobProcessDetails",
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
    id = "ScheduledJobRollout",
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
    id = "Job",
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
    id = "DescribeJobOutput",
    members = {
        documentSource = {
            type = "string",
        },
        job = M.Job,
    },
}

M.DescribeJobExecutionInput = {
    type = "structure",
    id = "DescribeJobExecutionInput",
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
    id = "JobExecutionStatusDetails",
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
    id = "JobExecution",
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
    id = "DescribeJobExecutionOutput",
    members = {
        execution = M.JobExecution,
    },
}

M.DescribeJobTemplateInput = {
    type = "structure",
    id = "DescribeJobTemplateInput",
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
    id = "DescribeJobTemplateOutput",
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
    id = "DescribeManagedJobTemplateInput",
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
    id = "DocumentParameter",
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
    id = "DescribeManagedJobTemplateOutput",
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
    id = "DescribeMitigationActionInput",
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
    id = "DescribeMitigationActionOutput",
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
    id = "DescribeProvisioningTemplateInput",
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
    id = "DescribeProvisioningTemplateOutput",
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
    id = "DescribeProvisioningTemplateVersionInput",
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
    id = "DescribeProvisioningTemplateVersionOutput",
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
    id = "DescribeRoleAliasInput",
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
    id = "RoleAliasDescription",
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
    id = "DescribeRoleAliasOutput",
    members = {
        roleAliasDescription = M.RoleAliasDescription,
    },
}

M.DescribeScheduledAuditInput = {
    type = "structure",
    id = "DescribeScheduledAuditInput",
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
    id = "DescribeScheduledAuditOutput",
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
    id = "DescribeSecurityProfileInput",
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
    id = "DescribeSecurityProfileOutput",
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
    id = "DescribeStreamInput",
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
    id = "StreamInfo",
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
    id = "DescribeStreamOutput",
    members = {
        streamInfo = M.StreamInfo,
    },
}

M.DescribeThingInput = {
    type = "structure",
    id = "DescribeThingInput",
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
    id = "DescribeThingOutput",
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
    id = "DescribeThingGroupInput",
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
    id = "GroupNameAndArn",
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
    id = "ThingGroupMetadata",
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
    id = "DescribeThingGroupOutput",
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
    id = "DescribeThingRegistrationTaskInput",
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
    id = "DescribeThingRegistrationTaskOutput",
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
    id = "DescribeThingTypeInput",
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
    id = "ThingTypeMetadata",
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
    id = "DescribeThingTypeOutput",
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
    id = "DetachPolicyInput",
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
    id = "DetachPolicyOutput",
}

M.DetachPrincipalPolicyInput = {
    type = "structure",
    id = "DetachPrincipalPolicyInput",
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
    id = "DetachPrincipalPolicyOutput",
}

M.DetachSecurityProfileInput = {
    type = "structure",
    id = "DetachSecurityProfileInput",
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
    id = "DetachSecurityProfileOutput",
}

M.DetachThingPrincipalInput = {
    type = "structure",
    id = "DetachThingPrincipalInput",
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
    id = "DetachThingPrincipalOutput",
}

M.DisableTopicRuleInput = {
    type = "structure",
    id = "DisableTopicRuleInput",
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
    id = "DisableTopicRuleOutput",
}

M.DisassociateSbomFromPackageVersionInput = {
    type = "structure",
    id = "DisassociateSbomFromPackageVersionInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateSbomFromPackageVersionOutput = {
    type = "structure",
    id = "DisassociateSbomFromPackageVersionOutput",
}

M.EnableTopicRuleInput = {
    type = "structure",
    id = "EnableTopicRuleInput",
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
    id = "EnableTopicRuleOutput",
}

M.GetBehaviorModelTrainingSummariesInput = {
    type = "structure",
    id = "GetBehaviorModelTrainingSummariesInput",
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
    id = "BehaviorModelTrainingSummary",
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
    id = "GetBehaviorModelTrainingSummariesOutput",
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
    id = "TermsAggregation",
    members = {
        maxBuckets = {
            type = "integer",
        },
    },
}

M.BucketsAggregationType = {
    type = "structure",
    id = "BucketsAggregationType",
    members = {
        termsAggregation = M.TermsAggregation,
    },
}

M.GetBucketsAggregationInput = {
    type = "structure",
    id = "GetBucketsAggregationInput",
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
    id = "Bucket",
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
    id = "GetBucketsAggregationOutput",
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
    id = "GetCardinalityInput",
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
    id = "GetCardinalityOutput",
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
    id = "GetCommandInput",
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
    id = "GetCommandOutput",
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
    id = "GetCommandExecutionInput",
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
    id = "CommandExecutionResult",
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
    id = "StatusReason",
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
    id = "GetCommandExecutionOutput",
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
    id = "GetEffectivePoliciesInput",
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
    id = "EffectivePolicy",
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
    id = "GetEffectivePoliciesOutput",
    members = {
        effectivePolicies = {
            type = "list",
            member = M.EffectivePolicy,
        },
    },
}

M.GetIndexingConfigurationInput = {
    type = "structure",
    id = "GetIndexingConfigurationInput",
}

M.FieldType = {
    NUMBER = "Number",
    STRING = "String",
    BOOLEAN = "Boolean",
}

M.Field = {
    type = "structure",
    id = "Field",
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
    id = "ThingGroupIndexingConfiguration",
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
    id = "GeoLocationTarget",
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
    id = "IndexingFilter",
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
    id = "ThingIndexingConfiguration",
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
    id = "GetIndexingConfigurationOutput",
    members = {
        thingIndexingConfiguration = M.ThingIndexingConfiguration,
        thingGroupIndexingConfiguration = M.ThingGroupIndexingConfiguration,
    },
}

M.GetJobDocumentInput = {
    type = "structure",
    id = "GetJobDocumentInput",
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
    id = "GetJobDocumentOutput",
    members = {
        document = {
            type = "string",
        },
    },
}

M.GetLoggingOptionsInput = {
    type = "structure",
    id = "GetLoggingOptionsInput",
}

M.GetLoggingOptionsOutput = {
    type = "structure",
    id = "GetLoggingOptionsOutput",
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
    id = "GetOTAUpdateInput",
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
    id = "ErrorInfo",
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
    id = "OTAUpdateInfo",
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
    id = "GetOTAUpdateOutput",
    members = {
        otaUpdateInfo = M.OTAUpdateInfo,
    },
}

M.GetPackageInput = {
    type = "structure",
    id = "GetPackageInput",
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
    id = "GetPackageOutput",
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
    id = "GetPackageConfigurationInput",
}

M.VersionUpdateByJobsConfig = {
    type = "structure",
    id = "VersionUpdateByJobsConfig",
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
    id = "GetPackageConfigurationOutput",
    members = {
        versionUpdateByJobsConfig = M.VersionUpdateByJobsConfig,
    },
}

M.GetPackageVersionInput = {
    type = "structure",
    id = "GetPackageVersionInput",
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
    id = "GetPackageVersionOutput",
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
    id = "GetPercentilesInput",
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
    id = "PercentPair",
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
    id = "GetPercentilesOutput",
    members = {
        percentiles = {
            type = "list",
            member = M.PercentPair,
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
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
    id = "GetPolicyOutput",
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
    id = "GetPolicyVersionInput",
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
    id = "GetPolicyVersionOutput",
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
    id = "GetRegistrationCodeInput",
}

M.GetRegistrationCodeOutput = {
    type = "structure",
    id = "GetRegistrationCodeOutput",
    members = {
        registrationCode = {
            type = "string",
        },
    },
}

M.GetStatisticsInput = {
    type = "structure",
    id = "GetStatisticsInput",
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
    id = "Statistics",
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
    id = "GetStatisticsOutput",
    members = {
        statistics = M.Statistics,
    },
}

M.GetThingConnectivityDataInput = {
    type = "structure",
    id = "GetThingConnectivityDataInput",
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
    id = "GetThingConnectivityDataOutput",
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
    id = "GetTopicRuleInput",
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
    id = "TopicRule",
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
    id = "GetTopicRuleOutput",
    members = {
        ruleArn = {
            type = "string",
        },
        rule = M.TopicRule,
    },
}

M.GetTopicRuleDestinationInput = {
    type = "structure",
    id = "GetTopicRuleDestinationInput",
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
    id = "GetTopicRuleDestinationOutput",
    members = {
        topicRuleDestination = M.TopicRuleDestination,
    },
}

M.GetV2LoggingOptionsInput = {
    type = "structure",
    id = "GetV2LoggingOptionsInput",
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
    id = "LogEventConfiguration",
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
    id = "GetV2LoggingOptionsOutput",
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
    id = "NotConfiguredException",
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
    id = "ListActiveViolationsInput",
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
    id = "ListActiveViolationsOutput",
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
    id = "ListAttachedPoliciesInput",
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
    id = "ListAttachedPoliciesOutput",
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
    id = "ListAuditFindingsInput",
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
    id = "ListAuditFindingsOutput",
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
    id = "ListAuditMitigationActionsExecutionsInput",
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
    id = "ListAuditMitigationActionsExecutionsOutput",
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
    id = "ListAuditMitigationActionsTasksInput",
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
    id = "ListAuditMitigationActionsTasksOutput",
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
    id = "ListAuditSuppressionsInput",
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
    id = "ListAuditSuppressionsOutput",
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
    id = "ListAuditTasksInput",
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
    id = "ListAuditTasksOutput",
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
    id = "ListAuthorizersInput",
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
    id = "ListAuthorizersOutput",
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
    id = "ListBillingGroupsInput",
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
    id = "ListBillingGroupsOutput",
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
    id = "ListCACertificatesInput",
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
    id = "CACertificate",
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
    id = "ListCACertificatesOutput",
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
    id = "ListCertificateProvidersInput",
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
    id = "CertificateProviderSummary",
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
    id = "ListCertificateProvidersOutput",
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
    id = "ListCertificatesInput",
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
    id = "Certificate",
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
    id = "ListCertificatesOutput",
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
    id = "ListCertificatesByCAInput",
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
    id = "ListCertificatesByCAOutput",
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
    id = "TimeFilter",
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
    id = "ListCommandExecutionsInput",
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
    id = "CommandExecutionSummary",
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
    id = "ListCommandExecutionsOutput",
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
    id = "ListCommandsInput",
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
    id = "CommandSummary",
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
    id = "ListCommandsOutput",
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
    id = "ListCustomMetricsInput",
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
    id = "ListCustomMetricsOutput",
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
    id = "ListDetectMitigationActionsExecutionsInput",
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
    id = "DetectMitigationActionExecution",
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
    id = "ListDetectMitigationActionsExecutionsOutput",
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
    id = "ListDetectMitigationActionsTasksInput",
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
    id = "ListDetectMitigationActionsTasksOutput",
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
    id = "ListDimensionsInput",
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
    id = "ListDimensionsOutput",
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
    id = "ListDomainConfigurationsInput",
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
    id = "DomainConfigurationSummary",
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
    id = "ListDomainConfigurationsOutput",
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
    id = "ListFleetMetricsInput",
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
    id = "FleetMetricNameAndArn",
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
    id = "ListFleetMetricsOutput",
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
    id = "ListIndicesInput",
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
    id = "ListIndicesOutput",
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
    id = "ListJobExecutionsForJobInput",
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
    id = "JobExecutionSummary",
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
    id = "JobExecutionSummaryForJob",
    members = {
        thingArn = {
            type = "string",
        },
        jobExecutionSummary = M.JobExecutionSummary,
    },
}

M.ListJobExecutionsForJobOutput = {
    type = "structure",
    id = "ListJobExecutionsForJobOutput",
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
    id = "ListJobExecutionsForThingInput",
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
    id = "JobExecutionSummaryForThing",
    members = {
        jobId = {
            type = "string",
        },
        jobExecutionSummary = M.JobExecutionSummary,
    },
}

M.ListJobExecutionsForThingOutput = {
    type = "structure",
    id = "ListJobExecutionsForThingOutput",
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
    id = "ListJobsInput",
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
    id = "JobSummary",
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
    id = "ListJobsOutput",
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
    id = "ListJobTemplatesInput",
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
    id = "JobTemplateSummary",
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
    id = "ListJobTemplatesOutput",
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
    id = "ListManagedJobTemplatesInput",
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
    id = "ManagedJobTemplateSummary",
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
    id = "ListManagedJobTemplatesOutput",
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
    id = "ListMetricValuesInput",
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
    id = "MetricDatum",
    members = {
        timestamp = {
            type = "timestamp",
        },
        value = M.MetricValue,
    },
}

M.ListMetricValuesOutput = {
    type = "structure",
    id = "ListMetricValuesOutput",
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
    id = "ListMitigationActionsInput",
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
    id = "MitigationActionIdentifier",
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
    id = "ListMitigationActionsOutput",
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
    id = "ListOTAUpdatesInput",
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
    id = "OTAUpdateSummary",
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
    id = "ListOTAUpdatesOutput",
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
    id = "ListOutgoingCertificatesInput",
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
    id = "OutgoingCertificate",
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
    id = "ListOutgoingCertificatesOutput",
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
    id = "ListPackagesInput",
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
    id = "PackageSummary",
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
    id = "ListPackagesOutput",
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
    id = "ListPackageVersionsInput",
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
    id = "PackageVersionSummary",
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
    id = "ListPackageVersionsOutput",
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
    id = "ListPoliciesInput",
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
    id = "ListPoliciesOutput",
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
    id = "ListPolicyPrincipalsInput",
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
    id = "ListPolicyPrincipalsOutput",
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
    id = "ListPolicyVersionsInput",
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
    id = "PolicyVersion",
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
    id = "ListPolicyVersionsOutput",
    members = {
        policyVersions = {
            type = "list",
            member = M.PolicyVersion,
        },
    },
}

M.ListPrincipalPoliciesInput = {
    type = "structure",
    id = "ListPrincipalPoliciesInput",
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
    id = "ListPrincipalPoliciesOutput",
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
    id = "ListPrincipalThingsInput",
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
    id = "ListPrincipalThingsOutput",
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
    id = "ListPrincipalThingsV2Input",
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
    id = "PrincipalThingObject",
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
    id = "ListPrincipalThingsV2Output",
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
    id = "ListProvisioningTemplatesInput",
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
    id = "ProvisioningTemplateSummary",
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
    id = "ListProvisioningTemplatesOutput",
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
    id = "ListProvisioningTemplateVersionsInput",
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
    id = "ProvisioningTemplateVersionSummary",
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
    id = "ListProvisioningTemplateVersionsOutput",
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
    id = "ListRelatedResourcesForAuditFindingInput",
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
    id = "ListRelatedResourcesForAuditFindingOutput",
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
    id = "ListRoleAliasesInput",
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
    id = "ListRoleAliasesOutput",
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
    id = "ListSbomValidationResultsInput",
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
    id = "SbomValidationResultSummary",
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
    id = "ListSbomValidationResultsOutput",
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
    id = "ListScheduledAuditsInput",
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
    id = "ScheduledAuditMetadata",
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
    id = "ListScheduledAuditsOutput",
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
    id = "ListSecurityProfilesInput",
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
    id = "SecurityProfileIdentifier",
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
    id = "ListSecurityProfilesOutput",
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
    id = "ListSecurityProfilesForTargetInput",
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
    id = "SecurityProfileTarget",
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
    id = "SecurityProfileTargetMapping",
    members = {
        securityProfileIdentifier = M.SecurityProfileIdentifier,
        target = M.SecurityProfileTarget,
    },
}

M.ListSecurityProfilesForTargetOutput = {
    type = "structure",
    id = "ListSecurityProfilesForTargetOutput",
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
    id = "ListStreamsInput",
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
    id = "StreamSummary",
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
    id = "ListStreamsOutput",
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
    id = "ListTagsForResourceInput",
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

M.ListTargetsForPolicyInput = {
    type = "structure",
    id = "ListTargetsForPolicyInput",
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
    id = "ListTargetsForPolicyOutput",
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
    id = "ListTargetsForSecurityProfileInput",
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
    id = "ListTargetsForSecurityProfileOutput",
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
    id = "ListThingGroupsInput",
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
    id = "ListThingGroupsOutput",
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
    id = "ListThingGroupsForThingInput",
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
    id = "ListThingGroupsForThingOutput",
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
    id = "ListThingPrincipalsInput",
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
    id = "ListThingPrincipalsOutput",
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
    id = "ListThingPrincipalsV2Input",
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
    id = "ThingPrincipalObject",
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
    id = "ListThingPrincipalsV2Output",
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
    id = "ListThingRegistrationTaskReportsInput",
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
    id = "ListThingRegistrationTaskReportsOutput",
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
    id = "ListThingRegistrationTasksInput",
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
    id = "ListThingRegistrationTasksOutput",
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
    id = "ListThingsInput",
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
    id = "ThingAttribute",
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
    id = "ListThingsOutput",
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
    id = "ListThingsInBillingGroupInput",
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
    id = "ListThingsInBillingGroupOutput",
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
    id = "ListThingsInThingGroupInput",
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
    id = "ListThingsInThingGroupOutput",
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
    id = "ListThingTypesInput",
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
    id = "ThingTypeDefinition",
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
    id = "ListThingTypesOutput",
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
    id = "ListTopicRuleDestinationsInput",
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
    id = "HttpUrlDestinationSummary",
    members = {
        confirmationUrl = {
            type = "string",
        },
    },
}

M.VpcDestinationSummary = {
    type = "structure",
    id = "VpcDestinationSummary",
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
    id = "TopicRuleDestinationSummary",
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
    id = "ListTopicRuleDestinationsOutput",
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
    id = "ListTopicRulesInput",
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
    id = "TopicRuleListItem",
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
    id = "ListTopicRulesOutput",
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
    id = "ListV2LoggingLevelsInput",
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
    id = "LogTarget",
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
    id = "LogTargetConfiguration",
    members = {
        logTarget = M.LogTarget,
        logLevel = {
            type = "string",
        },
    },
}

M.ListV2LoggingLevelsOutput = {
    type = "structure",
    id = "ListV2LoggingLevelsOutput",
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
    id = "ListViolationEventsInput",
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
    id = "ViolationEvent",
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
    id = "ListViolationEventsOutput",
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
    id = "PutVerificationStateOnViolationInput",
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
    id = "PutVerificationStateOnViolationOutput",
}

M.RegisterCACertificateInput = {
    type = "structure",
    id = "RegisterCACertificateInput",
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
    id = "RegisterCACertificateOutput",
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
    id = "RegistrationCodeValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CertificateConflictException = {
    type = "structure",
    id = "CertificateConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterCertificateInput = {
    type = "structure",
    id = "RegisterCertificateInput",
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
    id = "RegisterCertificateOutput",
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
    id = "RegisterCertificateWithoutCAInput",
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
    id = "RegisterCertificateWithoutCAOutput",
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
    id = "RegisterThingInput",
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
    id = "RegisterThingOutput",
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
    id = "ResourceRegistrationFailureException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RejectCertificateTransferInput = {
    type = "structure",
    id = "RejectCertificateTransferInput",
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
    id = "RejectCertificateTransferOutput",
}

M.RemoveThingFromBillingGroupInput = {
    type = "structure",
    id = "RemoveThingFromBillingGroupInput",
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
    id = "RemoveThingFromBillingGroupOutput",
}

M.RemoveThingFromThingGroupInput = {
    type = "structure",
    id = "RemoveThingFromThingGroupInput",
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
    id = "RemoveThingFromThingGroupOutput",
}

M.ReplaceTopicRuleInput = {
    type = "structure",
    id = "ReplaceTopicRuleInput",
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
    id = "ReplaceTopicRuleOutput",
}

M.SearchIndexInput = {
    type = "structure",
    id = "SearchIndexInput",
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
    id = "ThingGroupDocument",
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
    id = "ThingConnectivity",
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
    id = "ThingDocument",
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
    id = "SearchIndexOutput",
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
    id = "SetDefaultAuthorizerInput",
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
    id = "SetDefaultAuthorizerOutput",
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
    id = "SetDefaultPolicyVersionInput",
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
    id = "SetDefaultPolicyVersionOutput",
}

M.LoggingOptionsPayload = {
    type = "structure",
    id = "LoggingOptionsPayload",
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
    id = "SetLoggingOptionsInput",
    members = {
        loggingOptionsPayload = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.LoggingOptionsPayload }),
    },
}

M.SetLoggingOptionsOutput = {
    type = "structure",
    id = "SetLoggingOptionsOutput",
}

M.SetV2LoggingLevelInput = {
    type = "structure",
    id = "SetV2LoggingLevelInput",
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
    id = "SetV2LoggingLevelOutput",
}

M.SetV2LoggingOptionsInput = {
    type = "structure",
    id = "SetV2LoggingOptionsInput",
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
    id = "SetV2LoggingOptionsOutput",
}

M.StartAuditMitigationActionsTaskInput = {
    type = "structure",
    id = "StartAuditMitigationActionsTaskInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.StartAuditMitigationActionsTaskOutput = {
    type = "structure",
    id = "StartAuditMitigationActionsTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.TaskAlreadyExistsException = {
    type = "structure",
    id = "TaskAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartDetectMitigationActionsTaskInput = {
    type = "structure",
    id = "StartDetectMitigationActionsTaskInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.StartDetectMitigationActionsTaskOutput = {
    type = "structure",
    id = "StartDetectMitigationActionsTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.StartOnDemandAuditTaskInput = {
    type = "structure",
    id = "StartOnDemandAuditTaskInput",
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
    id = "StartOnDemandAuditTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.StartThingRegistrationTaskInput = {
    type = "structure",
    id = "StartThingRegistrationTaskInput",
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
    id = "StartThingRegistrationTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.StopThingRegistrationTaskInput = {
    type = "structure",
    id = "StopThingRegistrationTaskInput",
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
    id = "StopThingRegistrationTaskOutput",
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

M.TestAuthorizationInput = {
    type = "structure",
    id = "TestAuthorizationInput",
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
    id = "TestAuthorizationOutput",
    members = {
        authResults = {
            type = "list",
            member = M.AuthResult,
        },
    },
}

M.InvalidResponseException = {
    type = "structure",
    id = "InvalidResponseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HttpContext = {
    type = "structure",
    id = "HttpContext",
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
    id = "MqttContext",
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
    id = "TlsContext",
    members = {
        serverName = {
            type = "string",
        },
    },
}

M.TestInvokeAuthorizerInput = {
    type = "structure",
    id = "TestInvokeAuthorizerInput",
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
    id = "TestInvokeAuthorizerOutput",
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
    id = "TransferCertificateInput",
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
    id = "TransferCertificateOutput",
    members = {
        transferredCertificateArn = {
            type = "string",
        },
    },
}

M.TransferConflictException = {
    type = "structure",
    id = "TransferConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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

M.UpdateAccountAuditConfigurationInput = {
    type = "structure",
    id = "UpdateAccountAuditConfigurationInput",
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
    id = "UpdateAccountAuditConfigurationOutput",
}

M.UpdateAuditSuppressionInput = {
    type = "structure",
    id = "UpdateAuditSuppressionInput",
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
    id = "UpdateAuditSuppressionOutput",
}

M.UpdateAuthorizerInput = {
    type = "structure",
    id = "UpdateAuthorizerInput",
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
    id = "UpdateAuthorizerOutput",
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
    id = "UpdateBillingGroupInput",
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
    id = "UpdateBillingGroupOutput",
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
    id = "UpdateCACertificateInput",
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
    id = "UpdateCACertificateOutput",
}

M.UpdateCertificateInput = {
    type = "structure",
    id = "UpdateCertificateInput",
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
    id = "UpdateCertificateOutput",
}

M.UpdateCertificateProviderInput = {
    type = "structure",
    id = "UpdateCertificateProviderInput",
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
    id = "UpdateCertificateProviderOutput",
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
    id = "UpdateCommandInput",
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
    id = "UpdateCommandOutput",
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
    id = "UpdateCustomMetricInput",
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
    id = "UpdateCustomMetricOutput",
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
    id = "UpdateDimensionInput",
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
    id = "UpdateDimensionOutput",
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
    id = "UpdateDomainConfigurationInput",
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
    id = "UpdateDomainConfigurationOutput",
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
    id = "UpdateDynamicThingGroupInput",
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
    id = "UpdateDynamicThingGroupOutput",
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
    id = "UpdateEncryptionConfigurationInput",
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
    id = "UpdateEncryptionConfigurationOutput",
}

M.UpdateEventConfigurationsInput = {
    type = "structure",
    id = "UpdateEventConfigurationsInput",
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
    id = "UpdateEventConfigurationsOutput",
}

M.UpdateFleetMetricInput = {
    type = "structure",
    id = "UpdateFleetMetricInput",
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
    id = "UpdateFleetMetricOutput",
}

M.UpdateIndexingConfigurationInput = {
    type = "structure",
    id = "UpdateIndexingConfigurationInput",
    members = {
        thingIndexingConfiguration = M.ThingIndexingConfiguration,
        thingGroupIndexingConfiguration = M.ThingGroupIndexingConfiguration,
    },
}

M.UpdateIndexingConfigurationOutput = {
    type = "structure",
    id = "UpdateIndexingConfigurationOutput",
}

M.UpdateJobInput = {
    type = "structure",
    id = "UpdateJobInput",
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
    id = "UpdateJobOutput",
}

M.UpdateMitigationActionInput = {
    type = "structure",
    id = "UpdateMitigationActionInput",
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
    id = "UpdateMitigationActionOutput",
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
    id = "UpdatePackageInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.UpdatePackageOutput = {
    type = "structure",
    id = "UpdatePackageOutput",
}

M.UpdatePackageConfigurationInput = {
    type = "structure",
    id = "UpdatePackageConfigurationInput",
    members = {
        versionUpdateByJobsConfig = M.VersionUpdateByJobsConfig,
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.UpdatePackageConfigurationOutput = {
    type = "structure",
    id = "UpdatePackageConfigurationOutput",
}

M.PackageVersionAction = {
    PUBLISH = "PUBLISH",
    DEPRECATE = "DEPRECATE",
}

M.UpdatePackageVersionInput = {
    type = "structure",
    id = "UpdatePackageVersionInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.UpdatePackageVersionOutput = {
    type = "structure",
    id = "UpdatePackageVersionOutput",
}

M.UpdateProvisioningTemplateInput = {
    type = "structure",
    id = "UpdateProvisioningTemplateInput",
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
    id = "UpdateProvisioningTemplateOutput",
}

M.UpdateRoleAliasInput = {
    type = "structure",
    id = "UpdateRoleAliasInput",
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
    id = "UpdateRoleAliasOutput",
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
    id = "UpdateScheduledAuditInput",
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
    id = "UpdateScheduledAuditOutput",
    members = {
        scheduledAuditArn = {
            type = "string",
        },
    },
}

M.UpdateSecurityProfileInput = {
    type = "structure",
    id = "UpdateSecurityProfileInput",
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
    id = "UpdateSecurityProfileOutput",
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
    id = "UpdateStreamInput",
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
    id = "UpdateStreamOutput",
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
    id = "UpdateThingInput",
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
    id = "UpdateThingOutput",
}

M.UpdateThingGroupInput = {
    type = "structure",
    id = "UpdateThingGroupInput",
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
    id = "UpdateThingGroupOutput",
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
    id = "UpdateThingGroupsForThingInput",
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
    id = "UpdateThingGroupsForThingOutput",
}

M.UpdateThingTypeInput = {
    type = "structure",
    id = "UpdateThingTypeInput",
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
    id = "UpdateThingTypeOutput",
}

M.UpdateTopicRuleDestinationInput = {
    type = "structure",
    id = "UpdateTopicRuleDestinationInput",
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
    id = "UpdateTopicRuleDestinationOutput",
}

M.ValidateSecurityProfileBehaviorsInput = {
    type = "structure",
    id = "ValidateSecurityProfileBehaviorsInput",
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
    id = "ValidationError",
    members = {
        errorMessage = {
            type = "string",
        },
    },
}

M.ValidateSecurityProfileBehaviorsOutput = {
    type = "structure",
    id = "ValidateSecurityProfileBehaviorsOutput",
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
