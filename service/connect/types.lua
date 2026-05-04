local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EmailRecipient = {
    type = "structure",
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
    members = {
        Preview = M.Preview,
    },
}

M.AgentHierarchyGroup = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.AgentHierarchyGroups = {
    type = "structure",
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
    members = {
        Audio = M.AudioQualityMetricsInfo,
    },
}

M.AgentsCriteria = {
    type = "structure",
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
    members = {
        TagConditions = {
            type = "list",
            member = M.TagCondition,
        },
    },
}

M.ControlPlaneAttributeFilter = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.AgentStatusSummary = {
    type = "structure",
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
    members = {
        Customer = M.ParticipantCapabilities,
        Agent = M.ParticipantCapabilities,
    },
}

M.AllowedExtension = {
    type = "structure",
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
    members = {
        AttachedFileInvalidRequestExceptionReason = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
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
}

M.AttachedFileServiceQuotaExceededExceptionReason = {
    TOTAL_FILE_SIZE_EXCEEDED = "TOTAL_FILE_SIZE_EXCEEDED",
    TOTAL_FILE_COUNT_EXCEEDED = "TOTAL_FILE_COUNT_EXCEEDED",
}

M.ServiceQuotaExceededExceptionReason = {
    type = "union",
    members = {
        AttachedFileServiceQuotaExceededExceptionReason = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
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
    members = {
        AliasArn = {
            type = "string",
        },
    },
}

M.AssociateBotInput = {
    type = "structure",
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
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateContactWithUserInput = {
    type = "structure",
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
}

M.AssociateEmailAddressAliasInput = {
    type = "structure",
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
}

M.IdempotencyException = {
    type = "structure",
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
}

M.ParentHoursOfOperationConfig = {
    type = "structure",
    members = {
        HoursOfOperationId = {
            type = "string",
        },
    },
}

M.AssociateHoursOfOperationsInput = {
    type = "structure",
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
}

M.ConditionalOperationFailedException = {
    type = "structure",
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
    members = {
        AssociationId = {
            type = "string",
        },
    },
}

M.AssociateLambdaFunctionInput = {
    type = "structure",
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
}

M.AssociateLexBotInput = {
    type = "structure",
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
}

M.AssociatePhoneNumberContactFlowInput = {
    type = "structure",
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
}

M.EmailAddressConfig = {
    type = "structure",
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
}

M.AssociateQueueQuickConnectsInput = {
    type = "structure",
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
}

M.RoutingProfileQueueReference = {
    type = "structure",
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
    members = {
        QueueReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingProfileQueueReference }),
    },
}

M.RoutingProfileQueueConfig = {
    type = "structure",
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
}

M.AssociateSecurityKeyInput = {
    type = "structure",
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
    members = {
        Id = {
            type = "string",
        },
    },
}

M.AssociateSecurityProfilesInput = {
    type = "structure",
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
}

M.AssociateTrafficDistributionGroupUserInput = {
    type = "structure",
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
}

M.UserProficiency = {
    type = "structure",
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
}

M.AssociateWorkspaceInput = {
    type = "structure",
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
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.AssociateWorkspaceOutput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchAssociateAnalyticsDataSetInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataTableDeleteValueIdentifier = {
    type = "structure",
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
    members = {
        FlowAssociationSummaryList = {
            type = "list",
            member = M.FlowAssociationSummary,
        },
    },
}

M.Campaign = {
    type = "structure",
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
    members = {
        AgentFirst = M.AgentFirst,
    },
}

M.OutboundStrategyType = {
    AGENT_FIRST = "AGENT_FIRST",
}

M.OutboundStrategy = {
    type = "structure",
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
}

M.CreateAgentStatusInput = {
    type = "structure",
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
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.CreateContactOutput = {
    type = "structure",
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
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidContactFlowException = {
    type = "structure",
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
    members = {
        RuleCategory = M.MultiSelectQuestionRuleCategoryAutomation,
    },
}

M.EvaluationFormMultiSelectQuestionAutomation = {
    type = "structure",
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
    members = {
        PropertyValue = M.NumericQuestionPropertyValueAutomation,
        AnswerSource = M.EvaluationFormQuestionAutomationAnswerSource,
    },
}

M.AutomaticFailConfiguration = {
    type = "structure",
    members = {
        TargetSection = {
            type = "string",
        },
    },
}

M.EvaluationFormNumericQuestionOption = {
    type = "structure",
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
    members = {
        RuleCategory = M.SingleSelectQuestionRuleCategoryAutomation,
    },
}

M.EvaluationFormSingleSelectQuestionAutomation = {
    type = "structure",
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
    members = {
        AnswerSource = M.EvaluationFormQuestionAutomationAnswerSource,
    },
}

M.EvaluationFormTextQuestionProperties = {
    type = "structure",
    members = {
        Automation = M.EvaluationFormTextQuestionAutomation,
    },
}

M.EvaluationFormQuestionTypeProperties = {
    type = "union",
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
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.EvaluationReviewNotificationRecipient = {
    type = "structure",
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
    members = {
        RecurrencePattern = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurrencePattern }),
    },
}

M.CreateHoursOfOperationOverrideInput = {
    type = "structure",
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
    members = {
        ContinuedFromContactId = {
            type = "string",
        },
    },
}

M.InputPredefinedAttributeConfiguration = {
    type = "structure",
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
    members = {
        StringList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreatePredefinedAttributeInput = {
    type = "structure",
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
}

M.CreatePromptInput = {
    type = "structure",
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
    members = {
        OutboundEmailAddressId = {
            type = "string",
        },
    },
}

M.CreateQueueInput = {
    type = "structure",
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
}

M.EmptyFieldValue = {
    type = "structure",
}

M.FieldValueUnion = {
    type = "structure",
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
}

M.EventBridgeActionDefinition = {
    type = "structure",
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
    members = {
        PrimaryAttributeValues = {
            type = "list",
            member = M.PrimaryAttributeValue,
        },
    },
}

M.DataTableAccessControlConfiguration = {
    type = "structure",
    members = {
        PrimaryAttributeAccessControlConfiguration = M.PrimaryAttributeAccessControlConfigurationItem,
    },
}

M.GranularAccessControlConfiguration = {
    type = "structure",
    members = {
        DataTableAccessControlConfiguration = M.DataTableAccessControlConfiguration,
    },
}

M.CreateSecurityProfileInput = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
    },
}

M.InvisibleFieldInfo = {
    type = "structure",
    members = {
        Id = M.TaskTemplateFieldIdentifier,
    },
}

M.ReadOnlyFieldInfo = {
    type = "structure",
    members = {
        Id = M.TaskTemplateFieldIdentifier,
    },
}

M.RequiredFieldInfo = {
    type = "structure",
    members = {
        Id = M.TaskTemplateFieldIdentifier,
    },
}

M.TaskTemplateConstraints = {
    type = "structure",
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
    members = {
        Id = M.TaskTemplateFieldIdentifier,
        DefaultValue = {
            type = "string",
        },
    },
}

M.TaskTemplateDefaults = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateViewVersionInput = {
    type = "structure",
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
    members = {
        View = M.View,
    },
}

M.CreateVocabularyInput = {
    type = "structure",
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
    members = {
        Logo = M.ImagesLogo,
    },
}

M.PaletteCanvas = {
    type = "structure",
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
    members = {
        Default = {
            type = "string",
        },
    },
}

M.WorkspaceThemeTypography = {
    type = "structure",
    members = {
        FontFamily = M.FontFamily,
    },
}

M.WorkspaceThemeConfig = {
    type = "structure",
    members = {
        Palette = M.WorkspaceThemePalette,
        Images = M.WorkspaceThemeImages,
        Typography = M.WorkspaceThemeTypography,
    },
}

M.WorkspaceTheme = {
    type = "structure",
    members = {
        Light = M.WorkspaceThemeConfig,
        Dark = M.WorkspaceThemeConfig,
    },
}

M.CreateWorkspaceInput = {
    type = "structure",
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
}

M.DeactivateEvaluationFormInput = {
    type = "structure",
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
}

M.DeleteContactEvaluationInput = {
    type = "structure",
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
}

M.DeleteContactFlowInput = {
    type = "structure",
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
}

M.DeleteContactFlowModuleInput = {
    type = "structure",
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
}

M.DeleteContactFlowModuleAliasInput = {
    type = "structure",
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
}

M.DeleteContactFlowModuleVersionInput = {
    type = "structure",
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
}

M.DeleteContactFlowVersionInput = {
    type = "structure",
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
}

M.DeleteDataTableInput = {
    type = "structure",
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
}

M.DeleteDataTableAttributeInput = {
    type = "structure",
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
    members = {
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.DeleteEmailAddressInput = {
    type = "structure",
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
}

M.DeleteEvaluationFormInput = {
    type = "structure",
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
}

M.DeleteHoursOfOperationInput = {
    type = "structure",
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
}

M.DeleteHoursOfOperationOverrideInput = {
    type = "structure",
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
}

M.DeleteInstanceInput = {
    type = "structure",
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
}

M.DeleteIntegrationAssociationInput = {
    type = "structure",
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
}

M.DeleteNotificationInput = {
    type = "structure",
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
}

M.DeletePredefinedAttributeInput = {
    type = "structure",
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
}

M.DeletePromptInput = {
    type = "structure",
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
}

M.DeletePushNotificationRegistrationInput = {
    type = "structure",
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
}

M.DeleteQueueInput = {
    type = "structure",
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
}

M.DeleteQuickConnectInput = {
    type = "structure",
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
}

M.DeleteRoutingProfileInput = {
    type = "structure",
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
}

M.DeleteRuleInput = {
    type = "structure",
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
}

M.DeleteSecurityProfileInput = {
    type = "structure",
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
}

M.DeleteTaskTemplateInput = {
    type = "structure",
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
}

M.DeleteTestCaseInput = {
    type = "structure",
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
}

M.DeleteTrafficDistributionGroupInput = {
    type = "structure",
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
}

M.DeleteUseCaseInput = {
    type = "structure",
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
}

M.DeleteUserInput = {
    type = "structure",
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
}

M.DeleteUserHierarchyGroupInput = {
    type = "structure",
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
}

M.DeleteViewInput = {
    type = "structure",
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
}

M.DeleteViewVersionInput = {
    type = "structure",
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
}

M.DeleteVocabularyInput = {
    type = "structure",
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
}

M.MediaType = {
    IMAGE_LOGO_LIGHT_FAVICON = "IMAGE_LOGO_LIGHT_FAVICON",
    IMAGE_LOGO_DARK_FAVICON = "IMAGE_LOGO_DARK_FAVICON",
    IMAGE_LOGO_LIGHT_HORIZONTAL = "IMAGE_LOGO_LIGHT_HORIZONTAL",
    IMAGE_LOGO_DARK_HORIZONTAL = "IMAGE_LOGO_DARK_HORIZONTAL",
}

M.DeleteWorkspaceMediaInput = {
    type = "structure",
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
}

M.DeleteWorkspacePageInput = {
    type = "structure",
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
}

M.DescribeAgentStatusInput = {
    type = "structure",
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
    members = {
        AttachedFilesConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttachedFilesConfiguration }),
    },
}

M.DescribeAuthenticationProfileInput = {
    type = "structure",
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
    members = {
        AuthenticationProfile = M.AuthenticationProfile,
    },
}

M.DescribeContactInput = {
    type = "structure",
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
    members = {
        ChatContactMetrics = M.ChatContactMetrics,
        AgentMetrics = M.ParticipantMetrics,
        CustomerMetrics = M.ParticipantMetrics,
    },
}

M.ContactDetails = {
    type = "structure",
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
    members = {
        DeviceInfo = M.DeviceInfo,
        Capabilities = M.ParticipantCapabilities,
    },
}

M.EndpointInfo = {
    type = "structure",
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
    members = {
        PotentialDisconnectIssue = {
            type = "string",
        },
    },
}

M.GlobalResiliencyMetadata = {
    type = "structure",
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
    members = {
        QuickConnectContactData = M.QuickConnectContactData,
    },
}

M.NextContactType = {
    QUICK_CONNECT = "QUICK_CONNECT",
}

M.NextContactEntry = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        NextContactMetadata = M.NextContactMetadata,
    },
}

M.CustomerQualityMetrics = {
    type = "structure",
    members = {
        Audio = M.AudioQualityMetricsInfo,
    },
}

M.QualityMetrics = {
    type = "structure",
    members = {
        Agent = M.AgentQualityMetrics,
        Customer = M.CustomerQualityMetrics,
    },
}

M.QueueInfo = {
    type = "structure",
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
    members = {
        AgentsCriteria = M.AgentsCriteria,
    },
}

M.Range = {
    type = "structure",
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
    members = {
        MillisecondOffsets = M.EvaluationSuggestedAnswerTranscriptMillisecondOffsets,
        TranscriptSegment = {
            type = "string",
        },
    },
}

M.EvaluationAutomationRuleCategory = {
    type = "structure",
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
    members = {
        MatchedRuleCategories = {
            type = "list",
            member = M.EvaluationAutomationRuleCategory,
        },
    },
}

M.EvaluationGenAIAnswerAnalysisDetails = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeContactFlowInput = {
    type = "structure",
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
    members = {
        ContactFlow = M.ContactFlow,
    },
}

M.DescribeContactFlowModuleInput = {
    type = "structure",
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
    members = {
        ContactFlowModule = M.ContactFlowModule,
    },
}

M.DescribeContactFlowModuleAliasInput = {
    type = "structure",
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
    members = {
        ContactFlowModuleAlias = M.ContactFlowModuleAliasInfo,
    },
}

M.DescribeDataTableInput = {
    type = "structure",
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
    members = {
        DataTable = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTable }),
    },
}

M.DescribeDataTableAttributeInput = {
    type = "structure",
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
    members = {
        Attribute = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableAttribute }),
    },
}

M.DescribeEmailAddressInput = {
    type = "structure",
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
    members = {
        HoursOfOperation = M.HoursOfOperation,
    },
}

M.DescribeHoursOfOperationOverrideInput = {
    type = "structure",
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
    members = {
        HoursOfOperationOverride = M.HoursOfOperationOverride,
    },
}

M.DescribeInstanceInput = {
    type = "structure",
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
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
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
    members = {
        Attribute = M.Attribute,
    },
}

M.DescribeInstanceStorageConfigInput = {
    type = "structure",
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
    members = {
        StorageConfig = M.InstanceStorageConfig,
    },
}

M.DescribeNotificationInput = {
    type = "structure",
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
    members = {
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
    },
}

M.DescribePhoneNumberInput = {
    type = "structure",
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
    members = {
        ClaimedPhoneNumberSummary = M.ClaimedPhoneNumberSummary,
    },
}

M.DescribePredefinedAttributeInput = {
    type = "structure",
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
    members = {
        PredefinedAttribute = M.PredefinedAttribute,
    },
}

M.DescribePromptInput = {
    type = "structure",
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
    members = {
        Prompt = M.Prompt,
    },
}

M.DescribeQueueInput = {
    type = "structure",
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
    members = {
        Queue = M.Queue,
    },
}

M.DescribeQuickConnectInput = {
    type = "structure",
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
    members = {
        QuickConnect = M.QuickConnect,
    },
}

M.DescribeRoutingProfileInput = {
    type = "structure",
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
    members = {
        RoutingProfile = M.RoutingProfile,
    },
}

M.DescribeRuleInput = {
    type = "structure",
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
    members = {
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
    },
}

M.DescribeSecurityProfileInput = {
    type = "structure",
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
    members = {
        SecurityProfile = M.SecurityProfile,
    },
}

M.DescribeTestCaseInput = {
    type = "structure",
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
    members = {
        TestCase = M.TestCase,
    },
}

M.DescribeTrafficDistributionGroupInput = {
    type = "structure",
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
    members = {
        TrafficDistributionGroup = M.TrafficDistributionGroup,
    },
}

M.DescribeUserInput = {
    type = "structure",
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
    members = {
        User = M.User,
    },
}

M.DescribeUserHierarchyGroupInput = {
    type = "structure",
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
    members = {
        HierarchyGroup = M.HierarchyGroup,
    },
}

M.DescribeUserHierarchyStructureInput = {
    type = "structure",
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
    members = {
        HierarchyStructure = M.HierarchyStructure,
    },
}

M.DescribeViewInput = {
    type = "structure",
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
    members = {
        View = M.View,
    },
}

M.DescribeVocabularyInput = {
    type = "structure",
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
    members = {
        Vocabulary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Vocabulary }),
    },
}

M.DescribeWorkspaceInput = {
    type = "structure",
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
    members = {
        Workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workspace }),
    },
}

M.DisassociateAnalyticsDataSetInput = {
    type = "structure",
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
}

M.DisassociateApprovedOriginInput = {
    type = "structure",
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
}

M.DisassociateBotInput = {
    type = "structure",
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
}

M.DisassociateEmailAddressAliasInput = {
    type = "structure",
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
}

M.DisassociateFlowInput = {
    type = "structure",
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
}

M.DisassociateHoursOfOperationsInput = {
    type = "structure",
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
}

M.DisassociateInstanceStorageConfigInput = {
    type = "structure",
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
}

M.DisassociateLambdaFunctionInput = {
    type = "structure",
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
}

M.DisassociateLexBotInput = {
    type = "structure",
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
}

M.DisassociatePhoneNumberContactFlowInput = {
    type = "structure",
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
}

M.DisassociateQueueEmailAddressesInput = {
    type = "structure",
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
}

M.DisassociateQueueQuickConnectsInput = {
    type = "structure",
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
}

M.DisassociateRoutingProfileQueuesInput = {
    type = "structure",
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
}

M.DisassociateSecurityKeyInput = {
    type = "structure",
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
}

M.DisassociateSecurityProfilesInput = {
    type = "structure",
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
}

M.DisassociateTrafficDistributionGroupUserInput = {
    type = "structure",
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
}

M.UserProficiencyDisassociate = {
    type = "structure",
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
}

M.DisassociateWorkspaceInput = {
    type = "structure",
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
}

M.DataTableValueEvaluationSet = {
    type = "structure",
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
    members = {
        Number = {
            type = "double",
        },
    },
}

M.ContactMetricResult = {
    type = "structure",
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
    members = {
        Metric = M.CurrentMetric,
        Value = {
            type = "double",
        },
    },
}

M.RoutingProfileReference = {
    type = "structure",
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
    members = {
        ContactStates = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UserDataFilters = {
    type = "structure",
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
    members = {
        Start = M.OverrideTimeSlice,
        End = M.OverrideTimeSlice,
    },
}

M.EffectiveHoursOfOperations = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetFlowAssociationInput = {
    type = "structure",
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
    members = {
        Metric = M.HistoricalMetric,
        Value = {
            type = "double",
        },
    },
}

M.HistoricalMetricResult = {
    type = "structure",
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
    members = {
        Comparison = {
            type = "string",
        },
    },
}

M.FilterV2 = {
    type = "structure",
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
    members = {
        Metric = M.MetricV2,
        Value = {
            type = "double",
        },
    },
}

M.MetricInterval = {
    type = "structure",
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
}

M.ListAgentStatusesInput = {
    type = "structure",
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
    members = {
        LexBot = M.LexBot,
        LexV2Bot = M.LexV2Bot,
    },
}

M.ListBotsOutput = {
    type = "structure",
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
    members = {
        TranscriptItems = {
            type = "list",
            member = M.RealTimeContactAnalysisTranscriptItemWithCharacterOffsets,
        },
    },
}

M.RealTimeContactAnalysisCategoryDetails = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListRoutingProfileManualAssignmentQueuesInput = {
    type = "structure",
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
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.ListTrafficDistributionGroupUsersOutput = {
    type = "structure",
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
    members = {
        Media = {
            type = "list",
            member = M.MediaItem,
        },
    },
}

M.ListWorkspacePagesInput = {
    type = "structure",
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
}

M.PutUserStatusInput = {
    type = "structure",
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
}

M.ReleasePhoneNumberInput = {
    type = "structure",
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
}

M.ReplicateInstanceInput = {
    type = "structure",
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
}

M.InvalidActiveRegionException = {
    type = "structure",
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
}

M.SearchAgentStatusesOutput = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.EvaluationSearchMetadata = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchContactFlowModulesOutput = {
    type = "structure",
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
    members = {
        ContactFlowType = {
            type = "string",
        },
    },
}

M.ContactFlowAttributeAndCondition = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
        FlowAttributeFilter = M.ContactFlowAttributeFilter,
    },
}

M.SearchContactFlowsOutput = {
    type = "structure",
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
    members = {
        Transcript = M.Transcript,
    },
}

M.NameCriteria = {
    type = "structure",
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
    members = {
        AgentCriteria = M.SearchableAgentCriteriaStep,
    },
}

M.SearchableRoutingCriteria = {
    type = "structure",
    members = {
        Steps = {
            type = "list",
            member = M.SearchableRoutingCriteriaStep,
        },
    },
}

M.SearchableContactAttributesCriteria = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.SearchDataTablesOutput = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.EmailAddressMetadata = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.EvaluationFormSearchSummary = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchHoursOfOperationOverridesOutput = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.NotificationSearchSummary = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchPromptsOutput = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchQueuesOutput = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchQuickConnectsOutput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagSearchCondition = {
    type = "structure",
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
    members = {
        TagSearchCondition = M.TagSearchCondition,
    },
}

M.SearchResourceTagsInput = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchRoutingProfilesOutput = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SecurityProfileSearchSummary = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
    },
}

M.SearchTestCasesOutput = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.SearchUserHierarchyGroupsOutput = {
    type = "structure",
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
    members = {
        TagFilter = M.ControlPlaneTagFilter,
        UserAttributeFilter = M.ControlPlaneUserAttributeFilter,
    },
}

M.UserIdentityInfoLite = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.SearchViewsOutput = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.WorkspaceAssociationSearchSummary = {
    type = "structure",
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
    members = {
        AttributeFilter = M.ControlPlaneAttributeFilter,
    },
}

M.WorkspaceSearchSummary = {
    type = "structure",
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
}

M.StartAttachedFileUploadInput = {
    type = "structure",
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
    members = {
        ResponseMode = {
            type = "string",
        },
    },
}

M.PersistentChat = {
    type = "structure",
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
}

M.StartContactStreamingInput = {
    type = "structure",
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
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartOutboundChatContactOutput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartOutboundEmailContactInput = {
    type = "structure",
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
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.DestinationNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OutboundContactNotPermittedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AnswerMachineDetectionConfig = {
    type = "structure",
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
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartScreenSharingInput = {
    type = "structure",
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
}

M.TaskAttachment = {
    type = "structure",
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
    members = {
        ContactId = {
            type = "string",
        },
    },
}

M.StartTestCaseExecutionInput = {
    type = "structure",
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
    members = {
        EchoReduction = {
            type = "string",
        },
    },
}

M.MeetingFeaturesConfiguration = {
    type = "structure",
    members = {
        Audio = M.AudioFeatures,
    },
}

M.Meeting = {
    type = "structure",
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
    members = {
        Attendee = M.Attendee,
        Meeting = M.Meeting,
    },
}

M.StartWebRTCContactOutput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisconnectReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
    },
}

M.StopContactInput = {
    type = "structure",
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
}

M.StopContactMediaProcessingInput = {
    type = "structure",
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
}

M.StopContactRecordingInput = {
    type = "structure",
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
}

M.StopContactStreamingInput = {
    type = "structure",
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
}

M.StopTestCaseExecutionInput = {
    type = "structure",
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
}

M.EvaluationAnswerInput = {
    type = "structure",
    members = {
        Value = M.EvaluationAnswerData,
    },
}

M.EvaluatorUserUnion = {
    type = "union",
    members = {
        ConnectUserArn = {
            type = "string",
        },
    },
}

M.SubmitContactEvaluationInput = {
    type = "structure",
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
}

M.TagContactInput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
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
}

M.TransferContactInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateAgentStatusInput = {
    type = "structure",
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
}

M.UpdateAttachedFilesConfigurationInput = {
    type = "structure",
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
}

M.QueueInfoInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.UpdateContactOutput = {
    type = "structure",
}

M.UpdateContactAttributesInput = {
    type = "structure",
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
}

M.UpdateContactEvaluationInput = {
    type = "structure",
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
}

M.UpdateContactFlowMetadataInput = {
    type = "structure",
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
}

M.UpdateContactFlowModuleAliasInput = {
    type = "structure",
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
}

M.UpdateContactFlowModuleContentInput = {
    type = "structure",
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
}

M.UpdateContactFlowModuleMetadataInput = {
    type = "structure",
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
}

M.UpdateContactFlowNameInput = {
    type = "structure",
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
}

M.RoutingCriteriaInputStepExpiry = {
    type = "structure",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.UpdateContactRoutingDataOutput = {
    type = "structure",
}

M.UpdateContactScheduleInput = {
    type = "structure",
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
}

M.UpdateDataTableAttributeInput = {
    type = "structure",
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
    members = {
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.UpdateDataTablePrimaryValuesInput = {
    type = "structure",
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
    members = {
        LockVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataTableLockVersion }),
    },
}

M.UpdateEmailAddressMetadataInput = {
    type = "structure",
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
}

M.UpdateHoursOfOperationOverrideInput = {
    type = "structure",
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
}

M.UpdateInstanceAttributeInput = {
    type = "structure",
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
}

M.UpdateInstanceStorageConfigInput = {
    type = "structure",
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
}

M.UpdateNotificationContentInput = {
    type = "structure",
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
}

M.UpdateParticipantAuthenticationInput = {
    type = "structure",
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
    members = {
        Chat = M.ChatParticipantRoleConfig,
    },
}

M.UpdateParticipantRoleConfigInput = {
    type = "structure",
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
}

M.UpdatePhoneNumberInput = {
    type = "structure",
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
}

M.UpdatePredefinedAttributeInput = {
    type = "structure",
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
}

M.UpdatePromptInput = {
    type = "structure",
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
}

M.UpdateQueueMaxContactsInput = {
    type = "structure",
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
}

M.UpdateQueueNameInput = {
    type = "structure",
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
}

M.UpdateQueueOutboundCallerConfigInput = {
    type = "structure",
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
}

M.UpdateQueueOutboundEmailConfigInput = {
    type = "structure",
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
}

M.UpdateQueueStatusInput = {
    type = "structure",
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
}

M.UpdateQuickConnectConfigInput = {
    type = "structure",
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
}

M.UpdateQuickConnectNameInput = {
    type = "structure",
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
}

M.UpdateRoutingProfileAgentAvailabilityTimerInput = {
    type = "structure",
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
}

M.UpdateRoutingProfileConcurrencyInput = {
    type = "structure",
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
}

M.UpdateRoutingProfileDefaultOutboundQueueInput = {
    type = "structure",
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
}

M.UpdateRoutingProfileNameInput = {
    type = "structure",
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
}

M.UpdateRoutingProfileQueuesInput = {
    type = "structure",
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
}

M.UpdateRuleInput = {
    type = "structure",
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
}

M.UpdateSecurityProfileInput = {
    type = "structure",
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
}

M.UpdateTaskTemplateInput = {
    type = "structure",
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
}

M.UpdateTrafficDistributionInput = {
    type = "structure",
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
}

M.UpdateUserConfigInput = {
    type = "structure",
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
}

M.UpdateUserHierarchyInput = {
    type = "structure",
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
}

M.UpdateUserHierarchyGroupNameInput = {
    type = "structure",
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
}

M.HierarchyLevelUpdate = {
    type = "structure",
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
}

M.UpdateUserIdentityInfoInput = {
    type = "structure",
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
}

M.UpdateUserNotificationStatusInput = {
    type = "structure",
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
}

M.UpdateUserPhoneConfigInput = {
    type = "structure",
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
}

M.UpdateUserProficienciesInput = {
    type = "structure",
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
}

M.UpdateUserRoutingProfileInput = {
    type = "structure",
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
}

M.UpdateUserSecurityProfilesInput = {
    type = "structure",
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
}

M.UpdateViewContentInput = {
    type = "structure",
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
    members = {
        View = M.View,
    },
}

M.UpdateViewMetadataInput = {
    type = "structure",
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
}

M.UpdateWorkspaceMetadataInput = {
    type = "structure",
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
}

M.UpdateWorkspacePageInput = {
    type = "structure",
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
}

M.UpdateWorkspaceThemeInput = {
    type = "structure",
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
}

M.UpdateWorkspaceVisibilityInput = {
    type = "structure",
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
}

M.EvaluationFormItemEnablementCondition = {
    type = "structure",
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
    members = {
        Expression = M.EvaluationFormItemEnablementExpression,
        Condition = M.EvaluationFormItemEnablementCondition,
    },
}

M.AgentStatusSearchCriteria = {
    type = "structure",
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
    members = {
        Expiry = M.RoutingCriteriaInputStepExpiry,
        Expression = M.Expression,
    },
}

M.SearchAgentStatusesInput = {
    type = "structure",
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
    members = {
        Section = M.EvaluationFormSection,
        Question = M.EvaluationFormQuestion,
    },
}

M.RoutingCriteria = {
    type = "structure",
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
    members = {
        Steps = {
            type = "list",
            member = M.RoutingCriteriaInputStep,
        },
    },
}

M.EvaluationFormSection = {
    type = "structure",
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
    members = {
        EvaluationForm = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationForm }),
    },
}

M.Contact = {
    type = "structure",
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
    members = {
        Contact = M.Contact,
    },
}

M.SearchContactsOutput = {
    type = "structure",
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
