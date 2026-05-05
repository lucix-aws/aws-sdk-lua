local M = {}

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

M.Channel = {
    VOICE = "VOICE",
    CHAT = "CHAT",
    TASK = "TASK",
    EMAIL = "EMAIL",
}

M.AgentAvailabilityTimer = {
    TIME_SINCE_LAST_ACTIVITY = "TIME_SINCE_LAST_ACTIVITY",
    TIME_SINCE_LAST_INBOUND = "TIME_SINCE_LAST_INBOUND",
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

M.AllowedUserAction = {
    CALL = "CALL",
    DISCARD = "DISCARD",
}

M.ScreenShareCapability = {
    SEND = "SEND",
}

M.VideoCapability = {
    SEND = "SEND",
}

M.ParticipantState = {
    INITIAL = "INITIAL",
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
    MISSED = "MISSED",
}

M.VoiceEnhancementMode = {
    VOICE_ISOLATION = "VOICE_ISOLATION",
    NOISE_SUPPRESSION = "NOISE_SUPPRESSION",
    NONE = "NONE",
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

M.StringComparisonType = {
    STARTS_WITH = "STARTS_WITH",
    CONTAINS = "CONTAINS",
    EXACT = "EXACT",
}

M.AiUseCase = {
    AgentAssistance = "AgentAssistance",
    SelfService = "SelfService",
}

M.FlowModuleType = {
    MCP = "MCP",
}

M.MonitorCapability = {
    SILENT_MONITOR = "SILENT_MONITOR",
    BARGE = "BARGE",
}

M.AttachedFileInvalidRequestExceptionReason = {
    INVALID_FILE_SIZE = "INVALID_FILE_SIZE",
    INVALID_FILE_TYPE = "INVALID_FILE_TYPE",
    INVALID_FILE_NAME = "INVALID_FILE_NAME",
}

M.AttachedFileServiceQuotaExceededExceptionReason = {
    TOTAL_FILE_SIZE_EXCEEDED = "TOTAL_FILE_SIZE_EXCEEDED",
    TOTAL_FILE_COUNT_EXCEEDED = "TOTAL_FILE_COUNT_EXCEEDED",
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

M.FlowAssociationResourceType = {
    SMS_PHONE_NUMBER = "SMS_PHONE_NUMBER",
    INBOUND_EMAIL = "INBOUND_EMAIL",
    OUTBOUND_EMAIL = "OUTBOUND_EMAIL",
    ANALYTICS_CONNECTOR = "ANALYTICS_CONNECTOR",
    WHATSAPP_MESSAGING_PHONE_NUMBER = "WHATSAPP_MESSAGING_PHONE_NUMBER",
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

M.EncryptionType = {
    KMS = "KMS",
}

M.StorageType = {
    S3 = "S3",
    KINESIS_VIDEO_STREAM = "KINESIS_VIDEO_STREAM",
    KINESIS_STREAM = "KINESIS_STREAM",
    KINESIS_FIREHOSE = "KINESIS_FIREHOSE",
}

M.EntityType = {
    USER = "USER",
    AI_AGENT = "AI_AGENT",
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

M.ListFlowAssociationResourceType = {
    WHATSAPP_MESSAGING_PHONE_NUMBER = "WHATSAPP_MESSAGING_PHONE_NUMBER",
    VOICE_PHONE_NUMBER = "VOICE_PHONE_NUMBER",
    INBOUND_EMAIL = "INBOUND_EMAIL",
    OUTBOUND_EMAIL = "OUTBOUND_EMAIL",
    ANALYTICS_CONNECTOR = "ANALYTICS_CONNECTOR",
}

M.EndpointType = {
    TELEPHONE_NUMBER = "TELEPHONE_NUMBER",
    VOIP = "VOIP",
    CONTACT_FLOW = "CONTACT_FLOW",
    CONNECT_PHONENUMBER_ARN = "CONNECT_PHONENUMBER_ARN",
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
}

M.OutboundStrategyType = {
    AGENT_FIRST = "AGENT_FIRST",
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

M.DataTableAttributeValueType = {
    TEXT = "TEXT",
    NUMBER = "NUMBER",
    BOOLEAN = "BOOLEAN",
    TEXT_LIST = "TEXT_LIST",
    NUMBER_LIST = "NUMBER_LIST",
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

M.EvaluationFormItemEnablementSourceValueType = {
    OPTION_REF_ID = "OPTION_REF_ID",
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

M.MultiSelectQuestionRuleCategoryAutomationCondition = {
    PRESENT = "PRESENT",
    NOT_PRESENT = "NOT_PRESENT",
}

M.EvaluationFormMultiSelectQuestionDisplayMode = {
    DROPDOWN = "DROPDOWN",
    CHECKBOX = "CHECKBOX",
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

M.SingleSelectQuestionRuleCategoryAutomationCondition = {
    PRESENT = "PRESENT",
    NOT_PRESENT = "NOT_PRESENT",
}

M.EvaluationFormSingleSelectQuestionDisplayMode = {
    DROPDOWN = "DROPDOWN",
    RADIO = "RADIO",
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

M.EvaluationReviewNotificationRecipientType = {
    USER_ID = "USER_ID",
}

M.EvaluationFormScoringMode = {
    QUESTION_ONLY = "QUESTION_ONLY",
    SECTION_ONLY = "SECTION_ONLY",
}

M.EvaluationFormScoringStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ContactInteractionType = {
    AGENT = "AGENT",
    AUTOMATED = "AUTOMATED",
    CUSTOMER = "CUSTOMER",
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

M.OverrideDays = {
    SUNDAY = "SUNDAY",
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
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

M.DirectoryType = {
    SAML = "SAML",
    CONNECT_MANAGED = "CONNECT_MANAGED",
    EXISTING_DIRECTORY = "EXISTING_DIRECTORY",
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

M.ParticipantRole = {
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
    SYSTEM = "SYSTEM",
    CUSTOM_BOT = "CUSTOM_BOT",
    SUPERVISOR = "SUPERVISOR",
}

M.RehydrationType = {
    ENTIRE_PAST_SESSION = "ENTIRE_PAST_SESSION",
    FROM_SEGMENT = "FROM_SEGMENT",
}

M.DeviceType = {
    GCM = "GCM",
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
}

M.QuickConnectType = {
    USER = "USER",
    QUEUE = "QUEUE",
    PHONE_NUMBER = "PHONE_NUMBER",
    FLOW = "FLOW",
}

M.BehaviorType = {
    ROUTE_CURRENT_CHANNEL_ONLY = "ROUTE_CURRENT_CHANNEL_ONLY",
    ROUTE_ANY_CHANNEL = "ROUTE_ANY_CHANNEL",
}

M.SlaType = {
    CASE_FIELD = "CaseField",
}

M.SlaAssignmentType = {
    CASES = "CASES",
}

M.NotificationContentType = {
    PLAIN_TEXT = "PLAIN_TEXT",
}

M.NotificationDeliveryType = {
    EMAIL = "EMAIL",
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

M.ApplicationType = {
    MCP = "MCP",
    THIRD_PARTY_APPLICATION = "THIRD_PARTY_APPLICATION",
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

M.TaskTemplateStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.PropertyValidationExceptionReason = {
    INVALID_FORMAT = "INVALID_FORMAT",
    UNIQUE_CONSTRAINT_VIOLATED = "UNIQUE_CONSTRAINT_VIOLATED",
    REFERENCED_RESOURCE_NOT_FOUND = "REFERENCED_RESOURCE_NOT_FOUND",
    RESOURCE_NAME_ALREADY_EXISTS = "RESOURCE_NAME_ALREADY_EXISTS",
    REQUIRED_PROPERTY_MISSING = "REQUIRED_PROPERTY_MISSING",
    NOT_SUPPORTED = "NOT_SUPPORTED",
}

M.TestCaseEntryPointType = {
    VOICE_CALL = "VOICE_CALL",
    CHAT = "CHAT",
}

M.TestCaseStatus = {
    PUBLISHED = "PUBLISHED",
    SAVED = "SAVED",
}

M.UseCaseType = {
    RULES_EVALUATION = "RULES_EVALUATION",
    CONNECT_CAMPAIGNS = "CONNECT_CAMPAIGNS",
}

M.PhoneType = {
    SOFT_PHONE = "SOFT_PHONE",
    DESK_PHONE = "DESK_PHONE",
}

M.ViewStatus = {
    PUBLISHED = "PUBLISHED",
    SAVED = "SAVED",
}

M.ViewType = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    AWS_MANAGED = "AWS_MANAGED",
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

M.VocabularyState = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    CREATION_FAILED = "CREATION_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.WorkspaceFontFamily = {
    ARIAL = "Arial",
    COURIER_NEW = "Courier New",
    GEORGIA = "Georgia",
    TIMES_NEW_ROMAN = "Times New Roman",
    TREBUCHET = "Trebuchet",
    VERDANA = "Verdana",
}

M.MediaType = {
    IMAGE_LOGO_LIGHT_FAVICON = "IMAGE_LOGO_LIGHT_FAVICON",
    IMAGE_LOGO_DARK_FAVICON = "IMAGE_LOGO_DARK_FAVICON",
    IMAGE_LOGO_LIGHT_HORIZONTAL = "IMAGE_LOGO_LIGHT_HORIZONTAL",
    IMAGE_LOGO_DARK_HORIZONTAL = "IMAGE_LOGO_DARK_HORIZONTAL",
}

M.AttachmentScope = {
    EMAIL = "EMAIL",
    CHAT = "CHAT",
    CASE = "CASE",
    TASK = "TASK",
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

M.Status = {
    COMPLETE = "COMPLETE",
    IN_PROGRESS = "IN_PROGRESS",
    DELETED = "DELETED",
}

M.NextContactType = {
    QUICK_CONNECT = "QUICK_CONNECT",
}

M.MediaStreamType = {
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.RecordingStatus = {
    AVAILABLE = "AVAILABLE",
    DELETED = "DELETED",
}

M.RoutingCriteriaStepStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    JOINED = "JOINED",
    EXPIRED = "EXPIRED",
}

M.QuestionRuleCategoryAutomationCondition = {
    PRESENT = "PRESENT",
    NOT_PRESENT = "NOT_PRESENT",
}

M.EvaluationQuestionAnswerAnalysisType = {
    CONTACT_LENS_DATA = "CONTACT_LENS_DATA",
    GEN_AI = "GEN_AI",
}

M.EvaluationTranscriptType = {
    RAW = "RAW",
    REDACTED = "REDACTED",
}

M.EvaluationSuggestedAnswerStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.EvaluationType = {
    STANDARD = "STANDARD",
    CALIBRATION = "CALIBRATION",
}

M.AutoEvaluationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.ContactParticipantRole = {
    AGENT = "AGENT",
    SYSTEM = "SYSTEM",
    CUSTOM_BOT = "CUSTOM_BOT",
    CUSTOMER = "CUSTOMER",
}

M.EvaluationStatus = {
    DRAFT = "DRAFT",
    SUBMITTED = "SUBMITTED",
    REVIEW_REQUESTED = "REVIEW_REQUESTED",
    UNDER_REVIEW = "UNDER_REVIEW",
}

M.ContactFlowState = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.ContactFlowModuleState = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.ContactFlowModuleStatus = {
    PUBLISHED = "PUBLISHED",
    SAVED = "SAVED",
}

M.EvaluationFormVersionStatus = {
    DRAFT = "DRAFT",
    ACTIVE = "ACTIVE",
}

M.InstanceStatus = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    CREATION_FAILED = "CREATION_FAILED",
}

M.InstanceReplicationStatus = {
    INSTANCE_REPLICATION_COMPLETE = "INSTANCE_REPLICATION_COMPLETE",
    INSTANCE_REPLICATION_IN_PROGRESS = "INSTANCE_REPLICATION_IN_PROGRESS",
    INSTANCE_REPLICATION_FAILED = "INSTANCE_REPLICATION_FAILED",
    INSTANCE_REPLICA_DELETING = "INSTANCE_REPLICA_DELETING",
    INSTANCE_REPLICATION_DELETION_FAILED = "INSTANCE_REPLICATION_DELETION_FAILED",
    RESOURCE_REPLICATION_NOT_STARTED = "RESOURCE_REPLICATION_NOT_STARTED",
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

M.NotificationPriority = {
    Urgent = "URGENT",
    High = "HIGH",
    Low = "LOW",
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

M.PhoneNumberType = {
    TOLL_FREE = "TOLL_FREE",
    DID = "DID",
    UIFN = "UIFN",
    SHARED = "SHARED",
    THIRD_PARTY_TF = "THIRD_PARTY_TF",
    THIRD_PARTY_DID = "THIRD_PARTY_DID",
    SHORT_CODE = "SHORT_CODE",
}

M.QueueStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TrafficDistributionGroupStatus = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    CREATION_FAILED = "CREATION_FAILED",
    PENDING_DELETION = "PENDING_DELETION",
    DELETION_FAILED = "DELETION_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
}

M.Visibility = {
    All = "ALL",
    Assigned = "ASSIGNED",
    None = "NONE",
}

M.ContactMetricName = {
    ESTIMATED_WAIT_TIME = "ESTIMATED_WAIT_TIME",
    POSITION_IN_QUEUE = "POSITION_IN_QUEUE",
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

M.OperationalStatus = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
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

M.FilterV2StringConditionComparisonOperator = {
    NOT_EXISTS = "NOT_EXISTS",
}

M.IntervalPeriod = {
    FIFTEEN_MIN = "FIFTEEN_MIN",
    THIRTY_MIN = "THIRTY_MIN",
    HOUR = "HOUR",
    DAY = "DAY",
    WEEK = "WEEK",
    TOTAL = "TOTAL",
}

M.TestCaseExecutionStatus = {
    INITIATED = "INITIATED",
    PASSED = "PASSED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPED = "STOPPED",
}

M.LexVersion = {
    V1 = "V1",
    V2 = "V2",
}

M.QueueType = {
    STANDARD = "STANDARD",
    AGENT = "AGENT",
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

M.RealTimeContactAnalysisSupportedChannel = {
    VOICE = "VOICE",
    CHAT = "CHAT",
}

M.ArtifactStatus = {
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    IN_PROGRESS = "IN_PROGRESS",
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

M.RealTimeContactAnalysisSentimentLabel = {
    POSITIVE = "POSITIVE",
    NEGATIVE = "NEGATIVE",
    NEUTRAL = "NEUTRAL",
}

M.RealTimeContactAnalysisStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.ExecutionRecordStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    STOPPED = "STOPPED",
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

M.ContactRecordingType = {
    AGENT = "AGENT",
    IVR = "IVR",
    SCREEN = "SCREEN",
}

M.BooleanComparisonType = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.DateTimeComparisonType = {
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
    RANGE = "RANGE",
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

M.NumberComparisonType = {
    GREATER_OR_EQUAL = "GREATER_OR_EQUAL",
    GREATER = "GREATER",
    LESSER_OR_EQUAL = "LESSER_OR_EQUAL",
    LESSER = "LESSER",
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
    RANGE = "RANGE",
}

M.SearchContactsTimeRangeType = {
    INITIATION_TIMESTAMP = "INITIATION_TIMESTAMP",
    SCHEDULED_TIMESTAMP = "SCHEDULED_TIMESTAMP",
    CONNECTED_TO_AGENT_TIMESTAMP = "CONNECTED_TO_AGENT_TIMESTAMP",
    DISCONNECT_TIMESTAMP = "DISCONNECT_TIMESTAMP",
    ENQUEUE_TIMESTAMP = "ENQUEUE_TIMESTAMP",
}

M.SearchContactsTimeRangeConditionType = {
    NOT_EXISTS = "NOT_EXISTS",
}

M.SearchContactsMatchType = {
    MATCH_ALL = "MATCH_ALL",
    MATCH_ANY = "MATCH_ANY",
    MATCH_EXACT = "MATCH_EXACT",
    MATCH_NONE = "MATCH_NONE",
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

M.DateComparisonType = {
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    EQUAL_TO = "EQUAL_TO",
}

M.SearchableQueueType = {
    STANDARD = "STANDARD",
}

M.HierarchyGroupMatchType = {
    EXACT = "EXACT",
    WITH_CHILD_GROUPS = "WITH_CHILD_GROUPS",
}

M.TargetListType = {
    PROFICIENCIES = "PROFICIENCIES",
}

M.ChatEventType = {
    DISCONNECT = "DISCONNECT",
    MESSAGE = "MESSAGE",
    EVENT = "EVENT",
}

M.OutboundMessageSourceType = {
    TEMPLATE = "TEMPLATE",
    RAW = "RAW",
}

M.TrafficType = {
    GENERAL = "GENERAL",
    CAMPAIGN = "CAMPAIGN",
}

M.DisconnectOnCustomerExitParticipantType = {
    AGENT = "AGENT",
}

M.ResponseMode = {
    INCREMENTAL = "INCREMENTAL",
    COMPLETE = "COMPLETE",
}

M.ContactMediaProcessingFailureMode = {
    DELIVER_UNPROCESSED_MESSAGE = "DELIVER_UNPROCESSED_MESSAGE",
    DO_NOT_DELIVER_UNPROCESSED_MESSAGE = "DO_NOT_DELIVER_UNPROCESSED_MESSAGE",
}

M.IvrRecordingTrack = {
    ALL = "ALL",
}

M.VoiceRecordingTrack = {
    FROM_AGENT = "FROM_AGENT",
    TO_AGENT = "TO_AGENT",
    ALL = "ALL",
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

M.MeetingFeatureStatus = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
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

return M
