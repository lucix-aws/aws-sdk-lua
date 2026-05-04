local M = {}

M.AcknowledgeFlow = {
    type = "structure",
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
        payload = {
            type = "structure",
        },
    },
}

M.DynamoDBv2Action = {
    type = "structure",
    members = {
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "structure",
        },
    },
}

M.FirehoseAction = {
    type = "structure",
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
        payload = {
            type = "structure",
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
        payload = {
            type = "structure",
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
    type = "structure",
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
        value = {
            type = "structure",
        },
        timestamp = {
            type = "structure",
        },
        quality = {
            type = "string",
        },
    },
}

M.IotSiteWiseAction = {
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
        propertyValue = {
            type = "structure",
        },
    },
}

M.IotTopicPublishAction = {
    type = "structure",
    members = {
        mqttTopic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "structure",
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
        payload = {
            type = "structure",
        },
    },
}

M.ResetTimerAction = {
    type = "structure",
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
    members = {
        timerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        seconds = {
            type = "number",
        },
        durationExpression = {
            type = "string",
        },
    },
}

M.SetVariableAction = {
    type = "structure",
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
    members = {
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "structure",
        },
    },
}

M.SqsAction = {
    type = "structure",
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
        payload = {
            type = "structure",
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        setVariable = {
            type = "structure",
        },
        sns = {
            type = "structure",
        },
        iotTopicPublish = {
            type = "structure",
        },
        setTimer = {
            type = "structure",
        },
        clearTimer = {
            type = "structure",
        },
        resetTimer = {
            type = "structure",
        },
        lambda = {
            type = "structure",
        },
        iotEvents = {
            type = "structure",
        },
        sqs = {
            type = "structure",
        },
        firehose = {
            type = "structure",
        },
        dynamoDB = {
            type = "structure",
        },
        dynamoDBv2 = {
            type = "structure",
        },
        iotSiteWise = {
            type = "structure",
        },
    },
}

M.AlarmAction = {
    type = "structure",
    members = {
        sns = {
            type = "structure",
        },
        iotTopicPublish = {
            type = "structure",
        },
        lambda = {
            type = "structure",
        },
        iotEvents = {
            type = "structure",
        },
        sqs = {
            type = "structure",
        },
        firehose = {
            type = "structure",
        },
        dynamoDB = {
            type = "structure",
        },
        dynamoDBv2 = {
            type = "structure",
        },
        iotSiteWise = {
            type = "structure",
        },
    },
}

M.InitializationConfiguration = {
    type = "structure",
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
    members = {
        initializationConfiguration = {
            type = "structure",
        },
        acknowledgeFlow = {
            type = "structure",
        },
    },
}

M.AlarmEventActions = {
    type = "structure",
    members = {
        alarmActions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AlarmModelSummary = {
    type = "structure",
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
    members = {
        lambdaAction = {
            type = "structure",
        },
    },
}

M.EmailContent = {
    type = "structure",
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
    members = {
        ssoIdentity = {
            type = "structure",
        },
    },
}

M.EmailRecipients = {
    type = "structure",
    members = {
        to = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EmailConfiguration = {
    type = "structure",
    members = {
        from = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "structure",
        },
        recipients = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SMSConfiguration = {
    type = "structure",
    members = {
        senderId = {
            type = "string",
        },
        additionalMessage = {
            type = "string",
        },
        recipients = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationAction = {
    type = "structure",
    members = {
        action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        smsConfigurations = {
            type = "list",
            member_type = "structure",
        },
        emailConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AlarmNotification = {
    type = "structure",
    members = {
        notificationActions = {
            type = "list",
            member_type = "structure",
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
    members = {
        simpleRule = {
            type = "structure",
        },
    },
}

M.AnalysisResultLevel = {
    INFO = "INFO",
    WARNING = "WARNING",
    ERROR = "ERROR",
}

M.AnalysisResultLocation = {
    type = "structure",
    members = {
        path = {
            type = "string",
        },
    },
}

M.AnalysisResult = {
    type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        key = {
            type = "string",
        },
        severity = {
            type = "number",
        },
        alarmRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        alarmNotification = {
            type = "structure",
        },
        alarmEventActions = {
            type = "structure",
        },
        alarmCapabilities = {
            type = "structure",
        },
    },
}

M.CreateAlarmModelOutput = {
    type = "structure",
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

M.Event = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.OnEnterLifecycle = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OnExitLifecycle = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TransitionEvent = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        events = {
            type = "list",
            member_type = "structure",
        },
        transitionEvents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.State = {
    type = "structure",
    members = {
        stateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onInput = {
            type = "structure",
        },
        onEnter = {
            type = "structure",
        },
        onExit = {
            type = "structure",
        },
    },
}

M.DetectorModelDefinition = {
    type = "structure",
    members = {
        states = {
            type = "list",
            member_type = "structure",
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
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorModelDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
    members = {
        detectorModelConfiguration = {
            type = "structure",
        },
    },
}

M.InputDefinition = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateInputInput = {
    type = "structure",
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
        inputDefinition = {
            type = "structure",
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

M.InputStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.InputConfiguration = {
    type = "structure",
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
    members = {
        inputConfiguration = {
            type = "structure",
        },
    },
}

M.DeleteAlarmModelInput = {
    type = "structure",
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

M.DeleteDetectorModelInput = {
    type = "structure",
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
}

M.DeleteInputInput = {
    type = "structure",
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
}

M.DescribeAlarmModelInput = {
    type = "structure",
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
            type = "number",
        },
        alarmRule = {
            type = "structure",
        },
        alarmNotification = {
            type = "structure",
        },
        alarmEventActions = {
            type = "structure",
        },
        alarmCapabilities = {
            type = "structure",
        },
    },
}

M.DescribeDetectorModelInput = {
    type = "structure",
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
    members = {
        detectorModelDefinition = {
            type = "structure",
        },
        detectorModelConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeDetectorModelOutput = {
    type = "structure",
    members = {
        detectorModel = {
            type = "structure",
        },
    },
}

M.DescribeDetectorModelAnalysisInput = {
    type = "structure",
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
    members = {
        status = {
            type = "string",
        },
    },
}

M.DescribeInputInput = {
    type = "structure",
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
    members = {
        inputConfiguration = {
            type = "structure",
        },
        inputDefinition = {
            type = "structure",
        },
    },
}

M.DescribeInputOutput = {
    type = "structure",
    members = {
        input = {
            type = "structure",
        },
    },
}

M.DescribeLoggingOptionsInput = {
    type = "structure",
}

M.DetectorDebugOption = {
    type = "structure",
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
                required = true,
            },
        },
        detectorDebugOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeLoggingOptionsOutput = {
    type = "structure",
    members = {
        loggingOptions = {
            type = "structure",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DetectorModelSummary = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetDetectorModelAnalysisResultsOutput = {
    type = "structure",
    members = {
        analysisResults = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IotEventsInputIdentifier = {
    type = "structure",
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
    members = {
        iotSiteWiseAssetModelPropertyIdentifier = {
            type = "structure",
        },
    },
}

M.InputIdentifier = {
    type = "structure",
    members = {
        iotEventsInputIdentifier = {
            type = "structure",
        },
        iotSiteWiseInputIdentifier = {
            type = "structure",
        },
    },
}

M.InputSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAlarmModelsOutput = {
    type = "structure",
    members = {
        alarmModelSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAlarmModelVersionsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAlarmModelVersionsOutput = {
    type = "structure",
    members = {
        alarmModelVersionSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectorModelsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDetectorModelsOutput = {
    type = "structure",
    members = {
        detectorModelSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectorModelVersionsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDetectorModelVersionsOutput = {
    type = "structure",
    members = {
        detectorModelVersionSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInputRoutingsInput = {
    type = "structure",
    members = {
        inputIdentifier = {
            type = "structure",
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

M.RoutedResource = {
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

M.ListInputRoutingsOutput = {
    type = "structure",
    members = {
        routedResources = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInputsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListInputsOutput = {
    type = "structure",
    members = {
        inputSummaries = {
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
                http_query = "resourceArn",
                required = true,
            },
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
    },
}

M.PutLoggingOptionsInput = {
    type = "structure",
    members = {
        loggingOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLoggingOptionsOutput = {
    type = "structure",
}

M.StartDetectorModelAnalysisInput = {
    type = "structure",
    members = {
        detectorModelDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDetectorModelAnalysisOutput = {
    type = "structure",
    members = {
        analysisId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAlarmModelInput = {
    type = "structure",
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
            type = "number",
        },
        alarmRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        alarmNotification = {
            type = "structure",
        },
        alarmEventActions = {
            type = "structure",
        },
        alarmCapabilities = {
            type = "structure",
        },
    },
}

M.UpdateAlarmModelOutput = {
    type = "structure",
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
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        detectorModelDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        detectorModelConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateInputInput = {
    type = "structure",
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
        inputDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateInputOutput = {
    type = "structure",
    members = {
        inputConfiguration = {
            type = "structure",
        },
    },
}

return M
