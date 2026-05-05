local M = {}

M.AccountPlanStatus = {
    NOT_STARTED = "NOT_STARTED",
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
}

M.AccountPlanType = {
    FREE = "FREE",
    PAID = "PAID",
}

M.CurrencyCode = {
    USD = "USD",
}

M.ActivityStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    EXPIRING = "EXPIRING",
}

M.LanguageCode = {
    EN_US = "en-US",
    EN_GB = "en-GB",
    ID_ID = "id-ID",
    DE_DE = "de-DE",
    ES_ES = "es-ES",
    FR_FR = "fr-FR",
    JA_JP = "ja-JP",
    IT_IT = "it-IT",
    PT_PT = "pt-PT",
    KO_KR = "ko-KR",
    ZH_CN = "zh-CN",
    ZH_TW = "zh-TW",
    TR_TR = "tr-TR",
}

M.Dimension = {
    SERVICE = "SERVICE",
    OPERATION = "OPERATION",
    USAGE_TYPE = "USAGE_TYPE",
    REGION = "REGION",
    FREE_TIER_TYPE = "FREE_TIER_TYPE",
    DESCRIPTION = "DESCRIPTION",
    USAGE_PERCENTAGE = "USAGE_PERCENTAGE",
}

M.MatchOption = {
    EQUALS = "EQUALS",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
}

return M
