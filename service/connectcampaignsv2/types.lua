local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AgentlessConfig",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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
    id = "EmailOutboundConfig",
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
    id = "EmailOutboundMode",
    members = {
        agentless = M.AgentlessConfig,
    },
}

M.EmailChannelSubtypeConfig = {
    type = "structure",
    id = "EmailChannelSubtypeConfig",
    members = {
        capacity = {
            type = "double",
        },
        outboundMode = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailOutboundMode }),
        defaultOutboundConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailOutboundConfig }),
    },
}

M.SmsOutboundConfig = {
    type = "structure",
    id = "SmsOutboundConfig",
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
    id = "SmsOutboundMode",
    members = {
        agentless = M.AgentlessConfig,
    },
}

M.SmsChannelSubtypeConfig = {
    type = "structure",
    id = "SmsChannelSubtypeConfig",
    members = {
        capacity = {
            type = "double",
        },
        outboundMode = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SmsOutboundMode }),
        defaultOutboundConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SmsOutboundConfig }),
    },
}

M.AnswerMachineDetectionConfig = {
    type = "structure",
    id = "AnswerMachineDetectionConfig",
    members = {
        enableAnswerMachineDetection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        awaitAnswerMachinePrompt = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.TelephonyOutboundConfig = {
    type = "structure",
    id = "TelephonyOutboundConfig",
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
        answerMachineDetectionConfig = M.AnswerMachineDetectionConfig,
        ringTimeout = {
            type = "integer",
        },
    },
}

M.PredictiveConfig = {
    type = "structure",
    id = "PredictiveConfig",
    members = {
        bandwidthAllocation = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeoutConfig = {
    type = "structure",
    id = "TimeoutConfig",
    members = {
        durationInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewConfig = {
    type = "structure",
    id = "PreviewConfig",
    members = {
        bandwidthAllocation = {
            type = "double",
            traits = {
                required = true,
            },
        },
        timeoutConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeoutConfig }),
        agentActions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProgressiveConfig = {
    type = "structure",
    id = "ProgressiveConfig",
    members = {
        bandwidthAllocation = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.TelephonyOutboundMode = {
    type = "union",
    id = "TelephonyOutboundMode",
    members = {
        progressive = M.ProgressiveConfig,
        predictive = M.PredictiveConfig,
        agentless = M.AgentlessConfig,
        preview = M.PreviewConfig,
    },
}

M.TelephonyChannelSubtypeConfig = {
    type = "structure",
    id = "TelephonyChannelSubtypeConfig",
    members = {
        capacity = {
            type = "double",
        },
        connectQueueId = {
            type = "string",
        },
        outboundMode = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelephonyOutboundMode }),
        defaultOutboundConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelephonyOutboundConfig }),
    },
}

M.WhatsAppOutboundConfig = {
    type = "structure",
    id = "WhatsAppOutboundConfig",
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
    id = "WhatsAppOutboundMode",
    members = {
        agentless = M.AgentlessConfig,
    },
}

M.WhatsAppChannelSubtypeConfig = {
    type = "structure",
    id = "WhatsAppChannelSubtypeConfig",
    members = {
        capacity = {
            type = "double",
        },
        outboundMode = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WhatsAppOutboundMode }),
        defaultOutboundConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WhatsAppOutboundConfig }),
    },
}

M.ChannelSubtypeConfig = {
    type = "structure",
    id = "ChannelSubtypeConfig",
    members = {
        telephony = M.TelephonyChannelSubtypeConfig,
        sms = M.SmsChannelSubtypeConfig,
        email = M.EmailChannelSubtypeConfig,
        whatsApp = M.WhatsAppChannelSubtypeConfig,
    },
}

M.CommunicationLimitTimeUnit = {
    DAY = "DAY",
}

M.CommunicationLimit = {
    type = "structure",
    id = "CommunicationLimit",
    members = {
        maxCountPerRecipient = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        frequency = {
            type = "integer",
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
    id = "CommunicationLimits",
    members = {
        communicationLimitsList = {
            type = "list",
            member = M.CommunicationLimit,
        },
    },
}

M.InstanceLimitsHandling = {
    OPT_IN = "OPT_IN",
    OPT_OUT = "OPT_OUT",
}

M.CommunicationLimitsConfig = {
    type = "structure",
    id = "CommunicationLimitsConfig",
    members = {
        allChannelSubtypes = M.CommunicationLimits,
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
    id = "TimeRange",
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
    id = "OpenHours",
    members = {
        dailyHours = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.RestrictedPeriod = {
    type = "structure",
    id = "RestrictedPeriod",
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
    id = "RestrictedPeriods",
    members = {
        restrictedPeriodList = {
            type = "list",
            member = M.RestrictedPeriod,
        },
    },
}

M.TimeWindow = {
    type = "structure",
    id = "TimeWindow",
    members = {
        openHours = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OpenHours }),
        restrictedPeriods = M.RestrictedPeriods,
    },
}

M.LocalTimeZoneDetectionType = {
    ZIP_CODE = "ZIP_CODE",
    AREA_CODE = "AREA_CODE",
}

M.LocalTimeZoneConfig = {
    type = "structure",
    id = "LocalTimeZoneConfig",
    members = {
        defaultTimeZone = {
            type = "string",
        },
        localTimeZoneDetection = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CommunicationTimeConfig = {
    type = "structure",
    id = "CommunicationTimeConfig",
    members = {
        localTimeZoneConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LocalTimeZoneConfig }),
        telephony = M.TimeWindow,
        sms = M.TimeWindow,
        email = M.TimeWindow,
        whatsApp = M.TimeWindow,
    },
}

M.EntryLimitsConfig = {
    type = "structure",
    id = "EntryLimitsConfig",
    members = {
        maxEntryCount = {
            type = "integer",
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
    id = "Schedule",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        refreshFrequency = {
            type = "string",
        },
    },
}

M.EventTrigger = {
    type = "structure",
    id = "EventTrigger",
    members = {
        customerProfilesDomainArn = {
            type = "string",
        },
    },
}

M.Source = {
    type = "union",
    id = "Source",
    members = {
        customerProfilesSegmentArn = {
            type = "string",
        },
        eventTrigger = M.EventTrigger,
    },
}

M.ExternalCampaignType = {
    MANAGED = "MANAGED",
    JOURNEY = "JOURNEY",
}

M.CreateCampaignInput = {
    type = "structure",
    id = "CreateCampaignInput",
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
        channelSubtypeConfig = M.ChannelSubtypeConfig,
        type = {
            type = "string",
        },
        source = M.Source,
        connectCampaignFlowArn = {
            type = "string",
        },
        schedule = M.Schedule,
        entryLimitsConfig = M.EntryLimitsConfig,
        communicationTimeConfig = M.CommunicationTimeConfig,
        communicationLimitsOverride = M.CommunicationLimitsConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    id = "CreateCampaignOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
    id = "ValidationException",
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
    id = "DeleteCampaignInput",
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
    id = "DeleteCampaignOutput",
}

M.ChannelSubtype = {
    TELEPHONY = "TELEPHONY",
    SMS = "SMS",
    EMAIL = "EMAIL",
    WHATSAPP = "WHATSAPP",
}

M.DeleteCampaignChannelSubtypeConfigInput = {
    type = "structure",
    id = "DeleteCampaignChannelSubtypeConfigInput",
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
    id = "DeleteCampaignChannelSubtypeConfigOutput",
}

M.CommunicationLimitsConfigType = {
    ALL_CHANNEL_SUBTYPES = "ALL_CHANNEL_SUBTYPES",
}

M.DeleteCampaignCommunicationLimitsInput = {
    type = "structure",
    id = "DeleteCampaignCommunicationLimitsInput",
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
    id = "DeleteCampaignCommunicationLimitsOutput",
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
    id = "InvalidCampaignStateException",
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
    id = "DeleteCampaignCommunicationTimeInput",
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
    id = "DeleteCampaignCommunicationTimeOutput",
}

M.DeleteCampaignEntryLimitsInput = {
    type = "structure",
    id = "DeleteCampaignEntryLimitsInput",
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
    id = "DeleteCampaignEntryLimitsOutput",
}

M.CampaignDeletionPolicy = {
    RETAIN_ALL = "RETAIN_ALL",
    DELETE_ALL = "DELETE_ALL",
}

M.DeleteConnectInstanceConfigInput = {
    type = "structure",
    id = "DeleteConnectInstanceConfigInput",
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
    id = "DeleteConnectInstanceConfigOutput",
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
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
    id = "CustomerProfilesIntegrationIdentifier",
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
    id = "LambdaIntegrationIdentifier",
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
    id = "QConnectIntegrationIdentifier",
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
    id = "IntegrationIdentifier",
    members = {
        customerProfiles = M.CustomerProfilesIntegrationIdentifier,
        qConnect = M.QConnectIntegrationIdentifier,
        lambda = M.LambdaIntegrationIdentifier,
    },
}

M.DeleteConnectInstanceIntegrationInput = {
    type = "structure",
    id = "DeleteConnectInstanceIntegrationInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        integrationIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegrationIdentifier }),
    },
}

M.DeleteConnectInstanceIntegrationOutput = {
    type = "structure",
    id = "DeleteConnectInstanceIntegrationOutput",
}

M.DeleteInstanceOnboardingJobInput = {
    type = "structure",
    id = "DeleteInstanceOnboardingJobInput",
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
    id = "DeleteInstanceOnboardingJobOutput",
}

M.DescribeCampaignInput = {
    type = "structure",
    id = "DescribeCampaignInput",
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
    id = "Campaign",
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
        channelSubtypeConfig = M.ChannelSubtypeConfig,
        type = {
            type = "string",
        },
        source = M.Source,
        connectCampaignFlowArn = {
            type = "string",
        },
        schedule = M.Schedule,
        entryLimitsConfig = M.EntryLimitsConfig,
        communicationTimeConfig = M.CommunicationTimeConfig,
        communicationLimitsOverride = M.CommunicationLimitsConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeCampaignOutput = {
    type = "structure",
    id = "DescribeCampaignOutput",
    members = {
        campaign = M.Campaign,
    },
}

M.GetCampaignStateInput = {
    type = "structure",
    id = "GetCampaignStateInput",
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
    id = "GetCampaignStateOutput",
    members = {
        state = {
            type = "string",
        },
    },
}

M.GetCampaignStateBatchInput = {
    type = "structure",
    id = "GetCampaignStateBatchInput",
    members = {
        campaignIds = {
            type = "list",
            member = { type = "string" },
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
    id = "FailedCampaignStateResponse",
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
    id = "SuccessfulCampaignStateResponse",
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
    id = "GetCampaignStateBatchOutput",
    members = {
        successfulRequests = {
            type = "list",
            member = M.SuccessfulCampaignStateResponse,
        },
        failedRequests = {
            type = "list",
            member = M.FailedCampaignStateResponse,
        },
    },
}

M.GetConnectInstanceConfigInput = {
    type = "structure",
    id = "GetConnectInstanceConfigInput",
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
    id = "EncryptionConfig",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
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
    id = "InstanceConfig",
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
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.GetConnectInstanceConfigOutput = {
    type = "structure",
    id = "GetConnectInstanceConfigOutput",
    members = {
        connectInstanceConfig = M.InstanceConfig,
    },
}

M.GetInstanceCommunicationLimitsInput = {
    type = "structure",
    id = "GetInstanceCommunicationLimitsInput",
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
    id = "InstanceCommunicationLimitsConfig",
    members = {
        allChannelSubtypes = M.CommunicationLimits,
    },
}

M.GetInstanceCommunicationLimitsOutput = {
    type = "structure",
    id = "GetInstanceCommunicationLimitsOutput",
    members = {
        communicationLimitsConfig = M.InstanceCommunicationLimitsConfig,
    },
}

M.GetInstanceOnboardingJobStatusInput = {
    type = "structure",
    id = "GetInstanceOnboardingJobStatusInput",
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
    id = "InstanceOnboardingJobStatus",
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
    id = "GetInstanceOnboardingJobStatusOutput",
    members = {
        connectInstanceOnboardingJobStatus = M.InstanceOnboardingJobStatus,
    },
}

M.InstanceIdFilterOperator = {
    EQ = "Eq",
}

M.InstanceIdFilter = {
    type = "structure",
    id = "InstanceIdFilter",
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
    id = "CampaignFilters",
    members = {
        instanceIdFilter = M.InstanceIdFilter,
    },
}

M.ListCampaignsInput = {
    type = "structure",
    id = "ListCampaignsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        filters = M.CampaignFilters,
    },
}

M.CampaignSummary = {
    type = "structure",
    id = "CampaignSummary",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        schedule = M.Schedule,
        entryLimitsConfig = M.EntryLimitsConfig,
        connectCampaignFlowArn = {
            type = "string",
        },
    },
}

M.ListCampaignsOutput = {
    type = "structure",
    id = "ListCampaignsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        campaignSummaryList = {
            type = "list",
            member = M.CampaignSummary,
        },
    },
}

M.ListConnectInstanceIntegrationsInput = {
    type = "structure",
    id = "ListConnectInstanceIntegrationsInput",
    members = {
        connectInstanceId = {
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

M.EventType = {
    CAMPAIGN_EMAIL = "Campaign-Email",
    CAMPAIGN_SMS = "Campaign-SMS",
    CAMPAIGN_TELEPHONY = "Campaign-Telephony",
    CAMPAIGN_ORCHESTRATION = "Campaign-Orchestration",
    CAMPAIGN_WHATS_APP = "Campaign-WhatsApp",
}

M.CustomerProfilesIntegrationSummary = {
    type = "structure",
    id = "CustomerProfilesIntegrationSummary",
    members = {
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectTypeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaIntegrationSummary = {
    type = "structure",
    id = "LambdaIntegrationSummary",
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
    id = "QConnectIntegrationSummary",
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
    id = "IntegrationSummary",
    members = {
        customerProfiles = M.CustomerProfilesIntegrationSummary,
        qConnect = M.QConnectIntegrationSummary,
        lambda = M.LambdaIntegrationSummary,
    },
}

M.ListConnectInstanceIntegrationsOutput = {
    type = "structure",
    id = "ListConnectInstanceIntegrationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        integrationSummaryList = {
            type = "list",
            member = M.IntegrationSummary,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PauseCampaignInput = {
    type = "structure",
    id = "PauseCampaignInput",
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
    id = "PauseCampaignOutput",
}

M.CustomerProfilesIntegrationConfig = {
    type = "structure",
    id = "CustomerProfilesIntegrationConfig",
    members = {
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectTypeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaIntegrationConfig = {
    type = "structure",
    id = "LambdaIntegrationConfig",
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
    id = "QConnectIntegrationConfig",
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
    id = "IntegrationConfig",
    members = {
        customerProfiles = M.CustomerProfilesIntegrationConfig,
        qConnect = M.QConnectIntegrationConfig,
        lambda = M.LambdaIntegrationConfig,
    },
}

M.PutConnectInstanceIntegrationInput = {
    type = "structure",
    id = "PutConnectInstanceIntegrationInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        integrationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegrationConfig }),
    },
}

M.PutConnectInstanceIntegrationOutput = {
    type = "structure",
    id = "PutConnectInstanceIntegrationOutput",
}

M.PutInstanceCommunicationLimitsInput = {
    type = "structure",
    id = "PutInstanceCommunicationLimitsInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        communicationLimitsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceCommunicationLimitsConfig }),
    },
}

M.PutInstanceCommunicationLimitsOutput = {
    type = "structure",
    id = "PutInstanceCommunicationLimitsOutput",
}

M.EmailChannelSubtypeParameters = {
    type = "structure",
    id = "EmailChannelSubtypeParameters",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SmsChannelSubtypeParameters = {
    type = "structure",
    id = "SmsChannelSubtypeParameters",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TelephonyChannelSubtypeParameters = {
    type = "structure",
    id = "TelephonyChannelSubtypeParameters",
    members = {
        destinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        connectSourcePhoneNumber = {
            type = "string",
        },
        answerMachineDetectionConfig = M.AnswerMachineDetectionConfig,
        ringTimeout = {
            type = "integer",
        },
    },
}

M.WhatsAppChannelSubtypeParameters = {
    type = "structure",
    id = "WhatsAppChannelSubtypeParameters",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelSubtypeParameters = {
    type = "union",
    id = "ChannelSubtypeParameters",
    members = {
        telephony = M.TelephonyChannelSubtypeParameters,
        sms = M.SmsChannelSubtypeParameters,
        email = M.EmailChannelSubtypeParameters,
        whatsApp = M.WhatsAppChannelSubtypeParameters,
    },
}

M.OutboundRequest = {
    type = "structure",
    id = "OutboundRequest",
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
                timestamp_format = "date-time",
            },
        },
        channelSubtypeParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChannelSubtypeParameters }),
    },
}

M.PutOutboundRequestBatchInput = {
    type = "structure",
    id = "PutOutboundRequestBatchInput",
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
            member = M.OutboundRequest,
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
    id = "FailedRequest",
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
    id = "SuccessfulRequest",
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
    id = "PutOutboundRequestBatchOutput",
    members = {
        successfulRequests = {
            type = "list",
            member = M.SuccessfulRequest,
        },
        failedRequests = {
            type = "list",
            member = M.FailedRequest,
        },
    },
}

M.ProfileOutboundRequest = {
    type = "structure",
    id = "ProfileOutboundRequest",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.PutProfileOutboundRequestBatchInput = {
    type = "structure",
    id = "PutProfileOutboundRequestBatchInput",
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
            member = M.ProfileOutboundRequest,
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
    id = "FailedProfileOutboundRequest",
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
    id = "SuccessfulProfileOutboundRequest",
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
    id = "PutProfileOutboundRequestBatchOutput",
    members = {
        successfulRequests = {
            type = "list",
            member = M.SuccessfulProfileOutboundRequest,
        },
        failedRequests = {
            type = "list",
            member = M.FailedProfileOutboundRequest,
        },
    },
}

M.ResumeCampaignInput = {
    type = "structure",
    id = "ResumeCampaignInput",
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
    id = "ResumeCampaignOutput",
}

M.StartCampaignInput = {
    type = "structure",
    id = "StartCampaignInput",
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
    id = "StartCampaignOutput",
}

M.StartInstanceOnboardingJobInput = {
    type = "structure",
    id = "StartInstanceOnboardingJobInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.StartInstanceOnboardingJobOutput = {
    type = "structure",
    id = "StartInstanceOnboardingJobOutput",
    members = {
        connectInstanceOnboardingJobStatus = M.InstanceOnboardingJobStatus,
    },
}

M.StopCampaignInput = {
    type = "structure",
    id = "StopCampaignInput",
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
    id = "StopCampaignOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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

M.UpdateCampaignChannelSubtypeConfigInput = {
    type = "structure",
    id = "UpdateCampaignChannelSubtypeConfigInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelSubtypeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChannelSubtypeConfig }),
    },
}

M.UpdateCampaignChannelSubtypeConfigOutput = {
    type = "structure",
    id = "UpdateCampaignChannelSubtypeConfigOutput",
}

M.UpdateCampaignCommunicationLimitsInput = {
    type = "structure",
    id = "UpdateCampaignCommunicationLimitsInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        communicationLimitsOverride = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CommunicationLimitsConfig }),
    },
}

M.UpdateCampaignCommunicationLimitsOutput = {
    type = "structure",
    id = "UpdateCampaignCommunicationLimitsOutput",
}

M.UpdateCampaignCommunicationTimeInput = {
    type = "structure",
    id = "UpdateCampaignCommunicationTimeInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        communicationTimeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CommunicationTimeConfig }),
    },
}

M.UpdateCampaignCommunicationTimeOutput = {
    type = "structure",
    id = "UpdateCampaignCommunicationTimeOutput",
}

M.UpdateCampaignEntryLimitsInput = {
    type = "structure",
    id = "UpdateCampaignEntryLimitsInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entryLimitsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntryLimitsConfig }),
    },
}

M.UpdateCampaignEntryLimitsOutput = {
    type = "structure",
    id = "UpdateCampaignEntryLimitsOutput",
}

M.UpdateCampaignFlowAssociationInput = {
    type = "structure",
    id = "UpdateCampaignFlowAssociationInput",
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
    id = "UpdateCampaignFlowAssociationOutput",
}

M.UpdateCampaignNameInput = {
    type = "structure",
    id = "UpdateCampaignNameInput",
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
    id = "UpdateCampaignNameOutput",
}

M.UpdateCampaignScheduleInput = {
    type = "structure",
    id = "UpdateCampaignScheduleInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schedule }),
    },
}

M.UpdateCampaignScheduleOutput = {
    type = "structure",
    id = "UpdateCampaignScheduleOutput",
}

M.UpdateCampaignSourceInput = {
    type = "structure",
    id = "UpdateCampaignSourceInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
    },
}

M.UpdateCampaignSourceOutput = {
    type = "structure",
    id = "UpdateCampaignSourceOutput",
}

return M
