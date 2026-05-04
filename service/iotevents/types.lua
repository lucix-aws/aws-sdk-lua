local M = {}

M.AcknowledgeFlow = {
    type = "structure",
    id = "AcknowledgeFlow",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ClearTimerAction = {
    type = "structure",
    id = "ClearTimerAction",
    members = {
        timerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PayloadType = {
    STRING = "STRING",
    JSON = "JSON",
}

M.Payload = {
    type = "structure",
    id = "Payload",
    members = {
        contentExpression = {
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

M.DynamoDBAction = {
    type = "structure",
    id = "DynamoDBAction",
    members = {
        hashKeyType = {
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
        rangeKeyType = {
            type = "string",
        },
        rangeKeyField = {
            type = "string",
        },
        rangeKeyValue = {
            type = "string",
        },
        operation = {
            type = "string",
        },
        payloadField = {
            type = "string",
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.Payload,
    },
}

M.DynamoDBv2Action = {
    type = "structure",
    id = "DynamoDBv2Action",
    members = {
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.Payload,
    },
}

M.FirehoseAction = {
    type = "structure",
    id = "FirehoseAction",
    members = {
        deliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        separator = {
            type = "string",
        },
        payload = M.Payload,
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
        payload = M.Payload,
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
    type = "structure",
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
        value = M.AssetPropertyVariant,
        timestamp = M.AssetPropertyTimestamp,
        quality = {
            type = "string",
        },
    },
}

M.IotSiteWiseAction = {
    type = "structure",
    id = "IotSiteWiseAction",
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
        propertyValue = M.AssetPropertyValue,
    },
}

M.IotTopicPublishAction = {
    type = "structure",
    id = "IotTopicPublishAction",
    members = {
        mqttTopic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.Payload,
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
        payload = M.Payload,
    },
}

M.ResetTimerAction = {
    type = "structure",
    id = "ResetTimerAction",
    members = {
        timerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetTimerAction = {
    type = "structure",
    id = "SetTimerAction",
    members = {
        timerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        seconds = {
            type = "integer",
        },
        durationExpression = {
            type = "string",
        },
    },
}

M.SetVariableAction = {
    type = "structure",
    id = "SetVariableAction",
    members = {
        variableName = {
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

M.SNSTopicPublishAction = {
    type = "structure",
    id = "SNSTopicPublishAction",
    members = {
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.Payload,
    },
}

M.SqsAction = {
    type = "structure",
    id = "SqsAction",
    members = {
        queueUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        useBase64 = {
            type = "boolean",
        },
        payload = M.Payload,
    },
}

M.Action = {
    type = "structure",
    id = "Action",
    members = {
        setVariable = M.SetVariableAction,
        sns = M.SNSTopicPublishAction,
        iotTopicPublish = M.IotTopicPublishAction,
        setTimer = M.SetTimerAction,
        clearTimer = M.ClearTimerAction,
        resetTimer = M.ResetTimerAction,
        lambda = M.LambdaAction,
        iotEvents = M.IotEventsAction,
        sqs = M.SqsAction,
        firehose = M.FirehoseAction,
        dynamoDB = M.DynamoDBAction,
        dynamoDBv2 = M.DynamoDBv2Action,
        iotSiteWise = M.IotSiteWiseAction,
    },
}

M.AlarmAction = {
    type = "structure",
    id = "AlarmAction",
    members = {
        sns = M.SNSTopicPublishAction,
        iotTopicPublish = M.IotTopicPublishAction,
        lambda = M.LambdaAction,
        iotEvents = M.IotEventsAction,
        sqs = M.SqsAction,
        firehose = M.FirehoseAction,
        dynamoDB = M.DynamoDBAction,
        dynamoDBv2 = M.DynamoDBv2Action,
        iotSiteWise = M.IotSiteWiseAction,
    },
}

M.InitializationConfiguration = {
    type = "structure",
    id = "InitializationConfiguration",
    members = {
        disabledOnInitialization = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AlarmCapabilities = {
    type = "structure",
    id = "AlarmCapabilities",
    members = {
        initializationConfiguration = M.InitializationConfiguration,
        acknowledgeFlow = M.AcknowledgeFlow,
    },
}

M.AlarmEventActions = {
    type = "structure",
    id = "AlarmEventActions",
    members = {
        alarmActions = {
            type = "list",
            member = M.AlarmAction,
        },
    },
}

M.AlarmModelSummary = {
    type = "structure",
    id = "AlarmModelSummary",
    members = {
        creationTime = {
            type = "timestamp",
        },
        alarmModelDescription = {
            type = "string",
        },
        alarmModelName = {
            type = "string",
        },
    },
}

M.AlarmModelVersionStatus = {
    ACTIVE = "ACTIVE",
    ACTIVATING = "ACTIVATING",
    INACTIVE = "INACTIVE",
    FAILED = "FAILED",
}

M.AlarmModelVersionSummary = {
    type = "structure",
    id = "AlarmModelVersionSummary",
    members = {
        alarmModelName = {
            type = "string",
        },
        alarmModelArn = {
            type = "string",
        },
        alarmModelVersion = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.NotificationTargetActions = {
    type = "structure",
    id = "NotificationTargetActions",
    members = {
        lambdaAction = M.LambdaAction,
    },
}

M.EmailContent = {
    type = "structure",
    id = "EmailContent",
    members = {
        subject = {
            type = "string",
        },
        additionalMessage = {
            type = "string",
        },
    },
}

M.SSOIdentity = {
    type = "structure",
    id = "SSOIdentity",
    members = {
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
        },
    },
}

M.RecipientDetail = {
    type = "structure",
    id = "RecipientDetail",
    members = {
        ssoIdentity = M.SSOIdentity,
    },
}

M.EmailRecipients = {
    type = "structure",
    id = "EmailRecipients",
    members = {
        to = {
            type = "list",
            member = M.RecipientDetail,
        },
    },
}

M.EmailConfiguration = {
    type = "structure",
    id = "EmailConfiguration",
    members = {
        from = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = M.EmailContent,
        recipients = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailRecipients }),
    },
}

M.SMSConfiguration = {
    type = "structure",
    id = "SMSConfiguration",
    members = {
        senderId = {
            type = "string",
        },
        additionalMessage = {
            type = "string",
        },
        recipients = {
            type = "list",
            member = M.RecipientDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationAction = {
    type = "structure",
    id = "NotificationAction",
    members = {
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationTargetActions }),
        smsConfigurations = {
            type = "list",
            member = M.SMSConfiguration,
        },
        emailConfigurations = {
            type = "list",
            member = M.EmailConfiguration,
        },
    },
}

M.AlarmNotification = {
    type = "structure",
    id = "AlarmNotification",
    members = {
        notificationActions = {
            type = "list",
            member = M.NotificationAction,
        },
    },
}

M.ComparisonOperator = {
    GREATER = "GREATER",
    GREATER_OR_EQUAL = "GREATER_OR_EQUAL",
    LESS = "LESS",
    LESS_OR_EQUAL = "LESS_OR_EQUAL",
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
}

M.SimpleRule = {
    type = "structure",
    id = "SimpleRule",
    members = {
        inputProperty = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threshold = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlarmRule = {
    type = "structure",
    id = "AlarmRule",
    members = {
        simpleRule = M.SimpleRule,
    },
}

M.AnalysisResultLevel = {
    INFO = "INFO",
    WARNING = "WARNING",
    ERROR = "ERROR",
}

M.AnalysisResultLocation = {
    type = "structure",
    id = "AnalysisResultLocation",
    members = {
        path = {
            type = "string",
        },
    },
}

M.AnalysisResult = {
    type = "structure",
    id = "AnalysisResult",
    members = {
        type = {
            type = "string",
        },
        level = {
            type = "string",
        },
        message = {
            type = "string",
        },
        locations = {
            type = "list",
            member = M.AnalysisResultLocation,
        },
    },
}

M.AnalysisStatus = {
    RUNNING = "RUNNING",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.Attribute = {
    type = "structure",
    id = "Attribute",
    members = {
        jsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
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

M.CreateAlarmModelInput = {
    type = "structure",
    id = "CreateAlarmModelInput",
    members = {
        alarmModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmModelDescription = {
            type = "string",
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
        key = {
            type = "string",
        },
        severity = {
            type = "integer",
        },
        alarmRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlarmRule }),
        alarmNotification = M.AlarmNotification,
        alarmEventActions = M.AlarmEventActions,
        alarmCapabilities = M.AlarmCapabilities,
    },
}

M.CreateAlarmModelOutput = {
    type = "structure",
    id = "CreateAlarmModelOutput",
    members = {
        creationTime = {
            type = "timestamp",
        },
        alarmModelArn = {
            type = "string",
        },
        alarmModelVersion = {
            type = "string",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
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
        resourceId = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
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

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        eventName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
        },
        actions = {
            type = "list",
            member = M.Action,
        },
    },
}

M.OnEnterLifecycle = {
    type = "structure",
    id = "OnEnterLifecycle",
    members = {
        events = {
            type = "list",
            member = M.Event,
        },
    },
}

M.OnExitLifecycle = {
    type = "structure",
    id = "OnExitLifecycle",
    members = {
        events = {
            type = "list",
            member = M.Event,
        },
    },
}

M.TransitionEvent = {
    type = "structure",
    id = "TransitionEvent",
    members = {
        eventName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member = M.Action,
        },
        nextState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OnInputLifecycle = {
    type = "structure",
    id = "OnInputLifecycle",
    members = {
        events = {
            type = "list",
            member = M.Event,
        },
        transitionEvents = {
            type = "list",
            member = M.TransitionEvent,
        },
    },
}

M.State = {
    type = "structure",
    id = "State",
    members = {
        stateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onInput = M.OnInputLifecycle,
        onEnter = M.OnEnterLifecycle,
        onExit = M.OnExitLifecycle,
    },
}

M.DetectorModelDefinition = {
    type = "structure",
    id = "DetectorModelDefinition",
    members = {
        states = {
            type = "list",
            member = M.State,
            traits = {
                required = true,
            },
        },
        initialStateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationMethod = {
    BATCH = "BATCH",
    SERIAL = "SERIAL",
}

M.CreateDetectorModelInput = {
    type = "structure",
    id = "CreateDetectorModelInput",
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorModelDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DetectorModelDefinition }),
        detectorModelDescription = {
            type = "string",
        },
        key = {
            type = "string",
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
        evaluationMethod = {
            type = "string",
        },
    },
}

M.DetectorModelVersionStatus = {
    ACTIVE = "ACTIVE",
    ACTIVATING = "ACTIVATING",
    INACTIVE = "INACTIVE",
    DEPRECATED = "DEPRECATED",
    DRAFT = "DRAFT",
    PAUSED = "PAUSED",
    FAILED = "FAILED",
}

M.DetectorModelConfiguration = {
    type = "structure",
    id = "DetectorModelConfiguration",
    members = {
        detectorModelName = {
            type = "string",
        },
        detectorModelVersion = {
            type = "string",
        },
        detectorModelDescription = {
            type = "string",
        },
        detectorModelArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        key = {
            type = "string",
        },
        evaluationMethod = {
            type = "string",
        },
    },
}

M.CreateDetectorModelOutput = {
    type = "structure",
    id = "CreateDetectorModelOutput",
    members = {
        detectorModelConfiguration = M.DetectorModelConfiguration,
    },
}

M.InputDefinition = {
    type = "structure",
    id = "InputDefinition",
    members = {
        attributes = {
            type = "list",
            member = M.Attribute,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateInputInput = {
    type = "structure",
    id = "CreateInputInput",
    members = {
        inputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputDescription = {
            type = "string",
        },
        inputDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDefinition }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InputStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.InputConfiguration = {
    type = "structure",
    id = "InputConfiguration",
    members = {
        inputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputDescription = {
            type = "string",
        },
        inputArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateTime = {
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
    },
}

M.CreateInputOutput = {
    type = "structure",
    id = "CreateInputOutput",
    members = {
        inputConfiguration = M.InputConfiguration,
    },
}

M.DeleteAlarmModelInput = {
    type = "structure",
    id = "DeleteAlarmModelInput",
    members = {
        alarmModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAlarmModelOutput = {
    type = "structure",
    id = "DeleteAlarmModelOutput",
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

M.DeleteDetectorModelInput = {
    type = "structure",
    id = "DeleteDetectorModelInput",
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDetectorModelOutput = {
    type = "structure",
    id = "DeleteDetectorModelOutput",
}

M.DeleteInputInput = {
    type = "structure",
    id = "DeleteInputInput",
    members = {
        inputName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInputOutput = {
    type = "structure",
    id = "DeleteInputOutput",
}

M.DescribeAlarmModelInput = {
    type = "structure",
    id = "DescribeAlarmModelInput",
    members = {
        alarmModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        alarmModelVersion = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.DescribeAlarmModelOutput = {
    type = "structure",
    id = "DescribeAlarmModelOutput",
    members = {
        creationTime = {
            type = "timestamp",
        },
        alarmModelArn = {
            type = "string",
        },
        alarmModelVersion = {
            type = "string",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        alarmModelName = {
            type = "string",
        },
        alarmModelDescription = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        key = {
            type = "string",
        },
        severity = {
            type = "integer",
        },
        alarmRule = M.AlarmRule,
        alarmNotification = M.AlarmNotification,
        alarmEventActions = M.AlarmEventActions,
        alarmCapabilities = M.AlarmCapabilities,
    },
}

M.DescribeDetectorModelInput = {
    type = "structure",
    id = "DescribeDetectorModelInput",
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        detectorModelVersion = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.DetectorModel = {
    type = "structure",
    id = "DetectorModel",
    members = {
        detectorModelDefinition = M.DetectorModelDefinition,
        detectorModelConfiguration = M.DetectorModelConfiguration,
    },
}

M.DescribeDetectorModelOutput = {
    type = "structure",
    id = "DescribeDetectorModelOutput",
    members = {
        detectorModel = M.DetectorModel,
    },
}

M.DescribeDetectorModelAnalysisInput = {
    type = "structure",
    id = "DescribeDetectorModelAnalysisInput",
    members = {
        analysisId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDetectorModelAnalysisOutput = {
    type = "structure",
    id = "DescribeDetectorModelAnalysisOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DescribeInputInput = {
    type = "structure",
    id = "DescribeInputInput",
    members = {
        inputName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Input = {
    type = "structure",
    id = "Input",
    members = {
        inputConfiguration = M.InputConfiguration,
        inputDefinition = M.InputDefinition,
    },
}

M.DescribeInputOutput = {
    type = "structure",
    id = "DescribeInputOutput",
    members = {
        input = M.Input,
    },
}

M.DescribeLoggingOptionsInput = {
    type = "structure",
    id = "DescribeLoggingOptionsInput",
}

M.DetectorDebugOption = {
    type = "structure",
    id = "DetectorDebugOption",
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
    },
}

M.LoggingLevel = {
    ERROR = "ERROR",
    INFO = "INFO",
    DEBUG = "DEBUG",
}

M.LoggingOptions = {
    type = "structure",
    id = "LoggingOptions",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        detectorDebugOptions = {
            type = "list",
            member = M.DetectorDebugOption,
        },
    },
}

M.DescribeLoggingOptionsOutput = {
    type = "structure",
    id = "DescribeLoggingOptionsOutput",
    members = {
        loggingOptions = M.LoggingOptions,
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DetectorModelSummary = {
    type = "structure",
    id = "DetectorModelSummary",
    members = {
        detectorModelName = {
            type = "string",
        },
        detectorModelDescription = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
    },
}

M.DetectorModelVersionSummary = {
    type = "structure",
    id = "DetectorModelVersionSummary",
    members = {
        detectorModelName = {
            type = "string",
        },
        detectorModelVersion = {
            type = "string",
        },
        detectorModelArn = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        evaluationMethod = {
            type = "string",
        },
    },
}

M.GetDetectorModelAnalysisResultsInput = {
    type = "structure",
    id = "GetDetectorModelAnalysisResultsInput",
    members = {
        analysisId = {
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

M.GetDetectorModelAnalysisResultsOutput = {
    type = "structure",
    id = "GetDetectorModelAnalysisResultsOutput",
    members = {
        analysisResults = {
            type = "list",
            member = M.AnalysisResult,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IotEventsInputIdentifier = {
    type = "structure",
    id = "IotEventsInputIdentifier",
    members = {
        inputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IotSiteWiseAssetModelPropertyIdentifier = {
    type = "structure",
    id = "IotSiteWiseAssetModelPropertyIdentifier",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IotSiteWiseInputIdentifier = {
    type = "structure",
    id = "IotSiteWiseInputIdentifier",
    members = {
        iotSiteWiseAssetModelPropertyIdentifier = M.IotSiteWiseAssetModelPropertyIdentifier,
    },
}

M.InputIdentifier = {
    type = "structure",
    id = "InputIdentifier",
    members = {
        iotEventsInputIdentifier = M.IotEventsInputIdentifier,
        iotSiteWiseInputIdentifier = M.IotSiteWiseInputIdentifier,
    },
}

M.InputSummary = {
    type = "structure",
    id = "InputSummary",
    members = {
        inputName = {
            type = "string",
        },
        inputDescription = {
            type = "string",
        },
        inputArn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListAlarmModelsInput = {
    type = "structure",
    id = "ListAlarmModelsInput",
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

M.ListAlarmModelsOutput = {
    type = "structure",
    id = "ListAlarmModelsOutput",
    members = {
        alarmModelSummaries = {
            type = "list",
            member = M.AlarmModelSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAlarmModelVersionsInput = {
    type = "structure",
    id = "ListAlarmModelVersionsInput",
    members = {
        alarmModelName = {
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

M.ListAlarmModelVersionsOutput = {
    type = "structure",
    id = "ListAlarmModelVersionsOutput",
    members = {
        alarmModelVersionSummaries = {
            type = "list",
            member = M.AlarmModelVersionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectorModelsInput = {
    type = "structure",
    id = "ListDetectorModelsInput",
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

M.ListDetectorModelsOutput = {
    type = "structure",
    id = "ListDetectorModelsOutput",
    members = {
        detectorModelSummaries = {
            type = "list",
            member = M.DetectorModelSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectorModelVersionsInput = {
    type = "structure",
    id = "ListDetectorModelVersionsInput",
    members = {
        detectorModelName = {
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

M.ListDetectorModelVersionsOutput = {
    type = "structure",
    id = "ListDetectorModelVersionsOutput",
    members = {
        detectorModelVersionSummaries = {
            type = "list",
            member = M.DetectorModelVersionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInputRoutingsInput = {
    type = "structure",
    id = "ListInputRoutingsInput",
    members = {
        inputIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputIdentifier }),
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RoutedResource = {
    type = "structure",
    id = "RoutedResource",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.ListInputRoutingsOutput = {
    type = "structure",
    id = "ListInputRoutingsOutput",
    members = {
        routedResources = {
            type = "list",
            member = M.RoutedResource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInputsInput = {
    type = "structure",
    id = "ListInputsInput",
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

M.ListInputsOutput = {
    type = "structure",
    id = "ListInputsOutput",
    members = {
        inputSummaries = {
            type = "list",
            member = M.InputSummary,
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
    },
}

M.PutLoggingOptionsInput = {
    type = "structure",
    id = "PutLoggingOptionsInput",
    members = {
        loggingOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingOptions }),
    },
}

M.PutLoggingOptionsOutput = {
    type = "structure",
    id = "PutLoggingOptionsOutput",
}

M.StartDetectorModelAnalysisInput = {
    type = "structure",
    id = "StartDetectorModelAnalysisInput",
    members = {
        detectorModelDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DetectorModelDefinition }),
    },
}

M.StartDetectorModelAnalysisOutput = {
    type = "structure",
    id = "StartDetectorModelAnalysisOutput",
    members = {
        analysisId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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

M.UpdateAlarmModelInput = {
    type = "structure",
    id = "UpdateAlarmModelInput",
    members = {
        alarmModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        alarmModelDescription = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        severity = {
            type = "integer",
        },
        alarmRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlarmRule }),
        alarmNotification = M.AlarmNotification,
        alarmEventActions = M.AlarmEventActions,
        alarmCapabilities = M.AlarmCapabilities,
    },
}

M.UpdateAlarmModelOutput = {
    type = "structure",
    id = "UpdateAlarmModelOutput",
    members = {
        creationTime = {
            type = "timestamp",
        },
        alarmModelArn = {
            type = "string",
        },
        alarmModelVersion = {
            type = "string",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateDetectorModelInput = {
    type = "structure",
    id = "UpdateDetectorModelInput",
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        detectorModelDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DetectorModelDefinition }),
        detectorModelDescription = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluationMethod = {
            type = "string",
        },
    },
}

M.UpdateDetectorModelOutput = {
    type = "structure",
    id = "UpdateDetectorModelOutput",
    members = {
        detectorModelConfiguration = M.DetectorModelConfiguration,
    },
}

M.UpdateInputInput = {
    type = "structure",
    id = "UpdateInputInput",
    members = {
        inputName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        inputDescription = {
            type = "string",
        },
        inputDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDefinition }),
    },
}

M.UpdateInputOutput = {
    type = "structure",
    id = "UpdateInputOutput",
    members = {
        inputConfiguration = M.InputConfiguration,
    },
}

return M
