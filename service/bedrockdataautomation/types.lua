local M = {}

M.BlueprintOptimizationJobStatus = {
    CREATED = "Created",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    SERVICE_ERROR = "ServiceError",
    CLIENT_ERROR = "ClientError",
}

M.BlueprintStage = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
}

M.Type = {
    DOCUMENT = "DOCUMENT",
    IMAGE = "IMAGE",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.BlueprintStageFilter = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
    ALL = "ALL",
}

M.DataAutomationProjectStage = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
}

M.ResourceOwner = {
    SERVICE = "SERVICE",
    ACCOUNT = "ACCOUNT",
}

M.EntityType = {
    VOCABULARY = "VOCABULARY",
}

M.LibraryIngestionJobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    FAILED = "FAILED",
}

M.LibraryIngestionJobOperationType = {
    UPSERT = "UPSERT",
    DELETE = "DELETE",
}

M.Language = {
    EN = "EN",
    DE = "DE",
    ES = "ES",
    FR = "FR",
    IT = "IT",
    PT = "PT",
    JA = "JA",
    KO = "KO",
    CN = "CN",
    TW = "TW",
    HK = "HK",
}

M.DataAutomationLibraryStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.AudioGenerativeOutputLanguage = {
    DEFAULT = "DEFAULT",
    EN = "EN",
}

M.State = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SensitiveDataDetectionMode = {
    DETECTION = "DETECTION",
    DETECTION_AND_REDACTION = "DETECTION_AND_REDACTION",
}

M.SensitiveDataDetectionScopeType = {
    STANDARD = "STANDARD",
    CUSTOM = "CUSTOM",
}

M.PIIEntityType = {
    ALL = "ALL",
    ADDRESS = "ADDRESS",
    AGE = "AGE",
    NAME = "NAME",
    EMAIL = "EMAIL",
    PHONE = "PHONE",
    USERNAME = "USERNAME",
    PASSWORD = "PASSWORD",
    DRIVER_ID = "DRIVER_ID",
    LICENSE_PLATE = "LICENSE_PLATE",
    VEHICLE_IDENTIFICATION_NUMBER = "VEHICLE_IDENTIFICATION_NUMBER",
    CREDIT_DEBIT_CARD_CVV = "CREDIT_DEBIT_CARD_CVV",
    CREDIT_DEBIT_CARD_EXPIRY = "CREDIT_DEBIT_CARD_EXPIRY",
    CREDIT_DEBIT_CARD_NUMBER = "CREDIT_DEBIT_CARD_NUMBER",
    PIN = "PIN",
    INTERNATIONAL_BANK_ACCOUNT_NUMBER = "INTERNATIONAL_BANK_ACCOUNT_NUMBER",
    SWIFT_CODE = "SWIFT_CODE",
    IP_ADDRESS = "IP_ADDRESS",
    MAC_ADDRESS = "MAC_ADDRESS",
    URL = "URL",
    AWS_ACCESS_KEY = "AWS_ACCESS_KEY",
    AWS_SECRET_KEY = "AWS_SECRET_KEY",
    US_BANK_ACCOUNT_NUMBER = "US_BANK_ACCOUNT_NUMBER",
    US_BANK_ROUTING_NUMBER = "US_BANK_ROUTING_NUMBER",
    US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER",
    US_PASSPORT_NUMBER = "US_PASSPORT_NUMBER",
    US_SOCIAL_SECURITY_NUMBER = "US_SOCIAL_SECURITY_NUMBER",
    CA_HEALTH_NUMBER = "CA_HEALTH_NUMBER",
    CA_SOCIAL_INSURANCE_NUMBER = "CA_SOCIAL_INSURANCE_NUMBER",
    UK_NATIONAL_HEALTH_SERVICE_NUMBER = "UK_NATIONAL_HEALTH_SERVICE_NUMBER",
    UK_NATIONAL_INSURANCE_NUMBER = "UK_NATIONAL_INSURANCE_NUMBER",
    UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER",
}

M.PIIRedactionMaskMode = {
    PII = "PII",
    ENTITY_TYPE = "ENTITY_TYPE",
}

M.DesiredModality = {
    IMAGE = "IMAGE",
    DOCUMENT = "DOCUMENT",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.DataAutomationProjectType = {
    ASYNC = "ASYNC",
    SYNC = "SYNC",
}

M.AudioExtractionCategoryType = {
    AUDIO_CONTENT_MODERATION = "AUDIO_CONTENT_MODERATION",
    TRANSCRIPT = "TRANSCRIPT",
    TOPIC_CONTENT_MODERATION = "TOPIC_CONTENT_MODERATION",
}

M.AudioStandardGenerativeFieldType = {
    AUDIO_SUMMARY = "AUDIO_SUMMARY",
    IAB = "IAB",
    TOPIC_SUMMARY = "TOPIC_SUMMARY",
}

M.DocumentExtractionGranularityType = {
    DOCUMENT = "DOCUMENT",
    PAGE = "PAGE",
    ELEMENT = "ELEMENT",
    WORD = "WORD",
    LINE = "LINE",
}

M.DocumentOutputTextFormatType = {
    PLAIN_TEXT = "PLAIN_TEXT",
    MARKDOWN = "MARKDOWN",
    HTML = "HTML",
    CSV = "CSV",
}

M.ImageExtractionCategoryType = {
    CONTENT_MODERATION = "CONTENT_MODERATION",
    TEXT_DETECTION = "TEXT_DETECTION",
    LOGOS = "LOGOS",
}

M.ImageStandardGenerativeFieldType = {
    IMAGE_SUMMARY = "IMAGE_SUMMARY",
    IAB = "IAB",
}

M.VideoExtractionCategoryType = {
    CONTENT_MODERATION = "CONTENT_MODERATION",
    TEXT_DETECTION = "TEXT_DETECTION",
    TRANSCRIPT = "TRANSCRIPT",
    LOGOS = "LOGOS",
}

M.VideoStandardGenerativeFieldType = {
    VIDEO_SUMMARY = "VIDEO_SUMMARY",
    IAB = "IAB",
    CHAPTER_SUMMARY = "CHAPTER_SUMMARY",
}

M.DataAutomationProjectStatus = {
    COMPLETED = "COMPLETED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.DataAutomationProjectStageFilter = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
    ALL = "ALL",
}

return M
