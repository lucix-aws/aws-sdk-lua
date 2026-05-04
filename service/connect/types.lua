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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        CcList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AfterContactWorkConfig = {
    type = "structure",
    members = {
        AfterContactWorkTimeLimit = {
            type = "number",
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
        AfterContactWorkConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AgentFirstCallbackAfterContactWorkConfig = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
        Queue = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.Preview = {
    type = "structure",
    members = {
        PostAcceptTimeoutConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AllowedUserActions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentFirst = {
    type = "structure",
    members = {
        Preview = {
            type = "structure",
        },
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
            member_type = "string",
        },
        L2Ids = {
            type = "list",
            member_type = "string",
        },
        L3Ids = {
            type = "list",
            member_type = "string",
        },
        L4Ids = {
            type = "list",
            member_type = "string",
        },
        L5Ids = {
            type = "list",
            member_type = "string",
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
        Level1 = {
            type = "structure",
        },
        Level2 = {
            type = "structure",
        },
        Level3 = {
            type = "structure",
        },
        Level4 = {
            type = "structure",
        },
        Level5 = {
            type = "structure",
        },
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
            type = "number",
        },
        HierarchyGroups = {
            type = "structure",
        },
        DeviceInfo = {
            type = "structure",
        },
        Capabilities = {
            type = "structure",
        },
        AfterContactWorkDuration = {
            type = "number",
        },
        AfterContactWorkStartTimestamp = {
            type = "timestamp",
        },
        AfterContactWorkEndTimestamp = {
            type = "timestamp",
        },
        AgentInitiatedHoldDuration = {
            type = "number",
        },
        StateTransitions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        PotentialQualityIssues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AgentQualityMetrics = {
    type = "structure",
    members = {
        Audio = {
            type = "structure",
        },
    },
}

M.AgentsCriteria = {
    type = "structure",
    members = {
        AgentIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
    },
}

M.ControlPlaneAttributeFilter = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndCondition = {
            type = "structure",
        },
        TagCondition = {
            type = "structure",
        },
    },
}

M.AgentStatusSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
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
        Customer = {
            type = "structure",
        },
        Agent = {
            type = "structure",
        },
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
        Reason = {
            type = "union",
        },
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
        Reason = {
            type = "union",
        },
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
        LexBot = {
            type = "structure",
        },
        LexV2Bot = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
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
        AliasConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EncryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        EncryptionConfig = {
            type = "structure",
        },
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
        S3Config = {
            type = "structure",
        },
        KinesisVideoStreamConfig = {
            type = "structure",
        },
        KinesisStreamConfig = {
            type = "structure",
        },
        KinesisFirehoseConfig = {
            type = "structure",
        },
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
        StorageConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
        LexBot = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            member_type = "string",
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
        QueueReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutingProfileQueueConfig = {
    type = "structure",
    members = {
        QueueReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Delay = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        ManualAssignmentQueueConfigs = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        FailedList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        LockVersion = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateDataTableValueOutput = {
    type = "structure",
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteDataTableValueOutput = {
    type = "structure",
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
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

M.BatchDescribeDataTableValueOutput = {
    type = "structure",
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetAttachedFileMetadataInput = {
    type = "structure",
    members = {
        FileIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
        CreatedBy = {
            type = "union",
        },
        FileUseCaseType = {
            type = "string",
        },
        AssociatedResourceArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchGetAttachedFileMetadataOutput = {
    type = "structure",
    members = {
        Files = {
            type = "list",
            member_type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        AgentFirst = {
            type = "structure",
        },
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
        Config = {
            type = "structure",
        },
    },
}

M.ContactDataRequest = {
    type = "structure",
    members = {
        SystemEndpoint = {
            type = "structure",
        },
        CustomerEndpoint = {
            type = "structure",
        },
        RequestIdentifier = {
            type = "string",
        },
        QueueId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Campaign = {
            type = "structure",
        },
        OutboundStrategy = {
            type = "structure",
        },
    },
}

M.BatchPutContactInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        FailedRequestList = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDataTableValueOutput = {
    type = "structure",
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Failed = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
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
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
    },
}

M.ExternalInvocationConfiguration = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
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
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Settings = {
            type = "string",
        },
        ExternalInvocationConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationEnum = {
    type = "structure",
    members = {
        Strict = {
            type = "boolean",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Validation = {
    type = "structure",
    members = {
        MinLength = {
            type = "number",
        },
        MaxLength = {
            type = "number",
        },
        MinValues = {
            type = "number",
        },
        MaxValues = {
            type = "number",
        },
        IgnoreCase = {
            type = "boolean",
        },
        Minimum = {
            type = "number",
        },
        Maximum = {
            type = "number",
        },
        ExclusiveMinimum = {
            type = "number",
        },
        ExclusiveMaximum = {
            type = "number",
        },
        MultipleOf = {
            type = "number",
        },
        Enum = {
            type = "structure",
        },
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
        },
        Validation = {
            type = "structure",
        },
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationFormMultiSelectQuestionAutomationOption = {
    type = "union",
    members = {
        RuleCategory = {
            type = "structure",
        },
    },
}

M.EvaluationFormMultiSelectQuestionAutomation = {
    type = "structure",
    members = {
        Options = {
            type = "list",
            member_type = "union",
        },
        DefaultOptionRefIds = {
            type = "list",
            member_type = "string",
        },
        AnswerSource = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DisplayAs = {
            type = "string",
        },
        Automation = {
            type = "structure",
        },
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
        PropertyValue = {
            type = "structure",
        },
        AnswerSource = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Score = {
            type = "number",
        },
        AutomaticFail = {
            type = "boolean",
        },
        AutomaticFailConfiguration = {
            type = "structure",
        },
    },
}

M.EvaluationFormNumericQuestionProperties = {
    type = "structure",
    members = {
        MinValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "list",
            member_type = "structure",
        },
        Automation = {
            type = "union",
        },
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
        RuleCategory = {
            type = "structure",
        },
    },
}

M.EvaluationFormSingleSelectQuestionAutomation = {
    type = "structure",
    members = {
        Options = {
            type = "list",
            member_type = "union",
        },
        DefaultOptionRefId = {
            type = "string",
        },
        AnswerSource = {
            type = "structure",
        },
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
            type = "number",
        },
        AutomaticFail = {
            type = "boolean",
        },
        AutomaticFailConfiguration = {
            type = "structure",
        },
    },
}

M.EvaluationFormSingleSelectQuestionProperties = {
    type = "structure",
    members = {
        Options = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DisplayAs = {
            type = "string",
        },
        Automation = {
            type = "structure",
        },
    },
}

M.EvaluationFormTextQuestionAutomation = {
    type = "structure",
    members = {
        AnswerSource = {
            type = "structure",
        },
    },
}

M.EvaluationFormTextQuestionProperties = {
    type = "structure",
    members = {
        Automation = {
            type = "structure",
        },
    },
}

M.EvaluationFormQuestionTypeProperties = {
    type = "union",
    members = {
        Numeric = {
            type = "structure",
        },
        SingleSelect = {
            type = "structure",
        },
        Text = {
            type = "structure",
        },
        MultiSelect = {
            type = "structure",
        },
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
        Value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationReviewConfiguration = {
    type = "structure",
    members = {
        ReviewNotificationRecipients = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        EligibilityDays = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Minutes = {
            type = "number",
            traits = {
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
        StartTime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ParentHoursOfOperationConfigs = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Minutes = {
            type = "number",
            traits = {
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
        StartTime = {
            type = "structure",
        },
        EndTime = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ByMonth = {
            type = "list",
            member_type = "number",
        },
        ByMonthDay = {
            type = "list",
            member_type = "number",
        },
        ByWeekdayOccurrence = {
            type = "list",
            member_type = "number",
        },
    },
}

M.RecurrenceConfig = {
    type = "structure",
    members = {
        RecurrencePattern = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        RecurrenceConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "string",
        },
        Content = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PredefinedNotificationId = {
            type = "string",
        },
        ClientToken = {
            type = "string",
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
        ParticipantCapabilities = {
            type = "structure",
        },
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
        },
        ParticipantDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ParticipantCredentials = {
            type = "structure",
        },
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
        },
    },
}

M.PredefinedAttributeValues = {
    type = "union",
    members = {
        StringList = {
            type = "list",
            member_type = "string",
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
        Values = {
            type = "union",
        },
        Purposes = {
            type = "list",
            member_type = "string",
        },
        AttributeConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        ContactConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        OutboundCallerConfig = {
            type = "structure",
        },
        OutboundEmailConfig = {
            type = "structure",
        },
        HoursOfOperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxContacts = {
            type = "number",
        },
        QuickConnectIds = {
            type = "list",
            member_type = "string",
        },
        EmailAddressesConfig = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        UserConfig = {
            type = "structure",
        },
        QueueConfig = {
            type = "structure",
        },
        PhoneConfig = {
            type = "structure",
        },
        FlowConfig = {
            type = "structure",
        },
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
        QuickConnectConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        CrossChannelBehavior = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ManualAssignmentQueueConfigs = {
            type = "list",
            member_type = "structure",
        },
        MediaConcurrencies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        },
        DoubleValue = {
            type = "number",
        },
        EmptyValue = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        TargetSlaMinutes = {
            type = "number",
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
        CaseSlaConfiguration = {
            type = "structure",
        },
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
        Value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCaseActionDefinition = {
    type = "structure",
    members = {
        Fields = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        UserIds = {
            type = "list",
            member_type = "string",
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
        Recipient = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Exclusion = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.UpdateCaseActionDefinition = {
    type = "structure",
    members = {
        Fields = {
            type = "list",
            member_type = "structure",
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
        TaskAction = {
            type = "structure",
        },
        EventBridgeAction = {
            type = "structure",
        },
        AssignContactCategoryAction = {
            type = "structure",
        },
        SendNotificationAction = {
            type = "structure",
        },
        CreateCaseAction = {
            type = "structure",
        },
        UpdateCaseAction = {
            type = "structure",
        },
        AssignSlaAction = {
            type = "structure",
        },
        EndAssociatedTasksAction = {
            type = "structure",
        },
        SubmitAutoEvaluationAction = {
            type = "structure",
        },
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
        TriggerEventSource = {
            type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.PrimaryAttributeAccessControlConfigurationItem = {
    type = "structure",
    members = {
        PrimaryAttributeValues = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataTableAccessControlConfiguration = {
    type = "structure",
    members = {
        PrimaryAttributeAccessControlConfiguration = {
            type = "structure",
        },
    },
}

M.GranularAccessControlConfiguration = {
    type = "structure",
    members = {
        DataTableAccessControlConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        AllowedAccessControlTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TagRestrictedResources = {
            type = "list",
            member_type = "string",
        },
        Applications = {
            type = "list",
            member_type = "structure",
        },
        HierarchyRestrictedResources = {
            type = "list",
            member_type = "string",
        },
        AllowedAccessControlHierarchyGroupId = {
            type = "string",
        },
        AllowedFlowModules = {
            type = "list",
            member_type = "structure",
        },
        GranularAccessControlConfiguration = {
            type = "structure",
        },
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
        Id = {
            type = "structure",
        },
    },
}

M.ReadOnlyFieldInfo = {
    type = "structure",
    members = {
        Id = {
            type = "structure",
        },
    },
}

M.RequiredFieldInfo = {
    type = "structure",
    members = {
        Id = {
            type = "structure",
        },
    },
}

M.TaskTemplateConstraints = {
    type = "structure",
    members = {
        RequiredFields = {
            type = "list",
            member_type = "structure",
        },
        ReadOnlyFields = {
            type = "list",
            member_type = "structure",
        },
        InvisibleFields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaskTemplateDefaultFieldValue = {
    type = "structure",
    members = {
        Id = {
            type = "structure",
        },
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
            member_type = "structure",
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
        Id = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        SingleSelectOptions = {
            type = "list",
            member_type = "string",
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
        Constraints = {
            type = "structure",
        },
        Defaults = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        Fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            member_type = "structure",
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
        VoiceCallEntryPointParameters = {
            type = "structure",
        },
        ChatEntryPointParameters = {
            type = "structure",
        },
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
        EntryPoint = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        },
        AutoAccept = {
            type = "boolean",
        },
        AfterContactWorkTimeLimit = {
            type = "number",
        },
        DeskPhoneNumber = {
            type = "string",
        },
        PersistentConnection = {
            type = "boolean",
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
        IdentityInfo = {
            type = "structure",
        },
        PhoneConfig = {
            type = "structure",
        },
        DirectoryUserId = {
            type = "string",
        },
        SecurityProfileIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        AfterContactWorkConfigs = {
            type = "list",
            member_type = "structure",
        },
        PhoneNumberConfigs = {
            type = "list",
            member_type = "structure",
        },
        PersistentConnectionConfigs = {
            type = "list",
            member_type = "structure",
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        VersionDescription = {
            type = "string",
        },
        Content = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        View = {
            type = "structure",
        },
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
        View = {
            type = "structure",
        },
    },
}

M.CreateVocabularyInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
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
        Logo = {
            type = "structure",
        },
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
        Header = {
            type = "structure",
        },
        Navigation = {
            type = "structure",
        },
        Canvas = {
            type = "structure",
        },
        Primary = {
            type = "structure",
        },
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
        FontFamily = {
            type = "structure",
        },
    },
}

M.WorkspaceThemeConfig = {
    type = "structure",
    members = {
        Palette = {
            type = "structure",
        },
        Images = {
            type = "structure",
        },
        Typography = {
            type = "structure",
        },
    },
}

M.WorkspaceTheme = {
    type = "structure",
    members = {
        Light = {
            type = "structure",
        },
        Dark = {
            type = "structure",
        },
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
        Theme = {
            type = "structure",
        },
        Title = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        AgentStatus = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        ExtensionConfiguration = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeAttachedFilesConfigurationOutput = {
    type = "structure",
    members = {
        AttachedFilesConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
        },
        BlockedIps = {
            type = "list",
            member_type = "string",
        },
        IsDefault = {
            type = "boolean",
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
            type = "number",
        },
        MaxSessionDuration = {
            type = "number",
        },
        SessionInactivityDuration = {
            type = "number",
        },
        SessionInactivityHandlingEnabled = {
            type = "boolean",
        },
    },
}

M.DescribeAuthenticationProfileOutput = {
    type = "structure",
    members = {
        AuthenticationProfile = {
            type = "structure",
        },
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
            type = "number",
        },
        NumResponses = {
            type = "number",
        },
        MessageLengthInChars = {
            type = "number",
        },
        TotalResponseTimeInMillis = {
            type = "number",
        },
        MaxResponseTimeInMillis = {
            type = "number",
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
            type = "number",
        },
        TotalBotMessages = {
            type = "number",
        },
        TotalBotMessageLengthInChars = {
            type = "number",
        },
        ConversationCloseTimeInMillis = {
            type = "number",
        },
        ConversationTurnCount = {
            type = "number",
        },
        AgentFirstResponseTimestamp = {
            type = "timestamp",
        },
        AgentFirstResponseTimeInMillis = {
            type = "number",
        },
    },
}

M.ChatMetrics = {
    type = "structure",
    members = {
        ChatContactMetrics = {
            type = "structure",
        },
        AgentMetrics = {
            type = "structure",
        },
        CustomerMetrics = {
            type = "structure",
        },
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
        DeviceInfo = {
            type = "structure",
        },
        Capabilities = {
            type = "structure",
        },
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
        QuickConnectContactData = {
            type = "structure",
        },
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
        NextContactMetadata = {
            type = "union",
        },
    },
}

M.CustomerQualityMetrics = {
    type = "structure",
    members = {
        Audio = {
            type = "structure",
        },
    },
}

M.QualityMetrics = {
    type = "structure",
    members = {
        Agent = {
            type = "structure",
        },
        Customer = {
            type = "structure",
        },
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
            type = "number",
        },
        ExpiryTimestamp = {
            type = "timestamp",
        },
    },
}

M.MatchCriteria = {
    type = "structure",
    members = {
        AgentsCriteria = {
            type = "structure",
        },
    },
}

M.Range = {
    type = "structure",
    members = {
        MinProficiencyLevel = {
            type = "number",
        },
        MaxProficiencyLevel = {
            type = "number",
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
            type = "number",
        },
        Range = {
            type = "structure",
        },
        MatchCriteria = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationTranscriptPointOfInterest = {
    type = "structure",
    members = {
        MillisecondOffsets = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.EvaluationContactLensAnswerAnalysisDetails = {
    type = "structure",
    members = {
        MatchedRuleCategories = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.EvaluationQuestionAnswerAnalysisDetails = {
    type = "union",
    members = {
        GenAI = {
            type = "structure",
        },
        ContactLens = {
            type = "structure",
        },
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
            type = "number",
        },
        StringValues = {
            type = "list",
            member_type = "string",
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
        Value = {
            type = "union",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Input = {
            type = "structure",
        },
        AnalysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisDetails = {
            type = "union",
        },
    },
}

M.EvaluationAnswerOutput = {
    type = "structure",
    members = {
        Value = {
            type = "union",
        },
        SystemSuggestedValue = {
            type = "union",
        },
        SuggestedAnswers = {
            type = "list",
            member_type = "structure",
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
        },
        CreatedBy = {
            type = "string",
        },
        ReviewRequestComments = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        NotApplicable = {
            type = "boolean",
        },
        AutomaticFail = {
            type = "boolean",
        },
        AppliedWeight = {
            type = "number",
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
        Score = {
            type = "structure",
        },
        AutoEvaluation = {
            type = "structure",
        },
        Acknowledgement = {
            type = "structure",
        },
        Review = {
            type = "structure",
        },
        ContactParticipant = {
            type = "structure",
        },
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
        Metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Answers = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        Notes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        FlowContentSha256 = {
            type = "string",
        },
        Version = {
            type = "number",
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
        ContactFlow = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        FlowModuleContentSha256 = {
            type = "string",
        },
        Version = {
            type = "number",
        },
        VersionDescription = {
            type = "string",
        },
        Settings = {
            type = "string",
        },
        ExternalInvocationConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeContactFlowModuleOutput = {
    type = "structure",
    members = {
        ContactFlowModule = {
            type = "structure",
        },
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
            type = "number",
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
        ContactFlowModuleAlias = {
            type = "structure",
        },
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
        LockVersion = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeDataTableOutput = {
    type = "structure",
    members = {
        DataTable = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
        Version = {
            type = "string",
        },
        LockVersion = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        Validation = {
            type = "structure",
        },
    },
}

M.DescribeDataTableAttributeOutput = {
    type = "structure",
    members = {
        Attribute = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        ParentHoursOfOperations = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        HoursOfOperation = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        EffectiveFrom = {
            type = "string",
        },
        EffectiveTill = {
            type = "string",
        },
        RecurrenceConfig = {
            type = "structure",
        },
        OverrideType = {
            type = "string",
        },
    },
}

M.DescribeHoursOfOperationOverrideOutput = {
    type = "structure",
    members = {
        HoursOfOperationOverride = {
            type = "structure",
        },
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
        StatusReason = {
            type = "structure",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
        Instance = {
            type = "structure",
        },
        ReplicationConfiguration = {
            type = "structure",
        },
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
        Attribute = {
            type = "structure",
        },
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
        StorageConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeNotificationOutput = {
    type = "structure",
    members = {
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        PhoneNumberStatus = {
            type = "structure",
        },
        SourcePhoneNumberArn = {
            type = "string",
        },
    },
}

M.DescribePhoneNumberOutput = {
    type = "structure",
    members = {
        ClaimedPhoneNumberSummary = {
            type = "structure",
        },
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
        },
        IsReadOnly = {
            type = "boolean",
        },
    },
}

M.PredefinedAttribute = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "union",
        },
        Purposes = {
            type = "list",
            member_type = "string",
        },
        AttributeConfiguration = {
            type = "structure",
        },
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
        PredefinedAttribute = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        Prompt = {
            type = "structure",
        },
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
        OutboundCallerConfig = {
            type = "structure",
        },
        OutboundEmailConfig = {
            type = "structure",
        },
        HoursOfOperationId = {
            type = "string",
        },
        MaxContacts = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        Queue = {
            type = "structure",
        },
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
        QuickConnectConfig = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        QuickConnect = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        DefaultOutboundQueueId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NumberOfAssociatedQueues = {
            type = "number",
        },
        NumberOfAssociatedManualAssignmentQueues = {
            type = "number",
        },
        NumberOfAssociatedUsers = {
            type = "number",
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
        },
        AssociatedQueueIds = {
            type = "list",
            member_type = "string",
        },
        AssociatedManualAssignmentQueueIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeRoutingProfileOutput = {
    type = "structure",
    members = {
        RoutingProfile = {
            type = "structure",
        },
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
        TriggerEventSource = {
            type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeRuleOutput = {
    type = "structure",
    members = {
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
        AllowedAccessControlTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TagRestrictedResources = {
            type = "list",
            member_type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastModifiedRegion = {
            type = "string",
        },
        HierarchyRestrictedResources = {
            type = "list",
            member_type = "string",
        },
        AllowedAccessControlHierarchyGroupId = {
            type = "string",
        },
        GranularAccessControlConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeSecurityProfileOutput = {
    type = "structure",
    members = {
        SecurityProfile = {
            type = "structure",
        },
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
        EntryPoint = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        TestCaseSha256 = {
            type = "string",
        },
    },
}

M.DescribeTestCaseOutput = {
    type = "structure",
    members = {
        TestCase = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.DescribeTrafficDistributionGroupOutput = {
    type = "structure",
    members = {
        TrafficDistributionGroup = {
            type = "structure",
        },
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
        IdentityInfo = {
            type = "structure",
        },
        PhoneConfig = {
            type = "structure",
        },
        DirectoryUserId = {
            type = "string",
        },
        SecurityProfileIds = {
            type = "list",
            member_type = "string",
        },
        RoutingProfileId = {
            type = "string",
        },
        HierarchyGroupId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AutoAcceptConfigs = {
            type = "list",
            member_type = "structure",
        },
        AfterContactWorkConfigs = {
            type = "list",
            member_type = "structure",
        },
        PhoneNumberConfigs = {
            type = "list",
            member_type = "structure",
        },
        PersistentConnectionConfigs = {
            type = "list",
            member_type = "structure",
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member_type = "structure",
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
        User = {
            type = "structure",
        },
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
        LevelOne = {
            type = "structure",
        },
        LevelTwo = {
            type = "structure",
        },
        LevelThree = {
            type = "structure",
        },
        LevelFour = {
            type = "structure",
        },
        LevelFive = {
            type = "structure",
        },
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
        HierarchyPath = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        HierarchyGroup = {
            type = "structure",
        },
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
        LevelOne = {
            type = "structure",
        },
        LevelTwo = {
            type = "structure",
        },
        LevelThree = {
            type = "structure",
        },
        LevelFour = {
            type = "structure",
        },
        LevelFive = {
            type = "structure",
        },
    },
}

M.DescribeUserHierarchyStructureOutput = {
    type = "structure",
    members = {
        HierarchyStructure = {
            type = "structure",
        },
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
        View = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeVocabularyOutput = {
    type = "structure",
    members = {
        Vocabulary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Theme = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeWorkspaceOutput = {
    type = "structure",
    members = {
        Workspace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        LexBot = {
            type = "structure",
        },
        LexV2Bot = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
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
        AliasConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
        ManualAssignmentQueueReferences = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        FailedList = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
                required = true,
            },
        },
        Error = {
            type = "boolean",
            traits = {
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        CreatedBy = {
            type = "union",
        },
        DownloadUrlMetadata = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
        Value = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetContactMetricsOutput = {
    type = "structure",
    members = {
        MetricResults = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        Channels = {
            type = "list",
            member_type = "string",
        },
        RoutingProfiles = {
            type = "list",
            member_type = "string",
        },
        RoutingStepExpressions = {
            type = "list",
            member_type = "string",
        },
        AgentStatuses = {
            type = "list",
            member_type = "string",
        },
        Subtypes = {
            type = "list",
            member_type = "string",
        },
        ValidationTestTypes = {
            type = "list",
            member_type = "string",
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
        Filters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Groupings = {
            type = "list",
            member_type = "string",
        },
        CurrentMetrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        SortCriteria = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CurrentMetricData = {
    type = "structure",
    members = {
        Metric = {
            type = "structure",
        },
        Value = {
            type = "number",
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
        Queue = {
            type = "structure",
        },
        Channel = {
            type = "string",
        },
        RoutingProfile = {
            type = "structure",
        },
        RoutingStepExpression = {
            type = "string",
        },
        AgentStatus = {
            type = "structure",
        },
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
        Dimensions = {
            type = "structure",
        },
        Collections = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        DataSnapshotTime = {
            type = "timestamp",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.ContactFilter = {
    type = "structure",
    members = {
        ContactStates = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UserDataFilters = {
    type = "structure",
    members = {
        Queues = {
            type = "list",
            member_type = "string",
        },
        ContactFilter = {
            type = "structure",
        },
        RoutingProfiles = {
            type = "list",
            member_type = "string",
        },
        Agents = {
            type = "list",
            member_type = "string",
        },
        UserHierarchyGroups = {
            type = "list",
            member_type = "string",
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
        Filters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
        LevelOne = {
            type = "structure",
        },
        LevelTwo = {
            type = "structure",
        },
        LevelThree = {
            type = "structure",
        },
        LevelFour = {
            type = "structure",
        },
        LevelFive = {
            type = "structure",
        },
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
        User = {
            type = "structure",
        },
        RoutingProfile = {
            type = "structure",
        },
        HierarchyPath = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        AvailableSlotsByChannel = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        MaxSlotsByChannel = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        ActiveSlotsByChannel = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        Contacts = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        ApproximateTotalCount = {
            type = "number",
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
        Start = {
            type = "structure",
        },
        End = {
            type = "structure",
        },
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
            member_type = "structure",
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
        Start = {
            type = "structure",
        },
        End = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.GetEffectiveHoursOfOperationsOutput = {
    type = "structure",
    members = {
        EffectiveHoursOfOperationList = {
            type = "list",
            member_type = "structure",
        },
        EffectiveOverrideHoursList = {
            type = "list",
            member_type = "structure",
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
        Credentials = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.HistoricalMetric = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Threshold = {
            type = "structure",
        },
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
        Filters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Groupings = {
            type = "list",
            member_type = "string",
        },
        HistoricalMetrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.HistoricalMetricData = {
    type = "structure",
    members = {
        Metric = {
            type = "structure",
        },
        Value = {
            type = "number",
        },
    },
}

M.HistoricalMetricResult = {
    type = "structure",
    members = {
        Dimensions = {
            type = "structure",
        },
        Collections = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        StringCondition = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Negate = {
            type = "boolean",
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
            type = "number",
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
            member_type = "structure",
        },
        MetricId = {
            type = "string",
        },
        MetricFilters = {
            type = "list",
            member_type = "structure",
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
        Interval = {
            type = "structure",
        },
        Filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Groupings = {
            type = "list",
            member_type = "string",
        },
        Metrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.MetricDataV2 = {
    type = "structure",
    members = {
        Metric = {
            type = "structure",
        },
        Value = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        MetricInterval = {
            type = "structure",
        },
        Collections = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        Constraints = {
            type = "structure",
        },
        Defaults = {
            type = "structure",
        },
        Fields = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        ObservationsPassed = {
            type = "number",
        },
        ObservationsFailed = {
            type = "number",
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
        ObservationSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrafficDistributionOutput = {
    type = "structure",
    members = {
        TelephonyConfig = {
            type = "structure",
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        SignInConfig = {
            type = "structure",
        },
        AgentConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        AgentStatusTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        ExtensionConfiguration = {
            type = "structure",
        },
    },
}

M.ListAttachedFilesConfigurationsOutput = {
    type = "structure",
    members = {
        AttachedFilesConfigurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        LexBot = {
            type = "structure",
        },
        LexV2Bot = {
            type = "structure",
        },
    },
}

M.ListBotsOutput = {
    type = "structure",
    members = {
        LexBots = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        Score = {
            type = "structure",
        },
        Acknowledgement = {
            type = "structure",
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
        ContactParticipant = {
            type = "structure",
        },
    },
}

M.ListContactEvaluationsOutput = {
    type = "structure",
    members = {
        EvaluationSummaryList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.ListContactFlowModuleVersionsOutput = {
    type = "structure",
    members = {
        ContactFlowModuleVersionSummaryList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.ListContactFlowVersionsOutput = {
    type = "structure",
    members = {
        ContactFlowVersionSummaryList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        Url = {
            type = "structure",
        },
        Attachment = {
            type = "structure",
        },
        EmailMessage = {
            type = "structure",
        },
        EmailMessageRedacted = {
            type = "structure",
        },
        EmailMessagePlainText = {
            type = "structure",
        },
        EmailMessagePlainTextRedacted = {
            type = "structure",
        },
        String = {
            type = "structure",
        },
        Number = {
            type = "structure",
        },
        Date = {
            type = "structure",
        },
        Email = {
            type = "structure",
        },
    },
}

M.ListContactReferencesOutput = {
    type = "structure",
    members = {
        ReferenceSummaryList = {
            type = "list",
            member_type = "union",
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
            member_type = "string",
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        PrimaryAttributeValues = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        PrimaryAttributeValues = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
        LockVersion = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListEntitySecurityProfilesOutput = {
    type = "structure",
    members = {
        SecurityProfiles = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ActiveVersion = {
            type = "number",
        },
    },
}

M.ListEvaluationFormsOutput = {
    type = "structure",
    members = {
        EvaluationFormSummaryList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Locked = {
            type = "boolean",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "phoneNumberTypes",
            },
        },
        PhoneNumberCountryCodes = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        PhoneNumberCountryCodes = {
            type = "list",
            member_type = "string",
        },
        PhoneNumberTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        QuickConnectTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.RealTimeContactAnalysisCharacterInterval = {
    type = "structure",
    members = {
        BeginOffsetChar = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EndOffsetChar = {
            type = "number",
            traits = {
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
        CharacterOffsets = {
            type = "structure",
        },
    },
}

M.RealTimeContactAnalysisPointOfInterest = {
    type = "structure",
    members = {
        TranscriptItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RealTimeContactAnalysisCategoryDetails = {
    type = "structure",
    members = {
        PointsOfInterest = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
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
        Time = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        CharacterOffsets = {
            type = "structure",
        },
    },
}

M.RealTimeContactAnalysisIssueDetected = {
    type = "structure",
    members = {
        TranscriptItems = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        Time = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Redaction = {
            type = "structure",
        },
        Sentiment = {
            type = "string",
        },
    },
}

M.RealtimeContactAnalysisSegment = {
    type = "union",
    members = {
        Transcript = {
            type = "structure",
        },
        Categories = {
            type = "structure",
        },
        Issues = {
            type = "structure",
        },
        Event = {
            type = "structure",
        },
        Attachments = {
            type = "structure",
        },
        PostContactSummary = {
            type = "structure",
        },
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
            member_type = "union",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Delay = {
            type = "number",
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

M.ListRoutingProfileQueuesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RoutingProfileQueueConfigSummaryList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                http_query = "startTime",
            },
        },
        EndTime = {
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTestCaseExecutionsOutput = {
    type = "structure",
    members = {
        TestCaseExecutions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        ClientToken = {
            type = "string",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxValue = {
            type = "number",
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
            type = "number",
        },
        MaxValue = {
            type = "number",
        },
        ComparisonType = {
            type = "string",
        },
    },
}

M.EvaluationSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
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
            type = "number",
        },
        ScoreAutomaticFail = {
            type = "boolean",
        },
        ScoreNotApplicable = {
            type = "boolean",
        },
        AutoEvaluationEnabled = {
            type = "boolean",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EvaluationFormTitle = {
            type = "string",
        },
        Metadata = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SearchContactEvaluationsOutput = {
    type = "structure",
    members = {
        EvaluationSearchSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.ControlPlaneTagFilter = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "list",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        TagCondition = {
            type = "structure",
        },
    },
}

M.ContactFlowModuleSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
    },
}

M.SearchContactFlowModulesOutput = {
    type = "structure",
    members = {
        ContactFlowModules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
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
            member_type = "structure",
        },
        ContactFlowTypeCondition = {
            type = "structure",
        },
    },
}

M.ContactFlowAttributeFilter = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndCondition = {
            type = "structure",
        },
        TagCondition = {
            type = "structure",
        },
        ContactFlowTypeCondition = {
            type = "structure",
        },
    },
}

M.ContactFlowSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
        FlowAttributeFilter = {
            type = "structure",
        },
    },
}

M.SearchContactFlowsOutput = {
    type = "structure",
    members = {
        ContactFlows = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
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
        TimeRange = {
            type = "structure",
        },
        TimestampCondition = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        Transcript = {
            type = "structure",
        },
    },
}

M.NameCriteria = {
    type = "structure",
    members = {
        SearchText = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        MatchType = {
            type = "string",
        },
    },
}

M.SearchableRoutingCriteriaStep = {
    type = "structure",
    members = {
        AgentCriteria = {
            type = "structure",
        },
    },
}

M.SearchableRoutingCriteria = {
    type = "structure",
    members = {
        Steps = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        Name = {
            type = "structure",
        },
        AgentIds = {
            type = "list",
            member_type = "string",
        },
        AgentHierarchyGroups = {
            type = "structure",
        },
        Channels = {
            type = "list",
            member_type = "string",
        },
        ContactAnalysis = {
            type = "structure",
        },
        InitiationMethods = {
            type = "list",
            member_type = "string",
        },
        QueueIds = {
            type = "list",
            member_type = "string",
        },
        RoutingCriteria = {
            type = "structure",
        },
        AdditionalTimeRange = {
            type = "structure",
        },
        SearchableContactAttributes = {
            type = "structure",
        },
        SearchableSegmentAttributes = {
            type = "structure",
        },
        ActiveRegions = {
            type = "list",
            member_type = "string",
        },
        ContactTags = {
            type = "structure",
        },
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
        TimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SearchCriteria = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Sort = {
            type = "structure",
        },
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
        AttributeFilter = {
            type = "structure",
        },
    },
}

M.SearchDataTablesOutput = {
    type = "structure",
    members = {
        DataTables = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.EmailAddressSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.EvaluationFormSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ActiveVersion = {
            type = "number",
        },
        AutoEvaluationEnabled = {
            type = "boolean",
        },
        EvaluationFormLanguage = {
            type = "string",
        },
        ContactInteractionType = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SearchEvaluationFormsOutput = {
    type = "structure",
    members = {
        EvaluationFormSearchSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
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
        TagFilter = {
            type = "structure",
        },
    },
}

M.SearchHoursOfOperationOverridesOutput = {
    type = "structure",
    members = {
        HoursOfOperationOverrides = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.SearchHoursOfOperationsOutput = {
    type = "structure",
    members = {
        HoursOfOperations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.NotificationSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        Priority = {
            type = "string",
        },
        Recipients = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SearchNotificationsOutput = {
    type = "structure",
    members = {
        Notifications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.SearchPredefinedAttributesOutput = {
    type = "structure",
    members = {
        PredefinedAttributes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.PromptSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
    },
}

M.SearchPromptsOutput = {
    type = "structure",
    members = {
        Prompts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.SearchableQueueType = {
    STANDARD = "STANDARD",
}

M.QueueSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
    },
}

M.SearchQueuesOutput = {
    type = "structure",
    members = {
        Queues = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.QuickConnectSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
    },
}

M.SearchQuickConnectsOutput = {
    type = "structure",
    members = {
        QuickConnects = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
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
        TagSearchCondition = {
            type = "structure",
        },
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
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RoutingProfileSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
    },
}

M.SearchRoutingProfilesOutput = {
    type = "structure",
    members = {
        RoutingProfiles = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.SecurityProfilesSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SearchSecurityProfilesOutput = {
    type = "structure",
    members = {
        SecurityProfiles = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.TestCaseSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
    },
}

M.SearchTestCasesOutput = {
    type = "structure",
    members = {
        TestCases = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.UserHierarchyGroupSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
    },
}

M.SearchUserHierarchyGroupsOutput = {
    type = "structure",
    members = {
        UserHierarchyGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
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
        StringCondition = {
            type = "structure",
        },
        NumberCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.AttributeAndCondition = {
    type = "structure",
    members = {
        TagConditions = {
            type = "list",
            member_type = "structure",
        },
        HierarchyGroupCondition = {
            type = "structure",
        },
    },
}

M.ControlPlaneUserAttributeFilter = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndCondition = {
            type = "structure",
        },
        TagCondition = {
            type = "structure",
        },
        HierarchyGroupCondition = {
            type = "structure",
        },
    },
}

M.UserSearchFilter = {
    type = "structure",
    members = {
        TagFilter = {
            type = "structure",
        },
        UserAttributeFilter = {
            type = "structure",
        },
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
        IdentityInfo = {
            type = "structure",
        },
        PhoneConfig = {
            type = "structure",
        },
        RoutingProfileId = {
            type = "string",
        },
        SecurityProfileIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Username = {
            type = "string",
        },
        AutoAcceptConfigs = {
            type = "list",
            member_type = "structure",
        },
        AfterContactWorkConfigs = {
            type = "list",
            member_type = "structure",
        },
        PhoneNumberConfigs = {
            type = "list",
            member_type = "structure",
        },
        PersistentConnectionConfigs = {
            type = "list",
            member_type = "structure",
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SearchUsersOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.ViewSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
    },
}

M.SearchViewsOutput = {
    type = "structure",
    members = {
        Views = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ApproximateTotalCount = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.WorkspaceAssociationSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ApproximateTotalCount = {
            type = "number",
        },
    },
}

M.WorkspaceSearchFilter = {
    type = "structure",
    members = {
        AttributeFilter = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        ApproximateTotalCount = {
            type = "number",
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
            member_type = "string",
        },
        ParticipantDetails = {
            type = "structure",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        StreamingConfiguration = {
            type = "structure",
        },
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
        Event = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NewSessionDetails = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        TemplateAttributes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        TemplatedMessageConfig = {
            type = "structure",
        },
        RawMessage = {
            type = "structure",
        },
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
        FromEmailAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DestinationEmailAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AdditionalRecipients = {
            type = "structure",
        },
        EmailMessage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TrafficType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceCampaign = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        UrlExpiryInSeconds = {
            type = "number",
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
        CreatedBy = {
            type = "union",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        CreatedBy = {
            type = "union",
        },
        UploadUrlMetadata = {
            type = "structure",
        },
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
        AutoEvaluationConfiguration = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        VoiceRecordingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ChatStreamingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
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
            member_type = "structure",
        },
        CcAddresses = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        RawMessage = {
            type = "structure",
        },
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
        FromEmailAddress = {
            type = "structure",
        },
        DestinationEmailAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AdditionalRecipients = {
            type = "structure",
        },
        EmailMessage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
        },
        AwaitAnswerMachinePrompt = {
            type = "boolean",
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
            key_type = "string",
            value_type = "structure",
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
        },
        SourcePhoneNumber = {
            type = "string",
        },
        QueueId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AnswerMachineDetectionConfig = {
            type = "structure",
        },
        CampaignId = {
            type = "string",
        },
        TrafficType = {
            type = "string",
        },
        OutboundStrategy = {
            type = "structure",
        },
        RingTimeoutInSeconds = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
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
        AllowedCapabilities = {
            type = "structure",
        },
        ParticipantDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RelatedContactId = {
            type = "string",
        },
        References = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        Audio = {
            type = "structure",
        },
    },
}

M.Meeting = {
    type = "structure",
    members = {
        MediaRegion = {
            type = "string",
        },
        MediaPlacement = {
            type = "structure",
        },
        MeetingFeatures = {
            type = "structure",
        },
        MeetingId = {
            type = "string",
        },
    },
}

M.ConnectionData = {
    type = "structure",
    members = {
        Attendee = {
            type = "structure",
        },
        Meeting = {
            type = "structure",
        },
    },
}

M.StartWebRTCContactOutput = {
    type = "structure",
    members = {
        ConnectionData = {
            type = "structure",
        },
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
        DisconnectReason = {
            type = "structure",
        },
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
        },
    },
}

M.StopTestCaseExecutionOutput = {
    type = "structure",
}

M.EvaluationAnswerInput = {
    type = "structure",
    members = {
        Value = {
            type = "union",
        },
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
            key_type = "string",
            value_type = "structure",
        },
        Notes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        SubmittedBy = {
            type = "union",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        ResetOrderNumber = {
            type = "boolean",
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
            type = "number",
        },
        ExtensionConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        ExtensionConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        BlockedIps = {
            type = "list",
            member_type = "string",
        },
        PeriodicSessionDuration = {
            type = "number",
        },
        SessionInactivityDuration = {
            type = "number",
        },
        SessionInactivityHandlingEnabled = {
            type = "boolean",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "structure",
        },
        Notes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        UpdatedBy = {
            type = "union",
        },
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
            type = "number",
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
            type = "number",
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
        },
        Validation = {
            type = "structure",
        },
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NewPrimaryValues = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDataTablePrimaryValuesOutput = {
    type = "structure",
    members = {
        LockVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            member_type = "structure",
        },
        EffectiveFrom = {
            type = "string",
        },
        EffectiveTill = {
            type = "string",
        },
        RecurrenceConfig = {
            type = "structure",
        },
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
        StorageConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
        TimerValue = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ChatParticipantRoleConfig = {
    type = "structure",
    members = {
        ParticipantTimerConfigList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateParticipantRoleConfigChannelInfo = {
    type = "union",
    members = {
        Chat = {
            type = "structure",
        },
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
        ChannelConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        Values = {
            type = "union",
        },
        Purposes = {
            type = "list",
            member_type = "string",
        },
        AttributeConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
        OutboundCallerConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        OutboundEmailConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        QuickConnectConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        TagRestrictedResources = {
            type = "list",
            member_type = "string",
        },
        Applications = {
            type = "list",
            member_type = "structure",
        },
        HierarchyRestrictedResources = {
            type = "list",
            member_type = "string",
        },
        AllowedAccessControlHierarchyGroupId = {
            type = "string",
        },
        AllowedFlowModules = {
            type = "list",
            member_type = "structure",
        },
        GranularAccessControlConfiguration = {
            type = "structure",
        },
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
        Constraints = {
            type = "structure",
        },
        Defaults = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        Fields = {
            type = "list",
            member_type = "structure",
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
        Constraints = {
            type = "structure",
        },
        Defaults = {
            type = "structure",
        },
        Fields = {
            type = "list",
            member_type = "structure",
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
        EntryPoint = {
            type = "structure",
        },
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
        TelephonyConfig = {
            type = "structure",
        },
        SignInConfig = {
            type = "structure",
        },
        AgentConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AfterContactWorkConfigs = {
            type = "list",
            member_type = "structure",
        },
        PhoneNumberConfigs = {
            type = "list",
            member_type = "structure",
        },
        PersistentConnectionConfigs = {
            type = "list",
            member_type = "structure",
        },
        VoiceEnhancementConfigs = {
            type = "list",
            member_type = "structure",
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
        LevelOne = {
            type = "structure",
        },
        LevelTwo = {
            type = "structure",
        },
        LevelThree = {
            type = "structure",
        },
        LevelFour = {
            type = "structure",
        },
        LevelFive = {
            type = "structure",
        },
    },
}

M.UpdateUserHierarchyStructureInput = {
    type = "structure",
    members = {
        HierarchyStructure = {
            type = "structure",
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
    },
}

M.UpdateUserHierarchyStructureOutput = {
    type = "structure",
}

M.UpdateUserIdentityInfoInput = {
    type = "structure",
    members = {
        IdentityInfo = {
            type = "structure",
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
        PhoneConfig = {
            type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateViewContentOutput = {
    type = "structure",
    members = {
        View = {
            type = "structure",
        },
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
        Theme = {
            type = "structure",
        },
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
            member_type = "union",
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
        Expression = {
            type = "structure",
        },
        Condition = {
            type = "structure",
        },
    },
}

M.AgentStatusSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.ContactFlowModuleSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.EmailAddressSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.EvaluationFormItemEnablementConfiguration = {
    type = "structure",
    members = {
        Condition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
        NumberCondition = {
            type = "structure",
        },
        BooleanCondition = {
            type = "structure",
        },
        DateTimeCondition = {
            type = "structure",
        },
    },
}

M.EvaluationSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
        NumberCondition = {
            type = "structure",
        },
        BooleanCondition = {
            type = "structure",
        },
        DateTimeCondition = {
            type = "structure",
        },
        DecimalCondition = {
            type = "structure",
        },
    },
}

M.Expression = {
    type = "structure",
    members = {
        AttributeCondition = {
            type = "structure",
        },
        AndExpression = {
            type = "list",
            member_type = "structure",
        },
        OrExpression = {
            type = "list",
            member_type = "structure",
        },
        NotAttributeCondition = {
            type = "structure",
        },
    },
}

M.HoursOfOperationOverrideSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
        DateCondition = {
            type = "structure",
        },
    },
}

M.HoursOfOperationSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.NotificationSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.PredefinedAttributeSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.PromptSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.QueueSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.RoutingProfileSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.SecurityProfileSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "structure",
        },
        ValueInteger = {
            type = "number",
        },
        ValueList = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.UserSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
        ListCondition = {
            type = "structure",
        },
        HierarchyGroupCondition = {
            type = "structure",
        },
    },
}

M.ViewSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
    },
}

M.WorkspaceSearchCriteria = {
    type = "structure",
    members = {
        OrConditions = {
            type = "list",
            member_type = "structure",
        },
        AndConditions = {
            type = "list",
            member_type = "structure",
        },
        StringCondition = {
            type = "structure",
        },
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
        },
        QuestionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuestionTypeProperties = {
            type = "union",
        },
        Enablement = {
            type = "structure",
        },
        Weight = {
            type = "number",
        },
    },
}

M.RoutingCriteriaInputStep = {
    type = "structure",
    members = {
        Expiry = {
            type = "structure",
        },
        Expression = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchCriteria = {
            type = "structure",
        },
        SearchFilter = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        SearchCriteria = {
            type = "structure",
        },
        SearchFilter = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchCriteria = {
            type = "structure",
        },
        SearchFilter = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchCriteria = {
            type = "structure",
        },
        SearchFilter = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
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
            type = "number",
        },
        SearchFilter = {
            type = "structure",
        },
        SearchCriteria = {
            type = "structure",
        },
    },
}

M.Step = {
    type = "structure",
    members = {
        Expiry = {
            type = "structure",
        },
        Expression = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "structure",
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
        },
        RelatedContactId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        References = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            type = "number",
        },
        UserInfo = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        ParticipantDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ParticipantConfiguration = {
            type = "structure",
        },
        InitialMessage = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
        ChatDurationInMinutes = {
            type = "number",
        },
        SupportedMessagingContentTypes = {
            type = "list",
            member_type = "string",
        },
        PersistentChat = {
            type = "structure",
        },
        RelatedContactId = {
            type = "string",
        },
        SegmentAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CustomerId = {
            type = "string",
        },
        DisconnectOnCustomerExit = {
            type = "list",
            member_type = "string",
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
        FromEmailAddress = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "structure",
        },
        Name = {
            type = "string",
        },
        EmailMessage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AdditionalRecipients = {
            type = "structure",
        },
        Attachments = {
            type = "list",
            member_type = "structure",
        },
        ContactFlowId = {
            type = "string",
        },
        RelatedContactId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SegmentAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.StartOutboundChatContactInput = {
    type = "structure",
    members = {
        SourceEndpoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DestinationEndpoint = {
            type = "structure",
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
        SegmentAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatDurationInMinutes = {
            type = "number",
        },
        ParticipantDetails = {
            type = "structure",
        },
        InitialSystemMessage = {
            type = "structure",
        },
        InitialTemplatedSystemMessage = {
            type = "structure",
        },
        RelatedContactId = {
            type = "string",
        },
        SupportedMessagingContentTypes = {
            type = "list",
            member_type = "string",
        },
        ClientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        References = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "structure",
        },
        Attachments = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        SegmentAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        QueueInfo = {
            type = "structure",
        },
        UserInfo = {
            type = "structure",
        },
        CustomerEndpoint = {
            type = "structure",
        },
        SystemEndpoint = {
            type = "structure",
        },
    },
}

M.EvaluationFormItem = {
    type = "union",
    members = {
        Section = {
            type = "structure",
        },
        Question = {
            type = "structure",
        },
    },
}

M.RoutingCriteria = {
    type = "structure",
    members = {
        Steps = {
            type = "list",
            member_type = "structure",
        },
        ActivationTimestamp = {
            type = "timestamp",
        },
        Index = {
            type = "number",
        },
    },
}

M.RoutingCriteriaInput = {
    type = "structure",
    members = {
        Steps = {
            type = "list",
            member_type = "structure",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        Weight = {
            type = "number",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        ScoringStrategy = {
            type = "structure",
        },
        AutoEvaluationConfiguration = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
        AsDraft = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ReviewConfiguration = {
            type = "structure",
        },
        TargetConfiguration = {
            type = "structure",
        },
        LanguageConfiguration = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Locked = {
            type = "boolean",
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        ScoringStrategy = {
            type = "structure",
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
        AutoEvaluationConfiguration = {
            type = "structure",
        },
        ReviewConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TargetConfiguration = {
            type = "structure",
        },
        LanguageConfiguration = {
            type = "structure",
        },
    },
}

M.EvaluationFormContent = {
    type = "structure",
    members = {
        EvaluationFormVersion = {
            type = "number",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        ScoringStrategy = {
            type = "structure",
        },
        AutoEvaluationConfiguration = {
            type = "structure",
        },
        TargetConfiguration = {
            type = "structure",
        },
        LanguageConfiguration = {
            type = "structure",
        },
        ReviewConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        QueuePriority = {
            type = "number",
        },
        RoutingCriteria = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        CreateNewVersion = {
            type = "boolean",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        ScoringStrategy = {
            type = "structure",
        },
        AutoEvaluationConfiguration = {
            type = "structure",
        },
        ReviewConfiguration = {
            type = "structure",
        },
        AsDraft = {
            type = "boolean",
        },
        ClientToken = {
            type = "string",
        },
        TargetConfiguration = {
            type = "structure",
        },
        LanguageConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeContactEvaluationOutput = {
    type = "structure",
    members = {
        Evaluation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EvaluationForm = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeEvaluationFormOutput = {
    type = "structure",
    members = {
        EvaluationForm = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        QueueInfo = {
            type = "structure",
        },
        AgentInfo = {
            type = "structure",
        },
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
            type = "number",
        },
        TotalPauseDurationInSeconds = {
            type = "number",
        },
        ScheduledTimestamp = {
            type = "timestamp",
        },
        RelatedContactId = {
            type = "string",
        },
        WisdomInfo = {
            type = "structure",
        },
        CustomerId = {
            type = "string",
        },
        CustomerEndpoint = {
            type = "structure",
        },
        SystemEndpoint = {
            type = "structure",
        },
        QueueTimeAdjustmentSeconds = {
            type = "number",
        },
        QueuePriority = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ConnectedToSystemTimestamp = {
            type = "timestamp",
        },
        RoutingCriteria = {
            type = "structure",
        },
        Customer = {
            type = "structure",
        },
        Campaign = {
            type = "structure",
        },
        AnsweringMachineDetectionStatus = {
            type = "string",
        },
        CustomerVoiceActivity = {
            type = "structure",
        },
        QualityMetrics = {
            type = "structure",
        },
        ChatMetrics = {
            type = "structure",
        },
        DisconnectDetails = {
            type = "structure",
        },
        AdditionalEmailRecipients = {
            type = "structure",
        },
        SegmentAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Recordings = {
            type = "list",
            member_type = "structure",
        },
        DisconnectReason = {
            type = "string",
        },
        ContactEvaluations = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        TaskTemplateInfo = {
            type = "structure",
        },
        ContactDetails = {
            type = "structure",
        },
        OutboundStrategy = {
            type = "structure",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NextContacts = {
            type = "list",
            member_type = "structure",
        },
        GlobalResiliencyMetadata = {
            type = "structure",
        },
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
        QueueInfo = {
            type = "structure",
        },
        AgentInfo = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "structure",
        },
        Name = {
            type = "string",
        },
        RoutingCriteria = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        GlobalResiliencyMetadata = {
            type = "structure",
        },
    },
}

M.DescribeContactOutput = {
    type = "structure",
    members = {
        Contact = {
            type = "structure",
        },
    },
}

M.SearchContactsOutput = {
    type = "structure",
    members = {
        Contacts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        TotalCount = {
            type = "number",
        },
    },
}

return M
