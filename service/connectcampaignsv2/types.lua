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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.AgentAction = {
    DISCARD = "DISCARD",
}

M.AgentlessConfig = {
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.EmailOutboundConfig = {
    type = "structure",
    members = {
        connectSourceEmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceEmailAddressDisplayName = {
            type = "string",
        },
        wisdomTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EmailOutboundMode = {
    type = "union",
    members = {
        agentless = {
            type = "structure",
        },
    },
}

M.EmailChannelSubtypeConfig = {
    type = "structure",
    members = {
        capacity = {
            type = "number",
        },
        outboundMode = {
            type = "union",
            traits = {
                required = true,
            },
        },
        defaultOutboundConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SmsOutboundConfig = {
    type = "structure",
    members = {
        connectSourcePhoneNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        wisdomTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SmsOutboundMode = {
    type = "union",
    members = {
        agentless = {
            type = "structure",
        },
    },
}

M.SmsChannelSubtypeConfig = {
    type = "structure",
    members = {
        capacity = {
            type = "number",
        },
        outboundMode = {
            type = "union",
            traits = {
                required = true,
            },
        },
        defaultOutboundConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AnswerMachineDetectionConfig = {
    type = "structure",
    members = {
        enableAnswerMachineDetection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        awaitAnswerMachinePrompt = {
            type = "boolean",
        },
    },
}

M.TelephonyOutboundConfig = {
    type = "structure",
    members = {
        connectContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectSourcePhoneNumber = {
            type = "string",
        },
        answerMachineDetectionConfig = {
            type = "structure",
        },
        ringTimeout = {
            type = "number",
        },
    },
}

M.PredictiveConfig = {
    type = "structure",
    members = {
        bandwidthAllocation = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeoutConfig = {
    type = "structure",
    members = {
        durationInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewConfig = {
    type = "structure",
    members = {
        bandwidthAllocation = {
            type = "number",
            traits = {
                required = true,
            },
        },
        timeoutConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        agentActions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ProgressiveConfig = {
    type = "structure",
    members = {
        bandwidthAllocation = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TelephonyOutboundMode = {
    type = "union",
    members = {
        progressive = {
            type = "structure",
        },
        predictive = {
            type = "structure",
        },
        agentless = {
            type = "structure",
        },
        preview = {
            type = "structure",
        },
    },
}

M.TelephonyChannelSubtypeConfig = {
    type = "structure",
    members = {
        capacity = {
            type = "number",
        },
        connectQueueId = {
            type = "string",
        },
        outboundMode = {
            type = "union",
            traits = {
                required = true,
            },
        },
        defaultOutboundConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WhatsAppOutboundConfig = {
    type = "structure",
    members = {
        connectSourcePhoneNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        wisdomTemplateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WhatsAppOutboundMode = {
    type = "union",
    members = {
        agentless = {
            type = "structure",
        },
    },
}

M.WhatsAppChannelSubtypeConfig = {
    type = "structure",
    members = {
        capacity = {
            type = "number",
        },
        outboundMode = {
            type = "union",
            traits = {
                required = true,
            },
        },
        defaultOutboundConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelSubtypeConfig = {
    type = "structure",
    members = {
        telephony = {
            type = "structure",
        },
        sms = {
            type = "structure",
        },
        email = {
            type = "structure",
        },
        whatsApp = {
            type = "structure",
        },
    },
}

M.CommunicationLimitTimeUnit = {
    DAY = "DAY",
}

M.CommunicationLimit = {
    type = "structure",
    members = {
        maxCountPerRecipient = {
            type = "number",
            traits = {
                required = true,
            },
        },
        frequency = {
            type = "number",
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

M.CommunicationLimits = {
    type = "union",
    members = {
        communicationLimitsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InstanceLimitsHandling = {
    OPT_IN = "OPT_IN",
    OPT_OUT = "OPT_OUT",
}

M.CommunicationLimitsConfig = {
    type = "structure",
    members = {
        allChannelSubtypes = {
            type = "union",
        },
        instanceLimitsHandling = {
            type = "string",
        },
    },
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.TimeRange = {
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

M.OpenHours = {
    type = "union",
    members = {
        dailyHours = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.RestrictedPeriod = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        startDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestrictedPeriods = {
    type = "union",
    members = {
        restrictedPeriodList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TimeWindow = {
    type = "structure",
    members = {
        openHours = {
            type = "union",
            traits = {
                required = true,
            },
        },
        restrictedPeriods = {
            type = "union",
        },
    },
}

M.LocalTimeZoneDetectionType = {
    ZIP_CODE = "ZIP_CODE",
    AREA_CODE = "AREA_CODE",
}

M.LocalTimeZoneConfig = {
    type = "structure",
    members = {
        defaultTimeZone = {
            type = "string",
        },
        localTimeZoneDetection = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CommunicationTimeConfig = {
    type = "structure",
    members = {
        localTimeZoneConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        telephony = {
            type = "structure",
        },
        sms = {
            type = "structure",
        },
        email = {
            type = "structure",
        },
        whatsApp = {
            type = "structure",
        },
    },
}

M.EntryLimitsConfig = {
    type = "structure",
    members = {
        maxEntryCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        minEntryInterval = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Schedule = {
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
        refreshFrequency = {
            type = "string",
        },
    },
}

M.EventTrigger = {
    type = "structure",
    members = {
        customerProfilesDomainArn = {
            type = "string",
        },
    },
}

M.Source = {
    type = "union",
    members = {
        customerProfilesSegmentArn = {
            type = "string",
        },
        eventTrigger = {
            type = "structure",
        },
    },
}

M.ExternalCampaignType = {
    MANAGED = "MANAGED",
    JOURNEY = "JOURNEY",
}

M.CreateCampaignInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelSubtypeConfig = {
            type = "structure",
        },
        type = {
            type = "string",
        },
        source = {
            type = "union",
        },
        connectCampaignFlowArn = {
            type = "string",
        },
        schedule = {
            type = "structure",
        },
        entryLimitsConfig = {
            type = "structure",
        },
        communicationTimeConfig = {
            type = "structure",
        },
        communicationLimitsOverride = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.DeleteCampaignInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCampaignOutput = {
    type = "structure",
}

M.ChannelSubtype = {
    TELEPHONY = "TELEPHONY",
    SMS = "SMS",
    EMAIL = "EMAIL",
    WHATSAPP = "WHATSAPP",
}

M.DeleteCampaignChannelSubtypeConfigInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelSubtype = {
            type = "string",
            traits = {
                http_query = "channelSubtype",
                required = true,
            },
        },
    },
}

M.DeleteCampaignChannelSubtypeConfigOutput = {
    type = "structure",
}

M.CommunicationLimitsConfigType = {
    ALL_CHANNEL_SUBTYPES = "ALL_CHANNEL_SUBTYPES",
}

M.DeleteCampaignCommunicationLimitsInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        config = {
            type = "string",
            traits = {
                http_query = "config",
                required = true,
            },
        },
    },
}

M.DeleteCampaignCommunicationLimitsOutput = {
    type = "structure",
}

M.CampaignState = {
    INITIALIZED = "Initialized",
    RUNNING = "Running",
    PAUSED = "Paused",
    STOPPED = "Stopped",
    FAILED = "Failed",
    COMPLETED = "Completed",
}

M.InvalidCampaignStateException = {
    type = "structure",
    error = "client",
    members = {
        state = {
            type = "string",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.CommunicationTimeConfigType = {
    TELEPHONY = "TELEPHONY",
    SMS = "SMS",
    EMAIL = "EMAIL",
    WHATSAPP = "WHATSAPP",
}

M.DeleteCampaignCommunicationTimeInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        config = {
            type = "string",
            traits = {
                http_query = "config",
                required = true,
            },
        },
    },
}

M.DeleteCampaignCommunicationTimeOutput = {
    type = "structure",
}

M.DeleteCampaignEntryLimitsInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCampaignEntryLimitsOutput = {
    type = "structure",
}

M.CampaignDeletionPolicy = {
    RETAIN_ALL = "RETAIN_ALL",
    DELETE_ALL = "DELETE_ALL",
}

M.DeleteConnectInstanceConfigInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        campaignDeletionPolicy = {
            type = "string",
            traits = {
                http_query = "campaignDeletionPolicy",
            },
        },
    },
}

M.DeleteConnectInstanceConfigOutput = {
    type = "structure",
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.CustomerProfilesIntegrationIdentifier = {
    type = "structure",
    members = {
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaIntegrationIdentifier = {
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

M.QConnectIntegrationIdentifier = {
    type = "structure",
    members = {
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntegrationIdentifier = {
    type = "union",
    members = {
        customerProfiles = {
            type = "structure",
        },
        qConnect = {
            type = "structure",
        },
        lambda = {
            type = "structure",
        },
    },
}

M.DeleteConnectInstanceIntegrationInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        integrationIdentifier = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectInstanceIntegrationOutput = {
    type = "structure",
}

M.DeleteInstanceOnboardingJobInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInstanceOnboardingJobOutput = {
    type = "structure",
}

M.DescribeCampaignInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Campaign = {
    type = "structure",
    members = {
        id = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelSubtypeConfig = {
            type = "structure",
        },
        type = {
            type = "string",
        },
        source = {
            type = "union",
        },
        connectCampaignFlowArn = {
            type = "string",
        },
        schedule = {
            type = "structure",
        },
        entryLimitsConfig = {
            type = "structure",
        },
        communicationTimeConfig = {
            type = "structure",
        },
        communicationLimitsOverride = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeCampaignOutput = {
    type = "structure",
    members = {
        campaign = {
            type = "structure",
        },
    },
}

M.GetCampaignStateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCampaignStateOutput = {
    type = "structure",
    members = {
        state = {
            type = "string",
        },
    },
}

M.GetCampaignStateBatchInput = {
    type = "structure",
    members = {
        campaignIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCampaignStateBatchFailureCode = {
    RESOURCE_NOT_FOUND = "ResourceNotFound",
    UNKNOWN_ERROR = "UnknownError",
}

M.FailedCampaignStateResponse = {
    type = "structure",
    members = {
        campaignId = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.SuccessfulCampaignStateResponse = {
    type = "structure",
    members = {
        campaignId = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.GetCampaignStateBatchOutput = {
    type = "structure",
    members = {
        successfulRequests = {
            type = "list",
            member_type = "structure",
        },
        failedRequests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetConnectInstanceConfigInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EncryptionType = {
    KMS = "KMS",
}

M.EncryptionConfig = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        encryptionType = {
            type = "string",
        },
        keyArn = {
            type = "string",
        },
    },
}

M.InstanceConfig = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceLinkedRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectInstanceConfigOutput = {
    type = "structure",
    members = {
        connectInstanceConfig = {
            type = "structure",
        },
    },
}

M.GetInstanceCommunicationLimitsInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InstanceCommunicationLimitsConfig = {
    type = "structure",
    members = {
        allChannelSubtypes = {
            type = "union",
        },
    },
}

M.GetInstanceCommunicationLimitsOutput = {
    type = "structure",
    members = {
        communicationLimitsConfig = {
            type = "structure",
        },
    },
}

M.GetInstanceOnboardingJobStatusInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InstanceOnboardingJobFailureCode = {
    EVENT_BRIDGE_ACCESS_DENIED = "EVENT_BRIDGE_ACCESS_DENIED",
    EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED = "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED",
    IAM_ACCESS_DENIED = "IAM_ACCESS_DENIED",
    KMS_ACCESS_DENIED = "KMS_ACCESS_DENIED",
    KMS_KEY_NOT_FOUND = "KMS_KEY_NOT_FOUND",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.InstanceOnboardingJobStatusCode = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.InstanceOnboardingJobStatus = {
    type = "structure",
    members = {
        connectInstanceId = {
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
        failureCode = {
            type = "string",
        },
    },
}

M.GetInstanceOnboardingJobStatusOutput = {
    type = "structure",
    members = {
        connectInstanceOnboardingJobStatus = {
            type = "structure",
        },
    },
}

M.InstanceIdFilterOperator = {
    EQ = "Eq",
}

M.InstanceIdFilter = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CampaignFilters = {
    type = "structure",
    members = {
        instanceIdFilter = {
            type = "structure",
        },
    },
}

M.ListCampaignsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "structure",
        },
    },
}

M.CampaignSummary = {
    type = "structure",
    members = {
        id = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelSubtypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        schedule = {
            type = "structure",
        },
        entryLimitsConfig = {
            type = "structure",
        },
        connectCampaignFlowArn = {
            type = "string",
        },
    },
}

M.ListCampaignsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        campaignSummaryList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListConnectInstanceIntegrationsInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
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

M.EventType = {
    CAMPAIGN_EMAIL = "Campaign-Email",
    CAMPAIGN_SMS = "Campaign-SMS",
    CAMPAIGN_TELEPHONY = "Campaign-Telephony",
    CAMPAIGN_ORCHESTRATION = "Campaign-Orchestration",
    CAMPAIGN_WHATS_APP = "Campaign-WhatsApp",
}

M.CustomerProfilesIntegrationSummary = {
    type = "structure",
    members = {
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectTypeNames = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaIntegrationSummary = {
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

M.QConnectIntegrationSummary = {
    type = "structure",
    members = {
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntegrationSummary = {
    type = "union",
    members = {
        customerProfiles = {
            type = "structure",
        },
        qConnect = {
            type = "structure",
        },
        lambda = {
            type = "structure",
        },
    },
}

M.ListConnectInstanceIntegrationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        integrationSummaryList = {
            type = "list",
            member_type = "union",
        },
    },
}

M.ListTagsForResourceInput = {
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

M.PauseCampaignInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PauseCampaignOutput = {
    type = "structure",
}

M.CustomerProfilesIntegrationConfig = {
    type = "structure",
    members = {
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectTypeNames = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaIntegrationConfig = {
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

M.QConnectIntegrationConfig = {
    type = "structure",
    members = {
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntegrationConfig = {
    type = "union",
    members = {
        customerProfiles = {
            type = "structure",
        },
        qConnect = {
            type = "structure",
        },
        lambda = {
            type = "structure",
        },
    },
}

M.PutConnectInstanceIntegrationInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        integrationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.PutConnectInstanceIntegrationOutput = {
    type = "structure",
}

M.PutInstanceCommunicationLimitsInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        communicationLimitsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutInstanceCommunicationLimitsOutput = {
    type = "structure",
}

M.EmailChannelSubtypeParameters = {
    type = "structure",
    members = {
        destinationEmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectSourceEmailAddress = {
            type = "string",
        },
        templateArn = {
            type = "string",
        },
        templateParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SmsChannelSubtypeParameters = {
    type = "structure",
    members = {
        destinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectSourcePhoneNumberArn = {
            type = "string",
        },
        templateArn = {
            type = "string",
        },
        templateParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TelephonyChannelSubtypeParameters = {
    type = "structure",
    members = {
        destinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        connectSourcePhoneNumber = {
            type = "string",
        },
        answerMachineDetectionConfig = {
            type = "structure",
        },
        ringTimeout = {
            type = "number",
        },
    },
}

M.WhatsAppChannelSubtypeParameters = {
    type = "structure",
    members = {
        destinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectSourcePhoneNumberArn = {
            type = "string",
        },
        templateArn = {
            type = "string",
        },
        templateParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelSubtypeParameters = {
    type = "union",
    members = {
        telephony = {
            type = "structure",
        },
        sms = {
            type = "structure",
        },
        email = {
            type = "structure",
        },
        whatsApp = {
            type = "structure",
        },
    },
}

M.OutboundRequest = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expirationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        channelSubtypeParameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.PutOutboundRequestBatchInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        outboundRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FailureCode = {
    INVALID_INPUT = "InvalidInput",
    REQUEST_THROTTLED = "RequestThrottled",
    UNKNOWN_ERROR = "UnknownError",
    BUFFER_LIMIT_EXCEEDED = "BufferLimitExceeded",
}

M.FailedRequest = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        id = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.SuccessfulRequest = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.PutOutboundRequestBatchOutput = {
    type = "structure",
    members = {
        successfulRequests = {
            type = "list",
            member_type = "structure",
        },
        failedRequests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProfileOutboundRequest = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expirationTime = {
            type = "timestamp",
        },
    },
}

M.PutProfileOutboundRequestBatchInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        profileOutboundRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProfileOutboundRequestFailureCode = {
    UNKNOWN_ERROR = "UnknownError",
    RESOURCE_NOT_FOUND = "ResourceNotFound",
    CONFLICT = "Conflict",
    REQUEST_THROTTLED = "RequestThrottled",
    INVALID_INPUT = "InvalidInput",
}

M.FailedProfileOutboundRequest = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        id = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.SuccessfulProfileOutboundRequest = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.PutProfileOutboundRequestBatchOutput = {
    type = "structure",
    members = {
        successfulRequests = {
            type = "list",
            member_type = "structure",
        },
        failedRequests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResumeCampaignInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResumeCampaignOutput = {
    type = "structure",
}

M.StartCampaignInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartCampaignOutput = {
    type = "structure",
}

M.StartInstanceOnboardingJobInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartInstanceOnboardingJobOutput = {
    type = "structure",
    members = {
        connectInstanceOnboardingJobStatus = {
            type = "structure",
        },
    },
}

M.StopCampaignInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopCampaignOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
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

M.UntagResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
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

M.UpdateCampaignChannelSubtypeConfigInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelSubtypeConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignChannelSubtypeConfigOutput = {
    type = "structure",
}

M.UpdateCampaignCommunicationLimitsInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        communicationLimitsOverride = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignCommunicationLimitsOutput = {
    type = "structure",
}

M.UpdateCampaignCommunicationTimeInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        communicationTimeConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignCommunicationTimeOutput = {
    type = "structure",
}

M.UpdateCampaignEntryLimitsInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entryLimitsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignEntryLimitsOutput = {
    type = "structure",
}

M.UpdateCampaignFlowAssociationInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        connectCampaignFlowArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignFlowAssociationOutput = {
    type = "structure",
}

M.UpdateCampaignNameInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignNameOutput = {
    type = "structure",
}

M.UpdateCampaignScheduleInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        schedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignScheduleOutput = {
    type = "structure",
}

M.UpdateCampaignSourceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        source = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignSourceOutput = {
    type = "structure",
}

return M
