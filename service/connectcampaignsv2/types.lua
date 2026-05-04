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
        agentless = M.AgentlessConfig,
    },
}

M.EmailChannelSubtypeConfig = {
    type = "structure",
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
        agentless = M.AgentlessConfig,
    },
}

M.SmsChannelSubtypeConfig = {
    type = "structure",
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
    members = {
        progressive = M.ProgressiveConfig,
        predictive = M.PredictiveConfig,
        agentless = M.AgentlessConfig,
        preview = M.PreviewConfig,
    },
}

M.TelephonyChannelSubtypeConfig = {
    type = "structure",
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
        agentless = M.AgentlessConfig,
    },
}

M.WhatsAppChannelSubtypeConfig = {
    type = "structure",
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
            key = { type = "string" },
            value = { type = "list" },
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
            member = M.RestrictedPeriod,
        },
    },
}

M.TimeWindow = {
    type = "structure",
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
        eventTrigger = M.EventTrigger,
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
        customerProfiles = M.CustomerProfilesIntegrationIdentifier,
        qConnect = M.QConnectIntegrationIdentifier,
        lambda = M.LambdaIntegrationIdentifier,
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
        integrationIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegrationIdentifier }),
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
    members = {
        campaign = M.Campaign,
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
    members = {
        connectInstanceConfig = M.InstanceConfig,
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
        allChannelSubtypes = M.CommunicationLimits,
    },
}

M.GetInstanceCommunicationLimitsOutput = {
    type = "structure",
    members = {
        communicationLimitsConfig = M.InstanceCommunicationLimitsConfig,
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
        connectInstanceOnboardingJobStatus = M.InstanceOnboardingJobStatus,
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
        instanceIdFilter = M.InstanceIdFilter,
    },
}

M.ListCampaignsInput = {
    type = "structure",
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
        customerProfiles = M.CustomerProfilesIntegrationSummary,
        qConnect = M.QConnectIntegrationSummary,
        lambda = M.LambdaIntegrationSummary,
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
            member = M.IntegrationSummary,
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
            key = { type = "string" },
            value = { type = "string" },
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
        customerProfiles = M.CustomerProfilesIntegrationConfig,
        qConnect = M.QConnectIntegrationConfig,
        lambda = M.LambdaIntegrationConfig,
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
        integrationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntegrationConfig }),
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
        communicationLimitsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceCommunicationLimitsConfig }),
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
    members = {
        telephony = M.TelephonyChannelSubtypeParameters,
        sms = M.SmsChannelSubtypeParameters,
        email = M.EmailChannelSubtypeParameters,
        whatsApp = M.WhatsAppChannelSubtypeParameters,
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
        channelSubtypeParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChannelSubtypeParameters }),
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
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.StartInstanceOnboardingJobOutput = {
    type = "structure",
    members = {
        connectInstanceOnboardingJobStatus = M.InstanceOnboardingJobStatus,
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
        channelSubtypeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChannelSubtypeConfig }),
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
        communicationLimitsOverride = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CommunicationLimitsConfig }),
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
        communicationTimeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CommunicationTimeConfig }),
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
        entryLimitsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntryLimitsConfig }),
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
        schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schedule }),
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
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
    },
}

M.UpdateCampaignSourceOutput = {
    type = "structure",
}

return M
