local M = {}

M.ItemType = {
    PRONUNCIATION = "pronunciation",
    PUNCTUATION = "punctuation",
}

M.ParticipantRole = {
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
}

M.ContentRedactionOutput = {
    REDACTED = "redacted",
    REDACTED_AND_UNREDACTED = "redacted_and_unredacted",
}

M.CallAnalyticsLanguageCode = {
    EN_US = "en-US",
    EN_GB = "en-GB",
    ES_US = "es-US",
    FR_CA = "fr-CA",
    FR_FR = "fr-FR",
    EN_AU = "en-AU",
    IT_IT = "it-IT",
    DE_DE = "de-DE",
    PT_BR = "pt-BR",
}

M.Sentiment = {
    POSITIVE = "POSITIVE",
    NEGATIVE = "NEGATIVE",
    MIXED = "MIXED",
    NEUTRAL = "NEUTRAL",
}

M.ClinicalNoteGenerationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.MedicalScribeNoteTemplate = {
    HISTORY_AND_PHYSICAL = "HISTORY_AND_PHYSICAL",
    GIRPP = "GIRPP",
    DAP = "DAP",
    SIRP = "SIRP",
    BIRP = "BIRP",
    BEHAVIORAL_SOAP = "BEHAVIORAL_SOAP",
    PHYSICAL_SOAP = "PHYSICAL_SOAP",
}

M.ContentIdentificationType = {
    PII = "PII",
}

M.ContentRedactionType = {
    PII = "PII",
}

M.MedicalScribeParticipantRole = {
    PATIENT = "PATIENT",
    CLINICIAN = "CLINICIAN",
}

M.MedicalScribeLanguageCode = {
    EN_US = "en-US",
}

M.MedicalScribeMediaEncoding = {
    PCM = "pcm",
    OGG_OPUS = "ogg-opus",
    FLAC = "flac",
}

M.MedicalScribeStreamStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    PAUSED = "PAUSED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.MedicalScribeVocabularyFilterMethod = {
    REMOVE = "remove",
    MASK = "mask",
    TAG = "tag",
}

M.LanguageCode = {
    EN_US = "en-US",
    EN_GB = "en-GB",
    ES_US = "es-US",
    FR_CA = "fr-CA",
    FR_FR = "fr-FR",
    EN_AU = "en-AU",
    IT_IT = "it-IT",
    DE_DE = "de-DE",
    PT_BR = "pt-BR",
    JA_JP = "ja-JP",
    KO_KR = "ko-KR",
    ZH_CN = "zh-CN",
    TH_TH = "th-TH",
    ES_ES = "es-ES",
    AR_SA = "ar-SA",
    PT_PT = "pt-PT",
    CA_ES = "ca-ES",
    AR_AE = "ar-AE",
    HI_IN = "hi-IN",
    ZH_HK = "zh-HK",
    NL_NL = "nl-NL",
    NO_NO = "no-NO",
    SV_SE = "sv-SE",
    PL_PL = "pl-PL",
    FI_FI = "fi-FI",
    ZH_TW = "zh-TW",
    EN_IN = "en-IN",
    EN_IE = "en-IE",
    EN_NZ = "en-NZ",
    EN_AB = "en-AB",
    EN_ZA = "en-ZA",
    EN_WL = "en-WL",
    DE_CH = "de-CH",
    AF_ZA = "af-ZA",
    EU_ES = "eu-ES",
    HR_HR = "hr-HR",
    CS_CZ = "cs-CZ",
    DA_DK = "da-DK",
    FA_IR = "fa-IR",
    GL_ES = "gl-ES",
    EL_GR = "el-GR",
    HE_IL = "he-IL",
    ID_ID = "id-ID",
    LV_LV = "lv-LV",
    MS_MY = "ms-MY",
    RO_RO = "ro-RO",
    RU_RU = "ru-RU",
    SR_RS = "sr-RS",
    SK_SK = "sk-SK",
    SO_SO = "so-SO",
    TL_PH = "tl-PH",
    UK_UA = "uk-UA",
    VI_VN = "vi-VN",
    ZU_ZA = "zu-ZA",
    AM_ET = "am-ET",
    BE_BY = "be-BY",
    BG_BG = "bg-BG",
    BN_IN = "bn-IN",
    BS_BA = "bs-BA",
    CKB_IQ = "ckb-IQ",
    CKB_IR = "ckb-IR",
    CY_WL = "cy-WL",
    ES_MX = "es-MX",
    ET_ET = "et-ET",
    FA_AF = "fa-AF",
    GU_IN = "gu-IN",
    HT_HT = "ht-HT",
    HU_HU = "hu-HU",
    HY_AM = "hy-AM",
    IS_IS = "is-IS",
    JV_ID = "jv-ID",
    KA_GE = "ka-GE",
    KAB_DZ = "kab-DZ",
    KK_KZ = "kk-KZ",
    KM_KH = "km-KH",
    KN_IN = "kn-IN",
    LG_IN = "lg-IN",
    LT_LT = "lt-LT",
    MK_MK = "mk-MK",
    ML_IN = "ml-IN",
    MR_IN = "mr-IN",
    MY_MM = "my-MM",
    NE_NP = "ne-NP",
    OR_IN = "or-IN",
    PA_IN = "pa-IN",
    PS_AF = "ps-AF",
    SI_LK = "si-LK",
    SL_SI = "sl-SI",
    SQ_AL = "sq-AL",
    SU_ID = "su-ID",
    SW_BI = "sw-BI",
    SW_KE = "sw-KE",
    SW_RW = "sw-RW",
    SW_TZ = "sw-TZ",
    SW_UG = "sw-UG",
    TA_IN = "ta-IN",
    TE_IN = "te-IN",
    TR_TR = "tr-TR",
    UZ_UZ = "uz-UZ",
}

M.MediaEncoding = {
    PCM = "pcm",
    OGG_OPUS = "ogg-opus",
    FLAC = "flac",
}

M.MedicalContentIdentificationType = {
    PHI = "PHI",
}

M.Pronouns = {
    HE_HIM = "HE_HIM",
    SHE_HER = "SHE_HER",
    THEY_THEM = "THEY_THEM",
}

M.MedicalScribeSessionControlEventType = {
    END_OF_SESSION = "END_OF_SESSION",
}

M.MedicalScribeTranscriptItemType = {
    PRONUNCIATION = "pronunciation",
    PUNCTUATION = "punctuation",
}

M.PartialResultsStability = {
    HIGH = "high",
    MEDIUM = "medium",
    LOW = "low",
}

M.Specialty = {
    PRIMARYCARE = "PRIMARYCARE",
    CARDIOLOGY = "CARDIOLOGY",
    NEUROLOGY = "NEUROLOGY",
    ONCOLOGY = "ONCOLOGY",
    RADIOLOGY = "RADIOLOGY",
    UROLOGY = "UROLOGY",
}

M.VocabularyFilterMethod = {
    REMOVE = "remove",
    MASK = "mask",
    TAG = "tag",
}

M.Type = {
    CONVERSATION = "CONVERSATION",
    DICTATION = "DICTATION",
}

return M
