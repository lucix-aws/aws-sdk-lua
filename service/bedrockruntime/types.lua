local M = {}

M.AsyncInvokeStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.SortAsyncInvocationBy = {
    SUBMISSION_TIME = "SubmissionTime",
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.GuardrailImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
}

M.GuardrailContentQualifier = {
    GROUNDING_SOURCE = "grounding_source",
    QUERY = "query",
    GUARD_CONTENT = "guard_content",
}

M.GuardrailOutputScope = {
    INTERVENTIONS = "INTERVENTIONS",
    FULL = "FULL",
}

M.GuardrailContentSource = {
    INPUT = "INPUT",
    OUTPUT = "OUTPUT",
}

M.GuardrailAction = {
    NONE = "NONE",
    GUARDRAIL_INTERVENED = "GUARDRAIL_INTERVENED",
}

M.GuardrailOrigin = {
    REQUEST = "REQUEST",
    ACCOUNT_ENFORCED = "ACCOUNT_ENFORCED",
    ORGANIZATION_ENFORCED = "ORGANIZATION_ENFORCED",
}

M.GuardrailOwnership = {
    SELF = "SELF",
    CROSS_ACCOUNT = "CROSS_ACCOUNT",
}

M.GuardrailAutomatedReasoningLogicWarningType = {
    ALWAYS_FALSE = "ALWAYS_FALSE",
    ALWAYS_TRUE = "ALWAYS_TRUE",
}

M.GuardrailContentPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailContentFilterConfidence = {
    NONE = "NONE",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.GuardrailContentFilterStrength = {
    NONE = "NONE",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.GuardrailContentFilterType = {
    INSULTS = "INSULTS",
    HATE = "HATE",
    SEXUAL = "SEXUAL",
    VIOLENCE = "VIOLENCE",
    MISCONDUCT = "MISCONDUCT",
    PROMPT_ATTACK = "PROMPT_ATTACK",
}

M.GuardrailContextualGroundingPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailContextualGroundingFilterType = {
    GROUNDING = "GROUNDING",
    RELEVANCE = "RELEVANCE",
}

M.GuardrailSensitiveInformationPolicyAction = {
    ANONYMIZED = "ANONYMIZED",
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailPiiEntityType = {
    ADDRESS = "ADDRESS",
    AGE = "AGE",
    AWS_ACCESS_KEY = "AWS_ACCESS_KEY",
    AWS_SECRET_KEY = "AWS_SECRET_KEY",
    CA_HEALTH_NUMBER = "CA_HEALTH_NUMBER",
    CA_SOCIAL_INSURANCE_NUMBER = "CA_SOCIAL_INSURANCE_NUMBER",
    CREDIT_DEBIT_CARD_CVV = "CREDIT_DEBIT_CARD_CVV",
    CREDIT_DEBIT_CARD_EXPIRY = "CREDIT_DEBIT_CARD_EXPIRY",
    CREDIT_DEBIT_CARD_NUMBER = "CREDIT_DEBIT_CARD_NUMBER",
    DRIVER_ID = "DRIVER_ID",
    EMAIL = "EMAIL",
    INTERNATIONAL_BANK_ACCOUNT_NUMBER = "INTERNATIONAL_BANK_ACCOUNT_NUMBER",
    IP_ADDRESS = "IP_ADDRESS",
    LICENSE_PLATE = "LICENSE_PLATE",
    MAC_ADDRESS = "MAC_ADDRESS",
    NAME = "NAME",
    PASSWORD = "PASSWORD",
    PHONE = "PHONE",
    PIN = "PIN",
    SWIFT_CODE = "SWIFT_CODE",
    UK_NATIONAL_HEALTH_SERVICE_NUMBER = "UK_NATIONAL_HEALTH_SERVICE_NUMBER",
    UK_NATIONAL_INSURANCE_NUMBER = "UK_NATIONAL_INSURANCE_NUMBER",
    UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER",
    URL = "URL",
    USERNAME = "USERNAME",
    US_BANK_ACCOUNT_NUMBER = "US_BANK_ACCOUNT_NUMBER",
    US_BANK_ROUTING_NUMBER = "US_BANK_ROUTING_NUMBER",
    US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER",
    US_PASSPORT_NUMBER = "US_PASSPORT_NUMBER",
    US_SOCIAL_SECURITY_NUMBER = "US_SOCIAL_SECURITY_NUMBER",
    VEHICLE_IDENTIFICATION_NUMBER = "VEHICLE_IDENTIFICATION_NUMBER",
}

M.GuardrailTopicPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailTopicType = {
    DENY = "DENY",
}

M.GuardrailWordPolicyAction = {
    BLOCKED = "BLOCKED",
    NONE = "NONE",
}

M.GuardrailManagedWordType = {
    PROFANITY = "PROFANITY",
}

M.GuardrailTrace = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    ENABLED_FULL = "enabled_full",
}

M.AudioFormat = {
    MP3 = "mp3",
    OPUS = "opus",
    WAV = "wav",
    AAC = "aac",
    FLAC = "flac",
    MP4 = "mp4",
    OGG = "ogg",
    MKV = "mkv",
    MKA = "mka",
    X_AAC = "x-aac",
    M4A = "m4a",
    MPEG = "mpeg",
    MPGA = "mpga",
    PCM = "pcm",
    WEBM = "webm",
}

M.CacheTTL = {
    FIVE_MINUTES = "5m",
    ONE_HOUR = "1h",
}

M.CachePointType = {
    DEFAULT = "default",
}

M.DocumentFormat = {
    PDF = "pdf",
    CSV = "csv",
    DOC = "doc",
    DOCX = "docx",
    XLS = "xls",
    XLSX = "xlsx",
    HTML = "html",
    TXT = "txt",
    MD = "md",
}

M.GuardrailConverseImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
}

M.GuardrailConverseContentQualifier = {
    GROUNDING_SOURCE = "grounding_source",
    QUERY = "query",
    GUARD_CONTENT = "guard_content",
}

M.ImageFormat = {
    PNG = "png",
    JPEG = "jpeg",
    GIF = "gif",
    WEBP = "webp",
}

M.VideoFormat = {
    MKV = "mkv",
    MOV = "mov",
    MP4 = "mp4",
    WEBM = "webm",
    FLV = "flv",
    MPEG = "mpeg",
    MPG = "mpg",
    WMV = "wmv",
    THREE_GP = "three_gp",
}

M.ToolResultStatus = {
    SUCCESS = "success",
    ERROR = "error",
}

M.ToolUseType = {
    SERVER_TOOL_USE = "server_tool_use",
}

M.ConversationRole = {
    USER = "user",
    ASSISTANT = "assistant",
}

M.OutputFormatType = {
    JSON_SCHEMA = "json_schema",
}

M.PerformanceConfigLatency = {
    STANDARD = "standard",
    OPTIMIZED = "optimized",
}

M.ServiceTierType = {
    PRIORITY = "priority",
    DEFAULT = "default",
    FLEX = "flex",
    RESERVED = "reserved",
}

M.StopReason = {
    END_TURN = "end_turn",
    TOOL_USE = "tool_use",
    MAX_TOKENS = "max_tokens",
    STOP_SEQUENCE = "stop_sequence",
    GUARDRAIL_INTERVENED = "guardrail_intervened",
    CONTENT_FILTERED = "content_filtered",
    MALFORMED_MODEL_OUTPUT = "malformed_model_output",
    MALFORMED_TOOL_USE = "malformed_tool_use",
    MODEL_CONTEXT_WINDOW_EXCEEDED = "model_context_window_exceeded",
}

M.GuardrailStreamProcessingMode = {
    SYNC = "sync",
    ASYNC = "async",
}

M.Trace = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLED_FULL = "ENABLED_FULL",
}

return M
