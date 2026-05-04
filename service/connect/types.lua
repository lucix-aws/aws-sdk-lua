local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccessType = {
    ALLOW = "ALLOW",
}

M.ActionType = {
    CREATE_TASK = "CREATE_TASK",
    ASSIGN_CONTACT_CATEGORY = "ASSIGN_CONTACT_CATEGORY",
    GENERATE_EVENTBRIDGE_EVENT = "GENERATE_EVENTBRIDGE_EVENT",
    SEND_NOTIFICATION = "SEND_NOTIFICATION",
    CREATE_CASE = "CREATE_CASE",
    UPDATE_CASE = "UPDATE_CASE",
    ASSIGN_SLA = "ASSIGN_SLA",
    END_ASSOCIATED_TASKS = "END_ASSOCIATED_TASKS",
    SUBMIT_AUTO_EVALUATION = "SUBMIT_AUTO_EVALUATION",
}

M.ActionSummary = {
    type = "structure",
    id = "ActionSummary",
    members = {
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivateEvaluationFormInput = {
    type = "structure",
    id = "ActivateEvaluationFormInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ActivateEvaluationFormOutput = {
    type = "structure",
    id = "ActivateEvaluationFormOutput",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    id = "ResourceConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EmailRecipient = {
    type = "structure",
    id = "EmailRecipient",
    members = {
        Address = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.AdditionalEmailRecipients = {
    type = "structure",
    id = "AdditionalEmailRecipients",
    members = {
        ToList = {
            type = "list",
            member = M.EmailRecipient,
        },
        CcList = {
            type = "list",
            member = M.EmailRecipient,
        },
    },
}

M.AfterContactWorkConfig = {
    type = "structure",
    id = "AfterContactWorkConfig",
    members = {
        AfterContactWorkTimeLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.Channel = {
    VOICE = "VOICE",
    CHAT = "CHAT",
    TASK = "TASK",
    EMAIL = "EMAIL",
}

M.AfterContactWorkConfigPerChannel = {
    type = "structure",
    id = "AfterContactWorkConfigPerChannel",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AfterContactWorkConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AfterContactWorkConfig }),
        AgentFirstCallbackAfterContactWorkConfig = M.AfterContactWorkConfig,
    },
}

M.AgentAvailabilityTimer = {
    TIME_SINCE_LAST_ACTIVITY = "TIME_SINCE_LAST_ACTIVITY",
    TIME_SINCE_LAST_INBOUND = "TIME_SINCE_LAST_INBOUND",
}

M.Distribution = {
    type = "structure",
    id = "Distribution",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Percentage = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AgentConfig = {
    type = "structure",
    id = "AgentConfig",
    members = {
        Distributions = {
            type = "list",
            member = M.Distribution,
            traits = {
                required = true,
            },
        },
    },
}

M.ContactState = {
    INCOMING = "INCOMING",
    PENDING = "PENDING",
    CONNECTING = "CONNECTING",
    CONNECTED = "CONNECTED",
    CONNECTED_ONHOLD = "CONNECTED_ONHOLD",
    MISSED = "MISSED",
    ERROR = "ERROR",
    ENDED = "ENDED",
    REJECTED = "REJECTED",
}

M.ContactInitiationMethod = {
    INBOUND = "INBOUND",
    OUTBOUND = "OUTBOUND",
    TRANSFER = "TRANSFER",
    QUEUE_TRANSFER = "QUEUE_TRANSFER",
    CALLBACK = "CALLBACK",
    API = "API",
    DISCONNECT = "DISCONNECT",
    MONITOR = "MONITOR",
    EXTERNAL_OUTBOUND = "EXTERNAL_OUTBOUND",
    WEBRTC_API = "WEBRTC_API",
    AGENT_REPLY = "AGENT_REPLY",
    FLOW = "FLOW",
}

M.QueueReference = {
    type = "structure",
    id = "QueueReference",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.AgentContactReference = {
    type = "structure",
    id = "AgentContactReference",
    members = {
        ContactId = {
            type = "string",
        },
        Channel = {
            type = "string",
        },
        InitiationMethod = {
            type = "string",
        },
        AgentContactState = {
            type = "string",
        },
        StateStartTimestamp = {
            type = "timestamp",
        },
        ConnectedToAgentTimestamp = {
            type = "timestamp",
        },
        Queue = M.QueueReference,
    },
}

M.AllowedUserAction = {
    CALL = "CALL",
    DISCARD = "DISCARD",
}

M.PostAcceptTimeoutConfig = {
    type = "structure",
    id = "PostAcceptTimeoutConfig",
    members = {
        DurationInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Preview = {
    type = "structure",
    id = "Preview",
    members = {
        PostAcceptTimeoutConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PostAcceptTimeoutConfig }),
        AllowedUserActions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AgentFirst = {
    type = "structure",
    id = "AgentFirst",
    members = {
        Preview = M.Preview,
    },
}

M.AgentHierarchyGroup = {
    type = "structure",
    id = "AgentHierarchyGroup",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.AgentHierarchyGroups = {
    type = "structure",
    id = "AgentHierarchyGroups",
    members = {
        L1Ids = {
            type = "list",
            member = { type = "string" },
        },
        L2Ids = {
            type = "list",
            member = { type = "string" },
        },
        L3Ids = {
            type = "list",
            member = { type = "string" },
        },
        L4Ids = {
            type = "list",
            member = { type = "string" },
        },
        L5Ids = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ScreenShareCapability = {
    SEND = "SEND",
}

M.VideoCapability = {
    SEND = "SEND",
}

M.ParticipantCapabilities = {
    type = "structure",
    id = "ParticipantCapabilities",
    members = {
        Video = {
            type = "string",
        },
        ScreenShare = {
            type = "string",
        },
    },
}

M.DeviceInfo = {
    type = "structure",
    id = "DeviceInfo",
    members = {
        PlatformName = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
    },
}

M.HierarchyGroups = {
    type = "structure",
    id = "HierarchyGroups",
    members = {
        Level1 = M.AgentHierarchyGroup,
        Level2 = M.AgentHierarchyGroup,
        Level3 = M.AgentHierarchyGroup,
        Level4 = M.AgentHierarchyGroup,
        Level5 = M.AgentHierarchyGroup,
    },
}

M.ParticipantState = {
    INITIAL = "INITIAL",
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
    MISSED = "MISSED",
}

M.StateTransition = {
    type = "structure",
    id = "StateTransition",
    members = {
        State = {
            type = "string",
        },
        StateStartTimestamp = {
            type = "timestamp",
        },
        StateEndTimestamp = {
            type = "timestamp",
        },
    },
}

M.VoiceEnhancementMode = {
    VOICE_ISOLATION = "VOICE_ISOLATION",
    NOISE_SUPPRESSION = "NOISE_SUPPRESSION",
    NONE = "NONE",
}

M.AgentInfo = {
    type = "structure",
    id = "AgentInfo",
    members = {
        Id = {
            type = "string",
        },
        AcceptedByAgentTimestamp = {
            type = "timestamp",
        },
        PreviewEndTimestamp = {
            type = "timestamp",
        },
        ConnectedToAgentTimestamp = {
            type = "timestamp",
        },
        AgentPauseDurationInSeconds = {
            type = "integer",
        },
        HierarchyGroups = M.HierarchyGroups,
        DeviceInfo = M.DeviceInfo,
        Capabilities = M.ParticipantCapabilities,
        AfterContactWorkDuration = {
            type = "integer",
        },
        AfterContactWorkStartTimestamp = {
            type = "timestamp",
        },
        AfterContactWorkEndTimestamp = {
            type = "timestamp",
        },
        AgentInitiatedHoldDuration = {
            type = "integer",
        },
        StateTransitions = {
            type = "list",
            member = M.StateTransition,
        },
        VoiceEnhancementMode = {
            type = "string",
        },
    },
}

M.AudioQualityMetricsInfo = {
    type = "structure",
    id = "AudioQualityMetricsInfo",
    members = {
        QualityScore = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        PotentialQualityIssues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AgentQualityMetrics = {
    type = "structure",
    id = "AgentQualityMetrics",
    members = {
        Audio = M.AudioQualityMetricsInfo,
    },
}

M.AgentsCriteria = {
    type = "structure",
    id = "AgentsCriteria",
    members = {
        AgentIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AgentStatusState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AgentStatusType = {
    ROUTABLE = "ROUTABLE",
    CUSTOM = "CUSTOM",
    OFFLINE = "OFFLINE",
}

M.AgentStatus = {
    type = "structure",
    id = "AgentStatus",
    members = {
        AgentStatusARN = {
            type = "string",
        },
        AgentStatusId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DisplayOrder = {
            type = "integer",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.AgentStatusIdentifier = {
    type = "structure",
    id = "AgentStatusIdentifier",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.AgentStatusReference = {
    type = "structure",
    id = "AgentStatusReference",
    members = {
        StatusStartTimestamp = {
            type = "timestamp",
        },
        StatusArn = {
            type = "string",
        },
        StatusName = {
            type = "string",
        },
    },
}

M.StringComparisonType = {
    STARTS_WITH = "STARTS_WITH",
    CONTAINS = "CONTAINS",
    EXACT = "EXACT",
}

M.StringCondition = {
    type = "structure",
    id = "StringCondition",
    members = {
        FieldName = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        ComparisonType = {
            type = "string",
        },
    },
}

M.TagCondition = {
    type = "structure",
    id = "TagCondition",
    members = {
        TagKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
    },
}

M.CommonAttributeAndCondition = {
    type = "structure",
    id = "CommonAttributeAndCondition",
    members = {
        TagConditions = {
            type = "list",
            member = M.TagCondition,
        },
    },
}

M.ControlPlaneAttributeFilter = {
    type = "structure",
    id = "ControlPlaneAttributeFilter",
    members = {
        OrConditions = {
            type = "list",
            member = M.CommonAttributeAndCondition,
        },
        AndCondition = M.CommonAttributeAndCondition,
        TagCondition = M.TagCondition,
    },
}

M.AgentStatusSearchFilter = {
    type = "structure",
    id = "AgentStatusSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.AgentStatusSummary = {
    type = "structure",
    id = "AgentStatusSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.AiUseCase = {
    AgentAssistance = "AgentAssistance",
    SelfService = "SelfService",
}

M.AiAgentInfo = {
    type = "structure",
    id = "AiAgentInfo",
    members = {
        AiUseCase = {
            type = "string",
        },
        AiAgentVersionId = {
            type = "string",
        },
        AiAgentEscalated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AliasConfiguration = {
    type = "structure",
    id = "AliasConfiguration",
    members = {
        EmailAddressId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AllowedCapabilities = {
    type = "structure",
    id = "AllowedCapabilities",
    members = {
        Customer = M.ParticipantCapabilities,
        Agent = M.ParticipantCapabilities,
    },
}

M.AllowedExtension = {
    type = "structure",
    id = "AllowedExtension",
    members = {
        Extension = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowModuleType = {
    MCP = "MCP",
}

M.FlowModule = {
    type = "structure",
    id = "FlowModule",
    members = {
        Type = {
            type = "string",
        },
        FlowModuleId = {
            type = "string",
        },
    },
}

M.MonitorCapability = {
    SILENT_MONITOR = "SILENT_MONITOR",
    BARGE = "BARGE",
}

M.AssociateAnalyticsDataSetInput = {
    type = "structure",
    id = "AssociateAnalyticsDataSetInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetAccountId = {
            type = "string",
        },
    },
}

M.AssociateAnalyticsDataSetOutput = {
    type = "structure",
    id = "AssociateAnalyticsDataSetOutput",
    members = {
        DataSetId = {
            type = "string",
        },
        TargetAccountId = {
            type = "string",
        },
        ResourceShareId = {
            type = "string",
        },
        ResourceShareArn = {
            type = "string",
        },
    },
}

M.AttachedFileInvalidRequestExceptionReason = {
    INVALID_FILE_SIZE = "INVALID_FILE_SIZE",
    INVALID_FILE_TYPE = "INVALID_FILE_TYPE",
    INVALID_FILE_NAME = "INVALID_FILE_NAME",
}

M.InvalidRequestExceptionReason = {
    type = "union",
    id = "InvalidRequestExceptionReason",
    members = {
        AttachedFileInvalidRequestExceptionReason = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = M.InvalidRequestExceptionReason,
    },
}

M.AssociateApprovedOriginInput = {
    type = "structure",
    id = "AssociateApprovedOriginInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Origin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateApprovedOriginOutput = {
    type = "structure",
    id = "AssociateApprovedOriginOutput",
}

M.AttachedFileServiceQuotaExceededExceptionReason = {
    TOTAL_FILE_SIZE_EXCEEDED = "TOTAL_FILE_SIZE_EXCEEDED",
    TOTAL_FILE_COUNT_EXCEEDED = "TOTAL_FILE_COUNT_EXCEEDED",
}

M.ServiceQuotaExceededExceptionReason = {
    type = "union",
    id = "ServiceQuotaExceededExceptionReason",
    members = {
        AttachedFileServiceQuotaExceededExceptionReason = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = M.ServiceQuotaExceededExceptionReason,
    },
}

M.LexBot = {
    type = "structure",
    id = "LexBot",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LexRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LexV2Bot = {
    type = "structure",
    id = "LexV2Bot",
    members = {
        AliasArn = {
            type = "string",
        },
    },
}

M.AssociateBotInput = {
    type = "structure",
    id = "AssociateBotInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LexBot = M.LexBot,
        LexV2Bot = M.LexV2Bot,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateBotOutput = {
    type = "structure",
    id = "AssociateBotOutput",
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateContactWithUserInput = {
    type = "structure",
    id = "AssociateContactWithUserInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateContactWithUserOutput = {
    type = "structure",
    id = "AssociateContactWithUserOutput",
}

M.VocabularyLanguageCode = {
    AR_AE = "ar-AE",
    DE_CH = "de-CH",
    DE_DE = "de-DE",
    EN_AB = "en-AB",
    EN_AU = "en-AU",
    EN_GB = "en-GB",
    EN_IE = "en-IE",
    EN_IN = "en-IN",
    EN_US = "en-US",
    EN_WL = "en-WL",
    ES_ES = "es-ES",
    ES_US = "es-US",
    FR_CA = "fr-CA",
    FR_FR = "fr-FR",
    HI_IN = "hi-IN",
    IT_IT = "it-IT",
    JA_JP = "ja-JP",
    KO_KR = "ko-KR",
    PT_BR = "pt-BR",
    PT_PT = "pt-PT",
    ZH_CN = "zh-CN",
    EN_NZ = "en-NZ",
    EN_ZA = "en-ZA",
    CA_ES = "ca-ES",
    DA_DK = "da-DK",
    FI_FI = "fi-FI",
    ID_ID = "id-ID",
    MS_MY = "ms-MY",
    NL_NL = "nl-NL",
    NO_NO = "no-NO",
    PL_PL = "pl-PL",
    SV_SE = "sv-SE",
    TL_PH = "tl-PH",
}

M.AssociateDefaultVocabularyInput = {
    type = "structure",
    id = "AssociateDefaultVocabularyInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VocabularyId = {
            type = "string",
        },
    },
}

M.AssociateDefaultVocabularyOutput = {
    type = "structure",
    id = "AssociateDefaultVocabularyOutput",
}

M.AssociateEmailAddressAliasInput = {
    type = "structure",
    id = "AssociateEmailAddressAliasInput",
    members = {
        EmailAddressId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AliasConfiguration }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateEmailAddressAliasOutput = {
    type = "structure",
    id = "AssociateEmailAddressAliasOutput",
}

M.IdempotencyException = {
    type = "structure",
    id = "IdempotencyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FlowAssociationResourceType = {
    SMS_PHONE_NUMBER = "SMS_PHONE_NUMBER",
    INBOUND_EMAIL = "INBOUND_EMAIL",
    OUTBOUND_EMAIL = "OUTBOUND_EMAIL",
    ANALYTICS_CONNECTOR = "ANALYTICS_CONNECTOR",
    WHATSAPP_MESSAGING_PHONE_NUMBER = "WHATSAPP_MESSAGING_PHONE_NUMBER",
}

M.AssociateFlowInput = {
    type = "structure",
    id = "AssociateFlowInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateFlowOutput = {
    type = "structure",
    id = "AssociateFlowOutput",
}

M.ParentHoursOfOperationConfig = {
    type = "structure",
    id = "ParentHoursOfOperationConfig",
    members = {
        HoursOfOperationId = {
            type = "string",
        },
    },
}

M.AssociateHoursOfOperationsInput = {
    type = "structure",
    id = "AssociateHoursOfOperationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ParentHoursOfOperationConfigs = {
            type = "list",
            member = M.ParentHoursOfOperationConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateHoursOfOperationsOutput = {
    type = "structure",
    id = "AssociateHoursOfOperationsOutput",
}

M.ConditionalOperationFailedException = {
    type = "structure",
    id = "ConditionalOperationFailedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InstanceStorageResourceType = {
    CHAT_TRANSCRIPTS = "CHAT_TRANSCRIPTS",
    CALL_RECORDINGS = "CALL_RECORDINGS",
    SCHEDULED_REPORTS = "SCHEDULED_REPORTS",
    MEDIA_STREAMS = "MEDIA_STREAMS",
    CONTACT_TRACE_RECORDS = "CONTACT_TRACE_RECORDS",
    AGENT_EVENTS = "AGENT_EVENTS",
    REAL_TIME_CONTACT_ANALYSIS_SEGMENTS = "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS",
    ATTACHMENTS = "ATTACHMENTS",
    CONTACT_EVALUATIONS = "CONTACT_EVALUATIONS",
    SCREEN_RECORDINGS = "SCREEN_RECORDINGS",
    REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS = "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS",
    REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS = "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS",
    EMAIL_MESSAGES = "EMAIL_MESSAGES",
}

M.KinesisFirehoseConfig = {
    type = "structure",
    id = "KinesisFirehoseConfig",
    members = {
        FirehoseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisStreamConfig = {
    type = "structure",
    id = "KinesisStreamConfig",
    members = {
        StreamArn = {
            type = "string",
            traits = {
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
        EncryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisVideoStreamConfig = {
    type = "structure",
    id = "KinesisVideoStreamConfig",
    members = {
        Prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetentionPeriodHours = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        EncryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.S3Config = {
    type = "structure",
    id = "S3Config",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfig = M.EncryptionConfig,
    },
}

M.StorageType = {
    S3 = "S3",
    KINESIS_VIDEO_STREAM = "KINESIS_VIDEO_STREAM",
    KINESIS_STREAM = "KINESIS_STREAM",
    KINESIS_FIREHOSE = "KINESIS_FIREHOSE",
}

M.InstanceStorageConfig = {
    type = "structure",
    id = "InstanceStorageConfig",
    members = {
        AssociationId = {
            type = "string",
        },
        StorageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Config = M.S3Config,
        KinesisVideoStreamConfig = M.KinesisVideoStreamConfig,
        KinesisStreamConfig = M.KinesisStreamConfig,
        KinesisFirehoseConfig = M.KinesisFirehoseConfig,
    },
}

M.AssociateInstanceStorageConfigInput = {
    type = "structure",
    id = "AssociateInstanceStorageConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceStorageConfig }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateInstanceStorageConfigOutput = {
    type = "structure",
    id = "AssociateInstanceStorageConfigOutput",
    members = {
        AssociationId = {
            type = "string",
        },
    },
}

M.AssociateLambdaFunctionInput = {
    type = "structure",
    id = "AssociateLambdaFunctionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateLambdaFunctionOutput = {
    type = "structure",
    id = "AssociateLambdaFunctionOutput",
}

M.AssociateLexBotInput = {
    type = "structure",
    id = "AssociateLexBotInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LexBot = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LexBot }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateLexBotOutput = {
    type = "structure",
    id = "AssociateLexBotOutput",
}

M.AssociatePhoneNumberContactFlowInput = {
    type = "structure",
    id = "AssociatePhoneNumberContactFlowInput",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePhoneNumberContactFlowOutput = {
    type = "structure",
    id = "AssociatePhoneNumberContactFlowOutput",
}

M.EmailAddressConfig = {
    type = "structure",
    id = "EmailAddressConfig",
    members = {
        EmailAddressId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateQueueEmailAddressesInput = {
    type = "structure",
    id = "AssociateQueueEmailAddressesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddressesConfig = {
            type = "list",
            member = M.EmailAddressConfig,
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateQueueEmailAddressesOutput = {
    type = "structure",
    id = "AssociateQueueEmailAddressesOutput",
}

M.AssociateQueueQuickConnectsInput = {
    type = "structure",
    id = "AssociateQueueQuickConnectsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuickConnectIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateQueueQuickConnectsOutput = {
    type = "structure",
    id = "AssociateQueueQuickConnectsOutput",
}

M.RoutingProfileQueueReference = {
    type = "structure",
    id = "RoutingProfileQueueReference",
    members = {
        QueueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutingProfileManualAssignmentQueueConfig = {
    type = "structure",
    id = "RoutingProfileManualAssignmentQueueConfig",
    members = {
        QueueReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingProfileQueueReference }),
    },
}

M.RoutingProfileQueueConfig = {
    type = "structure",
    id = "RoutingProfileQueueConfig",
    members = {
        QueueReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingProfileQueueReference }),
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Delay = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
    },
}

M.AssociateRoutingProfileQueuesInput = {
    type = "structure",
    id = "AssociateRoutingProfileQueuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueConfigs = {
            type = "list",
            member = M.RoutingProfileQueueConfig,
        },
        ManualAssignmentQueueConfigs = {
            type = "list",
            member = M.RoutingProfileManualAssignmentQueueConfig,
        },
    },
}

M.AssociateRoutingProfileQueuesOutput = {
    type = "structure",
    id = "AssociateRoutingProfileQueuesOutput",
}

M.AssociateSecurityKeyInput = {
    type = "structure",
    id = "AssociateSecurityKeyInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateSecurityKeyOutput = {
    type = "structure",
    id = "AssociateSecurityKeyOutput",
    members = {
        AssociationId = {
            type = "string",
        },
    },
}

M.EntityType = {
    USER = "USER",
    AI_AGENT = "AI_AGENT",
}

M.SecurityProfileItem = {
    type = "structure",
    id = "SecurityProfileItem",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.AssociateSecurityProfilesInput = {
    type = "structure",
    id = "AssociateSecurityProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SecurityProfiles = {
            type = "list",
            member = M.SecurityProfileItem,
            traits = {
                required = true,
            },
        },
        EntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSecurityProfilesOutput = {
    type = "structure",
    id = "AssociateSecurityProfilesOutput",
}

M.AssociateTrafficDistributionGroupUserInput = {
    type = "structure",
    id = "AssociateTrafficDistributionGroupUserInput",
    members = {
        TrafficDistributionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateTrafficDistributionGroupUserOutput = {
    type = "structure",
    id = "AssociateTrafficDistributionGroupUserOutput",
}

M.UserProficiency = {
    type = "structure",
    id = "UserProficiency",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Level = {
            type = "float",
            traits = {
                default = 1,
                required = true,
            },
        },
    },
}

M.AssociateUserProficienciesInput = {
    type = "structure",
    id = "AssociateUserProficienciesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserProficiencies = {
            type = "list",
            member = M.UserProficiency,
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateUserProficienciesOutput = {
    type = "structure",
    id = "AssociateUserProficienciesOutput",
}

M.AssociateWorkspaceInput = {
    type = "structure",
    id = "AssociateWorkspaceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FailedBatchAssociationSummary = {
    type = "structure",
    id = "FailedBatchAssociationSummary",
    members = {
        ResourceArn = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.SuccessfulBatchAssociationSummary = {
    type = "structure",
    id = "SuccessfulBatchAssociationSummary",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.AssociateWorkspaceOutput = {
    type = "structure",
    id = "AssociateWorkspaceOutput",
    members = {
        SuccessfulList = {
            type = "list",
            member = M.SuccessfulBatchAssociationSummary,
        },
        FailedList = {
            type = "list",
            member = M.FailedBatchAssociationSummary,
        },
    },
}

M.DuplicateResourceException = {
    type = "structure",
    id = "DuplicateResourceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchAssociateAnalyticsDataSetInput = {
    type = "structure",
    id = "BatchAssociateAnalyticsDataSetInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TargetAccountId = {
            type = "string",
        },
    },
}

M.AnalyticsDataAssociationResult = {
    type = "structure",
    id = "AnalyticsDataAssociationResult",
    members = {
        DataSetId = {
            type = "string",
        },
        TargetAccountId = {
            type = "string",
        },
        ResourceShareId = {
            type = "string",
        },
        ResourceShareArn = {
            type = "string",
        },
        ResourceShareStatus = {
            type = "string",
        },
    },
}

M.ErrorResult = {
    type = "structure",
    id = "ErrorResult",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchAssociateAnalyticsDataSetOutput = {
    type = "structure",
    id = "BatchAssociateAnalyticsDataSetOutput",
    members = {
        Created = {
            type = "list",
            member = M.AnalyticsDataAssociationResult,
        },
        Errors = {
            type = "list",
            member = M.ErrorResult,
        },
    },
}

M.DataTableLockVersion = {
    type = "structure",
    id = "DataTableLockVersion",
    members = {
        DataTable = {
            type = "string",
        },
        Attribute = {
            type = "string",
        },
        PrimaryValues = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.PrimaryValue = {
    type = "structure",
    id = "PrimaryValue",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataTableValue = {
    type = "structure",
    id = "DataTableValue",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = M.DataTableLockVersion,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.BatchCreateDataTableValueInput = {
    type = "structure",
    id = "BatchCreateDataTableValueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Values = {
            type = "list",
            member = M.DataTableValue,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateDataTableValueFailureResult = {
    type = "structure",
    id = "BatchCreateDataTableValueFailureResult",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateDataTableValueSuccessResult = {
    type = "structure",
    id = "BatchCreateDataTableValueSuccessResult",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.BatchCreateDataTableValueOutput = {
    type = "structure",
    id = "BatchCreateDataTableValueOutput",
    members = {
        Successful = {
            type = "list",
            member = M.BatchCreateDataTableValueSuccessResult,
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member = M.BatchCreateDataTableValueFailureResult,
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataTableDeleteValueIdentifier = {
    type = "structure",
    id = "DataTableDeleteValueIdentifier",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.BatchDeleteDataTableValueInput = {
    type = "structure",
    id = "BatchDeleteDataTableValueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Values = {
            type = "list",
            member = M.DataTableDeleteValueIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteDataTableValueFailureResult = {
    type = "structure",
    id = "BatchDeleteDataTableValueFailureResult",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteDataTableValueSuccessResult = {
    type = "structure",
    id = "BatchDeleteDataTableValueSuccessResult",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.BatchDeleteDataTableValueOutput = {
    type = "structure",
    id = "BatchDeleteDataTableValueOutput",
    members = {
        Successful = {
            type = "list",
            member = M.BatchDeleteDataTableValueSuccessResult,
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member = M.BatchDeleteDataTableValueFailureResult,
            traits = {
                required = true,
            },
        },
    },
}

M.DataTableValueIdentifier = {
    type = "structure",
    id = "DataTableValueIdentifier",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDescribeDataTableValueInput = {
    type = "structure",
    id = "BatchDescribeDataTableValueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Values = {
            type = "list",
            member = M.DataTableValueIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDescribeDataTableValueFailureResult = {
    type = "structure",
    id = "BatchDescribeDataTableValueFailureResult",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrimaryValueResponse = {
    type = "structure",
    id = "PrimaryValueResponse",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeId = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.BatchDescribeDataTableValueSuccessResult = {
    type = "structure",
    id = "BatchDescribeDataTableValueSuccessResult",
    members = {
        RecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValueResponse,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.BatchDescribeDataTableValueOutput = {
    type = "structure",
    id = "BatchDescribeDataTableValueOutput",
    members = {
        Successful = {
            type = "list",
            member = M.BatchDescribeDataTableValueSuccessResult,
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member = M.BatchDescribeDataTableValueFailureResult,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateAnalyticsDataSetInput = {
    type = "structure",
    id = "BatchDisassociateAnalyticsDataSetInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TargetAccountId = {
            type = "string",
        },
    },
}

M.BatchDisassociateAnalyticsDataSetOutput = {
    type = "structure",
    id = "BatchDisassociateAnalyticsDataSetOutput",
    members = {
        Deleted = {
            type = "list",
            member = { type = "string" },
        },
        Errors = {
            type = "list",
            member = M.ErrorResult,
        },
    },
}

M.BatchGetAttachedFileMetadataInput = {
    type = "structure",
    id = "BatchGetAttachedFileMetadataInput",
    members = {
        FileIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssociatedResourceArn = {
            type = "string",
            traits = {
                http_query = "associatedResourceArn",
                required = true,
            },
        },
    },
}

M.AttachedFileError = {
    type = "structure",
    id = "AttachedFileError",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        FileId = {
            type = "string",
        },
    },
}

M.CreatedByInfo = {
    type = "union",
    id = "CreatedByInfo",
    members = {
        ConnectUserArn = {
            type = "string",
        },
        AWSIdentityArn = {
            type = "string",
        },
    },
}

M.FileStatusType = {
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
}

M.FileUseCaseType = {
    CONTACT_ANALYSIS = "CONTACT_ANALYSIS",
    EMAIL_MESSAGE = "EMAIL_MESSAGE",
    EMAIL_MESSAGE_PLAIN_TEXT = "EMAIL_MESSAGE_PLAIN_TEXT",
    EMAIL_MESSAGE_REDACTED = "EMAIL_MESSAGE_REDACTED",
    EMAIL_MESSAGE_PLAIN_TEXT_REDACTED = "EMAIL_MESSAGE_PLAIN_TEXT_REDACTED",
    ATTACHMENT = "ATTACHMENT",
}

M.AttachedFile = {
    type = "structure",
    id = "AttachedFile",
    members = {
        CreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        FileStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedBy = M.CreatedByInfo,
        FileUseCaseType = {
            type = "string",
        },
        AssociatedResourceArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchGetAttachedFileMetadataOutput = {
    type = "structure",
    id = "BatchGetAttachedFileMetadataOutput",
    members = {
        Files = {
            type = "list",
            member = M.AttachedFile,
        },
        Errors = {
            type = "list",
            member = M.AttachedFileError,
        },
    },
}

M.ListFlowAssociationResourceType = {
    WHATSAPP_MESSAGING_PHONE_NUMBER = "WHATSAPP_MESSAGING_PHONE_NUMBER",
    VOICE_PHONE_NUMBER = "VOICE_PHONE_NUMBER",
    INBOUND_EMAIL = "INBOUND_EMAIL",
    OUTBOUND_EMAIL = "OUTBOUND_EMAIL",
    ANALYTICS_CONNECTOR = "ANALYTICS_CONNECTOR",
}

M.BatchGetFlowAssociationInput = {
    type = "structure",
    id = "BatchGetFlowAssociationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.FlowAssociationSummary = {
    type = "structure",
    id = "FlowAssociationSummary",
    members = {
        ResourceId = {
            type = "string",
        },
        FlowId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.BatchGetFlowAssociationOutput = {
    type = "structure",
    id = "BatchGetFlowAssociationOutput",
    members = {
        FlowAssociationSummaryList = {
            type = "list",
            member = M.FlowAssociationSummary,
        },
    },
}

M.Campaign = {
    type = "structure",
    id = "Campaign",
    members = {
        CampaignId = {
            type = "string",
        },
    },
}

M.EndpointType = {
    TELEPHONE_NUMBER = "TELEPHONE_NUMBER",
    VOIP = "VOIP",
    CONTACT_FLOW = "CONTACT_FLOW",
    CONNECT_PHONENUMBER_ARN = "CONNECT_PHONENUMBER_ARN",
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        Type = {
            type = "string",
        },
        Address = {
            type = "string",
        },
    },
}

M.OutboundStrategyConfig = {
    type = "structure",
    id = "OutboundStrategyConfig",
    members = {
        AgentFirst = M.AgentFirst,
    },
}

M.OutboundStrategyType = {
    AGENT_FIRST = "AGENT_FIRST",
}

M.OutboundStrategy = {
    type = "structure",
    id = "OutboundStrategy",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Config = M.OutboundStrategyConfig,
    },
}

M.ContactDataRequest = {
    type = "structure",
    id = "ContactDataRequest",
    members = {
        SystemEndpoint = M.Endpoint,
        CustomerEndpoint = M.Endpoint,
        RequestIdentifier = {
            type = "string",
        },
        QueueId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Campaign = M.Campaign,
        OutboundStrategy = M.OutboundStrategy,
    },
}

M.BatchPutContactInput = {
    type = "structure",
    id = "BatchPutContactInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactDataRequestList = {
            type = "list",
            member = M.ContactDataRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.FailureReasonCode = {
    INVALID_ATTRIBUTE_KEY = "INVALID_ATTRIBUTE_KEY",
    INVALID_CUSTOMER_ENDPOINT = "INVALID_CUSTOMER_ENDPOINT",
    INVALID_SYSTEM_ENDPOINT = "INVALID_SYSTEM_ENDPOINT",
    INVALID_QUEUE = "INVALID_QUEUE",
    INVALID_OUTBOUND_STRATEGY = "INVALID_OUTBOUND_STRATEGY",
    MISSING_CAMPAIGN = "MISSING_CAMPAIGN",
    MISSING_CUSTOMER_ENDPOINT = "MISSING_CUSTOMER_ENDPOINT",
    MISSING_QUEUE_ID_AND_SYSTEM_ENDPOINT = "MISSING_QUEUE_ID_AND_SYSTEM_ENDPOINT",
    REQUEST_THROTTLED = "REQUEST_THROTTLED",
    IDEMPOTENCY_EXCEPTION = "IDEMPOTENCY_EXCEPTION",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.FailedRequest = {
    type = "structure",
    id = "FailedRequest",
    members = {
        RequestIdentifier = {
            type = "string",
        },
        FailureReasonCode = {
            type = "string",
        },
        FailureReasonMessage = {
            type = "string",
        },
    },
}

M.SuccessfulRequest = {
    type = "structure",
    id = "SuccessfulRequest",
    members = {
        RequestIdentifier = {
            type = "string",
        },
        ContactId = {
            type = "string",
        },
    },
}

M.BatchPutContactOutput = {
    type = "structure",
    id = "BatchPutContactOutput",
    members = {
        SuccessfulRequestList = {
            type = "list",
            member = M.SuccessfulRequest,
        },
        FailedRequestList = {
            type = "list",
            member = M.FailedRequest,
        },
    },
}

M.BatchUpdateDataTableValueInput = {
    type = "structure",
    id = "BatchUpdateDataTableValueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Values = {
            type = "list",
            member = M.DataTableValue,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDataTableValueFailureResult = {
    type = "structure",
    id = "BatchUpdateDataTableValueFailureResult",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDataTableValueSuccessResult = {
    type = "structure",
    id = "BatchUpdateDataTableValueSuccessResult",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.BatchUpdateDataTableValueOutput = {
    type = "structure",
    id = "BatchUpdateDataTableValueOutput",
    members = {
        Successful = {
            type = "list",
            member = M.BatchUpdateDataTableValueSuccessResult,
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member = M.BatchUpdateDataTableValueFailureResult,
            traits = {
                required = true,
            },
        },
    },
}

M.ClaimPhoneNumberInput = {
    type = "structure",
    id = "ClaimPhoneNumberInput",
    members = {
        TargetArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumberDescription = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ClaimPhoneNumberOutput = {
    type = "structure",
    id = "ClaimPhoneNumberOutput",
    members = {
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumberArn = {
            type = "string",
        },
    },
}

M.CompleteAttachedFileUploadInput = {
    type = "structure",
    id = "CompleteAttachedFileUploadInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssociatedResourceArn = {
            type = "string",
            traits = {
                http_query = "associatedResourceArn",
                required = true,
            },
        },
    },
}

M.CompleteAttachedFileUploadOutput = {
    type = "structure",
    id = "CompleteAttachedFileUploadOutput",
}

M.CreateAgentStatusInput = {
    type = "structure",
    id = "CreateAgentStatusInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayOrder = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAgentStatusOutput = {
    type = "structure",
    id = "CreateAgentStatusOutput",
    members = {
        AgentStatusARN = {
            type = "string",
        },
        AgentStatusId = {
            type = "string",
        },
    },
}

M.InitiateAs = {
    CONNECTED_TO_USER = "CONNECTED_TO_USER",
    COMPLETED = "COMPLETED",
}

M.ReferenceStatus = {
    AVAILABLE = "AVAILABLE",
    DELETED = "DELETED",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
}

M.ReferenceType = {
    URL = "URL",
    ATTACHMENT = "ATTACHMENT",
    CONTACT_ANALYSIS = "CONTACT_ANALYSIS",
    NUMBER = "NUMBER",
    STRING = "STRING",
    DATE = "DATE",
    EMAIL = "EMAIL",
    EMAIL_MESSAGE = "EMAIL_MESSAGE",
    EMAIL_MESSAGE_PLAIN_TEXT = "EMAIL_MESSAGE_PLAIN_TEXT",
    EMAIL_MESSAGE_PLAIN_TEXT_REDACTED = "EMAIL_MESSAGE_PLAIN_TEXT_REDACTED",
    EMAIL_MESSAGE_REDACTED = "EMAIL_MESSAGE_REDACTED",
}

M.Reference = {
    type = "structure",
    id = "Reference",
    members = {
        Value = {
            type = "string",
            traits = {
                default = "",
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
    },
}

M.UserInfo = {
    type = "structure",
    id = "UserInfo",
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.CreateContactOutput = {
    type = "structure",
    id = "CreateContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
        ContactArn = {
            type = "string",
        },
    },
}

M.ContactFlowStatus = {
    PUBLISHED = "PUBLISHED",
    SAVED = "SAVED",
}

M.ContactFlowType = {
    CONTACT_FLOW = "CONTACT_FLOW",
    CUSTOMER_QUEUE = "CUSTOMER_QUEUE",
    CUSTOMER_HOLD = "CUSTOMER_HOLD",
    CUSTOMER_WHISPER = "CUSTOMER_WHISPER",
    AGENT_HOLD = "AGENT_HOLD",
    AGENT_WHISPER = "AGENT_WHISPER",
    OUTBOUND_WHISPER = "OUTBOUND_WHISPER",
    AGENT_TRANSFER = "AGENT_TRANSFER",
    QUEUE_TRANSFER = "QUEUE_TRANSFER",
    CAMPAIGN = "CAMPAIGN",
}

M.CreateContactFlowInput = {
    type = "structure",
    id = "CreateContactFlowInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateContactFlowOutput = {
    type = "structure",
    id = "CreateContactFlowOutput",
    members = {
        ContactFlowId = {
            type = "string",
        },
        ContactFlowArn = {
            type = "string",
        },
        FlowContentSha256 = {
            type = "string",
        },
    },
}

M.ProblemDetail = {
    type = "structure",
    id = "ProblemDetail",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidContactFlowException = {
    type = "structure",
    id = "InvalidContactFlowException",
    error = "client",
    members = {
        problems = {
            type = "list",
            member = M.ProblemDetail,
        },
    },
}

M.ExternalInvocationConfiguration = {
    type = "structure",
    id = "ExternalInvocationConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateContactFlowModuleInput = {
    type = "structure",
    id = "CreateContactFlowModuleInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Settings = {
            type = "string",
        },
        ExternalInvocationConfiguration = M.ExternalInvocationConfiguration,
    },
}

M.CreateContactFlowModuleOutput = {
    type = "structure",
    id = "CreateContactFlowModuleOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.InvalidContactFlowModuleException = {
    type = "structure",
    id = "InvalidContactFlowModuleException",
    error = "client",
    members = {
        Problems = {
            type = "list",
            member = M.ProblemDetail,
        },
    },
}

M.CreateContactFlowModuleAliasInput = {
    type = "structure",
    id = "CreateContactFlowModuleAliasInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
        AliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateContactFlowModuleAliasOutput = {
    type = "structure",
    id = "CreateContactFlowModuleAliasOutput",
    members = {
        ContactFlowModuleArn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.CreateContactFlowModuleVersionInput = {
    type = "structure",
    id = "CreateContactFlowModuleVersionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FlowModuleContentSha256 = {
            type = "string",
        },
    },
}

M.CreateContactFlowModuleVersionOutput = {
    type = "structure",
    id = "CreateContactFlowModuleVersionOutput",
    members = {
        ContactFlowModuleArn = {
            type = "string",
        },
        Version = {
            type = "long",
        },
    },
}

M.CreateContactFlowVersionInput = {
    type = "structure",
    id = "CreateContactFlowVersionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FlowContentSha256 = {
            type = "string",
        },
        ContactFlowVersion = {
            type = "long",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.CreateContactFlowVersionOutput = {
    type = "structure",
    id = "CreateContactFlowVersionOutput",
    members = {
        ContactFlowArn = {
            type = "string",
        },
        Version = {
            type = "long",
        },
    },
}

M.DataTableStatus = {
    PUBLISHED = "PUBLISHED",
}

M.DataTableLockLevel = {
    NONE = "NONE",
    DATA_TABLE = "DATA_TABLE",
    PRIMARY_VALUE = "PRIMARY_VALUE",
    ATTRIBUTE = "ATTRIBUTE",
    VALUE = "VALUE",
}

M.CreateDataTableInput = {
    type = "structure",
    id = "CreateDataTableInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TimeZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueLockLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDataTableOutput = {
    type = "structure",
    id = "CreateDataTableOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.ValidationEnum = {
    type = "structure",
    id = "ValidationEnum",
    members = {
        Strict = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Validation = {
    type = "structure",
    id = "Validation",
    members = {
        MinLength = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxLength = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MinValues = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxValues = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        IgnoreCase = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Minimum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Maximum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        ExclusiveMinimum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        ExclusiveMaximum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        MultipleOf = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Enum = M.ValidationEnum,
    },
}

M.DataTableAttributeValueType = {
    TEXT = "TEXT",
    NUMBER = "NUMBER",
    BOOLEAN = "BOOLEAN",
    TEXT_LIST = "TEXT_LIST",
    NUMBER_LIST = "NUMBER_LIST",
}

M.CreateDataTableAttributeInput = {
    type = "structure",
    id = "CreateDataTableAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Validation = M.Validation,
    },
}

M.CreateDataTableAttributeOutput = {
    type = "structure",
    id = "CreateDataTableAttributeOutput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeId = {
            type = "string",
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.CreateEmailAddressInput = {
    type = "structure",
    id = "CreateEmailAddressInput",
    members = {
        Description = {
            type = "string",
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateEmailAddressOutput = {
    type = "structure",
    id = "CreateEmailAddressOutput",
    members = {
        EmailAddressId = {
            type = "string",
        },
        EmailAddressArn = {
            type = "string",
        },
    },
}

M.EvaluationFormAutoEvaluationConfiguration = {
    type = "structure",
    id = "EvaluationFormAutoEvaluationConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.EvaluationFormItemEnablementAction = {
    DISABLE = "DISABLE",
    ENABLE = "ENABLE",
}

M.EvaluationFormItemSourceValuesComparator = {
    IN = "IN",
    NOT_IN = "NOT_IN",
    ALL_IN = "ALL_IN",
    EXACT = "EXACT",
}

M.EvaluationFormItemEnablementSourceType = {
    QUESTION_REF_ID = "QUESTION_REF_ID",
}

M.EvaluationFormItemEnablementSource = {
    type = "structure",
    id = "EvaluationFormItemEnablementSource",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RefId = {
            type = "string",
        },
    },
}

M.EvaluationFormItemEnablementSourceValueType = {
    OPTION_REF_ID = "OPTION_REF_ID",
}

M.EvaluationFormItemEnablementSourceValue = {
    type = "structure",
    id = "EvaluationFormItemEnablementSourceValue",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RefId = {
            type = "string",
        },
    },
}

M.EvaluationFormItemEnablementExpression = {
    type = "structure",
    id = "EvaluationFormItemEnablementExpression",
    members = {
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationFormItemEnablementSource }),
        Values = {
            type = "list",
            member = M.EvaluationFormItemEnablementSourceValue,
            traits = {
                required = true,
            },
        },
        Comparator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationFormItemEnablementOperator = {
    OR = "OR",
    AND = "AND",
}

M.EvaluationFormQuestionType = {
    TEXT = "TEXT",
    SINGLESELECT = "SINGLESELECT",
    NUMERIC = "NUMERIC",
    MULTISELECT = "MULTISELECT",
    DATETIME = "DATETIME",
}

M.EvaluationFormQuestionAutomationAnswerSourceType = {
    CONTACT_LENS_DATA = "CONTACT_LENS_DATA",
    GEN_AI = "GEN_AI",
}

M.EvaluationFormQuestionAutomationAnswerSource = {
    type = "structure",
    id = "EvaluationFormQuestionAutomationAnswerSource",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MultiSelectQuestionRuleCategoryAutomationCondition = {
    PRESENT = "PRESENT",
    NOT_PRESENT = "NOT_PRESENT",
}

M.MultiSelectQuestionRuleCategoryAutomation = {
    type = "structure",
    id = "MultiSelectQuestionRuleCategoryAutomation",
    members = {
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptionRefIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationFormMultiSelectQuestionAutomationOption = {
    type = "union",
    id = "EvaluationFormMultiSelectQuestionAutomationOption",
    members = {
        RuleCategory = M.MultiSelectQuestionRuleCategoryAutomation,
    },
}

M.EvaluationFormMultiSelectQuestionAutomation = {
    type = "structure",
    id = "EvaluationFormMultiSelectQuestionAutomation",
    members = {
        Options = {
            type = "list",
            member = M.EvaluationFormMultiSelectQuestionAutomationOption,
        },
        DefaultOptionRefIds = {
            type = "list",
            member = { type = "string" },
        },
        AnswerSource = M.EvaluationFormQuestionAutomationAnswerSource,
    },
}

M.EvaluationFormMultiSelectQuestionDisplayMode = {
    DROPDOWN = "DROPDOWN",
    CHECKBOX = "CHECKBOX",
}

M.EvaluationFormMultiSelectQuestionOption = {
    type = "structure",
    id = "EvaluationFormMultiSelectQuestionOption",
    members = {
        RefId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationFormMultiSelectQuestionProperties = {
    type = "structure",
    id = "EvaluationFormMultiSelectQuestionProperties",
    members = {
        Options = {
            type = "list",
            member = M.EvaluationFormMultiSelectQuestionOption,
            traits = {
                required = true,
            },
        },
        DisplayAs = {
            type = "string",
        },
        Automation = M.EvaluationFormMultiSelectQuestionAutomation,
    },
}

M.NumericQuestionPropertyAutomationLabel = {
    OVERALL_CUSTOMER_SENTIMENT_SCORE = "OVERALL_CUSTOMER_SENTIMENT_SCORE",
    OVERALL_AGENT_SENTIMENT_SCORE = "OVERALL_AGENT_SENTIMENT_SCORE",
    CUSTOMER_SENTIMENT_SCORE_WITHOUT_AGENT = "CUSTOMER_SENTIMENT_SCORE_WITHOUT_AGENT",
    CUSTOMER_SENTIMENT_SCORE_WITH_AGENT = "CUSTOMER_SENTIMENT_SCORE_WITH_AGENT",
    NON_TALK_TIME = "NON_TALK_TIME",
    NON_TALK_TIME_PERCENTAGE = "NON_TALK_TIME_PERCENTAGE",
    NUMBER_OF_INTERRUPTIONS = "NUMBER_OF_INTERRUPTIONS",
    CONTACT_DURATION = "CONTACT_DURATION",
    AGENT_INTERACTION_DURATION = "AGENT_INTERACTION_DURATION",
    CUSTOMER_HOLD_TIME = "CUSTOMER_HOLD_TIME",
    LONGEST_HOLD_DURATION = "LONGEST_HOLD_DURATION",
    NUMBER_OF_HOLDS = "NUMBER_OF_HOLDS",
    AGENT_INTERACTION_AND_HOLD_DURATION = "AGENT_INTERACTION_AND_HOLD_DURATION",
}

M.NumericQuestionPropertyValueAutomation = {
    type = "structure",
    id = "NumericQuestionPropertyValueAutomation",
    members = {
        Label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationFormNumericQuestionAutomation = {
    type = "union",
    id = "EvaluationFormNumericQuestionAutomation",
    members = {
        PropertyValue = M.NumericQuestionPropertyValueAutomation,
        AnswerSource = M.EvaluationFormQuestionAutomationAnswerSource,
    },
}

M.AutomaticFailConfiguration = {
    type = "structure",
    id = "AutomaticFailConfiguration",
    members = {
        TargetSection = {
            type = "string",
        },
    },
}

M.EvaluationFormNumericQuestionOption = {
    type = "structure",
    id = "EvaluationFormNumericQuestionOption",
    members = {
        MinValue = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        MaxValue = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Score = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AutomaticFail = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutomaticFailConfiguration = M.AutomaticFailConfiguration,
    },
}

M.EvaluationFormNumericQuestionProperties = {
    type = "structure",
    id = "EvaluationFormNumericQuestionProperties",
    members = {
        MinValue = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        MaxValue = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Options = {
            type = "list",
            member = M.EvaluationFormNumericQuestionOption,
        },
        Automation = M.EvaluationFormNumericQuestionAutomation,
    },
}

M.SingleSelectQuestionRuleCategoryAutomationCondition = {
    PRESENT = "PRESENT",
    NOT_PRESENT = "NOT_PRESENT",
}

M.SingleSelectQuestionRuleCategoryAutomation = {
    type = "structure",
    id = "SingleSelectQuestionRuleCategoryAutomation",
    members = {
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptionRefId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationFormSingleSelectQuestionAutomationOption = {
    type = "union",
    id = "EvaluationFormSingleSelectQuestionAutomationOption",
    members = {
        RuleCategory = M.SingleSelectQuestionRuleCategoryAutomation,
    },
}

M.EvaluationFormSingleSelectQuestionAutomation = {
    type = "structure",
    id = "EvaluationFormSingleSelectQuestionAutomation",
    members = {
        Options = {
            type = "list",
            member = M.EvaluationFormSingleSelectQuestionAutomationOption,
            traits = {
                default = {},
            },
        },
        DefaultOptionRefId = {
            type = "string",
        },
        AnswerSource = M.EvaluationFormQuestionAutomationAnswerSource,
    },
}

M.EvaluationFormSingleSelectQuestionDisplayMode = {
    DROPDOWN = "DROPDOWN",
    RADIO = "RADIO",
}

M.EvaluationFormSingleSelectQuestionOption = {
    type = "structure",
    id = "EvaluationFormSingleSelectQuestionOption",
    members = {
        RefId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Score = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AutomaticFail = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutomaticFailConfiguration = M.AutomaticFailConfiguration,
    },
}

M.EvaluationFormSingleSelectQuestionProperties = {
    type = "structure",
    id = "EvaluationFormSingleSelectQuestionProperties",
    members = {
        Options = {
            type = "list",
            member = M.EvaluationFormSingleSelectQuestionOption,
            traits = {
                required = true,
            },
        },
        DisplayAs = {
            type = "string",
        },
        Automation = M.EvaluationFormSingleSelectQuestionAutomation,
    },
}

M.EvaluationFormTextQuestionAutomation = {
    type = "structure",
    id = "EvaluationFormTextQuestionAutomation",
    members = {
        AnswerSource = M.EvaluationFormQuestionAutomationAnswerSource,
    },
}

M.EvaluationFormTextQuestionProperties = {
    type = "structure",
    id = "EvaluationFormTextQuestionProperties",
    members = {
        Automation = M.EvaluationFormTextQuestionAutomation,
    },
}

M.EvaluationFormQuestionTypeProperties = {
    type = "union",
    id = "EvaluationFormQuestionTypeProperties",
    members = {
        Numeric = M.EvaluationFormNumericQuestionProperties,
        SingleSelect = M.EvaluationFormSingleSelectQuestionProperties,
        Text = M.EvaluationFormTextQuestionProperties,
        MultiSelect = M.EvaluationFormMultiSelectQuestionProperties,
    },
}

M.EvaluationFormLanguageCode = {
    DE_DE = "de-DE",
    EN_US = "en-US",
    ES_ES = "es-ES",
    FR_FR = "fr-FR",
    IT_IT = "it-IT",
    PT_BR = "pt-BR",
    JA_JP = "ja-JP",
    KO_KR = "ko-KR",
    ZH_CN = "zh-CN",
}

M.EvaluationFormLanguageConfiguration = {
    type = "structure",
    id = "EvaluationFormLanguageConfiguration",
    members = {
        FormLanguage = {
            type = "string",
        },
    },
}

M.EvaluationReviewNotificationRecipientType = {
    USER_ID = "USER_ID",
}

M.EvaluationReviewNotificationRecipientValue = {
    type = "structure",
    id = "EvaluationReviewNotificationRecipientValue",
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.EvaluationReviewNotificationRecipient = {
    type = "structure",
    id = "EvaluationReviewNotificationRecipient",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationReviewNotificationRecipientValue }),
    },
}

M.EvaluationReviewConfiguration = {
    type = "structure",
    id = "EvaluationReviewConfiguration",
    members = {
        ReviewNotificationRecipients = {
            type = "list",
            member = M.EvaluationReviewNotificationRecipient,
            traits = {
                required = true,
            },
        },
        EligibilityDays = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.EvaluationFormScoringMode = {
    QUESTION_ONLY = "QUESTION_ONLY",
    SECTION_ONLY = "SECTION_ONLY",
}

M.EvaluationFormScoringStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EvaluationFormScoringStrategy = {
    type = "structure",
    id = "EvaluationFormScoringStrategy",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContactInteractionType = {
    AGENT = "AGENT",
    AUTOMATED = "AUTOMATED",
    CUSTOMER = "CUSTOMER",
}

M.EvaluationFormTargetConfiguration = {
    type = "structure",
    id = "EvaluationFormTargetConfiguration",
    members = {
        ContactInteractionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEvaluationFormOutput = {
    type = "structure",
    id = "CreateEvaluationFormOutput",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HoursOfOperationDays = {
    SUNDAY = "SUNDAY",
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
}

M.HoursOfOperationTimeSlice = {
    type = "structure",
    id = "HoursOfOperationTimeSlice",
    members = {
        Hours = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
        Minutes = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
    },
}

M.HoursOfOperationConfig = {
    type = "structure",
    id = "HoursOfOperationConfig",
    members = {
        Day = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HoursOfOperationTimeSlice }),
        EndTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HoursOfOperationTimeSlice }),
    },
}

M.CreateHoursOfOperationInput = {
    type = "structure",
    id = "CreateHoursOfOperationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TimeZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Config = {
            type = "list",
            member = M.HoursOfOperationConfig,
            traits = {
                required = true,
            },
        },
        ParentHoursOfOperationConfigs = {
            type = "list",
            member = M.ParentHoursOfOperationConfig,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateHoursOfOperationOutput = {
    type = "structure",
    id = "CreateHoursOfOperationOutput",
    members = {
        HoursOfOperationId = {
            type = "string",
        },
        HoursOfOperationArn = {
            type = "string",
        },
    },
}

M.OverrideDays = {
    SUNDAY = "SUNDAY",
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
}

M.OverrideTimeSlice = {
    type = "structure",
    id = "OverrideTimeSlice",
    members = {
        Hours = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
        Minutes = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
    },
}

M.HoursOfOperationOverrideConfig = {
    type = "structure",
    id = "HoursOfOperationOverrideConfig",
    members = {
        Day = {
            type = "string",
        },
        StartTime = M.OverrideTimeSlice,
        EndTime = M.OverrideTimeSlice,
    },
}

M.OverrideType = {
    STANDARD = "STANDARD",
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.RecurrenceFrequency = {
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
    YEARLY = "YEARLY",
}

M.RecurrencePattern = {
    type = "structure",
    id = "RecurrencePattern",
    members = {
        Frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Interval = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ByMonth = {
            type = "list",
            member = { type = "integer" },
        },
        ByMonthDay = {
            type = "list",
            member = { type = "integer" },
        },
        ByWeekdayOccurrence = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.RecurrenceConfig = {
    type = "structure",
    id = "RecurrenceConfig",
    members = {
        RecurrencePattern = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurrencePattern }),
    },
}

M.CreateHoursOfOperationOverrideInput = {
    type = "structure",
    id = "CreateHoursOfOperationOverrideInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Config = {
            type = "list",
            member = M.HoursOfOperationOverrideConfig,
            traits = {
                required = true,
            },
        },
        EffectiveFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EffectiveTill = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecurrenceConfig = M.RecurrenceConfig,
        OverrideType = {
            type = "string",
        },
    },
}

M.CreateHoursOfOperationOverrideOutput = {
    type = "structure",
    id = "CreateHoursOfOperationOverrideOutput",
    members = {
        HoursOfOperationOverrideId = {
            type = "string",
        },
    },
}

M.DirectoryType = {
    SAML = "SAML",
    CONNECT_MANAGED = "CONNECT_MANAGED",
    EXISTING_DIRECTORY = "EXISTING_DIRECTORY",
}

M.CreateInstanceInput = {
    type = "structure",
    id = "CreateInstanceInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        IdentityManagementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceAlias = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        InboundCallsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OutboundCallsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateInstanceOutput = {
    type = "structure",
    id = "CreateInstanceOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.IntegrationType = {
    EVENT = "EVENT",
    VOICE_ID = "VOICE_ID",
    PINPOINT_APP = "PINPOINT_APP",
    WISDOM_ASSISTANT = "WISDOM_ASSISTANT",
    WISDOM_KNOWLEDGE_BASE = "WISDOM_KNOWLEDGE_BASE",
    WISDOM_QUICK_RESPONSES = "WISDOM_QUICK_RESPONSES",
    Q_MESSAGE_TEMPLATES = "Q_MESSAGE_TEMPLATES",
    CASES_DOMAIN = "CASES_DOMAIN",
    APPLICATION = "APPLICATION",
    FILE_SCANNER = "FILE_SCANNER",
    SES_IDENTITY = "SES_IDENTITY",
    ANALYTICS_CONNECTOR = "ANALYTICS_CONNECTOR",
    CALL_TRANSFER_CONNECTOR = "CALL_TRANSFER_CONNECTOR",
    COGNITO_USER_POOL = "COGNITO_USER_POOL",
    MESSAGE_PROCESSOR = "MESSAGE_PROCESSOR",
}

M.SourceType = {
    SALESFORCE = "SALESFORCE",
    ZENDESK = "ZENDESK",
    CASES = "CASES",
}

M.CreateIntegrationAssociationInput = {
    type = "structure",
    id = "CreateIntegrationAssociationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceApplicationUrl = {
            type = "string",
        },
        SourceApplicationName = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIntegrationAssociationOutput = {
    type = "structure",
    id = "CreateIntegrationAssociationOutput",
    members = {
        IntegrationAssociationId = {
            type = "string",
        },
        IntegrationAssociationArn = {
            type = "string",
        },
    },
}

M.LocaleCode = {
    EnUS = "en_US",
    DeDE = "de_DE",
    EsES = "es_ES",
    FrFR = "fr_FR",
    IdID = "id_ID",
    ItIT = "it_IT",
    JaJP = "ja_JP",
    KoKR = "ko_KR",
    PtBR = "pt_BR",
    ZhCN = "zh_CN",
    ZhTW = "zh_TW",
}

M.ConfigurableNotificationPriority = {
    High = "HIGH",
    Low = "LOW",
}

M.CreateNotificationInput = {
    type = "structure",
    id = "CreateNotificationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpiresAt = {
            type = "timestamp",
        },
        Recipients = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "string",
        },
        Content = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PredefinedNotificationId = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateNotificationOutput = {
    type = "structure",
    id = "CreateNotificationOutput",
    members = {
        NotificationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParticipantRole = {
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
    SYSTEM = "SYSTEM",
    CUSTOM_BOT = "CUSTOM_BOT",
    SUPERVISOR = "SUPERVISOR",
}

M.ParticipantDetailsToAdd = {
    type = "structure",
    id = "ParticipantDetailsToAdd",
    members = {
        ParticipantRole = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ParticipantCapabilities = M.ParticipantCapabilities,
    },
}

M.CreateParticipantInput = {
    type = "structure",
    id = "CreateParticipantInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ParticipantDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ParticipantDetailsToAdd }),
    },
}

M.ParticipantTokenCredentials = {
    type = "structure",
    id = "ParticipantTokenCredentials",
    members = {
        ParticipantToken = {
            type = "string",
        },
        Expiry = {
            type = "string",
        },
    },
}

M.CreateParticipantOutput = {
    type = "structure",
    id = "CreateParticipantOutput",
    members = {
        ParticipantCredentials = M.ParticipantTokenCredentials,
        ParticipantId = {
            type = "string",
        },
    },
}

M.RehydrationType = {
    ENTIRE_PAST_SESSION = "ENTIRE_PAST_SESSION",
    FROM_SEGMENT = "FROM_SEGMENT",
}

M.CreatePersistentContactAssociationInput = {
    type = "structure",
    id = "CreatePersistentContactAssociationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InitialContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RehydrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreatePersistentContactAssociationOutput = {
    type = "structure",
    id = "CreatePersistentContactAssociationOutput",
    members = {
        ContinuedFromContactId = {
            type = "string",
        },
    },
}

M.InputPredefinedAttributeConfiguration = {
    type = "structure",
    id = "InputPredefinedAttributeConfiguration",
    members = {
        EnableValueValidationOnAssociation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PredefinedAttributeValues = {
    type = "union",
    id = "PredefinedAttributeValues",
    members = {
        StringList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreatePredefinedAttributeInput = {
    type = "structure",
    id = "CreatePredefinedAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = M.PredefinedAttributeValues,
        Purposes = {
            type = "list",
            member = { type = "string" },
        },
        AttributeConfiguration = M.InputPredefinedAttributeConfiguration,
    },
}

M.CreatePredefinedAttributeOutput = {
    type = "structure",
    id = "CreatePredefinedAttributeOutput",
}

M.CreatePromptInput = {
    type = "structure",
    id = "CreatePromptInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePromptOutput = {
    type = "structure",
    id = "CreatePromptOutput",
    members = {
        PromptARN = {
            type = "string",
        },
        PromptId = {
            type = "string",
        },
    },
}

M.ContactConfiguration = {
    type = "structure",
    id = "ContactConfiguration",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantRole = {
            type = "string",
        },
        IncludeRawMessage = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeviceType = {
    GCM = "GCM",
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
}

M.CreatePushNotificationRegistrationInput = {
    type = "structure",
    id = "CreatePushNotificationRegistrationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        PinpointAppArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactConfiguration }),
    },
}

M.CreatePushNotificationRegistrationOutput = {
    type = "structure",
    id = "CreatePushNotificationRegistrationOutput",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutboundCallerConfig = {
    type = "structure",
    id = "OutboundCallerConfig",
    members = {
        OutboundCallerIdName = {
            type = "string",
        },
        OutboundCallerIdNumberId = {
            type = "string",
        },
        OutboundFlowId = {
            type = "string",
        },
    },
}

M.OutboundEmailConfig = {
    type = "structure",
    id = "OutboundEmailConfig",
    members = {
        OutboundEmailAddressId = {
            type = "string",
        },
    },
}

M.CreateQueueInput = {
    type = "structure",
    id = "CreateQueueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        OutboundCallerConfig = M.OutboundCallerConfig,
        OutboundEmailConfig = M.OutboundEmailConfig,
        HoursOfOperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxContacts = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        QuickConnectIds = {
            type = "list",
            member = { type = "string" },
        },
        EmailAddressesConfig = {
            type = "list",
            member = M.EmailAddressConfig,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateQueueOutput = {
    type = "structure",
    id = "CreateQueueOutput",
    members = {
        QueueArn = {
            type = "string",
        },
        QueueId = {
            type = "string",
        },
    },
}

M.FlowQuickConnectConfig = {
    type = "structure",
    id = "FlowQuickConnectConfig",
    members = {
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PhoneNumberQuickConnectConfig = {
    type = "structure",
    id = "PhoneNumberQuickConnectConfig",
    members = {
        PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueueQuickConnectConfig = {
    type = "structure",
    id = "QueueQuickConnectConfig",
    members = {
        QueueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuickConnectType = {
    USER = "USER",
    QUEUE = "QUEUE",
    PHONE_NUMBER = "PHONE_NUMBER",
    FLOW = "FLOW",
}

M.UserQuickConnectConfig = {
    type = "structure",
    id = "UserQuickConnectConfig",
    members = {
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuickConnectConfig = {
    type = "structure",
    id = "QuickConnectConfig",
    members = {
        QuickConnectType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserConfig = M.UserQuickConnectConfig,
        QueueConfig = M.QueueQuickConnectConfig,
        PhoneConfig = M.PhoneNumberQuickConnectConfig,
        FlowConfig = M.FlowQuickConnectConfig,
    },
}

M.CreateQuickConnectInput = {
    type = "structure",
    id = "CreateQuickConnectInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        QuickConnectConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QuickConnectConfig }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateQuickConnectOutput = {
    type = "structure",
    id = "CreateQuickConnectOutput",
    members = {
        QuickConnectARN = {
            type = "string",
        },
        QuickConnectId = {
            type = "string",
        },
    },
}

M.BehaviorType = {
    ROUTE_CURRENT_CHANNEL_ONLY = "ROUTE_CURRENT_CHANNEL_ONLY",
    ROUTE_ANY_CHANNEL = "ROUTE_ANY_CHANNEL",
}

M.CrossChannelBehavior = {
    type = "structure",
    id = "CrossChannelBehavior",
    members = {
        BehaviorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MediaConcurrency = {
    type = "structure",
    id = "MediaConcurrency",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Concurrency = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CrossChannelBehavior = M.CrossChannelBehavior,
    },
}

M.CreateRoutingProfileInput = {
    type = "structure",
    id = "CreateRoutingProfileInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultOutboundQueueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueueConfigs = {
            type = "list",
            member = M.RoutingProfileQueueConfig,
        },
        ManualAssignmentQueueConfigs = {
            type = "list",
            member = M.RoutingProfileManualAssignmentQueueConfig,
        },
        MediaConcurrencies = {
            type = "list",
            member = M.MediaConcurrency,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AgentAvailabilityTimer = {
            type = "string",
        },
    },
}

M.CreateRoutingProfileOutput = {
    type = "structure",
    id = "CreateRoutingProfileOutput",
    members = {
        RoutingProfileArn = {
            type = "string",
        },
        RoutingProfileId = {
            type = "string",
        },
    },
}

M.AssignContactCategoryActionDefinition = {
    type = "structure",
    id = "AssignContactCategoryActionDefinition",
}

M.EmptyFieldValue = {
    type = "structure",
    id = "EmptyFieldValue",
}

M.FieldValueUnion = {
    type = "structure",
    id = "FieldValueUnion",
    members = {
        BooleanValue = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DoubleValue = {
            type = "double",
        },
        EmptyValue = M.EmptyFieldValue,
        StringValue = {
            type = "string",
        },
    },
}

M.SlaType = {
    CASE_FIELD = "CaseField",
}

M.CaseSlaConfiguration = {
    type = "structure",
    id = "CaseSlaConfiguration",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldId = {
            type = "string",
        },
        TargetFieldValues = {
            type = "list",
            member = M.FieldValueUnion,
        },
        TargetSlaMinutes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SlaAssignmentType = {
    CASES = "CASES",
}

M.AssignSlaActionDefinition = {
    type = "structure",
    id = "AssignSlaActionDefinition",
    members = {
        SlaAssignmentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaseSlaConfiguration = M.CaseSlaConfiguration,
    },
}

M.FieldValue = {
    type = "structure",
    id = "FieldValue",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldValueUnion }),
    },
}

M.CreateCaseActionDefinition = {
    type = "structure",
    id = "CreateCaseActionDefinition",
    members = {
        Fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
        TemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndAssociatedTasksActionDefinition = {
    type = "structure",
    id = "EndAssociatedTasksActionDefinition",
}

M.EventBridgeActionDefinition = {
    type = "structure",
    id = "EventBridgeActionDefinition",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationContentType = {
    PLAIN_TEXT = "PLAIN_TEXT",
}

M.NotificationDeliveryType = {
    EMAIL = "EMAIL",
}

M.NotificationRecipientType = {
    type = "structure",
    id = "NotificationRecipientType",
    members = {
        UserTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SendNotificationActionDefinition = {
    type = "structure",
    id = "SendNotificationActionDefinition",
    members = {
        DeliveryMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = {
            type = "string",
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Recipient = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationRecipientType }),
        Exclusion = M.NotificationRecipientType,
    },
}

M.SubmitAutoEvaluationActionDefinition = {
    type = "structure",
    id = "SubmitAutoEvaluationActionDefinition",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskActionDefinition = {
    type = "structure",
    id = "TaskActionDefinition",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        References = {
            type = "map",
            key = { type = "string" },
            value = M.Reference,
        },
    },
}

M.UpdateCaseActionDefinition = {
    type = "structure",
    id = "UpdateCaseActionDefinition",
    members = {
        Fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
    },
}

M.RuleAction = {
    type = "structure",
    id = "RuleAction",
    members = {
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskAction = M.TaskActionDefinition,
        EventBridgeAction = M.EventBridgeActionDefinition,
        AssignContactCategoryAction = M.AssignContactCategoryActionDefinition,
        SendNotificationAction = M.SendNotificationActionDefinition,
        CreateCaseAction = M.CreateCaseActionDefinition,
        UpdateCaseAction = M.UpdateCaseActionDefinition,
        AssignSlaAction = M.AssignSlaActionDefinition,
        EndAssociatedTasksAction = M.EndAssociatedTasksActionDefinition,
        SubmitAutoEvaluationAction = M.SubmitAutoEvaluationActionDefinition,
    },
}

M.RulePublishStatus = {
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
}

M.EventSourceName = {
    OnPostCallAnalysisAvailable = "OnPostCallAnalysisAvailable",
    OnRealTimeCallAnalysisAvailable = "OnRealTimeCallAnalysisAvailable",
    OnRealTimeChatAnalysisAvailable = "OnRealTimeChatAnalysisAvailable",
    OnPostChatAnalysisAvailable = "OnPostChatAnalysisAvailable",
    OnEmailAnalysisAvailable = "OnEmailAnalysisAvailable",
    OnZendeskTicketCreate = "OnZendeskTicketCreate",
    OnZendeskTicketStatusUpdate = "OnZendeskTicketStatusUpdate",
    OnSalesforceCaseCreate = "OnSalesforceCaseCreate",
    OnContactEvaluationSubmit = "OnContactEvaluationSubmit",
    OnMetricDataUpdate = "OnMetricDataUpdate",
    OnCaseCreate = "OnCaseCreate",
    OnCaseUpdate = "OnCaseUpdate",
    OnSlaBreach = "OnSlaBreach",
}

M.RuleTriggerEventSource = {
    type = "structure",
    id = "RuleTriggerEventSource",
    members = {
        EventSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationAssociationId = {
            type = "string",
        },
    },
}

M.CreateRuleInput = {
    type = "structure",
    id = "CreateRuleInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TriggerEventSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTriggerEventSource }),
        Function = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = M.RuleAction,
            traits = {
                required = true,
            },
        },
        PublishStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateRuleOutput = {
    type = "structure",
    id = "CreateRuleOutput",
    members = {
        RuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationType = {
    MCP = "MCP",
    THIRD_PARTY_APPLICATION = "THIRD_PARTY_APPLICATION",
}

M.Application = {
    type = "structure",
    id = "Application",
    members = {
        Namespace = {
            type = "string",
        },
        ApplicationPermissions = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
    },
}

M.PrimaryAttributeValue = {
    type = "structure",
    id = "PrimaryAttributeValue",
    members = {
        AccessType = {
            type = "string",
        },
        AttributeName = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PrimaryAttributeAccessControlConfigurationItem = {
    type = "structure",
    id = "PrimaryAttributeAccessControlConfigurationItem",
    members = {
        PrimaryAttributeValues = {
            type = "list",
            member = M.PrimaryAttributeValue,
        },
    },
}

M.DataTableAccessControlConfiguration = {
    type = "structure",
    id = "DataTableAccessControlConfiguration",
    members = {
        PrimaryAttributeAccessControlConfiguration = M.PrimaryAttributeAccessControlConfigurationItem,
    },
}

M.GranularAccessControlConfiguration = {
    type = "structure",
    id = "GranularAccessControlConfiguration",
    members = {
        DataTableAccessControlConfiguration = M.DataTableAccessControlConfiguration,
    },
}

M.CreateSecurityProfileInput = {
    type = "structure",
    id = "CreateSecurityProfileInput",
    members = {
        SecurityProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AllowedAccessControlTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TagRestrictedResources = {
            type = "list",
            member = { type = "string" },
        },
        Applications = {
            type = "list",
            member = M.Application,
        },
        HierarchyRestrictedResources = {
            type = "list",
            member = { type = "string" },
        },
        AllowedAccessControlHierarchyGroupId = {
            type = "string",
        },
        AllowedFlowModules = {
            type = "list",
            member = M.FlowModule,
        },
        GranularAccessControlConfiguration = M.GranularAccessControlConfiguration,
    },
}

M.CreateSecurityProfileOutput = {
    type = "structure",
    id = "CreateSecurityProfileOutput",
    members = {
        SecurityProfileId = {
            type = "string",
        },
        SecurityProfileArn = {
            type = "string",
        },
    },
}

M.TaskTemplateFieldIdentifier = {
    type = "structure",
    id = "TaskTemplateFieldIdentifier",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.InvisibleFieldInfo = {
    type = "structure",
    id = "InvisibleFieldInfo",
    members = {
        Id = M.TaskTemplateFieldIdentifier,
    },
}

M.ReadOnlyFieldInfo = {
    type = "structure",
    id = "ReadOnlyFieldInfo",
    members = {
        Id = M.TaskTemplateFieldIdentifier,
    },
}

M.RequiredFieldInfo = {
    type = "structure",
    id = "RequiredFieldInfo",
    members = {
        Id = M.TaskTemplateFieldIdentifier,
    },
}

M.TaskTemplateConstraints = {
    type = "structure",
    id = "TaskTemplateConstraints",
    members = {
        RequiredFields = {
            type = "list",
            member = M.RequiredFieldInfo,
        },
        ReadOnlyFields = {
            type = "list",
            member = M.ReadOnlyFieldInfo,
        },
        InvisibleFields = {
            type = "list",
            member = M.InvisibleFieldInfo,
        },
    },
}

M.TaskTemplateDefaultFieldValue = {
    type = "structure",
    id = "TaskTemplateDefaultFieldValue",
    members = {
        Id = M.TaskTemplateFieldIdentifier,
        DefaultValue = {
            type = "string",
        },
    },
}

M.TaskTemplateDefaults = {
    type = "structure",
    id = "TaskTemplateDefaults",
    members = {
        DefaultFieldValues = {
            type = "list",
            member = M.TaskTemplateDefaultFieldValue,
        },
    },
}

M.TaskTemplateFieldType = {
    NAME = "NAME",
    DESCRIPTION = "DESCRIPTION",
    SCHEDULED_TIME = "SCHEDULED_TIME",
    QUICK_CONNECT = "QUICK_CONNECT",
    URL = "URL",
    NUMBER = "NUMBER",
    TEXT = "TEXT",
    TEXT_AREA = "TEXT_AREA",
    DATE_TIME = "DATE_TIME",
    BOOLEAN = "BOOLEAN",
    SINGLE_SELECT = "SINGLE_SELECT",
    EMAIL = "EMAIL",
    SELF_ASSIGN = "SELF_ASSIGN",
    EXPIRY_DURATION = "EXPIRY_DURATION",
}

M.TaskTemplateField = {
    type = "structure",
    id = "TaskTemplateField",
    members = {
        Id = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskTemplateFieldIdentifier }),
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        SingleSelectOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TaskTemplateStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.CreateTaskTemplateInput = {
    type = "structure",
    id = "CreateTaskTemplateInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
        },
        SelfAssignFlowId = {
            type = "string",
        },
        Constraints = M.TaskTemplateConstraints,
        Defaults = M.TaskTemplateDefaults,
        Status = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.TaskTemplateField,
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateTaskTemplateOutput = {
    type = "structure",
    id = "CreateTaskTemplateOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyValidationExceptionReason = {
    INVALID_FORMAT = "INVALID_FORMAT",
    UNIQUE_CONSTRAINT_VIOLATED = "UNIQUE_CONSTRAINT_VIOLATED",
    REFERENCED_RESOURCE_NOT_FOUND = "REFERENCED_RESOURCE_NOT_FOUND",
    RESOURCE_NAME_ALREADY_EXISTS = "RESOURCE_NAME_ALREADY_EXISTS",
    REQUIRED_PROPERTY_MISSING = "REQUIRED_PROPERTY_MISSING",
    NOT_SUPPORTED = "NOT_SUPPORTED",
}

M.PropertyValidationExceptionProperty = {
    type = "structure",
    id = "PropertyValidationExceptionProperty",
    members = {
        PropertyPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyValidationException = {
    type = "structure",
    id = "PropertyValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PropertyList = {
            type = "list",
            member = M.PropertyValidationExceptionProperty,
        },
    },
}

M.ChatEntryPointParameters = {
    type = "structure",
    id = "ChatEntryPointParameters",
    members = {
        FlowId = {
            type = "string",
        },
    },
}

M.TestCaseEntryPointType = {
    VOICE_CALL = "VOICE_CALL",
    CHAT = "CHAT",
}

M.VoiceCallEntryPointParameters = {
    type = "structure",
    id = "VoiceCallEntryPointParameters",
    members = {
        SourcePhoneNumber = {
            type = "string",
        },
        DestinationPhoneNumber = {
            type = "string",
        },
        FlowId = {
            type = "string",
        },
    },
}

M.TestCaseEntryPoint = {
    type = "structure",
    id = "TestCaseEntryPoint",
    members = {
        Type = {
            type = "string",
        },
        VoiceCallEntryPointParameters = M.VoiceCallEntryPointParameters,
        ChatEntryPointParameters = M.ChatEntryPointParameters,
    },
}

M.TestCaseStatus = {
    PUBLISHED = "PUBLISHED",
    SAVED = "SAVED",
}

M.CreateTestCaseInput = {
    type = "structure",
    id = "CreateTestCaseInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntryPoint = M.TestCaseEntryPoint,
        InitializationData = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_header = "x-amz-resource-id",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-last-modified-time",
            },
        },
        LastModifiedRegion = {
            type = "string",
            traits = {
                http_header = "x-amz-last-modified-region",
            },
        },
    },
}

M.CreateTestCaseOutput = {
    type = "structure",
    id = "CreateTestCaseOutput",
    members = {
        TestCaseId = {
            type = "string",
        },
        TestCaseArn = {
            type = "string",
        },
    },
}

M.InvalidTestCaseException = {
    type = "structure",
    id = "InvalidTestCaseException",
    error = "client",
    members = {
        Problems = {
            type = "list",
            member = M.ProblemDetail,
        },
    },
}

M.CreateTrafficDistributionGroupInput = {
    type = "structure",
    id = "CreateTrafficDistributionGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateTrafficDistributionGroupOutput = {
    type = "structure",
    id = "CreateTrafficDistributionGroupOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ResourceNotReadyException = {
    type = "structure",
    id = "ResourceNotReadyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UseCaseType = {
    RULES_EVALUATION = "RULES_EVALUATION",
    CONNECT_CAMPAIGNS = "CONNECT_CAMPAIGNS",
}

M.CreateUseCaseInput = {
    type = "structure",
    id = "CreateUseCaseInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UseCaseType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateUseCaseOutput = {
    type = "structure",
    id = "CreateUseCaseOutput",
    members = {
        UseCaseId = {
            type = "string",
        },
        UseCaseArn = {
            type = "string",
        },
    },
}

M.AutoAcceptConfig = {
    type = "structure",
    id = "AutoAcceptConfig",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoAccept = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AgentFirstCallbackAutoAccept = {
            type = "boolean",
        },
    },
}

M.UserIdentityInfo = {
    type = "structure",
    id = "UserIdentityInfo",
    members = {
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        SecondaryEmail = {
            type = "string",
        },
        Mobile = {
            type = "string",
        },
    },
}

M.PersistentConnectionConfig = {
    type = "structure",
    id = "PersistentConnectionConfig",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PersistentConnection = {
            type = "boolean",
            traits = {
                default = nil,
                required = true,
            },
        },
    },
}

M.PhoneType = {
    SOFT_PHONE = "SOFT_PHONE",
    DESK_PHONE = "DESK_PHONE",
}

M.UserPhoneConfig = {
    type = "structure",
    id = "UserPhoneConfig",
    members = {
        PhoneType = {
            type = "string",
            traits = {
                default = "SOFT_PHONE",
            },
        },
        AutoAccept = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AfterContactWorkTimeLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DeskPhoneNumber = {
            type = "string",
        },
        PersistentConnection = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.PhoneNumberConfig = {
    type = "structure",
    id = "PhoneNumberConfig",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumber = {
            type = "string",
        },
    },
}

M.VoiceEnhancementConfig = {
    type = "structure",
    id = "VoiceEnhancementConfig",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VoiceEnhancementMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
        },
        IdentityInfo = M.UserIdentityInfo,
        PhoneConfig = M.UserPhoneConfig,
        DirectoryUserId = {
            type = "string",
        },
        SecurityProfileIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HierarchyGroupId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutoAcceptConfigs = {
            type = "list",
            member = M.AutoAcceptConfig,
        },
        AfterContactWorkConfigs = {
            type = "list",
            member = M.AfterContactWorkConfigPerChannel,
        },
        PhoneNumberConfigs = {
            type = "list",
            member = M.PhoneNumberConfig,
        },
        PersistentConnectionConfigs = {
            type = "list",
            member = M.PersistentConnectionConfig,
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member = M.VoiceEnhancementConfig,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
    members = {
        UserId = {
            type = "string",
        },
        UserArn = {
            type = "string",
        },
    },
}

M.CreateUserHierarchyGroupInput = {
    type = "structure",
    id = "CreateUserHierarchyGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentGroupId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateUserHierarchyGroupOutput = {
    type = "structure",
    id = "CreateUserHierarchyGroupOutput",
    members = {
        HierarchyGroupId = {
            type = "string",
        },
        HierarchyGroupArn = {
            type = "string",
        },
    },
}

M.ViewInputContent = {
    type = "structure",
    id = "ViewInputContent",
    members = {
        Template = {
            type = "string",
        },
        Actions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ViewStatus = {
    PUBLISHED = "PUBLISHED",
    SAVED = "SAVED",
}

M.CreateViewInput = {
    type = "structure",
    id = "CreateViewInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ViewInputContent }),
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ViewContent = {
    type = "structure",
    id = "ViewContent",
    members = {
        InputSchema = {
            type = "string",
        },
        Template = {
            type = "string",
        },
        Actions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ViewType = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    AWS_MANAGED = "AWS_MANAGED",
}

M.View = {
    type = "structure",
    id = "View",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Version = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        VersionDescription = {
            type = "string",
        },
        Content = M.ViewContent,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        ViewContentSha256 = {
            type = "string",
        },
    },
}

M.CreateViewOutput = {
    type = "structure",
    id = "CreateViewOutput",
    members = {
        View = M.View,
    },
}

M.ResourceType = {
    CONTACT = "CONTACT",
    CONTACT_FLOW = "CONTACT_FLOW",
    INSTANCE = "INSTANCE",
    PARTICIPANT = "PARTICIPANT",
    HIERARCHY_LEVEL = "HIERARCHY_LEVEL",
    HIERARCHY_GROUP = "HIERARCHY_GROUP",
    USER = "USER",
    PHONE_NUMBER = "PHONE_NUMBER",
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateViewVersionInput = {
    type = "structure",
    id = "CreateViewVersionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionDescription = {
            type = "string",
        },
        ViewContentSha256 = {
            type = "string",
        },
    },
}

M.CreateViewVersionOutput = {
    type = "structure",
    id = "CreateViewVersionOutput",
    members = {
        View = M.View,
    },
}

M.CreateVocabularyInput = {
    type = "structure",
    id = "CreateVocabularyInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.VocabularyState = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    CREATION_FAILED = "CREATION_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.CreateVocabularyOutput = {
    type = "structure",
    id = "CreateVocabularyOutput",
    members = {
        VocabularyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VocabularyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImagesLogo = {
    type = "structure",
    id = "ImagesLogo",
    members = {
        Default = {
            type = "string",
        },
        Favicon = {
            type = "string",
        },
    },
}

M.WorkspaceThemeImages = {
    type = "structure",
    id = "WorkspaceThemeImages",
    members = {
        Logo = M.ImagesLogo,
    },
}

M.PaletteCanvas = {
    type = "structure",
    id = "PaletteCanvas",
    members = {
        ContainerBackground = {
            type = "string",
        },
        PageBackground = {
            type = "string",
        },
        ActiveBackground = {
            type = "string",
        },
    },
}

M.PaletteHeader = {
    type = "structure",
    id = "PaletteHeader",
    members = {
        Background = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        TextHover = {
            type = "string",
        },
        InvertActionsColors = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PaletteNavigation = {
    type = "structure",
    id = "PaletteNavigation",
    members = {
        Background = {
            type = "string",
        },
        TextBackgroundHover = {
            type = "string",
        },
        TextBackgroundActive = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        TextHover = {
            type = "string",
        },
        TextActive = {
            type = "string",
        },
        InvertActionsColors = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PalettePrimary = {
    type = "structure",
    id = "PalettePrimary",
    members = {
        Default = {
            type = "string",
        },
        Active = {
            type = "string",
        },
        ContrastText = {
            type = "string",
        },
    },
}

M.WorkspaceThemePalette = {
    type = "structure",
    id = "WorkspaceThemePalette",
    members = {
        Header = M.PaletteHeader,
        Navigation = M.PaletteNavigation,
        Canvas = M.PaletteCanvas,
        Primary = M.PalettePrimary,
    },
}

M.WorkspaceFontFamily = {
    ARIAL = "Arial",
    COURIER_NEW = "Courier New",
    GEORGIA = "Georgia",
    TIMES_NEW_ROMAN = "Times New Roman",
    TREBUCHET = "Trebuchet",
    VERDANA = "Verdana",
}

M.FontFamily = {
    type = "structure",
    id = "FontFamily",
    members = {
        Default = {
            type = "string",
        },
    },
}

M.WorkspaceThemeTypography = {
    type = "structure",
    id = "WorkspaceThemeTypography",
    members = {
        FontFamily = M.FontFamily,
    },
}

M.WorkspaceThemeConfig = {
    type = "structure",
    id = "WorkspaceThemeConfig",
    members = {
        Palette = M.WorkspaceThemePalette,
        Images = M.WorkspaceThemeImages,
        Typography = M.WorkspaceThemeTypography,
    },
}

M.WorkspaceTheme = {
    type = "structure",
    id = "WorkspaceTheme",
    members = {
        Light = M.WorkspaceThemeConfig,
        Dark = M.WorkspaceThemeConfig,
    },
}

M.CreateWorkspaceInput = {
    type = "structure",
    id = "CreateWorkspaceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Theme = M.WorkspaceTheme,
        Title = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateWorkspaceOutput = {
    type = "structure",
    id = "CreateWorkspaceOutput",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkspaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkspacePageInput = {
    type = "structure",
    id = "CreateWorkspacePageInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Page = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Slug = {
            type = "string",
        },
        InputData = {
            type = "string",
        },
    },
}

M.CreateWorkspacePageOutput = {
    type = "structure",
    id = "CreateWorkspacePageOutput",
}

M.DeactivateEvaluationFormInput = {
    type = "structure",
    id = "DeactivateEvaluationFormInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DeactivateEvaluationFormOutput = {
    type = "structure",
    id = "DeactivateEvaluationFormOutput",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DeleteAttachedFileInput = {
    type = "structure",
    id = "DeleteAttachedFileInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssociatedResourceArn = {
            type = "string",
            traits = {
                http_query = "associatedResourceArn",
                required = true,
            },
        },
    },
}

M.DeleteAttachedFileOutput = {
    type = "structure",
    id = "DeleteAttachedFileOutput",
}

M.DeleteContactEvaluationInput = {
    type = "structure",
    id = "DeleteContactEvaluationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactEvaluationOutput = {
    type = "structure",
    id = "DeleteContactEvaluationOutput",
}

M.DeleteContactFlowInput = {
    type = "structure",
    id = "DeleteContactFlowInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactFlowOutput = {
    type = "structure",
    id = "DeleteContactFlowOutput",
}

M.DeleteContactFlowModuleInput = {
    type = "structure",
    id = "DeleteContactFlowModuleInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactFlowModuleOutput = {
    type = "structure",
    id = "DeleteContactFlowModuleOutput",
}

M.DeleteContactFlowModuleAliasInput = {
    type = "structure",
    id = "DeleteContactFlowModuleAliasInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactFlowModuleAliasOutput = {
    type = "structure",
    id = "DeleteContactFlowModuleAliasOutput",
}

M.DeleteContactFlowModuleVersionInput = {
    type = "structure",
    id = "DeleteContactFlowModuleVersionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleVersion = {
            type = "long",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactFlowModuleVersionOutput = {
    type = "structure",
    id = "DeleteContactFlowModuleVersionOutput",
}

M.DeleteContactFlowVersionInput = {
    type = "structure",
    id = "DeleteContactFlowVersionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowVersion = {
            type = "long",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactFlowVersionOutput = {
    type = "structure",
    id = "DeleteContactFlowVersionOutput",
}

M.DeleteDataTableInput = {
    type = "structure",
    id = "DeleteDataTableInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataTableOutput = {
    type = "structure",
    id = "DeleteDataTableOutput",
}

M.DeleteDataTableAttributeInput = {
    type = "structure",
    id = "DeleteDataTableAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataTableAttributeOutput = {
    type = "structure",
    id = "DeleteDataTableAttributeOutput",
    members = {
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.DeleteEmailAddressInput = {
    type = "structure",
    id = "DeleteEmailAddressInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddressId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEmailAddressOutput = {
    type = "structure",
    id = "DeleteEmailAddressOutput",
}

M.DeleteEvaluationFormInput = {
    type = "structure",
    id = "DeleteEvaluationFormInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "version",
            },
        },
    },
}

M.DeleteEvaluationFormOutput = {
    type = "structure",
    id = "DeleteEvaluationFormOutput",
}

M.DeleteHoursOfOperationInput = {
    type = "structure",
    id = "DeleteHoursOfOperationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteHoursOfOperationOutput = {
    type = "structure",
    id = "DeleteHoursOfOperationOutput",
}

M.DeleteHoursOfOperationOverrideInput = {
    type = "structure",
    id = "DeleteHoursOfOperationOverrideInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationOverrideId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteHoursOfOperationOverrideOutput = {
    type = "structure",
    id = "DeleteHoursOfOperationOverrideOutput",
}

M.DeleteInstanceInput = {
    type = "structure",
    id = "DeleteInstanceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteInstanceOutput = {
    type = "structure",
    id = "DeleteInstanceOutput",
}

M.DeleteIntegrationAssociationInput = {
    type = "structure",
    id = "DeleteIntegrationAssociationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIntegrationAssociationOutput = {
    type = "structure",
    id = "DeleteIntegrationAssociationOutput",
}

M.DeleteNotificationInput = {
    type = "structure",
    id = "DeleteNotificationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NotificationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNotificationOutput = {
    type = "structure",
    id = "DeleteNotificationOutput",
}

M.DeletePredefinedAttributeInput = {
    type = "structure",
    id = "DeletePredefinedAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePredefinedAttributeOutput = {
    type = "structure",
    id = "DeletePredefinedAttributeOutput",
}

M.DeletePromptInput = {
    type = "structure",
    id = "DeletePromptInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePromptOutput = {
    type = "structure",
    id = "DeletePromptOutput",
}

M.DeletePushNotificationRegistrationInput = {
    type = "structure",
    id = "DeletePushNotificationRegistrationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_query = "contactId",
                required = true,
            },
        },
    },
}

M.DeletePushNotificationRegistrationOutput = {
    type = "structure",
    id = "DeletePushNotificationRegistrationOutput",
}

M.DeleteQueueInput = {
    type = "structure",
    id = "DeleteQueueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteQueueOutput = {
    type = "structure",
    id = "DeleteQueueOutput",
}

M.DeleteQuickConnectInput = {
    type = "structure",
    id = "DeleteQuickConnectInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuickConnectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteQuickConnectOutput = {
    type = "structure",
    id = "DeleteQuickConnectOutput",
}

M.DeleteRoutingProfileInput = {
    type = "structure",
    id = "DeleteRoutingProfileInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoutingProfileOutput = {
    type = "structure",
    id = "DeleteRoutingProfileOutput",
}

M.DeleteRuleInput = {
    type = "structure",
    id = "DeleteRuleInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
    id = "DeleteRuleOutput",
}

M.DeleteSecurityProfileInput = {
    type = "structure",
    id = "DeleteSecurityProfileInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SecurityProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSecurityProfileOutput = {
    type = "structure",
    id = "DeleteSecurityProfileOutput",
}

M.DeleteTaskTemplateInput = {
    type = "structure",
    id = "DeleteTaskTemplateInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TaskTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTaskTemplateOutput = {
    type = "structure",
    id = "DeleteTaskTemplateOutput",
}

M.DeleteTestCaseInput = {
    type = "structure",
    id = "DeleteTestCaseInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTestCaseOutput = {
    type = "structure",
    id = "DeleteTestCaseOutput",
}

M.DeleteTrafficDistributionGroupInput = {
    type = "structure",
    id = "DeleteTrafficDistributionGroupInput",
    members = {
        TrafficDistributionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrafficDistributionGroupOutput = {
    type = "structure",
    id = "DeleteTrafficDistributionGroupOutput",
}

M.DeleteUseCaseInput = {
    type = "structure",
    id = "DeleteUseCaseInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UseCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUseCaseOutput = {
    type = "structure",
    id = "DeleteUseCaseOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    id = "DeleteUserOutput",
}

M.DeleteUserHierarchyGroupInput = {
    type = "structure",
    id = "DeleteUserHierarchyGroupInput",
    members = {
        HierarchyGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserHierarchyGroupOutput = {
    type = "structure",
    id = "DeleteUserHierarchyGroupOutput",
}

M.DeleteViewInput = {
    type = "structure",
    id = "DeleteViewInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteViewOutput = {
    type = "structure",
    id = "DeleteViewOutput",
}

M.DeleteViewVersionInput = {
    type = "structure",
    id = "DeleteViewVersionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewVersion = {
            type = "integer",
            traits = {
                default = nil,
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteViewVersionOutput = {
    type = "structure",
    id = "DeleteViewVersionOutput",
}

M.DeleteVocabularyInput = {
    type = "structure",
    id = "DeleteVocabularyInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VocabularyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVocabularyOutput = {
    type = "structure",
    id = "DeleteVocabularyOutput",
    members = {
        VocabularyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VocabularyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceInput = {
    type = "structure",
    id = "DeleteWorkspaceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceOutput = {
    type = "structure",
    id = "DeleteWorkspaceOutput",
}

M.MediaType = {
    IMAGE_LOGO_LIGHT_FAVICON = "IMAGE_LOGO_LIGHT_FAVICON",
    IMAGE_LOGO_DARK_FAVICON = "IMAGE_LOGO_DARK_FAVICON",
    IMAGE_LOGO_LIGHT_HORIZONTAL = "IMAGE_LOGO_LIGHT_HORIZONTAL",
    IMAGE_LOGO_DARK_HORIZONTAL = "IMAGE_LOGO_DARK_HORIZONTAL",
}

M.DeleteWorkspaceMediaInput = {
    type = "structure",
    id = "DeleteWorkspaceMediaInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MediaType = {
            type = "string",
            traits = {
                http_query = "mediaType",
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceMediaOutput = {
    type = "structure",
    id = "DeleteWorkspaceMediaOutput",
}

M.DeleteWorkspacePageInput = {
    type = "structure",
    id = "DeleteWorkspacePageInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Page = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkspacePageOutput = {
    type = "structure",
    id = "DeleteWorkspacePageOutput",
}

M.DescribeAgentStatusInput = {
    type = "structure",
    id = "DescribeAgentStatusInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AgentStatusId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAgentStatusOutput = {
    type = "structure",
    id = "DescribeAgentStatusOutput",
    members = {
        AgentStatus = M.AgentStatus,
    },
}

M.AttachmentScope = {
    EMAIL = "EMAIL",
    CHAT = "CHAT",
    CASE = "CASE",
    TASK = "TASK",
}

M.DescribeAttachedFilesConfigurationInput = {
    type = "structure",
    id = "DescribeAttachedFilesConfigurationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttachmentScope = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExtensionConfiguration = {
    type = "structure",
    id = "ExtensionConfiguration",
    members = {
        AllowedExtensions = {
            type = "list",
            member = M.AllowedExtension,
            traits = {
                required = true,
            },
        },
    },
}

M.AttachedFilesConfiguration = {
    type = "structure",
    id = "AttachedFilesConfiguration",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumSizeLimitInBytes = {
            type = "long",
        },
        ExtensionConfiguration = M.ExtensionConfiguration,
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeAttachedFilesConfigurationOutput = {
    type = "structure",
    id = "DescribeAttachedFilesConfigurationOutput",
    members = {
        AttachedFilesConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttachedFilesConfiguration }),
    },
}

M.DescribeAuthenticationProfileInput = {
    type = "structure",
    id = "DescribeAuthenticationProfileInput",
    members = {
        AuthenticationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AuthenticationProfile = {
    type = "structure",
    id = "AuthenticationProfile",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AllowedIps = {
            type = "list",
            member = { type = "string" },
        },
        BlockedIps = {
            type = "list",
            member = { type = "string" },
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        PeriodicSessionDuration = {
            type = "integer",
        },
        MaxSessionDuration = {
            type = "integer",
        },
        SessionInactivityDuration = {
            type = "integer",
        },
        SessionInactivityHandlingEnabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.DescribeAuthenticationProfileOutput = {
    type = "structure",
    id = "DescribeAuthenticationProfileOutput",
    members = {
        AuthenticationProfile = M.AuthenticationProfile,
    },
}

M.DescribeContactInput = {
    type = "structure",
    id = "DescribeContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AnsweringMachineDetectionStatus = {
    ANSWERED = "ANSWERED",
    UNDETECTED = "UNDETECTED",
    ERROR = "ERROR",
    HUMAN_ANSWERED = "HUMAN_ANSWERED",
    SIT_TONE_DETECTED = "SIT_TONE_DETECTED",
    SIT_TONE_BUSY = "SIT_TONE_BUSY",
    SIT_TONE_INVALID_NUMBER = "SIT_TONE_INVALID_NUMBER",
    FAX_MACHINE_DETECTED = "FAX_MACHINE_DETECTED",
    VOICEMAIL_BEEP = "VOICEMAIL_BEEP",
    VOICEMAIL_NO_BEEP = "VOICEMAIL_NO_BEEP",
    AMD_UNRESOLVED = "AMD_UNRESOLVED",
    AMD_UNANSWERED = "AMD_UNANSWERED",
    AMD_ERROR = "AMD_ERROR",
    AMD_NOT_APPLICABLE = "AMD_NOT_APPLICABLE",
}

M.ParticipantType = {
    ALL = "ALL",
    MANAGER = "MANAGER",
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
    THIRDPARTY = "THIRDPARTY",
}

M.ParticipantMetrics = {
    type = "structure",
    id = "ParticipantMetrics",
    members = {
        ParticipantId = {
            type = "string",
        },
        ParticipantType = {
            type = "string",
        },
        ConversationAbandon = {
            type = "boolean",
        },
        MessagesSent = {
            type = "integer",
        },
        NumResponses = {
            type = "integer",
        },
        MessageLengthInChars = {
            type = "integer",
        },
        TotalResponseTimeInMillis = {
            type = "long",
        },
        MaxResponseTimeInMillis = {
            type = "long",
        },
        LastMessageTimestamp = {
            type = "timestamp",
        },
    },
}

M.ChatContactMetrics = {
    type = "structure",
    id = "ChatContactMetrics",
    members = {
        MultiParty = {
            type = "boolean",
        },
        TotalMessages = {
            type = "integer",
        },
        TotalBotMessages = {
            type = "integer",
        },
        TotalBotMessageLengthInChars = {
            type = "integer",
        },
        ConversationCloseTimeInMillis = {
            type = "long",
        },
        ConversationTurnCount = {
            type = "integer",
        },
        AgentFirstResponseTimestamp = {
            type = "timestamp",
        },
        AgentFirstResponseTimeInMillis = {
            type = "long",
        },
    },
}

M.ChatMetrics = {
    type = "structure",
    id = "ChatMetrics",
    members = {
        ChatContactMetrics = M.ChatContactMetrics,
        AgentMetrics = M.ParticipantMetrics,
        CustomerMetrics = M.ParticipantMetrics,
    },
}

M.ContactDetails = {
    type = "structure",
    id = "ContactDetails",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.Status = {
    COMPLETE = "COMPLETE",
    IN_PROGRESS = "IN_PROGRESS",
    DELETED = "DELETED",
}

M.ContactEvaluation = {
    type = "structure",
    id = "ContactEvaluation",
    members = {
        FormId = {
            type = "string",
        },
        EvaluationArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
        DeleteTimestamp = {
            type = "timestamp",
        },
        ExportLocation = {
            type = "string",
        },
    },
}

M.Customer = {
    type = "structure",
    id = "Customer",
    members = {
        DeviceInfo = M.DeviceInfo,
        Capabilities = M.ParticipantCapabilities,
    },
}

M.EndpointInfo = {
    type = "structure",
    id = "EndpointInfo",
    members = {
        Type = {
            type = "string",
        },
        Address = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.CustomerVoiceActivity = {
    type = "structure",
    id = "CustomerVoiceActivity",
    members = {
        GreetingStartTimestamp = {
            type = "timestamp",
        },
        GreetingEndTimestamp = {
            type = "timestamp",
        },
    },
}

M.DisconnectDetails = {
    type = "structure",
    id = "DisconnectDetails",
    members = {
        PotentialDisconnectIssue = {
            type = "string",
        },
    },
}

M.GlobalResiliencyMetadata = {
    type = "structure",
    id = "GlobalResiliencyMetadata",
    members = {
        ActiveRegion = {
            type = "string",
        },
        OriginRegion = {
            type = "string",
        },
        TrafficDistributionGroupId = {
            type = "string",
        },
    },
}

M.QuickConnectContactData = {
    type = "structure",
    id = "QuickConnectContactData",
    members = {
        ContactId = {
            type = "string",
        },
        InitiationTimestamp = {
            type = "timestamp",
        },
        QuickConnectId = {
            type = "string",
        },
        QuickConnectName = {
            type = "string",
        },
        QuickConnectType = {
            type = "string",
        },
    },
}

M.NextContactMetadata = {
    type = "union",
    id = "NextContactMetadata",
    members = {
        QuickConnectContactData = M.QuickConnectContactData,
    },
}

M.NextContactType = {
    QUICK_CONNECT = "QUICK_CONNECT",
}

M.NextContactEntry = {
    type = "structure",
    id = "NextContactEntry",
    members = {
        Type = {
            type = "string",
        },
        NextContactMetadata = M.NextContactMetadata,
    },
}

M.CustomerQualityMetrics = {
    type = "structure",
    id = "CustomerQualityMetrics",
    members = {
        Audio = M.AudioQualityMetricsInfo,
    },
}

M.QualityMetrics = {
    type = "structure",
    id = "QualityMetrics",
    members = {
        Agent = M.AgentQualityMetrics,
        Customer = M.CustomerQualityMetrics,
    },
}

M.QueueInfo = {
    type = "structure",
    id = "QueueInfo",
    members = {
        Id = {
            type = "string",
        },
        EnqueueTimestamp = {
            type = "timestamp",
        },
    },
}

M.MediaStreamType = {
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.RecordingStatus = {
    AVAILABLE = "AVAILABLE",
    DELETED = "DELETED",
}

M.RecordingInfo = {
    type = "structure",
    id = "RecordingInfo",
    members = {
        StorageType = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        MediaStreamType = {
            type = "string",
        },
        ParticipantType = {
            type = "string",
        },
        FragmentStartNumber = {
            type = "string",
        },
        FragmentStopNumber = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
        },
        StopTimestamp = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        DeletionReason = {
            type = "string",
        },
        UnprocessedTranscriptLocation = {
            type = "string",
        },
    },
}

M.Expiry = {
    type = "structure",
    id = "Expiry",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
        ExpiryTimestamp = {
            type = "timestamp",
        },
    },
}

M.MatchCriteria = {
    type = "structure",
    id = "MatchCriteria",
    members = {
        AgentsCriteria = M.AgentsCriteria,
    },
}

M.Range = {
    type = "structure",
    id = "Range",
    members = {
        MinProficiencyLevel = {
            type = "float",
        },
        MaxProficiencyLevel = {
            type = "float",
        },
    },
}

M.AttributeCondition = {
    type = "structure",
    id = "AttributeCondition",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        ProficiencyLevel = {
            type = "float",
        },
        Range = M.Range,
        MatchCriteria = M.MatchCriteria,
        ComparisonOperator = {
            type = "string",
        },
    },
}

M.RoutingCriteriaStepStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    JOINED = "JOINED",
    EXPIRED = "EXPIRED",
}

M.TaskTemplateInfoV2 = {
    type = "structure",
    id = "TaskTemplateInfoV2",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.WisdomInfo = {
    type = "structure",
    id = "WisdomInfo",
    members = {
        SessionArn = {
            type = "string",
        },
        AiAgents = {
            type = "list",
            member = M.AiAgentInfo,
        },
    },
}

M.DescribeContactEvaluationInput = {
    type = "structure",
    id = "DescribeContactEvaluationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QuestionRuleCategoryAutomationCondition = {
    PRESENT = "PRESENT",
    NOT_PRESENT = "NOT_PRESENT",
}

M.EvaluationSuggestedAnswerTranscriptMillisecondOffsets = {
    type = "structure",
    id = "EvaluationSuggestedAnswerTranscriptMillisecondOffsets",
    members = {
        BeginOffsetMillis = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.EvaluationTranscriptPointOfInterest = {
    type = "structure",
    id = "EvaluationTranscriptPointOfInterest",
    members = {
        MillisecondOffsets = M.EvaluationSuggestedAnswerTranscriptMillisecondOffsets,
        TranscriptSegment = {
            type = "string",
        },
    },
}

M.EvaluationAutomationRuleCategory = {
    type = "structure",
    id = "EvaluationAutomationRuleCategory",
    members = {
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PointsOfInterest = {
            type = "list",
            member = M.EvaluationTranscriptPointOfInterest,
        },
    },
}

M.EvaluationContactLensAnswerAnalysisDetails = {
    type = "structure",
    id = "EvaluationContactLensAnswerAnalysisDetails",
    members = {
        MatchedRuleCategories = {
            type = "list",
            member = M.EvaluationAutomationRuleCategory,
        },
    },
}

M.EvaluationGenAIAnswerAnalysisDetails = {
    type = "structure",
    id = "EvaluationGenAIAnswerAnalysisDetails",
    members = {
        Justification = {
            type = "string",
        },
        PointsOfInterest = {
            type = "list",
            member = M.EvaluationTranscriptPointOfInterest,
        },
    },
}

M.EvaluationQuestionAnswerAnalysisDetails = {
    type = "union",
    id = "EvaluationQuestionAnswerAnalysisDetails",
    members = {
        GenAI = M.EvaluationGenAIAnswerAnalysisDetails,
        ContactLens = M.EvaluationContactLensAnswerAnalysisDetails,
    },
}

M.EvaluationQuestionAnswerAnalysisType = {
    CONTACT_LENS_DATA = "CONTACT_LENS_DATA",
    GEN_AI = "GEN_AI",
}

M.EvaluationTranscriptType = {
    RAW = "RAW",
    REDACTED = "REDACTED",
}

M.EvaluationQuestionInputDetails = {
    type = "structure",
    id = "EvaluationQuestionInputDetails",
    members = {
        TranscriptType = {
            type = "string",
        },
    },
}

M.EvaluationSuggestedAnswerStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.EvaluationAnswerData = {
    type = "union",
    id = "EvaluationAnswerData",
    members = {
        StringValue = {
            type = "string",
        },
        NumericValue = {
            type = "double",
        },
        StringValues = {
            type = "list",
            member = { type = "string" },
        },
        DateTimeValue = {
            type = "string",
        },
        NotApplicable = {
            type = "boolean",
        },
    },
}

M.EvaluationSuggestedAnswer = {
    type = "structure",
    id = "EvaluationSuggestedAnswer",
    members = {
        Value = M.EvaluationAnswerData,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Input = M.EvaluationQuestionInputDetails,
        AnalysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisDetails = M.EvaluationQuestionAnswerAnalysisDetails,
    },
}

M.EvaluationAnswerOutput = {
    type = "structure",
    id = "EvaluationAnswerOutput",
    members = {
        Value = M.EvaluationAnswerData,
        SystemSuggestedValue = M.EvaluationAnswerData,
        SuggestedAnswers = {
            type = "list",
            member = M.EvaluationSuggestedAnswer,
        },
    },
}

M.EvaluationType = {
    STANDARD = "STANDARD",
    CALIBRATION = "CALIBRATION",
}

M.EvaluationAcknowledgement = {
    type = "structure",
    id = "EvaluationAcknowledgement",
    members = {
        AcknowledgedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AcknowledgedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcknowledgerComment = {
            type = "string",
        },
    },
}

M.AutoEvaluationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.AutoEvaluationDetails = {
    type = "structure",
    id = "AutoEvaluationDetails",
    members = {
        AutoEvaluationEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AutoEvaluationStatus = {
            type = "string",
        },
    },
}

M.ContactParticipantRole = {
    AGENT = "AGENT",
    SYSTEM = "SYSTEM",
    CUSTOM_BOT = "CUSTOM_BOT",
    CUSTOMER = "CUSTOMER",
}

M.EvaluationContactParticipant = {
    type = "structure",
    id = "EvaluationContactParticipant",
    members = {
        ContactParticipantRole = {
            type = "string",
        },
        ContactParticipantId = {
            type = "string",
        },
    },
}

M.EvaluationReviewRequestComment = {
    type = "structure",
    id = "EvaluationReviewRequestComment",
    members = {
        Comment = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.EvaluationReviewMetadata = {
    type = "structure",
    id = "EvaluationReviewMetadata",
    members = {
        ReviewId = {
            type = "string",
        },
        RequestedTime = {
            type = "timestamp",
        },
        RequestedBy = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                default = 0,
            },
        },
        CreatedBy = {
            type = "string",
            traits = {
                default = "n/a",
            },
        },
        ReviewRequestComments = {
            type = "list",
            member = M.EvaluationReviewRequestComment,
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationScore = {
    type = "structure",
    id = "EvaluationScore",
    members = {
        Percentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        NotApplicable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutomaticFail = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AppliedWeight = {
            type = "double",
        },
    },
}

M.EvaluationMetadata = {
    type = "structure",
    id = "EvaluationMetadata",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactAgentId = {
            type = "string",
        },
        CalibrationSessionId = {
            type = "string",
        },
        Score = M.EvaluationScore,
        AutoEvaluation = M.AutoEvaluationDetails,
        Acknowledgement = M.EvaluationAcknowledgement,
        Review = M.EvaluationReviewMetadata,
        ContactParticipant = M.EvaluationContactParticipant,
        SamplingJobId = {
            type = "string",
        },
    },
}

M.EvaluationNote = {
    type = "structure",
    id = "EvaluationNote",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.EvaluationStatus = {
    DRAFT = "DRAFT",
    SUBMITTED = "SUBMITTED",
    REVIEW_REQUESTED = "REVIEW_REQUESTED",
    UNDER_REVIEW = "UNDER_REVIEW",
}

M.Evaluation = {
    type = "structure",
    id = "Evaluation",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationMetadata }),
        Answers = {
            type = "map",
            key = { type = "string" },
            value = M.EvaluationAnswerOutput,
            traits = {
                required = true,
            },
        },
        Notes = {
            type = "map",
            key = { type = "string" },
            value = M.EvaluationNote,
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scores = {
            type = "map",
            key = { type = "string" },
            value = M.EvaluationScore,
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EvaluationType = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ContactFlowNotPublishedException = {
    type = "structure",
    id = "ContactFlowNotPublishedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeContactFlowInput = {
    type = "structure",
    id = "DescribeContactFlowInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ContactFlowState = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.ContactFlow = {
    type = "structure",
    id = "ContactFlow",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        FlowContentSha256 = {
            type = "string",
        },
        Version = {
            type = "long",
        },
        VersionDescription = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribeContactFlowOutput = {
    type = "structure",
    id = "DescribeContactFlowOutput",
    members = {
        ContactFlow = M.ContactFlow,
    },
}

M.DescribeContactFlowModuleInput = {
    type = "structure",
    id = "DescribeContactFlowModuleInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ContactFlowModuleState = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.ContactFlowModuleStatus = {
    PUBLISHED = "PUBLISHED",
    SAVED = "SAVED",
}

M.ContactFlowModule = {
    type = "structure",
    id = "ContactFlowModule",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        FlowModuleContentSha256 = {
            type = "string",
        },
        Version = {
            type = "long",
        },
        VersionDescription = {
            type = "string",
        },
        Settings = {
            type = "string",
        },
        ExternalInvocationConfiguration = M.ExternalInvocationConfiguration,
    },
}

M.DescribeContactFlowModuleOutput = {
    type = "structure",
    id = "DescribeContactFlowModuleOutput",
    members = {
        ContactFlowModule = M.ContactFlowModule,
    },
}

M.DescribeContactFlowModuleAliasInput = {
    type = "structure",
    id = "DescribeContactFlowModuleAliasInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ContactFlowModuleAliasInfo = {
    type = "structure",
    id = "ContactFlowModuleAliasInfo",
    members = {
        ContactFlowModuleId = {
            type = "string",
        },
        ContactFlowModuleArn = {
            type = "string",
        },
        AliasId = {
            type = "string",
        },
        Version = {
            type = "long",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LastModifiedRegion = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeContactFlowModuleAliasOutput = {
    type = "structure",
    id = "DescribeContactFlowModuleAliasOutput",
    members = {
        ContactFlowModuleAlias = M.ContactFlowModuleAliasInfo,
    },
}

M.DescribeDataTableInput = {
    type = "structure",
    id = "DescribeDataTableInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataTable = {
    type = "structure",
    id = "DataTable",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ValueLockLevel = {
            type = "string",
        },
        LockVersion = M.DataTableLockVersion,
        Version = {
            type = "string",
        },
        VersionDescription = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedRegion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeDataTableOutput = {
    type = "structure",
    id = "DescribeDataTableOutput",
    members = {
        DataTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTable }),
    },
}

M.DescribeDataTableAttributeInput = {
    type = "structure",
    id = "DescribeDataTableAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataTableAttribute = {
    type = "structure",
    id = "DataTableAttribute",
    members = {
        AttributeId = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DataTableId = {
            type = "string",
        },
        DataTableArn = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Version = {
            type = "string",
        },
        LockVersion = M.DataTableLockVersion,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        Validation = M.Validation,
    },
}

M.DescribeDataTableAttributeOutput = {
    type = "structure",
    id = "DescribeDataTableAttributeOutput",
    members = {
        Attribute = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableAttribute }),
    },
}

M.DescribeEmailAddressInput = {
    type = "structure",
    id = "DescribeEmailAddressInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddressId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeEmailAddressOutput = {
    type = "structure",
    id = "DescribeEmailAddressOutput",
    members = {
        EmailAddressId = {
            type = "string",
        },
        EmailAddressArn = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreateTimestamp = {
            type = "string",
        },
        ModifiedTimestamp = {
            type = "string",
        },
        AliasConfigurations = {
            type = "list",
            member = M.AliasConfiguration,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeEvaluationFormInput = {
    type = "structure",
    id = "DescribeEvaluationFormInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "version",
            },
        },
    },
}

M.EvaluationFormVersionStatus = {
    DRAFT = "DRAFT",
    ACTIVE = "ACTIVE",
}

M.DescribeHoursOfOperationInput = {
    type = "structure",
    id = "DescribeHoursOfOperationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HoursOfOperationsIdentifier = {
    type = "structure",
    id = "HoursOfOperationsIdentifier",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
    },
}

M.HoursOfOperation = {
    type = "structure",
    id = "HoursOfOperation",
    members = {
        HoursOfOperationId = {
            type = "string",
        },
        HoursOfOperationArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TimeZone = {
            type = "string",
        },
        Config = {
            type = "list",
            member = M.HoursOfOperationConfig,
        },
        ParentHoursOfOperations = {
            type = "list",
            member = M.HoursOfOperationsIdentifier,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribeHoursOfOperationOutput = {
    type = "structure",
    id = "DescribeHoursOfOperationOutput",
    members = {
        HoursOfOperation = M.HoursOfOperation,
    },
}

M.DescribeHoursOfOperationOverrideInput = {
    type = "structure",
    id = "DescribeHoursOfOperationOverrideInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationOverrideId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HoursOfOperationOverride = {
    type = "structure",
    id = "HoursOfOperationOverride",
    members = {
        HoursOfOperationOverrideId = {
            type = "string",
        },
        HoursOfOperationId = {
            type = "string",
        },
        HoursOfOperationArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Config = {
            type = "list",
            member = M.HoursOfOperationOverrideConfig,
        },
        EffectiveFrom = {
            type = "string",
        },
        EffectiveTill = {
            type = "string",
        },
        RecurrenceConfig = M.RecurrenceConfig,
        OverrideType = {
            type = "string",
        },
    },
}

M.DescribeHoursOfOperationOverrideOutput = {
    type = "structure",
    id = "DescribeHoursOfOperationOverrideOutput",
    members = {
        HoursOfOperationOverride = M.HoursOfOperationOverride,
    },
}

M.DescribeInstanceInput = {
    type = "structure",
    id = "DescribeInstanceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InstanceStatus = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    CREATION_FAILED = "CREATION_FAILED",
}

M.InstanceStatusReason = {
    type = "structure",
    id = "InstanceStatusReason",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        IdentityManagementType = {
            type = "string",
        },
        InstanceAlias = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        ServiceRole = {
            type = "string",
        },
        InstanceStatus = {
            type = "string",
        },
        StatusReason = M.InstanceStatusReason,
        InboundCallsEnabled = {
            type = "boolean",
        },
        OutboundCallsEnabled = {
            type = "boolean",
        },
        InstanceAccessUrl = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InstanceReplicationStatus = {
    INSTANCE_REPLICATION_COMPLETE = "INSTANCE_REPLICATION_COMPLETE",
    INSTANCE_REPLICATION_IN_PROGRESS = "INSTANCE_REPLICATION_IN_PROGRESS",
    INSTANCE_REPLICATION_FAILED = "INSTANCE_REPLICATION_FAILED",
    INSTANCE_REPLICA_DELETING = "INSTANCE_REPLICA_DELETING",
    INSTANCE_REPLICATION_DELETION_FAILED = "INSTANCE_REPLICATION_DELETION_FAILED",
    RESOURCE_REPLICATION_NOT_STARTED = "RESOURCE_REPLICATION_NOT_STARTED",
}

M.ReplicationStatusSummary = {
    type = "structure",
    id = "ReplicationStatusSummary",
    members = {
        Region = {
            type = "string",
        },
        ReplicationStatus = {
            type = "string",
        },
        ReplicationStatusReason = {
            type = "string",
        },
    },
}

M.ReplicationConfiguration = {
    type = "structure",
    id = "ReplicationConfiguration",
    members = {
        ReplicationStatusSummaryList = {
            type = "list",
            member = M.ReplicationStatusSummary,
        },
        SourceRegion = {
            type = "string",
        },
        GlobalSignInEndpoint = {
            type = "string",
        },
    },
}

M.DescribeInstanceOutput = {
    type = "structure",
    id = "DescribeInstanceOutput",
    members = {
        Instance = M.Instance,
        ReplicationConfiguration = M.ReplicationConfiguration,
    },
}

M.InstanceAttributeType = {
    INBOUND_CALLS = "INBOUND_CALLS",
    OUTBOUND_CALLS = "OUTBOUND_CALLS",
    CONTACTFLOW_LOGS = "CONTACTFLOW_LOGS",
    CONTACT_LENS = "CONTACT_LENS",
    AUTO_RESOLVE_BEST_VOICES = "AUTO_RESOLVE_BEST_VOICES",
    USE_CUSTOM_TTS_VOICES = "USE_CUSTOM_TTS_VOICES",
    EARLY_MEDIA = "EARLY_MEDIA",
    MULTI_PARTY_CONFERENCE = "MULTI_PARTY_CONFERENCE",
    HIGH_VOLUME_OUTBOUND = "HIGH_VOLUME_OUTBOUND",
    ENHANCED_CONTACT_MONITORING = "ENHANCED_CONTACT_MONITORING",
    ENHANCED_CHAT_MONITORING = "ENHANCED_CHAT_MONITORING",
    MULTI_PARTY_CHAT_CONFERENCE = "MULTI_PARTY_CHAT_CONFERENCE",
    MESSAGE_STREAMING = "MESSAGE_STREAMING",
}

M.DescribeInstanceAttributeInput = {
    type = "structure",
    id = "DescribeInstanceAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Attribute = {
    type = "structure",
    id = "Attribute",
    members = {
        AttributeType = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DescribeInstanceAttributeOutput = {
    type = "structure",
    id = "DescribeInstanceAttributeOutput",
    members = {
        Attribute = M.Attribute,
    },
}

M.DescribeInstanceStorageConfigInput = {
    type = "structure",
    id = "DescribeInstanceStorageConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.DescribeInstanceStorageConfigOutput = {
    type = "structure",
    id = "DescribeInstanceStorageConfigOutput",
    members = {
        StorageConfig = M.InstanceStorageConfig,
    },
}

M.DescribeNotificationInput = {
    type = "structure",
    id = "DescribeNotificationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NotificationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NotificationPriority = {
    Urgent = "URGENT",
    High = "HIGH",
    Low = "LOW",
}

M.Notification = {
    type = "structure",
    id = "Notification",
    members = {
        Content = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "string",
        },
        Recipients = {
            type = "list",
            member = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
        },
        ExpiresAt = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeNotificationOutput = {
    type = "structure",
    id = "DescribeNotificationOutput",
    members = {
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
    },
}

M.DescribePhoneNumberInput = {
    type = "structure",
    id = "DescribePhoneNumberInput",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PhoneNumberCountryCode = {
    AF = "AF",
    AL = "AL",
    DZ = "DZ",
    AS = "AS",
    AD = "AD",
    AO = "AO",
    AI = "AI",
    AQ = "AQ",
    AG = "AG",
    AR = "AR",
    AM = "AM",
    AW = "AW",
    AU = "AU",
    AT = "AT",
    AZ = "AZ",
    BS = "BS",
    BH = "BH",
    BD = "BD",
    BB = "BB",
    BY = "BY",
    BE = "BE",
    BZ = "BZ",
    BJ = "BJ",
    BM = "BM",
    BT = "BT",
    BO = "BO",
    BA = "BA",
    BW = "BW",
    BR = "BR",
    IO = "IO",
    VG = "VG",
    BN = "BN",
    BG = "BG",
    BF = "BF",
    BI = "BI",
    KH = "KH",
    CM = "CM",
    CA = "CA",
    CV = "CV",
    KY = "KY",
    CF = "CF",
    TD = "TD",
    CL = "CL",
    CN = "CN",
    CX = "CX",
    CC = "CC",
    CO = "CO",
    KM = "KM",
    CK = "CK",
    CR = "CR",
    HR = "HR",
    CU = "CU",
    CW = "CW",
    CY = "CY",
    CZ = "CZ",
    CD = "CD",
    DK = "DK",
    DJ = "DJ",
    DM = "DM",
    DO = "DO",
    TL = "TL",
    EC = "EC",
    EG = "EG",
    SV = "SV",
    GQ = "GQ",
    ER = "ER",
    EE = "EE",
    ET = "ET",
    FK = "FK",
    FO = "FO",
    FJ = "FJ",
    FI = "FI",
    FR = "FR",
    PF = "PF",
    GA = "GA",
    GM = "GM",
    GE = "GE",
    DE = "DE",
    GH = "GH",
    GI = "GI",
    GR = "GR",
    GL = "GL",
    GD = "GD",
    GU = "GU",
    GT = "GT",
    GG = "GG",
    GN = "GN",
    GW = "GW",
    GY = "GY",
    HT = "HT",
    HN = "HN",
    HK = "HK",
    HU = "HU",
    IS = "IS",
    IN = "IN",
    ID = "ID",
    IR = "IR",
    IQ = "IQ",
    IE = "IE",
    IM = "IM",
    IL = "IL",
    IT = "IT",
    CI = "CI",
    JM = "JM",
    JP = "JP",
    JE = "JE",
    JO = "JO",
    KZ = "KZ",
    KE = "KE",
    KI = "KI",
    KW = "KW",
    KG = "KG",
    LA = "LA",
    LV = "LV",
    LB = "LB",
    LS = "LS",
    LR = "LR",
    LY = "LY",
    LI = "LI",
    LT = "LT",
    LU = "LU",
    MO = "MO",
    MK = "MK",
    MG = "MG",
    MW = "MW",
    MY = "MY",
    MV = "MV",
    ML = "ML",
    MT = "MT",
    MH = "MH",
    MR = "MR",
    MU = "MU",
    YT = "YT",
    MX = "MX",
    FM = "FM",
    MD = "MD",
    MC = "MC",
    MN = "MN",
    ME = "ME",
    MS = "MS",
    MA = "MA",
    MZ = "MZ",
    MM = "MM",
    NA = "NA",
    NR = "NR",
    NP = "NP",
    NL = "NL",
    AN = "AN",
    NC = "NC",
    NZ = "NZ",
    NI = "NI",
    NE = "NE",
    NG = "NG",
    NU = "NU",
    KP = "KP",
    MP = "MP",
    NO = "NO",
    OM = "OM",
    PK = "PK",
    PW = "PW",
    PA = "PA",
    PG = "PG",
    PY = "PY",
    PE = "PE",
    PH = "PH",
    PN = "PN",
    PL = "PL",
    PT = "PT",
    PR = "PR",
    QA = "QA",
    CG = "CG",
    RE = "RE",
    RO = "RO",
    RU = "RU",
    RW = "RW",
    BL = "BL",
    SH = "SH",
    KN = "KN",
    LC = "LC",
    MF = "MF",
    PM = "PM",
    VC = "VC",
    WS = "WS",
    SM = "SM",
    ST = "ST",
    SA = "SA",
    SN = "SN",
    RS = "RS",
    SC = "SC",
    SL = "SL",
    SG = "SG",
    SX = "SX",
    SK = "SK",
    SI = "SI",
    SB = "SB",
    SO = "SO",
    ZA = "ZA",
    KR = "KR",
    ES = "ES",
    LK = "LK",
    SD = "SD",
    SR = "SR",
    SJ = "SJ",
    SZ = "SZ",
    SE = "SE",
    CH = "CH",
    SY = "SY",
    TW = "TW",
    TJ = "TJ",
    TZ = "TZ",
    TH = "TH",
    TG = "TG",
    TK = "TK",
    TO = "TO",
    TT = "TT",
    TN = "TN",
    TR = "TR",
    TM = "TM",
    TC = "TC",
    TV = "TV",
    VI = "VI",
    UG = "UG",
    UA = "UA",
    AE = "AE",
    GB = "GB",
    US = "US",
    UY = "UY",
    UZ = "UZ",
    VU = "VU",
    VA = "VA",
    VE = "VE",
    VN = "VN",
    WF = "WF",
    EH = "EH",
    YE = "YE",
    ZM = "ZM",
    ZW = "ZW",
}

M.PhoneNumberWorkflowStatus = {
    Claimed = "CLAIMED",
    InProgress = "IN_PROGRESS",
    Failed = "FAILED",
}

M.PhoneNumberStatus = {
    type = "structure",
    id = "PhoneNumberStatus",
    members = {
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.PhoneNumberType = {
    TOLL_FREE = "TOLL_FREE",
    DID = "DID",
    UIFN = "UIFN",
    SHARED = "SHARED",
    THIRD_PARTY_TF = "THIRD_PARTY_TF",
    THIRD_PARTY_DID = "THIRD_PARTY_DID",
    SHORT_CODE = "SHORT_CODE",
}

M.ClaimedPhoneNumberSummary = {
    type = "structure",
    id = "ClaimedPhoneNumberSummary",
    members = {
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumberArn = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        PhoneNumberCountryCode = {
            type = "string",
        },
        PhoneNumberType = {
            type = "string",
        },
        PhoneNumberDescription = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PhoneNumberStatus = M.PhoneNumberStatus,
        SourcePhoneNumberArn = {
            type = "string",
        },
    },
}

M.DescribePhoneNumberOutput = {
    type = "structure",
    id = "DescribePhoneNumberOutput",
    members = {
        ClaimedPhoneNumberSummary = M.ClaimedPhoneNumberSummary,
    },
}

M.DescribePredefinedAttributeInput = {
    type = "structure",
    id = "DescribePredefinedAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PredefinedAttributeConfiguration = {
    type = "structure",
    id = "PredefinedAttributeConfiguration",
    members = {
        EnableValueValidationOnAssociation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IsReadOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PredefinedAttribute = {
    type = "structure",
    id = "PredefinedAttribute",
    members = {
        Name = {
            type = "string",
        },
        Values = M.PredefinedAttributeValues,
        Purposes = {
            type = "list",
            member = { type = "string" },
        },
        AttributeConfiguration = M.PredefinedAttributeConfiguration,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribePredefinedAttributeOutput = {
    type = "structure",
    id = "DescribePredefinedAttributeOutput",
    members = {
        PredefinedAttribute = M.PredefinedAttribute,
    },
}

M.DescribePromptInput = {
    type = "structure",
    id = "DescribePromptInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Prompt = {
    type = "structure",
    id = "Prompt",
    members = {
        PromptARN = {
            type = "string",
        },
        PromptId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribePromptOutput = {
    type = "structure",
    id = "DescribePromptOutput",
    members = {
        Prompt = M.Prompt,
    },
}

M.DescribeQueueInput = {
    type = "structure",
    id = "DescribeQueueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueueStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Queue = {
    type = "structure",
    id = "Queue",
    members = {
        Name = {
            type = "string",
        },
        QueueArn = {
            type = "string",
        },
        QueueId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        OutboundCallerConfig = M.OutboundCallerConfig,
        OutboundEmailConfig = M.OutboundEmailConfig,
        HoursOfOperationId = {
            type = "string",
        },
        MaxContacts = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribeQueueOutput = {
    type = "structure",
    id = "DescribeQueueOutput",
    members = {
        Queue = M.Queue,
    },
}

M.DescribeQuickConnectInput = {
    type = "structure",
    id = "DescribeQuickConnectInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuickConnectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QuickConnect = {
    type = "structure",
    id = "QuickConnect",
    members = {
        QuickConnectARN = {
            type = "string",
        },
        QuickConnectId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        QuickConnectConfig = M.QuickConnectConfig,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribeQuickConnectOutput = {
    type = "structure",
    id = "DescribeQuickConnectOutput",
    members = {
        QuickConnect = M.QuickConnect,
    },
}

M.DescribeRoutingProfileInput = {
    type = "structure",
    id = "DescribeRoutingProfileInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RoutingProfile = {
    type = "structure",
    id = "RoutingProfile",
    members = {
        InstanceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RoutingProfileArn = {
            type = "string",
        },
        RoutingProfileId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        MediaConcurrencies = {
            type = "list",
            member = M.MediaConcurrency,
        },
        DefaultOutboundQueueId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NumberOfAssociatedQueues = {
            type = "long",
        },
        NumberOfAssociatedManualAssignmentQueues = {
            type = "long",
        },
        NumberOfAssociatedUsers = {
            type = "long",
        },
        AgentAvailabilityTimer = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AssociatedQueueIds = {
            type = "list",
            member = { type = "string" },
        },
        AssociatedManualAssignmentQueueIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeRoutingProfileOutput = {
    type = "structure",
    id = "DescribeRoutingProfileOutput",
    members = {
        RoutingProfile = M.RoutingProfile,
    },
}

M.DescribeRuleInput = {
    type = "structure",
    id = "DescribeRuleInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Rule = {
    type = "structure",
    id = "Rule",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TriggerEventSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleTriggerEventSource }),
        Function = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = M.RuleAction,
            traits = {
                required = true,
            },
        },
        PublishStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeRuleOutput = {
    type = "structure",
    id = "DescribeRuleOutput",
    members = {
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
    },
}

M.DescribeSecurityProfileInput = {
    type = "structure",
    id = "DescribeSecurityProfileInput",
    members = {
        SecurityProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SecurityProfile = {
    type = "structure",
    id = "SecurityProfile",
    members = {
        Id = {
            type = "string",
        },
        OrganizationResourceId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        SecurityProfileName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AllowedAccessControlTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TagRestrictedResources = {
            type = "list",
            member = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        HierarchyRestrictedResources = {
            type = "list",
            member = { type = "string" },
        },
        AllowedAccessControlHierarchyGroupId = {
            type = "string",
        },
        GranularAccessControlConfiguration = M.GranularAccessControlConfiguration,
    },
}

M.DescribeSecurityProfileOutput = {
    type = "structure",
    id = "DescribeSecurityProfileOutput",
    members = {
        SecurityProfile = M.SecurityProfile,
    },
}

M.DescribeTestCaseInput = {
    type = "structure",
    id = "DescribeTestCaseInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.TestCase = {
    type = "structure",
    id = "TestCase",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        EntryPoint = M.TestCaseEntryPoint,
        InitializationData = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TestCaseSha256 = {
            type = "string",
        },
    },
}

M.DescribeTestCaseOutput = {
    type = "structure",
    id = "DescribeTestCaseOutput",
    members = {
        TestCase = M.TestCase,
    },
}

M.DescribeTrafficDistributionGroupInput = {
    type = "structure",
    id = "DescribeTrafficDistributionGroupInput",
    members = {
        TrafficDistributionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TrafficDistributionGroupStatus = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    CREATION_FAILED = "CREATION_FAILED",
    PENDING_DELETION = "PENDING_DELETION",
    DELETION_FAILED = "DELETION_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
}

M.TrafficDistributionGroup = {
    type = "structure",
    id = "TrafficDistributionGroup",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeTrafficDistributionGroupOutput = {
    type = "structure",
    id = "DescribeTrafficDistributionGroupOutput",
    members = {
        TrafficDistributionGroup = M.TrafficDistributionGroup,
    },
}

M.DescribeUserInput = {
    type = "structure",
    id = "DescribeUserInput",
    members = {
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        IdentityInfo = M.UserIdentityInfo,
        PhoneConfig = M.UserPhoneConfig,
        DirectoryUserId = {
            type = "string",
        },
        SecurityProfileIds = {
            type = "list",
            member = { type = "string" },
        },
        RoutingProfileId = {
            type = "string",
        },
        HierarchyGroupId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AutoAcceptConfigs = {
            type = "list",
            member = M.AutoAcceptConfig,
        },
        AfterContactWorkConfigs = {
            type = "list",
            member = M.AfterContactWorkConfigPerChannel,
        },
        PhoneNumberConfigs = {
            type = "list",
            member = M.PhoneNumberConfig,
        },
        PersistentConnectionConfigs = {
            type = "list",
            member = M.PersistentConnectionConfig,
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member = M.VoiceEnhancementConfig,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribeUserOutput = {
    type = "structure",
    id = "DescribeUserOutput",
    members = {
        User = M.User,
    },
}

M.DescribeUserHierarchyGroupInput = {
    type = "structure",
    id = "DescribeUserHierarchyGroupInput",
    members = {
        HierarchyGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HierarchyGroupSummary = {
    type = "structure",
    id = "HierarchyGroupSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.HierarchyPath = {
    type = "structure",
    id = "HierarchyPath",
    members = {
        LevelOne = M.HierarchyGroupSummary,
        LevelTwo = M.HierarchyGroupSummary,
        LevelThree = M.HierarchyGroupSummary,
        LevelFour = M.HierarchyGroupSummary,
        LevelFive = M.HierarchyGroupSummary,
    },
}

M.HierarchyGroup = {
    type = "structure",
    id = "HierarchyGroup",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LevelId = {
            type = "string",
        },
        HierarchyPath = M.HierarchyPath,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.DescribeUserHierarchyGroupOutput = {
    type = "structure",
    id = "DescribeUserHierarchyGroupOutput",
    members = {
        HierarchyGroup = M.HierarchyGroup,
    },
}

M.DescribeUserHierarchyStructureInput = {
    type = "structure",
    id = "DescribeUserHierarchyStructureInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HierarchyLevel = {
    type = "structure",
    id = "HierarchyLevel",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.HierarchyStructure = {
    type = "structure",
    id = "HierarchyStructure",
    members = {
        LevelOne = M.HierarchyLevel,
        LevelTwo = M.HierarchyLevel,
        LevelThree = M.HierarchyLevel,
        LevelFour = M.HierarchyLevel,
        LevelFive = M.HierarchyLevel,
    },
}

M.DescribeUserHierarchyStructureOutput = {
    type = "structure",
    id = "DescribeUserHierarchyStructureOutput",
    members = {
        HierarchyStructure = M.HierarchyStructure,
    },
}

M.DescribeViewInput = {
    type = "structure",
    id = "DescribeViewInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeViewOutput = {
    type = "structure",
    id = "DescribeViewOutput",
    members = {
        View = M.View,
    },
}

M.DescribeVocabularyInput = {
    type = "structure",
    id = "DescribeVocabularyInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VocabularyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Vocabulary = {
    type = "structure",
    id = "Vocabulary",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeVocabularyOutput = {
    type = "structure",
    id = "DescribeVocabularyOutput",
    members = {
        Vocabulary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Vocabulary }),
    },
}

M.DescribeWorkspaceInput = {
    type = "structure",
    id = "DescribeWorkspaceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Visibility = {
    All = "ALL",
    Assigned = "ASSIGNED",
    None = "NONE",
}

M.Workspace = {
    type = "structure",
    id = "Workspace",
    members = {
        Visibility = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Theme = M.WorkspaceTheme,
        Title = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedRegion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeWorkspaceOutput = {
    type = "structure",
    id = "DescribeWorkspaceOutput",
    members = {
        Workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workspace }),
    },
}

M.DisassociateAnalyticsDataSetInput = {
    type = "structure",
    id = "DisassociateAnalyticsDataSetInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetAccountId = {
            type = "string",
        },
    },
}

M.DisassociateAnalyticsDataSetOutput = {
    type = "structure",
    id = "DisassociateAnalyticsDataSetOutput",
}

M.DisassociateApprovedOriginInput = {
    type = "structure",
    id = "DisassociateApprovedOriginInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Origin = {
            type = "string",
            traits = {
                http_query = "origin",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateApprovedOriginOutput = {
    type = "structure",
    id = "DisassociateApprovedOriginOutput",
}

M.DisassociateBotInput = {
    type = "structure",
    id = "DisassociateBotInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LexBot = M.LexBot,
        LexV2Bot = M.LexV2Bot,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateBotOutput = {
    type = "structure",
    id = "DisassociateBotOutput",
}

M.DisassociateEmailAddressAliasInput = {
    type = "structure",
    id = "DisassociateEmailAddressAliasInput",
    members = {
        EmailAddressId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AliasConfiguration }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateEmailAddressAliasOutput = {
    type = "structure",
    id = "DisassociateEmailAddressAliasOutput",
}

M.DisassociateFlowInput = {
    type = "structure",
    id = "DisassociateFlowInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateFlowOutput = {
    type = "structure",
    id = "DisassociateFlowOutput",
}

M.DisassociateHoursOfOperationsInput = {
    type = "structure",
    id = "DisassociateHoursOfOperationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ParentHoursOfOperationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateHoursOfOperationsOutput = {
    type = "structure",
    id = "DisassociateHoursOfOperationsOutput",
}

M.DisassociateInstanceStorageConfigInput = {
    type = "structure",
    id = "DisassociateInstanceStorageConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateInstanceStorageConfigOutput = {
    type = "structure",
    id = "DisassociateInstanceStorageConfigOutput",
}

M.DisassociateLambdaFunctionInput = {
    type = "structure",
    id = "DisassociateLambdaFunctionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                http_query = "functionArn",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateLambdaFunctionOutput = {
    type = "structure",
    id = "DisassociateLambdaFunctionOutput",
}

M.DisassociateLexBotInput = {
    type = "structure",
    id = "DisassociateLexBotInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BotName = {
            type = "string",
            traits = {
                http_query = "botName",
                required = true,
            },
        },
        LexRegion = {
            type = "string",
            traits = {
                http_query = "lexRegion",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateLexBotOutput = {
    type = "structure",
    id = "DisassociateLexBotOutput",
}

M.DisassociatePhoneNumberContactFlowInput = {
    type = "structure",
    id = "DisassociatePhoneNumberContactFlowInput",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_query = "instanceId",
                required = true,
            },
        },
    },
}

M.DisassociatePhoneNumberContactFlowOutput = {
    type = "structure",
    id = "DisassociatePhoneNumberContactFlowOutput",
}

M.DisassociateQueueEmailAddressesInput = {
    type = "structure",
    id = "DisassociateQueueEmailAddressesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddressesId = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateQueueEmailAddressesOutput = {
    type = "structure",
    id = "DisassociateQueueEmailAddressesOutput",
}

M.DisassociateQueueQuickConnectsInput = {
    type = "structure",
    id = "DisassociateQueueQuickConnectsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuickConnectIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateQueueQuickConnectsOutput = {
    type = "structure",
    id = "DisassociateQueueQuickConnectsOutput",
}

M.DisassociateRoutingProfileQueuesInput = {
    type = "structure",
    id = "DisassociateRoutingProfileQueuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueReferences = {
            type = "list",
            member = M.RoutingProfileQueueReference,
        },
        ManualAssignmentQueueReferences = {
            type = "list",
            member = M.RoutingProfileQueueReference,
        },
    },
}

M.DisassociateRoutingProfileQueuesOutput = {
    type = "structure",
    id = "DisassociateRoutingProfileQueuesOutput",
}

M.DisassociateSecurityKeyInput = {
    type = "structure",
    id = "DisassociateSecurityKeyInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateSecurityKeyOutput = {
    type = "structure",
    id = "DisassociateSecurityKeyOutput",
}

M.DisassociateSecurityProfilesInput = {
    type = "structure",
    id = "DisassociateSecurityProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SecurityProfiles = {
            type = "list",
            member = M.SecurityProfileItem,
            traits = {
                required = true,
            },
        },
        EntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSecurityProfilesOutput = {
    type = "structure",
    id = "DisassociateSecurityProfilesOutput",
}

M.DisassociateTrafficDistributionGroupUserInput = {
    type = "structure",
    id = "DisassociateTrafficDistributionGroupUserInput",
    members = {
        TrafficDistributionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_query = "UserId",
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_query = "InstanceId",
                required = true,
            },
        },
    },
}

M.DisassociateTrafficDistributionGroupUserOutput = {
    type = "structure",
    id = "DisassociateTrafficDistributionGroupUserOutput",
}

M.UserProficiencyDisassociate = {
    type = "structure",
    id = "UserProficiencyDisassociate",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateUserProficienciesInput = {
    type = "structure",
    id = "DisassociateUserProficienciesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserProficiencies = {
            type = "list",
            member = M.UserProficiencyDisassociate,
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateUserProficienciesOutput = {
    type = "structure",
    id = "DisassociateUserProficienciesOutput",
}

M.DisassociateWorkspaceInput = {
    type = "structure",
    id = "DisassociateWorkspaceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateWorkspaceOutput = {
    type = "structure",
    id = "DisassociateWorkspaceOutput",
    members = {
        SuccessfulList = {
            type = "list",
            member = M.SuccessfulBatchAssociationSummary,
        },
        FailedList = {
            type = "list",
            member = M.FailedBatchAssociationSummary,
        },
    },
}

M.DismissUserContactInput = {
    type = "structure",
    id = "DismissUserContactInput",
    members = {
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DismissUserContactOutput = {
    type = "structure",
    id = "DismissUserContactOutput",
}

M.DataTableValueEvaluationSet = {
    type = "structure",
    id = "DataTableValueEvaluationSet",
    members = {
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
        },
        AttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluateDataTableValuesInput = {
    type = "structure",
    id = "EvaluateDataTableValuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Values = {
            type = "list",
            member = M.DataTableValueEvaluationSet,
            traits = {
                required = true,
            },
        },
        TimeZone = {
            type = "string",
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataTableEvaluatedValue = {
    type = "structure",
    id = "DataTableEvaluatedValue",
    members = {
        RecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Found = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Error = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        EvaluatedValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluateDataTableValuesOutput = {
    type = "structure",
    id = "EvaluateDataTableValuesOutput",
    members = {
        Values = {
            type = "list",
            member = M.DataTableEvaluatedValue,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAttachedFileInput = {
    type = "structure",
    id = "GetAttachedFileInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UrlExpiryInSeconds = {
            type = "integer",
            traits = {
                http_query = "urlExpiryInSeconds",
            },
        },
        AssociatedResourceArn = {
            type = "string",
            traits = {
                http_query = "associatedResourceArn",
                required = true,
            },
        },
    },
}

M.DownloadUrlMetadata = {
    type = "structure",
    id = "DownloadUrlMetadata",
    members = {
        Url = {
            type = "string",
        },
        UrlExpiry = {
            type = "string",
        },
    },
}

M.GetAttachedFileOutput = {
    type = "structure",
    id = "GetAttachedFileOutput",
    members = {
        FileArn = {
            type = "string",
        },
        FileId = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        FileStatus = {
            type = "string",
        },
        FileName = {
            type = "string",
        },
        FileSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        AssociatedResourceArn = {
            type = "string",
        },
        FileUseCaseType = {
            type = "string",
        },
        CreatedBy = M.CreatedByInfo,
        DownloadUrlMetadata = M.DownloadUrlMetadata,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetContactAttributesInput = {
    type = "structure",
    id = "GetContactAttributesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InitialContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContactAttributesOutput = {
    type = "structure",
    id = "GetContactAttributesOutput",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ContactMetricName = {
    ESTIMATED_WAIT_TIME = "ESTIMATED_WAIT_TIME",
    POSITION_IN_QUEUE = "POSITION_IN_QUEUE",
}

M.ContactMetricInfo = {
    type = "structure",
    id = "ContactMetricInfo",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetContactMetricsInput = {
    type = "structure",
    id = "GetContactMetricsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "list",
            member = M.ContactMetricInfo,
            traits = {
                required = true,
            },
        },
    },
}

M.ContactMetricValue = {
    type = "union",
    id = "ContactMetricValue",
    members = {
        Number = {
            type = "double",
        },
    },
}

M.ContactMetricResult = {
    type = "structure",
    id = "ContactMetricResult",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactMetricValue }),
    },
}

M.GetContactMetricsOutput = {
    type = "structure",
    id = "GetContactMetricsOutput",
    members = {
        MetricResults = {
            type = "list",
            member = M.ContactMetricResult,
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.CurrentMetricName = {
    AGENTS_ONLINE = "AGENTS_ONLINE",
    AGENTS_AVAILABLE = "AGENTS_AVAILABLE",
    AGENTS_ON_CALL = "AGENTS_ON_CALL",
    AGENTS_NON_PRODUCTIVE = "AGENTS_NON_PRODUCTIVE",
    AGENTS_AFTER_CONTACT_WORK = "AGENTS_AFTER_CONTACT_WORK",
    AGENTS_ERROR = "AGENTS_ERROR",
    AGENTS_STAFFED = "AGENTS_STAFFED",
    CONTACTS_IN_QUEUE = "CONTACTS_IN_QUEUE",
    OLDEST_CONTACT_AGE = "OLDEST_CONTACT_AGE",
    CONTACTS_SCHEDULED = "CONTACTS_SCHEDULED",
    AGENTS_ON_CONTACT = "AGENTS_ON_CONTACT",
    SLOTS_ACTIVE = "SLOTS_ACTIVE",
    SLOTS_AVAILABLE = "SLOTS_AVAILABLE",
    ESTIMATED_WAIT_TIME = "ESTIMATED_WAIT_TIME",
}

M.Unit = {
    SECONDS = "SECONDS",
    COUNT = "COUNT",
    PERCENT = "PERCENT",
}

M.CurrentMetric = {
    type = "structure",
    id = "CurrentMetric",
    members = {
        Name = {
            type = "string",
        },
        MetricId = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
    },
}

M.Filters = {
    type = "structure",
    id = "Filters",
    members = {
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
        },
        RoutingProfiles = {
            type = "list",
            member = { type = "string" },
        },
        RoutingStepExpressions = {
            type = "list",
            member = { type = "string" },
        },
        AgentStatuses = {
            type = "list",
            member = { type = "string" },
        },
        Subtypes = {
            type = "list",
            member = { type = "string" },
        },
        ValidationTestTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Grouping = {
    QUEUE = "QUEUE",
    CHANNEL = "CHANNEL",
    ROUTING_PROFILE = "ROUTING_PROFILE",
    ROUTING_STEP_EXPRESSION = "ROUTING_STEP_EXPRESSION",
    AGENT_STATUS = "AGENT_STATUS",
    SUBTYPE = "SUBTYPE",
    VALIDATION_TEST_TYPE = "VALIDATION_TEST_TYPE",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.CurrentMetricSortCriteria = {
    type = "structure",
    id = "CurrentMetricSortCriteria",
    members = {
        SortByMetric = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.GetCurrentMetricDataInput = {
    type = "structure",
    id = "GetCurrentMetricDataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Filters }),
        Groupings = {
            type = "list",
            member = { type = "string" },
        },
        CurrentMetrics = {
            type = "list",
            member = M.CurrentMetric,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SortCriteria = {
            type = "list",
            member = M.CurrentMetricSortCriteria,
        },
    },
}

M.CurrentMetricData = {
    type = "structure",
    id = "CurrentMetricData",
    members = {
        Metric = M.CurrentMetric,
        Value = {
            type = "double",
        },
    },
}

M.RoutingProfileReference = {
    type = "structure",
    id = "RoutingProfileReference",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.Dimensions = {
    type = "structure",
    id = "Dimensions",
    members = {
        Queue = M.QueueReference,
        Channel = {
            type = "string",
        },
        RoutingProfile = M.RoutingProfileReference,
        RoutingStepExpression = {
            type = "string",
        },
        AgentStatus = M.AgentStatusIdentifier,
        Subtype = {
            type = "string",
        },
        ValidationTestType = {
            type = "string",
        },
    },
}

M.CurrentMetricResult = {
    type = "structure",
    id = "CurrentMetricResult",
    members = {
        Dimensions = M.Dimensions,
        Collections = {
            type = "list",
            member = M.CurrentMetricData,
        },
    },
}

M.GetCurrentMetricDataOutput = {
    type = "structure",
    id = "GetCurrentMetricDataOutput",
    members = {
        NextToken = {
            type = "string",
        },
        MetricResults = {
            type = "list",
            member = M.CurrentMetricResult,
        },
        DataSnapshotTime = {
            type = "timestamp",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.ContactFilter = {
    type = "structure",
    id = "ContactFilter",
    members = {
        ContactStates = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UserDataFilters = {
    type = "structure",
    id = "UserDataFilters",
    members = {
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        ContactFilter = M.ContactFilter,
        RoutingProfiles = {
            type = "list",
            member = { type = "string" },
        },
        Agents = {
            type = "list",
            member = { type = "string" },
        },
        UserHierarchyGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetCurrentUserDataInput = {
    type = "structure",
    id = "GetCurrentUserDataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserDataFilters }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.HierarchyGroupSummaryReference = {
    type = "structure",
    id = "HierarchyGroupSummaryReference",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.HierarchyPathReference = {
    type = "structure",
    id = "HierarchyPathReference",
    members = {
        LevelOne = M.HierarchyGroupSummaryReference,
        LevelTwo = M.HierarchyGroupSummaryReference,
        LevelThree = M.HierarchyGroupSummaryReference,
        LevelFour = M.HierarchyGroupSummaryReference,
        LevelFive = M.HierarchyGroupSummaryReference,
    },
}

M.UserReference = {
    type = "structure",
    id = "UserReference",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.UserData = {
    type = "structure",
    id = "UserData",
    members = {
        User = M.UserReference,
        RoutingProfile = M.RoutingProfileReference,
        HierarchyPath = M.HierarchyPathReference,
        Status = M.AgentStatusReference,
        AvailableSlotsByChannel = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        MaxSlotsByChannel = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        ActiveSlotsByChannel = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        Contacts = {
            type = "list",
            member = M.AgentContactReference,
        },
        NextStatus = {
            type = "string",
        },
    },
}

M.GetCurrentUserDataOutput = {
    type = "structure",
    id = "GetCurrentUserDataOutput",
    members = {
        NextToken = {
            type = "string",
        },
        UserDataList = {
            type = "list",
            member = M.UserData,
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.GetEffectiveHoursOfOperationsInput = {
    type = "structure",
    id = "GetEffectiveHoursOfOperationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FromDate = {
            type = "string",
            traits = {
                http_query = "fromDate",
                required = true,
            },
        },
        ToDate = {
            type = "string",
            traits = {
                http_query = "toDate",
                required = true,
            },
        },
    },
}

M.OperationalHour = {
    type = "structure",
    id = "OperationalHour",
    members = {
        Start = M.OverrideTimeSlice,
        End = M.OverrideTimeSlice,
    },
}

M.EffectiveHoursOfOperations = {
    type = "structure",
    id = "EffectiveHoursOfOperations",
    members = {
        Date = {
            type = "string",
        },
        OperationalHours = {
            type = "list",
            member = M.OperationalHour,
        },
    },
}

M.OperationalStatus = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.OverrideHour = {
    type = "structure",
    id = "OverrideHour",
    members = {
        Start = M.OverrideTimeSlice,
        End = M.OverrideTimeSlice,
        OverrideName = {
            type = "string",
        },
        OperationalStatus = {
            type = "string",
        },
    },
}

M.EffectiveOverrideHours = {
    type = "structure",
    id = "EffectiveOverrideHours",
    members = {
        Date = {
            type = "string",
        },
        OverrideHours = {
            type = "list",
            member = M.OverrideHour,
        },
    },
}

M.GetEffectiveHoursOfOperationsOutput = {
    type = "structure",
    id = "GetEffectiveHoursOfOperationsOutput",
    members = {
        EffectiveHoursOfOperationList = {
            type = "list",
            member = M.EffectiveHoursOfOperations,
        },
        EffectiveOverrideHoursList = {
            type = "list",
            member = M.EffectiveOverrideHours,
        },
        TimeZone = {
            type = "string",
        },
    },
}

M.GetFederationTokenInput = {
    type = "structure",
    id = "GetFederationTokenInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Credentials = {
    type = "structure",
    id = "Credentials",
    members = {
        AccessToken = {
            type = "string",
        },
        AccessTokenExpiration = {
            type = "timestamp",
        },
        RefreshToken = {
            type = "string",
        },
        RefreshTokenExpiration = {
            type = "timestamp",
        },
    },
}

M.GetFederationTokenOutput = {
    type = "structure",
    id = "GetFederationTokenOutput",
    members = {
        Credentials = M.Credentials,
        SignInUrl = {
            type = "string",
        },
        UserArn = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
    },
}

M.UserNotFoundException = {
    type = "structure",
    id = "UserNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetFlowAssociationInput = {
    type = "structure",
    id = "GetFlowAssociationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFlowAssociationOutput = {
    type = "structure",
    id = "GetFlowAssociationOutput",
    members = {
        ResourceId = {
            type = "string",
        },
        FlowId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.HistoricalMetricName = {
    CONTACTS_QUEUED = "CONTACTS_QUEUED",
    CONTACTS_HANDLED = "CONTACTS_HANDLED",
    CONTACTS_ABANDONED = "CONTACTS_ABANDONED",
    CONTACTS_CONSULTED = "CONTACTS_CONSULTED",
    CONTACTS_AGENT_HUNG_UP_FIRST = "CONTACTS_AGENT_HUNG_UP_FIRST",
    CONTACTS_HANDLED_INCOMING = "CONTACTS_HANDLED_INCOMING",
    CONTACTS_HANDLED_OUTBOUND = "CONTACTS_HANDLED_OUTBOUND",
    CONTACTS_HOLD_ABANDONS = "CONTACTS_HOLD_ABANDONS",
    CONTACTS_TRANSFERRED_IN = "CONTACTS_TRANSFERRED_IN",
    CONTACTS_TRANSFERRED_OUT = "CONTACTS_TRANSFERRED_OUT",
    CONTACTS_TRANSFERRED_IN_FROM_QUEUE = "CONTACTS_TRANSFERRED_IN_FROM_QUEUE",
    CONTACTS_TRANSFERRED_OUT_FROM_QUEUE = "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE",
    CONTACTS_MISSED = "CONTACTS_MISSED",
    CALLBACK_CONTACTS_HANDLED = "CALLBACK_CONTACTS_HANDLED",
    API_CONTACTS_HANDLED = "API_CONTACTS_HANDLED",
    OCCUPANCY = "OCCUPANCY",
    HANDLE_TIME = "HANDLE_TIME",
    AFTER_CONTACT_WORK_TIME = "AFTER_CONTACT_WORK_TIME",
    QUEUED_TIME = "QUEUED_TIME",
    ABANDON_TIME = "ABANDON_TIME",
    QUEUE_ANSWER_TIME = "QUEUE_ANSWER_TIME",
    HOLD_TIME = "HOLD_TIME",
    INTERACTION_TIME = "INTERACTION_TIME",
    INTERACTION_AND_HOLD_TIME = "INTERACTION_AND_HOLD_TIME",
    SERVICE_LEVEL = "SERVICE_LEVEL",
}

M.Statistic = {
    SUM = "SUM",
    MAX = "MAX",
    AVG = "AVG",
}

M.Comparison = {
    LT = "LT",
}

M.Threshold = {
    type = "structure",
    id = "Threshold",
    members = {
        Comparison = {
            type = "string",
        },
        ThresholdValue = {
            type = "double",
        },
    },
}

M.HistoricalMetric = {
    type = "structure",
    id = "HistoricalMetric",
    members = {
        Name = {
            type = "string",
        },
        Threshold = M.Threshold,
        Statistic = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
    },
}

M.GetMetricDataInput = {
    type = "structure",
    id = "GetMetricDataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Filters }),
        Groupings = {
            type = "list",
            member = { type = "string" },
        },
        HistoricalMetrics = {
            type = "list",
            member = M.HistoricalMetric,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.HistoricalMetricData = {
    type = "structure",
    id = "HistoricalMetricData",
    members = {
        Metric = M.HistoricalMetric,
        Value = {
            type = "double",
        },
    },
}

M.HistoricalMetricResult = {
    type = "structure",
    id = "HistoricalMetricResult",
    members = {
        Dimensions = M.Dimensions,
        Collections = {
            type = "list",
            member = M.HistoricalMetricData,
        },
    },
}

M.GetMetricDataOutput = {
    type = "structure",
    id = "GetMetricDataOutput",
    members = {
        NextToken = {
            type = "string",
        },
        MetricResults = {
            type = "list",
            member = M.HistoricalMetricResult,
        },
    },
}

M.FilterV2StringConditionComparisonOperator = {
    NOT_EXISTS = "NOT_EXISTS",
}

M.FilterV2StringCondition = {
    type = "structure",
    id = "FilterV2StringCondition",
    members = {
        Comparison = {
            type = "string",
        },
    },
}

M.FilterV2 = {
    type = "structure",
    id = "FilterV2",
    members = {
        FilterKey = {
            type = "string",
        },
        FilterValues = {
            type = "list",
            member = { type = "string" },
        },
        StringCondition = M.FilterV2StringCondition,
    },
}

M.IntervalPeriod = {
    FIFTEEN_MIN = "FIFTEEN_MIN",
    THIRTY_MIN = "THIRTY_MIN",
    HOUR = "HOUR",
    DAY = "DAY",
    WEEK = "WEEK",
    TOTAL = "TOTAL",
}

M.IntervalDetails = {
    type = "structure",
    id = "IntervalDetails",
    members = {
        TimeZone = {
            type = "string",
        },
        IntervalPeriod = {
            type = "string",
        },
    },
}

M.MetricFilterV2 = {
    type = "structure",
    id = "MetricFilterV2",
    members = {
        MetricFilterKey = {
            type = "string",
        },
        MetricFilterValues = {
            type = "list",
            member = { type = "string" },
        },
        Negate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ThresholdV2 = {
    type = "structure",
    id = "ThresholdV2",
    members = {
        Comparison = {
            type = "string",
        },
        ThresholdValue = {
            type = "double",
        },
    },
}

M.MetricV2 = {
    type = "structure",
    id = "MetricV2",
    members = {
        Name = {
            type = "string",
        },
        Threshold = {
            type = "list",
            member = M.ThresholdV2,
        },
        MetricId = {
            type = "string",
        },
        MetricFilters = {
            type = "list",
            member = M.MetricFilterV2,
        },
    },
}

M.GetMetricDataV2Input = {
    type = "structure",
    id = "GetMetricDataV2Input",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Interval = M.IntervalDetails,
        Filters = {
            type = "list",
            member = M.FilterV2,
            traits = {
                required = true,
            },
        },
        Groupings = {
            type = "list",
            member = { type = "string" },
        },
        Metrics = {
            type = "list",
            member = M.MetricV2,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.MetricDataV2 = {
    type = "structure",
    id = "MetricDataV2",
    members = {
        Metric = M.MetricV2,
        Value = {
            type = "double",
        },
    },
}

M.MetricInterval = {
    type = "structure",
    id = "MetricInterval",
    members = {
        Interval = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.MetricResultV2 = {
    type = "structure",
    id = "MetricResultV2",
    members = {
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MetricInterval = M.MetricInterval,
        Collections = {
            type = "list",
            member = M.MetricDataV2,
        },
    },
}

M.GetMetricDataV2Output = {
    type = "structure",
    id = "GetMetricDataV2Output",
    members = {
        NextToken = {
            type = "string",
        },
        MetricResults = {
            type = "list",
            member = M.MetricResultV2,
        },
    },
}

M.GetPromptFileInput = {
    type = "structure",
    id = "GetPromptFileInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPromptFileOutput = {
    type = "structure",
    id = "GetPromptFileOutput",
    members = {
        PromptPresignedUrl = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.GetTaskTemplateInput = {
    type = "structure",
    id = "GetTaskTemplateInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TaskTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SnapshotVersion = {
            type = "string",
            traits = {
                http_query = "snapshotVersion",
            },
        },
    },
}

M.GetTaskTemplateOutput = {
    type = "structure",
    id = "GetTaskTemplateOutput",
    members = {
        InstanceId = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
        },
        SelfAssignFlowId = {
            type = "string",
        },
        Constraints = M.TaskTemplateConstraints,
        Defaults = M.TaskTemplateDefaults,
        Fields = {
            type = "list",
            member = M.TaskTemplateField,
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTestCaseExecutionSummaryInput = {
    type = "structure",
    id = "GetTestCaseExecutionSummaryInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseExecutionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ObservationSummary = {
    type = "structure",
    id = "ObservationSummary",
    members = {
        TotalObservations = {
            type = "integer",
        },
        ObservationsPassed = {
            type = "integer",
        },
        ObservationsFailed = {
            type = "integer",
        },
    },
}

M.TestCaseExecutionStatus = {
    INITIATED = "INITIATED",
    PASSED = "PASSED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPED = "STOPPED",
}

M.GetTestCaseExecutionSummaryOutput = {
    type = "structure",
    id = "GetTestCaseExecutionSummaryOutput",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        ObservationSummary = M.ObservationSummary,
    },
}

M.GetTrafficDistributionInput = {
    type = "structure",
    id = "GetTrafficDistributionInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SignInDistribution = {
    type = "structure",
    id = "SignInDistribution",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.SignInConfig = {
    type = "structure",
    id = "SignInConfig",
    members = {
        Distributions = {
            type = "list",
            member = M.SignInDistribution,
            traits = {
                required = true,
            },
        },
    },
}

M.TelephonyConfig = {
    type = "structure",
    id = "TelephonyConfig",
    members = {
        Distributions = {
            type = "list",
            member = M.Distribution,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrafficDistributionOutput = {
    type = "structure",
    id = "GetTrafficDistributionOutput",
    members = {
        TelephonyConfig = M.TelephonyConfig,
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        SignInConfig = M.SignInConfig,
        AgentConfig = M.AgentConfig,
    },
}

M.ImportPhoneNumberInput = {
    type = "structure",
    id = "ImportPhoneNumberInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourcePhoneNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumberDescription = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ImportPhoneNumberOutput = {
    type = "structure",
    id = "ImportPhoneNumberOutput",
    members = {
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumberArn = {
            type = "string",
        },
    },
}

M.ImportWorkspaceMediaInput = {
    type = "structure",
    id = "ImportWorkspaceMediaInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MediaType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportWorkspaceMediaOutput = {
    type = "structure",
    id = "ImportWorkspaceMediaOutput",
}

M.ListAgentStatusesInput = {
    type = "structure",
    id = "ListAgentStatusesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        AgentStatusTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "AgentStatusTypes",
            },
        },
    },
}

M.ListAgentStatusesOutput = {
    type = "structure",
    id = "ListAgentStatusesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        AgentStatusSummaryList = {
            type = "list",
            member = M.AgentStatusSummary,
        },
    },
}

M.ListAnalyticsDataAssociationsInput = {
    type = "structure",
    id = "ListAnalyticsDataAssociationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_query = "DataSetId",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAnalyticsDataAssociationsOutput = {
    type = "structure",
    id = "ListAnalyticsDataAssociationsOutput",
    members = {
        Results = {
            type = "list",
            member = M.AnalyticsDataAssociationResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAnalyticsDataLakeDataSetsInput = {
    type = "structure",
    id = "ListAnalyticsDataLakeDataSetsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.AnalyticsDataSetsResult = {
    type = "structure",
    id = "AnalyticsDataSetsResult",
    members = {
        DataSetId = {
            type = "string",
        },
        DataSetName = {
            type = "string",
        },
    },
}

M.ListAnalyticsDataLakeDataSetsOutput = {
    type = "structure",
    id = "ListAnalyticsDataLakeDataSetsOutput",
    members = {
        Results = {
            type = "list",
            member = M.AnalyticsDataSetsResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApprovedOriginsInput = {
    type = "structure",
    id = "ListApprovedOriginsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListApprovedOriginsOutput = {
    type = "structure",
    id = "ListApprovedOriginsOutput",
    members = {
        Origins = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedContactsInput = {
    type = "structure",
    id = "ListAssociatedContactsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_query = "contactId",
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.AssociatedContactSummary = {
    type = "structure",
    id = "AssociatedContactSummary",
    members = {
        ContactId = {
            type = "string",
        },
        ContactArn = {
            type = "string",
        },
        InitiationTimestamp = {
            type = "timestamp",
        },
        DisconnectTimestamp = {
            type = "timestamp",
        },
        InitialContactId = {
            type = "string",
        },
        PreviousContactId = {
            type = "string",
        },
        RelatedContactId = {
            type = "string",
        },
        InitiationMethod = {
            type = "string",
        },
        Channel = {
            type = "string",
        },
    },
}

M.ListAssociatedContactsOutput = {
    type = "structure",
    id = "ListAssociatedContactsOutput",
    members = {
        ContactSummaryList = {
            type = "list",
            member = M.AssociatedContactSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAttachedFilesConfigurationsInput = {
    type = "structure",
    id = "ListAttachedFilesConfigurationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.AttachedFilesConfigurationSummary = {
    type = "structure",
    id = "AttachedFilesConfigurationSummary",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumSizeLimitInBytes = {
            type = "long",
        },
        ExtensionConfiguration = M.ExtensionConfiguration,
    },
}

M.ListAttachedFilesConfigurationsOutput = {
    type = "structure",
    id = "ListAttachedFilesConfigurationsOutput",
    members = {
        AttachedFilesConfigurations = {
            type = "list",
            member = M.AttachedFilesConfigurationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAuthenticationProfilesInput = {
    type = "structure",
    id = "ListAuthenticationProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.AuthenticationProfileSummary = {
    type = "structure",
    id = "AuthenticationProfileSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListAuthenticationProfilesOutput = {
    type = "structure",
    id = "ListAuthenticationProfilesOutput",
    members = {
        AuthenticationProfileSummaryList = {
            type = "list",
            member = M.AuthenticationProfileSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LexVersion = {
    V1 = "V1",
    V2 = "V2",
}

M.ListBotsInput = {
    type = "structure",
    id = "ListBotsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        LexVersion = {
            type = "string",
            traits = {
                http_query = "lexVersion",
                required = true,
            },
        },
    },
}

M.LexBotConfig = {
    type = "structure",
    id = "LexBotConfig",
    members = {
        LexBot = M.LexBot,
        LexV2Bot = M.LexV2Bot,
    },
}

M.ListBotsOutput = {
    type = "structure",
    id = "ListBotsOutput",
    members = {
        LexBots = {
            type = "list",
            member = M.LexBotConfig,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListChildHoursOfOperationsInput = {
    type = "structure",
    id = "ListChildHoursOfOperationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListChildHoursOfOperationsOutput = {
    type = "structure",
    id = "ListChildHoursOfOperationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ChildHoursOfOperationsSummaryList = {
            type = "list",
            member = M.HoursOfOperationsIdentifier,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListContactEvaluationsInput = {
    type = "structure",
    id = "ListContactEvaluationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_query = "contactId",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.EvaluationAcknowledgementSummary = {
    type = "structure",
    id = "EvaluationAcknowledgementSummary",
    members = {
        AcknowledgedTime = {
            type = "timestamp",
        },
        AcknowledgedBy = {
            type = "string",
        },
        AcknowledgerComment = {
            type = "string",
        },
    },
}

M.EvaluationSummary = {
    type = "structure",
    id = "EvaluationSummary",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CalibrationSessionId = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoEvaluationEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutoEvaluationStatus = {
            type = "string",
        },
        EvaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Score = M.EvaluationScore,
        Acknowledgement = M.EvaluationAcknowledgementSummary,
        EvaluationType = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ContactParticipant = M.EvaluationContactParticipant,
    },
}

M.ListContactEvaluationsOutput = {
    type = "structure",
    id = "ListContactEvaluationsOutput",
    members = {
        EvaluationSummaryList = {
            type = "list",
            member = M.EvaluationSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContactFlowModuleAliasesInput = {
    type = "structure",
    id = "ListContactFlowModuleAliasesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ContactFlowModuleAliasSummary = {
    type = "structure",
    id = "ContactFlowModuleAliasSummary",
    members = {
        Arn = {
            type = "string",
        },
        AliasId = {
            type = "string",
        },
        Version = {
            type = "long",
        },
        AliasName = {
            type = "string",
        },
        AliasDescription = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListContactFlowModuleAliasesOutput = {
    type = "structure",
    id = "ListContactFlowModuleAliasesOutput",
    members = {
        ContactFlowModuleAliasSummaryList = {
            type = "list",
            member = M.ContactFlowModuleAliasSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContactFlowModulesInput = {
    type = "structure",
    id = "ListContactFlowModulesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ContactFlowModuleState = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
    },
}

M.ContactFlowModuleSummary = {
    type = "structure",
    id = "ContactFlowModuleSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.ListContactFlowModulesOutput = {
    type = "structure",
    id = "ListContactFlowModulesOutput",
    members = {
        ContactFlowModulesSummaryList = {
            type = "list",
            member = M.ContactFlowModuleSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContactFlowModuleVersionsInput = {
    type = "structure",
    id = "ListContactFlowModuleVersionsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ContactFlowModuleVersionSummary = {
    type = "structure",
    id = "ContactFlowModuleVersionSummary",
    members = {
        Arn = {
            type = "string",
        },
        VersionDescription = {
            type = "string",
        },
        Version = {
            type = "long",
        },
    },
}

M.ListContactFlowModuleVersionsOutput = {
    type = "structure",
    id = "ListContactFlowModuleVersionsOutput",
    members = {
        ContactFlowModuleVersionSummaryList = {
            type = "list",
            member = M.ContactFlowModuleVersionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContactFlowsInput = {
    type = "structure",
    id = "ListContactFlowsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "contactFlowTypes",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ContactFlowSummary = {
    type = "structure",
    id = "ContactFlowSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ContactFlowType = {
            type = "string",
        },
        ContactFlowState = {
            type = "string",
        },
        ContactFlowStatus = {
            type = "string",
        },
    },
}

M.ListContactFlowsOutput = {
    type = "structure",
    id = "ListContactFlowsOutput",
    members = {
        ContactFlowSummaryList = {
            type = "list",
            member = M.ContactFlowSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContactFlowVersionsInput = {
    type = "structure",
    id = "ListContactFlowVersionsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ContactFlowVersionSummary = {
    type = "structure",
    id = "ContactFlowVersionSummary",
    members = {
        Arn = {
            type = "string",
        },
        VersionDescription = {
            type = "string",
        },
        Version = {
            type = "long",
        },
    },
}

M.ListContactFlowVersionsOutput = {
    type = "structure",
    id = "ListContactFlowVersionsOutput",
    members = {
        ContactFlowVersionSummaryList = {
            type = "list",
            member = M.ContactFlowVersionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContactReferencesInput = {
    type = "structure",
    id = "ListContactReferencesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReferenceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "referenceTypes",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.AttachmentReference = {
    type = "structure",
    id = "AttachmentReference",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DateReference = {
    type = "structure",
    id = "DateReference",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.EmailReference = {
    type = "structure",
    id = "EmailReference",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.EmailMessageReference = {
    type = "structure",
    id = "EmailMessageReference",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.NumberReference = {
    type = "structure",
    id = "NumberReference",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.StringReference = {
    type = "structure",
    id = "StringReference",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.UrlReference = {
    type = "structure",
    id = "UrlReference",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ReferenceSummary = {
    type = "union",
    id = "ReferenceSummary",
    members = {
        Url = M.UrlReference,
        Attachment = M.AttachmentReference,
        EmailMessage = M.EmailMessageReference,
        EmailMessageRedacted = M.EmailMessageReference,
        EmailMessagePlainText = M.EmailMessageReference,
        EmailMessagePlainTextRedacted = M.EmailMessageReference,
        String = M.StringReference,
        Number = M.NumberReference,
        Date = M.DateReference,
        Email = M.EmailReference,
    },
}

M.ListContactReferencesOutput = {
    type = "structure",
    id = "ListContactReferencesOutput",
    members = {
        ReferenceSummaryList = {
            type = "list",
            member = M.ReferenceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataTableAttributesInput = {
    type = "structure",
    id = "ListDataTableAttributesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataTableAttributesOutput = {
    type = "structure",
    id = "ListDataTableAttributesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Attributes = {
            type = "list",
            member = M.DataTableAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.PrimaryAttributeValueFilter = {
    type = "structure",
    id = "PrimaryAttributeValueFilter",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataTablePrimaryValuesInput = {
    type = "structure",
    id = "ListDataTablePrimaryValuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecordIds = {
            type = "list",
            member = { type = "string" },
        },
        PrimaryAttributeValues = {
            type = "list",
            member = M.PrimaryAttributeValueFilter,
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RecordPrimaryValue = {
    type = "structure",
    id = "RecordPrimaryValue",
    members = {
        RecordId = {
            type = "string",
        },
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValueResponse,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListDataTablePrimaryValuesOutput = {
    type = "structure",
    id = "ListDataTablePrimaryValuesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        PrimaryValuesList = {
            type = "list",
            member = M.RecordPrimaryValue,
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataTablesInput = {
    type = "structure",
    id = "ListDataTablesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataTableSummary = {
    type = "structure",
    id = "DataTableSummary",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListDataTablesOutput = {
    type = "structure",
    id = "ListDataTablesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        DataTableSummaryList = {
            type = "list",
            member = M.DataTableSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataTableValuesInput = {
    type = "structure",
    id = "ListDataTableValuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecordIds = {
            type = "list",
            member = { type = "string" },
        },
        PrimaryAttributeValues = {
            type = "list",
            member = M.PrimaryAttributeValueFilter,
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataTableValueSummary = {
    type = "structure",
    id = "DataTableValueSummary",
    members = {
        RecordId = {
            type = "string",
        },
        AttributeId = {
            type = "string",
        },
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValueResponse,
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = M.DataTableLockVersion,
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListDataTableValuesOutput = {
    type = "structure",
    id = "ListDataTableValuesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Values = {
            type = "list",
            member = M.DataTableValueSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListDefaultVocabulariesInput = {
    type = "structure",
    id = "ListDefaultVocabulariesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DefaultVocabulary = {
    type = "structure",
    id = "DefaultVocabulary",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VocabularyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDefaultVocabulariesOutput = {
    type = "structure",
    id = "ListDefaultVocabulariesOutput",
    members = {
        DefaultVocabularyList = {
            type = "list",
            member = M.DefaultVocabulary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEntitySecurityProfilesInput = {
    type = "structure",
    id = "ListEntitySecurityProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEntitySecurityProfilesOutput = {
    type = "structure",
    id = "ListEntitySecurityProfilesOutput",
    members = {
        SecurityProfiles = {
            type = "list",
            member = M.SecurityProfileItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEvaluationFormsInput = {
    type = "structure",
    id = "ListEvaluationFormsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.EvaluationFormSummary = {
    type = "structure",
    id = "EvaluationFormSummary",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastActivatedTime = {
            type = "timestamp",
        },
        LastActivatedBy = {
            type = "string",
        },
        LatestVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ActiveVersion = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.ListEvaluationFormsOutput = {
    type = "structure",
    id = "ListEvaluationFormsOutput",
    members = {
        EvaluationFormSummaryList = {
            type = "list",
            member = M.EvaluationFormSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEvaluationFormVersionsInput = {
    type = "structure",
    id = "ListEvaluationFormVersionsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.EvaluationFormVersionSummary = {
    type = "structure",
    id = "EvaluationFormVersionSummary",
    members = {
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Locked = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEvaluationFormVersionsOutput = {
    type = "structure",
    id = "ListEvaluationFormVersionsOutput",
    members = {
        EvaluationFormVersionSummaryList = {
            type = "list",
            member = M.EvaluationFormVersionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFlowAssociationsInput = {
    type = "structure",
    id = "ListFlowAssociationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "ResourceType",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListFlowAssociationsOutput = {
    type = "structure",
    id = "ListFlowAssociationsOutput",
    members = {
        FlowAssociationSummaryList = {
            type = "list",
            member = M.FlowAssociationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHoursOfOperationOverridesInput = {
    type = "structure",
    id = "ListHoursOfOperationOverridesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListHoursOfOperationOverridesOutput = {
    type = "structure",
    id = "ListHoursOfOperationOverridesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        HoursOfOperationOverrideList = {
            type = "list",
            member = M.HoursOfOperationOverride,
        },
        LastModifiedRegion = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListHoursOfOperationsInput = {
    type = "structure",
    id = "ListHoursOfOperationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.HoursOfOperationSummary = {
    type = "structure",
    id = "HoursOfOperationSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListHoursOfOperationsOutput = {
    type = "structure",
    id = "ListHoursOfOperationsOutput",
    members = {
        HoursOfOperationSummaryList = {
            type = "list",
            member = M.HoursOfOperationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstanceAttributesInput = {
    type = "structure",
    id = "ListInstanceAttributesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListInstanceAttributesOutput = {
    type = "structure",
    id = "ListInstanceAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.Attribute,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstancesInput = {
    type = "structure",
    id = "ListInstancesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.InstanceSummary = {
    type = "structure",
    id = "InstanceSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        IdentityManagementType = {
            type = "string",
        },
        InstanceAlias = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        ServiceRole = {
            type = "string",
        },
        InstanceStatus = {
            type = "string",
        },
        InboundCallsEnabled = {
            type = "boolean",
        },
        OutboundCallsEnabled = {
            type = "boolean",
        },
        InstanceAccessUrl = {
            type = "string",
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    id = "ListInstancesOutput",
    members = {
        InstanceSummaryList = {
            type = "list",
            member = M.InstanceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstanceStorageConfigsInput = {
    type = "structure",
    id = "ListInstanceStorageConfigsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListInstanceStorageConfigsOutput = {
    type = "structure",
    id = "ListInstanceStorageConfigsOutput",
    members = {
        StorageConfigs = {
            type = "list",
            member = M.InstanceStorageConfig,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIntegrationAssociationsInput = {
    type = "structure",
    id = "ListIntegrationAssociationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                http_query = "integrationType",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        IntegrationArn = {
            type = "string",
            traits = {
                http_query = "integrationArn",
            },
        },
    },
}

M.IntegrationAssociationSummary = {
    type = "structure",
    id = "IntegrationAssociationSummary",
    members = {
        IntegrationAssociationId = {
            type = "string",
        },
        IntegrationAssociationArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        IntegrationType = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
        },
        SourceApplicationUrl = {
            type = "string",
        },
        SourceApplicationName = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.ListIntegrationAssociationsOutput = {
    type = "structure",
    id = "ListIntegrationAssociationsOutput",
    members = {
        IntegrationAssociationSummaryList = {
            type = "list",
            member = M.IntegrationAssociationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLambdaFunctionsInput = {
    type = "structure",
    id = "ListLambdaFunctionsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListLambdaFunctionsOutput = {
    type = "structure",
    id = "ListLambdaFunctionsOutput",
    members = {
        LambdaFunctions = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLexBotsInput = {
    type = "structure",
    id = "ListLexBotsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListLexBotsOutput = {
    type = "structure",
    id = "ListLexBotsOutput",
    members = {
        LexBots = {
            type = "list",
            member = M.LexBot,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNotificationsInput = {
    type = "structure",
    id = "ListNotificationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListNotificationsOutput = {
    type = "structure",
    id = "ListNotificationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        NotificationSummaryList = {
            type = "list",
            member = M.Notification,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPhoneNumbersInput = {
    type = "structure",
    id = "ListPhoneNumbersInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PhoneNumberTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "phoneNumberTypes",
            },
        },
        PhoneNumberCountryCodes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "phoneNumberCountryCodes",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PhoneNumberSummary = {
    type = "structure",
    id = "PhoneNumberSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        PhoneNumberType = {
            type = "string",
        },
        PhoneNumberCountryCode = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersOutput = {
    type = "structure",
    id = "ListPhoneNumbersOutput",
    members = {
        PhoneNumberSummaryList = {
            type = "list",
            member = M.PhoneNumberSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersV2Input = {
    type = "structure",
    id = "ListPhoneNumbersV2Input",
    members = {
        TargetArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        PhoneNumberCountryCodes = {
            type = "list",
            member = { type = "string" },
        },
        PhoneNumberTypes = {
            type = "list",
            member = { type = "string" },
        },
        PhoneNumberPrefix = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersSummary = {
    type = "structure",
    id = "ListPhoneNumbersSummary",
    members = {
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumberArn = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        PhoneNumberCountryCode = {
            type = "string",
        },
        PhoneNumberType = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        PhoneNumberDescription = {
            type = "string",
        },
        SourcePhoneNumberArn = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersV2Output = {
    type = "structure",
    id = "ListPhoneNumbersV2Output",
    members = {
        NextToken = {
            type = "string",
        },
        ListPhoneNumbersSummaryList = {
            type = "list",
            member = M.ListPhoneNumbersSummary,
        },
    },
}

M.ListPredefinedAttributesInput = {
    type = "structure",
    id = "ListPredefinedAttributesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PredefinedAttributeSummary = {
    type = "structure",
    id = "PredefinedAttributeSummary",
    members = {
        Name = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListPredefinedAttributesOutput = {
    type = "structure",
    id = "ListPredefinedAttributesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        PredefinedAttributeSummaryList = {
            type = "list",
            member = M.PredefinedAttributeSummary,
        },
    },
}

M.ListPromptsInput = {
    type = "structure",
    id = "ListPromptsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PromptSummary = {
    type = "structure",
    id = "PromptSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListPromptsOutput = {
    type = "structure",
    id = "ListPromptsOutput",
    members = {
        PromptSummaryList = {
            type = "list",
            member = M.PromptSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQueueEmailAddressesInput = {
    type = "structure",
    id = "ListQueueEmailAddressesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EmailAddressSummary = {
    type = "structure",
    id = "EmailAddressSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        IsDefaultOutboundEmail = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListQueueEmailAddressesOutput = {
    type = "structure",
    id = "ListQueueEmailAddressesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        EmailAddressMetadataList = {
            type = "list",
            member = M.EmailAddressSummary,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListQueueQuickConnectsInput = {
    type = "structure",
    id = "ListQueueQuickConnectsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.QuickConnectSummary = {
    type = "structure",
    id = "QuickConnectSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        QuickConnectType = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListQueueQuickConnectsOutput = {
    type = "structure",
    id = "ListQueueQuickConnectsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        QuickConnectSummaryList = {
            type = "list",
            member = M.QuickConnectSummary,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.QueueType = {
    STANDARD = "STANDARD",
    AGENT = "AGENT",
}

M.ListQueuesInput = {
    type = "structure",
    id = "ListQueuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "queueTypes",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.QueueSummary = {
    type = "structure",
    id = "QueueSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        QueueType = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListQueuesOutput = {
    type = "structure",
    id = "ListQueuesOutput",
    members = {
        QueueSummaryList = {
            type = "list",
            member = M.QueueSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQuickConnectsInput = {
    type = "structure",
    id = "ListQuickConnectsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        QuickConnectTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "QuickConnectTypes",
            },
        },
    },
}

M.ListQuickConnectsOutput = {
    type = "structure",
    id = "ListQuickConnectsOutput",
    members = {
        QuickConnectSummaryList = {
            type = "list",
            member = M.QuickConnectSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RealTimeContactAnalysisOutputType = {
    Raw = "Raw",
    Redacted = "Redacted",
}

M.RealTimeContactAnalysisSegmentType = {
    Transcript = "Transcript",
    Categories = "Categories",
    Issues = "Issues",
    Event = "Event",
    Attachments = "Attachments",
    PostContactSummary = "PostContactSummary",
}

M.ListRealtimeContactAnalysisSegmentsV2Input = {
    type = "structure",
    id = "ListRealtimeContactAnalysisSegmentsV2Input",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        OutputType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RealTimeContactAnalysisSupportedChannel = {
    VOICE = "VOICE",
    CHAT = "CHAT",
}

M.ArtifactStatus = {
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.RealTimeContactAnalysisAttachment = {
    type = "structure",
    id = "RealTimeContactAnalysisAttachment",
    members = {
        AttachmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
        },
        AttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
    },
}

M.RealTimeContactAnalysisTimeData = {
    type = "union",
    id = "RealTimeContactAnalysisTimeData",
    members = {
        AbsoluteTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.RealTimeContactAnalysisSegmentAttachments = {
    type = "structure",
    id = "RealTimeContactAnalysisSegmentAttachments",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member = M.RealTimeContactAnalysisAttachment,
            traits = {
                required = true,
            },
        },
        Time = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RealTimeContactAnalysisTimeData }),
    },
}

M.RealTimeContactAnalysisCharacterInterval = {
    type = "structure",
    id = "RealTimeContactAnalysisCharacterInterval",
    members = {
        BeginOffsetChar = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        EndOffsetChar = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RealTimeContactAnalysisTranscriptItemWithCharacterOffsets = {
    type = "structure",
    id = "RealTimeContactAnalysisTranscriptItemWithCharacterOffsets",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CharacterOffsets = M.RealTimeContactAnalysisCharacterInterval,
    },
}

M.RealTimeContactAnalysisPointOfInterest = {
    type = "structure",
    id = "RealTimeContactAnalysisPointOfInterest",
    members = {
        TranscriptItems = {
            type = "list",
            member = M.RealTimeContactAnalysisTranscriptItemWithCharacterOffsets,
        },
    },
}

M.RealTimeContactAnalysisCategoryDetails = {
    type = "structure",
    id = "RealTimeContactAnalysisCategoryDetails",
    members = {
        PointsOfInterest = {
            type = "list",
            member = M.RealTimeContactAnalysisPointOfInterest,
            traits = {
                required = true,
            },
        },
    },
}

M.RealTimeContactAnalysisSegmentCategories = {
    type = "structure",
    id = "RealTimeContactAnalysisSegmentCategories",
    members = {
        MatchedDetails = {
            type = "map",
            key = { type = "string" },
            value = M.RealTimeContactAnalysisCategoryDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.RealTimeContactAnalysisSegmentEvent = {
    type = "structure",
    id = "RealTimeContactAnalysisSegmentEvent",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantId = {
            type = "string",
        },
        ParticipantRole = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RealTimeContactAnalysisTimeData }),
    },
}

M.RealTimeContactAnalysisTranscriptItemWithContent = {
    type = "structure",
    id = "RealTimeContactAnalysisTranscriptItemWithContent",
    members = {
        Content = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CharacterOffsets = M.RealTimeContactAnalysisCharacterInterval,
    },
}

M.RealTimeContactAnalysisIssueDetected = {
    type = "structure",
    id = "RealTimeContactAnalysisIssueDetected",
    members = {
        TranscriptItems = {
            type = "list",
            member = M.RealTimeContactAnalysisTranscriptItemWithContent,
            traits = {
                required = true,
            },
        },
    },
}

M.RealTimeContactAnalysisSegmentIssues = {
    type = "structure",
    id = "RealTimeContactAnalysisSegmentIssues",
    members = {
        IssuesDetected = {
            type = "list",
            member = M.RealTimeContactAnalysisIssueDetected,
            traits = {
                required = true,
            },
        },
    },
}

M.RealTimeContactAnalysisPostContactSummaryFailureCode = {
    QUOTA_EXCEEDED = "QUOTA_EXCEEDED",
    INSUFFICIENT_CONVERSATION_CONTENT = "INSUFFICIENT_CONVERSATION_CONTENT",
    FAILED_SAFETY_GUIDELINES = "FAILED_SAFETY_GUIDELINES",
    INVALID_ANALYSIS_CONFIGURATION = "INVALID_ANALYSIS_CONFIGURATION",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.RealTimeContactAnalysisPostContactSummaryStatus = {
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.RealTimeContactAnalysisSegmentPostContactSummary = {
    type = "structure",
    id = "RealTimeContactAnalysisSegmentPostContactSummary",
    members = {
        Content = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureCode = {
            type = "string",
        },
    },
}

M.RealTimeContactAnalysisTranscriptItemRedaction = {
    type = "structure",
    id = "RealTimeContactAnalysisTranscriptItemRedaction",
    members = {
        CharacterOffsets = {
            type = "list",
            member = M.RealTimeContactAnalysisCharacterInterval,
        },
    },
}

M.RealTimeContactAnalysisSentimentLabel = {
    POSITIVE = "POSITIVE",
    NEGATIVE = "NEGATIVE",
    NEUTRAL = "NEUTRAL",
}

M.RealTimeContactAnalysisSegmentTranscript = {
    type = "structure",
    id = "RealTimeContactAnalysisSegmentTranscript",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
        },
        Time = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RealTimeContactAnalysisTimeData }),
        Redaction = M.RealTimeContactAnalysisTranscriptItemRedaction,
        Sentiment = {
            type = "string",
        },
    },
}

M.RealtimeContactAnalysisSegment = {
    type = "union",
    id = "RealtimeContactAnalysisSegment",
    members = {
        Transcript = M.RealTimeContactAnalysisSegmentTranscript,
        Categories = M.RealTimeContactAnalysisSegmentCategories,
        Issues = M.RealTimeContactAnalysisSegmentIssues,
        Event = M.RealTimeContactAnalysisSegmentEvent,
        Attachments = M.RealTimeContactAnalysisSegmentAttachments,
        PostContactSummary = M.RealTimeContactAnalysisSegmentPostContactSummary,
    },
}

M.RealTimeContactAnalysisStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.ListRealtimeContactAnalysisSegmentsV2Output = {
    type = "structure",
    id = "ListRealtimeContactAnalysisSegmentsV2Output",
    members = {
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Segments = {
            type = "list",
            member = M.RealtimeContactAnalysisSegment,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OutputTypeNotFoundException = {
    type = "structure",
    id = "OutputTypeNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListRoutingProfileManualAssignmentQueuesInput = {
    type = "structure",
    id = "ListRoutingProfileManualAssignmentQueuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RoutingProfileManualAssignmentQueueConfigSummary = {
    type = "structure",
    id = "RoutingProfileManualAssignmentQueueConfigSummary",
    members = {
        QueueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueueArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRoutingProfileManualAssignmentQueuesOutput = {
    type = "structure",
    id = "ListRoutingProfileManualAssignmentQueuesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        RoutingProfileManualAssignmentQueueConfigSummaryList = {
            type = "list",
            member = M.RoutingProfileManualAssignmentQueueConfigSummary,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListRoutingProfileQueuesInput = {
    type = "structure",
    id = "ListRoutingProfileQueuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RoutingProfileQueueConfigSummary = {
    type = "structure",
    id = "RoutingProfileQueueConfigSummary",
    members = {
        QueueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueueArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Delay = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRoutingProfileQueuesOutput = {
    type = "structure",
    id = "ListRoutingProfileQueuesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        RoutingProfileQueueConfigSummaryList = {
            type = "list",
            member = M.RoutingProfileQueueConfigSummary,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListRoutingProfilesInput = {
    type = "structure",
    id = "ListRoutingProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RoutingProfileSummary = {
    type = "structure",
    id = "RoutingProfileSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListRoutingProfilesOutput = {
    type = "structure",
    id = "ListRoutingProfilesOutput",
    members = {
        RoutingProfileSummaryList = {
            type = "list",
            member = M.RoutingProfileSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    id = "ListRulesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PublishStatus = {
            type = "string",
            traits = {
                http_query = "publishStatus",
            },
        },
        EventSourceName = {
            type = "string",
            traits = {
                http_query = "eventSourceName",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.RuleSummary = {
    type = "structure",
    id = "RuleSummary",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionSummaries = {
            type = "list",
            member = M.ActionSummary,
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    id = "ListRulesOutput",
    members = {
        RuleSummaryList = {
            type = "list",
            member = M.RuleSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSecurityKeysInput = {
    type = "structure",
    id = "ListSecurityKeysInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SecurityKey = {
    type = "structure",
    id = "SecurityKey",
    members = {
        AssociationId = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.ListSecurityKeysOutput = {
    type = "structure",
    id = "ListSecurityKeysOutput",
    members = {
        SecurityKeys = {
            type = "list",
            member = M.SecurityKey,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSecurityProfileApplicationsInput = {
    type = "structure",
    id = "ListSecurityProfileApplicationsInput",
    members = {
        SecurityProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListSecurityProfileApplicationsOutput = {
    type = "structure",
    id = "ListSecurityProfileApplicationsOutput",
    members = {
        Applications = {
            type = "list",
            member = M.Application,
        },
        NextToken = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListSecurityProfileFlowModulesInput = {
    type = "structure",
    id = "ListSecurityProfileFlowModulesInput",
    members = {
        SecurityProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListSecurityProfileFlowModulesOutput = {
    type = "structure",
    id = "ListSecurityProfileFlowModulesOutput",
    members = {
        AllowedFlowModules = {
            type = "list",
            member = M.FlowModule,
        },
        NextToken = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListSecurityProfilePermissionsInput = {
    type = "structure",
    id = "ListSecurityProfilePermissionsInput",
    members = {
        SecurityProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListSecurityProfilePermissionsOutput = {
    type = "structure",
    id = "ListSecurityProfilePermissionsOutput",
    members = {
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListSecurityProfilesInput = {
    type = "structure",
    id = "ListSecurityProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SecurityProfileSummary = {
    type = "structure",
    id = "SecurityProfileSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListSecurityProfilesOutput = {
    type = "structure",
    id = "ListSecurityProfilesOutput",
    members = {
        SecurityProfileSummaryList = {
            type = "list",
            member = M.SecurityProfileSummary,
        },
        NextToken = {
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

M.ListTaskTemplatesInput = {
    type = "structure",
    id = "ListTaskTemplatesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        Name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
    },
}

M.TaskTemplateMetadata = {
    type = "structure",
    id = "TaskTemplateMetadata",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ListTaskTemplatesOutput = {
    type = "structure",
    id = "ListTaskTemplatesOutput",
    members = {
        TaskTemplates = {
            type = "list",
            member = M.TaskTemplateMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTestCaseExecutionRecordsInput = {
    type = "structure",
    id = "ListTestCaseExecutionRecordsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseExecutionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ExecutionRecordStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPED = "STOPPED",
}

M.ExecutionRecord = {
    type = "structure",
    id = "ExecutionRecord",
    members = {
        ObservationId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
        Record = {
            type = "string",
        },
    },
}

M.ListTestCaseExecutionRecordsOutput = {
    type = "structure",
    id = "ListTestCaseExecutionRecordsOutput",
    members = {
        ExecutionRecords = {
            type = "list",
            member = M.ExecutionRecord,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTestCaseExecutionsInput = {
    type = "structure",
    id = "ListTestCaseExecutionsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_query = "testCaseId",
            },
        },
        TestCaseName = {
            type = "string",
            traits = {
                http_query = "testCaseName",
            },
        },
        StartTime = {
            type = "long",
            traits = {
                http_query = "startTime",
            },
        },
        EndTime = {
            type = "long",
            traits = {
                http_query = "endTime",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TestCaseExecution = {
    type = "structure",
    id = "TestCaseExecution",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        TestCaseExecutionId = {
            type = "string",
        },
        TestCaseId = {
            type = "string",
        },
        TestCaseExecutionStatus = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTestCaseExecutionsOutput = {
    type = "structure",
    id = "ListTestCaseExecutionsOutput",
    members = {
        TestCaseExecutions = {
            type = "list",
            member = M.TestCaseExecution,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTestCasesInput = {
    type = "structure",
    id = "ListTestCasesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TestCaseSummary = {
    type = "structure",
    id = "TestCaseSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListTestCasesOutput = {
    type = "structure",
    id = "ListTestCasesOutput",
    members = {
        TestCaseSummaryList = {
            type = "list",
            member = M.TestCaseSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTrafficDistributionGroupsInput = {
    type = "structure",
    id = "ListTrafficDistributionGroupsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_query = "instanceId",
            },
        },
    },
}

M.TrafficDistributionGroupSummary = {
    type = "structure",
    id = "TrafficDistributionGroupSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListTrafficDistributionGroupsOutput = {
    type = "structure",
    id = "ListTrafficDistributionGroupsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        TrafficDistributionGroupSummaryList = {
            type = "list",
            member = M.TrafficDistributionGroupSummary,
        },
    },
}

M.ListTrafficDistributionGroupUsersInput = {
    type = "structure",
    id = "ListTrafficDistributionGroupUsersInput",
    members = {
        TrafficDistributionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.TrafficDistributionGroupUserSummary = {
    type = "structure",
    id = "TrafficDistributionGroupUserSummary",
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.ListTrafficDistributionGroupUsersOutput = {
    type = "structure",
    id = "ListTrafficDistributionGroupUsersOutput",
    members = {
        NextToken = {
            type = "string",
        },
        TrafficDistributionGroupUserSummaryList = {
            type = "list",
            member = M.TrafficDistributionGroupUserSummary,
        },
    },
}

M.ListUseCasesInput = {
    type = "structure",
    id = "ListUseCasesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UseCase = {
    type = "structure",
    id = "UseCase",
    members = {
        UseCaseId = {
            type = "string",
        },
        UseCaseArn = {
            type = "string",
        },
        UseCaseType = {
            type = "string",
        },
    },
}

M.ListUseCasesOutput = {
    type = "structure",
    id = "ListUseCasesOutput",
    members = {
        UseCaseSummaryList = {
            type = "list",
            member = M.UseCase,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserHierarchyGroupsInput = {
    type = "structure",
    id = "ListUserHierarchyGroupsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListUserHierarchyGroupsOutput = {
    type = "structure",
    id = "ListUserHierarchyGroupsOutput",
    members = {
        UserHierarchyGroupSummaryList = {
            type = "list",
            member = M.HierarchyGroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserNotificationsInput = {
    type = "structure",
    id = "ListUserNotificationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NotificationStatus = {
    Read = "READ",
    Unread = "UNREAD",
    Hidden = "HIDDEN",
}

M.NotificationSource = {
    Customer = "CUSTOMER",
    Rules = "RULES",
    System = "SYSTEM",
}

M.UserNotificationSummary = {
    type = "structure",
    id = "UserNotificationSummary",
    members = {
        NotificationId = {
            type = "string",
        },
        NotificationStatus = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        RecipientId = {
            type = "string",
        },
        Content = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Priority = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ExpiresAt = {
            type = "timestamp",
        },
    },
}

M.ListUserNotificationsOutput = {
    type = "structure",
    id = "ListUserNotificationsOutput",
    members = {
        UserNotifications = {
            type = "list",
            member = M.UserNotificationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserProficienciesInput = {
    type = "structure",
    id = "ListUserProficienciesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListUserProficienciesOutput = {
    type = "structure",
    id = "ListUserProficienciesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        UserProficiencyList = {
            type = "list",
            member = M.UserProficiency,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UserSummary = {
    type = "structure",
    id = "UserSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    id = "ListUsersOutput",
    members = {
        UserSummaryList = {
            type = "list",
            member = M.UserSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListViewsInput = {
    type = "structure",
    id = "ListViewsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ViewSummary = {
    type = "structure",
    id = "ViewSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ListViewsOutput = {
    type = "structure",
    id = "ListViewsOutput",
    members = {
        ViewsSummaryList = {
            type = "list",
            member = M.ViewSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListViewVersionsInput = {
    type = "structure",
    id = "ListViewVersionsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ViewVersionSummary = {
    type = "structure",
    id = "ViewVersionSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Version = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        VersionDescription = {
            type = "string",
        },
    },
}

M.ListViewVersionsOutput = {
    type = "structure",
    id = "ListViewVersionsOutput",
    members = {
        ViewVersionSummaryList = {
            type = "list",
            member = M.ViewVersionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkspaceMediaInput = {
    type = "structure",
    id = "ListWorkspaceMediaInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MediaItem = {
    type = "structure",
    id = "MediaItem",
    members = {
        Type = {
            type = "string",
        },
        Source = {
            type = "string",
        },
    },
}

M.ListWorkspaceMediaOutput = {
    type = "structure",
    id = "ListWorkspaceMediaOutput",
    members = {
        Media = {
            type = "list",
            member = M.MediaItem,
        },
    },
}

M.ListWorkspacePagesInput = {
    type = "structure",
    id = "ListWorkspacePagesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.WorkspacePage = {
    type = "structure",
    id = "WorkspacePage",
    members = {
        ResourceArn = {
            type = "string",
        },
        Page = {
            type = "string",
        },
        Slug = {
            type = "string",
        },
        InputData = {
            type = "string",
        },
    },
}

M.ListWorkspacePagesOutput = {
    type = "structure",
    id = "ListWorkspacePagesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        WorkspacePageList = {
            type = "list",
            member = M.WorkspacePage,
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkspacesInput = {
    type = "structure",
    id = "ListWorkspacesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.WorkspaceSummary = {
    type = "structure",
    id = "WorkspaceSummary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
    },
}

M.ListWorkspacesOutput = {
    type = "structure",
    id = "ListWorkspacesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        WorkspaceSummaryList = {
            type = "list",
            member = M.WorkspaceSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.MonitorContactInput = {
    type = "structure",
    id = "MonitorContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowedMonitorCapabilities = {
            type = "list",
            member = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.MonitorContactOutput = {
    type = "structure",
    id = "MonitorContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
        ContactArn = {
            type = "string",
        },
    },
}

M.PauseContactInput = {
    type = "structure",
    id = "PauseContactInput",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
        },
    },
}

M.PauseContactOutput = {
    type = "structure",
    id = "PauseContactOutput",
}

M.PutUserStatusInput = {
    type = "structure",
    id = "PutUserStatusInput",
    members = {
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AgentStatusId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutUserStatusOutput = {
    type = "structure",
    id = "PutUserStatusOutput",
}

M.ReleasePhoneNumberInput = {
    type = "structure",
    id = "ReleasePhoneNumberInput",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.ReleasePhoneNumberOutput = {
    type = "structure",
    id = "ReleasePhoneNumberOutput",
}

M.ReplicateInstanceInput = {
    type = "structure",
    id = "ReplicateInstanceInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReplicaRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ReplicaAlias = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicateInstanceOutput = {
    type = "structure",
    id = "ReplicateInstanceOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ResumeContactInput = {
    type = "structure",
    id = "ResumeContactInput",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
        },
    },
}

M.ResumeContactOutput = {
    type = "structure",
    id = "ResumeContactOutput",
}

M.InvalidActiveRegionException = {
    type = "structure",
    id = "InvalidActiveRegionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ContactRecordingType = {
    AGENT = "AGENT",
    IVR = "IVR",
    SCREEN = "SCREEN",
}

M.ResumeContactRecordingInput = {
    type = "structure",
    id = "ResumeContactRecordingInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitialContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactRecordingType = {
            type = "string",
        },
    },
}

M.ResumeContactRecordingOutput = {
    type = "structure",
    id = "ResumeContactRecordingOutput",
}

M.SearchAgentStatusesOutput = {
    type = "structure",
    id = "SearchAgentStatusesOutput",
    members = {
        AgentStatuses = {
            type = "list",
            member = M.AgentStatus,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.SearchAvailablePhoneNumbersInput = {
    type = "structure",
    id = "SearchAvailablePhoneNumbersInput",
    members = {
        TargetArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        PhoneNumberCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumberPrefix = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AvailableNumberSummary = {
    type = "structure",
    id = "AvailableNumberSummary",
    members = {
        PhoneNumber = {
            type = "string",
        },
        PhoneNumberCountryCode = {
            type = "string",
        },
        PhoneNumberType = {
            type = "string",
        },
    },
}

M.SearchAvailablePhoneNumbersOutput = {
    type = "structure",
    id = "SearchAvailablePhoneNumbersOutput",
    members = {
        NextToken = {
            type = "string",
        },
        AvailableNumbersList = {
            type = "list",
            member = M.AvailableNumberSummary,
        },
    },
}

M.BooleanComparisonType = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.BooleanCondition = {
    type = "structure",
    id = "BooleanCondition",
    members = {
        FieldName = {
            type = "string",
        },
        ComparisonType = {
            type = "string",
        },
    },
}

M.DateTimeComparisonType = {
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    RANGE = "RANGE",
}

M.DateTimeCondition = {
    type = "structure",
    id = "DateTimeCondition",
    members = {
        FieldName = {
            type = "string",
        },
        MinValue = {
            type = "string",
        },
        MaxValue = {
            type = "string",
        },
        ComparisonType = {
            type = "string",
        },
    },
}

M.DecimalComparisonType = {
    GREATER_OR_EQUAL = "GREATER_OR_EQUAL",
    GREATER = "GREATER",
    LESSER_OR_EQUAL = "LESSER_OR_EQUAL",
    LESSER = "LESSER",
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
    RANGE = "RANGE",
}

M.DecimalCondition = {
    type = "structure",
    id = "DecimalCondition",
    members = {
        FieldName = {
            type = "string",
        },
        MinValue = {
            type = "double",
        },
        MaxValue = {
            type = "double",
        },
        ComparisonType = {
            type = "string",
        },
    },
}

M.NumberComparisonType = {
    GREATER_OR_EQUAL = "GREATER_OR_EQUAL",
    GREATER = "GREATER",
    LESSER_OR_EQUAL = "LESSER_OR_EQUAL",
    LESSER = "LESSER",
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
    RANGE = "RANGE",
}

M.NumberCondition = {
    type = "structure",
    id = "NumberCondition",
    members = {
        FieldName = {
            type = "string",
        },
        MinValue = {
            type = "integer",
        },
        MaxValue = {
            type = "integer",
        },
        ComparisonType = {
            type = "string",
        },
    },
}

M.EvaluationSearchFilter = {
    type = "structure",
    id = "EvaluationSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.EvaluationSearchMetadata = {
    type = "structure",
    id = "EvaluationSearchMetadata",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactAgentId = {
            type = "string",
        },
        CalibrationSessionId = {
            type = "string",
        },
        ScorePercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        ScoreAutomaticFail = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ScoreNotApplicable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutoEvaluationEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutoEvaluationStatus = {
            type = "string",
        },
        AcknowledgedTime = {
            type = "timestamp",
        },
        AcknowledgedBy = {
            type = "string",
        },
        AcknowledgerComment = {
            type = "string",
        },
        SamplingJobId = {
            type = "string",
        },
        ReviewId = {
            type = "string",
        },
        ContactParticipantRole = {
            type = "string",
        },
        ContactParticipantId = {
            type = "string",
        },
    },
}

M.EvaluationSearchSummary = {
    type = "structure",
    id = "EvaluationSearchSummary",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
        EvaluationFormTitle = {
            type = "string",
        },
        Metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationSearchMetadata }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationType = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchContactEvaluationsOutput = {
    type = "structure",
    id = "SearchContactEvaluationsOutput",
    members = {
        EvaluationSearchSummaryList = {
            type = "list",
            member = M.EvaluationSearchSummary,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.ControlPlaneTagFilter = {
    type = "structure",
    id = "ControlPlaneTagFilter",
    members = {
        OrConditions = {
            type = "list",
            member = { type = "list" },
        },
        AndConditions = {
            type = "list",
            member = M.TagCondition,
        },
        TagCondition = M.TagCondition,
    },
}

M.ContactFlowModuleSearchFilter = {
    type = "structure",
    id = "ContactFlowModuleSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchContactFlowModulesOutput = {
    type = "structure",
    id = "SearchContactFlowModulesOutput",
    members = {
        ContactFlowModules = {
            type = "list",
            member = M.ContactFlowModule,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.ContactFlowTypeCondition = {
    type = "structure",
    id = "ContactFlowTypeCondition",
    members = {
        ContactFlowType = {
            type = "string",
        },
    },
}

M.ContactFlowAttributeAndCondition = {
    type = "structure",
    id = "ContactFlowAttributeAndCondition",
    members = {
        TagConditions = {
            type = "list",
            member = M.TagCondition,
        },
        ContactFlowTypeCondition = M.ContactFlowTypeCondition,
    },
}

M.ContactFlowAttributeFilter = {
    type = "structure",
    id = "ContactFlowAttributeFilter",
    members = {
        OrConditions = {
            type = "list",
            member = M.ContactFlowAttributeAndCondition,
        },
        AndCondition = M.ContactFlowAttributeAndCondition,
        TagCondition = M.TagCondition,
        ContactFlowTypeCondition = M.ContactFlowTypeCondition,
    },
}

M.ContactFlowSearchFilter = {
    type = "structure",
    id = "ContactFlowSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
        FlowAttributeFilter = M.ContactFlowAttributeFilter,
    },
}

M.SearchContactFlowsOutput = {
    type = "structure",
    id = "SearchContactFlowsOutput",
    members = {
        ContactFlows = {
            type = "list",
            member = M.ContactFlow,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.SearchContactsTimeRangeType = {
    INITIATION_TIMESTAMP = "INITIATION_TIMESTAMP",
    SCHEDULED_TIMESTAMP = "SCHEDULED_TIMESTAMP",
    CONNECTED_TO_AGENT_TIMESTAMP = "CONNECTED_TO_AGENT_TIMESTAMP",
    DISCONNECT_TIMESTAMP = "DISCONNECT_TIMESTAMP",
    ENQUEUE_TIMESTAMP = "ENQUEUE_TIMESTAMP",
}

M.SearchContactsTimeRange = {
    type = "structure",
    id = "SearchContactsTimeRange",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchContactsTimeRangeConditionType = {
    NOT_EXISTS = "NOT_EXISTS",
}

M.SearchContactsTimestampCondition = {
    type = "structure",
    id = "SearchContactsTimestampCondition",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchContactsAdditionalTimeRangeCriteria = {
    type = "structure",
    id = "SearchContactsAdditionalTimeRangeCriteria",
    members = {
        TimeRange = M.SearchContactsTimeRange,
        TimestampCondition = M.SearchContactsTimestampCondition,
    },
}

M.SearchContactsMatchType = {
    MATCH_ALL = "MATCH_ALL",
    MATCH_ANY = "MATCH_ANY",
    MATCH_EXACT = "MATCH_EXACT",
    MATCH_NONE = "MATCH_NONE",
}

M.SearchContactsAdditionalTimeRange = {
    type = "structure",
    id = "SearchContactsAdditionalTimeRange",
    members = {
        Criteria = {
            type = "list",
            member = M.SearchContactsAdditionalTimeRangeCriteria,
            traits = {
                required = true,
            },
        },
        MatchType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranscriptCriteria = {
    type = "structure",
    id = "TranscriptCriteria",
    members = {
        ParticipantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchText = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MatchType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Transcript = {
    type = "structure",
    id = "Transcript",
    members = {
        Criteria = {
            type = "list",
            member = M.TranscriptCriteria,
            traits = {
                required = true,
            },
        },
        MatchType = {
            type = "string",
        },
    },
}

M.ContactAnalysis = {
    type = "structure",
    id = "ContactAnalysis",
    members = {
        Transcript = M.Transcript,
    },
}

M.NameCriteria = {
    type = "structure",
    id = "NameCriteria",
    members = {
        SearchText = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MatchType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchableAgentCriteriaStep = {
    type = "structure",
    id = "SearchableAgentCriteriaStep",
    members = {
        AgentIds = {
            type = "list",
            member = { type = "string" },
        },
        MatchType = {
            type = "string",
        },
    },
}

M.SearchableRoutingCriteriaStep = {
    type = "structure",
    id = "SearchableRoutingCriteriaStep",
    members = {
        AgentCriteria = M.SearchableAgentCriteriaStep,
    },
}

M.SearchableRoutingCriteria = {
    type = "structure",
    id = "SearchableRoutingCriteria",
    members = {
        Steps = {
            type = "list",
            member = M.SearchableRoutingCriteriaStep,
        },
    },
}

M.SearchableContactAttributesCriteria = {
    type = "structure",
    id = "SearchableContactAttributesCriteria",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SearchableContactAttributes = {
    type = "structure",
    id = "SearchableContactAttributes",
    members = {
        Criteria = {
            type = "list",
            member = M.SearchableContactAttributesCriteria,
            traits = {
                required = true,
            },
        },
        MatchType = {
            type = "string",
        },
    },
}

M.SearchableSegmentAttributesCriteria = {
    type = "structure",
    id = "SearchableSegmentAttributesCriteria",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SearchableSegmentAttributes = {
    type = "structure",
    id = "SearchableSegmentAttributes",
    members = {
        Criteria = {
            type = "list",
            member = M.SearchableSegmentAttributesCriteria,
            traits = {
                required = true,
            },
        },
        MatchType = {
            type = "string",
        },
    },
}

M.SearchCriteria = {
    type = "structure",
    id = "SearchCriteria",
    members = {
        Name = M.NameCriteria,
        AgentIds = {
            type = "list",
            member = { type = "string" },
        },
        AgentHierarchyGroups = M.AgentHierarchyGroups,
        Channels = {
            type = "list",
            member = { type = "string" },
        },
        ContactAnalysis = M.ContactAnalysis,
        InitiationMethods = {
            type = "list",
            member = { type = "string" },
        },
        QueueIds = {
            type = "list",
            member = { type = "string" },
        },
        RoutingCriteria = M.SearchableRoutingCriteria,
        AdditionalTimeRange = M.SearchContactsAdditionalTimeRange,
        SearchableContactAttributes = M.SearchableContactAttributes,
        SearchableSegmentAttributes = M.SearchableSegmentAttributes,
        ActiveRegions = {
            type = "list",
            member = { type = "string" },
        },
        ContactTags = M.ControlPlaneTagFilter,
    },
}

M.SortableFieldName = {
    INITIATION_TIMESTAMP = "INITIATION_TIMESTAMP",
    SCHEDULED_TIMESTAMP = "SCHEDULED_TIMESTAMP",
    CONNECTED_TO_AGENT_TIMESTAMP = "CONNECTED_TO_AGENT_TIMESTAMP",
    DISCONNECT_TIMESTAMP = "DISCONNECT_TIMESTAMP",
    INITIATION_METHOD = "INITIATION_METHOD",
    CHANNEL = "CHANNEL",
    EXPIRY_TIMESTAMP = "EXPIRY_TIMESTAMP",
}

M.Sort = {
    type = "structure",
    id = "Sort",
    members = {
        FieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchContactsInput = {
    type = "structure",
    id = "SearchContactsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchContactsTimeRange }),
        SearchCriteria = M.SearchCriteria,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Sort = M.Sort,
    },
}

M.ContactSearchSummaryAgentInfo = {
    type = "structure",
    id = "ContactSearchSummaryAgentInfo",
    members = {
        Id = {
            type = "string",
        },
        ConnectedToAgentTimestamp = {
            type = "timestamp",
        },
    },
}

M.ContactSearchSummaryQueueInfo = {
    type = "structure",
    id = "ContactSearchSummaryQueueInfo",
    members = {
        Id = {
            type = "string",
        },
        EnqueueTimestamp = {
            type = "timestamp",
        },
    },
}

M.DataTableSearchFilter = {
    type = "structure",
    id = "DataTableSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.SearchDataTablesOutput = {
    type = "structure",
    id = "SearchDataTablesOutput",
    members = {
        DataTables = {
            type = "list",
            member = M.DataTable,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.EmailAddressSearchFilter = {
    type = "structure",
    id = "EmailAddressSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.EmailAddressMetadata = {
    type = "structure",
    id = "EmailAddressMetadata",
    members = {
        EmailAddressId = {
            type = "string",
        },
        EmailAddressArn = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        AliasConfigurations = {
            type = "list",
            member = M.AliasConfiguration,
        },
    },
}

M.SearchEmailAddressesOutput = {
    type = "structure",
    id = "SearchEmailAddressesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        EmailAddresses = {
            type = "list",
            member = M.EmailAddressMetadata,
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.EvaluationFormSearchFilter = {
    type = "structure",
    id = "EvaluationFormSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.EvaluationFormSearchSummary = {
    type = "structure",
    id = "EvaluationFormSearchSummary",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastActivatedTime = {
            type = "timestamp",
        },
        LastActivatedBy = {
            type = "string",
        },
        LatestVersion = {
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
        ActiveVersion = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        AutoEvaluationEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EvaluationFormLanguage = {
            type = "string",
        },
        ContactInteractionType = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchEvaluationFormsOutput = {
    type = "structure",
    id = "SearchEvaluationFormsOutput",
    members = {
        EvaluationFormSearchSummaryList = {
            type = "list",
            member = M.EvaluationFormSearchSummary,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.DateComparisonType = {
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
}

M.DateCondition = {
    type = "structure",
    id = "DateCondition",
    members = {
        FieldName = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        ComparisonType = {
            type = "string",
        },
    },
}

M.HoursOfOperationSearchFilter = {
    type = "structure",
    id = "HoursOfOperationSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchHoursOfOperationOverridesOutput = {
    type = "structure",
    id = "SearchHoursOfOperationOverridesOutput",
    members = {
        HoursOfOperationOverrides = {
            type = "list",
            member = M.HoursOfOperationOverride,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.SearchHoursOfOperationsOutput = {
    type = "structure",
    id = "SearchHoursOfOperationsOutput",
    members = {
        HoursOfOperations = {
            type = "list",
            member = M.HoursOfOperation,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.NotificationSearchFilter = {
    type = "structure",
    id = "NotificationSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.NotificationSearchSummary = {
    type = "structure",
    id = "NotificationSearchSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        Content = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Priority = {
            type = "string",
        },
        Recipients = {
            type = "list",
            member = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
        },
        ExpiresAt = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchNotificationsOutput = {
    type = "structure",
    id = "SearchNotificationsOutput",
    members = {
        Notifications = {
            type = "list",
            member = M.NotificationSearchSummary,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.SearchPredefinedAttributesOutput = {
    type = "structure",
    id = "SearchPredefinedAttributesOutput",
    members = {
        PredefinedAttributes = {
            type = "list",
            member = M.PredefinedAttribute,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.PromptSearchFilter = {
    type = "structure",
    id = "PromptSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchPromptsOutput = {
    type = "structure",
    id = "SearchPromptsOutput",
    members = {
        Prompts = {
            type = "list",
            member = M.Prompt,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.SearchableQueueType = {
    STANDARD = "STANDARD",
}

M.QueueSearchFilter = {
    type = "structure",
    id = "QueueSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchQueuesOutput = {
    type = "structure",
    id = "SearchQueuesOutput",
    members = {
        Queues = {
            type = "list",
            member = M.Queue,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.QuickConnectSearchFilter = {
    type = "structure",
    id = "QuickConnectSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchQuickConnectsOutput = {
    type = "structure",
    id = "SearchQuickConnectsOutput",
    members = {
        QuickConnects = {
            type = "list",
            member = M.QuickConnect,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.MaximumResultReturnedException = {
    type = "structure",
    id = "MaximumResultReturnedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagSearchCondition = {
    type = "structure",
    id = "TagSearchCondition",
    members = {
        tagKey = {
            type = "string",
        },
        tagValue = {
            type = "string",
        },
        tagKeyComparisonType = {
            type = "string",
        },
        tagValueComparisonType = {
            type = "string",
        },
    },
}

M.ResourceTagsSearchCriteria = {
    type = "structure",
    id = "ResourceTagsSearchCriteria",
    members = {
        TagSearchCondition = M.TagSearchCondition,
    },
}

M.SearchResourceTagsInput = {
    type = "structure",
    id = "SearchResourceTagsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchCriteria = M.ResourceTagsSearchCriteria,
    },
}

M.TagSet = {
    type = "structure",
    id = "TagSet",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.SearchResourceTagsOutput = {
    type = "structure",
    id = "SearchResourceTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.TagSet,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RoutingProfileSearchFilter = {
    type = "structure",
    id = "RoutingProfileSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchRoutingProfilesOutput = {
    type = "structure",
    id = "SearchRoutingProfilesOutput",
    members = {
        RoutingProfiles = {
            type = "list",
            member = M.RoutingProfile,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.SecurityProfilesSearchFilter = {
    type = "structure",
    id = "SecurityProfilesSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SecurityProfileSearchSummary = {
    type = "structure",
    id = "SecurityProfileSearchSummary",
    members = {
        Id = {
            type = "string",
        },
        OrganizationResourceId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        SecurityProfileName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchSecurityProfilesOutput = {
    type = "structure",
    id = "SearchSecurityProfilesOutput",
    members = {
        SecurityProfiles = {
            type = "list",
            member = M.SecurityProfileSearchSummary,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.TestCaseSearchFilter = {
    type = "structure",
    id = "TestCaseSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchTestCasesOutput = {
    type = "structure",
    id = "SearchTestCasesOutput",
    members = {
        TestCases = {
            type = "list",
            member = M.TestCase,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.UserHierarchyGroupSearchFilter = {
    type = "structure",
    id = "UserHierarchyGroupSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.SearchUserHierarchyGroupsOutput = {
    type = "structure",
    id = "SearchUserHierarchyGroupsOutput",
    members = {
        UserHierarchyGroups = {
            type = "list",
            member = M.HierarchyGroup,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.HierarchyGroupMatchType = {
    EXACT = "EXACT",
    WITH_CHILD_GROUPS = "WITH_CHILD_GROUPS",
}

M.HierarchyGroupCondition = {
    type = "structure",
    id = "HierarchyGroupCondition",
    members = {
        Value = {
            type = "string",
        },
        HierarchyGroupMatchType = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    id = "Condition",
    members = {
        StringCondition = M.StringCondition,
        NumberCondition = M.NumberCondition,
    },
}

M.TargetListType = {
    PROFICIENCIES = "PROFICIENCIES",
}

M.ListCondition = {
    type = "structure",
    id = "ListCondition",
    members = {
        TargetListType = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member = M.Condition,
        },
    },
}

M.AttributeAndCondition = {
    type = "structure",
    id = "AttributeAndCondition",
    members = {
        TagConditions = {
            type = "list",
            member = M.TagCondition,
        },
        HierarchyGroupCondition = M.HierarchyGroupCondition,
    },
}

M.ControlPlaneUserAttributeFilter = {
    type = "structure",
    id = "ControlPlaneUserAttributeFilter",
    members = {
        OrConditions = {
            type = "list",
            member = M.AttributeAndCondition,
        },
        AndCondition = M.AttributeAndCondition,
        TagCondition = M.TagCondition,
        HierarchyGroupCondition = M.HierarchyGroupCondition,
    },
}

M.UserSearchFilter = {
    type = "structure",
    id = "UserSearchFilter",
    members = {
        TagFilter = M.ControlPlaneTagFilter,
        UserAttributeFilter = M.ControlPlaneUserAttributeFilter,
    },
}

M.UserIdentityInfoLite = {
    type = "structure",
    id = "UserIdentityInfoLite",
    members = {
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
    },
}

M.UserSearchSummary = {
    type = "structure",
    id = "UserSearchSummary",
    members = {
        Arn = {
            type = "string",
        },
        DirectoryUserId = {
            type = "string",
        },
        HierarchyGroupId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        IdentityInfo = M.UserIdentityInfoLite,
        PhoneConfig = M.UserPhoneConfig,
        RoutingProfileId = {
            type = "string",
        },
        SecurityProfileIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Username = {
            type = "string",
        },
        AutoAcceptConfigs = {
            type = "list",
            member = M.AutoAcceptConfig,
        },
        AfterContactWorkConfigs = {
            type = "list",
            member = M.AfterContactWorkConfigPerChannel,
        },
        PhoneNumberConfigs = {
            type = "list",
            member = M.PhoneNumberConfig,
        },
        PersistentConnectionConfigs = {
            type = "list",
            member = M.PersistentConnectionConfig,
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member = M.VoiceEnhancementConfig,
        },
    },
}

M.SearchUsersOutput = {
    type = "structure",
    id = "SearchUsersOutput",
    members = {
        Users = {
            type = "list",
            member = M.UserSearchSummary,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.ViewSearchFilter = {
    type = "structure",
    id = "ViewSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.SearchViewsOutput = {
    type = "structure",
    id = "SearchViewsOutput",
    members = {
        Views = {
            type = "list",
            member = M.View,
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.SearchVocabulariesInput = {
    type = "structure",
    id = "SearchVocabulariesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        State = {
            type = "string",
        },
        NameStartsWith = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
    },
}

M.VocabularySummary = {
    type = "structure",
    id = "VocabularySummary",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.SearchVocabulariesOutput = {
    type = "structure",
    id = "SearchVocabulariesOutput",
    members = {
        VocabularySummaryList = {
            type = "list",
            member = M.VocabularySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.WorkspaceAssociationSearchFilter = {
    type = "structure",
    id = "WorkspaceAssociationSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.WorkspaceAssociationSearchSummary = {
    type = "structure",
    id = "WorkspaceAssociationSearchSummary",
    members = {
        WorkspaceId = {
            type = "string",
        },
        WorkspaceArn = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.SearchWorkspaceAssociationsOutput = {
    type = "structure",
    id = "SearchWorkspaceAssociationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        WorkspaceAssociations = {
            type = "list",
            member = M.WorkspaceAssociationSearchSummary,
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.WorkspaceSearchFilter = {
    type = "structure",
    id = "WorkspaceSearchFilter",
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.WorkspaceSearchSummary = {
    type = "structure",
    id = "WorkspaceSearchSummary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchWorkspacesOutput = {
    type = "structure",
    id = "SearchWorkspacesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Workspaces = {
            type = "list",
            member = M.WorkspaceSearchSummary,
        },
        ApproximateTotalCount = {
            type = "long",
        },
    },
}

M.ChatEventType = {
    DISCONNECT = "DISCONNECT",
    MESSAGE = "MESSAGE",
    EVENT = "EVENT",
}

M.ChatEvent = {
    type = "structure",
    id = "ChatEvent",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
        },
        Content = {
            type = "string",
        },
    },
}

M.ParticipantDetails = {
    type = "structure",
    id = "ParticipantDetails",
    members = {
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChatStreamingConfiguration = {
    type = "structure",
    id = "ChatStreamingConfiguration",
    members = {
        StreamingEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NewSessionDetails = {
    type = "structure",
    id = "NewSessionDetails",
    members = {
        SupportedMessagingContentTypes = {
            type = "list",
            member = { type = "string" },
        },
        ParticipantDetails = M.ParticipantDetails,
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        StreamingConfiguration = M.ChatStreamingConfiguration,
    },
}

M.SendChatIntegrationEventInput = {
    type = "structure",
    id = "SendChatIntegrationEventInput",
    members = {
        SourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subtype = {
            type = "string",
        },
        Event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChatEvent }),
        NewSessionDetails = M.NewSessionDetails,
    },
}

M.SendChatIntegrationEventOutput = {
    type = "structure",
    id = "SendChatIntegrationEventOutput",
    members = {
        InitialContactId = {
            type = "string",
        },
        NewChatCreated = {
            type = "boolean",
        },
    },
}

M.EmailAddressInfo = {
    type = "structure",
    id = "EmailAddressInfo",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.OutboundAdditionalRecipients = {
    type = "structure",
    id = "OutboundAdditionalRecipients",
    members = {
        CcEmailAddresses = {
            type = "list",
            member = M.EmailAddressInfo,
        },
    },
}

M.OutboundMessageSourceType = {
    TEMPLATE = "TEMPLATE",
    RAW = "RAW",
}

M.OutboundRawMessage = {
    type = "structure",
    id = "OutboundRawMessage",
    members = {
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Body = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateAttributes = {
    type = "structure",
    id = "TemplateAttributes",
    members = {
        CustomAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CustomerProfileAttributes = {
            type = "string",
        },
    },
}

M.TemplatedMessageConfig = {
    type = "structure",
    id = "TemplatedMessageConfig",
    members = {
        KnowledgeBaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TemplateAttributes }),
    },
}

M.OutboundEmailContent = {
    type = "structure",
    id = "OutboundEmailContent",
    members = {
        MessageSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplatedMessageConfig = M.TemplatedMessageConfig,
        RawMessage = M.OutboundRawMessage,
    },
}

M.SourceCampaign = {
    type = "structure",
    id = "SourceCampaign",
    members = {
        CampaignId = {
            type = "string",
        },
        OutboundRequestId = {
            type = "string",
        },
    },
}

M.TrafficType = {
    GENERAL = "GENERAL",
    CAMPAIGN = "CAMPAIGN",
}

M.SendOutboundEmailInput = {
    type = "structure",
    id = "SendOutboundEmailInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FromEmailAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailAddressInfo }),
        DestinationEmailAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailAddressInfo }),
        AdditionalRecipients = M.OutboundAdditionalRecipients,
        EmailMessage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutboundEmailContent }),
        TrafficType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceCampaign = M.SourceCampaign,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.SendOutboundEmailOutput = {
    type = "structure",
    id = "SendOutboundEmailOutput",
}

M.StartAttachedFileUploadInput = {
    type = "structure",
    id = "StartAttachedFileUploadInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        UrlExpiryInSeconds = {
            type = "integer",
        },
        FileUseCaseType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociatedResourceArn = {
            type = "string",
            traits = {
                http_query = "associatedResourceArn",
                required = true,
            },
        },
        CreatedBy = M.CreatedByInfo,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UploadUrlMetadata = {
    type = "structure",
    id = "UploadUrlMetadata",
    members = {
        Url = {
            type = "string",
        },
        UrlExpiry = {
            type = "string",
        },
        HeadersToInclude = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartAttachedFileUploadOutput = {
    type = "structure",
    id = "StartAttachedFileUploadOutput",
    members = {
        FileArn = {
            type = "string",
        },
        FileId = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        FileStatus = {
            type = "string",
        },
        CreatedBy = M.CreatedByInfo,
        UploadUrlMetadata = M.UploadUrlMetadata,
    },
}

M.DisconnectOnCustomerExitParticipantType = {
    AGENT = "AGENT",
}

M.ChatMessage = {
    type = "structure",
    id = "ChatMessage",
    members = {
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseMode = {
    INCREMENTAL = "INCREMENTAL",
    COMPLETE = "COMPLETE",
}

M.ParticipantConfiguration = {
    type = "structure",
    id = "ParticipantConfiguration",
    members = {
        ResponseMode = {
            type = "string",
        },
    },
}

M.PersistentChat = {
    type = "structure",
    id = "PersistentChat",
    members = {
        RehydrationType = {
            type = "string",
        },
        SourceContactId = {
            type = "string",
        },
    },
}

M.StartChatContactOutput = {
    type = "structure",
    id = "StartChatContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
        ParticipantId = {
            type = "string",
        },
        ParticipantToken = {
            type = "string",
        },
        ContinuedFromContactId = {
            type = "string",
        },
    },
}

M.AutoEvaluationConfiguration = {
    type = "structure",
    id = "AutoEvaluationConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.StartContactEvaluationInput = {
    type = "structure",
    id = "StartContactEvaluationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoEvaluationConfiguration = M.AutoEvaluationConfiguration,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartContactEvaluationOutput = {
    type = "structure",
    id = "StartContactEvaluationOutput",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContactMediaProcessingFailureMode = {
    DELIVER_UNPROCESSED_MESSAGE = "DELIVER_UNPROCESSED_MESSAGE",
    DO_NOT_DELIVER_UNPROCESSED_MESSAGE = "DO_NOT_DELIVER_UNPROCESSED_MESSAGE",
}

M.StartContactMediaProcessingInput = {
    type = "structure",
    id = "StartContactMediaProcessingInput",
    members = {
        InstanceId = {
            type = "string",
        },
        ContactId = {
            type = "string",
        },
        ProcessorArn = {
            type = "string",
        },
        FailureMode = {
            type = "string",
        },
    },
}

M.StartContactMediaProcessingOutput = {
    type = "structure",
    id = "StartContactMediaProcessingOutput",
}

M.IvrRecordingTrack = {
    ALL = "ALL",
}

M.VoiceRecordingTrack = {
    FROM_AGENT = "FROM_AGENT",
    TO_AGENT = "TO_AGENT",
    ALL = "ALL",
}

M.VoiceRecordingConfiguration = {
    type = "structure",
    id = "VoiceRecordingConfiguration",
    members = {
        VoiceRecordingTrack = {
            type = "string",
        },
        IvrRecordingTrack = {
            type = "string",
        },
    },
}

M.StartContactRecordingInput = {
    type = "structure",
    id = "StartContactRecordingInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitialContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VoiceRecordingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VoiceRecordingConfiguration }),
    },
}

M.StartContactRecordingOutput = {
    type = "structure",
    id = "StartContactRecordingOutput",
}

M.StartContactStreamingInput = {
    type = "structure",
    id = "StartContactStreamingInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatStreamingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChatStreamingConfiguration }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.StartContactStreamingOutput = {
    type = "structure",
    id = "StartContactStreamingOutput",
    members = {
        StreamingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InboundAdditionalRecipients = {
    type = "structure",
    id = "InboundAdditionalRecipients",
    members = {
        ToAddresses = {
            type = "list",
            member = M.EmailAddressInfo,
        },
        CcAddresses = {
            type = "list",
            member = M.EmailAddressInfo,
        },
    },
}

M.EmailAttachment = {
    type = "structure",
    id = "EmailAttachment",
    members = {
        FileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InboundMessageSourceType = {
    RAW = "RAW",
}

M.EmailHeaderType = {
    REFERENCES = "REFERENCES",
    MESSAGE_ID = "MESSAGE_ID",
    IN_REPLY_TO = "IN_REPLY_TO",
    X_SES_SPAM_VERDICT = "X_SES_SPAM_VERDICT",
    X_SES_VIRUS_VERDICT = "X_SES_VIRUS_VERDICT",
}

M.InboundRawMessage = {
    type = "structure",
    id = "InboundRawMessage",
    members = {
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Body = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InboundEmailContent = {
    type = "structure",
    id = "InboundEmailContent",
    members = {
        MessageSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RawMessage = M.InboundRawMessage,
    },
}

M.StartEmailContactOutput = {
    type = "structure",
    id = "StartEmailContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartOutboundChatContactOutput = {
    type = "structure",
    id = "StartOutboundChatContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartOutboundEmailContactInput = {
    type = "structure",
    id = "StartOutboundEmailContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FromEmailAddress = M.EmailAddressInfo,
        DestinationEmailAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailAddressInfo }),
        AdditionalRecipients = M.OutboundAdditionalRecipients,
        EmailMessage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutboundEmailContent }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartOutboundEmailContactOutput = {
    type = "structure",
    id = "StartOutboundEmailContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.DestinationNotAllowedException = {
    type = "structure",
    id = "DestinationNotAllowedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OutboundContactNotPermittedException = {
    type = "structure",
    id = "OutboundContactNotPermittedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AnswerMachineDetectionConfig = {
    type = "structure",
    id = "AnswerMachineDetectionConfig",
    members = {
        EnableAnswerMachineDetection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AwaitAnswerMachinePrompt = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.StartOutboundVoiceContactInput = {
    type = "structure",
    id = "StartOutboundVoiceContactInput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        References = {
            type = "map",
            key = { type = "string" },
            value = M.Reference,
        },
        RelatedContactId = {
            type = "string",
        },
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        SourcePhoneNumber = {
            type = "string",
        },
        QueueId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AnswerMachineDetectionConfig = M.AnswerMachineDetectionConfig,
        CampaignId = {
            type = "string",
        },
        TrafficType = {
            type = "string",
        },
        OutboundStrategy = M.OutboundStrategy,
        RingTimeoutInSeconds = {
            type = "integer",
        },
    },
}

M.StartOutboundVoiceContactOutput = {
    type = "structure",
    id = "StartOutboundVoiceContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartScreenSharingInput = {
    type = "structure",
    id = "StartScreenSharingInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartScreenSharingOutput = {
    type = "structure",
    id = "StartScreenSharingOutput",
}

M.TaskAttachment = {
    type = "structure",
    id = "TaskAttachment",
    members = {
        FileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartTaskContactOutput = {
    type = "structure",
    id = "StartTaskContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartTestCaseExecutionInput = {
    type = "structure",
    id = "StartTestCaseExecutionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartTestCaseExecutionOutput = {
    type = "structure",
    id = "StartTestCaseExecutionOutput",
    members = {
        TestCaseExecutionId = {
            type = "string",
        },
        TestCaseId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.StartWebRTCContactInput = {
    type = "structure",
    id = "StartWebRTCContactInput",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowedCapabilities = M.AllowedCapabilities,
        ParticipantDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ParticipantDetails }),
        RelatedContactId = {
            type = "string",
        },
        References = {
            type = "map",
            key = { type = "string" },
            value = M.Reference,
        },
        Description = {
            type = "string",
        },
    },
}

M.Attendee = {
    type = "structure",
    id = "Attendee",
    members = {
        AttendeeId = {
            type = "string",
        },
        JoinToken = {
            type = "string",
        },
    },
}

M.MediaPlacement = {
    type = "structure",
    id = "MediaPlacement",
    members = {
        AudioHostUrl = {
            type = "string",
        },
        AudioFallbackUrl = {
            type = "string",
        },
        SignalingUrl = {
            type = "string",
        },
        TurnControlUrl = {
            type = "string",
        },
        EventIngestionUrl = {
            type = "string",
        },
    },
}

M.MeetingFeatureStatus = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
}

M.AudioFeatures = {
    type = "structure",
    id = "AudioFeatures",
    members = {
        EchoReduction = {
            type = "string",
        },
    },
}

M.MeetingFeaturesConfiguration = {
    type = "structure",
    id = "MeetingFeaturesConfiguration",
    members = {
        Audio = M.AudioFeatures,
    },
}

M.Meeting = {
    type = "structure",
    id = "Meeting",
    members = {
        MediaRegion = {
            type = "string",
        },
        MediaPlacement = M.MediaPlacement,
        MeetingFeatures = M.MeetingFeaturesConfiguration,
        MeetingId = {
            type = "string",
        },
    },
}

M.ConnectionData = {
    type = "structure",
    id = "ConnectionData",
    members = {
        Attendee = M.Attendee,
        Meeting = M.Meeting,
    },
}

M.StartWebRTCContactOutput = {
    type = "structure",
    id = "StartWebRTCContactOutput",
    members = {
        ConnectionData = M.ConnectionData,
        ContactId = {
            type = "string",
        },
        ParticipantId = {
            type = "string",
        },
        ParticipantToken = {
            type = "string",
        },
    },
}

M.ContactNotFoundException = {
    type = "structure",
    id = "ContactNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisconnectReason = {
    type = "structure",
    id = "DisconnectReason",
    members = {
        Code = {
            type = "string",
        },
    },
}

M.StopContactInput = {
    type = "structure",
    id = "StopContactInput",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisconnectReason = M.DisconnectReason,
    },
}

M.StopContactOutput = {
    type = "structure",
    id = "StopContactOutput",
}

M.StopContactMediaProcessingInput = {
    type = "structure",
    id = "StopContactMediaProcessingInput",
    members = {
        InstanceId = {
            type = "string",
        },
        ContactId = {
            type = "string",
        },
    },
}

M.StopContactMediaProcessingOutput = {
    type = "structure",
    id = "StopContactMediaProcessingOutput",
}

M.StopContactRecordingInput = {
    type = "structure",
    id = "StopContactRecordingInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitialContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactRecordingType = {
            type = "string",
        },
    },
}

M.StopContactRecordingOutput = {
    type = "structure",
    id = "StopContactRecordingOutput",
}

M.StopContactStreamingInput = {
    type = "structure",
    id = "StopContactStreamingInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopContactStreamingOutput = {
    type = "structure",
    id = "StopContactStreamingOutput",
}

M.StopTestCaseExecutionInput = {
    type = "structure",
    id = "StopTestCaseExecutionInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseExecutionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StopTestCaseExecutionOutput = {
    type = "structure",
    id = "StopTestCaseExecutionOutput",
}

M.EvaluationAnswerInput = {
    type = "structure",
    id = "EvaluationAnswerInput",
    members = {
        Value = M.EvaluationAnswerData,
    },
}

M.EvaluatorUserUnion = {
    type = "union",
    id = "EvaluatorUserUnion",
    members = {
        ConnectUserArn = {
            type = "string",
        },
    },
}

M.SubmitContactEvaluationInput = {
    type = "structure",
    id = "SubmitContactEvaluationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Answers = {
            type = "map",
            key = { type = "string" },
            value = M.EvaluationAnswerInput,
        },
        Notes = {
            type = "map",
            key = { type = "string" },
            value = M.EvaluationNote,
        },
        SubmittedBy = M.EvaluatorUserUnion,
    },
}

M.SubmitContactEvaluationOutput = {
    type = "structure",
    id = "SubmitContactEvaluationOutput",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SuspendContactRecordingInput = {
    type = "structure",
    id = "SuspendContactRecordingInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitialContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactRecordingType = {
            type = "string",
        },
    },
}

M.SuspendContactRecordingOutput = {
    type = "structure",
    id = "SuspendContactRecordingOutput",
}

M.TagContactInput = {
    type = "structure",
    id = "TagContactInput",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagContactOutput = {
    type = "structure",
    id = "TagContactOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
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

M.TransferContactInput = {
    type = "structure",
    id = "TransferContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueueId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.TransferContactOutput = {
    type = "structure",
    id = "TransferContactOutput",
    members = {
        ContactId = {
            type = "string",
        },
        ContactArn = {
            type = "string",
        },
    },
}

M.UntagContactInput = {
    type = "structure",
    id = "UntagContactInput",
    members = {
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "TagKeys",
                required = true,
            },
        },
    },
}

M.UntagContactOutput = {
    type = "structure",
    id = "UntagContactOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
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

M.UpdateAgentStatusInput = {
    type = "structure",
    id = "UpdateAgentStatusInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AgentStatusId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        DisplayOrder = {
            type = "integer",
        },
        ResetOrderNumber = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateAgentStatusOutput = {
    type = "structure",
    id = "UpdateAgentStatusOutput",
}

M.UpdateAttachedFilesConfigurationInput = {
    type = "structure",
    id = "UpdateAttachedFilesConfigurationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttachmentScope = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaximumSizeLimitInBytes = {
            type = "long",
        },
        ExtensionConfiguration = M.ExtensionConfiguration,
    },
}

M.UpdateAttachedFilesConfigurationOutput = {
    type = "structure",
    id = "UpdateAttachedFilesConfigurationOutput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumSizeLimitInBytes = {
            type = "long",
        },
        ExtensionConfiguration = M.ExtensionConfiguration,
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.UpdateAuthenticationProfileInput = {
    type = "structure",
    id = "UpdateAuthenticationProfileInput",
    members = {
        AuthenticationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AllowedIps = {
            type = "list",
            member = { type = "string" },
        },
        BlockedIps = {
            type = "list",
            member = { type = "string" },
        },
        PeriodicSessionDuration = {
            type = "integer",
        },
        SessionInactivityDuration = {
            type = "integer",
        },
        SessionInactivityHandlingEnabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdateAuthenticationProfileOutput = {
    type = "structure",
    id = "UpdateAuthenticationProfileOutput",
}

M.QueueInfoInput = {
    type = "structure",
    id = "QueueInfoInput",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.UpdateContactOutput = {
    type = "structure",
    id = "UpdateContactOutput",
}

M.UpdateContactAttributesInput = {
    type = "structure",
    id = "UpdateContactAttributesInput",
    members = {
        InitialContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateContactAttributesOutput = {
    type = "structure",
    id = "UpdateContactAttributesOutput",
}

M.UpdateContactEvaluationInput = {
    type = "structure",
    id = "UpdateContactEvaluationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Answers = {
            type = "map",
            key = { type = "string" },
            value = M.EvaluationAnswerInput,
        },
        Notes = {
            type = "map",
            key = { type = "string" },
            value = M.EvaluationNote,
        },
        UpdatedBy = M.EvaluatorUserUnion,
    },
}

M.UpdateContactEvaluationOutput = {
    type = "structure",
    id = "UpdateContactEvaluationOutput",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateContactFlowContentInput = {
    type = "structure",
    id = "UpdateContactFlowContentInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateContactFlowContentOutput = {
    type = "structure",
    id = "UpdateContactFlowContentOutput",
}

M.UpdateContactFlowMetadataInput = {
    type = "structure",
    id = "UpdateContactFlowMetadataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ContactFlowState = {
            type = "string",
        },
    },
}

M.UpdateContactFlowMetadataOutput = {
    type = "structure",
    id = "UpdateContactFlowMetadataOutput",
}

M.UpdateContactFlowModuleAliasInput = {
    type = "structure",
    id = "UpdateContactFlowModuleAliasInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ContactFlowModuleVersion = {
            type = "long",
        },
    },
}

M.UpdateContactFlowModuleAliasOutput = {
    type = "structure",
    id = "UpdateContactFlowModuleAliasOutput",
}

M.UpdateContactFlowModuleContentInput = {
    type = "structure",
    id = "UpdateContactFlowModuleContentInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Content = {
            type = "string",
        },
        Settings = {
            type = "string",
        },
    },
}

M.UpdateContactFlowModuleContentOutput = {
    type = "structure",
    id = "UpdateContactFlowModuleContentOutput",
}

M.UpdateContactFlowModuleMetadataInput = {
    type = "structure",
    id = "UpdateContactFlowModuleMetadataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowModuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.UpdateContactFlowModuleMetadataOutput = {
    type = "structure",
    id = "UpdateContactFlowModuleMetadataOutput",
}

M.UpdateContactFlowNameInput = {
    type = "structure",
    id = "UpdateContactFlowNameInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateContactFlowNameOutput = {
    type = "structure",
    id = "UpdateContactFlowNameOutput",
}

M.RoutingCriteriaInputStepExpiry = {
    type = "structure",
    id = "RoutingCriteriaInputStepExpiry",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.UpdateContactRoutingDataOutput = {
    type = "structure",
    id = "UpdateContactRoutingDataOutput",
}

M.UpdateContactScheduleInput = {
    type = "structure",
    id = "UpdateContactScheduleInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateContactScheduleOutput = {
    type = "structure",
    id = "UpdateContactScheduleOutput",
}

M.UpdateDataTableAttributeInput = {
    type = "structure",
    id = "UpdateDataTableAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Primary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Validation = M.Validation,
    },
}

M.UpdateDataTableAttributeOutput = {
    type = "structure",
    id = "UpdateDataTableAttributeOutput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.UpdateDataTableMetadataInput = {
    type = "structure",
    id = "UpdateDataTableMetadataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ValueLockLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDataTableMetadataOutput = {
    type = "structure",
    id = "UpdateDataTableMetadataOutput",
    members = {
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.UpdateDataTablePrimaryValuesInput = {
    type = "structure",
    id = "UpdateDataTablePrimaryValuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataTableId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        NewPrimaryValues = {
            type = "list",
            member = M.PrimaryValue,
            traits = {
                required = true,
            },
        },
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.UpdateDataTablePrimaryValuesOutput = {
    type = "structure",
    id = "UpdateDataTablePrimaryValuesOutput",
    members = {
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.UpdateEmailAddressMetadataInput = {
    type = "structure",
    id = "UpdateEmailAddressMetadataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddressId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.UpdateEmailAddressMetadataOutput = {
    type = "structure",
    id = "UpdateEmailAddressMetadataOutput",
    members = {
        EmailAddressId = {
            type = "string",
        },
        EmailAddressArn = {
            type = "string",
        },
    },
}

M.UpdateEvaluationFormOutput = {
    type = "structure",
    id = "UpdateEvaluationFormOutput",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.UpdateHoursOfOperationInput = {
    type = "structure",
    id = "UpdateHoursOfOperationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TimeZone = {
            type = "string",
        },
        Config = {
            type = "list",
            member = M.HoursOfOperationConfig,
        },
    },
}

M.UpdateHoursOfOperationOutput = {
    type = "structure",
    id = "UpdateHoursOfOperationOutput",
}

M.UpdateHoursOfOperationOverrideInput = {
    type = "structure",
    id = "UpdateHoursOfOperationOverrideInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationOverrideId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Config = {
            type = "list",
            member = M.HoursOfOperationOverrideConfig,
        },
        EffectiveFrom = {
            type = "string",
        },
        EffectiveTill = {
            type = "string",
        },
        RecurrenceConfig = M.RecurrenceConfig,
        OverrideType = {
            type = "string",
        },
    },
}

M.UpdateHoursOfOperationOverrideOutput = {
    type = "structure",
    id = "UpdateHoursOfOperationOverrideOutput",
}

M.UpdateInstanceAttributeInput = {
    type = "structure",
    id = "UpdateInstanceAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateInstanceAttributeOutput = {
    type = "structure",
    id = "UpdateInstanceAttributeOutput",
}

M.UpdateInstanceStorageConfigInput = {
    type = "structure",
    id = "UpdateInstanceStorageConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        StorageConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceStorageConfig }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateInstanceStorageConfigOutput = {
    type = "structure",
    id = "UpdateInstanceStorageConfigOutput",
}

M.UpdateNotificationContentInput = {
    type = "structure",
    id = "UpdateNotificationContentInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NotificationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Content = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNotificationContentOutput = {
    type = "structure",
    id = "UpdateNotificationContentOutput",
}

M.UpdateParticipantAuthenticationInput = {
    type = "structure",
    id = "UpdateParticipantAuthenticationInput",
    members = {
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
        },
        Error = {
            type = "string",
        },
        ErrorDescription = {
            type = "string",
        },
    },
}

M.UpdateParticipantAuthenticationOutput = {
    type = "structure",
    id = "UpdateParticipantAuthenticationOutput",
}

M.TimerEligibleParticipantRoles = {
    CUSTOMER = "CUSTOMER",
    AGENT = "AGENT",
}

M.ParticipantTimerType = {
    IDLE = "IDLE",
    DISCONNECT_NONCUSTOMER = "DISCONNECT_NONCUSTOMER",
}

M.ParticipantTimerAction = {
    Unset = "Unset",
}

M.ParticipantTimerValue = {
    type = "union",
    id = "ParticipantTimerValue",
    members = {
        ParticipantTimerAction = {
            type = "string",
        },
        ParticipantTimerDurationInMinutes = {
            type = "integer",
        },
    },
}

M.ParticipantTimerConfiguration = {
    type = "structure",
    id = "ParticipantTimerConfiguration",
    members = {
        ParticipantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimerValue = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ParticipantTimerValue }),
    },
}

M.ChatParticipantRoleConfig = {
    type = "structure",
    id = "ChatParticipantRoleConfig",
    members = {
        ParticipantTimerConfigList = {
            type = "list",
            member = M.ParticipantTimerConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateParticipantRoleConfigChannelInfo = {
    type = "union",
    id = "UpdateParticipantRoleConfigChannelInfo",
    members = {
        Chat = M.ChatParticipantRoleConfig,
    },
}

M.UpdateParticipantRoleConfigInput = {
    type = "structure",
    id = "UpdateParticipantRoleConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChannelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateParticipantRoleConfigChannelInfo }),
    },
}

M.UpdateParticipantRoleConfigOutput = {
    type = "structure",
    id = "UpdateParticipantRoleConfigOutput",
}

M.UpdatePhoneNumberInput = {
    type = "structure",
    id = "UpdatePhoneNumberInput",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TargetArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdatePhoneNumberOutput = {
    type = "structure",
    id = "UpdatePhoneNumberOutput",
    members = {
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumberArn = {
            type = "string",
        },
    },
}

M.UpdatePhoneNumberMetadataInput = {
    type = "structure",
    id = "UpdatePhoneNumberMetadataInput",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PhoneNumberDescription = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdatePhoneNumberMetadataOutput = {
    type = "structure",
    id = "UpdatePhoneNumberMetadataOutput",
}

M.UpdatePredefinedAttributeInput = {
    type = "structure",
    id = "UpdatePredefinedAttributeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Values = M.PredefinedAttributeValues,
        Purposes = {
            type = "list",
            member = { type = "string" },
        },
        AttributeConfiguration = M.InputPredefinedAttributeConfiguration,
    },
}

M.UpdatePredefinedAttributeOutput = {
    type = "structure",
    id = "UpdatePredefinedAttributeOutput",
}

M.UpdatePromptInput = {
    type = "structure",
    id = "UpdatePromptInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PromptId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        S3Uri = {
            type = "string",
        },
    },
}

M.UpdatePromptOutput = {
    type = "structure",
    id = "UpdatePromptOutput",
    members = {
        PromptARN = {
            type = "string",
        },
        PromptId = {
            type = "string",
        },
    },
}

M.UpdateQueueHoursOfOperationInput = {
    type = "structure",
    id = "UpdateQueueHoursOfOperationInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateQueueHoursOfOperationOutput = {
    type = "structure",
    id = "UpdateQueueHoursOfOperationOutput",
}

M.UpdateQueueMaxContactsInput = {
    type = "structure",
    id = "UpdateQueueMaxContactsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxContacts = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdateQueueMaxContactsOutput = {
    type = "structure",
    id = "UpdateQueueMaxContactsOutput",
}

M.UpdateQueueNameInput = {
    type = "structure",
    id = "UpdateQueueNameInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateQueueNameOutput = {
    type = "structure",
    id = "UpdateQueueNameOutput",
}

M.UpdateQueueOutboundCallerConfigInput = {
    type = "structure",
    id = "UpdateQueueOutboundCallerConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutboundCallerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutboundCallerConfig }),
    },
}

M.UpdateQueueOutboundCallerConfigOutput = {
    type = "structure",
    id = "UpdateQueueOutboundCallerConfigOutput",
}

M.UpdateQueueOutboundEmailConfigInput = {
    type = "structure",
    id = "UpdateQueueOutboundEmailConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutboundEmailConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutboundEmailConfig }),
    },
}

M.UpdateQueueOutboundEmailConfigOutput = {
    type = "structure",
    id = "UpdateQueueOutboundEmailConfigOutput",
}

M.UpdateQueueStatusInput = {
    type = "structure",
    id = "UpdateQueueStatusInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateQueueStatusOutput = {
    type = "structure",
    id = "UpdateQueueStatusOutput",
}

M.UpdateQuickConnectConfigInput = {
    type = "structure",
    id = "UpdateQuickConnectConfigInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuickConnectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuickConnectConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QuickConnectConfig }),
    },
}

M.UpdateQuickConnectConfigOutput = {
    type = "structure",
    id = "UpdateQuickConnectConfigOutput",
}

M.UpdateQuickConnectNameInput = {
    type = "structure",
    id = "UpdateQuickConnectNameInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QuickConnectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateQuickConnectNameOutput = {
    type = "structure",
    id = "UpdateQuickConnectNameOutput",
}

M.UpdateRoutingProfileAgentAvailabilityTimerInput = {
    type = "structure",
    id = "UpdateRoutingProfileAgentAvailabilityTimerInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AgentAvailabilityTimer = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRoutingProfileAgentAvailabilityTimerOutput = {
    type = "structure",
    id = "UpdateRoutingProfileAgentAvailabilityTimerOutput",
}

M.UpdateRoutingProfileConcurrencyInput = {
    type = "structure",
    id = "UpdateRoutingProfileConcurrencyInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MediaConcurrencies = {
            type = "list",
            member = M.MediaConcurrency,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRoutingProfileConcurrencyOutput = {
    type = "structure",
    id = "UpdateRoutingProfileConcurrencyOutput",
}

M.UpdateRoutingProfileDefaultOutboundQueueInput = {
    type = "structure",
    id = "UpdateRoutingProfileDefaultOutboundQueueInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefaultOutboundQueueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRoutingProfileDefaultOutboundQueueOutput = {
    type = "structure",
    id = "UpdateRoutingProfileDefaultOutboundQueueOutput",
}

M.UpdateRoutingProfileNameInput = {
    type = "structure",
    id = "UpdateRoutingProfileNameInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateRoutingProfileNameOutput = {
    type = "structure",
    id = "UpdateRoutingProfileNameOutput",
}

M.UpdateRoutingProfileQueuesInput = {
    type = "structure",
    id = "UpdateRoutingProfileQueuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoutingProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueConfigs = {
            type = "list",
            member = M.RoutingProfileQueueConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRoutingProfileQueuesOutput = {
    type = "structure",
    id = "UpdateRoutingProfileQueuesOutput",
}

M.UpdateRuleInput = {
    type = "structure",
    id = "UpdateRuleInput",
    members = {
        RuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Function = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = M.RuleAction,
            traits = {
                required = true,
            },
        },
        PublishStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRuleOutput = {
    type = "structure",
    id = "UpdateRuleOutput",
}

M.UpdateSecurityProfileInput = {
    type = "structure",
    id = "UpdateSecurityProfileInput",
    members = {
        Description = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        SecurityProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AllowedAccessControlTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TagRestrictedResources = {
            type = "list",
            member = { type = "string" },
        },
        Applications = {
            type = "list",
            member = M.Application,
        },
        HierarchyRestrictedResources = {
            type = "list",
            member = { type = "string" },
        },
        AllowedAccessControlHierarchyGroupId = {
            type = "string",
        },
        AllowedFlowModules = {
            type = "list",
            member = M.FlowModule,
        },
        GranularAccessControlConfiguration = M.GranularAccessControlConfiguration,
    },
}

M.UpdateSecurityProfileOutput = {
    type = "structure",
    id = "UpdateSecurityProfileOutput",
}

M.UpdateTaskTemplateInput = {
    type = "structure",
    id = "UpdateTaskTemplateInput",
    members = {
        TaskTemplateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
        },
        SelfAssignFlowId = {
            type = "string",
        },
        Constraints = M.TaskTemplateConstraints,
        Defaults = M.TaskTemplateDefaults,
        Status = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.TaskTemplateField,
        },
    },
}

M.UpdateTaskTemplateOutput = {
    type = "structure",
    id = "UpdateTaskTemplateOutput",
    members = {
        InstanceId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
        },
        SelfAssignFlowId = {
            type = "string",
        },
        Constraints = M.TaskTemplateConstraints,
        Defaults = M.TaskTemplateDefaults,
        Fields = {
            type = "list",
            member = M.TaskTemplateField,
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.UpdateTestCaseInput = {
    type = "structure",
    id = "UpdateTestCaseInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TestCaseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Content = {
            type = "string",
        },
        EntryPoint = M.TestCaseEntryPoint,
        InitializationData = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-last-modified-time",
            },
        },
        LastModifiedRegion = {
            type = "string",
            traits = {
                http_header = "x-amz-last-modified-region",
            },
        },
    },
}

M.UpdateTestCaseOutput = {
    type = "structure",
    id = "UpdateTestCaseOutput",
}

M.UpdateTrafficDistributionInput = {
    type = "structure",
    id = "UpdateTrafficDistributionInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TelephonyConfig = M.TelephonyConfig,
        SignInConfig = M.SignInConfig,
        AgentConfig = M.AgentConfig,
    },
}

M.UpdateTrafficDistributionOutput = {
    type = "structure",
    id = "UpdateTrafficDistributionOutput",
}

M.UpdateUserConfigInput = {
    type = "structure",
    id = "UpdateUserConfigInput",
    members = {
        AutoAcceptConfigs = {
            type = "list",
            member = M.AutoAcceptConfig,
        },
        AfterContactWorkConfigs = {
            type = "list",
            member = M.AfterContactWorkConfigPerChannel,
        },
        PhoneNumberConfigs = {
            type = "list",
            member = M.PhoneNumberConfig,
        },
        PersistentConnectionConfigs = {
            type = "list",
            member = M.PersistentConnectionConfig,
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member = M.VoiceEnhancementConfig,
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserConfigOutput = {
    type = "structure",
    id = "UpdateUserConfigOutput",
}

M.UpdateUserHierarchyInput = {
    type = "structure",
    id = "UpdateUserHierarchyInput",
    members = {
        HierarchyGroupId = {
            type = "string",
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserHierarchyOutput = {
    type = "structure",
    id = "UpdateUserHierarchyOutput",
}

M.UpdateUserHierarchyGroupNameInput = {
    type = "structure",
    id = "UpdateUserHierarchyGroupNameInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HierarchyGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserHierarchyGroupNameOutput = {
    type = "structure",
    id = "UpdateUserHierarchyGroupNameOutput",
}

M.HierarchyLevelUpdate = {
    type = "structure",
    id = "HierarchyLevelUpdate",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HierarchyStructureUpdate = {
    type = "structure",
    id = "HierarchyStructureUpdate",
    members = {
        LevelOne = M.HierarchyLevelUpdate,
        LevelTwo = M.HierarchyLevelUpdate,
        LevelThree = M.HierarchyLevelUpdate,
        LevelFour = M.HierarchyLevelUpdate,
        LevelFive = M.HierarchyLevelUpdate,
    },
}

M.UpdateUserHierarchyStructureInput = {
    type = "structure",
    id = "UpdateUserHierarchyStructureInput",
    members = {
        HierarchyStructure = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HierarchyStructureUpdate }),
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserHierarchyStructureOutput = {
    type = "structure",
    id = "UpdateUserHierarchyStructureOutput",
}

M.UpdateUserIdentityInfoInput = {
    type = "structure",
    id = "UpdateUserIdentityInfoInput",
    members = {
        IdentityInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserIdentityInfo }),
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserIdentityInfoOutput = {
    type = "structure",
    id = "UpdateUserIdentityInfoOutput",
}

M.UpdateUserNotificationStatusInput = {
    type = "structure",
    id = "UpdateUserNotificationStatusInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NotificationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-last-modified-time",
            },
        },
        LastModifiedRegion = {
            type = "string",
            traits = {
                http_header = "x-amz-last-modified-region",
            },
        },
    },
}

M.UpdateUserNotificationStatusOutput = {
    type = "structure",
    id = "UpdateUserNotificationStatusOutput",
}

M.UpdateUserPhoneConfigInput = {
    type = "structure",
    id = "UpdateUserPhoneConfigInput",
    members = {
        PhoneConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserPhoneConfig }),
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserPhoneConfigOutput = {
    type = "structure",
    id = "UpdateUserPhoneConfigOutput",
}

M.UpdateUserProficienciesInput = {
    type = "structure",
    id = "UpdateUserProficienciesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserProficiencies = {
            type = "list",
            member = M.UserProficiency,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUserProficienciesOutput = {
    type = "structure",
    id = "UpdateUserProficienciesOutput",
}

M.UpdateUserRoutingProfileInput = {
    type = "structure",
    id = "UpdateUserRoutingProfileInput",
    members = {
        RoutingProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserRoutingProfileOutput = {
    type = "structure",
    id = "UpdateUserRoutingProfileOutput",
}

M.UpdateUserSecurityProfilesInput = {
    type = "structure",
    id = "UpdateUserSecurityProfilesInput",
    members = {
        SecurityProfileIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateUserSecurityProfilesOutput = {
    type = "structure",
    id = "UpdateUserSecurityProfilesOutput",
}

M.UpdateViewContentInput = {
    type = "structure",
    id = "UpdateViewContentInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ViewInputContent }),
    },
}

M.UpdateViewContentOutput = {
    type = "structure",
    id = "UpdateViewContentOutput",
    members = {
        View = M.View,
    },
}

M.UpdateViewMetadataInput = {
    type = "structure",
    id = "UpdateViewMetadataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateViewMetadataOutput = {
    type = "structure",
    id = "UpdateViewMetadataOutput",
}

M.UpdateWorkspaceMetadataInput = {
    type = "structure",
    id = "UpdateWorkspaceMetadataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Title = {
            type = "string",
        },
    },
}

M.UpdateWorkspaceMetadataOutput = {
    type = "structure",
    id = "UpdateWorkspaceMetadataOutput",
}

M.UpdateWorkspacePageInput = {
    type = "structure",
    id = "UpdateWorkspacePageInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Page = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NewPage = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Slug = {
            type = "string",
        },
        InputData = {
            type = "string",
        },
    },
}

M.UpdateWorkspacePageOutput = {
    type = "structure",
    id = "UpdateWorkspacePageOutput",
}

M.UpdateWorkspaceThemeInput = {
    type = "structure",
    id = "UpdateWorkspaceThemeInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Theme = M.WorkspaceTheme,
    },
}

M.UpdateWorkspaceThemeOutput = {
    type = "structure",
    id = "UpdateWorkspaceThemeOutput",
}

M.UpdateWorkspaceVisibilityInput = {
    type = "structure",
    id = "UpdateWorkspaceVisibilityInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Visibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWorkspaceVisibilityOutput = {
    type = "structure",
    id = "UpdateWorkspaceVisibilityOutput",
}

M.EvaluationFormItemEnablementCondition = {
    type = "structure",
    id = "EvaluationFormItemEnablementCondition",
    members = {
        Operands = {
            type = "list",
            member = M.EvaluationFormItemEnablementConditionOperand,
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
        },
    },
}

M.EvaluationFormItemEnablementConditionOperand = {
    type = "union",
    id = "EvaluationFormItemEnablementConditionOperand",
    members = {
        Expression = M.EvaluationFormItemEnablementExpression,
        Condition = M.EvaluationFormItemEnablementCondition,
    },
}

M.AgentStatusSearchCriteria = {
    type = "structure",
    id = "AgentStatusSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.AgentStatusSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.AgentStatusSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.ContactFlowModuleSearchCriteria = {
    type = "structure",
    id = "ContactFlowModuleSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.ContactFlowModuleSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.ContactFlowModuleSearchCriteria,
        },
        StringCondition = M.StringCondition,
        StateCondition = {
            type = "string",
        },
        StatusCondition = {
            type = "string",
        },
    },
}

M.ContactFlowSearchCriteria = {
    type = "structure",
    id = "ContactFlowSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.ContactFlowSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.ContactFlowSearchCriteria,
        },
        StringCondition = M.StringCondition,
        TypeCondition = {
            type = "string",
        },
        StateCondition = {
            type = "string",
        },
        StatusCondition = {
            type = "string",
        },
    },
}

M.DataTableSearchCriteria = {
    type = "structure",
    id = "DataTableSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.DataTableSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.DataTableSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.EmailAddressSearchCriteria = {
    type = "structure",
    id = "EmailAddressSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.EmailAddressSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.EmailAddressSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.EvaluationFormItemEnablementConfiguration = {
    type = "structure",
    id = "EvaluationFormItemEnablementConfiguration",
    members = {
        Condition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationFormItemEnablementCondition }),
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultAction = {
            type = "string",
        },
    },
}

M.EvaluationFormSearchCriteria = {
    type = "structure",
    id = "EvaluationFormSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.EvaluationFormSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.EvaluationFormSearchCriteria,
        },
        StringCondition = M.StringCondition,
        NumberCondition = M.NumberCondition,
        BooleanCondition = M.BooleanCondition,
        DateTimeCondition = M.DateTimeCondition,
    },
}

M.EvaluationSearchCriteria = {
    type = "structure",
    id = "EvaluationSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.EvaluationSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.EvaluationSearchCriteria,
        },
        StringCondition = M.StringCondition,
        NumberCondition = M.NumberCondition,
        BooleanCondition = M.BooleanCondition,
        DateTimeCondition = M.DateTimeCondition,
        DecimalCondition = M.DecimalCondition,
    },
}

M.Expression = {
    type = "structure",
    id = "Expression",
    members = {
        AttributeCondition = M.AttributeCondition,
        AndExpression = {
            type = "list",
            member = M.Expression,
        },
        OrExpression = {
            type = "list",
            member = M.Expression,
        },
        NotAttributeCondition = M.AttributeCondition,
    },
}

M.HoursOfOperationOverrideSearchCriteria = {
    type = "structure",
    id = "HoursOfOperationOverrideSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.HoursOfOperationOverrideSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.HoursOfOperationOverrideSearchCriteria,
        },
        StringCondition = M.StringCondition,
        DateCondition = M.DateCondition,
    },
}

M.HoursOfOperationSearchCriteria = {
    type = "structure",
    id = "HoursOfOperationSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.HoursOfOperationSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.HoursOfOperationSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.NotificationSearchCriteria = {
    type = "structure",
    id = "NotificationSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.NotificationSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.NotificationSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.PredefinedAttributeSearchCriteria = {
    type = "structure",
    id = "PredefinedAttributeSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.PredefinedAttributeSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.PredefinedAttributeSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.PromptSearchCriteria = {
    type = "structure",
    id = "PromptSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.PromptSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.PromptSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.QueueSearchCriteria = {
    type = "structure",
    id = "QueueSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.QueueSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.QueueSearchCriteria,
        },
        StringCondition = M.StringCondition,
        QueueTypeCondition = {
            type = "string",
        },
    },
}

M.QuickConnectSearchCriteria = {
    type = "structure",
    id = "QuickConnectSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.QuickConnectSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.QuickConnectSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.RoutingProfileSearchCriteria = {
    type = "structure",
    id = "RoutingProfileSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.RoutingProfileSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.RoutingProfileSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.SecurityProfileSearchCriteria = {
    type = "structure",
    id = "SecurityProfileSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.SecurityProfileSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.SecurityProfileSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.SegmentAttributeValue = {
    type = "structure",
    id = "SegmentAttributeValue",
    members = {
        ValueString = {
            type = "string",
        },
        ValueMap = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
        ValueInteger = {
            type = "integer",
        },
        ValueList = {
            type = "list",
            member = M.SegmentAttributeValue,
        },
        ValueArn = {
            type = "string",
        },
    },
}

M.TestCaseSearchCriteria = {
    type = "structure",
    id = "TestCaseSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.TestCaseSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.TestCaseSearchCriteria,
        },
        StringCondition = M.StringCondition,
        StatusCondition = {
            type = "string",
        },
    },
}

M.UserHierarchyGroupSearchCriteria = {
    type = "structure",
    id = "UserHierarchyGroupSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.UserHierarchyGroupSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.UserHierarchyGroupSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.UserSearchCriteria = {
    type = "structure",
    id = "UserSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.UserSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.UserSearchCriteria,
        },
        StringCondition = M.StringCondition,
        ListCondition = M.ListCondition,
        HierarchyGroupCondition = M.HierarchyGroupCondition,
    },
}

M.ViewSearchCriteria = {
    type = "structure",
    id = "ViewSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.ViewSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.ViewSearchCriteria,
        },
        StringCondition = M.StringCondition,
        ViewTypeCondition = {
            type = "string",
        },
        ViewStatusCondition = {
            type = "string",
        },
    },
}

M.WorkspaceAssociationSearchCriteria = {
    type = "structure",
    id = "WorkspaceAssociationSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.WorkspaceAssociationSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.WorkspaceAssociationSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.WorkspaceSearchCriteria = {
    type = "structure",
    id = "WorkspaceSearchCriteria",
    members = {
        OrConditions = {
            type = "list",
            member = M.WorkspaceSearchCriteria,
        },
        AndConditions = {
            type = "list",
            member = M.WorkspaceSearchCriteria,
        },
        StringCondition = M.StringCondition,
    },
}

M.EvaluationFormQuestion = {
    type = "structure",
    id = "EvaluationFormQuestion",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instructions = {
            type = "string",
        },
        RefId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotApplicableEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        QuestionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuestionTypeProperties = M.EvaluationFormQuestionTypeProperties,
        Enablement = M.EvaluationFormItemEnablementConfiguration,
        Weight = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.RoutingCriteriaInputStep = {
    type = "structure",
    id = "RoutingCriteriaInputStep",
    members = {
        Expiry = M.RoutingCriteriaInputStepExpiry,
        Expression = M.Expression,
    },
}

M.SearchAgentStatusesInput = {
    type = "structure",
    id = "SearchAgentStatusesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.AgentStatusSearchFilter,
        SearchCriteria = M.AgentStatusSearchCriteria,
    },
}

M.SearchContactEvaluationsInput = {
    type = "structure",
    id = "SearchContactEvaluationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchCriteria = M.EvaluationSearchCriteria,
        SearchFilter = M.EvaluationSearchFilter,
    },
}

M.SearchContactFlowModulesInput = {
    type = "structure",
    id = "SearchContactFlowModulesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.ContactFlowModuleSearchFilter,
        SearchCriteria = M.ContactFlowModuleSearchCriteria,
    },
}

M.SearchContactFlowsInput = {
    type = "structure",
    id = "SearchContactFlowsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.ContactFlowSearchFilter,
        SearchCriteria = M.ContactFlowSearchCriteria,
    },
}

M.SearchDataTablesInput = {
    type = "structure",
    id = "SearchDataTablesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.DataTableSearchFilter,
        SearchCriteria = M.DataTableSearchCriteria,
    },
}

M.SearchEmailAddressesInput = {
    type = "structure",
    id = "SearchEmailAddressesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SearchCriteria = M.EmailAddressSearchCriteria,
        SearchFilter = M.EmailAddressSearchFilter,
    },
}

M.SearchEvaluationFormsInput = {
    type = "structure",
    id = "SearchEvaluationFormsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchCriteria = M.EvaluationFormSearchCriteria,
        SearchFilter = M.EvaluationFormSearchFilter,
    },
}

M.SearchHoursOfOperationOverridesInput = {
    type = "structure",
    id = "SearchHoursOfOperationOverridesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.HoursOfOperationSearchFilter,
        SearchCriteria = M.HoursOfOperationOverrideSearchCriteria,
    },
}

M.SearchHoursOfOperationsInput = {
    type = "structure",
    id = "SearchHoursOfOperationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.HoursOfOperationSearchFilter,
        SearchCriteria = M.HoursOfOperationSearchCriteria,
    },
}

M.SearchNotificationsInput = {
    type = "structure",
    id = "SearchNotificationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.NotificationSearchFilter,
        SearchCriteria = M.NotificationSearchCriteria,
    },
}

M.SearchPredefinedAttributesInput = {
    type = "structure",
    id = "SearchPredefinedAttributesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchCriteria = M.PredefinedAttributeSearchCriteria,
    },
}

M.SearchPromptsInput = {
    type = "structure",
    id = "SearchPromptsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.PromptSearchFilter,
        SearchCriteria = M.PromptSearchCriteria,
    },
}

M.SearchQueuesInput = {
    type = "structure",
    id = "SearchQueuesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.QueueSearchFilter,
        SearchCriteria = M.QueueSearchCriteria,
    },
}

M.SearchQuickConnectsInput = {
    type = "structure",
    id = "SearchQuickConnectsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.QuickConnectSearchFilter,
        SearchCriteria = M.QuickConnectSearchCriteria,
    },
}

M.SearchRoutingProfilesInput = {
    type = "structure",
    id = "SearchRoutingProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.RoutingProfileSearchFilter,
        SearchCriteria = M.RoutingProfileSearchCriteria,
    },
}

M.SearchSecurityProfilesInput = {
    type = "structure",
    id = "SearchSecurityProfilesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchCriteria = M.SecurityProfileSearchCriteria,
        SearchFilter = M.SecurityProfilesSearchFilter,
    },
}

M.SearchTestCasesInput = {
    type = "structure",
    id = "SearchTestCasesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.TestCaseSearchFilter,
        SearchCriteria = M.TestCaseSearchCriteria,
    },
}

M.SearchUserHierarchyGroupsInput = {
    type = "structure",
    id = "SearchUserHierarchyGroupsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.UserHierarchyGroupSearchFilter,
        SearchCriteria = M.UserHierarchyGroupSearchCriteria,
    },
}

M.SearchUsersInput = {
    type = "structure",
    id = "SearchUsersInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.UserSearchFilter,
        SearchCriteria = M.UserSearchCriteria,
    },
}

M.SearchViewsInput = {
    type = "structure",
    id = "SearchViewsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.ViewSearchFilter,
        SearchCriteria = M.ViewSearchCriteria,
    },
}

M.SearchWorkspaceAssociationsInput = {
    type = "structure",
    id = "SearchWorkspaceAssociationsInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.WorkspaceAssociationSearchFilter,
        SearchCriteria = M.WorkspaceAssociationSearchCriteria,
    },
}

M.SearchWorkspacesInput = {
    type = "structure",
    id = "SearchWorkspacesInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        SearchFilter = M.WorkspaceSearchFilter,
        SearchCriteria = M.WorkspaceSearchCriteria,
    },
}

M.Step = {
    type = "structure",
    id = "Step",
    members = {
        Expiry = M.Expiry,
        Expression = M.Expression,
        Status = {
            type = "string",
        },
    },
}

M.ContactSearchSummarySegmentAttributeValue = {
    type = "structure",
    id = "ContactSearchSummarySegmentAttributeValue",
    members = {
        ValueString = {
            type = "string",
        },
        ValueMap = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
    },
}

M.CreateContactInput = {
    type = "structure",
    id = "CreateContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        RelatedContactId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        References = {
            type = "map",
            key = { type = "string" },
            value = M.Reference,
        },
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitiationMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpiryDurationInMinutes = {
            type = "integer",
        },
        UserInfo = M.UserInfo,
        InitiateAs = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
        PreviousContactId = {
            type = "string",
        },
    },
}

M.StartChatContactInput = {
    type = "structure",
    id = "StartChatContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ParticipantDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ParticipantDetails }),
        ParticipantConfiguration = M.ParticipantConfiguration,
        InitialMessage = M.ChatMessage,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ChatDurationInMinutes = {
            type = "integer",
        },
        SupportedMessagingContentTypes = {
            type = "list",
            member = { type = "string" },
        },
        PersistentChat = M.PersistentChat,
        RelatedContactId = {
            type = "string",
        },
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
        CustomerId = {
            type = "string",
        },
        DisconnectOnCustomerExit = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StartEmailContactInput = {
    type = "structure",
    id = "StartEmailContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FromEmailAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailAddressInfo }),
        DestinationEmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        References = {
            type = "map",
            key = { type = "string" },
            value = M.Reference,
        },
        Name = {
            type = "string",
        },
        EmailMessage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InboundEmailContent }),
        AdditionalRecipients = M.InboundAdditionalRecipients,
        Attachments = {
            type = "list",
            member = M.EmailAttachment,
        },
        ContactFlowId = {
            type = "string",
        },
        RelatedContactId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartOutboundChatContactInput = {
    type = "structure",
    id = "StartOutboundChatContactInput",
    members = {
        SourceEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Endpoint }),
        DestinationEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Endpoint }),
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatDurationInMinutes = {
            type = "integer",
        },
        ParticipantDetails = M.ParticipantDetails,
        InitialSystemMessage = M.ChatMessage,
        InitialTemplatedSystemMessage = M.TemplatedMessageConfig,
        RelatedContactId = {
            type = "string",
        },
        SupportedMessagingContentTypes = {
            type = "list",
            member = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartTaskContactInput = {
    type = "structure",
    id = "StartTaskContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreviousContactId = {
            type = "string",
        },
        ContactFlowId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        References = {
            type = "map",
            key = { type = "string" },
            value = M.Reference,
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ScheduledTime = {
            type = "timestamp",
        },
        TaskTemplateId = {
            type = "string",
        },
        QuickConnectId = {
            type = "string",
        },
        RelatedContactId = {
            type = "string",
        },
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
        Attachments = {
            type = "list",
            member = M.TaskAttachment,
        },
    },
}

M.UpdateContactInput = {
    type = "structure",
    id = "UpdateContactInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        References = {
            type = "map",
            key = { type = "string" },
            value = M.Reference,
        },
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
        QueueInfo = M.QueueInfoInput,
        UserInfo = M.UserInfo,
        CustomerEndpoint = M.Endpoint,
        SystemEndpoint = M.Endpoint,
    },
}

M.EvaluationFormItem = {
    type = "union",
    id = "EvaluationFormItem",
    members = {
        Section = M.EvaluationFormSection,
        Question = M.EvaluationFormQuestion,
    },
}

M.RoutingCriteria = {
    type = "structure",
    id = "RoutingCriteria",
    members = {
        Steps = {
            type = "list",
            member = M.Step,
        },
        ActivationTimestamp = {
            type = "timestamp",
        },
        Index = {
            type = "integer",
        },
    },
}

M.RoutingCriteriaInput = {
    type = "structure",
    id = "RoutingCriteriaInput",
    members = {
        Steps = {
            type = "list",
            member = M.RoutingCriteriaInputStep,
        },
    },
}

M.EvaluationFormSection = {
    type = "structure",
    id = "EvaluationFormSection",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RefId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instructions = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.EvaluationFormItem,
            traits = {
                required = true,
            },
        },
        Weight = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.CreateEvaluationFormInput = {
    type = "structure",
    id = "CreateEvaluationFormInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.EvaluationFormItem,
            traits = {
                required = true,
            },
        },
        ScoringStrategy = M.EvaluationFormScoringStrategy,
        AutoEvaluationConfiguration = M.EvaluationFormAutoEvaluationConfiguration,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        AsDraft = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ReviewConfiguration = M.EvaluationReviewConfiguration,
        TargetConfiguration = M.EvaluationFormTargetConfiguration,
        LanguageConfiguration = M.EvaluationFormLanguageConfiguration,
    },
}

M.EvaluationForm = {
    type = "structure",
    id = "EvaluationForm",
    members = {
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Locked = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.EvaluationFormItem,
            traits = {
                required = true,
            },
        },
        ScoringStrategy = M.EvaluationFormScoringStrategy,
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutoEvaluationConfiguration = M.EvaluationFormAutoEvaluationConfiguration,
        ReviewConfiguration = M.EvaluationReviewConfiguration,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TargetConfiguration = M.EvaluationFormTargetConfiguration,
        LanguageConfiguration = M.EvaluationFormLanguageConfiguration,
    },
}

M.EvaluationFormContent = {
    type = "structure",
    id = "EvaluationFormContent",
    members = {
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationFormArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.EvaluationFormItem,
            traits = {
                required = true,
            },
        },
        ScoringStrategy = M.EvaluationFormScoringStrategy,
        AutoEvaluationConfiguration = M.EvaluationFormAutoEvaluationConfiguration,
        TargetConfiguration = M.EvaluationFormTargetConfiguration,
        LanguageConfiguration = M.EvaluationFormLanguageConfiguration,
        ReviewConfiguration = M.EvaluationReviewConfiguration,
    },
}

M.UpdateContactRoutingDataInput = {
    type = "structure",
    id = "UpdateContactRoutingDataInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueueTimeAdjustmentSeconds = {
            type = "integer",
        },
        QueuePriority = {
            type = "long",
        },
        RoutingCriteria = M.RoutingCriteriaInput,
    },
}

M.UpdateEvaluationFormInput = {
    type = "structure",
    id = "UpdateEvaluationFormInput",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EvaluationFormVersion = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        CreateNewVersion = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.EvaluationFormItem,
            traits = {
                required = true,
            },
        },
        ScoringStrategy = M.EvaluationFormScoringStrategy,
        AutoEvaluationConfiguration = M.EvaluationFormAutoEvaluationConfiguration,
        ReviewConfiguration = M.EvaluationReviewConfiguration,
        AsDraft = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        TargetConfiguration = M.EvaluationFormTargetConfiguration,
        LanguageConfiguration = M.EvaluationFormLanguageConfiguration,
    },
}

M.DescribeContactEvaluationOutput = {
    type = "structure",
    id = "DescribeContactEvaluationOutput",
    members = {
        Evaluation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Evaluation }),
        EvaluationForm = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationFormContent }),
    },
}

M.DescribeEvaluationFormOutput = {
    type = "structure",
    id = "DescribeEvaluationFormOutput",
    members = {
        EvaluationForm = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationForm }),
    },
}

M.Contact = {
    type = "structure",
    id = "Contact",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        InitialContactId = {
            type = "string",
        },
        PreviousContactId = {
            type = "string",
        },
        ContactAssociationId = {
            type = "string",
        },
        InitiationMethod = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Channel = {
            type = "string",
        },
        QueueInfo = M.QueueInfo,
        AgentInfo = M.AgentInfo,
        InitiationTimestamp = {
            type = "timestamp",
        },
        DisconnectTimestamp = {
            type = "timestamp",
        },
        LastUpdateTimestamp = {
            type = "timestamp",
        },
        LastPausedTimestamp = {
            type = "timestamp",
        },
        LastResumedTimestamp = {
            type = "timestamp",
        },
        RingStartTimestamp = {
            type = "timestamp",
        },
        TotalPauseCount = {
            type = "integer",
        },
        TotalPauseDurationInSeconds = {
            type = "integer",
        },
        ScheduledTimestamp = {
            type = "timestamp",
        },
        RelatedContactId = {
            type = "string",
        },
        WisdomInfo = M.WisdomInfo,
        CustomerId = {
            type = "string",
        },
        CustomerEndpoint = M.EndpointInfo,
        SystemEndpoint = M.EndpointInfo,
        QueueTimeAdjustmentSeconds = {
            type = "integer",
        },
        QueuePriority = {
            type = "long",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ConnectedToSystemTimestamp = {
            type = "timestamp",
        },
        RoutingCriteria = M.RoutingCriteria,
        Customer = M.Customer,
        Campaign = M.Campaign,
        AnsweringMachineDetectionStatus = {
            type = "string",
        },
        CustomerVoiceActivity = M.CustomerVoiceActivity,
        QualityMetrics = M.QualityMetrics,
        ChatMetrics = M.ChatMetrics,
        DisconnectDetails = M.DisconnectDetails,
        AdditionalEmailRecipients = M.AdditionalEmailRecipients,
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.SegmentAttributeValue,
        },
        Recordings = {
            type = "list",
            member = M.RecordingInfo,
        },
        DisconnectReason = {
            type = "string",
        },
        ContactEvaluations = {
            type = "map",
            key = { type = "string" },
            value = M.ContactEvaluation,
        },
        TaskTemplateInfo = M.TaskTemplateInfoV2,
        ContactDetails = M.ContactDetails,
        OutboundStrategy = M.OutboundStrategy,
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NextContacts = {
            type = "list",
            member = M.NextContactEntry,
        },
        GlobalResiliencyMetadata = M.GlobalResiliencyMetadata,
    },
}

M.ContactSearchSummary = {
    type = "structure",
    id = "ContactSearchSummary",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        InitialContactId = {
            type = "string",
        },
        PreviousContactId = {
            type = "string",
        },
        InitiationMethod = {
            type = "string",
        },
        Channel = {
            type = "string",
        },
        QueueInfo = M.ContactSearchSummaryQueueInfo,
        AgentInfo = M.ContactSearchSummaryAgentInfo,
        InitiationTimestamp = {
            type = "timestamp",
        },
        DisconnectTimestamp = {
            type = "timestamp",
        },
        ScheduledTimestamp = {
            type = "timestamp",
        },
        SegmentAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.ContactSearchSummarySegmentAttributeValue,
        },
        Name = {
            type = "string",
        },
        RoutingCriteria = M.RoutingCriteria,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        GlobalResiliencyMetadata = M.GlobalResiliencyMetadata,
    },
}

M.DescribeContactOutput = {
    type = "structure",
    id = "DescribeContactOutput",
    members = {
        Contact = M.Contact,
    },
}

M.SearchContactsOutput = {
    type = "structure",
    id = "SearchContactsOutput",
    members = {
        Contacts = {
            type = "list",
            member = M.ContactSearchSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        TotalCount = {
            type = "long",
        },
    },
}

return M
